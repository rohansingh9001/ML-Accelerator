`timescale 1ns / 1ps

module TestAndX16();
    reg [15:0] a;
    reg [15:0] b;
    
    wire [15:0] out;

    
    AndX16 AndX16_1 ( .a(a), .b(b), .out(out));
    
    initial begin
    
    a = 16'b0000000000000000;
    b = 16'b0000000000000000;
    #10
    
    a = 16'b0000000100010000;
    b = 16'b0000000001000111;
    #10
    
    a = 16'b0000000110100100;
    b = 16'b0000010010010001;
    #10
    
    a = 16'b0000000010110111;
    b = 16'b0001101000100111;
    #10
    
    a = 16'b1001110001001000;
    b = 16'b0000000000000000;
    #10
    
    $stop;

    end
endmodule
