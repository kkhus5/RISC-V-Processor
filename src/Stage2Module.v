// This is the top-level for the Stage 2 Datapath and Control Signals.

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

	// control signals
	output BrLT,
	output BrEq
);

// datapath
wire [31:0] stage2_rs1_data;
wire [31:0] stage2_rs2_data;
wire [31:0] stage2_alu_in1;
wire [31:0] stage2_alu_in2;

// control signals
wire Data1SelSignal;
wire Data2SelSignal;
wire BrUn;
wire ASel;
wire BSel;
wire [3:0] ALUop;

// assign outputs
assign rs2_data_out = stage2_rs2_data;
assign stage2_inst_out = stage2_inst_in;
assign stage2_pc_out = stage2_pc_in;

DataSelMux rs1DataSel (
	// inputs
	.wb_data(wb_data),
	.reg_data(rs1_data),
	.DataSel(Data1SelSignal),

	// outputs
	.stage2_data(stage2_rs1_data)
);

DataSelMux rs2DataSel (
	// inputs
	.wb_data(wb_data),
	.reg_data(rs2_data_in),
	.DataSel(Data2SelSignal),

	// outputs
	.stage2_data(stage2_rs2_data)
);

Data1Sel data1sel (
	// inputs
	.prev_inst(stage3_inst), // at PC = 0, at stage 3
	.next_inst(stage2_inst_in), // at PC = 4, at stage 2

	//outputs
	.Data1SelSignal(Data1SelSignal) 
);

Data2Sel data2sel (
	// inputs
	.prev_inst(stage3_inst), // at PC = 0, at stage 3
	.next_inst(stage2_inst_in), // at PC = 4, at stage 2

	// outputs
	.Data2SelSignal(Data2SelSignal) 
);

BranchComp branchcomp (
	// inputs
	.A(stage2_rs1_data),
	.B(stage2_rs2_data),
	.BrUn(BrUn),

	// outputs
	.BrLT(BrLT),
	.BrEq(BrEq)
);

BrUn brun (
	// inputs
	.inst(stage2_inst_in),

	// outputs
	.BrUnSignal(BrUn)
);

ASel asel (
	// inputs
	.inst(stage2_inst_in),

	// outputs
	.ASelSignal(ASel)
);

BSel bsel (
	// inputs
	.inst(stage2_inst_in),

	// outputs
	.BSelSignal(BSel)
);

ASelMux aselmux (
	// inputs
	.stage2_PC(stage2_pc_in),
	.stage2_rs1_data(stage2_rs1_data),
	.ASelSignal(ASel),

	// outputs
	.stage2_alu_in1(stage2_alu_in1)
);

BSelMux bselmux (
	// inputs
	.stage2_imm(stage2_imm_in),
	.stage2_rs2_data(stage2_rs2_data),
	.BSelSignal(BSel),

	// outputs
	.stage2_alu_in2(stage2_alu_in2)
);

ALUdec alusel (
	// inputs
	.opcode(stage2_inst_in[6:0]),
	.funct(stage2_inst_in[14:12]),
	.add_rshift_type(stage2_inst_in[30]),

	// outputs
	.ALUop(ALUop)
);

ALU alu (
	// inputs
	.A(stage2_alu_in1),
	.B(stage2_alu_in2),
	.ALUop(ALUop),

	// outputs
	.Out(stage2_alu_out)
);

endmodule












