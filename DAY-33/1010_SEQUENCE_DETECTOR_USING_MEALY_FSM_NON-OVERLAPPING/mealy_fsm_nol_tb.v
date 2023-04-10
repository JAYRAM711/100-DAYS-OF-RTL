`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:56:55 04/10/2023
// Design Name:   mealy_fsm_nol
// Module Name:   /home/jay711/VERILOG_CODES/FSM/mealy_fsm_nol_tb.v
// Project Name:  FSM
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mealy_fsm_nol
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mealy_fsm_nol_tb;

	// Inputs
	reg din;
	reg clk;
	reg rst;

	// Outputs
	wire dout;

	// Instantiate the Unit Under Test (UUT)
	mealy_fsm_nol uut (
		.din(din), 
		.clk(clk), 
		.rst(rst), 
		.dout(dout)
	);

	initial begin
		rst = 1;din = 0;clk = 0;
		#100; rst=0; clk=1; din=1;
		#100; din=0;
		#100; din=1;
		#100; din=0;
		#100; din=1;
		#100; din=0;
		#100; din=0;
		#100; din=1;
		#100; din=0;

  end

always
#50 clk=~clk;

initial begin
$monitor("time=%g, clk=%b, rst=%b, din=%b, dout=%b",$time,clk,rst,din,dout);
#1000 $finish;
end
      
endmodule

