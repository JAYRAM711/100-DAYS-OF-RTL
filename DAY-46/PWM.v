`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2023 13:36:15
// Design Name: 
// Module Name: PWM
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


module PWM(
    input clk,
    output[9:0]led
    );
    reg [7:0] g_clk;
   always@(posedge clk)
   begin
   if(g_clk<=100)
   g_clk<=g_clk+1;
   else
   g_clk<=0;
   end
   
   assign led[0] = (g_clk <=10)?1:0;
   assign led[1] = (g_clk <=20)?1:0;
   assign led[2] = (g_clk <=30)?1:0;
   assign led[3] = (g_clk <=40)?1:0;
   assign led[4] = (g_clk <=50)?1:0;
   assign led[5] = (g_clk <=60)?1:0;
   assign led[6] = (g_clk <=70)?1:0;
   assign led[7] = (g_clk <=80)?1:0;
   assign led[8] = (g_clk <=90)?1:0;
   assign led[9] = (g_clk <=99)?1:0;
   
     

   

    
endmodule
