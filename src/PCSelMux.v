// This is the PCSelMux in stage 1.

module PCSelMux (
	input [31:0] stage2_alu_out,
	input [31:0] stage1_pc,
	input [31:0] stage1_pc4,
	input [1:0] PCSignal,

	output reg [31:0] stage1_pc_mux_to_pc
);

localparam pc = 2'b00;
localparam alu = 2'b01;
localparam adder = 2'b10;

always @(*) begin
	case (PCSignal)
		2'b01: stage1_pc_mux_to_pc = stage2_alu_out;
		2'b10: stage1_pc_mux_to_pc = stage1_pc4;
		default: stage1_pc_mux_to_pc = stage1_pc;
	endcase
end

endmodule