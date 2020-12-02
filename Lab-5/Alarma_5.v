module Alarma_5(MR,clk,BD,BW1,BW2,LD,LW1,LW2,LA);

	input clk,MR,BD,BW1,BW2;
	output reg [1:0] LA;
	output reg [1:0] LD;
	output reg [1:0] LW1;
	output reg [1:0] LW2;
	
	always @(posedge clk,MR)
		begin 
			if (MR==1 &&  (BD==1 || BW1==1 || BW2==1))
				begin
					LA=LA+1;
				end
			if (BD==1)
				LD=1;
			else 
				LD=0;
				
			if (BW1==1)
				LW1=1;
			else  
				LW1=0;
				
			if (BW2==1)
				LW2=1;
			else  
				LW2=0;		
		end
endmodule 