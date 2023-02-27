`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:06:02 02/27/2023 
// Design Name: 
// Module Name:    MUX_using_case 
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
module MUX_using_case(
    input [7:0] in,
    input [2:0] s,
    output reg y
    );
always@(in,s)
begin
case(s)
3'b000:y= in[0];
3'b001:y= in[1];
3'b010:y= in[2];
3'b011:y= in[3];
3'b100:y= in[4];
3'b101:y= in[5];
3'b110:y= in[6];
3'b111:y= in[7];
default:y= 1'bx;
endcase
end
endmodule
