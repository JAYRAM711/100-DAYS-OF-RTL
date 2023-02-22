`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:23:47 02/02/2023 
// Design Name: 
// Module Name:    halfadder_bh 
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
module halfadder_bh(
    input a,b,
    output reg sum,carry
    );
always@(a,b)
begin
sum = a ^ b;
carry = a & b;
end
endmodule
