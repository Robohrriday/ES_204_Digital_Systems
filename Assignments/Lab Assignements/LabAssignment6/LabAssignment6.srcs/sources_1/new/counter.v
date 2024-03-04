`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//00 = Binary Up
//01 = Binary Down
//10 = BCD Up
//11 = BCD Down

//////////////////////////////////////////////////////////////////////////////////


module counter(clk, Out, Mode1, Mode2);
input clk;
input Mode1, Mode2;
output reg [3:0]Out;

wire slow_clk;
clock_divider inst(clk, slow_clk);

initial Out = 4'b0000;

always@ (posedge clk) begin

if (Mode1 && Mode2)

    if (Out == 0)
    Out = 9;
    else
    Out <= (Out-1)%10;
    
else if (Mode1 && ~Mode2)
    Out <= (Out+1)%10;
    
else if(~Mode1 && Mode2)
    Out <= (Out-1);
    
else if(~Mode1 && ~Mode2)
    Out <= (Out+1);
 
    
end

endmodule
