module mux(a,b,s,o);
	input a;
	input b;
	input s;
	output o;
	assign o = (s)?b:a;
endmodule
