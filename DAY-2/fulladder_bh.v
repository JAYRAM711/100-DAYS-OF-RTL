`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:07:03 02/23/2023 
// Design Name: 
// Module Name:    fulladder_bh 
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
module fulladder_bh(
    input a,b,c,
    output reg s,cout
    );
always@(*)
begin

if(a==0&&b==0&&c==0)begin
s=1'b0;cout=1'b0; end
else if (a==0&&b==0&&c==1)begin
s=1'b1;cout=1'b0; end
else if (a==0&&b==1&&c==0)begin
s=1'b1;cout=1'b0; end
else if (a==0&&b==1&&c==1)begin
s=1'b0;cout=1'b1; end
else if (a==1&&b==0&&c==0)begin
s=1'b1;cout=1'b0; end
else if (a==1&&b==0&&c==1)begin
s=1'b0;cout=1'b1; end
else if (a==1&&b==1&&c==0)begin
s=1'b0;cout=1'b1; end
else if (a==1&&b==1&&c==1)begin
s=1'b1;cout=1'b1; end
else begin s=1'bx;cout=1'bx; end

end
endmodule
