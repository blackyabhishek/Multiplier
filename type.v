module type(n,t);
	input [62:0] n;
	output [4:0] t;
	wire expOr,fractOr,expAnd;
	andOrTree #(10,1) EO(n[62:53],n[52],expOr);
	andOrTree #(10,0) EA(n[62:53],n[52],expAnd);
	andOrTree #(51,1) FO(n[50:0],n[51],fractOr);
	assign t[0]=expOr & (~expAnd);
	assign t[1]=(~expOr) & fractOr;
	assign t[2]=~(expOr|fractOr);
	assign t[3]=(~fractOr) & expAnd;
	assign t[4]=fractOr & expAnd;
endmodule
