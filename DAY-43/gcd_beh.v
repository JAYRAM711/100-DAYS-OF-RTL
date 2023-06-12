`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:06:35 06/12/2023 
// Design Name: 
// Module Name:    gcd_beh 
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
module gcd_beh(
    input [N-1:0] Ain,Bin,
    output [N-1:0] GCD
    );
parameter N= 8;
reg [N-1:0] A1,B1;

always@(*)
begin
A1=Ain;
B1=Bin;
while(A1 != B1)
begin
if(A1 > B1) begin
A1= A1 - B1; end
else begin
B1= B1 - A1; end
end
end

assign GCD = A1;

endmodule
