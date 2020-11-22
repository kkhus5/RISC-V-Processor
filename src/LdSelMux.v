// This is the LdSelMux datapath block.

module LdSelMux (
	input [31:0] raw_dmem, // deadbeef
	input [2:0] LdSel,
	input [1:0] shamt, // alu_out[1:0]

	output reg [31:0] wb_dmem 
);

reg [31:0] shifted_raw_dmem;

always @(*) begin
	case (LdSel)
		3'b001: // LH
		begin
			case (shamt)
				2'b00: wb_dmem = {{16{raw_dmem[15]}}, raw_dmem[15:0]};
				
				2'b01: 
				begin
					shifted_raw_dmem = raw_dmem >> 8; // 00deadbe
					wb_dmem = {{16{shifted_raw_dmem[15]}}, shifted_raw_dmem[15:0]};
				end

				default: 
				begin
					shifted_raw_dmem = raw_dmem >> 16;
					wb_dmem = {{16{shifted_raw_dmem[15]}}, shifted_raw_dmem[15:0]};
				end
			endcase
		end

		3'b000: // LB
		begin
			case (shamt)
				2'b00: wb_dmem = {{24{raw_dmem[7]}}, raw_dmem[7:0]};
				
				2'b01: 
				begin
					shifted_raw_dmem = raw_dmem >> 8; // 00deadbe
					wb_dmem = {{24{shifted_raw_dmem[7]}}, shifted_raw_dmem[7:0]};
				end

				2'b10: 
				begin
					shifted_raw_dmem = raw_dmem >> 16;
					wb_dmem = {{24{shifted_raw_dmem[7]}}, shifted_raw_dmem[7:0]};
				end

				2'b11: 
				begin
					shifted_raw_dmem = raw_dmem >> 24;
					wb_dmem = {{24{shifted_raw_dmem[7]}}, shifted_raw_dmem[7:0]};
				end
			endcase
		end

		3'b100: // LHU
		begin
			case (shamt)
				2'b00: wb_dmem = {{16{1'b0}}, raw_dmem[15:0]};
				
				2'b01: 
				begin
					shifted_raw_dmem = raw_dmem >> 8; // 00deadbe
					wb_dmem = {{16{1'b0}}, shifted_raw_dmem[15:0]};
				end

				default: 
				begin
					shifted_raw_dmem = raw_dmem >> 16;
					wb_dmem = {{16{1'b0}}, shifted_raw_dmem[15:0]};
				end
			endcase
		end

		3'b011: // LBU
		begin
			case (shamt)
				2'b00: wb_dmem = {{24{1'b0}}, raw_dmem[7:0]};
				
				2'b01: 
				begin
					shifted_raw_dmem = raw_dmem >> 8; // 00deadbe
					wb_dmem = {{24{1'b0}}, shifted_raw_dmem[7:0]};
				end

				2'b10: 
				begin
					shifted_raw_dmem = raw_dmem >> 16;
					wb_dmem = {{24{1'b0}}, shifted_raw_dmem[7:0]};
				end

				2'b11: 
				begin
					shifted_raw_dmem = raw_dmem >> 24;
					wb_dmem = {{24{1'b0}}, shifted_raw_dmem[7:0]};
				end
			endcase
		end

		3'b010: wb_dmem = raw_dmem;

		default: wb_dmem = 32'dx;
		
	endcase
end

endmodule
