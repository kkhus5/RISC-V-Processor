// This is the BSel control signal.

module BSel (
        input [31:0] prev_inst, // at PC = 0, at stage 3
        input [31:0] next_inst, // at PC = 4, at stage 2
        output reg [1:0] BSelSignal
);

wire [6:0] prev_opcode;
assign prev_code = prev_inst[6:0];
wire [2:0] prev_funct3;
assign prev_funct3 = prev_inst[14:12];

wire [6:0] next_opcode;
assign next_opcode = next_inst[6:0];
wire [2:0] next_funct3;
assign next_funct3 = next_inst[14:12];

wire has_rd;
assign has_rd = (prev_opcode == `OPC_BRANCH || prev_opcode == `OP_STORE)? 1'b0: 1'b1;

wire has_rs2;
assign has_rs2 = (next_opcode == `OPC_LUI || next_opcode == `OPC_AUIPIC || next_opcode == `OPC_JAL)? 1'b0 : 1'b1;

wire rd_rs2_fire;
assign rd_rs2_fire = (has_rd && has_rs2)? 1'b1 : 1'b0;

always @(*) begin
        case (rd_rs2_fire)
                1'b1: begin
                        if (next_inst[19:15] == prev_inst[11:7]) begin
                                case (prev_opcode)
                                        `OPC_LOAD: BSelSignal = 2'b11;
                                        default: BSelSignal = 2'b10;
                                endcase
                        end else begin
                                case (next_opcode)
                                        `OPC_AUIPC: BSelSignal = 2'b01;
                                        `OPC_JAL: BSelSignal = 2'b01;
                                        `OPC_BRANCH: BSelSignal = 2'b01;
                                        default: BSelSignal = 2'b00;
                                endcase
                        end
                      end
                default: begin
                                case (next_opcode)
                                        `OPC_AUIPC: BSelSignal = 2'b01;
                                        `OPC_JAL: BSelSignal = 2'b01;
                                        `OPC_BRANCH: BSelSignal = 2'b01;
                                        default: BSelSignal = 2'b00;
                                endcase
                         end
        endcase
end

endmodule
