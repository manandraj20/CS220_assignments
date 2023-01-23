module full_subtractor(input a, b, borrow_in, output diff, borrow_out);
    wire t1, t2, t3,t4,t5,t6;
    xor x1(t1, a, b);
    xor x2(diff, t1, borrow_in);
    and a1(t3, ~a, b);
    and a2(t4,~a, borrow_in);
    and a3(t5, b, borrow_in);
    or o2(t6,t3,t4);
    or o1(borrow_out, t6, t5);
endmodule
