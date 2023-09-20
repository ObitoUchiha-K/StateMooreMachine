module mem1 (data,addr);
output  data;
reg data;
input [1023:0] addr;
always@( addr ) begin
case (addr)
1: data = 1'b1;
2: data = 1'b0;
3: data = 1'b0;
4: data = 1'b0;
5: data = 1'b1;
6: data = 1'b1;
7: data = 1'b0;
8: data = 1'b0;
9: data = 1'b0;
10: data = 1'b1;
11: data = 1'b0;
12: data = 1'b1;
13: data = 1'b1;
14: data = 1'b0;
15: data = 1'b1;
16: data = 1'b0;
17: data = 1'b0;
18: data = 1'b0;
19: data = 1'b1;
20: data = 1'b0;
21: data = 1'b0;
 default : data = 1'b0;
endcase
end
endmodule
