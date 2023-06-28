`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2023 18:20:02
// Design Name: 
// Module Name: LED_BLINKING_TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module LED_BLINKING;
reg clk=0;
wire clk_divided;

clock_divider UUT (
.clk(clk),
.clk_divided(clk_divided));

always begin
#5 clk = ~clk; //100Mhz clk signal
end

endmodule
