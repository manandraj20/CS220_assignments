`include "fullAdderS.v"
module full_adder_tb();
   reg a, b, cin;
   wire sum, cout;

   full_adder DUT(a, b, cin, sum, cout);

   initial begin
      // Test case 1: a = 0, b = 0, cin = 0
      a = 0; b = 0; cin = 0;
      #100;
      // Test case 2: a = 0, b = 1, cin = 0
      a = 1'b0; b = 1'b1; cin = 1'b0;
      #100;
      // Test case 3: a = 1, b = 0, cin = 1
      a = 1; b = 0; cin = 1;
      #100;
      // Test case 4: a = 1, b = 1, cin = 1
      a = 1; b = 1; cin = 1;
      #100;
      // Add more test cases as needed
      $finish;
   end

   initial begin
      // Print results for each test case
      $monitor("a = %b, b = %b, cin = %b, sum = %b, cout = %b", a, b, cin, sum, cout);
   end

endmodule
