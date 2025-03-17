module FA_8_bit(
    input [7:0] a,
    input [7:0] b,
    input cin,
    output [7:0] sum,
    output co_bit_8
);



wire [6:0] carry;

FA_1_bit f1(
            .a(a[0]),
            .b(b[0]),
            .cin(cin),
            .sum(sum[0]),
            .co(carry[0])
            ),
            f2(
            .a(a[1]),
            .b(b[1]),
            .cin(carry[0]),
            .sum(sum[1]),
            .co(carry[1])
            ),
            f3(
            .a(a[2]),
            .b(b[2]),
            .cin(carry[1]),
            .sum(sum[2]),
            .co(carry[2])
            ),
            f4(
            .a(a[3]),
            .b(b[3]),
            .cin(carry[2]),
            .sum(sum[3]),
            .co(carry[3])
            ),
            f5(
            .a(a[4]),
            .b(b[4]),
            .cin(carry[3]),
            .sum(sum[4]),
            .co(carry[4])
            ),
            f6(
            .a(a[5]),
            .b(b[5]),
            .cin(carry[4]),
            .sum(sum[5]),
            .co(carry[5])
            ),
            f7(
            .a(a[6]),
            .b(b[6]),
            .cin(carry[5]),
            .sum(sum[6]),
            .co(carry[6])
            ),
            f8(
            .a(a[7]),
            .b(b[7]),
            .cin(carry[6]),
            .sum(sum[7]),
            .co(co_bit_8)
            );

endmodule
