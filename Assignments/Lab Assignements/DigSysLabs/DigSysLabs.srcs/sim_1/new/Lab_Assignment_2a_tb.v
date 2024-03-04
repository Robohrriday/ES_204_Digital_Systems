`timescale 1ns / 1ps

/*
A = First Number
B = Second Number
Mode = 1 (for Subtraction)
       0 (for Addition)
*/

module Lab_Assignment_2a_tb();
reg [7:0]A;
reg [7:0]B;
reg mode;
reg carry_borrow_in;
wire carry_borrow_out;
wire [7:0]C;

Lab_Assignment_2a uut(A,B,carry_borrow_in,carry_borrow_out,C,mode);

    initial
    begin
    A = 8'd255; B = 8'd255; carry_borrow_in = 0; mode = 0;
    #10;
    A = 8'd250; B = 8'd100; carry_borrow_in = 0; mode = 0;
    #10;    
    A = 8'd100; B = 8'd255; carry_borrow_in = 0; mode = 1;
    #10;
    A = 8'd101; B = 8'd51; carry_borrow_in = 0; mode = 1;
    #10
    $finish();
    end
endmodule
