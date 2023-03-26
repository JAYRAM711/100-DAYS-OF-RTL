`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:35:51 03/26/2023
// Design Name:   universal_shift_reg
// Module Name:   /home/jay/VERILOG_CODES/SHIFT_REGISTERS/universal_shift_reg_tb.v
// Project Name:  shift_registers
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: universal_shift_reg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module universal_shift_reg_tb;

	// Inputs
	reg [3:0] p_in;
	reg s_right_in;
	reg s_left_in;
	reg clk;
	reg rst;
	reg [1:0] sel;

	// Outputs
	wire [3:0] p_out;
	wire s_right_out;
	wire s_left_out;

	// Instantiate the Unit Under Test (UUT)
	universal_shift_reg uut (
		.p_in(p_in), 
		.p_out(p_out), 
		.s_right_in(s_right_in), 
		.s_right_out(s_right_out), 
		.s_left_in(s_left_in), 
		.s_left_out(s_left_out), 
		.clk(clk), 
		.rst(rst), 
		.sel(sel)
	);

	initial begin
      clk <= 1;
		rst <= 1;
		#10;
		clk <= 1;
		rst <= 0;
		sel <= 2'b11;
		p_in <= 4'b1001;
		
       
		#100
		rst<=1;
		clk<=1;
		#50
		rst<=0;
		clk<=1;
		sel <= 2'b01;
		s_right_in<= 0;
		#20 s_right_in<= 1;
		#20 s_right_in<= 1;
		#20 s_right_in<= 0;
      
		#100
		rst<=1;
		clk<=1;
		#50
		rst<=0;
		clk<=1;
		sel <= 2'b10;
		s_left_in<= 0;
		#20 s_left_in<= 1;
		#20 s_left_in<= 1;
		#20 s_left_in<= 0;
		
		
		
	end
	
	always #10 clk = ~clk;
	
   initial begin
	$monitor("time=%g  rst=%b  clk=%b\n  p_in=%b  p_out=%b\n  s_right_in=%b  s_right_out=%b\n  s_left_in=%b  s_left_out=%b\n",
	          $time,rst,clk,p_in,p_out,s_right_in,s_right_out,s_left_in,s_left_out);
   #600 $finish;
	end
      
endmodule

