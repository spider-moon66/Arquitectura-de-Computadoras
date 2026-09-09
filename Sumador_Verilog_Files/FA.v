
module FA(input A, input B, input Cin, output Cout, output S);

wire c1, c2, c3;

HA Medio1(.A(A), .B(B), .S(c1), .Co(c2));
HA Medio2(.A(c1), .B(Cin), .S(S), .Co(c3));

assign Cout = c2 | c3;

endmodule