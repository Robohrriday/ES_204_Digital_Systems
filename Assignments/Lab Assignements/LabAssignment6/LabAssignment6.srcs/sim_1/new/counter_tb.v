`timescale 1ns / 1ps


module counter_tb();
reg Mode1, Mode2, clk;
wire [3:0]Out;

initial begin
clk = 0;
forever #5 clk = ~clk;
end

counter uut(.clk(clk), .Out(Out), .Mode1(Mode1), .Mode2(Mode2));
initial begin

Mode1 = 1; Mode2 = 1; #200;

Mode1 = 1; Mode2 = 0; #200;

Mode1 = 0; Mode2 = 1; #200;

Mode1 = 0; Mode2 = 0; #200;



end
endmodule
