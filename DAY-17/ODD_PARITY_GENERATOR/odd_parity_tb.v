`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:50:01 03/11/2023
// Design Name:   odd_parity_df
// Module Name:   /home/jay/VERILOG_CODES/PARITY_GENERATOR/odd_parity_tb.v
// Project Name:  PARITY_GENERATOR
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: odd_parity_df
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module odd_parity_tb;

	// Inputs
	reg [2:0] data;

	// Outputs
	wire odd_p;
	
	integer i;

	// Instantiate the Unit Under Test (UUT)
	odd_parity_df uut (
		.data(data), 
		.odd_p(odd_p)
	);

	initial begin
for(i=0;i<8;i=i+1) begin
data=i;
#10;
end
	end

initial begin
$monitor("data=%d  odd_p=%d\n",data,odd_p);
#80 $finish;
end
      
endmodule

