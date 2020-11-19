// This is the NOPSelMux in stage 1.

module NOPSelMux (
	input [31:0] icache_dout,
	input NOPSignal,

	output [31:0] stage1_inst
);

assign stage1_inst = (!NOPSignal)? icache_dout: 32'd0;

endmodule