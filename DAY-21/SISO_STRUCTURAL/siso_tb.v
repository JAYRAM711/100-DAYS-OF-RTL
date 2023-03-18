`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:38:34 03/18/2023
// Design Name:   siso
// Module Name:   /home/jay/VERILOG_CODES/shift_registers/siso_tb.v
// Project Name:  shift_registers
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: siso
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module siso_tb;

	// Inputs
	reg din;
	reg clk;
   reg rst;
	// Outputs
	wire qout;
	wire qbar;

	// Instantiate the Unit Under Test (UUT)
	siso uut (
		.din(din), 
		.clk(clk),
      .rst(rst),		
		.qout(qout), 
		.qbar(qbar)
	);
	
initial begin

clk = 0;
rst = 1;
din = 0;
#50 rst=1'b1;
#50 rst=1'b0;
#100 din=1'b1;
#100 din=1'b0;
#100 din=1'b0;
#100 din=1'b1;
#100 din=1'b0;
#100 din=1'bx;

end

always #50 clk = ~clk;
	
   initial begin
	$monitor("time=%g rst=%b clk=%b din=%b qout=%b qbar=%b",$time,rst,clk,din,qout,qbar);
	#700 $finish;
	end
	
	
endmodule

