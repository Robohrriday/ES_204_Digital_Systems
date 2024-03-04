`timescale 1ns / 1ps

module circuit(A,B,C,G3,G4,y);
input A,B,C;
output G3, G4, y;
    not #10 n1(A1, A);
    not #10 n2(B1, B);
    or #10 o1(G1, A, B);
    or #10 o2(G2, A1, C);
    and #40 a1(G4, A, B1);
    and #10 a2(G3, G1, G2);
    or #10 o3(y, G3, G4);
endmodule
