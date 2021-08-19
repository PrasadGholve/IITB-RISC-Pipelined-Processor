module controller (ir_id,regwrite_id,memtoreg_id,memread_id,memwrite_id,branch_id,aluop_id,alusrc_id,
						regdest_id, pc_regread_id, irlast_id, lhi_reg_id);
	
	input [15:0] ir_id;
	output reg regwrite_id = 1'b0,memtoreg_id = 1'b0,memread_id = 1'b0,memwrite_id = 1'b0,branch_id = 1'b0, regdest_id = 1'b0, pc_regread_id = 1'b0, lhi_reg_id = 1'b0;
	output reg [1:0] alusrc_id = 2'b00, irlast_id = 2'b00;
	output reg [3:0] aluop_id  = 4'b0000;
	
	always@(*)
	begin
	
		case (ir_id[15:12])
			4'b0000 : 
			begin
				regwrite_id=1'b1; memtoreg_id=1'b0; memread_id=1'b0; 
				memwrite_id=1'b0; branch_id=1'b0; aluop_id=ir_id[15:12]; alusrc_id=2'b00; 
				regdest_id=1'b0; pc_regread_id = 1'b1; irlast_id = ir_id[1:0]; lhi_reg_id = 1'b0;
			end
			4'b0001 : 
			begin
				regwrite_id=1'b1; memtoreg_id=1'b0; memread_id=1'b0; 
				memwrite_id=1'b0; branch_id=1'b0; aluop_id=ir_id[15:12]; alusrc_id=2'b10; 
				regdest_id=1'b1; pc_regread_id = 1'b1; irlast_id = ir_id[1:0]; lhi_reg_id = 1'b0;
			end
			4'b0010 : 
			begin
				regwrite_id=1'b1; memtoreg_id=1'b0; memread_id=1'b0; 
				memwrite_id=1'b0; branch_id=1'b0; aluop_id=ir_id[15:12]; alusrc_id=2'b00; 
				regdest_id=1'b0; pc_regread_id = 1'b1; irlast_id = ir_id[1:0]; lhi_reg_id = 1'b0;
			end
			4'b0011 : 
			begin
				regwrite_id=1'b1; memtoreg_id=1'b0; memread_id=1'b0; 
				memwrite_id=1'b0; branch_id=1'b0; aluop_id=ir_id[15:12]; alusrc_id=2'b00; 
				regdest_id=1'b0; pc_regread_id = 1'b1; irlast_id = ir_id[1:0]; lhi_reg_id = 1'b1;
			end
			4'b0100 : 
			begin
				regwrite_id=1'b1; memtoreg_id=1'b1; memread_id=1'b1; 
				memwrite_id=1'b0; branch_id=1'b0; aluop_id=ir_id[15:12]; alusrc_id=2'b10; 
				regdest_id=1'b1; pc_regread_id = 1'b1; irlast_id = ir_id[1:0]; lhi_reg_id = 1'b0;
			end
			default: 
			begin
				regwrite_id=1'b0; memtoreg_id=1'b0; memread_id=1'b0; 
				memwrite_id=1'b0; branch_id=1'b0; aluop_id=ir_id[15:12]; alusrc_id=2'b00; 
				regdest_id=1'b0; pc_regread_id = 1'b1; irlast_id = ir_id[1:0]; lhi_reg_id = 1'b0;
			end
		endcase
	
	end
	
endmodule 