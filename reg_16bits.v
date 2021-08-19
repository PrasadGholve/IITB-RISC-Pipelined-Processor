module reg_16bits (clk,Ld, Din, Dout);

	input clk;
	input Ld;
	input [15:0] Din;
	output reg [15:0] Dout = 16'h0000;
	
	always@(negedge clk)
	begin
		
		if(Ld==1) Dout <= Din;		
//		else Dout <= Dout;
		
	end 
	
endmodule 