module reg_file (clk, regr_add1, regr_add2, regw_add3, pc_write, pc_read, regwrite, wr_data, reg_out1, reg_out2,
						pc_regread_rd);
	
	input  clk,regwrite,pc_regread_rd;
	input [2:0] regr_add1, regr_add2, regw_add3;
	input [15:0] pc_write, wr_data;
	output [15:0] pc_read, reg_out1, reg_out2;
	wire [15:0] Dout0,Dout1,Dout2,Dout3,Dout4,Dout5,Dout6,Dout7;
	wire [15:0] Din0,Din1,Din2,Din3,Din4,Din5,Din6,Din7;
	wire [15:0] LoadDin7;
	
	reg_16bits R0(clk, regwrite, Din0, Dout0);
	reg_16bits R1(clk, regwrite, Din1, Dout1);
	reg_16bits R2(clk, regwrite, Din2, Dout2);
	reg_16bits R3(clk, regwrite, Din3, Dout3);
	reg_16bits R4(clk, regwrite, Din4, Dout4);
	reg_16bits R5(clk, regwrite, Din5, Dout5);
	reg_16bits R6(clk, regwrite, Din6, Dout6);
	reg_16bits R7(clk, (pc_regread_rd || regwrite), LoadDin7, Dout7);
	
	mux_8to1 MUX1 (Dout0, Dout1, Dout2, Dout3, Dout4, Dout5, Dout6, Dout7, regr_add1, reg_out1);
	mux_8to1 MUX2 (Dout0, Dout1, Dout2, Dout3, Dout4, Dout5, Dout6, Dout7, regr_add2, reg_out2);
	
	demux_1to8 DMUX (wr_data, Din0, Din1, Din2, Din3, Din4, Din5, Din6, Din7, regw_add3);
	
	assign LoadDin7 = (regwrite==1'b1) ? ((regw_add3==3'b111) ? Din7 : pc_write) : pc_write; 
	assign pc_read = Dout7;
	
endmodule 