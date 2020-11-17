// This is the PCAddSignal Control Signal

`include "Opcode.vh"

module PCAddSignal (
	input [31:0] inst,
	output reg [1:0] PCAddSelect
);

localparam pc4 = 2'b00;
localparam pc_imm = 2'b01;
localparam rs1_imm = 2'b11;

wire [6:0] opcode;
assign opcode = inst[6:0];

always @(*) begin
	case (opcode)
		`OPC_JAL: PCAddSelect = pc_imm;
		`OPC_JALR: PCAddSelect = rs1_imm;
		default: PCAddSelect = pc4;
	endcase
end

endmodule