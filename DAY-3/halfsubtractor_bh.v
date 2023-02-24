`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:42:12 02/24/2023 
// Design Name: 
// Module Name:    halfsubtractor_bh 
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
module halfsubtractor_bh(
    input a,b,
    output reg d,bout
    );
always@(*)
begin

if (a==0&&b==0) begin
d=1'b0;bout=1'b0; end
else if (a==0&&b==1) begin
d=1'b1;bout=1'b1; end
else if (a==1&&b==0) begin
d=1'b1;bout=1'b0; end
else if (a==1&&b==1) begin
d=1'b0;bout=1'b0; end
else begin
d=1'bx;bout=1'bx; end


end
endmodule
