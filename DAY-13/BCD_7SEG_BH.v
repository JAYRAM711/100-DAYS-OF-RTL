`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:11:41 03/07/2023 
// Design Name: 
// Module Name:    BCD_7SEG_BH 
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
module BCD_7SEG_BH(
    input [3:0] bcd,
    output reg [6:0] seg
    );

always@(bcd)
begin
case(bcd)
4'b0000: seg= 7'b0000001;
4'b0001: seg= 7'b1001111;
4'b0010: seg= 7'b0010010;
4'b0011: seg= 7'b0000110;
4'b0100: seg= 7'b1001100;
4'b0101: seg= 7'b0100100;
4'b0110: seg= 7'b0100000;
4'b0111: seg= 7'b0001111;
default: seg= 7'b0000000;
endcase
end
endmodule
