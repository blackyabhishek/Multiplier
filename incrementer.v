module incrementer(p,c0,c);
	// synopsys template
	parameter NUM=54;
	input c0;
	input [NUM-1:0] p;
	output [NUM:0] c;
	genvar i,j,k,r1,r2,r3,n,m;
	wire w3[NUM-3:0];
	wire w9[NUM-9:0];
	wire w27[NUM-27:0];
	wire a[NUM:0][4:1];
	generate
		for(i=0;i<=NUM-3;i=i+3)
		begin : AND3TREE
			and3 A3T(p[i],p[i+1],p[i+2],w3[i]);
		end
		for(j=0;j<=NUM-9;j=j+9)
		begin : AND9TREE
			and3 A9T(w3[j],w3[j+3],w3[j+6],w9[j]);
		end
		for(k=0;k<=NUM-27;k=k+27)
		begin : AND27TREE
			and3 A27T(w9[k],w9[k+9],w9[k+18],w27[k]);
		end
		for(n=0;n<=NUM;n=n+1)
		begin : N
			for(r1=(n/3)%3;r1<3;r1=r1+3)
			begin : R1
				for(r2=((n/3)/3)%3;r2<3;r2=r2+3)
				begin : R2
				for(r3=(((n/3)/3)/3)%3;r3<3;r3=r3+3)
				begin : R3
				
					if(r3==2)
					begin
						and3 A3R3(w27[0],w27[27],a[n][3],a[n][4]);
					end
					else if(r3==1)
					begin
						and2 A2R3(w27[0],a[n][3],a[n][4]);
					end
					else
					begin
						assign a[n][4]=a[n][3];
					end
					
					if(r2==2)
					begin
						and3 A3R2(w9[27*r3],w9[27*r3+9],a[n][2],a[n][3]);
					end
					else if(r2==1)
					begin
						and2 A2R2(w9[27*r3],a[n][2],a[n][3]);
					end
					else
					begin
						assign a[n][3]=a[n][2];
					end
					
					if(r1==2)
					begin
						and3 A3R1(w3[27*r3+9*r2],w3[27*r3+9*r2+3],a[n][1],a[n][2]);
					end
					else if(r1==1)
					begin
						and2 A2R1(w3[27*r3+9*r2],a[n][1],a[n][2]);
					end
					else
					begin
						assign a[n][2]=a[n][1];
					end
					
					if(n%3==2)
					begin
						and3 A3R0(p[n-1],p[n-2],c0,a[n][1]);
					end
					else if(n%3==1)
					begin
						and2 A2R0(p[n-1],c0,a[n][1]);
					end
					else 
					begin
						assign a[n][1]=c0;
					end
				end
				end
			end
		end
		for(m=0;m<NUM;m=m+1)
		begin : A
			assign c[m]=a[m][4]^p[m];
		end
		assign c[NUM]=a[NUM][4];
	endgenerate
endmodule
