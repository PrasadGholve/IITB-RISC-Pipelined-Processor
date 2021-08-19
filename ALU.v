module ALU (alu_cntrl,opr1,opr2,result,z_flg);
	
	input [15:0] opr1,opr2;
	input [1:0] alu_cntrl;
	output reg [16:0] result = 17'b00000000000000000;
	output reg z_flg = 1'b0;
	
	assign z_flg = ~(|result[15:0]);
	
	always@(*)
	begin
		case (alu_cntrl)
			2'b00		: result = 17'b00000000000000000;
			2'b01		: result = opr1+opr2;
			2'b10		: result = {1'b0,~(opr1 & opr2)};
			2'b11		: result = opr1 - opr2;
			default	: result = 17'b00000000000000000;
		endcase
	end
	
endmodule
