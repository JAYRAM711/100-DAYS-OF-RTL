`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:31:49 06/06/2023
// Design Name:   barrel_shifter
// Module Name:   /home/jay711/VERILOG_CODES/PROJECTS/barrel_shifter/barrel_shifter_tb.v
// Project Name:  barrel_shifter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: barrel_shifter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module barrel_shifter_tb;

	// Inputs
	reg [7:0] a;
	reg RR;
	reg RL;
	reg [2:0] range;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	barrel_shifter uut (
		.a(a),
      .RR(RR),		
		.RL(RL),
		.range(range), 
		.out(out)
	);

	initial begin
	RR=1'b1;
	RL=1'b0;
		a = 8'b0011_0111;
		range = 5;
		#100;
		
		range = 0;
		#100;
		
		range = 7;
		#100;
	
   RR=1'b0;	
   RL=1'b1;
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
	#600 $finish;
	end
      
endmodule

