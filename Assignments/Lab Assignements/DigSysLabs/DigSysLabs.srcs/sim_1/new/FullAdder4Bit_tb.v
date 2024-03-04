`timescale 1ns / 1ps

module FullAdder4Bit_tb();
reg [3:0]A;
reg [3:0]B;
reg Cin;
wire [4:0]Out;

    FullAdder4Bit uut(A,B,Cin,Out);
    initial
    begin
    A = 4'd14; B = 4'd7; Cin = 1;
    #10;
    A = 4'd3; B = 4'd8; Cin = 0;
    #10;
    A = 4'd15; B = 4'd15; Cin = 1;
    #10;
    A = 4'd4; B = 4'd2; Cin = 0;
    #10;  
    
    $finish();
    end
endmodule
