`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:03:05 03/28/2023
// Design Name:   up_4bit_counter
// Module Name:   /home/jay/VERILOG_CODES/COUNTERS/ASYNC_COUNTER/async_counter_tb.v
// Project Name:  ASYNC_COUNTER
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: up_4bit_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module async_counter_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	up_4bit_counter uut (
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
	$monitor("time=%g clk=%b rst=%b",$time,clk,rst);
	#2000 $finish;
	end
      
endmodule

