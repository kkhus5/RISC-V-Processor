// This is the RegWEn Control Signal

`include "Opcode.vh"

module RegWEn (
	input [31:0] stage3_inst,
	output RegWEnSelect
);

localparam no_write = 1'b0;
localparam write = 1'b1;

wire [6:0] opcode;
assign opcode = stage3_inst[6:0];

assign RegWEnSelect = (opcode == `OPC_STORE || opcode == `OPC_BRANCH)?  no_write : write;

endmodule