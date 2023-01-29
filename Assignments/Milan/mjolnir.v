`include "K_bitAdder.v"
`include "2to1mux.v"
`include "1bitmux.v"
module mjolnir(input1,input2,answer,cout);
parameter K=32;

input [K-1:0] input1,input2;
output [K-1:0] answer;
output[K/2-1:0] s0,s1;
output cout;
output c,c0,c1;

N_bit_adder mj1(.input1(input1[K/2-1:0]),.input2(input2[K/2-1:0]),
               .answer(answer[K/2-1:0]),
               .carry_in(1'b0),
               .carry_out(c));
N_bit_adder mj2(.input1(input1[K-1:K/2]),.input2(input2[K-1:K/2]),.answer(s0),
                .carry_in(1'b0),
                .carry_out(c0));
N_bit_adder mj3(.input1(input1[K-1:K/2]),.input2(input2[K-1:K/2]),.answer(s1),
                .carry_in(1'b1),
                .carry_out(c1));
m21 mux1(.D0(s0),.D1(s1),.Y(answer[K-1:K/2]),.S(c));
m21_1bit mux2(.D0(c0),.D1(c1),.Y(cout),.S(c));



endmodule