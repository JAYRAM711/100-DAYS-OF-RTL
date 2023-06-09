`timescale 1ns / 1ps

module pos_edge_dec(
    input clk,sig,
    output reg out
    );

reg sig_dly; 

always@(posedge clk)
begin
sig_dly <= sig;
out<= sig &(~sig_dly);
end

endmodule
