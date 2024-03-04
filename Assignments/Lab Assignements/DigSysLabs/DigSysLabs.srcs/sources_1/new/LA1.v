`timescale 1ns / 1ps
/*
Number: (Encoding)
2 -> 000
3 -> 001
4 -> 010
5 -> 011
6 -> 100
7 -> 101
8 -> 110
9 -> 111

Range:
Convert decimal representation of any number from 0 to 31 (both inclusive) to 5-bit binary (a5,a4,a3,a2,a1,a0)
*/

module LA1(number,range,multiples);
input [2:0]number;
input [4:0]range;
output reg [0:31]multiples;
integer rng,step,i,j;
    
    always @ (number,range,multiples)
    begin
        for (i=0; i<=31; i=i+1) 
            begin 
            multiples[i] = 0;
            end
        rng = 16*range[4] + 8*range[3] + 4*range[2] + 2*range[1] + 1*range[0];  
        if(number[2]==0 & number[1]==0 & number[0]==0)
            begin
            step = 2;
            end
        else if(number[2]==0 & number[1]==0 & number[0]==1)
            begin
            step = 3;
            end
        else if(number[2]==0 & number[1]==1 & number[0]==0)
            begin
            step = 4;
            end
        else if(number[2]==0 & number[1]==1 & number[0]==1)
            begin
            step = 5;
            end
        else if(number[2]==1 & number[1]==0 & number[0]==0)
            begin
            step = 6;
            end
        else if(number[2]==1 & number[1]==0 & number[0]==1)
            begin
            step = 7;
            end
        else if(number[2]==1 & number[1]==1 & number[0]==0)
            begin
            step = 8;
            end
        else
            begin
            step = 9;
            end
    
    for (j=0; j<=rng; j=j+step) 
        begin 
        multiples[j] = 1;
        end
    end
endmodule