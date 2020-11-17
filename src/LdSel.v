// This is the LdSel Control Signal

`include "Opcode.vh"

module LdSel (
	input [31:0] stage3_inst,
	output reg [2:0] LdSelect
);

localparam lb = 3'b000;
localparam lh = 3'b001;
localparam lw = 3'b010;
localparam lbu = 3'b011;
localparam lhu = 3'b100;
localparam idc = 3'bxxx;

wire [6:0] opcode;
assign opcode = stage3_inst[6:0];
wire [2:0] funct3;
assign funct3 = stage3_inst[14:12];

always @(*) begin
	case (opcode)
		`OPC_LOAD: begin
					case (funct3)
						`FNC_LB: LdSelect = lb;
						`FNC_LH: LdSelect = lh;
						`FNC_LW: LdSelect = lw;
						`FNC_LBU: LdSelect = lbu;
						`FNC_LHU: LdSelect = lhu;
					endcase
				   end
		default: LdSelect = idc;
	endcase
end

endmodule