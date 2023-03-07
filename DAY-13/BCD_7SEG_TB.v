`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:49:01 03/07/2023
// Design Name:   BCD_7SEG_BH
// Module Name:   /home/jay/VERILOG_CODES/BCD_7SEG/BCD_7SEG_TB.v
// Project Name:  BCD_7SEG
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BCD_7SEG_BH
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BCD_7SEG_TB;

	// Inputs
	reg [3:0] bcd;

	// Outputs
	wire [6:0] seg;
	
	integer count;

	// Instantiate the Unit Under Test (UUT)
	BCD_7SEG_BH uut (
		.bcd(bcd), 
		.seg(seg)
	);

	initial begin
for(count=0;count<=8;count=count+1)
begin
bcd=count;
#100;
end
end      
endmodule

