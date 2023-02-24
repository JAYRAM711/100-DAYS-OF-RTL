`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:41:03 02/24/2023
// Design Name:   fullsubtractor_df
// Module Name:   /home/jay/VERILOG_CODES/FULL_SUBTRACTOR/fullsubtractor/fullsubtractor_tb.v
// Project Name:  fullsubtractor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fullsubtractor_df
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fullsubtractor_tb;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire d;
	wire bout;

	// Instantiate the Unit Under Test (UUT)
	fullsubtractor_df uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.bout(bout)
	);

	initial begin
		// Initialize Inputs
		a = 0;b = 0;c = 0;#100;
		a = 0;b = 0;c = 1;#100;
		a = 0;b = 1;c = 0;#100;
		a = 0;b = 1;c = 1;#100;
		a = 1;b = 0;c = 0;#100;
		a = 1;b = 0;c = 1;#100;
		a = 1;b = 1;c = 0;#100;
		a = 1;b = 1;c = 1;#100;


	end
      
endmodule

