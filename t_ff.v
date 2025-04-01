module t_ff(
    input wire clk,
    input wire t,
    output wire q,
    output wire notq
);
    // Instantiate JK flip flop with J and K both equal to T.
    jk_ff jk_inst (
        .clk(clk),
        .j(t),
        .k(t),
        .q(q),
        .notq(notq)
    );
endmodule