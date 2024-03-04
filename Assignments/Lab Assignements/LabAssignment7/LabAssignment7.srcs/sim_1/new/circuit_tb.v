`timescale 1ns / 1ps

module circuit_tb();
reg A, B, C;
wire G3, G4, y;

circuit uut (A, B, C, G3, G4, y);

initial
begin
    A = 0; B = 0; C = 0;
    #50;
    // Transition
    A = 1; B = 0; C = 0;    
    #100;

$finish();
end
endmodule
