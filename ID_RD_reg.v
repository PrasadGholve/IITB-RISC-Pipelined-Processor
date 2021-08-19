module ID_RD_reg (clk,npc_id, reg1add_id, reg2add_id, reg3add_id, imm6_id, pc_id, imm9_id,
						npc_rd, reg1add_rd, reg2add_rd, reg3add_rd, imm6_rd, pc_rd, imm9_rd,
						regwrite_id,memtoreg_id,memread_id,memwrite_id,branch_id,aluop_id,alusrc_id,regdest_id,pc_regread_id, irlast_id, lhi_reg_id,
						regwrite_rd,memtoreg_rd,memread_rd,memwrite_rd,branch_rd,aluop_rd,alusrc_rd,regdest_rd,pc_regread_rd, irlast_rd, lhi_reg_rd);
	
	input clk;
	input [15:0] npc_id, pc_id;
	input [2:0] reg1add_id, reg2add_id, reg3add_id;
	input regwrite_id,memtoreg_id,memread_id,memwrite_id,branch_id,regdest_id,pc_regread_id, lhi_reg_id;
	input [1:0] alusrc_id, irlast_id;
	input [3:0] aluop_id;
	input [5:0] imm6_id;
	input [8:0] imm9_id;
	
	output reg [3:0] aluop_rd = 4'b0000;
	output reg [15:0] npc_rd = 16'h0000, pc_rd = 16'h0000;
	output reg [2:0] reg1add_rd = 3'b000, reg2add_rd = 3'b000, reg3add_rd = 3'b000;
	output reg regwrite_rd = 1'b0,memtoreg_rd = 1'b0,memread_rd = 1'b0,memwrite_rd = 1'b0,branch_rd = 1'b0,regdest_rd = 1'b0,pc_regread_rd = 1'b0, lhi_reg_rd = 1'b0;
	output reg [1:0] alusrc_rd = 2'b00, irlast_rd = 2'b00;
	output reg [5:0] imm6_rd = 6'b000000;
	output reg [8:0] imm9_rd = 9'b000000000;
	
	always@(posedge clk)
	begin
	
		npc_rd <= npc_id;
		pc_rd <= pc_id;
		reg1add_rd <= reg1add_id;
		reg2add_rd <= reg2add_id;
		reg3add_rd <= reg3add_id;
		imm6_rd <= imm6_id;
		imm9_rd <= imm9_id;
		
		regwrite_rd <= regwrite_id;
		memtoreg_rd <= memtoreg_id;
		memread_rd <= memread_id;
		memwrite_rd <= memwrite_id;
		branch_rd <= branch_id;
		aluop_rd <= aluop_id;
		alusrc_rd <= alusrc_id;
		regdest_rd <= regdest_id;
		pc_regread_rd <= pc_regread_id;
		irlast_rd <= irlast_id;
		lhi_reg_rd <= lhi_reg_id;
		
	end 
	
endmodule
