module a4(a,b,c,d,s0,s1,s2);
	input a,b,c,d;
	output s0,s1,s2;
	wire n0,n1,m0,m1,g0,g1,p0,p1,c1,c2;
	wire w1;
	
	assign n0=a^b;
	assign n1=a&b;
	assign m0=c^d;
	assign m1=c&d;
	
	assign g0=n0&m0;
	assign g1=n1&m1;
	
	assign p0=n0^m0;
	assign p1=n1^m1;
	
	assign c1=g0;
	assign w1=p1&g0;
	assign c2=g1|w1;
	
	assign s0=p0;
	assign s1=p1^c1;
	assign s2=c2;
	
endmodule
