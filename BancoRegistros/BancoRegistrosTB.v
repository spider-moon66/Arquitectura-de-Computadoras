`timescale 1ns/1ns

module BancoRegistros_TB;

	reg [4:0] AR1_TB;
	reg [4:0] AR2_TB;
	reg [4:0] AW_TB;
	reg [31:0] DW_TB;
	reg We_TB;
	wire [31:0] DR1_TB;
	wire [31:0] DR2_TB;

BancoRegistros BR(
	.AR1(AR1_TB),
	.AR2(AR2_TB),
	.AW(AW_TB),
	.WE(We_TB),
	.DR1(DR1_TB),
	.DR2(DR2_TB)
	);
	
	initial begin
		AR1_TB = 4'b0000;
		AR2_TB = 4'b0001;
		AW_TB = 4'b0011;
		We_TB = 1'd1;
		DW_TB = 4'b1010;
		#100
		
		$stop;
	end

endmodule