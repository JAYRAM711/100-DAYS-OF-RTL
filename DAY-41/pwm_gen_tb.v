`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:18:48 06/07/2023
// Design Name:   pwm_gen
// Module Name:   /home/jay711/VERILOG_CODES/PROJECTS/pwm_generator/pwm_gen_tb.v
// Project Name:  pwm_generator
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pwm_gen
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pwm_gen_tb;

	reg clk;
	wire [7:0] led;

	pwm_gen uut (
		.clk(clk), 
		.led(led)
	);
	
	always begin
	clk=1;
	forever #5 clk= ~clk;
   end	
      
endmodule

