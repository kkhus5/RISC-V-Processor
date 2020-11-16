// This is the BSel control signal.
// 2'b00 = rs1, 2'b01 = PC, 2'b10 = Forwarding

`include "Opcode.vh"

module ASel (
	input [31:0] inst, // at PC = 0, at stage 3
	output reg BSelSignal 
);

testing

localparam rs2 = 1'b0;
localparam imm = 1'b1;

wire [6:0] opcode;
assign opcode = inst[6:0];
wire [2:0] funct3;
assign funct3 = inst[14:12];

wire uses_imm;
assign uses_imm = (opcode == `OPC_ARI_ITYPE || opcode == `OPC_LUI || opcode == `OPC_AUIPC || opcode == `OPC_JAL || opcode == `OPC_JALR || opcode == `OPC_BRANCH || opcode == `OPC_STORE || opcode == `OPC_LOAD || opcode == `OPC_CSR)? 1'b1: 1'b0;

always @(*) begin
	case (uses_imm)
		1'b1: BSelSignal = imm;
		default: BSelSignal = rs2;
	endcase
end

endmodule