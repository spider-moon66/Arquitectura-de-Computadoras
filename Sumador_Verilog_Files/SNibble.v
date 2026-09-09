
module SNibble(
	input Cin,
	input [3:0] AA,
	input [3:0] BB,
	output [3:0] SUMA,
	output Cs
);

wire c1, c2, c3;

FA FA1(.A(AA[0]), .B(BB[0]), .S(SUMA[0]), .Cout(c1), .Cin(Cin));
FA FA2(.A(AA[1]), .B(BB[1]), .S(SUMA[1]), .Cout(c2), .Cin(c1));
FA FA3(.A(AA[2]), .B(BB[2]), .S(SUMA[2]), .Cout(c3), .Cin(c2));
FA FA4(.A(AA[3]), .B(BB[3]), .S(SUMA[3]), .Cout(Cs), .Cin(c3));

endmodule