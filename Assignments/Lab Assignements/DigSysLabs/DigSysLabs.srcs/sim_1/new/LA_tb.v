`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2024 21:19:35
// Design Name: 
// Module Name: LA_tb
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


module LA_tb();
reg [2:0]number;
reg [4:0]range;
wire [0:31]multiples;

LA1 uut(number,range,multiples);

initial
begin
number = 3'b101; range = 5'b10101;
#10;
number = 3'b011; range = 5'b01111;
#10;
number = 3'b001; range = 5'b11111;
#10;
$finish();
end
endmodule
