`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:06:07 03/09/2023 
// Design Name: 
// Module Name:    binary_to_gray_st 
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
module binary_to_gray_st(
    input [3:0] bin,
    output [3:0] gray
    );
buffer b1(bin[3],gray[3]);
xor_gate x1(bin[3],bin[2],gray[2]),
         x2(bin[2],bin[1],gray[1]),
			x3(bin[1],bin[0],gray[0]);
endmodule

module buffer(input a,output z);
assign z=a;
endmodule 

module xor_gate(input a,b,output z);
assign z=a^b;
endmodule 