// This is the immediate generator module. It is instantiated in Riscv151.v.

module ImmGen (
	input [2:0] ImmSel, // I type, S type, B type, J type, U type, CSRRWI
	input [31:0] inst, // comes from IMEM
	//input input_val, // is the input valid?
	//input output_rdy, // next block is ready to take the result 
	output reg [31:0] imm // goes to the stage 1 reg, to be fed into ALU_MUX_B
	//output output_val, // is the result valid? 
	//output input_rdy // ready to take input
);

// I type: sign extend, [31:20]
// S type: sign extend, [31:25] + [11:7]
// B type: sign extend, [31] + [7] + [30:25] + [11:8] + 1'b0
// U type: [31:12], zero extend
// J type: sign extend, [31] + [19:12] + [20] + [30:21] + 1'b0
// CSRRWI: zero extend, [19:15]

// set input_rdy =  
// if output_rdy = 1, set output_val = 1, then output imm
always @(*) begin
	case (ImmSel)
		3'b000: imm = {{20{inst[31]}}, inst[31:20]};
		3'b001: imm = {{20{inst[31]}}, inst[31:25], inst[11:7]};
		3'b010: imm = {{19{inst[31]}}, inst[31], inst[7], inst[30:25], inst[11:8], 1'b0};
		3'b011: imm = {inst[31:12], {12{1'b0}}};
		3'b100: imm = {{11{inst[31]}}, inst[31], inst[19:12], inst[20], inst[30:21], 1'b0};          
		default: imm = {{27{1'b0}}, inst[19:15]};
	endcase
end



endmodule
