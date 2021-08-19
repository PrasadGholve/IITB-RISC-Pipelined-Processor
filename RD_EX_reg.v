module RD_EX_reg (clk,npc_rd, reg1data_rd, reg2data_rd, imm6_rd, regdst_rd, pc_rd, imm9_rd,
						npc_ex, reg1data_ex, reg2data_ex, imm6_ex, regdst_ex, pc_ex, imm9_ex,
						regwrite_rd,memtoreg_rd,memread_rd,memwrite_rd,branch_rd,aluop_rd,alusrc_rd,pc_regread_rd, irlast_rd, lhi_reg_rd,
						regwrite_ex,memtoreg_ex,memread_ex,memwrite_ex,branch_ex,aluop_ex,alusrc_ex,pc_regread_ex, irlast_ex, lhi_reg_ex);
	
	input clk;
	input [15:0] npc_rd, pc_rd;
	input [15:0] reg1data_rd, reg2data_rd;
	input [15:0] imm6_rd;
	input [2:0] regdst_rd;
	input regwrite_rd,memtoreg_rd,memread_rd,memwrite_rd,branch_rd,pc_regread_rd, lhi_reg_rd;
	input [1:0] alusrc_rd, irlast_rd;
	input [3:0] aluop_rd;
	input [8:0] imm9_rd;
	
	
	output reg [15:0] npc_ex = 16'h0000, pc_ex = 16'h0000;
	output reg [15:0] reg1data_ex = 16'h0000, reg2data_ex = 16'h0000;
	output reg [15:0] imm6_ex = 16'h0000;
	output reg [2:0] regdst_ex = 3'b000;
	output reg regwrite_ex = 1'b0,memtoreg_ex = 1'b0,memread_ex = 1'b0,memwrite_ex = 1'b0,branch_ex = 1'b0,pc_regread_ex = 1'b0, lhi_reg_ex = 1'b0;
	output reg [1:0] alusrc_ex = 2'b00, irlast_ex = 2'b00;
	output reg [3:0] aluop_ex  = 3'b000;
	output reg [8:0] imm9_ex = 9'b000000000;
	
	
	always@(posedge clk)
	begin
	
		npc_ex <= npc_rd;
		pc_ex <= pc_rd;
		reg1data_ex <= reg1data_rd;
		reg2data_ex <= reg2data_rd;
		imm6_ex <= imm6_rd;
		regdst_ex <= regdst_rd;
		
		regwrite_ex <= regwrite_rd;
		memtoreg_ex <= memtoreg_rd;
		memread_ex <= memread_rd;
		memwrite_ex <= memwrite_rd;
		branch_ex <= branch_rd;
		aluop_ex <= aluop_rd;
		alusrc_ex <= alusrc_rd;
		pc_regread_ex <= pc_regread_rd;
		irlast_ex <= irlast_rd;
		lhi_reg_ex <= lhi_reg_rd;
		
	end 
	
endmodule
