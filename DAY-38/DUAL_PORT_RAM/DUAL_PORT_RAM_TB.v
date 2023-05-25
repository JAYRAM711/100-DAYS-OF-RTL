`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:28:13 05/25/2023
// Design Name:   DUAL_PORT_RAM
// Module Name:   /home/jay711/VERILOG_CODES/PROJECTS/MEMORY_DESIGN/DUAL_PORT_RAM_TB.v
// Project Name:  MEMORY_DESIGN
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DUAL_PORT_RAM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DUAL_PORT_RAM_TB;

	// Inputs
	reg clk;
	reg [7:0] data_1;
	reg [7:0] data_2;
	reg [5:0] addr_1;
	reg [5:0] addr_2;
	reg write_enable_1;
	reg write_enable_2;

	// Outputs
	wire [7:0] out_1;
	wire [7:0] out_2;

	// Instantiate the Unit Under Test (UUT)
	DUAL_PORT_RAM uut (
		.clk(clk), 
		.data_1(data_1), 
		.data_2(data_2), 
		.addr_1(addr_1), 
		.addr_2(addr_2), 
		.write_enable_1(write_enable_1), 
		.write_enable_2(write_enable_2), 
		.out_1(out_1), 
		.out_2(out_2)
	);

	initial begin
		data_1 = 8'd32;
		data_2 = 8'd37;
		addr_1 = 6'd05;
		addr_2 = 6'd03;
		write_enable_1 = 1'b1;
		write_enable_2 = 1'b1;
		
#100;
      data_1 = 8'd55;
		
		addr_1 = 6'd01;
		addr_2 = 6'd03;
		
		write_enable_1 = 1'b1;
		write_enable_2 = 1'b0;
		
#100; 
      data_2 = 8'd05;
		
		addr_1 = 6'd05;
		addr_2 = 6'd07;
		
		write_enable_1 = 1'b0;
		write_enable_2 = 1'b1;
		
#100;
		addr_1 = 6'd01;
		addr_2 = 6'd07;
		
		write_enable_1 = 1'b0;
		write_enable_2 = 1'b0;
		
#100;

	end
	
	initial begin
	clk=1'b1;
	forever #50 clk= ~clk;
	end
	
	initial begin
	$monitor("time=%g, clk=%d, write_enable_1=%b, write_enable_2=%b, addr_1=%d, addr_2=%d, data_1=%d, data_2=%d,\n out_1=%d, out_2=%d\n",
	          $time,clk,write_enable_1, write_enable_2, addr_1, addr_2, data_1, data_2, out_1, out_2);
	#400 $finish;
	end
      
endmodule

