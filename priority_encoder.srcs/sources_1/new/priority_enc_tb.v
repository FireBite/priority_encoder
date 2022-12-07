`timescale 1ns / 1ps

module priority_enc_tb ();
    parameter N = 8;
    
    reg  [N-1:0]       data = 0;
    wire [$clog2(N):0] out;

    priority_enc #(N) encoder(data, out);

    initial begin
        #10 data = 8'b00000000;
        #10 data = 8'b00000001;
        #10 data = 8'b00000011;
        #10 data = 8'b00000101;
        #10 data = 8'b00001011;
        #10 data = 8'b00010100;
        #10 data = 8'b00110110;
        #10 data = 8'b01010111;
        #10 data = 8'b10111111;
        #10 data = 8'b11010011;
        #10 $finish;
    end
endmodule