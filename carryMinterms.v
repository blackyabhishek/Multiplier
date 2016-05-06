module carryMinterms(p,g,c0,g0,p0,c,c01);

	// synopsys template
	parameter NUM=10;
	input [NUM-1:0] p;
	input [NUM-1:0] g;
	input c0;
	wire [NUM-1:2] w3;
	wire [NUM-1:8] w9;
	wire [NUM-1:26] w27;
	wire [NUM-1:80] w81;

	output c01;
	output [NUM-1:0] g0;

	output [NUM-1:0] p0;
	output [((NUM*(NUM+1))/2)-1:0] c;

	assign c01=c0;
	wire [5:1] a [NUM:1][NUM-1:0];
	genvar i,j,k,l,m,n,n1,m1,m2,r1,r2,r3,r4;
	generate
		for(i=NUM-1;i>1;i=i-1)
		begin : AND3TREE
			and3 A3T(p[i],p[i-1],p[i-2],w3[i]);
		end
		for(j=NUM-1;j>7;j=j-1)
		begin : AND9TREE
			and3 A9T(w3[j],w3[j-3],w3[j-6],w9[j]);
		end
		for(k=NUM-1;k>25;k=k-1)
		begin : AND27TREE
			and3 A27T(w9[k],w9[k-9],w9[k-18],w27[k]);
		end
		for(l=NUM-1;l>79;l=l-1)
		begin : AND81TREE
			and3 A81T(w27[l],w27[l-27],w27[l-54],w81[l]);
		end
		for(n=1;n<=NUM;n=n+1)
		begin : CN
			for(m=0;m<n;m=m+1)
			begin :CM
			
				for(r1=((n-m)/3)%3;r1<3;r1=r1+3)
				begin : R1
					for(r2=(((n-m)/3)/3)%3;r2<3;r2=r2+3)
					begin : R2
						for(r3=((((n-m)/3)/3)/3)%3;r3<3;r3=r3+3)
						begin : R3
							for(r4=(((((n-m)/3)/3)/3)/3)%3;r4<3;r4=r4+3)
							begin : R4
							
								if(n-m>=81)
								begin
									and2 A81E(w81[n-1],a[n][m][4],a[n][m][5]);
								end
								else
								begin
									assign a[n][m][5]=a[n][m][4];
								end
				
								if(r3==2)
								begin
									and3 A54E(w27[n-1-(81*r4)],w27[n-1-(81*r4)-27],a[n][m][3],a[n][m][4]);
								end
								else if(r3==1)
								begin
									and2 A27E(w27[n-1-(81*r4)],a[n][m][3],a[n][m][4]);
								end
								else
								begin
									assign a[n][m][4]=a[n][m][3];
								end
				
								if(r2==2)
								begin
									and3 A18E(w9[n-1-(27*r3)-(81*r4)],w9[n-1-(27*r3)-(81*r4)-9],a[n][m][2],a[n][m][3]);
								end
								else if(r2==1)
								begin
									and2 A9E(w9[n-1-(27*r3)-(81*r4)],a[n][m][2],a[n][m][3]);
								end
								else
								begin
									assign a[n][m][3]=a[n][m][2];
								end
				
								if(r1==2)
								begin
									and3 A6E(w3[n-1-(9*r2)-(27*r3)-(81*r4)],w3[n-1-(9*r2)-(27*r3)-(81*r4)-3],a[n][m][1],a[n][m][2]);
								end
								else if(r1==1)
								begin
									and2 A3E(w3[n-1-(9*r2)-(27*r3)-(81*r4)],a[n][m][1],a[n][m][2]);
								end
								else
								begin
									assign a[n][m][2]=a[n][m][1];
								end
					
								if((n-m)%3==0 && m==0)
								begin
									assign a[n][m][1]=c0;
								end
								else if((n-m)%3==0)
								begin
									assign a[n][m][1]=g[m-1];
								end
								else if((n-m)%3==1 && m==0)
								begin
									and2 A2M0(c0,p[m],a[n][m][1]);
								end
								else if((n-m)%3==1)
								begin
									and2 A2MX(g[m-1],p[m],a[n][m][1]);
								end
								else if((n-m)%3==2 && m==0)
								begin
									and3 A3M0(c0,p[m],p[m+1],a[n][m][1]);
								end
								else
								begin
									and3 A3MX(g[m-1],p[m],p[m+1],a[n][m][1]);
								end
								
							end
						end
					end
				end
				
			end
		end

		for(n1=1;n1<=NUM;n1=n1+1)
		begin : N1
			for(m1=0;m1<n1;m1=m1+1)
			begin : M1
				assign c[((n1*(n1-1))/2)+m1]=a[n1][m1][5];
			end
		end

		assign g0[NUM-1:0]=g[NUM-1:0];

		assign p0[NUM-1:0]=p[NUM-1:0];
	endgenerate
endmodule
