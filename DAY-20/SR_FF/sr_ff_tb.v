`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:32:36 03/14/2023
// Design Name:   sr_ff
// Module Name:   /home/jay/VERILOG_CODES/FLIPFLOPS/sr_ff_tb.v
// Project Name:  FLIPFLOPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sr_ff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sr_ff_tb;

	// Inputs
	reg s;
	reg r;
	reg clk;

	// Outputs
	wire q;
	wire qbar;

	// Instantiate the Unit Under Test (UUT)
	sr_ff uut (
		.s(s), 
		.r(r), 
		.clk(clk), 
		.q(q), 
		.qbar(qbar)
	);
   initial begin
	clk=1;
	forever #50 clk=~clk;
	end

	initial begin
	s=0; r=0;
	#100; s=0; r=1;
	#100; s=1; r=0;
	#100; s=1; r=1;
	end
	
	initial begin
	$monitor("time=%g clk=%b s=%b r=%b q=%b qbar=%b",$time,clk,s,r,q,qbar);
	#400 $finish;
	end   
endmodule

