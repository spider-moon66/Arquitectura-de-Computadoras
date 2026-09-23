`timescale 1ns/1ns

module MUX_TB;
	reg [3:0] A;
	reg [3:0] B;
	reg [3:0] C;
	reg [7:0] D;
	reg [2:0] sel_tb;
	wire [7:0] salida_tb;
	wire en_tb;
	
	MUX MUX61_DUT(
		.A(A),
		.B(B),
		.C(C),
		.D(D),
		.salida(salida_tb),
		.sel(sel_tb),
		.en(en_tb)
	);
	
	initial begin
		A = 4'b0101;
		B = 4'b0011;
		C = 4'b1001;
		D = 8'b00001111;
		
		sel_tb = 3'b001;
		#100
		sel_tb = 3'b010;
		#100
		sel_tb = 3'b011;
		#100
		sel_tb = 3'b100;
		#100
		sel_tb = 3'b101;
		#100
		sel_tb = 3'b110;
		#100
		sel_tb = 3'b000;
		#100
		sel_tb = 3'b111;
		$stop;
	end

	
endmodule

