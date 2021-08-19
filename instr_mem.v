module instr_mem(inst_addr,inst_out);
//	input clk;
	input [15:0] inst_addr;
	output reg [15:0] inst_out;
	
	reg [15:0] instrmem[4095:0];
	
	initial
	begin 
//		$readmemb("D:\\VHDL_Programs\\Processor\\pipeline_processor\\Memory\\instr_mem.mem", instrmem);
		$readmemb("D:/VHDL_Programs/Processor/pipeline_processor/Memory/binary_instr_mem.txt", instrmem);
	end 
	
	always@(*)
	begin
		inst_out = instrmem[inst_addr]; 
	end
	
endmodule 