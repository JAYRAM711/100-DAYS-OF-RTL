`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:11:18 03/10/2023
// Design Name:   comparator_bh
// Module Name:   /home/jay/VERILOG_CODES/COMPARATOR/comparator_tb.v
// Project Name:  COMPARATOR
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comparator_bh
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module comparator_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire [2:0] y;
	
	integer i;

	// Instantiate the Unit Under Test (UUT)
	comparator_bh uut (
		.a(a), 
		.b(b), 
		.y(y)
	);

	initial begin
for(i=0;i<8;i=i+1 )
begin
a= $random;
b= $random;
#10;
end
	end
	
initial
begin
$monitor("a=%d, b=%d,  a_gt_b=%b,  a_eq_b=%b,  a_lt_b=%b",a,b,y[0],y[1],y[2]);
#80 $finish;
end
      
endmodule

