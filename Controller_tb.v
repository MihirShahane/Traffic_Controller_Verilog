`timescale 1ns / 1ps
// This module contains the testbench which is used to simulate the Controller Module.
module Controller_tb;
    reg clk;
    reg rst;
    wire [2:0] y;

    Controller uut (
        .clk(clk), 
        .rst(rst), 
        .y(y)
    );

    always begin
        #10 clk = ~clk;
    end

    initial begin
        clk = 0;
        rst = 1;
        #40;
        rst = 0;
        #1000;
        
    end
      
endmodule
