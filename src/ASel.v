// This is the ASel control signal.

`include "Opcode.vh"

module ASel (
	input [31:0] inst,
	output reg ASelSignal 
);

wire [6:0] opcode;
assign opcode = inst[6:0];
wire [2:0] funct3;
assign funct3 = inst[14:12];

wire uses_pc;
assign uses_pc = (opcode == `OPC_AUIPC || opcode == `OPC_JAL || opcode == `OPC_BRANCH)? 1'b1: 1'b0;

always @(*) begin
	case (uses_pc)
		1'b1: ASelSignal = 1'b1;
		default: ASelSignal = 1'b0;
	endcase
end

endmodule