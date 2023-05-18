`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:55:02 05/17/2023
// Design Name:   vending_machine
// Module Name:   /home/jay711/VERILOG_CODES/PROJECTS/VENDING_MACHINE/vending_machine_tb.v
// Project Name:  VENDING_MACHINE
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: vending_machine
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

//Stimulus/Testbench for determining the inputs of the vending machine
module vending_machine_tb;

	// Inputs
	reg [4:0] money;
	reg [1:0] select_product;
	reg [4:0] extra_money;
	reg clk;
	reg rst;

	// Outputs
	wire newspaper;
	wire chocolate;
	wire coke;
	wire [4:0] balance;

	// Instantiate the Unit Under Test (UUT)
	vending_machine uut (
		.newspaper(newspaper), 
		.chocolate(chocolate), 
		.coke(coke), 
		.balance(balance), 
		.money(money), 
		.select_product(select_product), 
		.extra_money(extra_money), 
		.clk(clk), 
		.rst(rst)
	);
	
	always begin
	forever #5 clk= ~clk;
   end

	initial begin
   clk=1'b1;
   rst=0; money=5'd5; select_product=2'b01;
	
	#10 money=5'd5; select_product=2'b01;
	#10 money=5'd10; select_product=2'b01;
	#10 money=5'd20; select_product=2'b01;
	
	#10 money=5'd5; extra_money=5'd5; select_product=2'b10;
	#10 money=5'd10; select_product=2'b10;
	#10 money=5'd20; select_product=2'b10;
	
	
	#10 money=5'd20; select_product=2'b11;
	#10 money=5'd5; extra_money=5'd10; select_product=2'b11;
	#10 money=5'd10; extra_money=5'd5; select_product=2'b11;
	#10 money=5'd5; select_product=2'b11;

	end
	
	initial begin
	$monitor("money_given=%d, extra_money=%d, selected_product=%b, money_returned=%d",money,extra_money,select_product,balance);
   #110 $finish;
   end	
endmodule

