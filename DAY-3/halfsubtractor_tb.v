`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:35:45 02/24/2023
// Design Name:   halfsubtractor_df
// Module Name:   /home/jay/VERILOG_CODES/HALF_SUBTRACTOR/halfsubtractor/halfsubtractor_tb.v
// Project Name:  halfsubtractor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: halfsubtractor_df
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module halfsubtractor_tb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire d;
	wire bout;

	// Instantiate the Unit Under Test (UUT)
	halfsubtractor_df uut (
		.a(a), 
		.b(b), 
		.d(d), 
		.bout(bout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		#100;
		
		a = 0;
		b = 1;
		#100;	
		
		a = 1;
		b = 0;
		#100;		
		
		a = 1;
		b = 1;
		#100;	
		$stop;
		
		


	end
      
endmodule

