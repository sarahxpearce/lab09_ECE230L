module m4(
    input [3:0] a, b, c, d,
    input [1:0] s,
    input en,
    output [3:0] y
);
    assign y = en ? (s==2'b00 ? a : s==2'b01 ? b : s==2'b10 ? c : d) : 4'b0000;
endmodule
