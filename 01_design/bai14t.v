
module bai14t();
reg CLK;

wire F,w, RST;
reg [1023:0] addr ;
mem1 u2(w,addr);
mem2 u3(RST,addr);
bai14 u1(CLK, RST, w, F);
initial begin
$monitor("XXX:f_out:Time=%t, w=%b,RST=%b,F=%b", $time, w,RST,F);
end
always begin

	CLK = 0 ;

#50
	CLK = 1;

#50;

end
initial begin

addr  = 1;
#100
addr  = 2;
#100
addr  = 3;
#100
addr  = 4;
#100
addr  = 5;
#100
addr  = 6;
#100
addr  = 7;
#100
addr  = 8;
#100
addr  = 9;
#100
addr  = 10;
#100
addr  = 11;
#100
addr  = 12;
#100
addr  = 13;
#100
addr  = 14;
#100
addr  = 15;
#100
addr  = 16;
#100
addr  = 17;
#100
addr  = 18;
#100
addr  = 19;
#100
addr  = 20;
#100;

$finish;
end

initial begin
$vcdplusfile("wareform.vpd");
$vcdpluson();
end
endmodule	

