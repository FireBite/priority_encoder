module priority_enc #(N = 8) (
    input  [N-1:0]       in,
    output [$clog2(N):0] out
);
    wire [N-1:0]         data_hot;
    
    hot_one_enc #(N) hot_one(in, data_hot);
    grey_enc    #(N) grey(data_hot, out);
    
endmodule