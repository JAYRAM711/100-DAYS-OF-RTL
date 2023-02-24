`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:45:08 02/24/2023 
// Design Name: 
// Module Name:    fullsubtracotr_bh 
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
module fullsubtracotr_bh(
    input a,b,c,
    output reg d,bout
    );
	 always@(*)
	 begin
if (a==0&&b==0&&c==0)begin
d=1'b0;bout=1'b0; end
else if (a==0&&b==0&&c==1)begin
d=1'b1;bout=1'b1; end
else if (a==0&&b==1&&c==0)begin
d=1'b1;bout=1'b1; end
else if (a==0&&b==1&&c==1)begin
d=1'b0;bout=1'b1; end
else if (a==1&&b==0&&c==0)begin
d=1'b1;bout=1'b0; end
else if (a==1&&b==0&&c==1)begin
d=1'b0;bout=1'b0; end
else if (a==1&&b==1&&c==0)begin
d=1'b0;bout=1'b0; end
else if (a==1&&b==1&&c==1)begin
d=1'b1;bout=1'b1; end

end
endmodule
