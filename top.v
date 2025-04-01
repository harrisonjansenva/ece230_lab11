module top (
    input [3:0] sw ,
    input btnC,
    output [5:0] led 

);

// D flip flop.
    d_ff dff_inst (
        .clk(btnC),
        .d(sw[0]),
        .q(led[0]),
        .notq(led[1])
    );

    // JK flip flop
    jk_ff jk_inst (
        .clk(btnC),
        .j(sw[1]),
        .k(sw[2]),
        .q(led[2]),
        .notq(led[3])
    );

    

    //T flip flop.
    t_ff tff_inst (
        .clk(btnC),
        .t(sw[3]),
        .q(led[4]),
        .notq(led[5])
    );
endmodule