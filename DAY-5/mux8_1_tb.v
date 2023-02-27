`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:50:54 02/27/2023
// Design Name:   mux8_1
// Module Name:   /home/jay/VERILOG_CODES/MUX8_1/MUX8TO1/mux8_1_tb.v
// Project Name:  MUX8TO1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux8_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux8_1_tb;

	// Inputs
	reg [2:0] s;
	reg [7:0] I;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux8_1 uut (
		.s(s), 
		.I(I), 
		.y(y)
	);

initial 
begin
$monitor($time,"s=%d I=%b y=%d",s,I,y);
end
initial 
begin
I=8'b10101010;
s=3'b000;
repeat(7)
begin
#100 s=s+1;
end
#100 $finish;
end
      
endmodule

