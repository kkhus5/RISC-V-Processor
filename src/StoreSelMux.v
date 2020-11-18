// This is the StoreSelMux datapath block.

module StoreSelMux (
	input [31:0] stage2_rs2_data, // 12345678
	input [1:0] StoreSel,
	input [1:0] shamt, // alu_out[1:0]

	output [31:0] dmem_write_data
);

reg [31:0] shifted_rs2;
reg [15:0] shift_extended;

always @(*) begin
	case (StoreSel)
		2'b01: // SH
		begin
			shift_extended = {16{1'b0}}, stage2_rs2_data[15:0]};
			case (shamt)
				2'b00: dmem_write_data = shift_extended;
				
				2'b01: dmem_write_data = shift_extended << 8; 
				
				default: dmem_write_data = shift_extended << 16;
			endcase
		end

		2'b00: // SB
		begin
			shift_extended = {24{1'b0}}, shifted_rs2[7:0]};
			case (shamt)
				2'b00: dmem_write_data = shift_extended;
				
				2'b01: dmem_write_data = shift_extended << 8; 

				2'b10: dmem_write_data = shift_extended << 16;

				2'b11: dmem_write_data = shift_extended << 24;
			endcase
		end

		2'b10: dmem_write_data = stage2_rs2_data; // SW

		default: dmem_write_data = 32'dx; // idc
	endcase
end

endmodule