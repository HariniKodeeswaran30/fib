module fib(fibo,rst,clk);
input clk;
input rst;
output reg [31:0] fibo;
reg [31:0] prev;
reg [31:0] temp;
always @(posedge clk or posedge rst) begin
if (rst) begin
fibo <= 0;
prev <= 1;
end else begin
temp = fibo + prev;
prev <= fibo;
fibo <= temp;
end
end
endmodule