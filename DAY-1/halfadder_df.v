`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:05:07 02/02/2023 
// Design Name: 
// Module Name:    halfadder_df 
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
module halfadder_df(
    input a,b,
    output sum,carry
    );
assign sum = a^b;
assign carry = a&b;

endmodule
