// This is the ASel control signal.

`include "Opcode.vh"

module ASel (
	input [31:0] prev_inst, // at PC = 0, at stage 3
	input [31:0] next_inst, // at PC = 4, at stage 2
	output reg [1:0] ASelSignal 
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

wire has_rs1;
assign has_rs1 = (next_opcode == `OPC_LUI || next_opcode == `OPC_AUIPIC || next_opcode == `OPC_JAL)? 1'b0 : 1'b1;

wire rd_rs1_fire;
assign rd_rs1_fire = (has_rd && has_rs1)? 1'b1 : 1'b0;

always @(*) begin
	case (rd_rs1_fire)
		1'b1: begin 
			if (next_inst[19:15] == prev_inst[11:7]) begin
				case (prev_opcode)
					`OPC_LOAD: ASelSignal = 2'b11;
					default: ASelSignal = 2'b10;
				endcase
			end else begin
				ASelSignal = 2'b00;
			end
		      end
		default: begin
				case (next_opcode)
					`OPC_AUIPC: ASelSignal = 2'b01;
					`OPC_JAL: ASelSignal = 2'b01;
					`OPC_BRANCH: ASelSignal = 2'b01;
					default: ASelSignal = 2'b00;
				endcase
			 end
	endcase
end

endmodule
