`timescale 1ns / 1ps

module clock_divider(
    input clk,
    output reg clk_divided=0
    );
    
    integer counter_value=0;
    
    always@(posedge clk)
    begin
    
    if(counter_value==49999999)
    begin
    counter_value <= 0;
    clk_divided <= ~clk_divided;
    end
    else
    begin
    counter_value <= counter_value + 1;
    clk_divided <= clk_divided;
    end

    end
    
endmodule
