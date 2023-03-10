// fpga4student.com: FPGA projects, Verilog projects, VHDL projects
// Verilog project: Verilog code for N-bit Adder 
// Testbench Verilog code for N-bit Adder 
`include "Add32B.v"
module tb_N_bit_adder;
 // Inputs
 reg [31:0] input1;
 reg [31:0] input2;
 // Outputs
 wire [31:0] answer;
 wire carry_out;

 // Instantiate the Unit Under Test (UUT)
 N_bit_adder uut (
  .input1(input1), 
  .input2(input2), 
  .answer(answer),
  .carry_out(carry_out),
  .carry_in(1'b0)

 );

 initial begin
  // Initialize Inputs
  input2 = 10;
  input1 = 10;
  #10;
  $display("input1=%d, input2=%d, answer=%d, carry_out=%d",input1,input2,answer,carry_out);
  input2 = 10;
  input1 = 25;
  #10;
$display("input1=%d, input2=%d, answer=%d,carry_out=%d",input1,input2,answer,carry_out);
  
  // Add stimulus here
 end
      
endmodule