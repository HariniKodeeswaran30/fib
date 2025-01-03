module fibtb;
reg clk;
reg rst;
wire [31:0] fibo;
fib uut (
.clk(clk),
.rst(rst),
.fibo(fibo)
);
initial begin
clk = 0;
forever #5 clk = ~clk;
end
initial begin
$monitor("Time=%0t | Reset=%b | Fibonacci=%d", $time, rst, fibo);
rst = 1; #10;
rst = 0; #10000;
$finish;
end
endmodule