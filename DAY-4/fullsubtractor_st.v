`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:59:24 02/24/2023 
// Design Name: 
// Module Name:    fullsubtractor_st 
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
module fullsubtractor_st(
    input a,b,c,
    output d,bout);
	 wire p,q,r,s;

not1 a1(a,p);
xor1 a2(p,b,c,d);
and1 a3(p,b,q);
and1 a4(b,c,r);
and1 a5(c,p,s);
or1 a6(q,r,s,bout);

endmodule

module not1(
    input a,
    output b);
	 assign b=~a;
endmodule

module xor1(
    input a,b,c,
    output d);
	 assign d=a^b^c;
endmodule

module and1(
    input a,b,
    output d);
	 assign d=a&b;
endmodule

module or1(
    input a,b,c,
    output d);
	 assign d=a|b|c;
endmodule


