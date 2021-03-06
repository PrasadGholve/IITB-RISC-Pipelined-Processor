module reg_file_tb;

	reg clk;
	reg [2:0] A1, A2, A3;
	wire [15:0] D1, D2;
	reg [15:0] D3;
	
	reg_file regfile(clk, A1, A2, A3, D3, D1, D2);

	always #5 clk = ~clk;
	
	initial
	begin
		
		clk <= 1'b0;
		#3 A3 <= 3'b000;
		#10 D3 <= 16'hAAAA;
		#10 A3 <= 3'b100;
		#10 D3 <= 3'b001;
		#10 A3 <= 3'b110;
		#10 D3 <= 3'b101;
		#10 A3 <= 3'b010;
		#10 D3 <= 3'b111;
		#10 A2 <= 3'b100;
		#10 A1 <= 3'b000;
		#30 $finish;
		
	end
	
	initial
	begin
		$monitor ($time, " - D1 - %b, D2 - %b", D1, D2);
	end
	
endmodule 