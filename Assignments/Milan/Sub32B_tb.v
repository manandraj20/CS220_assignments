`include "Sub32B.v"
module subtractor_32bit_tb();
    reg [31:0] a, b;
    wire [31:0] diff;

    N_bit_Subtractor DUT(
        .a(a),
        .b(b),
        .diff(diff)
    );

    initial begin
        a = 32'h12345678;
        b = 32'h87654321;
        #10;
        a = 32'hFFFFFFFF;
        b = 32'h00000000;
        #10;
        $stop;
    end

    initial begin
        $monitor("a=%d b=%d diff=%d", a, b, diff);
    end
endmodule
