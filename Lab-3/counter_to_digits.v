/*
	Laboratorio 3: Generación de Caracteres a 7 Segmentos
	Escribir en el display del 0 a la F (hex) usando un clk para cambiar de letra.
*/

module counter_to_digits(clk, rst, out);
	
	input clk, rst;
	output reg [7:0] out;
	reg [2:0] mem;
	
	always @(posedge clk)
		begin
			if (rst == 1)
				mem = 0;
			else
				mem = mem + 1;
		end
	
	always @(mem)
		begin
			case (mem)
				0: out = 8'b01111110;
				1: out = 8'b00110000;
				2: out = 8'b01101101;
				3: out = 8'b01111001;
				4: out = 8'b00110011;
				5: out = 8'b01011011;
				6: out = 8'b01011110;
				7: out = 8'b01110001;
				8: out = 8'b01111111;
				9: out = 8'b01110011;
				10: out = 8'b01110111;
				11: out = 8'b00011111;
				12: out = 8'b01001110;
				13: out = 8'b00111101;
				14: out = 8'b01001111;
				15: out = 8'b01000111;
			endcase
		end
		
endmodule
				
