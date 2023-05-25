`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:23:06 05/25/2023 
// Design Name: 
// Module Name:    ROM 
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
module ROM(
    input clk,read_enable,
    input [3:0] addr,
    output reg [3:0] out
    );
reg [3:0] rom [15:0];

always@(posedge clk)
begin
if(read_enable==1) begin
out<= rom[addr];end

else begin
out<= 4'bxxxx;end
end

initial begin
	rom[0]<= 4'b0011;
	rom[1]<= 4'b0111;
	rom[2]<= 4'b0011;
	rom[3]<= 4'b0010;
	rom[4]<= 4'b0101;
	rom[5]<= 4'b0101;
	rom[6]<= 4'b0000;
	rom[7]<= 4'b0001;
   rom[8]<= 4'b1000;
	rom[9]<= 4'b1001;
	rom[10]<= 4'b1010;
	rom[11]<= 4'b1011;
	rom[12]<= 4'b1100;
	rom[13]<= 4'b1101;
	rom[14]<= 4'b1110;
	rom[15]<= 4'b1111;
   end
	
endmodule
