
module OP1(
	input [3:0] A, 
	input [3:0] B,  
	input [3:0]C, 
	output [7:0]S);

	assign S = A + B - C;

endmodule