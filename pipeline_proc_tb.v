module pipeline_proc_tb;
	
	reg clk, reset_n;
	integer k,i;
	datapath_proc dut(clk, resetn);
	
	always #5 clk = ~clk;
	
	initial
	begin
		clk = 0; reset_n =0; 
		dut.regfile.R0.Dout = 16'h0000;
		dut.regfile.R1.Dout = 16'h0000;
		dut.regfile.R2.Dout = 16'h0000;
		dut.regfile.R3.Dout = 16'h0000;
		dut.regfile.R4.Dout = 16'h0000;
		dut.regfile.R5.Dout = 16'h0000;
		dut.regfile.R6.Dout = 16'h0000;
		dut.regfile.R7.Dout = 16'h0000;
//		dut.PC_WRITE = 16'h0000;
		#3 reset_n = 1;
		#5000 $finish;
	end
	
	initial 
	   begin
		 for (k=0; k<10; k=k+1)
			$display ("Inst_MEM%1d - %2d", k, dut.instrmem_dut.instrmem[k]);
		 end

		 	initial 
	   begin
		 for (i=0; i<10; i=i+1)
			$display ("Data_MEM%1d - %2d", i, dut.datamem_dut.datamem[i]);
		 end
		
		 	initial 
	   begin
			$monitor ("Reg0 - %1d |:| ", dut.regfile.R0.Dout,"Reg1 - %1d |:| ", dut.regfile.R1.Dout,"Reg2 - %1d |:| ", dut.regfile.R2.Dout,
							"Reg3 - %1d |:| ", dut.regfile.R3.Dout, "Reg4 - %1d |:| ", dut.regfile.R4.Dout, "Reg5 - %1d |:| ", dut.regfile.R5.Dout,
							"Reg6 - %1d |:| ", dut.regfile.R6.Dout, "Reg7 - %1d", dut.regfile.R7.Dout);
		 end
	
endmodule 