`timescale 1ns / 1ps

module top_module(
      input clk,rst,
      input noisy_in,
      output debounce_out);
      
wire timer_done, timer_reset;

debouncing_switch fsm0(
      .clk(clk),
      .rst(rst),
      .noisy_in(noisy_in),
      .timer_done(timer_done),
      .debounce_out(debounce_out),
      .timer_reset(timer_reset));
      
      
timer #(.final_value(1_999_999)) t0 (
      .clk(clk),
      .rst(~timer_reset),
      .enable(~timer_reset),
      .done(timer_done)
      );
      
endmodule