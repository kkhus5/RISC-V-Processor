// This is ImmSel.

`include "Opcode.vh"

module ImmSel (
	input [31:0] inst,
	output reg [2:0] ImmType
);

wire [6:0] opcode = inst[6:0];

always @(*) begin
	case (opcode)
		`OPC_ARI_ITYPE: ImmType = 3'b000;
		`OPC_JALR: ImmType = 3'b000;
		`OPC_LOAD: ImmType = 3'b000;
		`OPC_STORE: ImmType = 3'b001;
		`OPC_BRANCH: ImmType = 3'b010;
		`OPC_LUI: ImmType = 3'b011;
		`OPC_AUIPC: ImmType = 3'b011;
		`OPC_JAL: ImmType = 3'b100;
		default: ImmType = 3'b111;
	endcase
end

endmodule
