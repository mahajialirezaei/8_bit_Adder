module HA_1_bit(
    input a,
    input b,
    output sum_ha,
    output co_ha;
);

assign sum_ha = a ^ b;
assign co_ha = a & b;

endmodule