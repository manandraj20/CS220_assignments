// fpga4student.com: FPGA projects, Verilog projects, VHDL projects
// Verilog project: Verilog code for N-bit Adder 
// Top Level Verilog code for N-bit Adder using Structural Modeling
// `include "fullAdderS.v"
module N_bit_adder(input1,input2,answer,carry_out,carry_in);
parameter N=16;
input [N-1:0] input1,input2;
   output [N-1:0] answer;
   output  carry_out;
   input carry_in;
  wire [N-1:0] carry;
   genvar i;
   generate 
   for(i=0;i<N;i=i+1)
     begin: generate_N_bit_Adder
   if(i==0)
   full_adder f(input1[i],input2[i],carry_in, answer[i],carry[i]);
   else
  full_adder f(input1[i],input2[i],carry[i-1],answer[i],carry[i]);
     end
  assign carry_out = carry[N-1];
   endgenerate
endmodule 

// fpga4student.com: FPGA projects, Verilog projects, VHDL projects
// Verilog project: Verilog code for N-bit Adder 
// Verilog code for half adder 
module half_adder(x,y,s,c);
   input x,y;
   output s,c;
   assign s=x^y;
   assign c=x&y;
endmodule // half adder

// fpga4student.com: FPGA projects, Verilog projects, VHDL projects
// Verilog project: Verilog code for N-bit Adder 
// Verilog code for full adder 
module full_adder(input a, b, cin, output sum, cout);
   wire t1, t2,t3,t4;
   xor X1(t1, a, b);
   xor X2(sum, t1, cin);
   and A1(t3, a, b);
   and A2(t4, t1, cin);
   or O1(cout, t3, t4);
endmodule // full_adder