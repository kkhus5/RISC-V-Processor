// This is the PCSel Control Signal

`include "Opcode.vh"

module PCSel (
	input [31:0] curr_inst,
	input [31:0] prev_inst,
	input BrEq,
	input BrLT,
	output reg [1:0] PCSignal
);

// if R-Type and I-Type, then PC + 4
// auipc and lui are pc + 4
// s type is PC + 4

// if BrEq and opcode is B type and funct3 is beq, then PCSel = ALU
// opcode = inst[6:0], funct3 = inst[14:12]

wire [6:0] curr_opcode;
assign curr_opcode = curr_inst[6:0];
wire [2:0] curr_funct3;
assign curr_funct3 = curr_inst[14:12];

wire [6:0] prev_opcode;
assign prev_opcode = prev_inst[6:0];
wire [2:0] prev_funct3;
assign prev_funct3 = prev_inst[14:12];

localparam pc = 2'b00;
localparam alu = 2'b01;
localparam adder = 2'b10;

reg take_branch;

always @(*) begin
	case (prev_opcode)
		`OPC_BRANCH:
                	begin
                        case (prev_funct3)
                            `FNC_BEQ:
                                        begin
                                            if (BrEq) take_branch = 1'b1;
                                        end
                            
                            `FNC_BNE:
                                        begin
                                            if (!BrEq) take_branch = 1'b1;
                                        end
                            
                            `FNC_BLT:
                                        begin
                                            if (BrLt) take_branch = 1'b1;
                                        end
                                        
                            `FNC_BGE:
                                        begin
                                            if (!BrLt) take_branch = 1'b1;
                                        end
                                        
                            `FNC_BLTU:
                                        begin
                                            if (BrLt) take_branch = 1'b1;
                                        end
                                        
                            `FNC_BGEU:
                                        begin
                                            if (!BrLt) take_branch = 1'b1;
                                        end
                        endcase
					end
		default: take_branch = 1'b0;
	endcase
end

always @(*) begin
	if (take_branch) begin
		PCSignal = alu;
	end else if (!take_branch && prev_opcode == `OP_BRANCH) begin
		PCSignal = pc;
	end else begin
		PCSignal = adder;
	end
end
endmodule
