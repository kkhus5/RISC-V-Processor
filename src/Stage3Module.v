// This is the top-level for the Stage 3 Datapath and Control Signals.

module Stage3Module (
	input clk,
	input reset,

	input [31:0] stage3_inst_in,
	input [31:0] stage3_pc_in,
	input [31:0] stage3_alu_out,
	input [31:0] stage3_dmem_write_addr,
	input [31:0] stage3_dmem_write_data,
	input [31:0] rs1_to_csr,

	output [31:0] wb_data,
	output [4:0] rd,
	output [31:0] csr_out
);

// datapath
wire [31:0] stage3_pc4;
wire [31:0] wb_dmem;

// controls
wire CSRSelect;
wire [2:0] LdSelect;
wire [1:0] WBSelect;

CSRSel csrsel (
	// inputs
	.stage3_inst(stage3_inst_in),

	// outputs
	.CSRSelSignal(CSRSelect)
);

CSR csr (
	// inputs
	.clk(clk),
	.reset(reset),

	.rs1_to_csr(rs1_to_csr),
	.CSRSel(CSRSelect),

	// outputs
	.csr(csr_out)
); 

PCFour pcfour (
	// inputs
	.stage3_pc(stage3_pc_in),

	// outputs
	.stage3_pc4(stage3_pc4)
);

LdSel ldsel (
	// inputs
	.stage3_inst(stage3_inst_in),

	// outputs
	.LdSelect(LdSelect)
);

LdSelMux ldselmux (
	// inputs
	.raw_dmem(),
	.LdSel(LdSelect),
	.shamt(stage3_alu_out[1:0]),

	// outputs
	.wb_dmem(wb_dmem)
);

WBSel wbsel (
	// inputs
	.stage3_inst(stage3_inst_in),

	// outputs
	.WBSelect(WBSelect)
);

WBSelMux wbselmux (
	// inputs
	.stage3_pc4(stage3_pc4),
	.stage3_alu_out(stage3_alu_out),
	.wb_dmem(wb_dmem),
	.WBSel(WBSelect).

	// outputs
	.wb_data(wb_data)
);

endmodule




