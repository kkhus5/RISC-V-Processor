// This is the RegFile.

module RegFile (
	input clk,
   	input reset,
   	input RegWEnSelect,

   	// wb
   	input [4:0] wrAddr,
   	input [31:0] wrData,

   	// rs1
   	input [4:0] rdAddrA,
   	output [31:0] rdDataA,

   	// rs2
   	input [4:0] rdAddrB,
   	output [31:0] rdDataB
);

reg [31:0] regfile [31:0];

assign rdDataA = regfile[rdAddrA];
assign rdDataB = regfile[rdAddrB];

integer i;
always @(posedge clk) begin
	if (reset) begin
		for (i = 0; i < 32; i = i + 1) begin
			regfile[i] <= 32'd0;
	 	end
	end else begin
		if (write && wrAddr != 5'd0) regfile[wrAddr] <= wrData;
		end // else: !if(reset)
	end

endmodule