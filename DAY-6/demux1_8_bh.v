`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:46:33 02/28/2023 
// Design Name: 
// Module Name:    demux1_8_bh 
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
module demux1_8_bh(
    input in,
    input [2:0] sel,
    output reg [7:0] y
    );
always@(*)
begin
y=0;
case(sel)
3'b000: y[0]=in;
3'b001: y[1]=in;
3'b010: y[2]=in;
3'b011: y[3]=in;
3'b100: y[4]=in;
3'b101: y[5]=in;
3'b110: y[6]=in;
3'b111: y[7]=in;
default: y[7:0]=8'bx;
endcase
end
endmodule
