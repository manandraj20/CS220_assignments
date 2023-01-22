`include "fullSubS.v"
module N_bit_Subtractor(
    input [31:0] a,
    input [31:0] b,
    output [31:0] diff
);
    wire borrow_out;

    // instantiate 32 full subtractors using a for loop
    genvar i;
    generate
        for (i=0; i<32; i=i+1) begin: bit_sub
            full_subtractor full_sub(
                .a(a[i]),
                .b(b[i]),
                .borrow_in(borrow_out),
                .diff(diff[i]),
                .borrow_out(borrow_out)
            );
        end
    endgenerate
endmodule
