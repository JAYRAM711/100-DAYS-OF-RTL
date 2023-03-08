`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:49:15 03/08/2023
// Design Name:   binary_to_grey
// Module Name:   /home/jay/VERILOG_CODES/CONVERTERS/BINARY_GREY/binary_to_grey_tb.v
// Project Name:  BINARY_GREY
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: binary_to_grey
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module binary_to_grey_tb;

	// Inputs
	reg [3:0] bin;

	// Outputs
	wire [3:0] grey;
	
	integer i;

	// Instantiate the Unit Under Test (UUT)
	binary_to_grey uut (
		.bin(bin), 
		.grey(grey)
	);

	initial begin
		for(i=0;i<16;i=i+1)
		begin
		bin[3:0]=i[3:0];
		#10;
		end
			end
			
		initial
		#160 $finish;


      
endmodule

