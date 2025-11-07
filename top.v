module top(
    input  [15:0] sw,
    input         btnL, btnU, btnD, btnR, btnC,
    output [15:0] led
);
    wire [1:0] ms = {btnU, btnL};
    wire [1:0] ds = {btnR, btnD};
    wire [3:0] x;

    m4 u1(
        .a(sw[3:0]),
        .b(sw[7:4]),
        .c(sw[11:8]),
        .d(sw[15:12]),
        .s(ms),
        .en(btnC),
        .y(x)
    );

    d4 u2(
        .x(x),
        .s(ds),
        .en(btnC),
        .y0(led[3:0]),
        .y1(led[7:4]),
        .y2(led[11:8]),
        .y3(led[15:12])
    );
endmodule
