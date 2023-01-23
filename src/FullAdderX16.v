`timescale 1ns / 1ps

module FullAdderX16(
    input [15:0] a,
    input [15:0] b,
    input carryIn,
    input [15:0] sum,
    input carryOut
    );
    
    wire carry[14:0];
    
    FullAdder FullAdder0 ( .a(a[0]), .b(b[0]), .carryIn(carryIn), .sum(sum[0]), .carryOut(carry[0]));
    FullAdder FullAdder1 ( .a(a[1]), .b(b[1]), .carryIn(carry[0]), .sum(sum[1]), .carryOut(carry[1]));
    FullAdder FullAdder2 ( .a(a[2]), .b(b[2]), .carryIn(carry[1]), .sum(sum[2]), .carryOut(carry[2]));
    FullAdder FullAdder3 ( .a(a[3]), .b(b[3]), .carryIn(carry[2]), .sum(sum[3]), .carryOut(carry[3]));
    FullAdder FullAdder4 ( .a(a[4]), .b(b[4]), .carryIn(carry[3]), .sum(sum[4]), .carryOut(carry[4]));
    FullAdder FullAdder5 ( .a(a[5]), .b(b[5]), .carryIn(carry[4]), .sum(sum[5]), .carryOut(carry[5]));
    FullAdder FullAdder6 ( .a(a[6]), .b(b[6]), .carryIn(carry[5]), .sum(sum[6]), .carryOut(carry[6]));
    FullAdder FullAdder7 ( .a(a[7]), .b(b[7]), .carryIn(carry[6]), .sum(sum[7]), .carryOut(carry[7]));
    FullAdder FullAdder8 ( .a(a[8]), .b(b[8]), .carryIn(carry[7]), .sum(sum[8]), .carryOut(carry[8]));
    FullAdder FullAdder9 ( .a(a[9]), .b(b[9]), .carryIn(carry[8]), .sum(sum[9]), .carryOut(carry[9]));
    FullAdder FullAdder10 ( .a(a[10]), .b(b[10]), .carryIn(carry[9]), .sum(sum[10]), .carryOut(carry[10]));
    FullAdder FullAdder11 ( .a(a[11]), .b(b[11]), .carryIn(carry[10]), .sum(sum[11]), .carryOut(carry[11]));
    FullAdder FullAdder12 ( .a(a[12]), .b(b[12]), .carryIn(carry[11]), .sum(sum[12]), .carryOut(carry[12]));
    FullAdder FullAdder13 ( .a(a[13]), .b(b[13]), .carryIn(carry[12]), .sum(sum[13]), .carryOut(carry[13]));
    FullAdder FullAdder14 ( .a(a[14]), .b(b[14]), .carryIn(carry[13]), .sum(sum[14]), .carryOut(carry[14]));
    FullAdder FullAdder15 ( .a(a[15]), .b(b[15]), .carryIn(carry[14]), .sum(sum[15]), .carryOut(carryOut));

endmodule
