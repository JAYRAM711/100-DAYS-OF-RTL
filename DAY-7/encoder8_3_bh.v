`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:35:04 03/01/2023 
// Design Name: 
// Module Name:    encoder8_3_bh 
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
module encoder8_3_bh(
    input [7:0] d,
    output reg [2:0] y
    );
always@(*)
begin
case (d)
8'b0000_0001: y=3'b000;
8'b0000_0010: y=3'b001;
8'b0000_0100: y=3'b010;
8'b0000_1000: y=3'b011;
8'b0001_0000: y=3'b100;
8'b0010_0000: y=3'b101;
8'b0100_0000: y=3'b110;
8'b1000_0000: y=3'b111;
endcase
end
endmodule
