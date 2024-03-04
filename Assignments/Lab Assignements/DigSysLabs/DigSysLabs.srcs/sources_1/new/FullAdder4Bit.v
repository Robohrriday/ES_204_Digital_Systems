`timescale 1ns / 1ps

module FullAdder4Bit(A,B,Cin,Out);

input [3:0]A;
input [3:0]B;
input Cin;
output [4:0]Out;

wire Carry[2:0];

FullAdder1Bit col1(.A(A[0]), .B(B[0]), .Cin(Cin), .Cout(Carry[0]), .Sum(Out[0]));
FullAdder1Bit col2(.A(A[1]), .B(B[1]), .Cin(Carry[0]), .Cout(Carry[1]), .Sum(Out[1]));
FullAdder1Bit col3(.A(A[2]), .B(B[2]), .Cin(Carry[1]), .Cout(Carry[2]), .Sum(Out[2]));
FullAdder1Bit col4(.A(A[3]), .B(B[3]), .Cin(Carry[2]), .Cout(Out[4]), .Sum(Out[3]));

endmodule
