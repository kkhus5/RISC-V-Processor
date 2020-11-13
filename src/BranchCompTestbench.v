`timescale 1ns / 1ps

module BranchCompTestbench();

    parameter Halfcycle = 5; //half period is 5ns

    localparam Cycle = 2*Halfcycle;

    reg Clock;

    // Clock Signal generation:
    initial Clock = 0;
    always #(Halfcycle) Clock = ~Clock;
    
    reg [31:0] A;
    reg [31:0] B;
    reg BrUn;
    wire DUTBrLT;
    wire DUTBrEq;

    reg REFBrLT;
    reg REFBrEq;

    BranchComp DUT(
        .A(A),
        .B(B),
        .BrUn(BrUn),
	.BrLT(DUTBrLT),
	.BrEq(DUTBrEq)
    );

    task checkOutput;
        input [31:0] A;
	input [31:0] B;
	input BrUn;
        if ( REFBrEq !== DUTBrEq || REFBrLT !== DUTBrLT) begin
            $display("FAIL: Incorrect result for BranchComp: A = %b, B = %b, BrUn = %b", A, B, BrUn);
            $display("\tDUTBrLT: 0x%h, REFBrLT: 0x%h, DUTBrEq: 0x%h, REFBrEq: 0x%h", DUTBrLT, REFBrLT, DUTBrEq, REFBrEq);
            $finish();
        end
        else begin
            $display("PASS: BranchComp: A = %b, B = %b, BrUn = %b", A, B, BrUn);
            $display("\tDUTBrLT: 0x%h, REFBrLT: 0x%h, DUTBrEq: 0x%h, REFBrEq: 0x%h", DUTBrLT, REFBrLT, DUTBrEq, REFBrEq);
        end
    endtask

    // testing logic
    initial begin
	$vcdpluson;

	// test BrEq
	@(negedge Clock)
	A = 32'd151;
	B = 32'd151;
	BrUn = 1'bx;
	REFBrLT = 1'b0;
	REFBrEq = 1'b1;

        @(posedge Clock);
        checkOutput(A, B, BrUn);

        @(negedge Clock)
        A = 32'd151;
        B = -32'd151;
        BrUn = 1'b1;
        REFBrLT = 1'b1;
        REFBrEq = 1'b0;

        @(posedge Clock);
        checkOutput(A, B, BrUn);

	// test BrLT unsigned
        @(negedge Clock)
        A = 32'd0;
        B = -32'd151;
        BrUn = 1'b1;
        REFBrLT = 1'b1;
        REFBrEq = 1'b0;

        @(posedge Clock);
        checkOutput(A, B, BrUn);

        @(negedge Clock)
        A = 32'd10;
        B = 32'd1;
        BrUn = 1'b1;
        REFBrLT = 1'b0;
        REFBrEq = 1'b0;

        @(posedge Clock);
        checkOutput(A, B, BrUn);

	// test BrLT signed
        @(negedge Clock)
        A = 32'd0;
        B = -32'd151;
        BrUn = 1'b0;
        REFBrLT = 1'b0;
        REFBrEq = 1'b0;

        @(posedge Clock);
        checkOutput(A, B, BrUn);

        @(negedge Clock)
        A = -32'd2;
        B = -32'd1;
        BrUn = 1'b0;
        REFBrLT = 1'b1;
        REFBrEq = 1'b0;

        @(posedge Clock);
        checkOutput(A, B, BrUn);

        $display("\n\nALL TESTS PASSED!");
        $vcdplusoff;
        $finish();
    end
endmodule
