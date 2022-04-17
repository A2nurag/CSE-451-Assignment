`timescale 1ns / 1ps

module BCD_Adder_Module(
		input [3:0] a,
		input [3:0] b,
		output [3:0] sum,
		output carry
    );

	reg [4:0] s2;
	assign sum = s2[3:0];
	assign carry = s2[4];
	
	always @ ( * )
	begin
		s2 = a + b;
		if (s2 > 9)
		begin
			// If the value of the sum is higher than 9 then if we add 6 to the result it converts from binary form to BCD
			s2 = s2 + 6;
		end
	end
endmodule
