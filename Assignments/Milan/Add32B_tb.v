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

 // Instantiate the Unit Under Test (UUT)
 N_bit_adder uut (
  .input1(input1), 
  .input2(input2), 
  .answer(answer)
 );

 initial begin
  // Initialize Inputs
  input1 = 1200;
  input2 = 4565;
  #100;
  $display("input1=%d, input2=%d, answer=%d",input1,input2,answer);
  
  // Add stimulus here
 end
      
endmodule