`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:09:11 03/04/2023
// Design Name:   clock_divider
// Module Name:   /home/jay/VERILOG_CODES/CLOCK_DIVIDER/clock_divider/clk_divider_tb.v
// Project Name:  clock_divider
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clock_divider
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module clk_divider_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire divideby2;
	wire divideby4;
	wire divideby8;
	wire divideby16;
	wire divideby32;

	// Instantiate the Unit Under Test (UUT)
	clock_divider uut (
		.clk(clk), 
		.rst(rst), 
		.divideby2(divideby2), 
		.divideby4(divideby4), 
		.divideby8(divideby8), 
		.divideby16(divideby16), 
		.divideby32(divideby32)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		end
always
#10 clk=~clk;

initial
#1000 $finish;

      
endmodule

