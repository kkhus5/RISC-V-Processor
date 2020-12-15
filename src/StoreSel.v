// This is the StoreSel Control Signal

`include "Opcode.vh"

module StoreSel (
	input [31:0] stage2_inst,
	output reg [1:0] StoreSelect
);

// localparam sb = 2'b00;
// localparam sh = 2'b01;
// localparam sw = 2'b10;
// localparam idc = 2'bxx;

wire [6:0] opcode;
assign opcode = stage2_inst[6:0];
wire [2:0] funct3;
assign funct3 = stage2_inst[14:12];

always @(*) begin
	case (opcode)
		`OPC_STORE: begin
					case (funct3)
						`FNC_SB: StoreSelect = 2'b00;
						`FNC_SH: StoreSelect = 2'b01;
						`FNC_SW: StoreSelect = 2'b10;
						default: StoreSelect = 2'b11;
					endcase
				   end
		default: StoreSelect = 2'b11;
	endcase
end

endmodule