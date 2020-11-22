// This is the stage register and the PC block.

module FlipFlop (
	input clk,
	input reset,

	input [31:0] data,

	output reg [31:0] data_out
);

//initial data_out = {32{1'b0}};
initial data_out = 32'h00002000;

always @(posedge clk) begin
	if (reset) begin
		//data_out <= {32{1'b0}};
		data_out <= 32'h00002000;
	end else begin
		data_out <= data;
	end
end

endmodule
