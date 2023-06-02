`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:11:42 06/02/2023
// Design Name:   vedic_mul
// Module Name:   /home/jay711/VERILOG_CODES/PROJECTS/VEDIC_MULTIPLIER/vedic_mul_tb.v
// Project Name:  VEDIC_MULTIPLIER
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: vedic_mul
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module vedic_mul_tb;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;

	// Outputs
	wire [15:0] y;

	// Instantiate the Unit Under Test (UUT)
	vedic_mul uut (
		.a(a), 
		.b(b), 
		.y(y)
	);

	initial begin
		a = 0;
		b = 0;
		#100;
		
		a = 8'd5;
		b = 8'd5;
		#100;
		
		a = 8'd32;
		b = 8'd37;
		#100;
		
		a = 8'd0;
		b = 8'd55;
		#100;
		
		a = 8'd255;
		b = 8'd255;
		#100;
	end
	
	initial begin
	$monitor("time=%g,  a=%d,  b=%d,  output=%d\n",$time,a,b,y);
	#500 $finish;
   end
   
endmodule

