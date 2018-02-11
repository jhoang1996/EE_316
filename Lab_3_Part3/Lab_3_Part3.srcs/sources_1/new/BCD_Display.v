`timescale 1ns / 1ps

module BCD_Display(
    s1,
    s2,
    s3,
    s4,
    a,
    b,
    c,
    d,
    e,
    f,
    g,
    AN0,
    AN1,
    AN2,
    AN3
    );
    
    output reg AN0 = 1'b0;
    output reg AN1 = 1'b1; 
    output reg AN2 = 1'b1; 
    output reg AN3 = 1'b1;  
    input s1;
    input s2;
    input s3;
    input s4;
    output a;
    output b;
    output c;
    output d;
    output e;
    output f;
    output g;
           
    wire s1_not, s2_not, s3_not, s4_not;
    wire a0, a1, a2, a3;
    wire b0, b1, b2, b3, b4;
    wire c0, c1, c2, c3;
    wire d0, d1, d2, d3, d4; 
    wire e0, e1, e2, e3, e4;
    wire f0, f1, f2, f3, f4;
    wire g0, g1, g2, g3;
    
    not s1_n (s1_not, s1);
    not s2_n (s2_not, s2);
    not s3_n (s3_not, s3);
    not s4_n (s4_not, s4);
    
    and a_gate0 (a0, s2_not, s3_not, s4_not);
    and a_gagte1 (a1, s1, s2_not, s3_not);
    and a_gate2 (a2, s1_not, s3);
    and a_gate3 (a3, s1_not, s2, s4);
    nor (a, a0, a1, a2, a3);
    
    and b_gate0 (b0, s1_not, s2_not);
    and b_gate1 (b1, s1_not, s3, s4);
    and b_gate2 (b2, s1_not, s3_not, s4_not);
    and b_gate3 (b3, s2_not, s3_not, s4_not);
    and b_gate4 (b4, s1, s2_not, s3_not);
    nor (b, b0, b1, b2, b3, b4);
    
    and c_gate0 (c0, s1_not, s3_not);
    and c_gate1 (c1, s1_not, s2);
    and c_gate2 (c2, s2_not, s3_not);    
    and c_gate3 (c3, s1_not, s3, s4);
    nor (c, c0, c1, c2, c3);
    
    and d_gate0 (d0, s2_not, s3_not, s4_not);
    and d_gate1 (d1, s1_not, s2, s3_not, s4);
    and d_gate2 (d2, s1_not, s2_not, s3);
    and d_gate3 (d3, s1_not, s3, s4_not);
    nor (d, d0, d1, d2, d3);
    
    and e_gate0 (e0, s2_not, s3_not, s4_not);
    and e_gate1 (e1, s1_not, s3, s4_not);
    nor (e, e0, e1);
    
    and f_gate0 (f0, s2_not, s3_not, s4_not);
    and f_gate1 (f1, s1_not, s3_not, s4_not);
    and f_gate2 (f2, s1_not, s2, s3_not);
    and f_gate3 (f3, s1, s2_not, s3_not);
    and f_gate4 (f4, s1_not, s2, s3, s4_not);
    nor (f, f0, f1, f2, f3, f4);
    
    and g_gate0 (g0, s1, s2_not, s3_not);
    and g_gate1 (g1, s1_not, s2, s3_not);
    and g_gate2 (g2, s1_not, s2_not, s3);
    and g_gate3 (g3, s1_not, s3, s4_not);
    nor (g, g0, g1, g2, g3); 
  
     
endmodule
