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

    .BrLT(),
    .BrEq(),

    // outputs
    .stage1_inst_out(),
    .stage1_pc_out(),
    .stage1_imm(),

    .rs1_data_out(),
    .rs2_data_out(),

    // for icache
    .icache_dout(),
    .icache_addr(),
    .icache_re()
);

Stage2Module stage2 (
    // inputs
    .stage3_inst(),
    .stage2_inst_in(),
    .wb_data(),
    .rs1_data(),
    .rs2_data_in(),
    .stage2_pc_in(),
    .stage2_imm_in(),

    // outputs
    .stage2_inst_out(),
    .stage2_pc_out(),
    .stage2_alu_out(),
    .rs2_data_out(),

    // control signals
    .BrLT(),
    .BrEq()
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
    .csr_out(csr)
);

endmodule
