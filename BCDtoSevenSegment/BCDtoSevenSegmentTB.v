`timescale 1ns / 1ps
module BCDtoSevenSegmentTB;

	// Inputs
	reg [3:0] bcd;

	// Outputs
	wire [6:0] seg;

	// Instantiate the Unit Under Test (UUT)
	BCDtoSevenSegmentCode uut (
		.bcd(bcd), 
		.seg(seg)
	);

	initial begin
		bcd = 0;	#100;
		bcd = 1;	#100;
		bcd = 2;	#100;
		bcd = 3;	#100;
		bcd = 4;	#100;
		bcd = 5;	#100;
		bcd = 6;	#100;
		bcd = 7;	#100;
		bcd = 8;	#100;
		bcd = 9;	#100;
	end
endmodule

