`timescale 1 ns / 1 ps
module tb_ALU;

  reg [31:0] A;
  reg [31:0] B;

  reg [3:0] ALUop;
  
  wire [31:0] Out;
 
  ALU dut(.A(A), .B(B), .ALUop(ALUop), .Out(Out));

  integer i;
  integer j;
  integer k;
  reg correct;

  reg clk;
  initial clk = 0;
  always @(`CLOCK_PERIOD / 2) clk = ~clk;

  initial begin
    $vcdpluson;
    for (i = 0; i < 1; i = i + 1) begin
      ALUop = i;
      for (j = 0; j < 10; j = j + 1) begin
        for (k = 0; k < 10; k = k + 1) begin
          @(posedge clk);
          ALUop = i;
          A = $random%500;
          B = $random%500;
          case (i)
            4'd0: correct = A + B;
            4'd1: correct = A - B;
            4'd2: correct = A & B;
    	    4'd3: correct = A | B;
            4'd4: correct = A ^ B;
            4'd5: correct = ($signed(A) < $signed(B))? 32'd1: 32'd0;
            4'd6: correct = (A < B)? 32'd1: 32'd0;
            4'd7: correct = A << B[4:0];
            4'd8: correct = A >>> B[4:0];
            4'd9: correct = A >> B[4:0];
            4'd10: correct = B;
            4'd15: correct = 0;
            default: correct = 32'dx;
          endcase
        end
      end
    end
    @(posedge clk);
    $vcdplusoff;
    $finish;
  end

  always @(negedge clk) begin
    if (correct == Out) begin
      $display("Test: %d passed, Out = %d, Correct = %d", i, Out, correct);
    end else begin
      $display("Test: %d failed, Out = %d, Correct = %d", i, Out, correct);
    end
  end 
endmodule 
