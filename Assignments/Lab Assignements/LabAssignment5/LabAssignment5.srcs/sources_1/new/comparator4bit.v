`timescale 1ns / 1ps

module comparator4bit(A, B, f);
    input [3:0]A;
    input [3:0]B;
    output reg f;
    
    always @ (*)
    begin
        if (A == B) f = 1;
        else f = 0;
    end    
endmodule
