// This is the PCSel Control Signal

`include "Opcode.vh"

module PCSel (
	input [31:0] inst,
	input BrEq,
	input BrLT,
	output reg [1:0] PCSignal
);

// if R-Type and I-Type, then PC + 4
// auipc and lui are pc + 4
// s type is PC + 4

// if BrEq and opcode is B type and funct3 is beq, then PCSel = ALU
// opcode = inst[6:0], funct3 = inst[14:12]

wire [6:0] opcode = inst[6:0];
wire [2:0] funct3 = inst[14:12];

localparam pc4 = 2'b00;
localparam alu = 2'b01;
localparam pc_imm = 2'b10;
localparam rs1_imm = 2'b11;

always @(*) begin
	case (opcode)
        
		`OPC_BRANCH:
                begin
                        case (funct3)
                            `FNC_BEQ:
                                        begin
                                            if (BrEq) PCSignal = alu;
                                        end
                            
                            `FNC_BNE:
                                        begin
                                            if (!BrEq) PCSignal = alu;
                                        end
                            
                            `FNC_BLT:
                                        begin
                                            if (BrLt) PCSignal = alu;
                                        end
                                        
                            `FNC_BGE:
                                        begin
                                            if (!BrLt) PCSignal = alu;
                                        end
                                        
                            `FNC_BLTU:
                                        begin
                                            if (BrLt) PCSignal = alu;
                                        end
                                        
                            `FNC_BGEU:
                                        begin
                                            if (!BrLt) PCSignal = alu;
                                        end
                        endcase
			     end
                 
        `OPC_JAL: PCSignal = pc_imm;
        
        `OPC_JALR: PCSignal = rs1_imm;
        
		default: PCSignal = pc4;
	endcase
end


endmodule
