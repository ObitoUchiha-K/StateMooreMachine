
module bai14 (CLK, RST, w,  F);

input CLK,  w, RST;

output reg  F ;
 reg Q1,Q2;
 reg D1 = 1'b0 ;
reg D2 = 1'b0 ;
always@ (posedge CLK ) begin

		Q1 = D1 & RST ;
	   Q2 = D2 & RST ;
		F = Q1;
		D1 = (w | (Q1 ^ Q2))  ;
	   D2 = (w | ((Q1 & Q2) | ((~Q1)) & (~Q2)))  ; 
end

endmodule	
