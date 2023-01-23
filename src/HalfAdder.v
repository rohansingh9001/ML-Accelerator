`timescale 1ns / 1ps

module HalfAdder(a, b, sum, carry);
    input a;
    input b;
    output sum;
    output carry;


    assign carry = a & b;    
    assign sum = a ^ b;

endmodule
