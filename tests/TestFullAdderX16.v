`timescale 1ns / 1ps

module TestFullAdderX16();
    reg [15:0] a;
    reg [15:0] b;
    reg carryIn;
    wire [15:0] sum;
    wire carryOut;
    
    FullAdderX16 FullAdderX16_1 ( .a(a), .b(b), .carryIn(carryIn), .sum(sum), .carryOut(carryOut));
    
    initial begin
    
    a = 16'b0000000000000000;
    b = 16'b0000000000000000;
    carryIn = 1'b0;
    #10
    
    a = 16'b0000000000000000;
    b = 16'b0000000000000000;
    carryIn = 1'b1;
    #10
    
    a = 16'b0000000100010000;
    b = 16'b0000000001000111;
    carryIn = 1'b0;
    #10
    
    a = 16'b0000000110100100;
    b = 16'b0000010010010001;
    carryIn = 1'b1;
    #10
    
    a = 16'b0000000010110111;
    b = 16'b0001101000100111;
    carryIn = 1'b0;
    #10
    
    a = 16'b1001110001001000;
    b = 16'b0000000000000000;
    carryIn = 1'b1;
    #10
    
    $stop;

    end
endmodule

