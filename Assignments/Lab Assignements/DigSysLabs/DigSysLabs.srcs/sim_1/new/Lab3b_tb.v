`timescale 1ns / 1ps

module Lab3b_tb();
reg D;
wire [3:0]Q;
reg reset;
reg clk;

Lab3b uut(D, clk, Q, reset);

initial
begin 
clk = 0;
    forever #5 clk = ~clk;
end

initial
begin
    // Pattern 1
    D = 0; reset = 1;
    #10;
    D = 0; reset = 0;
    #10;
    D = 1; reset = 0;
    #80;
    
    // Pattern 2
    D = 0; reset = 1;
    #10;
    D = 0; reset = 0;
    #10;
    D = 1; reset = 0;
    #10;
    D = 0; reset = 0;
    #10;
    D = 1; reset = 0;
    #10;
    D = 0; reset = 0;
    #10;
    D = 0; reset = 0;
    #10;
    D = 1; reset = 0;
    #10;
    
    $finish();
end  

endmodule
