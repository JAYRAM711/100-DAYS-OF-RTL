`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:06:24 03/05/2023
// Design Name:   RCA
// Module Name:   /home/jay/VERILOG_CODES/RIPPLECARRY_ADDER/RCA_TB.v
// Project Name:  RIPPLECARRY_ADDER
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RCA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RCA_TB;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;
	// Outputs
	wire [3:0] s;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	RCA uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.s(s), 
		.cout(cout)
	);

initial begin

		a = 4'b0000;b = 4'b0000;cin=0;
		#100; a = 4'b0001;b = 4'b0001;cin=1;
		#100; a = 4'b1000;b = 4'b1000;cin=0;
	   #100; a = 4'b1111;b = 4'b1111;cin=1;
	end
initial #400 $finish;
	
endmodule

