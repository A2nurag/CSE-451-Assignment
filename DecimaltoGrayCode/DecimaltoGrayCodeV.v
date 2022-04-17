`timescale 1ns / 1ps

module DecimaltoGrayCodeV(
	input [3:0] binary,
	output [3:0] gray_code
    );
	
	assign gray_code[3] = binary[3];
	assign gray_code[2] = binary[2] ^ binary[3];
	assign gray_code[1] = binary[2] ^ binary[1];
	assign gray_code[0] = binary[1] ^ binary[0];
	
endmodule
