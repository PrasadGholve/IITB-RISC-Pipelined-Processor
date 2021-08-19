module mux_8to1 (In0, In1, In2, In3, In4, In5, In6, In7, sel, out);
	
	input [15:0] In0, In1, In2, In3, In4, In5, In6, In7;
	input [2:0] sel;
	output reg [15:0] out;
	
	always@(In0, In1, In2, In3, In4, In5, In6, In7, sel)
	begin
		case (sel)
			3'b000: out <= In0;
			3'b001: out <= In1;
			3'b010: out <= In2;
			3'b011: out <= In3;
			3'b100: out <= In4;
			3'b101: out <= In5;
			3'b110: out <= In6;
			3'b111: out <= In7;
			default: out <= 16'h0000;
		endcase
	end 
	
endmodule 