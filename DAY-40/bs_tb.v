`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:34:29 06/06/2023
// Design Name:   barrel_shifter_
// Module Name:   /home/jay711/VERILOG_CODES/PROJECTS/barrel_shifter/bs_tb.v
// Project Name:  barrel_shifter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: barrel_shifter_
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bs_tb;

	// Inputs
	reg [7:0] a;
	reg [2:0] range;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	barrel_shifter_ uut (
		.a(a), 
		.range(range), 
		.out(out)
	);

		initial begin
		a = 8'b0011_0111;
		range = 5;
		#100;
		
		range = 0;
		#100;
		
		range = 7;
		#100;
	
	end
	
	initial begin
	$monitor("time=%g, range=%b, a=%b, out=%b\n",$time,range,a,out);
	#300 $finish;
	end
      
endmodule

