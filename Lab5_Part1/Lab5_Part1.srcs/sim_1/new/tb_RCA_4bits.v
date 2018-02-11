`timescale 1ns / 1ps

module tb_RCA_4bits;
   reg clk;
   reg enable;
   reg [3:0] A,B;
   reg Cin;
   wire [4:0] Q;
   //reg [4:0] Q_1;
    
   RCA_4bits u1(
        .clk(clk),
        .enable(enable),
        .A(A),
        .B(B),
        .Cin(Cin),
        .Q(Q)
   );
   
   
   initial begin
   clk = 0;
   enable = 1;
   
   
   #20
   A = 0;
   B = 0;
   Cin = 0;
  
   
   #20
   A = 4'b0001;
   B = 4'b0101;
   Cin = 0;
   
   #20
   A = 4'b0111;
   B = 4'b0111;
   Cin = 0;
   
   #20
   A = 4'b1000;
   B = 4'b0111;
   Cin = 1;
   
   #20
   A = 4'b1100;
   B = 4'b0100;
   Cin = 0;
   
   #20
   A = 4'b1000;
   B = 4'b1000;
   Cin = 1;
   
   #20
   A = 4'b1001;
   B = 4'b1010;
   Cin = 1;
   
   #20
   A = 4'b1111;
   B = 4'b1111;
   Cin = 0;
      
   end   
   
      
   always 
   #5 clk = ~clk; 
endmodule
