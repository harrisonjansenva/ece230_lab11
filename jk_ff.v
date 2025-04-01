module jk_ff(
    input wire clk,
    input wire j,
    input wire k,
    output wire q,
    output wire notq
);
    wire d;
    assign d = (j & ~q) | (~k & q);
    d_ff dff_inst (
        .clk(clk),
        .d(d),
        .q(q),
        .notq(notq)
    );
endmodule