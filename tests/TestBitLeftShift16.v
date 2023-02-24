`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2023 23:10:41
// Design Name: 
// Module Name: test_RightShiftX16
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps
module TestBitLeftShift16();
    reg [15:0] a;
    reg [15:0] b;
    wire [15:0] out;
    
    BitShiftLeft16 BitShiftLeft16_1 ( .a(a), .b(b), .out(out));
    
    initial begin
    
    a = 16'b0000000000000000;
    b = 16'b0000000000000000;
    #10
    
    a = 16'b0000000000000001;
    b = 16'b0000000000000001;
    #10
    
    a = 16'b0000000000000001;
    b = 16'b0000000000000010;
    #10
    
    a = 16'b0000000000000001;
    b = 16'b0000000000001111;
    #10
    
    $stop;

    end
endmodule
