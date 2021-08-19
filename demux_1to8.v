module demux_1to8 (In, out0, out1, out2, out3, out4, out5, out6, out7, sel);
	
	input [15:0] In;
	input [2:0] sel;
	output reg [15:0] out0, out1, out2, out3, out4, out5, out6, out7;
	
	always@(In, sel)
	begin
		case (sel)
			3'b000: out0 <= In;
			3'b001: out1 <= In;
			3'b010: out2 <= In;
			3'b011: out3 <= In;
			3'b100: out4 <= In;
			3'b101: out5 <= In;
			3'b110: out6 <= In;
			3'b111: out7 <= In;
			default: out7 <= 16'h0000;
		endcase 
	end 
	
endmodule 