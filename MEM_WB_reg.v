module MEM_WB_reg (clk, alu_result_mem, memrd_data_mem, regdst_mem, pc_mem, imm9_0_pad_mem,
						alu_result_wb, memrd_data_wb, regdst_wb, pc_wb, imm9_0_pad_wb,
						regwrite_mem,memtoreg_mem, prev_cz_mem, cz_mem, aluop_mem, irlast_mem,
						regwrite_wb,memtoreg_wb, prev_cz_wb, cz_wb, aluop_wb, irlast_wb);
	
	input clk;
	input [15:0] memrd_data_mem, pc_mem;
	input [15:0] alu_result_mem;
	input [2:0] regdst_mem;
	input regwrite_mem,memtoreg_mem;	
	input [1:0] prev_cz_mem, cz_mem, irlast_mem;
	input [3:0] aluop_mem;
	input [15:0] imm9_0_pad_mem;
 	
	output reg [15:0] memrd_data_wb = 16'h0000, pc_wb = 16'h0000;
	output reg [15:0] alu_result_wb = 16'h0000;
	output reg [2:0] regdst_wb = 3'b000;
	output reg regwrite_wb = 1'b0,memtoreg_wb = 1'b0;
	output reg [1:0] prev_cz_wb = 2'b00, cz_wb = 2'b00, irlast_wb = 2'b00;
	output reg [3:0] aluop_wb = 4'b0000;
	output reg [15:0] imm9_0_pad_wb = 16'h0000;
	
	
	always@(posedge clk)
	begin
	
		memrd_data_wb <= memrd_data_mem;
		alu_result_wb <= alu_result_mem;
		regdst_wb <= regdst_mem;
		pc_wb <= pc_mem;
		prev_cz_wb <= prev_cz_mem;
		cz_wb <= cz_mem;
		aluop_wb <= aluop_mem;
		imm9_0_pad_wb <= imm9_0_pad_mem;
		
		regwrite_wb <= regwrite_mem;
		memtoreg_wb <= memtoreg_mem;
		irlast_wb <= irlast_mem;
		
	end 
	
endmodule
