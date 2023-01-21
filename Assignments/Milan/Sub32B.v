`include "fullSubS.v"
module N_bit_Subtractor(
    input [31:0] a, b,
    
    output [31:0] diff,
   output borrow_out
);
    wire [31:0] bor;



   
    genvar i;
   generate 
        
        for(i=0; i<32; i=i+1) 
        begin: generate_N_bit_Subtractor
        
            full_subtractor sub (a[i], b[i],bor[i-1], diff[i], bor[i]);
        end
    
    assign borrow_out = bor[31];
    endgenerate
endmodule
