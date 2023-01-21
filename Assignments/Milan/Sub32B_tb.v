`include "Sub32B.v"
module full_subtractor_tb;
    reg [31:0] a, b;
    wire [31:0] diff;
    wire borrow_out;
    N_bit_Subtractor dut (a, b,  diff,borrow_out);

    initial begin
        a = 1200;
        b = 1100;
        #100;
        $display("a=%d,b=%d and diff=%d",a,b,diff);
        a = 32'h0000_0001;
        b = 32'h0000_0001;
        #10;
        $display("a=%d,b=%d and diff=%d",a,b,diff);
        a = 32'h0000_0001;
        b = 32'h0000_0010;
        #10;
        $display("a=%d,b=%d and diff=%d",a,b,diff);
        a = 32'h0000_0010;
        b = 32'h0000_0010;
        #10;
        $display("a=%d,b=%d and diff=%d",a,b,diff);
        a = 32'h0000_0010;
        b = 32'h0000_0001;
        #10;
        $display("a=%d,b=%d and diff=%d",a,b,diff);
        $finish;
    end
endmodule
