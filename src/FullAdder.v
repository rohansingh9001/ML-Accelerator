`timescale 1ns / 1ps

module FullAdder(
    input a,
    input b,
    input carryIn,
    output sum,
    output carryOut
    );
    wire carry;
    wire temp1;
    wire temp2;
    
    HalfAdder halfAdder1 ( .a(a), .b(b), .sum(temp), .carry(carry));
    HalfAdder halfAdder2 ( .a(temp), .b(carryIn), .sum(sum), .carry(temp2));
    
    assign carryOut = temp2 ^ carry;
    
endmodule
