// This is the WBSelMux datapath block.

module WBSelMux (
	input [31:0] stage3_pc4,
	input [31:0] stage3_alu_out,
	input [31:0] wb_dmem,
	input [1:0] WBSel,

	output reg [31:0] wb_data
);

always @(*) begin
	case (WBSel)
		2'b00: wb_data = wb_dmem;
		2'b01: wb_data = stage3_alu_out;
		2'b10: wb_data = stage3_pc4;
		default: wb_data = 32'dx;
	endcase
end

endmodule
