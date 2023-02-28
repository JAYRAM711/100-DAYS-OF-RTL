`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:20:32 02/28/2023 
// Design Name: 
// Module Name:    demux8_1_st 
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
module demux8_1_st(
    input [2:0] s,
    input in,
    output [7:0] y
    );
	 wire p,q,r;
	 
not1 n1(s[2],p),n2(s[1],q),n3(s[0],r);
and1 a1(in,p,q,r,y[0]);
and1 a2(in,p,q,s[0],y[1]);
and1 a3(in,p,s[1],r,y[2]);
and1 a4(in,p,s[1],s[0],y[3]);
and1 a5(in,s[2],q,r,y[4]);
and1 a6(in,s[2],q,s[0],y[5]);
and1 a7(in,s[2],s[1],r,y[6]);
and1 a8(in,s[2],s[1],s[0],y[7]);

endmodule

module not1(input a,output z);
assign z=~a;
endmodule

module and1(input a,b,c,d,output z);
assign z=a&b&c&d;
endmodule

