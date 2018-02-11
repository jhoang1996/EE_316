`timescale 1ns / 1ps

module tb_BCD_Display;

    reg s1;
    reg s2;
    reg s3;
    reg s4;
    wire a;
    wire b;
    wire c;
    wire d;
    wire e;
    wire f;
    wire g;
    wire AN0;
    wire AN1;
    wire AN2;
    wire AN3;
    
    BCD_Display uut(
      .s1(s1),
      .s2(s2),
      .s3(s3),
      .s4(s4),
      .a(a),
      .b(b),
      .c(c),
      .d(d),
      .e(e),
      .f(f),
      .g(g),
      .AN0(AN0),
      .AN1(AN1),
      .AN2(AN2),
      .AN3(AN3)   
    );
    
    initial begin
    
        s1 = 0;
        s2 = 0;
        s3 = 0;
        s4 = 0;
        
        #50
        
        s1 = 0;
        s2 = 0;
        s3 = 0;
        s4 = 0;
        #50
        if ( s1 != 1'b0 || s2 != 1'b0 || s3 != 1'b0 || s4 != 1'b0 || a != 1'b1 || b != 1'b1 || c != 1'b1 || d != 1'b1 || e != 1'b1 || f != 1'b1 || g != 1'b0 )
            $display ("Result is wrong");
            
        s1 = 0;
        s2 = 0;
        s3 = 0;
        s4 = 1;
        #50
        if ( s1 != 1'b0 || s2 != 1'b0 || s3 != 1'b0 || s4 != 1'b1 || a != 1'b0 || b != 1'b1 || c != 1'b1 || d != 1'b0 || e != 1'b0 || f != 1'b0 || g != 1'b0 )
            $display ("Result is wrong");  
        
         s1 = 0;
         s2 = 0;
         s3 = 1;
         s4 = 0;
         #50
         if ( s1 != 1'b0 || s2 != 1'b0 || s3 != 1'b1 || s4 != 1'b0 || a != 1'b1 || b != 1'b1 || c != 1'b0 || d != 1'b1 || e != 1'b1 || f != 1'b0 || g != 1'b1 )
              $display ("Result is wrong");           
         
         s1 = 0;
         s2 = 0;
         s3 = 1;
         s4 = 1;
         #50
         if ( s1 != 1'b0 || s2 != 1'b0 || s3 != 1'b1 || s4 != 1'b1 || a != 1'b1 || b != 1'b1 || c != 1'b1 || d != 1'b1 || e != 1'b0 || f != 1'b0 || g != 1'b1 )
              $display ("Result is wrong");  
        
         s1 = 0;
         s2 = 1;
         s3 = 0;
         s4 = 0;
         #50
         if ( s1 != 1'b0 || s2 != 1'b1 || s3 != 1'b0 || s4 != 1'b0 || a != 1'b0 || b != 1'b1 || c != 1'b1 || d != 1'b0 || e != 1'b0 || f != 1'b1 || g != 1'b1 )
                $display ("Result is wrong"); 
                           
         s1 = 0;
         s2 = 1;
         s3 = 0;
         s4 = 1;
         #50
         if ( s1 != 1'b0 || s2 != 1'b1 || s3 != 1'b0 || s4 != 1'b1 || a != 1'b1 || b != 1'b0 || c != 1'b1 || d != 1'b1 || e != 1'b0 || f != 1'b1 || g != 1'b1 )
                $display ("Result is wrong");
                                        
                                        
         s1 = 0;
         s2 = 1;
         s3 = 1;
         s4 = 0;
         #50
         if ( s1 != 1'b0 || s2 != 1'b1 || s3 != 1'b1 || s4 != 1'b0 || a != 1'b1 || b != 1'b0 || c != 1'b1 || d != 1'b1 || e != 1'b1 || f != 1'b1 || g != 1'b1 )
             $display ("Result is wrong");                             
             
         s1 = 0;
         s2 = 1;
         s3 = 1;
         s4 = 1;
         #50
         if ( s1 != 1'b0 || s2 != 1'b1 || s3 != 1'b1 || s4 != 1'b1 || a != 1'b1 || b != 1'b1 || c != 1'b1 || d != 1'b0 || e != 1'b0 || f != 1'b0 || g != 1'b0 )
            $display ("Result is wrong"); 
         
         s1 = 1;
         s2 = 0;
         s3 = 0;
         s4 = 0;
         #50
         if ( s1 != 1'b1 || s2 != 1'b0 || s3 != 1'b0 || s4 != 1'b0 || a != 1'b1 || b != 1'b1 || c != 1'b1 || d != 1'b1 || e != 1'b1 || f != 1'b1 || g != 1'b1 )
            $display ("Result is wrong");     
            
         s1 = 1;
         s2 = 0;
         s3 = 0;
         s4 = 1;
         #50
         if ( s1 != 1'b1 || s2 != 1'b0 || s3 != 1'b0 || s4 != 1'b1 || a != 1'b1 || b != 1'b1 || c != 1'b1 || d != 1'b0 || e != 1'b0 || f != 1'b1 || g != 1'b1 )
            $display ("Result is wrong");
            
         s1 = 1;
         s2 = 0;
         s3 = 1;
         s4 = 0;
         #50
         if ( s1 != 1'b1 || s2 != 1'b0 || s3 != 1'b1 || s4 != 1'b0 || a != 1'b0 || b != 1'b0 || c != 1'b0 || d != 1'b0 || e != 1'b0 || f != 1'b0 || g != 1'b0 )
            $display ("Result is wrong"); 
                      
                      
        s1 = 1;
        s2 = 0;
        s3 = 1;
        s4 = 1;
        #50
        if ( s1 != 1'b1 || s2 != 1'b0 || s3 != 1'b1 || s4 != 1'b0 || a != 1'b0 || b != 1'b0 || c != 1'b0 || d != 1'b0 || e != 1'b0 || f != 1'b0 || g != 1'b0 )
            $display ("Result is wrong");  
            
        s1 = 1;
        s2 = 1;
        s3 = 0;
        s4 = 0;
        #50
        if ( s1 != 1'b1 || s2 != 1'b1 || s3 != 1'b0 || s4 != 1'b0 || a != 1'b0 || b != 1'b0 || c != 1'b0 || d != 1'b0 || e != 1'b0 || f != 1'b0 || g != 1'b0 )
                         $display ("Result is wrong");
        
        s1 = 1;
        s2 = 1;
        s3 = 0;
        s4 = 1;
        #50
        if ( s1 != 1'b1 || s2 != 1'b1 || s3 != 1'b0 || s4 != 1'b0 || a != 1'b0 || b != 1'b0 || c != 1'b0 || d != 1'b0 || e != 1'b0 || f != 1'b0 || g != 1'b0 )
                                              $display ("Result is wrong");

        s1 = 1;
        s2 = 1;
        s3 = 1;
        s4 = 0;
        #50
        if ( s1 != 1'b1 || s2 != 1'b1 || s3 != 1'b0 || s4 != 1'b0 || a != 1'b0 || b != 1'b0 || c != 1'b0 || d != 1'b0 || e != 1'b0 || f != 1'b0 || g != 1'b0 )
                                                                   $display ("Result is wrong");
        
        s1 = 1;
        s2 = 1;
        s3 = 1;
        s4 = 1;
        #50
        if ( s1 != 1'b1 || s2 != 1'b1 || s3 != 1'b0 || s4 != 1'b0 || a != 1'b0 || b != 1'b0 || c != 1'b0 || d != 1'b0 || e != 1'b0 || f != 1'b0 || g != 1'b0 )
                                                                                        $display ("Result is wrong");
        
                                                                                                                     
         end   
endmodule
