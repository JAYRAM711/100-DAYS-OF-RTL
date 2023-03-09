`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:45:36 03/09/2023
// Design Name:   gray_to_bin_st
// Module Name:   /home/jay/VERILOG_CODES/CONVERTERS/GRAY_TO_BINARY_st/gray_to_binary_tb.v
// Project Name:  GRAY_TO_BINARY_st
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: gray_to_bin_st
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module gray_to_binary_tb;

	// Inputs
	reg [3:0] gray;

	// Outputs
	wire [3:0] bin;
	
	integer i;

	// Instantiate the Unit Under Test (UUT)
	gray_to_bin_st uut (
		.gray(gray), 
		.bin(bin)
	);

	initial begin
for (i=0;i<16;i=i+1)
begin
gray[3:0]=i[3:0];
#10;
end
	end
	
	initial 
	begin
	$monitor("gray=%b,bin=%b",gray,bin);
	#160 $finish;
	end
      
endmodule

