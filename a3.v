module a3(a,b,c,s0,s1);
	input a,b,c;
	output s0,s1;
	
	wire p0,p1,p2;
	
	assign p0=a&b;
	assign p1=b&c;
	assign p2=c&a;
	
	assign s0=a^b^c;
	assign s1=p0 | p1 | p2;
	
	
endmodule
