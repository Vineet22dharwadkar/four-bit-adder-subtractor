`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2025 02:53:26 PM
// Design Name: 
// Module Name: fourbit_AS
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


module fourbit_AS (
    output [3:0] S,   // 4-bit sum/difference output
    output Cout,      // Carry out
    input [3:0] A,    // 4-bit input A
    input [3:0] B,    // 4-bit input B
    input M,          // Mode (M = 0 for addition, M = 1 for subtraction)
    input cin         // Initial carry input
);
    // Internal signals
    wire f, t,Q;                // Carry signals
    wire [3:0] p, q, R, g;    // Intermediate signals

    // XOR gates to implement B XOR M (for subtraction when M = 1)
    xor x1(p[0], B[0], M);  // XOR with M for complementing B when M = 1
    xor x2(p[1], B[1], M);
    xor x3(p[2], B[2], M);
    xor x4(p[3], B[3], M);

    // Generate the Q signal (internal carry control)
    not n1(t,f);  // f is an internal unused signal
    and a1(Q,M,f); // Generates internal Q based on mode M and other signals

    // XOR gates to create R (used in second 4-bit RCA)
    xor x5(R[0], q[0], Q);
    xor x6(R[1], q[1], Q);
    xor x7(R[2], q[2], Q);
    xor x8(R[3], q[3], Q);

    // Set all g bits to logic 0 (g[3:0] used in the second RCA)
    assign g[0] = 1'b0;
    assign g[1] = 1'b0;
    assign g[2] = 1'b0;
    assign g[3] = 1'b0;

    // Instantiate the first 4-bit Ripple Carry Adder (RCA)
    fourbit_RCA M1(q[3:0],f,A[3:0],p[3:0],cin);

    // Instantiate the second 4-bit RCA to handle the final addition/subtraction
    fourbit_RCA M2(S[3:0],Cout,R[3:0],g[3:0],Q);

endmodule
