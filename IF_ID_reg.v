module IF_ID_reg (clk,ir_if,npc_if,pc_if,ir_id,npc_id,pc_id);
	
	input clk;
	input [15:0] ir_if,npc_if,pc_if;
	
	output reg [15:0] ir_id = 16'h0000,npc_id = 16'h0000, pc_id = 16'h0000;
	
	always@(posedge clk)
	begin
		ir_id <= ir_if;
		npc_id <= npc_if;
		pc_id <= pc_if;
	end 
	
endmodule
