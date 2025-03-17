`timescale 1ns/1ps
module tb_FA_8_bit;

    reg [7:0] a;
    reg [7:0] b;
    reg cin;

    wire [7:0] sum;
    wire co_bit_8;

    FA_8_bit dut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .co_bit_8(co_bit_8)
    );

    initial begin


        a = 8'b00000001;
        b = 8'b00000001;
        cin = 0;
        #10;

        $display("Time: %0t | a: %b | b: %b | cin: %b | sum: %b | co: %b", 
            $time, a, b, cin, sum, co_bit_8);


        a = 8'b00000011;
        b = 8'b00000001;
        cin = 0;
        #10;
        $display("Time: %0t | a: %b | b: %b | cin: %b | sum: %b | co: %b", 
            $time, a, b, cin, sum, co_bit_8);


        a = 8'b11111111;
        b = 8'b00000001;
        cin = 0;
        #10;
        $display("Time: %0t | a: %b | b: %b | cin: %b | sum: %b | co: %b", 
            $time, a, b, cin, sum, co_bit_8);


        a = 8'b01111111;
        b = 8'b01111111;
        cin = 0;
        #10;
        $display("Time: %0t | a: %b | b: %b | cin: %b | sum: %b | co: %b", 
            $time, a, b, cin, sum, co_bit_8);


        a = 8'b00001111;
        b = 8'b00001111;
        cin = 1;
        #10;
        $display("Time: %0t | a: %b | b: %b | cin: %b | sum: %b | co: %b", 
            $time, a, b, cin, sum, co_bit_8);


        a = 8'b11111111;
        b = 8'b11111111;
        cin = 1;
        #10;
        $display("Time: %0t | a: %b | b: %b | cin: %b | sum: %b | co: %b", 
            $time, a, b, cin, sum, co_bit_8);


        $finish;
    end

endmodule
