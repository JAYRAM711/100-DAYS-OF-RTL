`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:28:35 04/04/2023
// Design Name:   sync_3bit_updown_counter
// Module Name:   /home/jay711/VERILOG_CODES/COUNTERS/sync_3bit_updown_counter_tb.v
// Project Name:  COUNTERS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sync_3bit_updown_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sync_3bit_updown_counter_tb;

	// Inputs
	reg clk;
	reg rst;
	reg m;

	// Outputs
	wire [2:0] q;
	wire [2:0] qbar;

	// Instantiate the Unit Under Test (UUT)
	sync_3bit_updown_counter uut (
		.clk(clk), 
		.rst(rst), 
		.m(m), 
		.q(q), 
		.qbar(qbar)
	);
	
initial begin
		clk = 1; rst = 1;m=0;
		#50; clk=1; rst=0;m=0;
		#200; clk=1;rst=0;m=1;
		#200;
		
	end
	
	always
	forever #5 clk=~clk;
	
	initial begin
	$monitor("time=%g clk=%b rst=%b m=%b q=%b qbar=%b",$time,clk,rst,m,q,qbar);
	#1000 $finish;
	end
      
endmodule

