// This is the NOPSel Control Signal

`include "Opcode.vh"

module NOPSel (
	input [31:0] prev_inst,
	output NOPSignal
);

localparam IMEM = 1'b0;
localparam NOP = 1'b1;

wire [6:0] prev_opcode;
assign prev_opcode = prev_inst[6:0];

assign NOPSignal = (prev_opcode == `OPC_BRANCH)? NOP : IMEM;

endmodule