module BBVA(
	input [4:0] ar1,
	input [4:0] ar2,
	input [4:0] aw,
	input we,
	input [3:0] alu_sel,
	output [31:0] alu_out
	);
	
	wire [31:0] dr1;
	wire [31:0] dr2;
	wire [31:0] dw;
	
	BancoRegistros BR(
		.AR1(ar1),
		.AR2(ar2),
		.AW(aw),
		.DW(dw),
		.WE(we),
		.DR1(dr1),
		.DR2(dr2)
		);
	
	MIPSALU ALU(
		.ALUctl(alu_sel),
		.A(dr1),
		.B(dr2),
		.ALUOut(dw) //la salida de ALU se conecta a DATAWRITE y en caso de que esté activado WRITE ENABLE, se escribe en una dirección dada
	);
	
	assign alu_out = dw;
	
endmodule

