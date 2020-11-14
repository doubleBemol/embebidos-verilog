module contadorCien(clk, rst, i5, i7, i9, out_unit, out_dec);
	input clk, rst, i5, i7, i9;
	reg [3:0] inner_values;
	output reg [7:0] out_unit;
	output reg [7:0] out_dec;
	reg [9999:0] mem_unit;
	reg [9999:0] mem_dec;
	
	parameter = START=2b'0, PAUSE=2b'1, REVERSE=2b'11
	
	always @(posedge clk)
		if (rst == 1 ) begin
			mem_unit = 0;
			mem_dec = 0;
		end
		else begin
			mem_unit = mem_unit + 1;
			if (mem_unit == 9) begin
				mem_dec = mem_dec + 1;
				mem_unit = 0;
			end 
			if (mem_dec == 9)
				mem_dec = 0;
		end
	
	always @(mem_unit)
		case(mem_unit)
			0: out_unit = 8'b01111110;
			1: out_unit = 8'b00110000;
			2: out_unit = 8'b01101101;
			3: out_unit = 8'b01111001;
			4: out_unit = 8'b00110011;
			5: out_unit = 8'b01011011;
			6: out_unit = 8'b01011110;
			7: out_unit = 8'b01110001;
			8: out_unit = 8'b01111111;
			9: out_unit = 8'b01110011;
		endcase
	
	always @(mem_dec)
		case(mem_dec)
			0: out_dec = 8'b01111110;
			1: out_dec = 8'b00110000;
			2: out_dec = 8'b01101101;
			3: out_dec = 8'b01111001;
			4: out_dec = 8'b00110011;
			5: out_dec = 8'b01011011;
			6: out_dec = 8'b01011110;
			7: out_dec = 8'b01110001;
			8: out_dec = 8'b01111111;
			9: out_dec = 8'b01110011;
		endcase

endmodule
