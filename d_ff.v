module d_ff(
    input wire clk,
    input wire d,
    output reg q,
    output reg notq
);

    initial begin
        q <= 0;
        notq <= 1;
    end

    always @(posedge clk) begin
        q <= d;
        notq <= ~d;
    end
    // assign notq = ~q;
    
endmodule