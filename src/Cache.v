`include "util.vh"
`include "const.vh"

module cache #
(
  parameter LINES = 64,
  parameter CPU_WIDTH = `CPU_INST_BITS, // 32 bits
  parameter WORD_ADDR_BITS = `CPU_ADDR_BITS-`ceilLog2(`CPU_INST_BITS/8) // 30 bits
)
(
  input clk, 
  input reset, 

  input                       cpu_req_valid, 
  output reg                     cpu_req_ready, 
  input [WORD_ADDR_BITS-1:0]  cpu_req_addr, // 30 bits 
  input [CPU_WIDTH-1:0]       cpu_req_data, // 32 bits 
  input [3:0]                 cpu_req_write, 

  output reg                     cpu_resp_valid, 
  output reg [CPU_WIDTH-1:0]      cpu_resp_data, 

  output reg                     mem_req_valid, 
  input                       mem_req_ready, 
  output reg [WORD_ADDR_BITS-1:`ceilLog2(`MEM_DATA_BITS/CPU_WIDTH)] mem_req_addr, // 28 bits
  output reg                          mem_req_rw, 
  output reg                          mem_req_data_valid, 
  input                            mem_req_data_ready, 
  output reg [`MEM_DATA_BITS-1:0]      mem_req_data_bits, 
  // byte level masking
  output reg [(`MEM_DATA_BITS/8)-1:0]  mem_req_data_mask, 

  input                       mem_resp_valid, 
  input [`MEM_DATA_BITS-1:0]  mem_resp_data 
);

// States info
localparam IDLE = 3'b000;
localparam READ = 3'b001; // Read tag
localparam MISS0 = 3'b010;
localparam MISS1 = 3'b011;
localparam MISS2 = 3'b100;
localparam MISS3 = 3'b101;
localparam WRITE = 3'b110;
localparam DONE = 3'b111;

// mask for writing to cache
localparam WORDS = `MEM_DATA_BITS/CPU_WIDTH;
wire [`ceilLog2(WORDS)-1:0] lower_addr;
assign lower_addr = cpu_req_addr[`ceilLog2(WORDS)-1:0];

// reg for FSM 
reg [2:0] STATE;
reg [2:0] NEXT_STATE;
initial STATE = IDLE;
initial NEXT_STATE = IDLE;

// reg for input cpu_req_addr
reg [29:0] original_addr;

// tag, index and offset fields of cpu_req_addr
wire [21:0] tag;
wire [3:0] index;
wire [3:0] offset;
assign tag = original_addr[29:8];
assign index = original_addr[7:4];
assign offset = original_addr[3:0];

// input and ouput reg/wire for tag_valid_sram
reg write_en_tag_valid;
reg [3:0] tag_valid_addr; // 4-bit addr to represent 16 rows
reg [31:0] tag_valid_in;
wire [31:0] tag_valid_out;

// input and output reg/wire for data_sram
reg write_en_data;
reg [5:0] data_addr;
reg [127:0] data_in;
wire [127:0] data_out;

// reg for mask
reg [31:0] mask;


SRAM2RW16x32 tag_valid_sram (
 .CE1(clk), 
 .CE2(),
 .WEB1(write_en_tag_valid), // Write Enable Bar (HIGH: Read, LOW: Write)
 .WEB2(),
 .OEB1(1'b0), 
 .OEB2(),
 .CSB1(1'b0), 
 .CSB2(),

 .A1(tag_valid_addr), // Address pin
 .A2(),
 .I1(tag_valid_in), // Input Data pin
 .I2(),
 .O1(tag_valid_out), // Output Data pin
 .O2()
);

SRAM1RW64x128 data_sram (
  .CE(clk),
  .WEB(write_en_data), // Write Enable Bar (HIGH: Read, LOW: Write)
  .OEB(1'b0),
  .CSB(1'b0),

  .A(data_addr),
  .I(data_in),
  .O(data_out)
);

always @(posedge clk) begin
  if (reset) begin
    STATE <= IDLE;
    // NEXT_STATE <= IDLE;
  end else begin
    STATE <= NEXT_STATE;
  end
end

// combinational
always @(*) begin
  
  // default values for all signals
  NEXT_STATE = STATE;

  // read tag by default
  write_en_tag_valid = 1'b1;
  // index for tag_valid_sram
  tag_valid_addr = index;

  // default input data for tag_valid_sram
  tag_valid_in = {1'b1, {9{1'b0}}, tag};

  // read data by default
  write_en_data = 1'b1;
  // index for data_sram
  data_addr = index * 4 + offset[3:2];

  // default mask for writing to sram
  mask = {{8{cpu_req_write[3]}},
          {8{cpu_req_write[2]}},
          {8{cpu_req_write[1]}},
          {8{cpu_req_write[0]}}}; 
  // default input data for data_sram
  data_in = (data_out & ~({{`MEM_DATA_BITS-CPU_WIDTH{1'b0}}, mask} << CPU_WIDTH*lower_addr)) 
          | ((cpu_req_data & mask) << CPU_WIDTH*lower_addr);



  // assign cpu_resp_data
  cpu_resp_data = cpu_resp_data;
  // case (offset[1:0])
  //   2'b00: cpu_resp_data = data_out[31:0];
  //   2'b01: cpu_resp_data = data_out[63:32];
  //   2'b10: cpu_resp_data = data_out[95:64];
  //   2'b11: cpu_resp_data = data_out[127:96];
  // endcase

  // default ext memory request address
  mem_req_addr = cpu_req_addr[29:2];
  // read data from ext mem by default
  mem_req_rw = 1'b0;

  // default cpu control bits
  cpu_req_ready = 1'b0;
  cpu_resp_valid = 1'b0;

  // default ext mem control bits
  mem_req_valid = 1'b0;
  mem_req_data_valid = 1'b0;

  // assign mem_req_data_bits and mem_req_data_mask
  case (offset[1:0])
    2'b00: 
      begin
        mem_req_data_bits = {96'd0, cpu_req_data};
        mem_req_data_mask = {12'd0, cpu_req_write};
      end

    2'b01: 
      begin
        mem_req_data_bits = {64'd0, cpu_req_data, 32'd0};
        mem_req_data_mask = {8'd0, cpu_req_write, 4'd0};
      end

    2'b10: 
      begin
        mem_req_data_bits = {32'd0, cpu_req_data, 64'd0};
        mem_req_data_mask = {4'd0, cpu_req_write, 8'd0}; 
      end

    2'b11: 
      begin
        mem_req_data_bits = {cpu_req_data, 96'd0};
        mem_req_data_mask = {cpu_req_write, 12'd0};
      end
  endcase

  //assign


  case (STATE)
    IDLE:
      begin
        cpu_req_ready = 1'b1;
        original_addr = cpu_req_addr;
        if (cpu_req_valid) begin

          if (cpu_req_write == 4'b0000) begin
            NEXT_STATE = READ;
          end else if (mem_req_ready) begin
            NEXT_STATE = WRITE;
            mem_req_rw = 1'b1;
            mem_req_data_valid = 1'b1;
            mem_req_valid = 1'b1;
          end

        end

      end

    READ:
      begin

        if (tag_valid_out[21:0] == tag && tag_valid_out[31]) begin
          case (offset[1:0])
            2'b00: cpu_resp_data = data_out[31:0];
            2'b01: cpu_resp_data = data_out[63:32];
            2'b10: cpu_resp_data = data_out[95:64];
            2'b11: cpu_resp_data = data_out[127:96];
          endcase
          cpu_resp_valid = 1'b1;
          data_addr = index * 4 + offset[3:2];
          NEXT_STATE = IDLE;
        end else begin
          write_en_tag_valid = 1'b0;
          tag_valid_addr = index;
          mem_req_valid = 1'b1;
          NEXT_STATE = MISS0;
        end

      end

    MISS0:
      begin

        if (mem_resp_valid) begin

          data_addr = index * 4;
          data_in = mem_resp_data;
          write_en_data = 1'b0;

          mem_req_addr = cpu_req_addr[29:2] + 1;
          mem_req_valid = 1'b1;
          NEXT_STATE = MISS1;
        end

      end

    MISS1:
      begin
        
        if (mem_resp_valid) begin
          data_addr = index * 4 + 1;
          data_in = mem_resp_data;
          write_en_data = 1'b0;

          mem_req_addr = cpu_req_addr[29:2] + 2;
          mem_req_valid = 1'b1;
          NEXT_STATE = MISS2;
        end

      end

    MISS2:
      begin
        
        if (mem_resp_valid) begin
          data_addr = index * 4 + 2;
          data_in = mem_resp_data;
          write_en_data = 1'b0;

          mem_req_addr = cpu_req_addr[29:2] + 3;
          mem_req_valid = 1'b1;
          NEXT_STATE = MISS3;
        end

      end

    MISS3:
      begin
        
        if (mem_resp_valid) begin
          data_addr = index * 4 + 3;
          data_in = mem_resp_data;
          write_en_data = 1'b0;
          mem_req_valid = 1'b0;
          NEXT_STATE = DONE;
        end

      end

    DONE:
      begin
      
        NEXT_STATE = READ;
      end

    WRITE:
      begin
        mem_req_data_valid = 1'b1;
        cpu_req_ready = 1'b1;

        if (tag_valid_out[21:0] == tag && tag_valid_out[31]) begin
          write_en_data = 1'b0;
        end

        NEXT_STATE = IDLE;

      end

  endcase


end

endmodule