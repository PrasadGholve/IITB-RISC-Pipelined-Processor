module data_mem(MemWrite,MemRead,Addr,Din,Dout);
	
	input MemWrite,MemRead;
	input [15:0] Addr,Din;
	output reg [15:0] Dout;
	
	reg [15:0] datamem[4095:0];
	
	initial
	begin 
		$readmemb("D:\\VHDL_Programs\\Processor\\pipeline_processor\\Memory\\data_mem.mem", datamem);
	end 
	
	always@(*)
	begin
		if ((MemRead == 1'b1) && (MemWrite == 1'b0))	Dout = datamem[Addr]; 
		else if((MemRead == 1'b0) && (MemWrite == 1'b1))	datamem[Addr] = Din;
		else if((MemRead == 1'b1) && (MemWrite == 1'b1))
		begin
			Dout = datamem[Addr]; 
			datamem[Addr] = Din;
		end
	end
	
endmodule 