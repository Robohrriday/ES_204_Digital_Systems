`timescale 1ns / 1ps


module circuit2(A, B, C, out);
input A, B, C;
output out;
    not #10 (B1, B);
    and #10 (D, A, B1);
    and #10 (E, C, B);
    or #10 (out, D, E);
    
endmodule
