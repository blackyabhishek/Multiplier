module a2(a,b,c0,c1);
	input a,b;
	output c0,c1;
	assign c0=a^b;
	assign c1=a&b;
endmodule
