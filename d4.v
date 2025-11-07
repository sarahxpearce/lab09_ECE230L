module d4(
    input [3:0] x,
    input [1:0] s,
    input en,
    output [3:0] y0, y1, y2, y3
);
    assign y0 = en ? (s==2'b00 ? x : 4'b0000) : 4'b0000;
    assign y1 = en ? (s==2'b01 ? x : 4'b0000) : 4'b0000;
    assign y2 = en ? (s==2'b10 ? x : 4'b0000) : 4'b0000;
    assign y3 = en ? (s==2'b11 ? x : 4'b0000) : 4'b0000;
endmodule
