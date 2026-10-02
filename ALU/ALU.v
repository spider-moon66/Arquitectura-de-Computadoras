module ALUX32(
	input [31:0] a,
	input [31:0] b,
	input [3:0] control, 
	output reg [31:0] resultado,
	output zero);
	
	assign zero = (resultado == 32'b0);
	
	always @(*) begin
		resultado = 32'b0;
		
		case(control)
			4'b0000: begin
				resultado = a & b; //AND
			end
			4'b0001: begin
				resultado = a | b; //OR
			end
			4'b0010: begin
				resultado = a + b; //ADD
			end
			4'b0110: begin
				resultado = a - b; //SUB
			end
			4'b0111: begin
				resultado = (a < b) ? 32'b1 : 32'b0; //SLT
			end
			4'b1100: begin
				resultado = ~(a | b); //NOR
			end
			4'b0011: begin
				resultado = a ^ b; //XOR
			end
		endcase
	end
endmodule
