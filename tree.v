module andOrTree(n,c0,t);
	// synopsys template
	parameter NUM=20;
	parameter type=0;
	input [NUM-1:0] n;
	input c0;
	output t;
	wire w3[NUM-3:0];
	wire w9[NUM-9:0];
	wire w27[NUM-27:0];
	wire a[4:1];
	genvar i,j,k,r1,r2,r3;
	generate
		if(type==0)
		begin
			for(i=0;i<=NUM-3;i=i+3)
			begin : AND3TREE
				and3 A3T(n[i],n[i+1],n[i+2],w3[i]);
			end
			for(j=0;j<=NUM-9;j=j+9)
			begin : AND9TREE
				and3 A9T(w3[j],w3[j+3],w3[j+6],w9[j]);
			end
			for(k=0;k<=NUM-27;k=k+27)
			begin : AND27TREE
				and3 A27T(w9[k],w9[k+9],w9[k+18],w27[k]);
			end
			for(r1=(NUM/3)%3;r1<3;r1=r1+3)
			begin : R1
				for(r2=((NUM/3)/3)%3;r2<3;r2=r2+3)
				begin : R2
					for(r3=(((NUM/3)/3)/3)%3;r3<3;r3=r3+3)
					begin : R3
					
					if(r3==2)
					begin : R32
						and3 A3R3(w27[0],w27[27],a[3],a[4]);
					end
					else if(r3==1)
					begin : R31
						and2 A2R3(w27[0],a[3],a[4]);
					end
					else
					begin : R30
						assign a[4]=a[3];
					end
					
					if(r2==2)
					begin : R22
						and3 A3R2(w9[27*r3],w9[27*r3+9],a[2],a[3]);
					end
					else if(r2==1)
					begin : R21
						and2 A2R2(w9[27*r3],a[2],a[3]);
					end
					else
					begin : R20
						assign a[3]=a[2];
					end
					
					if(r1==2)
					begin : R12
						and3 A3R1(w3[27*r3+9*r2],w3[27*r3+9*r2+3],a[1],a[2]);
					end
					else if(r1==1)
					begin : R11
						and2 A2R1(w3[27*r3+9*r2],a[1],a[2]);
					end
					else
					begin : R10
						assign a[2]=a[1];
					end
					
					if(NUM%3==2)
					begin : R02
						and3 A3R0(n[NUM-1],n[NUM-2],c0,a[1]);
					end
					else if(NUM%3==1)
					begin : R01
						and2 A2R0(n[NUM-1],c0,a[1]);
					end
					else 
					begin : R00
						assign a[1]=c0;
					end
					
					end
				end
			end
		end
		else
		begin
			for(i=0;i<=NUM-3;i=i+3)
			begin : OR3TREE
				or3 O3T(n[i],n[i+1],n[i+2],w3[i]);
			end
			for(j=0;j<=NUM-9;j=j+9)
			begin : OR9TREE
				or3 O9T(w3[j],w3[j+3],w3[j+6],w9[j]);
			end
			for(k=0;k<=NUM-27;k=k+27)
			begin : OR27TREE
				or3 O27T(w9[k],w9[k+9],w9[k+18],w27[k]);
			end
			for(r1=(NUM/3)%3;r1<3;r1=r1+3)
			begin : O1
				for(r2=((NUM/3)/3)%3;r2<3;r2=r2+3)
				begin : O2
					for(r3=(((NUM/3)/3)/3)%3;r3<3;r3=r3+3)
					begin : O3
					
					if(r3==2)
					begin : RO32
						or3 O3R3(w27[0],w27[27],a[3],a[4]);
					end
					else if(r3==1)
					begin : RO31
						or2 O2R3(w27[0],a[3],a[4]);
					end
					else
					begin : RO30
						assign a[4]=a[3];
					end
					
					if(r2==2)
					begin : RO22
						or3 O3R2(w9[27*r3],w9[27*r3+9],a[2],a[3]);
					end
					else if(r2==1)
					begin : RO21
						or2 O2R2(w9[27*r3],a[2],a[3]);
					end
					else
					begin : RO20
						assign a[3]=a[2];
					end
					
					if(r1==2)
					begin : RO12
						or3 O3R1(w3[27*r3+9*r2],w3[27*r3+9*r2+3],a[1],a[2]);
					end
					else if(r1==1)
					begin : RO11
						or2 O2R1(w3[27*r3+9*r2],a[1],a[2]);
					end
					else
					begin : RO10
						assign a[2]=a[1];
					end
					
					if(NUM%3==2)
					begin : RO02
						or3 O3R0(n[NUM-1],n[NUM-2],c0,a[1]);
					end
					else if(NUM%3==1)
					begin :RO01
						or2 O2R0(n[NUM-1],c0,a[1]);
					end
					else 
					begin : RO00
						assign a[1]=c0;
					end
					
					end
				end
			end
		end
		assign t=a[4];
	endgenerate
endmodule
