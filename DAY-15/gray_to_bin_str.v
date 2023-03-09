`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:33:44 03/09/2023 
// Design Name: 
// Module Name:    gray_to_bin_str 
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
module gray_to_bin_str(
    input [3:0] gray,
    output [3:0] bin
    );
buffer b1(gray[3],bin[3]);
xor_gate x1(gray[2],bin[3],bin[2]),
    x2(gray[1],bin[2],bin[1]),
	 x3(gray[0],bin[1],bin[0]);

endmodule

module xor_gate (input a,b,output c);
assign c=a^b;
endmodule

module buffer (input a,output z);
assign z=a;
endmodule
