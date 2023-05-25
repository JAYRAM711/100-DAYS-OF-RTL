`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:26:17 05/25/2023
// Design Name:   ROM
// Module Name:   /home/jay711/VERILOG_CODES/PROJECTS/MEMORY_DESIGN/ROM_TB.v
// Project Name:  MEMORY_DESIGN
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ROM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ROM_TB;

	// Inputs
	reg clk;
	reg read_enable;
	reg [3:0] addr;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	ROM uut (
		.clk(clk), 
		.read_enable(read_enable), 
		.addr(addr), 
		.out(out)
	);

	initial begin
	clk=1'b1;
   forever #50 clk= ~clk;
	end
	

	
	initial begin
	
	read_enable=1'b0;
	
#100;
   read_enable=1'b1;
   addr=	4'b0000;
	
#100; 
   addr=	4'b0011;
  
#100; 
   addr=	4'b0010;
	
#100; 
   addr=	4'b0001;

#100; 
   addr=	4'b1111;
	
   end
	
	
	initial begin
	$monitor("time=%g, clk=%b, read_enable=%b, addr=%d, out=%d",$time,clk,read_enable,addr,out);
	#600 $finish;
	end
	
   
endmodule

