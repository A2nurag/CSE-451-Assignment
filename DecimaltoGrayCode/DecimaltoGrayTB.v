`timescale 1ns / 1ps

module DecimaltoGrayTB;

	// Inputs
	reg [3:0] binary;

	// Outputs
	wire [3:0] gray_code;

	// Instantiate the Unit Under Test (UUT)
	DecimaltoGrayCodeV uut (
		.binary(binary), 
		.gray_code(gray_code)
	);

	initial begin
		binary = 4'b0000;	#100;
		binary = 4'b0001;	#100;
		binary = 4'b0010;	#100;
		binary = 4'b0011;	#100;
		binary = 4'b0100;	#100;
		binary = 4'b0101;	#100;
		binary = 4'b0110;	#100;
		binary = 4'b1000;	#100;
		binary = 4'b1001;	#100;
		binary = 4'b1010;	#100;
		binary = 4'b1011;	#100;
		binary = 4'b1100;	#100;
		binary = 4'b1101;	#100;
		binary = 4'b1111;	#100;
	end
      
endmodule

