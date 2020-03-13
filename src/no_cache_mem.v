`include "util.vh"
`include "const.vh"

module no_cache_mem #(
  parameter CPU_WIDTH      = `CPU_INST_BITS,
  parameter WORD_ADDR_BITS = `CPU_ADDR_BITS - `ceilLog2(`CPU_INST_BITS/8)
) (
  input clk,
  input reset,

  input                       cpu_req_valid,
  output                      cpu_req_ready,
  input [WORD_ADDR_BITS-1:0]  cpu_req_addr,
  input [CPU_WIDTH-1:0]       cpu_req_data,
  input [3:0]                 cpu_req_write,

  output                      cpu_resp_valid,
  output [CPU_WIDTH-1:0]      cpu_resp_data
);

  localparam DEPTH = 2*1024*1024;
  localparam WORDS = `MEM_DATA_BITS/CPU_WIDTH;

  wire [`ceilLog2(DEPTH)-1:0] mem_addr0, mem_addr1;
  wire mem_we0;
  wire [`MEM_DATA_BITS-1:0] mem_d0, mem_q1;

  REGFILE_1W1R #(
    .AWIDTH(`ceilLog2(DEPTH)),
    .DWIDTH(`MEM_DATA_BITS),
    .DEPTH(DEPTH)
  ) mem (
    .d0(mem_d0), .addr0(mem_addr0), .we0(mem_we0),
    .q1(mem_q1), .addr1(mem_addr1),
    .clk(clk));

  wire [WORD_ADDR_BITS-`ceilLog2(WORDS)-1:0] upper_addr;
  assign upper_addr = cpu_req_addr[WORD_ADDR_BITS-1:`ceilLog2(WORDS)];

  wire [`ceilLog2(WORDS)-1:0] lower_addr;
  assign lower_addr = cpu_req_addr[`ceilLog2(WORDS)-1:0];

  wire [`MEM_DATA_BITS-1:0] read_data;
  assign read_data = (mem_q1 >> CPU_WIDTH*lower_addr);

  assign cpu_req_ready = 1'b1;

  wire [CPU_WIDTH-1:0] wmask;
  assign wmask = {{8{cpu_req_write[3]}},
                  {8{cpu_req_write[2]}},
                  {8{cpu_req_write[1]}},
                  {8{cpu_req_write[0]}}};

  wire [`MEM_DATA_BITS-1:0] write_data;
  assign write_data = (mem_q1 & ~({{`MEM_DATA_BITS-CPU_WIDTH{1'b0}}, wmask} << CPU_WIDTH*lower_addr)) |
                      ((cpu_req_data & wmask) << CPU_WIDTH*lower_addr);

  wire cpu_req_fire = cpu_req_valid & cpu_req_ready;

  // One cycle delay from CPU Request to CPU Response
  REGISTER_R_CE #(.N(CPU_WIDTH), .INIT(0)) read_data_reg (
    .q(cpu_resp_data),
    .d(read_data[CPU_WIDTH-1:0]),
    .ce(cpu_req_fire & ~(|(cpu_req_write))),
    .rst(reset),
    .clk(clk)
  );

  REGISTER_R_CE #(.N(1), .INIT(0)) cpu_resp_valid_reg (
    .q(cpu_resp_valid),
    .d(cpu_req_write ? 1'b0 : 1'b1),
    .ce(cpu_req_fire),
    .rst(reset),
    .clk(clk)
  );

  assign mem_d0    = write_data;
  assign mem_addr0 = upper_addr;
  assign mem_we0   = cpu_req_fire & (|(cpu_req_write));
  assign mem_addr1 = upper_addr;

endmodule

