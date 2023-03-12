`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:09:10 03/12/2023
// Design Name:   even_parity
// Module Name:   /home/jay/VERILOG_CODES/PARITY_CHECKER/even_parity_tb.v
// Project Name:  PARITY_CHECKER
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: even_parity
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
	reg even_p;

	// Outputs
	wire result;
	
	integer i;

	// Instantiate the Unit Under Test (UUT)
	even_parity uut (
		.data(data), 
		.even_p(even_p), 
		.result(result)
	);

	initial begin
	for(i=0;i<16;i=i+1)
begin
{data,even_p}=i;
#10;
end
	end
initial begin
$monitor("data=%b even_p=%b result=%b",data,even_p,result);
#160 $finish;
end    
      
endmodule

