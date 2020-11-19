// This is the Data2Sel control signal.

`include "Opcode.vh"

module Data2Sel (
    input [31:0] prev_inst, // at PC = 0, at stage 3
    input [31:0] next_inst, // at PC = 4, at stage 2
    output reg Data2SelSignal
);

localparam rs2 = 1'b0;
localparam wb_data = 1'b1;

wire [6:0] prev_opcode;
assign prev_opcode = prev_inst[6:0];
wire [2:0] prev_funct3;
assign prev_funct3 = prev_inst[14:12];

wire [6:0] next_opcode;
assign next_opcode = next_inst[6:0];
wire [2:0] next_funct3;
assign next_funct3 = next_inst[14:12];

wire has_rd;
assign has_rd = (prev_opcode == `OPC_BRANCH || prev_opcode == `OP_STORE)? 1'b0: 1'b1;

wire has_rs2;
assign has_rs2 = (next_opcode == `OPC_LUI || next_opcode == `OPC_AUIPIC || next_opcode == `OPC_JAL || next_opcode == `OPC_JALR || next_opcode == `OPC_LOAD || next_opcode == `OPC_ARI_ITYPE || next_opcode == `OPC_CSR)? 1'b0 : 1'b1;

wire rd_rs2_fire;
assign rd_rs2_fire = (has_rd && has_rs2)? 1'b1 : 1'b0;

always @(*) begin
    case (rd_rs2_fire)
        1'b1: begin 
            if (next_inst[24:20] == prev_inst[11:7]) begin
                Data2SelSignal = wb_data;
            end else begin
                Data2SelSignal = rs2;
            end
              end
        default: Data2SelSignal = rs2;
    endcase
end

endmodule