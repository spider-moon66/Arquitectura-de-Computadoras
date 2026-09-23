
module MUX(
	input [2:0] sel, 
	input [3:0] A, 
	input [3:0] B, 
	input [3:0] C, 
	input [7:0] D, 
	output reg [7:0] salida, 
	output reg en);
	
	wire [7:0] Op1C;
	wire [5:0] Op2C;
	wire [9:0] Op3C;
	wire [13:0] Op4C;
	wire [7:0] Op5C;
	wire [5:0] Op6C;
	
	OP1 modulo1(.A(A), .B(B), .C(C), .S(Op1C));
	OP2 modulo2(.A(A), .C(C), .resultado(Op2C));
	OP3 modulo3(.D(D), .resultado(Op3C));
	OP4 modulo4(.C(C), .D(D), .resultado(Op4C));
	OP5 modulo5(.D(D), .resultado(Op5C));
	OP6 modulo6(.B(B), .C(C), .resultado(Op6C));
	
	always @(*) begin
		case (sel)
			3'b001: begin 
			salida = Op1C;
			en = 1'b1;
			end
			3'b010: begin
			salida = Op2C;
			en = 1'b0;
			end
			3'b011: begin 
			salida = Op3C;
			en = 1'b1;
			end
			3'b100: begin
			salida = Op4C;
			en = 1'b0;
			end
			3'b101: begin
			salida = Op5C;
			en = 1'b0;
			end
			3'b110: begin
			salida = Op6C;
			en = 1'b1;
			end
			default: begin 
			salida = 8'b0;
			en = 1'b0;
			end
	endcase
	end
endmodule