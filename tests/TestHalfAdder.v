`timescale 1ns / 1ps

module TestHalfAdder();
    reg a;
    reg b;
    wire sum;
    wire carry;
    
    HalfAdder halfAdder ( .a(a),.b(b), .sum(sum), .carry(carry));
    
    initial begin
    
    a=1'b0;b=1'b0;
    #10
    
    a=1'b0;b=1'b1;
    #10
    
    a=1'b1;b=1'b0;
    #10
    
    a=1'b1;b=1'b1;
    #10
    
    $stop;

    end
endmodule


