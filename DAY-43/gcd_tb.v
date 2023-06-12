`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:43:37 06/12/2023
// Design Name:   gcd_beh
// Module Name:   /home/jay711/VERILOG_CODES/PROJECTS/GCD/gcd_tb.v
// Project Name:  GCD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: gcd_beh
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module gcd_tb;

	// Inputs
	reg [7:0] Ain;
	reg [7:0] Bin;

	// Outputs
	wire [7:0] GCD;

	// Instantiate the Unit Under Test (UUT)
	gcd_beh uut (
		.Ain(Ain), 
		.Bin(Bin), 
		.GCD(GCD)
	);

	initial begin
		Ain = 32; Bin = 37; #100;
		Ain = 12; Bin = 16; #100;
		Ain = 05; Bin = 55; #100;
		$finish;
	end
	
	initial
	$monitor("Ain=%d, Bin=%d, GCD=%d",Ain,Bin,GCD);
      
endmodule

