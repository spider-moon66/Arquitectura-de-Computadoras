module Sumador_SHORT(
	input [15:0] AAA,
	input [15:0] BBB,
	input CCIN,
	output [15:0] RR,
	input CCOUT
);

wire C1, C2, C3;

SNibble SN1(.AA(AAA[3:0]), .BB(BBB[3:0]), .SUMA(RR[3:0]), .Cin(CCIN), .Cs(C1));
SNibble SN2(.AA(AAA[7:4]), .BB(BBB[7:4]), .SUMA(RR[7:4]), .Cin(C1), .Cs(C2));
SNibble SN3(.AA(AAA[11:8]), .BB(BBB[11:8]), .SUMA(RR[11:8]), .Cin(C2), .Cs(C3));
SNibble SN4(.AA(AAA[15:12]), .BB(BBB[15:12]), .SUMA(RR[15:12]), .Cin(C3), .Cs(CCOUT));

endmodule
