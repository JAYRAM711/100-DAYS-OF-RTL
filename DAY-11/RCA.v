`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:57:00 03/05/2023 
// Design Name: 
// Module Name:    RCA 
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
module RCA(
    input [3:0] a,b,
    input cin,
    output [3:0] s,
    output cout
    );
wire [2:0] c;
FA adder1(a[0],b[0],cin,s[0],c[0]),
    adder2(a[1],b[1],c[0],s[1],c[1]),
	 adder3(a[2],b[2],c[1],s[2],c[2]),
	 adder4(a[3],b[3],c[2],s[3],cout);
endmodule


module FA(input a,b,c,output s,cout);
assign s=a^b^c;
assign cout= (a&b)|(b&c)|(c&a);
endmodule 