`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:02:03 03/19/2023
// Design Name:   sipo_st
// Module Name:   /home/jay/VERILOG_CODES/SHIFT_REGISTERS/sipo_st_tb.v
// Project Name:  shift_registers
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sipo_st
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sipo_st_tb;

	// Inputs
	reg din;
	reg clk;
	reg rst;

	// Bidirs
	wire [3:0] q;
	wire [3:0] qbar;

	// Instantiate the Unit Under Test (UUT)
	sipo_st uut (
		.din(din), 
		.clk(clk), 
		.rst(rst), 
		.q(q), 
		.qbar(qbar)
	);

initial begin

clk =1'b1;
rst =1'b1;
din=1'b1;
#50 rst =1'b0;
#100 din=1'b0;
#100 din=1'b1;
#100 din=1'b0;


end

always #50 clk = ~clk;
	
   initial begin
	$monitor("time=%g rst=%b clk=%b din=%b q=%b	qbar=%b",$time,rst,clk,din,q,qbar);
	#700 $finish;
	end
      
endmodule

