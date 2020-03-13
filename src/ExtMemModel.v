`include "util.vh"

module ExtMemModel
(
  input         clk,
  input         reset,

  // Read/Write Address request from CPU
  input                      mem_req_valid,
  output                     mem_req_ready,
  input                      mem_req_rw, // HIGH: Write, LOW: Read
  input [`MEM_ADDR_BITS-1:0] mem_req_addr,
  input [`MEM_TAG_BITS-1:0]  mem_req_tag,

  // Write data request from CPU
  input                          mem_req_data_valid,
  output                         mem_req_data_ready,
  input [`MEM_DATA_BITS-1:0]     mem_req_data_bits,
  input [(`MEM_DATA_BITS/8)-1:0] mem_req_data_mask,

  // Read data response to CPU
  output                      mem_resp_valid,
  output [`MEM_DATA_BITS-1:0] mem_resp_data,
  output [`MEM_TAG_BITS-1:0]  mem_resp_tag
);

  // Memory read takes 4 consecutive cycles of 128-bit each
  localparam DATA_CYCLES = 4;
  localparam DEPTH = 2*1024*1024; // 2*1024*1024 entries of 128-bit (2M x 16B)

  wire [`ceilLog2(DEPTH)-1:0] buf_addr0, buf_addr1;
  wire                        buf_we0;
  wire [`MEM_DATA_BITS-1:0]   buf_d0, buf_q1;

  REGFILE_1W1R #(
    .AWIDTH(`ceilLog2(DEPTH)),
    .DWIDTH(`MEM_DATA_BITS),
    .DEPTH(DEPTH)
  ) storage (
    .d0(buf_d0), .addr0(buf_addr0), .we0(buf_we0), // Write port
    .q1(buf_q1), .addr1(buf_addr1),                // Read port
    .clk(clk));

  wire [`MEM_DATA_BITS-1:0] masked_din;
  generate
    genvar i;
    for (i = 0; i < `MEM_DATA_BITS; i=i+1) begin: MASKED_DIN
      assign masked_din[i] = mem_req_data_mask[i/8] ? mem_req_data_bits[i] : buf_q1[i];
    end
  endgenerate

  wire [`ceilLog2(DATA_CYCLES)-1:0] cnt_val, cnt_next;
  wire cnt_ce;
  REGISTER_R_CE #(.N(`ceilLog2(DATA_CYCLES)), .INIT(0)) cnt_reg (
    .q(cnt_val), .d(cnt_next), .ce(cnt_ce), .rst(reset), .clk(clk));

  wire mem_req_fire      = mem_req_valid & mem_req_ready;
  wire mem_req_data_fire = mem_req_data_valid & mem_req_data_ready;

  localparam STATE_IDLE  = 2'b00;
  localparam STATE_READ  = 2'b01;
  localparam STATE_WRITE = 2'b10;

  wire [1:0] state_val;
  reg [1:0]  next_state;

  REGISTER_R #(.N(2), .INIT(STATE_IDLE)) state_reg (
    .q(state_val), .d(next_state), .rst(reset), .clk(clk));

  always @(*) begin
    next_state = state_val;
    case (state_val)
      STATE_IDLE: begin
        if (mem_req_fire &  mem_req_rw)
          next_state = STATE_WRITE;
        if (mem_req_fire & ~mem_req_rw)
          next_state = STATE_READ;
      end
      STATE_READ: begin
        if (cnt_val == DATA_CYCLES - 1)
          next_state = STATE_IDLE;
      end
      STATE_WRITE: begin
        if (mem_req_data_fire)
          next_state = STATE_IDLE;
      end
    endcase
  end

  wire [`MEM_TAG_BITS-1:0] tag_reg_val;
  REGISTER_R_CE #(.N(`MEM_TAG_BITS), .INIT(0)) tag_reg (
    .q(tag_reg_val), .d(mem_req_tag), .ce(mem_req_fire), .rst(reset), .clk(clk));

  wire [`MEM_ADDR_BITS-1:0] addr_reg_val;
  REGISTER_R_CE #(.N(`MEM_ADDR_BITS), .INIT(0)) addr_reg (
    .q(addr_reg_val), .d(mem_req_addr), .ce(mem_req_fire), .rst(reset), .clk(clk));

  assign cnt_next = cnt_val + 1;
  assign cnt_ce   = (state_val == STATE_READ);

  assign mem_req_ready      = (state_val == STATE_IDLE);
  assign mem_req_data_ready = (state_val == STATE_WRITE);
  assign mem_resp_valid     = (state_val == STATE_READ);

  // Use the exact address delivered if write
  assign buf_addr0          = addr_reg_val[`ceilLog2(DEPTH)-1:0];
  assign buf_we0            = (state_val == STATE_WRITE) & mem_req_data_fire;
  assign buf_d0             = masked_din;
  // Ignore lower 2 bits and count ourselves if read
  assign buf_addr1          = {addr_reg_val[`ceilLog2(DEPTH)-1:2], cnt_val};
  assign mem_resp_data      = buf_q1;
  assign mem_resp_tag       = tag_reg_val;

endmodule
