`include "util.vh"
`include "const.vh"

module cache #
(
  parameter LINES = 64,
  parameter CPU_WIDTH = `CPU_INST_BITS, // 32 bits
  parameter WORD_ADDR_BITS = `CPU_ADDR_BITS-`ceilLog2(`CPU_INST_BITS/8) // 30 bits
)
(
  input clk, // done
  input reset, // done

  input                       cpu_req_valid, // done
  output                      cpu_req_ready, // done
  input [WORD_ADDR_BITS-1:0]  cpu_req_addr, // 30 bits // done
  input [CPU_WIDTH-1:0]       cpu_req_data, // 32 bits // done
  input [3:0]                 cpu_req_write, // done

  output                      reg cpu_resp_valid, // done
  output reg [CPU_WIDTH-1:0]      cpu_resp_data, // done

  output                      reg mem_req_valid, // done
  input                       mem_req_ready, // done
  output reg [WORD_ADDR_BITS-1:`ceilLog2(`MEM_DATA_BITS/CPU_WIDTH)] mem_req_addr, // done
  output                           reg mem_req_rw, // done
  output                           reg mem_req_data_valid, // done
  input                            mem_req_data_ready, // done
  output reg [`MEM_DATA_BITS-1:0]      mem_req_data_bits, // done
  // byte level masking
  output reg [(`MEM_DATA_BITS/8)-1:0]  mem_req_data_mask, // done

  input                       mem_resp_valid, // done
  input [`MEM_DATA_BITS-1:0]  mem_resp_data // done
);

  // Implement your cache here, then delete this comment

// write-through policy
 
// states
// no memory access underway

// IN IDLE STATE:
// if cpu requests a mem xact (cpu_req_valid)
  // then cache lets cpu know it is ready for a CPU mem xact (cpu_req_ready)
  // then transition from IDLE to READ state

// IN READ STATE:
// read access initiated
// cache is checked
  // look at index's valid bit tag in the cache, is the data valid?
    // if no, then compulsory cache miss
    // transition to READMEM state to initiate main mem access
  // if so, look at block at index. does the tag match tag?
    // if yes, we have a cache hit
      // then access is satisfied during this cycle
      // when cache read is successfull
      // then cache tells cpu that it has valid output data (cpu_resp_valid)
      // return IDLE state at next transition
    // if no, miss
      // transition to READMEM state to initiate main mem access

// IN MISS (READMEM) STATE:
// when we are in a miss state
// initiate memory access following a read miss
// main memory read in progress
// cache needs to request a mem xact to main mem (mem_req_valid)
// and the main mem needs to tell the cache that it is ready for the cache to provide a mem addr (mem_req_ready)
// since we are only requesting to read the main mem addr, then set mem_req_rw = 1'b0
// remain in this state until necessary data from main memory is read
// transition to READDATA state

// IN READDATA STATE:
// data available from main memory is read
// we can only fulfill a cpu request when the main memory response data is valid (mem_resp_valid)
// write this data into the cache line
// when memory read is successful
// then cache tells cpu that it has valid output data (cpu_resp_valid)

// IN WRITE STATE:
// whenever the cache gets written to
// then set mem_req_rw = 1'b1
// and set mem_req_data_valid = 1'b1
// so the cache can tell the main mem that it is providing write data
// don't provide data until main mem is ready (mem_req_data_ready)

reg [2:0] STATE;
reg [2:0] NEXT_STATE;

wire [2:0] IDLE;
assign IDLE = 3'b000;

wire [2:0] READ;
assign READ = 3'b001;

wire [2:0] MISS;
assign MISS = 3'b010;

wire [2:0] WRITE;
assign WRITE = 3'b011;

wire [2:0] DONE;
assign DONE = 3'b100;

//-----------------------------------//

reg [29:0] original_addr;
reg [22:0] tag;
reg [2:0] index;
reg [3:0] offset;

reg [3:0] tag_valid_addr;
reg [5:0] data_addr;
reg write_enable_tag_valid;
reg write_enable_data;

wire [31:0] tag_valid_out;
wire [127:0] data_out;

reg [31:0] tag_valid_in;
reg [127:0] data_in;

reg [31:0] original_data;
reg [3:0] original_write;

reg [31:0] mask;

initial STATE = IDLE;
initial NEXT_STATE = IDLE;
//integer count;

integer clk_counter;

//reg [2:0] look_at_me;

localparam WORDS = `MEM_DATA_BITS/CPU_WIDTH;
wire [`ceilLog2(WORDS)-1:0] lower_addr;
assign lower_addr = original_addr[`ceilLog2(WORDS)-1:0];

assign cpu_req_ready = (STATE == IDLE)? 1'b1 : 1'b0;

// You should include a separate SRAM per way for the tags. Implement the valid bits as part of the tag SRAM.
SRAM2RW16x32 tag_valid_sram (
 .CE1(clk), // clock edge (clock signal)
 .CE2(),
 .WEB1(write_enable_tag_valid), // Write Enable Bar (HIGH: Read, LOW: Write)
 .WEB2(),
 .OEB1(1'b0), // Output Enable Bar (always tie to LOW)
 .OEB2(),
 .CSB1(1'b0), // Chip Select Bar (always tie to LOW)
 .CSB2(),

 .A1(tag_valid_addr), // Address pin
 .A2(),
 .I1(tag_valid_in), // Input Data pin
 .I2(),
 .O1(tag_valid_out), // Output Data pin
 .O2()
);


////////////////////////////////////////////////////
// DONT FORGET TO CHANGE NECESSARY OUTPUTS TO REG //
////////////////////////////////////////////////////


// You should include a SRAM per way for data.
SRAM1RW64x128 data_sram (
  .CE(clk),
  .WEB(write_enable_data),
  .OEB(1'b0),
  .CSB(1'b0),

  .A(data_addr),
  .I(data_in),
  .O(data_out)
);

// mealy state machine?
// sequential logic
always @(posedge clk) begin
  if (reset) begin
    STATE <= IDLE;
    NEXT_STATE <= IDLE;
  end else begin
    STATE <= NEXT_STATE;
  end
end

always @(posedge clk) begin
  if (reset || (STATE == READ && NEXT_STATE == MISS)) begin
    clk_counter <= 0;
  end else begin
    clk_counter <= clk_counter + 1;
  end
end

// combinational logic
always @(*) begin
  case (STATE)
    IDLE: begin
            if (cpu_req_valid) begin
              cpu_resp_valid = 1'b0;
              mem_req_valid = 1'b0;
              mem_req_data_valid = 1'b0;
  
              // I added this
              // cpu_req_ready = 1'b1;
              mem_req_rw = 1'b0;

              original_data = cpu_req_data;
              original_write = cpu_req_write;

              original_addr = cpu_req_addr; // 30 bits
              tag = cpu_req_addr[30:7]; // 23 bits
              index = cpu_req_addr[6:4]; // 3 bits
              offset = cpu_req_addr[3:0]; // 4 bits

              tag_valid_addr = {{1{1'b0}}, index}; // 4 bits
              data_addr = (index*4) + offset[3:2]; // 6 bits

              write_enable_tag_valid = 1'b1; // SRAM -> READ
              write_enable_data = 1'b1; // SRAM -> READ

              //done = 1'b0;

              mask = {{8{cpu_req_write[3]}},
                    {8{cpu_req_write[2]}},
                    {8{cpu_req_write[1]}},
                    {8{cpu_req_write[0]}}};

                if (cpu_req_write == 4'b0000 && cpu_req_valid) begin
                  NEXT_STATE = READ;
                  // added && !cpu_req_valid
                end else if (cpu_req_write != 4'b0000) begin
                  NEXT_STATE = WRITE;
                  // mem_req_addr = original_addr[29:2];
                  //mem_req_rw = 1'b1;
                  // mem_req_valid = 1'b1;
                end
            end
          end

    READ: begin
            if (tag_valid_out[22:0] == tag && tag_valid_out[31]) begin
              case (offset[1:0])
                2'b00: cpu_resp_data = data_out[31:0];
                2'b01: cpu_resp_data = data_out[63:32];
                2'b10: cpu_resp_data = data_out[95:64];
                2'b11: cpu_resp_data = data_out[127:96];
              endcase
              cpu_resp_valid = 1'b1;
              NEXT_STATE = IDLE;
            end else begin
              if (mem_req_ready) begin
                write_enable_tag_valid = 1'b0; // SRAM -> WRITE

                mem_req_addr = original_addr[29:2];
                mem_req_valid = 1'b1;
                mem_req_rw = 1'b0;

                tag_valid_addr = {{1{1'b0}}, index};
                tag_valid_in = {1'b1, {8{1'b0}}, tag};

                NEXT_STATE = MISS;
                //look_at_me = 3'b000;
                //count = 0;
              end
            end
          end

    MISS: begin
            if (mem_resp_valid) begin
              if (clk_counter < 4) begin  
                write_enable_data = 1'b0; // SRAM -> WRITE

                data_in = mem_resp_data;
                data_addr = (index*4) + clk_counter;
              end
//count = count + 1;

              //$display("COUNT: %d AT CLK: %d", clk_counter, clk_counter);

              if (clk_counter < 3) begin
	        //write_enable_data = 1'b0;
                  
                //data_in = mem_resp_data;
                //data_addr = (index*4) + clk_counter;
 
                NEXT_STATE = MISS;
                mem_req_addr = original_addr[29:2] + clk_counter + 1;
                //mem_req_addr = mem_req_addr + 1;
                //$display("MEM_REQ_ADDR: %b", mem_req_addr);
              end else if (clk_counter == 3) begin
               // done = 1'b1;
                NEXT_STATE = DONE;
                //$display("WE HAVE NOW SET DONE TO ONE");
              //end else if (clk_counter == 3) begin
              //  NEXT_STATE = MISS;
	      end
            end else if (!mem_resp_valid) begin
              NEXT_STATE = MISS;
            end
          end
    DONE: begin
            //if (done) begin
              tag_valid_addr = {{1{1'b0}}, index};
              write_enable_tag_valid = 1'b1;
              write_enable_data = 1'b1; // SRAM -> READ
              data_addr = (index*4) + offset[3:2];        
              NEXT_STATE = READ;
            //end
         

          end
    WRITE: begin
    //mem_req_data_ready && mem_req_ready
            //if (mem_req_data_ready) begin
              if (tag_valid_out[22:0] == tag && tag_valid_out[31] == 1'b1) begin
                // this is for SRAM
                write_enable_data = 1'b0;
                data_in = (data_out & ~({{`MEM_DATA_BITS-CPU_WIDTH{1'b0}}, mask} << CPU_WIDTH*lower_addr)) | ((cpu_req_data & mask) << CPU_WIDTH*lower_addr);
                data_addr = (index*4) + offset[3:2];
              end
              
              mem_req_rw = 1'b1;

              case (offset[1:0])
                2'b11: begin
                    mem_req_data_mask = {original_write, {12{1'b0}}};
                    mem_req_data_bits = {original_data, 96'd0};
                     end

                2'b10: begin
                    mem_req_data_mask = {4'd0, original_write, 8'd0};
                    mem_req_data_bits = {32'd0, original_data, 64'd0};             
                     end

                2'b01: begin
                    mem_req_data_mask = {8'd0, original_write, 4'd0};
                    mem_req_data_bits = {64'd0, original_data, 32'd0};               
                     end

                2'b00: begin
                    mem_req_data_mask = {12'd0, original_write};
                    mem_req_data_bits = {96'd0, original_data};              
                     end
              endcase

              mem_req_data_valid = 1'b1;

              mem_req_addr = original_addr[29:2];
              mem_req_valid = 1'b1; // it means the address provided above is valid
              NEXT_STATE = IDLE;
            // end else begin
            //   NEXT_STATE = WRITE;
            //end
         end
  endcase
end

endmodule
