`timescale 1ns / 1ps

module MuxX16(
    input [16:0] in,
    input [3:0] c,
    output out
    );
    
    wire [15:0] temp;
    
    assign temp[0] = ~c[3] & ~c[2] & ~c[1] & ~c[0];
    assign temp[1] = c[3] & ~c[2] & ~c[1] & ~c[0];
    assign temp[2] = ~c[3] & c[2] & ~c[1] & ~c[0];
    assign temp[3] = c[3] & c[2] & ~c[1] & ~c[0];
    assign temp[4] = ~c[3] & ~c[2] & c[1] & ~c[0];
    assign temp[5] = c[3] & ~c[2] & c[1] & ~c[0];
    assign temp[6] = ~c[3] & c[2] & c[1] & ~c[0];
    assign temp[7] = c[3] & c[2] & c[1] & ~c[0];
    assign temp[8] = ~c[3] & ~c[2] & ~c[1] & c[0];
    assign temp[9] = c[3] & ~c[2] & ~c[1] & c[0];
    assign temp[10] = ~c[3] & c[2] & ~c[1] & c[0];
    assign temp[11] = c[3] & c[2] & ~c[1] & c[0];
    assign temp[12] = ~c[3] & ~c[2] & c[1] & c[0];
    assign temp[13] = c[3] & ~c[2] & c[1] & c[0];
    assign temp[14] = ~c[3] & c[2] & c[1] & c[0];
    assign temp[15] = c[3] & c[2] & c[1] & c[0];
    
    assign out = temp[0]|temp[1]|temp[2]|temp[3]|temp[4]|temp[5]|temp[6]|temp[7]|temp[8]|temp[9]|temp[10]|temp[11]|temp[12]|temp[13]|temp[14]|temp[15];
    
     
endmodule
