module a6(a,b,c,d,e,f,s0,s1,s2);
	input a,b,c,d,e,f;
	output s0,s1,s2;
	wire n0,n1,m0,m1,g0,g1,p0,p1,c0,c1,c2;
	wire w1,w2,w3,w4,w5,w6;
	
	assign n0=a^b^f;
	assign w4=a&b;
	assign w5=b&f;
	assign w6=f&a;
	assign n1=w4|w5|w6;
	assign m0=c^d;
	assign m1=c&d;
	
	assign g0=n0&m0;
	assign g1=n1&m1;
	
	assign p0=n0^m0;
	assign p1=n1^m1;
	
	assign c0=e;
	assign w1=p0&c0;
	assign c1=g0|w1;
	assign w2=p1&g0;
	assign w3=p1&p0&c0;
	assign c2=g1|w2|w3;
	
	assign s0=p0^c0;
	assign s1=p1^c1;
	assign s2=c2;
	
endmodule
