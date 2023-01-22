`include "fullSubS.v"
module full_subtractor_tb();
    reg a, b, borrow_in;
    wire diff, borrow_out;

    full_subtractor DUT(
        .a(a),
        .b(b),
        .borrow_in(borrow_in),
        .diff(diff),
        .borrow_out(borrow_out)
    );

    initial begin
        a = 0; b = 0; borrow_in = 0;
        #10;
        a = 0; b = 0; borrow_in = 1;
        #10;
        a = 0; b = 1; borrow_in = 0;
        #10;
        a = 0; b = 1; borrow_in = 1;
        #10;
        a = 1; b = 0; borrow_in = 0;
        #10;
        a = 1; b = 0; borrow_in = 1;
        #10;
        a = 1; b = 1; borrow_in = 0;
        #10;
        a = 1; b = 1; borrow_in = 1;
        #10;
        $stop;
        $finish;
    end

    initial begin
        $monitor("a=%b b=%b borrow_in=%b diff=%b borrow_out=%b", a, b, borrow_in, diff, borrow_out);
        
    end
endmodule
