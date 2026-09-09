`timescale 1ns/1ns
module SS_TB;
	reg [15:0] AAA_TB;
	reg [15:0] BBB_TB;
	reg CCIN_TB;
	wire [15:0] RR_TB;
	wire CCOUT_TB;
	
	Sumador_SHORT SS_DUT(
		.AAA(AAA_TB),
		.BBB(BBB_TB),
		.CCIN(CCIN_TB),
		.RR(RR_TB),
		.CCOUT(CCOUT_TB)
	);
	
	initial begin
		CCIN_TB = 1'd0;
		AAA_TB = 16'd15;
		BBB_TB = -16'd30;
		#100
		CCIN_TB = 1'd0;
		AAA_TB = 16'd32767;
		BBB_TB = 16'd500;
		#100
		CCIN_TB = 1'd0;
		AAA_TB = 16'd1256;
		BBB_TB = -16'd32767;
		#100
		CCIN_TB = 1'd0;
		AAA_TB = 16'd150;
		BBB_TB = 16'd20;
		#100
		CCIN_TB = 1'd0;
		AAA_TB = 16'd25;
		BBB_TB = 16'd100;
		#100
		CCIN_TB = 1'd0;
		AAA_TB = 16'd32767;
		BBB_TB = 16'd1;
		#100
		CCIN_TB = 1'd0;
		AAA_TB = 16'd65535;
		BBB_TB = 16'd1;
		#100
		$stop;
	end
endmodule
