// This is the PCSel Control Signal

`include "Opcode.vh"

module PCSel (
    input [31:0] icache_dout,
    input [31:0] prev_inst,
    input stall,
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
assign curr_opcode = icache_dout[6:0];
wire [2:0] curr_funct3;
assign curr_funct3 = icache_dout[14:12];
wire [4:0] curr_rs1;
assign curr_rs1 = icache_dout[19:15];

wire [6:0] prev_opcode;
assign prev_opcode = prev_inst[6:0];
wire [2:0] prev_funct3;
assign prev_funct3 = prev_inst[14:12];
wire [4:0] prev_rd;
assign prev_rd = prev_inst[11:7];

//localparam pc = 2'b00;
//localparam alu = 2'b01;
//localparam adder = 2'b10;

reg take_branch;

always @(*) begin
    case (prev_opcode)
        `OPC_BRANCH:
                    begin
                        case (prev_funct3)
                            `FNC_BEQ:
                                        begin
                                            if (BrEq) begin
                                                take_branch = 1'b1;
                                            end else begin
                                                take_branch = 1'b0;
                                            end
                                        end
                            
                            `FNC_BNE:
                                        begin
                                            if (!BrEq) begin
                                                take_branch = 1'b1;
                                            end else begin
                                                take_branch = 1'b0;
                                            end
                                        end
                            
                            `FNC_BLT:
                                        begin
                                            if (BrLT) begin
                                                take_branch = 1'b1;
                                            end else begin
                                                take_branch = 1'b0;
                                            end
                                        end
                                        
                            `FNC_BGE:
                                        begin
                                            if (!BrLT) begin
                                                take_branch = 1'b1;
                                            end else begin
                                                take_branch = 1'b0;
                                            end
                                        end
                                        
                            `FNC_BLTU:
                                        begin
                                            if (BrLT) begin
                                                take_branch = 1'b1;
                                            end else begin
                                                take_branch = 1'b0;
                                            end
                                        end
                                        
                            `FNC_BGEU:
                                        begin
                                            if (!BrLT) begin
                                                take_branch = 1'b1;
                                            end else begin
                                                take_branch = 1'b0;
                                            end
                                        end
                            default: take_branch = 1'b0;
                        endcase
                    end
        default: take_branch = 1'b0;
    endcase
end

always @(*) begin
    if (take_branch) begin
        PCSignal = 2'b01;
    end else if (!take_branch && prev_opcode == `OPC_BRANCH || (curr_opcode == `OPC_JALR && prev_rd == curr_rs1 && prev_opcode != `OPC_NOOP && prev_opcode != `OPC_BRANCH && prev_opcode != `OPC_STORE)) begin
        PCSignal = 2'b00;
    end else begin
        PCSignal = 2'b10;
    end
end
endmodule
