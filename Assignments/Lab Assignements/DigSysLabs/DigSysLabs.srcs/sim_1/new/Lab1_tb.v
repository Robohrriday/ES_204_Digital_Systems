`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2024 09:18:39
// Design Name: 
// Module Name: Lab1_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Lab1_tb();

reg a,b,c,d;
wire out;

Lab1 uut(a,b,c,d,out);

initial
begin
a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b0;
#10;
a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b1;
#10;
a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b0;
#10;
a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b1;
#10;
a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b0;
#10;
a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b1;
#10;
a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b0;
#10;
a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b1;
#10;
a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b0;
#10;
a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b1;
#10;
a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b0;
#10;
a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b1;
#10;
a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b0;
#10;
a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b1;
#10;
a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b0;
#10;
a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b1;
#10;
$finish();
end
endmodule
