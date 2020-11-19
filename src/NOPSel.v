// This is the NOPSel Control Signal

`include "Opcode.vh"

module NOPSel (
	input [31:0] icache_dout,
	input [31:0] prev_inst,
	input stall,
	output NOPSignal
);

localparam IMEM = 1'b0;
localparam NOP = 1'b1;

wire [6:0] prev_opcode;
assign prev_opcode = prev_inst[6:0];
wire [4:0] prev_rd;
assign prev_rd = prev_inst[11:7];

wire [6:0] curr_opcode;
assign curr_opcode = icache_dout[6:0];
wire [4:0] curr_rs1;
assign curr_rs1 = icache_dout[19:15];

assign NOPSignal = (prev_opcode == `OPC_BRANCH || stall || (curr_opcode == `OPC_JALR && prev_rd == curr_rs1))? NOP : IMEM;

endmodule