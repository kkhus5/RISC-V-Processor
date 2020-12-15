// Module: ALUdecoder
// Desc:   Sets the ALU operation
// Inputs: opcode: the top 6 bits of the instruction
//         funct: the funct, in the case of r-type instructions
//         add_rshift_type: selects whether an ADD vs SUB, or an SRA vs SRL
// Outputs: ALUop: Selects the ALU's operation
//

`include "Opcode.vh"
`include "ALUop.vh"

module ALUdec(
  input [6:0]       opcode,
  input [2:0]       funct,
  input             add_rshift_type,
  output reg [3:0]  ALUop
);

initial ALUop = 4'd0;
  // Implement your ALU decoder here, then delete this comment
  always @(*) begin
	case (opcode)
	    `OPC_ARI_RTYPE: begin
							case (funct)
								3'b000: begin
											case (add_rshift_type)
												1'b0: ALUop = `ALU_ADD;
												default: ALUop = `ALU_SUB;
											endcase
										end
								3'b001: ALUop = `ALU_SLL;
								3'b010: ALUop = `ALU_SLT;
								3'b011: ALUop = `ALU_SLTU;
								3'b100: ALUop = `ALU_XOR;
								3'b110: ALUop = `ALU_OR;
								3'b111: ALUop = `ALU_AND;
								3'b101: begin
											case (add_rshift_type)
												1'b0: ALUop = `ALU_SRL;
												default: ALUop = `ALU_SRA;
											endcase
										end
								default: ALUop = `ALU_XXX;
							endcase
			    		end
		`OPC_ARI_ITYPE: begin
                                case (funct)
                                        3'b000: ALUop = `ALU_ADD; 
                                        3'b001: ALUop = `ALU_SLL;
                                        3'b010: ALUop = `ALU_SLT;
                                        3'b011: ALUop = `ALU_SLTU;
                                        3'b100: ALUop = `ALU_XOR;
                                        3'b110: ALUop = `ALU_OR;
                                        3'b111: ALUop = `ALU_AND;
                                        3'b101: begin
                                                        case (add_rshift_type)
                                                                1'b0: ALUop = `ALU_SRL;
                                                                default: ALUop = `ALU_SRA;
                                                        endcase
                                                end
                                        default: ALUop = `ALU_XXX;
                                endcase
                        end
		`OPC_LUI: ALUop = `ALU_COPY_B;
		`OPC_NOOP: ALUop = `ALU_XXX;
		`OPC_CSR: begin
			  	case (funct)
					3'b001: ALUop = `ALU_COPY_A;
					default: ALUop = `ALU_COPY_B;
			  	endcase
			  end  
	    default: ALUop = `ALU_ADD;
	endcase 	
  end

endmodule