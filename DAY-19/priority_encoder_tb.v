`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:42:43 03/13/2023
// Design Name:   priority_encoder_bh
// Module Name:   /home/jay/VERILOG_CODES/PRIORITY_ENCODER/priority_encoder_tb.v
// Project Name:  PRIORITY_ENCODER
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: priority_encoder_bh
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module priority_encoder_tb;

	// Inputs
	reg [7:0] i;

	// Outputs
	wire [2:0] y;
integer count;
	// Instantiate the Unit Under Test (UUT)
	priority_encoder_bh uut (
		.i(i), 
		.y(y)
	);

	initial begin
for(count=0;count<8;count=count+1)
begin
i=0;
i[count]=1;
#10;
end
	end
	
initial begin
$monitor("i=%b y=%b",i,y);
#80 $finish;
end
endmodule

