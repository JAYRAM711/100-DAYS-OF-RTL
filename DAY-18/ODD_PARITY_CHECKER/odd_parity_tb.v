`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:31:34 03/12/2023
// Design Name:   odd_parity
// Module Name:   /home/jay/VERILOG_CODES/PARITY_CHECKER/odd_parity_tb.v
// Project Name:  PARITY_CHECKER
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: odd_parity
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
	reg odd_p;

	// Outputs
	wire result;
	
	integer i;

	// Instantiate the Unit Under Test (UUT)
	odd_parity uut (
		.data(data), 
		.odd_p(odd_p), 
		.result(result)
	);

	initial begin
	for(i=0;i<16;i=i+1)
begin
{data,odd_p}=i;
#10;
end
	end
initial begin
$monitor("data=%b odd_p=%b result=%b",data,odd_p,result);
#160 $finish;
end
      
endmodule

