`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:52:09 03/28/2023
// Design Name:   ripple_up_down_counter
// Module Name:   /home/jay/VERILOG_CODES/COUNTERS/ASYNC_COUNTER/ripple_up_down_counter_tb.v
// Project Name:  ASYNC_COUNTER
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripple_up_down_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ripple_up_down_counter_tb;

	// Inputs
	reg clk;
	reg rst;
	reg mode;

	// Outputs
	wire [3:0] q;
	wire [3:0] qbar;

	// Instantiate the Unit Under Test (UUT)
	ripple_up_down_counter uut (
		.clk(clk), 
		.rst(rst), 
		.mode(mode), 
		.q(q), 
		.qbar(qbar)
	);

	initial begin
		clk = 1; rst = 1;mode=0;
		#50; clk=1; rst=0;mode=0;
		#200; clk=1;rst=0;mode=1;
		#200;
		
	end
	
	always
	forever #5 clk=~clk;
	
	initial begin
	$monitor("time=%g clk=%b rst=%b mode=%b q=%b qbar=%b",$time,clk,rst,mode,q,qbar);
	#1000 $finish;
	end
      
endmodule

