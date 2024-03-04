`timescale 1ns / 1ps

module FullAdder1Bit_tb();
reg A,B,Cin;
wire Cout,Sum;
    
    FullAdder1Bit uut(A,B,Cin,Cout,Sum);
    
    initial
    begin
    A = 0; B = 0; Cin = 0;
    #10;
    A = 0; B = 1; Cin = 0;
    #10;
    A = 1; B = 0; Cin = 0;
    #10;
    A = 1; B = 1; Cin = 0;
    #10;
    A = 0; B = 0; Cin = 1;
    #10;
    A = 0; B = 1; Cin = 1;
    #10;
    A = 1; B = 0; Cin = 1;
    #10;
    A = 1; B = 1; Cin = 1;
    #10;
    $finish();
    end
endmodule
