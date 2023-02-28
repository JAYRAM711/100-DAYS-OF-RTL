`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:53:24 02/28/2023
// Design Name:   demux1_8_bh
// Module Name:   /home/jay/VERILOG_CODES/DEMUX1_8/DEMUX1_8/demux1_8_tb.v
// Project Name:  DEMUX1_8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demux1_8_bh
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module demux1_8_tb;

	// Inputs
	reg in;
	reg [2:0] sel;

	// Outputs
	wire [7:0] y;

	// Instantiate the Unit Under Test (UUT)
	demux1_8_bh uut (
		.in(in), 
		.sel(sel), 
		.y(y)
	);

	initial 
	begin
in=2'b1;
sel=3'b000;
#100;
repeat(7)
begin
sel=sel+1;
#100;
end
$finish;
end
      
endmodule

