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
module TestBitRightShift16();
    reg [15:0] a;
    reg [15:0] b;
    wire [15:0] out;
    
    BitRightShift16 RightShiftX16_1 ( .a(a), .b(b), .out(out));
    
    initial begin
    
    a = 16'b0000000000000111;
    b = 16'b0000000000000010;
    #10
    
    a = 16'b0000000000000111;
    b = 16'b0000000000000001;
    #10
    
    a = 16'b0000000000001111;
    b = 16'b0000000000000001;
    #10
    
    a = 16'b0000000000111111;
    b = 16'b0000000000000101;
    #10
    
    
    $stop;

    end
endmodule
