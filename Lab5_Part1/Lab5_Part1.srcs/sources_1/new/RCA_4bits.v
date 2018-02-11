`timescale 1ns / 1ps

module RCA_4bits(
    input clk,
    input enable,
    input [3:0] A,B,
    input Cin,
    output [4:0] Q
    );
 
    wire [3:0] C;
    wire [3:0] S;
    wire [4:0] Q_1;
    
    full_adder FA0(
        .A(A[0]),
        .B(B[0]),
        .Cin(Cin),
        .S(S[0]),
        .Cout(C[0])
    );
    
    full_adder FA1(
         .A(A[1]),
         .B(B[1]),
         .Cin(C[0]),
         .S(S[1]),
         .Cout(C[1])
    );
    
    full_adder FA2(
          .A(A[2]),
          .B(B[2]),
          .Cin(C[1]),
          .S(S[2]),
          .Cout(C[2])
    );
    
    full_adder FA3(
         .A(A[3]),
         .B(B[3]),
         .Cin(C[2]),
         .S(S[3]),
         .Cout(C[3])
    );
    
    assign Q_1 = {C[3], S[3], S[2], S[1], S[0]};
    
    register_logic r1(
        .clk(clk),
        .enable(enable),
        .Data(Q_1),
        .Q(Q)
    );
endmodule
