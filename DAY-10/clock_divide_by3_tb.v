`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:04:09 03/05/2023
// Design Name:   clk_div_by3
// Module Name:   /home/jay/VERILOG_CODES/CLOCK_DIVIDER/clock_divide_by3/clock_divide_by3_tb.v
// Project Name:  clock_divide_by3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clk_div_by3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module clock_divide_by3_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire clkout;
	wire q0;
	wire q1;
	wire q2;

	// Instantiate the Unit Under Test (UUT)
	clk_div_by3 uut (
		.clk(clk), 
		.rst(rst), 
		.clkout(clkout), 
		.q0(q0), 
		.q1(q1), 
		.q2(q2)
	);

	initial begin
	clk = 0;
		rst = 0;
	end
	
	always
	#100 clk=~clk;
      
endmodule

