`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:21:46 02/27/2023 
// Design Name: 
// Module Name:    mux_st 
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
module mux_st(
    input [7:0] in,
    input [2:0] s,
    output y
    );
wire p,q,r,a,b,c,d,e,f,g,h;

not1 n1(s[2],p),n2(s[1],q),n3(s[0],r);
and1 a1(p,q,r,in[0],a),a2(p,q,s[0],in[1],b),a3(p,s[1],r,in[2],c),a4(p,s[1],s[0],in[3],d),
    a5(s[2],q,r,in[4],e),a6(s[2],q,s[0],in[5],f),a7(s[2],s[1],r,in[6],g),a8(s[2],s[1],s[0],in[7],h);
or1 o1(a,b,c,d,e,f,g,h,y);
endmodule

module not1(input a,output y);
assign y=~a;
endmodule

module and1(input a,b,c,d,output y);
assign y=a&b&c&d;
endmodule

module or1(input a,b,c,d,e,f,g,h,output y);
assign y=a|b|c|d|e|f|g|h;
endmodule
