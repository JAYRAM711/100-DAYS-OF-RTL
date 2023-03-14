`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:42:13 03/14/2023
// Design Name:   t_ff
// Module Name:   /home/jay/VERILOG_CODES/FLIPFLOPS/t_ff_tb.v
// Project Name:  FLIPFLOPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: t_ff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t_ff_tb;

	// Inputs
	reg t;
	reg clk;

	// Outputs
	wire q;
	wire qbar;

	// Instantiate the Unit Under Test (UUT)
	t_ff uut (
		.t(t), 
		.clk(clk), 
		.q(q), 
		.qbar(qbar)
	);

   initial begin
	clk=1;
	forever #50 clk=~clk;
	end

	initial begin
	t=0;
	#100; t=1;

	end
	
	initial begin
	$monitor("time=%g clk=%b t=%b q=%b qbar=%b",$time,clk,t,q,qbar);
	#200 $finish;
	end 
      
endmodule

