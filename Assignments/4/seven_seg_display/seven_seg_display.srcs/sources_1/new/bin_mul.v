`timescale 1ns / 1ps

module bin_mul(clk, reset, A, B, Anode_Activate, LED_out);

parameter n=4;
input clk;
input reset;
input [n-1:0] A;
input [n-1:0] B;
reg [2*n-1:0] OUT;
output [3:0] Anode_Activate;
output [6:0] LED_out;

integer i;

always @(*)
begin
    OUT = 0;
    for(i=0;i<n;i=i+1)
    begin
        if(B[i]==1) begin
            OUT = OUT + (A<<i);
        end
    end
end

seven_seg_display inst1(.clock_100Mhz(clk), .reset(reset), .prod(OUT), .Anode_Activate(Anode_Activate), .LED_out(LED_out));

endmodule