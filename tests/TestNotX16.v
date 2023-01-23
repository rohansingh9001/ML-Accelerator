`timescale 1ns / 1ps

module TestNotX16();
    reg [15:0] in;

    wire [15:0] out;

    
    NotX16 NotX16_1 ( .in(in), .out(out));
    
    initial begin
    
    in = 16'b0000000000000000;
    #10
    
    in = 16'b0000000100010000;
    #10
    
    in = 16'b0000000001000111;
    #10
    
    in = 16'b0000000110100100;
    #10
    
    in = 16'b0000010010010001;
    #10
    
    in = 16'b0000000010110111;
    #10
    
    in = 16'b0001101000100111;
    #10
    
    in = 16'b1001110001001000;
    #10
    
    $stop;

    end
endmodule
