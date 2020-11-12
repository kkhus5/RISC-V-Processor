`timescale 1ns / 1ps

module ImmGenTestbench();

    parameter Halfcycle = 5; //half period is 5ns

    localparam Cycle = 2*Halfcycle;

    reg Clock;

    // Clock Signal generation:
    initial Clock = 0;
    always #(Halfcycle) Clock = ~Clock;

    reg [31:0] inst;
    reg [2:0] ImmSel;
    wire [31:0] DUTout;

    reg [31:0] REFout;

    ImmGen DUT(
	.inst(inst),
	.ImmSel(ImmSel),
	.imm(DUTout)
    );

    task checkOutput;
        input [2:0] ImmSel;
        if ( REFout !== DUTout ) begin
            $display("FAIL: Incorrect result for ImmSel: %b", ImmSel);
            $display("\tDUTout: 0x%h, REFout: 0x%h", DUTout, REFout);
            $finish();
        end
        else begin
            $display("PASS: ImmSel: %b", ImmSel);
            $display("\tDUTout: 0x%h, REFout: 0x%h", DUTout, REFout);
        end
    endtask

    // testing logic
    initial begin
	$vcdpluson;
        
	// test I-Type negative
	inst = 32'b11111100111000001000011110010011;
	ImmSel = 3'b000;
	REFout = -32'd50;

	@(posedge Clock);
	checkOutput(ImmSel);

	// test I-Type positive
        inst = 32'b00000000100000010010011100000011;
        ImmSel = 3'b000;
        REFout = 32'd8;

        @(posedge Clock);
        checkOutput(ImmSel);

	// test S-Type
        inst = 32'b00000000111000010010010000100011;
        ImmSel = 3'b001;
        REFout = 32'd8;
        
        @(posedge Clock);
        checkOutput(ImmSel);

	// test B-Type
        inst = 32'b00000000101010011000100001100011;
        ImmSel = 3'b010;
        REFout = 32'd16;
        
        @(posedge Clock);
        checkOutput(ImmSel);

	// test U-Type
        inst = 32'b00000000000000000101001010110111;
        ImmSel = 3'b011;
        REFout = 32'd20480;
        
        @(posedge Clock);
        checkOutput(ImmSel);

	// test J-Type
        inst = 32'b00000001010000000000000011101111;
        ImmSel = 3'b100;
        REFout = 32'd20;
        
        @(posedge Clock);
        checkOutput(ImmSel);

	// test CSRRWI
        inst = 32'b00000000111000010010010000100011;
        ImmSel = 3'bxxx;
        REFout = 32'd2;
        
        @(posedge Clock);
        checkOutput(ImmSel);

        $display("\n\nALL TESTS PASSED!");
        $vcdplusoff;
        $finish();
    end
endmodule
