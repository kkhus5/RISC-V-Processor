// This is the Data1Sel control signal.
// 2'b00 = rs1, 2'b01 = PC, 2'b10 = Forwarding

`include "Opcode.vh"

module Data1Sel (
	input [31:0] prev_inst, // at PC = 0, at stage 3
	input [31:0] next_inst, // at PC = 4, at stage 2
	output reg Data1SelSignal 
);

wire [6:0] prev_opcode;
assign prev_opcode = prev_inst[6:0];
wire [2:0] prev_funct3;
assign prev_funct3 = prev_inst[14:12];

wire [6:0] next_opcode;
assign next_opcode = next_inst[6:0];
wire [2:0] next_funct3;
assign next_funct3 = next_inst[14:12];

wire has_rd;
assign has_rd = (prev_opcode == `OPC_BRANCH || prev_opcode == `OPC_STORE)? 1'b0: 1'b1;

wire has_rs1;
assign has_rs1 = (next_opcode == `OPC_LUI || next_opcode == `OPC_AUIPC || next_opcode == `OPC_JAL)? 1'b0 : 1'b1;

wire rd_rs1_fire;
assign rd_rs1_fire = (has_rd && has_rs1)? 1'b1 : 1'b0;

always @(*) begin
	case (rd_rs1_fire)
		1'b1: begin 
			if (next_inst[19:15] == prev_inst[11:7]) begin
				Data1SelSignal = 1'b1;
			end else begin
				Data1SelSignal = 1'b0;
			end
		      end
		default: Data1SelSignal = 1'b0;
	endcase
end

endmodule
