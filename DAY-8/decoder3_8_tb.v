`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:59:58 03/01/2023
// Design Name:   decoder3_8_df
// Module Name:   /home/jay/VERILOG_CODES/DECODER/DECODER/decoder3_8_tb.v
// Project Name:  DECODER
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder3_8_df
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decoder3_8_tb;

	// Inputs
	reg [2:0] d;

	// Outputs
	wire [7:0] y;

	// Instantiate the Unit Under Test (UUT)
	decoder3_8_df uut (
		.d(d), 
		.y(y)
	);

	initial begin
d=3'b000;#100;
d=3'b001;#100;
d=3'b010;#100;
d=3'b011;#100;
d=3'b100;#100;
d=3'b101;#100;
d=3'b110;#100;
d=3'b111;#100;
$finish;

	end
      
endmodule

