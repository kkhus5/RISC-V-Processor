// This is used to determine whether we write to the CSR or not.

`include "Opcode.vh"

module CSRSel (
	input [31:0] stage3_inst,

	output CSRSelSignal
);

wire [6:0] opcode;
assign opcode = stage3_inst[6:0];

wire [11:0] inst_addr;
assign inst_addr = stage3_ins[31:20];

assign CSRSelSignal = (inst_addr == 12'h51e && opcode == `OPC_CSR)? 1'b1: 1'b0;

endmodule