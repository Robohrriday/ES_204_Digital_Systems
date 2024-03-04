`timescale 1ns / 1ps

module Lab4_tb();
reg mstr_reset, clk, en;
wire [3:0]out;

Lab4 uut(mstr_reset, clk, out, en);

initial
begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial
begin
    mstr_reset = 1; en = 0;
    #10;
    mstr_reset = 0; en = 1;
    #320;
    mstr_reset = 1; en = 1;
    #26;
    mstr_reset = 0; en = 1;
    #50;
    mstr_reset = 0;
    #10;
    mstr_reset = 0; en = 0;
    #30;
    $finish();
end
endmodule
