module full_subtractor(
    input a, b, borrow_in,
    output diff,
    output borrow_out
);
    assign diff = a ^ b ^ borrow_in;
    assign borrow_out = (a & b) | (b & borrow_in) | (a & borrow_in);
endmodule
