`timescale 1ns / 1ps

module timer
#(parameter final_value=255)(
input clk,rst,enable,
output done);

localparam BITS = $clog2(final_value);

reg [BITS -1 :0] Q_reg,Q_next;
always@(posedge clk, negedge rst)
begin
 if(~rst)
Q_reg <= 'b0;
else if(enable)
Q_reg <= Q_next;
else
Q_reg <= Q_reg;
end

assign done = (Q_reg == final_value);

always@(*)
Q_next = done? 0: Q_reg+1;

endmodule
