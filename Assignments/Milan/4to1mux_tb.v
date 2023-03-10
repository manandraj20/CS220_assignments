`include "4to1mux.v"

module mux_tb();
    // input lines
    reg [31:0] in0;
    reg [31:0] in1;
    reg [31:0] in2;
    reg [31:0] in3;

    // selection line
    reg [1:0] sel;

    // output line
    wire [31:0] out;

    // Instantiate the design under test
    mux4_1 dut (
        .in0(in0),
        .in1(in1),
        .in2(in2),
        .in3(in3),
        .sel(sel),
        .out(out)
    );

    initial begin
        // Initialize input values
        in0 = 32'h00000001;
        in1 = 32'h00000002;
        in2 = 32'h00000004;
        in3 = 32'h00000008;
        
    end 
      initial begin
        // Test all possible combinations of sel
        // test cases
        sel = 2'b00;
        #5 $display("sel: %b, out: %h", sel, out);
        sel= 2'b01;
        #5 $display("sel: %b, out: %h", sel, out);
        sel= 2'b10;
        #5 $display("sel: %b, out: %h", sel, out);
        sel= 2'b11;
        #5 $display("sel: %b, out: %h", sel, out);
        $finish;
        end
        //test case ends
        
    
   

endmodule
