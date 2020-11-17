// This is the top-level for the Stage 2 Datapath and Control Signals.
`include "DataSelMux.v"

module Stage2Module (
	input [31:0] stage3_inst,
	input [31:0] stage2_inst_in,
	input [31:0] wb_data,
	input [31:0] rs1_data,
	input [31:0] rs2_data_in,
	input [31:0] stage2_pc_in,
	input [31:0] stage2_imm_in,

	output [31:0] stage2_inst_out,
	output [31:0] stage2_pc_out,
	output [31:0] stage2_alu_out,
	output [31:0] rs2_data_out
);

wire [31:0] stage2_rs1_data;
wire [31:0] stage2_rs2_data;

assign rs2_data_out = stage2_rs2_data;

DataSelMux rs1DataSel (
	// inputs
	.wb_data(wb_data),
	.reg_data(rs1_data),
	.DataSel(),

	// outputs
	.stage2_data(stage2_rs1_data)
);

DataSelMux rs2DataSel (
	// inputs
	.wb_data(wb_data),
	.reg_data(rs2_data_in),
	.DataSel(),

	// outputs
	.stage2_data(stage2_rs2_data)
);

endmodule