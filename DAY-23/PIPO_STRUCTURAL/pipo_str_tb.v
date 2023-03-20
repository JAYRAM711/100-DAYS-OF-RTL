`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:59:26 03/20/2023
// Design Name:   pipo_str
// Module Name:   /home/jay/VERILOG_CODES/SHIFT_REGISTERS/pipo_str_tb.v
// Project Name:  shift_registers
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pipo_str
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pipo_str_tb;

	// Inputs
	reg [3:0] d;
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] q;
	wire [3:0] qbar;

	// Instantiate the Unit Under Test (UUT)
	pipo_str uut (
		.d(d), 
		.clk(clk), 
		.rst(rst), 
		.q(q), 
		.qbar(qbar)
	);

	initial begin
d = 4'b1111;
clk = 1'b1;
rst = 1'b1;
#100 rst = 1'b0; d=4'b1010;
#100 d=4'b0101;
#100 d=4'b1100;
#100 d=4'b0011;
	end
	
always begin
#50 clk=~clk;
end    

initial begin
$monitor("time=%g rst=%b clk=%b d=%b q=%b qbar=%b",$time,rst,clk,d,q,qbar);
#500 $finish;
end
 
endmodule

