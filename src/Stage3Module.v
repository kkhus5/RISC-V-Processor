// This is the top-level for the Stage 3 Datapath and Control Signals.

`include "Opcode.vh"

module Stage3Module (
	input clk,
	input reset,

	input [31:0] stage3_inst_in,
	input [31:0] stage3_pc_in,
	input [31:0] stage3_alu_out,
	input [31:0] stage3_dmem_write_addr,
	input [31:0] stage3_dmem_write_data,
	input [31:0] rs1_to_csr,

	input [31:0] stage2_inst,

	output [31:0] wb_data,
	output [4:0] rd,
	output [31:0] csr_out,

	// for dcache
	input [31:0] dcache_dout,
	output [31:0] dcache_addr,
	output [3:0] dcache_we,
	output dcache_re,
	output [31:0] dcache_din
);

// datapath
wire [31:0] stage3_pc4;
wire [31:0] wb_dmem;

// controls
wire CSRSelect;
wire [2:0] LdSelect;
wire [1:0] WBSelect;
wire MemRWSelect;

assign rd = stage3_inst_in[11:7];

assign dcache_addr = stage3_dmem_write_addr;
assign dcache_din = stage3_dmem_write_data;
assign dcache_we = (stage2_inst[6:0] == `OPC_STORE)? {4{MemRWSelect}} : 4'b0000;
assign dcache_re = 1'b1;

CSRSel csrsel (
	// inputs
	.stage3_inst(stage2_inst),

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
	.raw_dmem(dcache_dout),
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
	.WBSel(WBSelect),

	// outputs
	.wb_data(wb_data)
);

MemRW memrw (
	// inputs
	.stage3_inst(stage2_inst),

	// outputs
	.MemRWSelect(MemRWSelect)
);

endmodule