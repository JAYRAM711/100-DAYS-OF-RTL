`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:28:58 03/01/2023
// Design Name:   encoder8_3
// Module Name:   /home/jay/VERILOG_CODES/ENCODER/ENCODER/decoder_tb.v
// Project Name:  ENCODER
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: encoder8_3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decoder_tb;

	// Inputs
	reg [7:0] d;

	// Outputs
	wire [2:0] y;

	// Instantiate the Unit Under Test (UUT)
	encoder8_3 uut (
		.d(d), 
		.y(y)
	);

	initial begin
d=8'b0000_0001; #100;
d=8'b0000_0010; #100;
d=8'b0000_0100; #100;
d=8'b0000_1000; #100;
d=8'b0001_0000; #100;
d=8'b0010_0000; #100;
d=8'b0100_0000; #100;
d=8'b1000_0000; #100;
$finish;

	end
      
endmodule

