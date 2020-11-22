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

localparam DEPTH = 32;

reg [31:0] mem [31:0];

assign rdDataA = mem[rdAddrA];
assign rdDataB = mem[rdAddrB];

integer i;
always @(posedge clk) begin
	if (reset) begin
		for (i = 0; i < DEPTH; i = i + 1) begin
			mem[i] <= 32'd0;
	 	end
	end else begin
		if (RegWEnSelect && wrAddr != 5'd0) mem[wrAddr] <= wrData;
		end // else: !if(reset)
	end

endmodule
