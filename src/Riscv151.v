`include "const.vh"

module Riscv151(
    input clk,
    input reset,

    // Memory system ports
    output [31:0] dcache_addr,
    output [31:0] icache_addr,
    output [3:0] dcache_we,
    output dcache_re,
    output icache_re,
    output [31:0] dcache_din,
    input [31:0] dcache_dout,
    input [31:0] icache_dout,
    input stall,
    output [31:0] csr

);

// datapath
wire [31:0] stage1_inst;
wire [31:0] stage2_inst;

wire [31:0] stage1_pc;
wire [31:0] stage2_pc;

wire [31:0] stage1_imm;
wire [31:0] stage2_imm;

wire [31:0] stage1_rs1;
wire [31:0] stage2_rs1;

wire [31:0] stage1_rs2;
wire [31:0] stage2_rs2;

// controls
wire BrLT;
wire BrEq;

// Implement your core here, then delete this comment
Stage1Module stage1 (
    // inputs
    .clk(clk),
    .reset(reset),

    .stall(stall),

    .stage2_inst(),
    .stage2_alu_out(),
    .stage3_inst(),
    .wb_data(),
    .wb_addr(),

    .BrLT(BrLT),
    .BrEq(BrEq),

    // outputs
    .stage1_inst_out(stage1_inst),
    .stage1_pc_out(stage1_pc),
    .stage1_imm(stage1_imm),

    .rs1_data_out(stage1_rs1),
    .rs2_data_out(stage1_rs2),

    // for icache
    .icache_dout(icache_dout),
    .icache_addr(icache_addr),
    .icache_re(icache_re)
);

FlipFlop s1_to_s2_inst (
    // inputs
    .clk(clk),
    .reset(reset),

    .data(stage1_inst),

    // outputs
    .data_out(stage2_inst)
);

FlipFlop s1_to_s2_pc (
    // inputs
    .clk(clk),
    .reset(reset),

    .data(stage1_pc),

    // outputs
    .data_out(stage2_pc)
);

FlipFlop s1_to_s2_imm (
    // inputs
    .clk(clk),
    .reset(reset),

    .data(stage1_imm),

    // outputs
    .data_out(stage2_imm)
);

FlipFlop s1_to_s2_rs1 (
    // inputs
    .clk(clk),
    .reset(reset),

    .data(stage1_rs1),

    // outputs
    .data_out(stage2_rs1)
);

FlipFlop s1_to_s2_rs2 (
    // inputs
    .clk(clk),
    .reset(reset),

    .data(stage1_rs2),

    // outputs
    .data_out(stage2_rs2)
);

Stage2Module stage2 (
    // inputs
    .stage3_inst(),
    .stage2_inst_in(stage2_inst),
    .wb_data(),
    .rs1_data(stage2_rs1),
    .rs2_data_in(stage2_rs2),
    .stage2_pc_in(stage2_pc),
    .stage2_imm_in(stage2_imm),

    // outputs
    .stage2_inst_out(),
    .stage2_pc_out(),
    .stage2_alu_out(),
    .rs2_data_out(),

    // control signals
    .BrLT(BrLT),
    .BrEq(BrEq)
);

FlipFlop s1_to_s2_rs2 (
    // inputs
    .clk(clk),
    .reset(reset),

    .data(stage1_rs2),

    // outputs
    .data_out(stage2_rs2)
);

Stage3Module stage3 (
    // inputs
    .clk(clk),
    .reset(reset),

    .stage3_inst_in(),
    .stage3_pc_in(),
    .stage3_alu_out(),
    .stage3_dmem_write_addr(),
    .stage3_dmem_write_data(),
    .rs1_to_csr(),

    // outputs
    .wb_data(),
    .rd(),
    .csr_out(csr),

    // for dcache
    .dcache_dout(dcache_dout),
    .dcache_addr(dcache_addr),
    .dcache_we(dcache_we),
    .dcache_re(dcache_re),
    .dcache_din(dcache_din)
);

endmodule
