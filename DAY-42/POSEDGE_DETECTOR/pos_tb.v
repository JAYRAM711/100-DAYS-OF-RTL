`timescale 1ns / 1ps

module pos_tb;

	// Inputs
	reg clk;
	reg sig;

	// Outputs
	wire out;
	// Instantiate the Unit Under Test (UUT)
	pos_edge_dec uut (
		.clk(clk), 
		.sig(sig), 
		.out(out)
	);

	initial begin
		clk = 0;
		sig = 0;
		#10; sig = 1;
		#10; sig = 0;
		#10; sig = 1;
		#10; $finish;
	end
	
	always 
	#5 clk= ~clk;
      
endmodule

