`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:07:08 02/24/2023 
// Design Name: 
// Module Name:    fullsubtractor_df 
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
module fullsubtractor_df(
    input a,b,c,
    output d,bout
    );
wire p;
assign d=a^b^c;
assign p=~a;
assign bout=(p&b) | (b&c) | (c&p);

endmodule
