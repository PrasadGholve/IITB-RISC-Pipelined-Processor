module ALU_PC (opr1,opr2,result);
	
	input [15:0] opr1,opr2;
	output reg [15:0] result;
		
	always@(*)
	begin

		result = opr1+opr2;
		
	end
	
endmodule
