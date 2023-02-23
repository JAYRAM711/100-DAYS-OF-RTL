`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:15:19 02/23/2023
// Design Name:   fulladder_df
// Module Name:   /home/jay/VERILOG_CODES/FULL_ADDER/fulladder/fulladder_tb.v
// Project Name:  fulladder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fulladder_df
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fulladder_tb;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Bidirs
	wire s;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	fulladder_df uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.s(s), 
		.cout(cout)
	);
    initial 
        begin
           
            a = 0;b = 0;c = 0;
            #100;

            a = 0;b = 0;c = 1;
            #100;

            a = 0;b = 1;c = 0;
            #100;

            a =0;b = 1;c = 1;
            #100;
				
				a = 1;b = 0;c = 0;
            #100;
				
				a = 1;b = 0;c = 1;
            #100;
				
				a = 1;b = 1;c = 0;
            #100;
				
				a = 1;b = 1;c = 1;
            #100;
		  
		  end
      
endmodule

