/*
	Laboratorio 2: Encender de forma secuenciales los LED de un display de 7 segmentos
*/

module counter_display(clk, rst, out);
	
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
			//Order: point a b c d e f g
			case (mem)
				0: out = 8'b10000000;
				1: out = 8'b11000000;
				2: out = 8'b11100000;
				3: out = 8'b11110000;
				4: out = 8'b11111000;
				5: out = 8'b11111100;
				6: out = 8'b11111110;
				7: out = 8'b11111111;
			endcase
		end

endmodule
