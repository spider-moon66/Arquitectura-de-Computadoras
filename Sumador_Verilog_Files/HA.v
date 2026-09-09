
module HA(input A, 
	input B, 
	output Co,
	output S);

assign S = A ^ B;
assign Co = A & B;

endmodule