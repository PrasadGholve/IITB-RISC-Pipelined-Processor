module mux_2to1 (Din_1,Din_2,Dout,sel);
	
	input [15:0] Din_1,Din_2;
	input sel;
	output [15:0] Dout;
	
	assign Dout <= sel ? Din_2 : Din_1;
	
endmodule 