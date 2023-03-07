`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:01:29 03/07/2023
// Design Name:   ALU_st
// Module Name:   /home/jay/VERILOG_CODES/ALU/ALU_TB.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU_st
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_TB;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg LOGIC_SEL;
	reg [2:0] SEL;

	// Outputs
	wire [7:0] RESULT;

	// Instantiate the Unit Under Test (UUT)
	ALU_st uut (
		.A(A), 
		.B(B), 
		.LOGIC_SEL(LOGIC_SEL), 
		.SEL(SEL), 
		.RESULT(RESULT)
	);

	initial begin
		A = 8'b00110111;B = 8'b00110010;
		
		//ARITHEMATIC & SHIFT OPEERATIONS
		#0 LOGIC_SEL = 0;SEL = 1'b000; //add
		#10 LOGIC_SEL = 0;SEL = 1'b001; //sub 
		#10 LOGIC_SEL = 0;SEL = 1'b010; //mul
      #10 LOGIC_SEL = 0;SEL = 1'b011; //incr
      #10 LOGIC_SEL = 0;SEL = 1'b100; //combine 
      #10 LOGIC_SEL = 0;SEL = 1'b101; //replicate 2times
      #10 LOGIC_SEL = 0;SEL = 1'b110; //left shift by 1-bit
      #10 LOGIC_SEL = 0;SEL = 1'b111; //right shift 1-bit

      //LOGICAL OPERATIONS
		#10 LOGIC_SEL = 1;SEL = 1'b000; //and 
		#10 LOGIC_SEL = 1;SEL = 1'b001; //or
		#10 LOGIC_SEL = 1;SEL = 1'b010; //negation
		#10 LOGIC_SEL = 1;SEL = 1'b011; //nand 
		#10 LOGIC_SEL = 1;SEL = 1'b100; //nor
		#10 LOGIC_SEL = 1;SEL = 1'b101; //xor 
		#10 LOGIC_SEL = 1;SEL = 1'b110; //xnor
		#10 LOGIC_SEL = 1;SEL = 1'b111; //buffer
	end
	
	initial
	begin
	$monitor("A=%b,B=%b,LOGIC_SEL=%b,SEL=%b,RESULT=%b",A,B,LOGIC_SEL,SEL,RESULT);
	
	#160 $finish;
   end 
endmodule

