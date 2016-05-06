module shift(n,s,m);
	// synopsys template
	parameter SH=3;
	parameter NUM=16;
	input s;
	input [NUM-1:0] n;
	output [NUM-1:0] m;
	genvar i;
	generate
		for(i=0;i<NUM;i=i+1)
		begin : S
			if(i+SH<0 || i+SH>=NUM)
			begin : I
				mux M0(n[i],1'b0,s,m[i]);
			end
			else
			begin : N
				mux M1(n[i],n[i+SH],s,m[i]);
			end	
		end
	endgenerate
endmodule
