// This is the Stage 1 module.

module Stage1Module (
	input clk,
	input reset,

	input stall,

	input [31:0] stage2_inst,
	input [31:0] stage2_alu_out,
	input [31:0] stage3_inst,
	input [31:0] wb_data,
	input [4:0] wb_addr,

	input BrLT,
	input BrEq,

	output [31:0] stage1_inst_out, // done
	output [31:0] stage1_pc_out, // done
	output [31:0] stage1_imm, // done

	output [31:0] rs1_data_out, // done
	output [31:0] rs2_data_out, // done

	// for icache
	input [31:0] icache_dout,
	output [31:0] icache_addr, // done
	output icache_re // done
);

// datapath
wire [31:0] stage1_inst;
wire [31:0] rs1_mux_data;
wire [31:0] rs2_mux_data;
wire [31:0] stage1_pc;
wire [31:0] stage1_pc_mux_to_pc;
wire [31:0] stage1_pc4;

// controls
wire [2:0] ImmType;
wire NOPSignal;
wire RegWEnSelect;
wire Data1SelSignal;
wire Data2SelSignal;
wire [1:0] PCAddSelect;
wire [1:0] PCSelect;

// for testing
wire [4:0] writeback_address = wb_addr;
wire [31:0] writeback_data = wb_data;
wire [31:0] rs2_data = rs2_data_out;

assign stage1_inst_out = stage1_inst;
assign stage1_pc_out = stage1_pc;
assign icache_addr = stage1_pc_mux_to_pc;
assign icache_re = 1'b1;

RegFile regfile (
	// inputs
	.clk(clk),
	.reset(reset),
	.RegWEnSelect(RegWEnSelect),

	.wrAddr(wb_addr),
	.wrData(wb_data),

	.rdAddrA(stage1_inst[19:15]),
	.rdAddrB(stage1_inst[24:20]),

	// outputs
	.rdDataA(rs1_mux_data),
	.rdDataB(rs2_mux_data)
);

RegWEn regwen (
	// inputs
	.stage3_inst(stage3_inst),

	// outputs
	.RegWEnSelect(RegWEnSelect)
);

ImmSel immsel (
	// inputs
	//.inst(stage1_inst),
	.inst(icache_dout),

	// outputs
	.ImmType(ImmType)
);

ImmGen immgen (
	// inputs
	.ImmSel(ImmType),
	//.inst(stage1_inst),
	.inst(icache_dout),

	// outputs
	.imm(stage1_imm)
);

NOPSel nopsel (
	// inputs
	.icache_dout(icache_dout),
	.prev_inst(stage2_inst),
	.stall(stall),

	// outputs
	.NOPSignal(NOPSignal)
);

NOPSelMux nopselmux (
	// inputs
	.icache_dout(icache_dout),
	.NOPSignal(NOPSignal),

	// outputs
	.stage1_inst(stage1_inst)
);

Data1Sel rs1DataSel_s1 (
	// inputs
	.prev_inst(stage3_inst),
	.next_inst(stage1_inst),

	// outputs
	.Data1SelSignal(Data1SelSignal)
);

Data2Sel rs2DataSel_s1 (
	// inputs
	.prev_inst(stage3_inst),
	.next_inst(stage1_inst),

	// outputs
	.Data2SelSignal(Data2SelSignal)
);

DataSelMux data1sel_s1 (
	// inputs
	.wb_data(wb_data),
	.reg_data(rs1_mux_data),
	.DataSel(Data1SelSignal),

	// outputs
	.stage2_data(rs1_data_out)
);

DataSelMux data2sel_s1 (
	// inputs
	.wb_data(wb_data),
	.reg_data(rs2_mux_data),
	.DataSel(Data2SelSignal),

	// outputs
	.stage2_data(rs2_data_out)
);

FlipFlop pcreg (
	// inputs
	.clk(clk),
	.reset(reset),
	.isPC(1'b1),

	.stall(stall),

	.data(stage1_pc_mux_to_pc),

	// outputs
	.data_out(stage1_pc)
);

PCAddSignal pcaddsignal (
	// inputs
	.icache_dout(icache_dout),

	// outputs
	.PCAddSelect(PCAddSelect)
);

Adder pcadder (
	// inputs
	.stage1_pc(stage1_pc),
	.stage1_imm(stage1_imm),
	.rs1_data(rs1_data_out),
	.PCAddSelect(PCAddSelect),

	// outputs
	.stage1_pc4(stage1_pc4)
);

PCSel pcsel (
	// inputs
	.icache_dout(icache_dout),
	.prev_inst(stage2_inst),
	.stall(stall),
	.BrEq(BrEq),
	.BrLT(BrLT),

	// outputs
	.PCSignal(PCSelect)
);

PCSelMux pcselmux (
	// inputs
	.stage2_alu_out(stage2_alu_out),
	.stage1_pc(stage1_pc),
	.stage1_pc4(stage1_pc4),
	.PCSignal(PCSelect),

	// outputs
	.stage1_pc_mux_to_pc(stage1_pc_mux_to_pc)
);

endmodule



