// This is the WBSel Control Signal

`include "Opcode.vh"

module WBSel (
	input [31:0] stage3_inst,
	output reg [1:0] WBSelect
);

localparam mem = 2'b00;
localparam alu = 2'b01;
localparam pc4 = 2'b10;
localparam idc = 2'bxx;

wire [6:0] opcode;
assign opcode = stage3_inst[6:0];

always @(*) begin
	case (opcode)
		`OPC_LOAD: WBSelect = mem;
		`OPC_ARI_RTYPE: WBSelect = alu;
		`OPC_ARI_ITYPE: WBSelect = alu;
		`OPC_AUIPC: WBSelect = alu;
		`OPC_LUI: WBSelect = alu;
		`OPC_JALR: WBSelect = pc4;
		`OPC_JAL: WBSelect = pc4;
		default: WBSelect = idc;
	endcase
end

endmodule