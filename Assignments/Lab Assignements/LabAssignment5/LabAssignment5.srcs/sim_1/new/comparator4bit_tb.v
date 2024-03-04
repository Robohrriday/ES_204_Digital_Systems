`timescale 1ns / 1ps


module comparator4bit_tb();
reg [3:0]A;
reg [3:0]B;
wire f;

comparator4bit uut(A,B,f);
initial
begin
    A = 15; B = 6;
    #10;
    A = 1; B = 2;
    #10;
    A = 5; B = 5;
    #10;
    A = 15; B = 15;
    #10;
    $finish();
end
endmodule
