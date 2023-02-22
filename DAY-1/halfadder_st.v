`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:14:31 02/02/2023 
// Design Name: 
// Module Name:    halfadder_st 
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
module halfadder_st(
    input a,b,
    output sum,carry
    );
xor o1(sum,a,b);
and a1(carry,a,b);

endmodule
