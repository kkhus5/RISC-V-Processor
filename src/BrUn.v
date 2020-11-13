// This is the BrUn control signal.

module BrUn (
	input [31:0] inst,
	output reg BrUnSignal
);

wire [6:0] opcode = inst[6:0];
wire [2:0] funct3 = inst[14:12];

always @(*) begin
	case(opcode)
		`OPC_BRANCH: begin
				case (funct3)
					`FNC_BLTU: BrUnSignal = 1'b1;
					`FNC_BGEU: BrUnSignal = 1'b1;
					`FNC_BLT: BrUnSignal = 1'b0;
					`FNC_BGE: BrUnSignal = 1'b0;
					default: BrUnSignal = 1'bx;
				endcase
			     end
		default: BrUnSignal = 1'bx;
	endcase
end

endmodule
