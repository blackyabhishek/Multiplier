module carryMul(p,g,c,c0,s,p0);
	// synopsys template
	parameter NUM=10;
	input [NUM-1:0] p;
	input [NUM-1:0] g;
	input c0;
	input [((NUM*(NUM+1))/2)-1:0] c;
	output [NUM:0] s;
	output [NUM-1:0] p0;
	wire [((NUM*(NUM+1))/2)-3:0] w3;
	wire [((NUM*(NUM+1))/2)-9:0] w9;
	wire [((NUM*(NUM+1))/2)-27:0] w27;
	wire [((NUM*(NUM+1))/2)-81:0] w81;
	wire [5:1] a [NUM:1];
	genvar i,j,k,l,n,n1,n2,b,r1,r2,r3,r4;
	generate
		for(n1=1;n1<=NUM;n1=n1+1)
		begin : TREE
			for(i=((n1*(n1-1))/2);i<=((n1*(n1+1))/2)-3;i=i+3)
			begin : OR3TREE
				or3 O3T(c[i],c[i+1],c[i+2],w3[i]);
			end
			for(j=((n1*(n1-1))/2);j<=((n1*(n1+1))/2)-9;j=j+9)
			begin : OR9TREE
				or3 O9T(w3[j],w3[j+3],w3[j+6],w9[j]);
			end
			for(k=((n1*(n1-1))/2);k<=((n1*(n1+1))/2)-27;k=k+27)
			begin : OR27TREE
				or3 O27T(w9[k],w9[k+9],w9[k+18],w27[k]);
			end
			for(l=((n1*(n1-1))/2);l<=((n1*(n1+1))/2)-81;l=l+81)
			begin : OR81TREE
				or3 O81T(w27[l],w27[l+27],w27[l+54],w81[l]);
			end
		end
		for(n=1;n<=NUM;n=n+1)
		begin : SN
			for(b=(n*(n-1))/2;b==(n*(n-1))/2;b=b+1)
			begin : B
				for(r1=(n/3)%3;r1<3;r1=r1+3)
				begin : R1
					for(r2=((n/3)/3)%3;r2<3;r2=r2+3)
					begin : R2
						for(r3=(((n/3)/3)/3)%3;r3<3;r3=r3+3)
						begin : R3
							for(r4=((((n/3)/3)/3)/3)%3;r4<3;r4=r4+3)
							begin : R4
								if(n>=81)
								begin
									or2 O81E(w81[b],a[n][4],a[n][5]);
								end
								else
								begin
									assign a[n][5]=a[n][4];	
								end
			
								if(r3==2)
								begin
									or3 O54E(w27[b+81*r4],w27[b+81*r4+27],a[n][3],a[n][4]);
								end
								else if(r3==1)
								begin
									or2 O27E(w27[b+81*r4],a[n][3],a[n][4]);
								end
								else
								begin
									assign a[n][4]=a[n][3];
								end
				
								if(r2==2)
								begin
									or3 O18E(w9[b+27*r3+81*r4],w9[b+27*r3+81*r4+9],a[n][2],a[n][3]);
								end
								else if(r2==1)
								begin
									or2 O9E(w9[b+27*r3+81*r4],a[n][2],a[n][3]);
								end
								else
								begin
									assign a[n][3]=a[n][2];
								end
				
								if(r1==2)
								begin
									or3 O6E(w3[b+9*r2+27*r3+81*r4],w3[b+9*r2+27*r3+81*r4+3],a[n][1],a[n][2]);
								end
								else if(r1==1)
								begin
									or2 O3E(w3[b+9*r2+27*r3+81*r4],a[n][1],a[n][2]);
								end
								else
								begin
									assign a[n][2]=a[n][1];
								end
				
								if(n%3==0)
								begin
									assign a[n][1]=g[n-1];
								end
								else if(n%3==1)
								begin
									or2 ON1(g[n-1],c[((n*(n+1))/2)-1],a[n][1]);
								end
								else
								begin
									or3 ON2(g[n-1],c[((n*(n+1))/2)-1],c[((n*(n+1))/2)-2],a[n][1]);
								end
							end
						end
					end
				end
			end	
		end
		for(n2=1;n2<=NUM;n2=n2+1)
		begin : S
			assign s[n2]=a[n2][5];
		end
		assign s[0]=c0;
		assign p0[NUM-1:0]=p[NUM-1:0];
	endgenerate
endmodule
