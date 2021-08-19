module alu_control (input [3:0] opcode, output reg [1:0] alu_cntrl);

	always@(*)
	begin
		case (opcode)
			4'b0001, 4'b0100, 4'b0000 : alu_cntrl = 2'b01;
			4'b0010 : alu_cntrl = 2'b10;
			default : alu_cntrl = 2'b00;
		endcase
	end

endmodule 