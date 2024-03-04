`timescale 1ns / 1ps

module Lab4(mstr_reset, clk, out, en);
input mstr_reset, clk, en;
output [3:0]out;
    
    and (clk_en, clk, en);
    TFF tff0(.T(1), .Q(out[0]), .reset(mstr_reset), .clk(clk_en));
    TFF tff1(.T(1), .Q(out[1]), .reset(mstr_reset), .clk(~out[0]));
    TFF tff2(.T(1), .Q(out[2]), .reset(mstr_reset), .clk(~out[1]));
    TFF tff3(.T(1), .Q(out[3]), .reset(mstr_reset), .clk(~out[2]));
endmodule
