`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:08:24 03/01/2023 
// Design Name: 
// Module Name:    decoder3_8_st 
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
module decoder3_8_st(
    input [2:0] d,
    output [7:0] y
    );
	 wire p,q,r;
not_gate n1(d[2],p), 
         n2(d[1],q), 
			n3(d[0],r);
and_gate a1(p,q,r,y[0]),a2(p,q,d[0],y[1]),a3(p,d[1],r,y[2]),a4(p,d[1],d[0],y[3]),
         a5(d[2],q,r,y[4]),a6(d[2],q,d[0],y[5]),a7(d[2],d[1],r,y[6]),a8(d[2],d[1],d[0],y[7]);

endmodule

module not_gate(input a,output z);
assign z=~a;
endmodule

module and_gate(input a,b,c,output z);
assign z=a&b&c;
endmodule
