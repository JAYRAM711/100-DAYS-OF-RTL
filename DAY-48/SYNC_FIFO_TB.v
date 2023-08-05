`timescale 1ns / 1ps
`define DATA_WIDTH 8
`define DEPTH 8

module SYNC_FIFO_TB();

reg clk, rst, write, read ;
reg [`DATA_WIDTH-1:0] data_in;
reg [`DATA_WIDTH-1:0] tempdata;
wire [`DATA_WIDTH-1:0] data_out;
wire [3:0] fifo_count;

SYNC_FIFO dut( .clk(clk), .rst(rst), .data_in(data_in), .data_out(data_out), .write(write), .read(read), .empty(empty), .full(full), .fifo_count(fifo_count) );

initial
begin
   clk = 0;
   rst = 1;
        read = 0;
        write = 0;
        tempdata = 0;
        data_in = 0;


        #15 rst = 0;
  
        push(1);
        pop(tempdata);
        pop(tempdata);
        push(10);
        push(20);
        push(30);
        push(40);
        push(50);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        push(60);
        push(70);
        push(80);
        push(90);
        push(100);
        push(110);
        push(120);
        push(130);
        push(140);
        push(150);


        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
       push(140);
        pop(tempdata);
        push(tempdata);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);

        push(5);
        pop(tempdata);
end

always
   #5 clk = ~clk;

task push;
input[7:0] data;


   if( full )
            $display("---Cannot push: FIFO Full---");
        else
        begin
           $display("Pushed ",data );
           data_in = data;
           write= 1;
                @(posedge clk);
                #1 write = 0;
        end

endtask

task pop;
output [7:0] data;

   if( empty )
            $display("---Cannot Pop: FIFO Empty---");
   else
        begin

     read = 1;
          @(posedge clk);

          #1 read = 0;
          data = data_out;
           $display("-------------------------------Poped ", data);

        end
endtask

endmodule