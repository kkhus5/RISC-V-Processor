`define ceilLog2(x) ( \
(x) > 2**30 ? 31 : \
(x) > 2**29 ? 30 : \
(x) > 2**28 ? 29 : \
(x) > 2**27 ? 28 : \
(x) > 2**26 ? 27 : \
(x) > 2**25 ? 26 : \
(x) > 2**24 ? 25 : \
(x) > 2**23 ? 24 : \
(x) > 2**22 ? 23 : \
(x) > 2**21 ? 22 : \
(x) > 2**20 ? 21 : \
(x) > 2**19 ? 20 : \
(x) > 2**18 ? 19 : \
(x) > 2**17 ? 18 : \
(x) > 2**16 ? 17 : \
(x) > 2**15 ? 16 : \
(x) > 2**14 ? 15 : \
(x) > 2**13 ? 14 : \
(x) > 2**12 ? 13 : \
(x) > 2**11 ? 12 : \
(x) > 2**10 ? 11 : \
(x) > 2**9 ? 10 : \
(x) > 2**8 ? 9 : \
(x) > 2**7 ? 8 : \
(x) > 2**6 ? 7 : \
(x) > 2**5 ? 6 : \
(x) > 2**4 ? 5 : \
(x) > 2**3 ? 4 : \
(x) > 2**2 ? 3 : \
(x) > 2**1 ? 2 : \
(x) > 2**0 ? 1 : 0)



module cache #
(
  parameter LINES = 64,
  parameter CPU_WIDTH = `CPU_INST_BITS,
  parameter WORD_ADDR_BITS = `CPU_ADDR_BITS-`ceilLog2(`CPU_INST_BITS/8)
)
(
  input clk,
  input reset,

  input                       cpu_req_val,
  output                      cpu_req_rdy,
  input [WORD_ADDR_BITS-1:0]  cpu_req_addr,
  input [CPU_WIDTH-1:0]       cpu_req_data,
  input [3:0]                 cpu_req_write,

  output                      cpu_resp_val,
  output [CPU_WIDTH-1:0]      cpu_resp_data,

  output                      mem_req_val,
  input                       mem_req_rdy,
  output [WORD_ADDR_BITS-1:`ceilLog2(`MEM_DATA_BITS/CPU_WIDTH)] mem_req_addr,
  output                           mem_req_rw,
  output                           mem_req_data_valid,
  input                            mem_req_data_ready,
  output [`MEM_DATA_BITS-1:0]      mem_req_data_bits,
  // byte level masking
  output [(`MEM_DATA_BITS/8)-1:0]  mem_req_data_mask,

  input                       mem_resp_val,
  input [`MEM_DATA_BITS-1:0]  mem_resp_data
);


endmodule
