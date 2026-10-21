
`timescale 1ns/1ns

module BBVA_TB;
	reg [18:0]comando;
	reg we_tb;
	wire [31:0] wDD;
	
	BBVA BRALU(
		.ar1(comando[14:10]),
		.ar2(comando[9:5]),
		.aw(comando[4:0]),
		.we(we_tb),
		.alu_sel(comando[18:15]),
		.alu_out(wDD)
	);
	
	initial begin
		we_tb = 1'd0;
		comando = 19'b0010000000000100000;//Sumar
		#100
		comando = 19'b0000000000000100000;//AND
		#100
		comando = 19'b0001000110010000000;//OR
		#100
		we_tb = 1'd1;
		comando = 19'b0110001010000000111;//Restar y escribir en la dirección 7
		#100
		$stop;
	end
	
	
endmodule