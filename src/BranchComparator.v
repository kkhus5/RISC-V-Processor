// This is the Branch Comparator.

module BranchComp (
	input [31:0] A,
	input [31:0] B,
	input BrUn,
	output BrLT,
	output BrEq
);

assign BrEq = (A == B)? 1'b1 : 1'b0;
assign BrLT = (!BrUn && $signed(A) < $signed(B))? 1'b1 : (BrUn && A < B)? 1'b1 : 1'b0;

endmodule
