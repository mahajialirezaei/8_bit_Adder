module FA_1_bit(
    input a,
    input b,
    input cin,
    output sum,
    output co;
);

wire wire_1, wire_2, wire_3, wire_4;

HA_1_bit h1(
        .a(a),
        .b(b),
        .sum(wire_1),
        .co(wire_2)
        );
HA_1_bit h2(
        .a(wire_1),
        .b(cin),
        .sum(wire_3),
        .co(wire_4)
        );


assign sum = wire_3;
assign co = wire_4 | wire_2;

endmodule