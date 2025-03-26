`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2025 03:30:57 PM
// Design Name: 
// Module Name: fourbit_RCA
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


module fourbit_RCA(output[3:0]S,Cout,input[3:0]A,input[3:0]B,cin);
/*output [3:0]S;
output Cout;
input [3:0]A,B;
input cin;*/
wire c1,c2,c3;
full_adder FA0(A[0],B[0],cin,S[0],c1);
full_adder FA1(A[1],B[1],c1,S[1],c2);
full_adder FA2(A[2],B[2],c2,S[2],c3);
full_adder FA3(A[3],B[3],c3,S[3],Cout);
endmodule
