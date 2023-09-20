module mem2(RST,addr);
output  RST;
reg RST;
input [1023:0] addr;
always@( addr ) begin
case (addr)
1: RST = 1'b0;
2: RST = 1'b1;
3: RST = 1'b1;
4: RST = 1'b1;
5: RST = 1'b1;
6: RST = 1'b0;
7: RST = 1'b1;
8: RST = 1'b1;
9: RST = 1'b1;
10: RST = 1'b1;
11: RST = 1'b1;
12: RST = 1'b1;
13: RST = 1'b1;
14: RST = 1'b1;
15: RST = 1'b1;
16: RST = 1'b1;
17: RST = 1'b1;
18: RST = 1'b1;
19: RST = 1'b1;
20: RST = 1'b1;
21: RST = 1'b1;
 default : RST = 1'b1;
endcase
end
endmodule
