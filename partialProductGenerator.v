module partialProductGenerator(a,b,p);
	input [52:0] a;
	input [52:0] b;
	output [0:5617] p;
	genvar i,j;
	generate
	/*
		for(i=0;i<53;i=i+1)
		begin : I
			for(j=0;j<53;j=j+1)
			begin : J
				assign p[107*i+j]=a[j]&b[i];
			end
		end
	*/
		for(i=0;i<53;i=i+1)
		begin : I
			for(j=0;j<106;j=j+1)
			begin : J
				if(j<i || j-i>52)
				begin
					assign p[106*i+j]=1'b0;
				end
				else
				begin
					assign p[106*i+j]=a[j-i]&b[i];
				end
			end
		end
	endgenerate
endmodule
