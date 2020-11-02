`include "/home/cc/eecs151/fa20/class/eecs151-abr/lab/lab4/src/ALUop.vh"

module ALU(
    input [31:0] A,B,
    input [3:0] ALUop,
    output reg [31:0] Out
);

// Your code goes here
always @(*) begin
  case (ALUop)
    `ALU_ADD: Out = A + B;
    `ALU_SUB: Out = A - B;
    `ALU_AND: Out = A & B;
    `ALU_OR : Out = A | B;
    `ALU_XOR: Out = A ^ B;
    `ALU_SLT: Out = ($signed(A) < $signed(B))? 32'd1: 32'd0;
    `ALU_SLTU:Out = (A < B)? 32'd1: 32'd0;
    `ALU_SLL: Out = A << B[4:0];
    `ALU_SRA: Out = A >>> B[4:0];
    `ALU_SRL: Out = A >> B[4:0];
    `ALU_COPY_B: Out = B;
    `ALU_XXX: Out = 32'd0;
    default : Out = 32'dx;
  endcase
end
                  
endmodule
