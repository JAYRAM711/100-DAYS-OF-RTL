`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:39:22 02/23/2023 
// Design Name: 
// Module Name:    fulladder_st 
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
module fulladder_st(
    input a,b,c,
    output s,cout
    );
	 wire p,q,r;
xor1 x1(a,b,c,s);
and1 a1(a,b,p);
and1 a2(a,b,q);
and1 a3(a,b,r);
or1 o1(p,q,r,cout);

endmodule

module xor1(input a,b,c,output s);
assign s= a^b^c;
endmodule

module and1(input a,b,output z);
assign z= a&b;
endmodule

module or1(input a,b,c,output cout);
assign cout= a|b|c;
endmodule



