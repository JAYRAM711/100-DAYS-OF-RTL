`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:43:16 04/05/2023
// Design Name:   ring_counter
// Module Name:   /home/jay711/VERILOG_CODES/COUNTERS/ring_counter_tb.v
// Project Name:  COUNTERS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ring_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ring_counter_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	ring_counter uut (
		.clk(clk), 
		.rst(rst), 
		.q(q)
	);

initial begin
		clk = 1; rst = 1;
		#10; clk=1; rst=0;
	end
	
	always
	forever #5 clk=~clk;
	
	initial begin
	$monitor("time=%g clk=%b rst=%b count=%b",$time,clk,rst,q);
	#2000 $finish;
	end
	
endmodule

