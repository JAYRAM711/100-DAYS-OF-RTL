`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:10:39 02/23/2023 
// Design Name: 
// Module Name:    fulladder_df 
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
module fulladder_df(
    input a,b,c,
    output s,cout
    );
assign s= a^b^c;
assign cout= (a&b) | (b&c) | (c&a);

endmodule
