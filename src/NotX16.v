`timescale 1ns / 1ps

module NotX16(
    input [16:0] in,
    output [16:0] out
    );
    
    assign out = ~ in;

endmodule
