`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:09:14 03/11/2023
// Design Name:   even_parity_df
// Module Name:   /home/jay/VERILOG_CODES/PARITY_GENERATOR/even_parity_tb.v
// Project Name:  PARITY_GENERATOR
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: even_parity_df
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module even_parity_tb;

	// Inputs
	reg [2:0] data;

	// Outputs
	wire even_p;
	
	integer i;

	// Instantiate the Unit Under Test (UUT)
	even_parity_df uut (
		.data(data), 
		.even_p(even_p)
	);

	initial begin
for(i=0;i<8;i=i+1) begin
data=i;
#10;
end
	end

initial begin
$monitor("data=%d  even_p=%d\n",data,even_p);
#80 $finish;
end
      
endmodule

