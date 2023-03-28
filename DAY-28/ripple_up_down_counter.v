`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:46:04 03/28/2023 
// Design Name: 
// Module Name:    ripple_up_down_counter 
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
module ripple_up_down_counter(
    input clk,rst,mode,
    output [3:0] q,qbar
    );
wire [8:0] x;
wire mbar;

not_gate n1(mode,mbar);

t_ff t1(1'b1,clk,rst,q[0],qbar[0]),
    t2(1'b1,x[6],rst,q[1],qbar[1]),
    t3(1'b1,x[7],rst,q[2],qbar[2]),
    t4(1'b1,x[8],rst,q[3],qbar[3]);


and_gate a1(q[0],mbar,x[0]),
         a2(qbar[0],mode,x[1]),
         a3(q[1],mbar,x[2]),
         a4(qbar[1],mode,x[3]),
         a5(q[2],mbar,x[4]),
         a6(qbar[2],mode,x[5]);


or_gate o1(x[0],x[1],x[6]),
        o2(x[2],x[3],x[7]), 
        o3(x[4],x[5],x[8]); 


endmodule



