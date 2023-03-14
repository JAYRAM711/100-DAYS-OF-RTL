`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:24:01 03/14/2023
// Design Name:   jk_ff
// Module Name:   /home/jay/VERILOG_CODES/FLIPFLOPS/jk_ff_tb.v
// Project Name:  FLIPFLOPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: jk_ff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module jk_ff_tb;

	// Inputs
	reg j;
	reg k;
	reg clk;

	// Outputs
	wire q;
	wire qbar;

	// Instantiate the Unit Under Test (UUT)
	jk_ff uut (
		.j(j), 
		.k(k), 
		.clk(clk), 
		.q(q), 
		.qbar(qbar)
	);

   initial begin
	clk=1;
	forever #50 clk=~clk;
	end

	initial begin
	j=0; k=0;
	#100; j=0; k=1;
	#100; j=1; k=0;
	#100; j=1; k=1;
	end
	
	initial begin
	$monitor("time=%g clk=%b j=%b k=%b q=%b qbar=%b",$time,clk,j,k,q,qbar);
	#400 $finish;
	end   
      
endmodule

