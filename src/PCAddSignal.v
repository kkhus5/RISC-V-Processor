// This is the PCAddSignal Control Signal

`include "Opcode.vh"

module PCAddSignal (
	input [31:0] icache_dout,
	output reg [1:0] PCAddSelect
);

//localparam pc4 = 2'b00;
//localparam pc_imm = 2'b01;
//localparam rs1_imm = 2'b10;

wire [6:0] opcode;
assign opcode = icache_dout[6:0];

always @(*) begin
	case (opcode)
		`OPC_JAL: PCAddSelect = 2'b01;
		`OPC_JALR: PCAddSelect = 2'b10;
		default: PCAddSelect = 2'b00;
	endcase
end

endmodule
