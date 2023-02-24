`timescale 1ns / 1ps

module BitRightShift16(
    input [15:0] a,
    input [15:0] b,
    output [15:0] out
    );
    wire [15:0] temp;
    wire [0:0] z = 1'b0;
    assign temp[0] = a[0];
    assign temp[1] = a[1];
    assign temp[2] = a[2];
    assign temp[3] = a[3];
    
    assign temp[4] = a[4];
    assign temp[5] = a[5];
    assign temp[6] = a[6];
    assign temp[7] = a[7];
    
    assign temp[8] = a[8];
    assign temp[9] = a[9];
    assign temp[10] = a[10];
    assign temp[11] = a[11];
    
    assign temp[12] = a[12];
    assign temp[13] = a[13];
    assign temp[14] = a[14];
    assign temp[15] = a[15];
   // MuxX16 MuxX1616( .in(temp), .c(b[3:0]), .out(out2[0]));
    MuxX16 MuxX160( .in(temp), .c(b[3:0]), .out(out[0]));
    wire [15:0] temp2;
    assign temp2[0] = a[1];
    assign temp2[1] = a[2];
    assign temp2[2] = a[3];
    assign temp2[3] = a[4];
    
    assign temp2[4] = a[5];
    assign temp2[5] = a[6];
    assign temp2[6] = a[7];
    assign temp2[7] = a[8];
    
    assign temp2[8] = a[9];
    assign temp2[9] = a[10];
    assign temp2[10] = a[11];
    assign temp2[11] = a[12];
    
    assign temp2[12] = a[13];
    assign temp2[13] = a[14];
    assign temp2[14] = a[15];
    assign temp2[15] = z;
    //assign temp2[1:0] = a[0:1];
    //assign temp2[2:15] = a[15:2];
    MuxX16 MuxX161( .in(temp2), .c(b[3:0]), .out(out[1]));
    //assign temp2[2:0] = a[0:2];
    //assign temp2[3:15] = a[15:3];
    wire [15:0] temp3;
    assign temp3[0] = a[2];
    assign temp3[1] = a[3];
    assign temp3[2] = a[4];
    assign temp3[3] = a[5];
    
    assign temp3[4] = a[6];
    assign temp3[5] = a[7];
    assign temp3[6] = a[8];
    assign temp3[7] = a[9];
    
    assign temp3[8] = a[10];
    assign temp3[9] = a[11];
    assign temp3[10] = a[12];
    assign temp3[11] = a[13];
    
    assign temp3[12] = a[14];
    assign temp3[13] = a[15];
    assign temp3[14] = z;
    assign temp3[15] = z;
    MuxX16 MuxX162( .in(temp3), .c(b[3:0]), .out(out[2]));
    //assign temp2[3:0] = a[0:3];
    //assign temp2[4:15] = a[15:4];
    wire [15:0] temp4;
    assign temp4[0] = a[3];
    assign temp4[1] = a[4];
    assign temp4[2] = a[5];
    assign temp4[3] = a[6];
    
    assign temp4[4] = a[7];
    assign temp4[5] = a[8];
    assign temp4[6] = a[9];
    assign temp4[7] = a[10];
    
    assign temp4[8] = a[11];
    assign temp4[9] = a[12];
    assign temp4[10] = a[13];
    assign temp4[11] = a[14];
    
    assign temp4[12] = a[15];
    assign temp4[13] = z;
    assign temp4[14] = z;
    assign temp4[15] = z;
    MuxX16 MuxX163( .in(temp4), .c(b[3:0]), .out(out[3]));
    //assign temp2[4:0] = a[0:4];
    //assign temp2[5:15] = a[15:5];
    wire [15:0] temp5;
    assign temp5[0] = a[4];
    assign temp5[1] = a[5];
    assign temp5[2] = a[6];
    assign temp5[3] = a[7];
    
    assign temp5[4] = a[8];
    assign temp5[5] = a[9];
    assign temp5[6] = a[10];
    assign temp5[7] = a[11];
    
    assign temp5[8] = a[12];
    assign temp5[9] = a[13];
    assign temp5[10] = a[14];
    assign temp5[11] = a[15];
    
    assign temp5[12] = z;
    assign temp5[13] = z;
    assign temp5[14] = z;
    assign temp5[15] = z;
    MuxX16 MuxX164( .in(temp5), .c(b[3:0]), .out(out[4]));
    //assign temp2[5:0] = a[0:5];
    //assign temp2[6:15] = a[15:6];
    wire [15:0] temp6;
    assign temp6[0] = a[5];
    assign temp6[1] = a[6];
    assign temp6[2] = a[7];
    assign temp6[3] = a[8];
    
    assign temp6[4] = a[9];
    assign temp6[5] = a[10];
    assign temp6[6] = a[11];
    assign temp6[7] = a[12];
    
    assign temp6[8] = a[13];
    assign temp6[9] = a[14];
    assign temp6[10] = a[15];
    assign temp6[11] = z;
    
    assign temp6[12] = z;
    assign temp6[13] = z;
    assign temp6[14] = z;
    assign temp6[15] = z;
    MuxX16 MuxX165( .in(temp6), .c(b[3:0]), .out(out[5]));
    //assign temp2[6:0] = a[0:6];
    //assign temp2[7:15] = a[15:7];
    wire [15:0] temp7;
    assign temp7[0] = a[6];
    assign temp7[1] = a[7];
    assign temp7[2] = a[8];
    assign temp7[3] = a[9];
    
    assign temp7[4] = a[10];
    assign temp7[5] = a[11];
    assign temp7[6] = a[12];
    assign temp7[7] = a[13];
    
    assign temp7[8] = a[14];
    assign temp7[9] = a[15];
    assign temp7[10] = z;
    assign temp7[11] = z;
    
    assign temp7[12] = z;
    assign temp7[13] = z;
    assign temp7[14] = z;
    assign temp7[15] = z;
    MuxX16 MuxX166( .in(temp7), .c(b[3:0]), .out(out[6]));
    //assign temp2[7:0] = a[0:7];
   // assign temp2[8:15] = a[15:8];
   wire [15:0] temp8;
    assign temp8[0] = a[7];
    assign temp8[1] = a[8];
    assign temp8[2] = a[9];
    assign temp8[3] = a[10];
    
    assign temp8[4] = a[11];
    assign temp8[5] = a[12];
    assign temp8[6] = a[13];
    assign temp8[7] = a[14];
    
    assign temp8[8] = a[15];
    assign temp8[9] = z;
    assign temp8[10] = z;
    assign temp8[11] = z;
    
    assign temp8[12] = z;
    assign temp8[13] = z;
    assign temp8[14] = z;
    assign temp8[15] = z;
    MuxX16 MuxX167( .in(temp8), .c(b[3:0]), .out(out[7]));
    //assign temp2[8:0] = a[0:8];
    //assign temp2[9:15] = a[15:9];
    wire [15:0] temp9;
    assign temp9[0] = a[8];
    assign temp9[1] = a[9];
    assign temp9[2] = a[10];
    assign temp9[3] = a[11];
    
    assign temp9[4] = a[12];
    assign temp9[5] = a[13];
    assign temp9[6] = a[14];
    assign temp9[7] = a[15];
    
    assign temp9[8] = z;
    assign temp9[9] = z;
    assign temp9[10] = z;
    assign temp9[11] = z;
    
    assign temp9[12] = z;
    assign temp9[13] = z;
    assign temp9[14] = z;
    assign temp9[15] = z;
    MuxX16 MuxX168( .in(temp9), .c(b[3:0]), .out(out[8]));
    //assign temp2[9:0] = a[0:9];
    //assign temp2[10:15] = a[15:10];
    wire [15:0] tempa;
    assign tempa[0] = a[9];
    assign tempa[1] = a[10];
    assign tempa[2] = a[11];
    assign tempa[3] = a[12];
    
    assign tempa[4] = a[13];
    assign tempa[5] = a[14];
    assign tempa[6] = a[15];
    assign tempa[7] = z;
    
    assign tempa[8] = z;
    assign tempa[9] = z;
    assign tempa[10] = z;
    assign tempa[11] = z;
    
    assign tempa[12] = z;
    assign tempa[13] = z;
    assign tempa[14] = z;
    assign tempa[15] = z;
    MuxX16 MuxX169( .in(tempa), .c(b[3:0]), .out(out[9]));
    //assign temp2[10:0] = a[0:10];
    //assign temp2[11:15] = a[15:11];
    wire [15:0] tempb;
    assign tempb[0] = a[10];
    assign tempb[1] = a[11];
    assign tempb[2] = a[12];
    assign tempb[3] = a[13];
    
    assign tempb[4] = a[14];
    assign tempb[5] = a[15];
    assign tempb[6] = z;
    assign tempb[7] = z;
    
    assign tempb[8] = z;
    assign tempb[9] = z;
    assign tempb[10] = z;
    assign tempb[11] = z;
    
    assign tempb[12] = z;
    assign tempb[13] = z;
    assign tempb[14] = z;
    assign tempb[15] = z;
    MuxX16 MuxX1610( .in(tempb), .c(b[3:0]), .out(out[10]));
    //assign temp2[11:0] = a[0:11];
    //assign temp2[12:15] = a[15:12];
    wire [15:0] tempc;
    assign tempc[0] = a[11];
    assign tempc[1] = a[12];
    assign tempc[2] = a[13];
    assign tempc[3] = a[14];
    
    assign tempc[4] = a[15];
    assign tempc[5] = z;
    assign tempc[6] = z;
    assign tempc[7] = z;
    
    assign tempc[8] = z;
    assign tempc[9] = z;
    assign tempc[10] = z;
    assign tempc[11] = z;
    
    assign tempc[12] = z;
    assign tempc[13] = z;
    assign tempc[14] = z;
    assign tempc[15] = z;
    MuxX16 MuxX1611( .in(tempc), .c(b[3:0]), .out(out[11]));
    //assign temp2[12:0] = a[0:12];
   // assign temp2[13:15] = a[15:13];
   wire [15:0] tempd;
    assign tempd[0] = a[12];
    assign tempd[1] = a[13];
    assign tempd[2] = a[14];
    assign tempd[3] = a[15];
    
    assign tempd[4] = z;
    assign tempd[5] = z;
    assign tempd[6] = z;
    assign tempd[7] = z;
    
    assign tempd[8] = z;
    assign tempd[9] = z;
    assign tempd[10] = z;
    assign tempd[11] = z;
    
    assign tempd[12] = z;
    assign tempd[13] = z;
    assign tempd[14] = z;
    assign tempd[15] = z;
    MuxX16 MuxX1612( .in(tempd), .c(b[3:0]), .out(out[12]));
    //assign temp2[13:0] = a[0:13];
    //assign temp2[14:15] = a[15:14];
    wire [15:0] tempe;
    assign tempe[0] = a[13];
    assign tempe[1] = a[14];
    assign tempe[2] = a[15];
    assign tempe[3] = z;
    
    assign tempe[4] = z;
    assign tempe[5] = z;
    assign tempe[6] = z;
    assign tempe[7] = z;
    
    assign tempe[8] = z;
    assign tempe[9] = z;
    assign tempe[10] = z;
    assign tempe[11] = z;
    
    assign tempe[12] = z;
    assign tempe[13] = z;
    assign tempe[14] = z;
    assign tempe[15] = z;
    MuxX16 MuxX1613( .in(tempe), .c(b[3:0]), .out(out[13]));
    //assign temp2[14:0] = a[0:14];
    //assign temp2[15] = a[15];
    wire [15:0] tempf;
    assign tempf[0] = a[14];
    assign tempf[1] = a[15];
    assign tempf[2] = z;
    assign tempf[3] = z;
    
    assign tempf[4] = z;
    assign tempf[5] = z;
    assign tempf[6] = z;
    assign tempf[7] = z;
    
    assign tempf[8] = z;
    assign tempf[9] = z;
    assign tempf[10] = z;
    assign tempf[11] = z;
    
    assign tempf[12] = z;
    assign tempf[13] = z;
    assign tempf[14] = z;
    assign tempf[15] = z;
    MuxX16 MuxX1614( .in(tempf), .c(b[3:0]), .out(out[14]));
    //assign temp2[15:0] = a[0:15];
    wire [15:0] tempg;
    assign tempg[0] = a[15];
    assign tempg[1] = z;
    assign tempg[2] = z;
    assign tempg[3] = z;
    
    assign tempg[4] = z;
    assign tempg[5] = z;
    assign tempg[6] = z;
    assign tempg[7] = z;
    
    assign tempg[8] = z;
    assign tempg[9] = z;
    assign tempg[10] = z;
    assign tempg[11] = z;
    
    assign tempg[12] = z;
    assign tempg[13] = z;
    assign tempg[14] = z;
    assign tempg[15] = z;
    MuxX16 MuxX1615( .in(tempg), .c(b[3:0]), .out(out[15]));
endmodule