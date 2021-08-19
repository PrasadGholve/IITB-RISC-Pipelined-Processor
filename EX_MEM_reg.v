module EX_MEM_reg (clk,npc_ex, alu_result_ex, alu_z_ex, alu_c_ex, reg2data_ex, regdst_ex, pc_ex, imm9_0_pad_ex, 
						npc_mem, alu_result_mem, alu_z_mem, alu_c_mem, reg2data_mem, regdst_mem, pc_mem, imm9_0_pad_mem,
						regwrite_ex,memtoreg_ex,memread_ex,memwrite_ex,branch_ex,pc_regread_ex, aluop_ex, irlast_ex,
						regwrite_mem,memtoreg_mem,memread_mem,memwrite_mem,branch_mem,pc_regread_mem, aluop_mem, irlast_mem);
	
	input clk, alu_z_ex, alu_c_ex;
	input [15:0] npc_ex, alu_result_ex, reg2data_ex, pc_ex;
	input [2:0] regdst_ex;
	input regwrite_ex,memtoreg_ex,memread_ex,memwrite_ex,branch_ex,pc_regread_ex;	
	input [3:0] aluop_ex;
	input [1:0] irlast_ex;
	input [15:0] imm9_0_pad_ex;
	
	output reg alu_z_mem = 1'b0, alu_c_mem = 1'b0;
	output reg [15:0] npc_mem = 16'h0000, alu_result_mem = 16'h0000, reg2data_mem = 16'h0000, pc_mem = 16'h0000;
	output reg [2:0] regdst_mem = 3'b000;
	output reg regwrite_mem = 1'b0,memtoreg_mem = 1'b0,memread_mem = 1'b0,memwrite_mem = 1'b0,branch_mem = 1'b0,pc_regread_mem = 1'b0;
	output reg [3:0] aluop_mem = 4'b0000;
	output reg [1:0] irlast_mem = 2'b00;
	output reg [15:0] imm9_0_pad_mem = 16'h0000;
	
	
	always@(posedge clk)
	begin
	
		npc_mem <= npc_ex;
		pc_mem <= pc_ex;
		alu_result_mem <= alu_result_ex;
		alu_z_mem <= alu_z_ex;
		alu_c_mem <= alu_c_ex;
		reg2data_mem <= reg2data_ex;
		regdst_mem <= regdst_ex;
		imm9_0_pad_mem <= imm9_0_pad_ex;
		
		regwrite_mem <= regwrite_ex;
		memtoreg_mem <= memtoreg_ex;
		memread_mem <= memread_ex;
		memwrite_mem <= memwrite_ex;
		branch_mem <= branch_ex;
		pc_regread_mem <= pc_regread_ex;
		aluop_mem <= aluop_ex;
		irlast_mem <= irlast_ex;
		
	end 
	
endmodule
