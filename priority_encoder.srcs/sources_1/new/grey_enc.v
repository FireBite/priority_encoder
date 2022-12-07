`timescale 1ns / 1ps

module grey_enc #(N = 4) (
    input  [N-1:0]       in,
    output [$clog2(N):0] out
);
    wire [7:0] in_8;
    assign in_8 = in;

    assign out[0] = in[0] | in[1] | in[4] | in[5];
    assign out[1] = in[1] | in[2] | in[3] | in[4];
    assign out[2] = in[3] | in[4] | in[5] | in[6] | in[7];
    assign out[3] = in[7];
    
endmodule