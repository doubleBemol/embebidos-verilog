/*
	Laboratorio 1: Encender y apagar LED
	Equipo 3 FPGA
*/

module blink_led(clk, out);
	output reg  out;
	input clk;
	
	
	always @(posedge clk)
		begin
			if (out == 0)
				out = 1;
			else
				out = 0;
		end
endmodule
				
			
	
