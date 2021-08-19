module regwrite_cntrl (irlast_wb, prev_cz_wb, aluop_wb, regwrite_wb, regwrite_wb_final);

	input [1:0] prev_cz_wb, irlast_wb;
	input [3:0] aluop_wb;
	input regwrite_wb;
	
	output reg regwrite_wb_final = 1'b0;
	
	always@(*)
	begin
		
		case (aluop_wb)
			4'b0010, 4'b0000 : 
				begin
					if ((irlast_wb == 2'b01) & (prev_cz_wb[0] == 1'b1))
						regwrite_wb_final = regwrite_wb;
					else if ((irlast_wb == 2'b10) & (prev_cz_wb[1] == 1'b1))
						regwrite_wb_final = regwrite_wb;
					else if ((irlast_wb == 2'b00))
						regwrite_wb_final = regwrite_wb;
					else
						regwrite_wb_final = 1'b0;
				end
			4'b0100, 4'b0001 : regwrite_wb_final = regwrite_wb;
			default : regwrite_wb_final = 1'b0;
		endcase
		
	end
	
endmodule 