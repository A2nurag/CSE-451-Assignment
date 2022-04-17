`timescale 1ns / 1ps
module BinarytoGrayTB;

	// Inputs
	reg [3:0] decimal;

	// Instantiate the Unit Under Test (UUT)
	DecimaltoGrayCodeV uut (
		.decimal(decimal)
	);

	initial begin
		// Initialize Inputs
		decimal = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

