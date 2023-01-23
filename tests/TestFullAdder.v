`timescale 1ns / 1ps

module TestFullAdder();
    reg a;
    reg b;
    reg carryIn;
    wire sum;
    wire carryOut;
    
    FullAdder FullAdder ( .a(a),.b(b), .carryIn(carryIn), .sum(sum), .carryOut(carryOut));
    
    initial begin
    
    a=1'b0;b=1'b0;carryIn=1'b0;
    #10
    
    a=1'b0;b=1'b0;carryIn=1'b1;
    #10
    
    a=1'b1;b=1'b0;carryIn=1'b0;
    #10
    
    a=1'b1;b=1'b0;carryIn=1'b1;
    #10
    
    a=1'b0;b=1'b1;carryIn=1'b0;
    #10
    
    a=1'b0;b=1'b1;carryIn=1'b1;
    #10
    
    a=1'b1;b=1'b1;carryIn=1'b0;
    #10
    
    a=1'b1;b=1'b1;carryIn=1'b1;
    #10
    
    $stop;

    end
endmodule



