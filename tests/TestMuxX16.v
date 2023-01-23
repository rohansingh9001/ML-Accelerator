`timescale 1ns / 1ps

module TestMuxX16();
    reg [15:0] in;
    reg [3:0] c;
    
    wire out;
    
    MuxX16 MuxX16_1 ( .in(in), .c(c), .out(out));
    
    initial begin
    
    in = 16'b0000000000000000;
    c = 4'b0000;
    #10
    
    in = 16'b0000000000000001;
    c = 4'b0000;
    #10
    
    in = 16'b0000000000000010;
    c = 4'b0001;
    #10
    
    in = 16'b0000000000000100;
    c = 4'b0010;
    #10
    
    in = 16'b0000000000001000;
    c = 4'b0011;
    #10
    
    in = 16'b1000000000000000;
    c = 4'b1111;
    #10
    
    in = 16'b0100000000000000;
    c = 4'b1110;
    #10
    
    in = 16'b0010000000000000;
    c = 4'b1101;
    #10
    
    $stop;

    end
endmodule

