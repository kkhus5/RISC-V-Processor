// This is the ASelMux.

module ASelMux (
	input [31:0] stage2_PC,
	input [31:0] stage2_rs1_data,
	input ASelSignal,
	output [31:0] stage2_alu_in1
);

assign stage2_alu_in1 = (ASelSignal)? stage2_PC : stage2_rs1_data;

endmodule