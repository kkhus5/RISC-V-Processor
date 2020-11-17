// This is the DataSelMux.

module DataSelMux (
	input [31:0] wb_data,
	input [31:0] reg_data,
	input DataSel,
	output [31:0] stage2_data
);

assign stage2_data = (DataSel)? wb_data : reg_data;

endmodule