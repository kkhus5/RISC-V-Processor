// This is the WBSel Control Signal

`include "Opcode.vh"

module WBSel (
	input [31:0] stage3_inst,
	output reg [1:0] WBSelect
);

// localparam mem = 2'b00;
// localparam alu = 2'b01;
// localparam pc4 = 2'b10;
// localparam idc = 2'bxx;

wire [6:0] opcode;
assign opcode = stage3_inst[6:0];

always @(*) begin
	case (opcode)
		`OPC_LOAD: WBSelect = 2'b00;
		`OPC_ARI_RTYPE: WBSelect = 2'b01;
		`OPC_ARI_ITYPE: WBSelect = 2'b01;
		`OPC_AUIPC: WBSelect = 2'b01;
		`OPC_LUI: WBSelect = 2'b01;
		`OPC_JALR: WBSelect = 2'b10;
		`OPC_JAL: WBSelect = 2'b10;
		default: WBSelect = 2'b00;
	endcase
end

endmodule