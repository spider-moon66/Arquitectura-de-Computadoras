
`timescale 1ns/1ns

module ALU_TB();
	reg [31:0] a_tb;
	reg [31:0] b_tb;
	reg [3:0] control_tb;
	wire [31:0] resultado_tb;
	wire zero_tb;
	
	ALUX32 ALU_DUT(
		.a(a_tb), 
		.b(b_tb), 
		.control(control_tb), 
		.resultado(resultado_tb), 
		.zero(zero_tb));
	
	initial begin
		//AND
		control_tb = 4'b0000;//1 esperado
		a_tb = 32'b1;
		b_tb = 32'b1;
		#100
		control_tb = 4'b0000;//0 esperado
		a_tb = 32'b0;
		b_tb = 32'b1;
		#100
		//OR
		control_tb = 4'b0001;//1 esperado
		a_tb = 32'b001;
		b_tb = 32'b000;
		#100
		control_tb = 4'b0001;//0 esperado
		a_tb = 32'b000;
		b_tb = 32'b000;
		#100
		//ADD
		control_tb = 4'b0010;//4 esperado
		a_tb = 32'b01;
		b_tb = 32'b011;
		#100
		control_tb = 4'b0010;
		a_tb = 32'b11111111111111111;
		b_tb = 32'b11111100111111011;
		#100
		control_tb = 4'b0010;
		a_tb = 32'b01;
		b_tb = 32'b011;
		#100
		//SUB
		control_tb = 4'b0110;//1 esperado
		a_tb = 32'b011;
		b_tb = 32'b01;
		#100
		control_tb = 4'b0110;//4 esperado
		a_tb = 32'b1001;
		b_tb = 32'b0101;
		#100
		control_tb = 4'b0110;//0 esperado
		a_tb = 32'b011;
		b_tb = 32'b011;
		#100
		//SLT
		control_tb = 4'b0111;//1 esperado
		a_tb = 32'b1011;
		b_tb = 32'b1011;
		#100
		control_tb = 4'b0111;//0 esperado
		a_tb = 32'b1010;
		b_tb = 32'b0110;
		#100
		control_tb = 4'b0111;//1 esperado
		a_tb = 32'b1010;
		b_tb = 32'b1010;
		#100
		//NOR
		control_tb = 4'b1100;//1 esperado
		a_tb = 32'b0;
		b_tb = 32'b0;
		#100
		control_tb = 4'b1100;//0 esperado
		a_tb = 32'b1;
		b_tb = 32'b0;
		#100
		control_tb = 4'b1100;//0 esperado
		a_tb = 32'b1;
		b_tb = 32'b1;
		#100
		//XOR
		control_tb = 4'b0011;//0 esperado
		a_tb = 32'b0;
		b_tb = 32'b0;
		#100
		control_tb = 4'b0011;//0 esperado
		a_tb = 32'b1;
		b_tb = 32'b1;
		#100
		control_tb = 4'b0011;//1 esperado
		a_tb = 32'b0;
		b_tb = 32'b1;
		#100
		$stop;
	end
endmodule
