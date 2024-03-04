`timescale 1ns / 1ps

module circuit2_tb();
reg A, B, C;
wire Out;

circuit2 uut (A, B, C, Out);

initial
begin
    A = 1; C = 1; B = 1;
    #20;
    B = 0;
    #100;
        
$finish();
end
endmodule
