// This is the MemRW Control Signal

`include "Opcode.vh"

module MemRW (
	input [31:0] stage3_inst,
	output MemRWSelect
);

localparam read = 1'b0;
localparam write = 1'b1;

wire [6:0] opcode;
assign opcode = stage3_inst[6:0];

assign MemRWSelect = (opcode == `OPC_STORE)? write : read;

endmodule