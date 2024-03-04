`timescale 1ns / 1ps

module TFF(T,Q,reset,clk);
input T,reset,clk;
output reg Q;

always @ (posedge clk or posedge reset)
begin
    if (reset)
        Q <= 0;
    else if (T)
        Q <= ~Q;
    else
        Q <= Q;
    end
endmodule
