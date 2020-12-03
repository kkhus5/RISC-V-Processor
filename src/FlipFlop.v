// This is the stage register and the PC block.

// `include "const.vh"

// module FlipFlop (
// 	input clk,
// 	input reset,
// 	input isPC,

// 	input [31:0] data,

// 	output reg [31:0] data_out
// );

// // initial data_out = {32{1'b0}};
// initial data_out = (isPC)? 32'h00001FFC: 32'h00002000;

// always @(posedge clk) begin
// 	if (reset) begin
// 		// data_out <= {32{1'b0}};
// 		if (isPC) data_out <= 32'h00001FFC;
// 		else data_out <= 32'h00002000;
// 	end else begin
// 		data_out <= data;
// 	end
// end

// endmodule

//This is the stage register and the PC block.

`include "const.vh"

module FlipFlop (
	input clk,
	input reset,
	input isPC,

	input stall,

	input [31:0] data,

	output [31:0] data_out
);

reg [31:0] register;

assign data_out = (!stall)? register : (isPC)? register : `INSTR_NOP;

// initial data_out = {32{1'b0}};
initial register = (isPC)? 32'h00001FFC: `INSTR_NOP;

always @(posedge clk) begin
	if (reset) begin
		// data_out <= {32{1'b0}};
		if (isPC) register <= 32'h00001FFC;
		else register <= `INSTR_NOP;
	end else if (stall) begin
		register <= register;
	end else begin
		register <= data;
	end
end

endmodule
