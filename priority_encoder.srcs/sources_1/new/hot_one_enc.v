`timescale 1ns / 1ps

module hot_one_enc #(parameter N = 4) (
    input  [N-1:0] in,
    output [N-1:0] out
);
    genvar i;
    generate
        for (i = 0; i <= N - 2; i = i + 1) begin
            assign out[i] = ~(|in[N-1:i+1]) & in[i];
        end
        assign out[N-1] = in[N-1]; 
    endgenerate

endmodule