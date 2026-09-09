`timescale 1ns/1ns
module SNibble_TB;
	reg Cin_TB;
	reg [3:0] AA_TB;
	reg [3:0] BB_TB;
	wire  [3:0] C_Suma, C_Cs;
	
	SNibble SN_DUT(
		.AA(AA_TB), 
		.BB(BB_TB), 
		.SUMA(C_Suma), 
		.Cs(C_Cs),
		.Cin(Cin_TB));
	
	initial begin
		AA_TB = 4'd3;
		BB_TB = 4'd5;
		Cin_TB = 1'd0;
		#100
		AA_TB = 4'd6;
		BB_TB = 4'd1;
		Cin_TB = 1'd0;
		#100
		AA_TB = 4'd2;
		BB_TB = 4'd2;
		Cin_TB = 1'd0;
		#100
		AA_TB = 4'd3;
		BB_TB = 4'd3;
		Cin_TB = 1'd0;
		#100
		
		$stop;
	end
	
endmodule
