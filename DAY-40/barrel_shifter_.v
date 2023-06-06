`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:18:42 06/06/2023 
// Design Name: 
// Module Name:    barrel_shifter_ 
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
module barrel_shifter_(
    input [7:0] a,
    input [2:0] range,
    output [7:0] out
    );
wire [7:0] s1,s0;

assign s0= range[0] ? {a[0],a[7:1]} : a;

assign s1= range[1] ? {s0[1:0],s0[7:2]} : s0;

assign out= range[2] ? {s1[3:0],s1[7:4]} : s1;

endmodule
