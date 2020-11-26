// This is the MemRW Control Signal

`include "Opcode.vh"

module MemRW (
	input [31:0] stage3_inst,
	input [1:0] shamt,

	output reg [3:0] MemRWSelect
);

//localparam read = 1'b0;
//localparam write = 1'b1;

wire [6:0] opcode;
assign opcode = stage3_inst[6:0];

wire [2:0] funct3;
assign funct3 = stage3_inst[14:12];

always @(*) begin
	case (opcode)
		`OPC_STORE: begin
						case (funct3)
							`FNC_SB: begin
										case (shamt)
											2'b00: MemRWSelect = 4'b0001;
											2'b01: MemRWSelect = 4'b0010;
											2'b10: MemRWSelect = 4'b0100;
											2'b11: MemRWSelect = 4'b1000;
										endcase
									 end
							`FNC_SH: begin
										case (shamt)
											2'b00: MemRWSelect = 4'b0011;
											2'b01: MemRWSelect = 4'b0110;
											2'b10: MemRWSelect = 4'b1100;
											2'b11: MemRWSelect = 4'b1100;
										endcase
									 end
							`FNC_SW: MemRWSelect = 4'b1111;
						endcase
					end
		default: MemRWSelect = 4'b0000;
	endcase
end

endmodule