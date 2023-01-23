`include "fullSubS.v"
module N_bit_Subtractor(
    input [31:0] a,
    input [31:0] b,
    output [31:0] diff
);
    wire[31:0] borrow_ot;

    // instantiate 32 full subtractors using a for loop
    genvar i;
    generate
        for (i=0; i<32; i=i+1) begin: bit_sub
        if (i==0)
        full_subtractor full_sub(.a(a[i]),.b(b[i]),.borrow_in(1'b0),.diff(diff[i]),.borrow_out(borrow_ot[i]));
        else
            full_subtractor full_sub(
                .a(a[i]),
                .b(b[i]),
                .borrow_in(borrow_ot[i-1]),
                .diff(diff[i]),
                .borrow_out(borrow_ot[i])
            );
        end
    endgenerate
endmodule
