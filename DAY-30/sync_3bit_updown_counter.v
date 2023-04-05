`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:53:50 04/04/2023 
// Design Name: 
// Module Name:    sync_3bit_updown_counter 
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
module sync_3bit_updown_counter(
    input clk,rst,m,
    output [2:0] q,qbar
    );
wire [5:0] x;
wire mbar;
t_ff t1(1'b1,clk,rst,q[0],qbar[0]),
   t2(x[2],clk,rst,q[1],qbar[1]),
   t3(x[5],clk,rst,q[2],qbar[2]);

not_gate n1(m,mbar);

and_gate a1(q[0],mbar,x[0]),
	      a2(qbar[0],m,x[1]),
			a3(q[1],x[0],x[3]),
			a4(qbar[1],x[1],x[4]);
			
or_gate o1(x[0],x[1],x[2]),
        o2(x[3],x[4],x[5]);
 
endmodule
