module full_adder(input a, b, cin, output sum, cout);
   wire t1, t2,t3,t4;
   xor X1(t1, a, b);
   xor X2(sum, t1, cin);
   and A1(t3, a, b);
   and A2(t4, t1, cin);
   or O1(cout, t3, t4);
endmodule
