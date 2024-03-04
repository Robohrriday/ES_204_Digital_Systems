`timescale 1ns / 1ps

module Lab3a(D, clk, Q, reset);

input D; 
input clk, reset;
output reg [3:0]Q;

always @(posedge clk or posedge reset)
begin
    if (reset)
    begin
        Q[3] <= 0;
        Q[2] <= 0;
        Q[1] <= 0;
        Q[0] <= 0;
    end
    else
    begin
        Q[3] <= D;
        Q[2] <= Q[3];
        Q[1] <= Q[2];
        Q[0] <= Q[1];
    end     
       
end
endmodule

