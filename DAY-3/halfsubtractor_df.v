`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:20:18 02/24/2023 
// Design Name: 
// Module Name:    halfsubtractor_df 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module halfsubtractor_df(
    input a,b,
    output d,bout
    );
	 wire p;
	 assign p= ~a;
assign d=a^b;
assign bout=p&b;

endmodule
