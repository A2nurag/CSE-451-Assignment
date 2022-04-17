`timescale 1ns / 1ps

module BCD_Adder_TB;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire [3:0] sum;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	BCD_Adder_Module uut (
		.a(a), 
		.b(b), 
		.sum(sum), 
		.carry(carry)
	);

	initial begin
		a = 0; b = 0; #100;
		a = 2; b = 0; #100;
		a = 2; b = 3; #100;
		a = 4; b = 3; #100;
		a = 4; b = 6; #100;
		a = 6; b = 6; #100;
		a = 6; b = 9; #100;
		a = 8; b = 9; #100;
		a = 8; b = 0; #100;
	end
      
endmodule

