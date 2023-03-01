`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:04:40 03/01/2023 
// Design Name: 
// Module Name:    encoder8_3_st 
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
module encoder8_3_st(
    input [7:0] d,
    output [2:0] y
    );
or_gate o1(d[4],d[5],d[6],d[7],y[2]),
        o2(d[2],d[3],d[6],d[7],y[1]),
        o3(d[1],d[3],d[5],d[7],y[0]);
endmodule

module or_gate(input a,b,c,d,output z);
assign z=a|b|c|d;
endmodule 