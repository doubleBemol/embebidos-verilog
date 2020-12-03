module alarm(clk, alm_btn, win1_btn, win2_btn, door_btn, alm, win1, win2, door);
	
	input clk, alm_btn, win1_btn, win2_btn, door_btn;
	output reg alm, win1, win2, door;
	reg flag = 0;
	
	always @(posedge clk)
	begin
		if (alm_btn == 1)
		begin
			if (win1_btn == 1)
			begin
				win1 = win1_btn;
				flag = 1;
			end
			else 
				win1 = 0;
			if (win2_btn == 1)
			begin
				win2 = win2_btn;
				flag = 1;
			end
			else
				win2 = 0;
			if (door_btn == 1)
			begin
				door = door_btn;
				flag = 1;
			end
			else
				door = 0;
			if (flag == 1)
				alm <= alm + 1;
		end
		else
		begin
			alm <= 0;
			win1 <= 0;
			win2 <= 0;
			door <= 0;
			flag = 0;
		end
	end
endmodule
