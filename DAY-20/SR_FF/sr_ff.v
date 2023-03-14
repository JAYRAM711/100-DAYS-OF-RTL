`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:20:36 03/14/2023 
// Design Name: 
// Module Name:    sr_ff 
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
module sr_ff(
    input s,r,clk,
    output reg q,qbar
    );

always@(posedge clk)
begin
q=1'b0; qbar=1'b1;

if(clk==1) begin
if(s==0 && r==0) begin
q=q; qbar=qbar; end
else if(s==0 && r==1) begin
q=1'b0; qbar=1'b1; end
else if(s==1 && r==0) begin
q=1'b1; qbar=1'b0; end
else if(s==1 && r==1) begin
q=1'bx; qbar=1'bx; end
end

if(clk==0) begin
q=q; qbar=qbar; end

end
endmodule
