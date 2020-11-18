// This is the stage three PC+4 datapath block.

module PCFour (
	input [31:0] stage3_pc,

	output [31:0] stage3_pc4
);

assign stage3_pc4 = stage3_pc + 32'd4;

endmodule