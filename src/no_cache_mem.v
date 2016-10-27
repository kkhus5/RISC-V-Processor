
module no_cache_mem #(
  parameter CPU_WIDTH = `CPU_INST_BITS,
  parameter WORD_ADDR_BITS = `CPU_ADDR_BITS-`ceilLog2(`CPU_INST_BITS/8)
) (
  input clk,
  input reset,

  input                       cpu_req_val,
  output                      cpu_req_rdy,
  input [WORD_ADDR_BITS-1:0]  cpu_req_addr,
  input [CPU_WIDTH-1:0]       cpu_req_data,
  input [3:0]                 cpu_req_write,

  output reg                  cpu_resp_val,
  output reg [CPU_WIDTH-1:0]  cpu_resp_data
);

  localparam DEPTH = 8*1024*1024;

  reg [CPU_WIDTH-1:0] ram [DEPTH-1:0];

  assign cpu_req_rdy = 1'b1;

  always @(posedge clk) begin
    if (reset)
      cpu_resp_val <= 1'b0;
    else if (cpu_req_val && cpu_req_rdy) begin
      if (cpu_req_write) begin
        cpu_resp_val <= 1'b0;
        ram[cpu_req_addr] = cpu_req_data;
      end else begin
        cpu_resp_val <= 1'b1;
        cpu_resp_data <= ram[cpu_req_addr];
      end
    end else
      cpu_resp_val <= 1'b0;
  end

  initial
  begin : zero
    integer i;
    for (i = 0; i < DEPTH; i = i + 1)
      ram[i] = 0;
  end

endmodule

