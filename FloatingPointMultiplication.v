module FloatingPointMultiplication(n1,n2,clk,reset,p14_15);
	input [63:0] n1;
	input [63:0] n2;
	input reset;
	input clk;
	output p14_15;
	
	//****REG****//
	
	reg [127:0] p0_0;
	wire [5+5+11+11+64+64-1:0] p0_1;
	wire [5618+55+66+5+5+11+11+1+1+1-1:0] p1_2;
	wire [10+2862+11+12+11+3-1:0] p2_3;
	wire [10+318+1272+12+11+1+1-1:0] p3_4;
	wire [10+318+636+12+25-1:0] p4_5;
	reg [318+318+12+37-1:0] p5_6;
	wire [318+49-1:0] p6_7;
	reg [99+99+7+49-1:0] p7_8;
	reg [561*3+254-1:0] p8_9;
	wire [1+1+1+33*3+56-1:0] p9_10;
	reg [1+34+33+89-1:0] p10_11;
	wire [34+122-1:0] p11_12;
	reg [54+12+10+1+2-1:0] p12_13;
	wire [3+54+12+10+1-1:0] p13_14;
	wire [63:0] p14_15;
	
	
	wire [5+5+11+11+64+64-1:0] w0_1;
	wire [5618+55+66+5+5+11+11+1+1+1-1:0] w1_2;
	wire [10+2862+11+12+11+3-1:0] w2_3;
	wire [10+318+1272+12+11+1+1-1:0] w3_4;
	wire [10+318+636+12+25-1:0] w4_5;
	wire [318+318+12+37-1:0] w5_6;
	wire [318+49-1:0] w6_7;
	wire [99+99+7+49-1:0] w7_8;
	wire [561*3+254-1:0] w8_9;
	wire [1+1+1+33*3+56-1:0] w9_10;
	wire [1+34+33+89-1:0] w10_11;
	wire [34+122-1:0] w11_12;
	wire [54+12+10+1+2-1:0] w12_13;
	wire [3+54+12+10+1-1:0] w13_14;
	wire [63:0] w14_15;
	
	//assign p0_0={n2,n1};
	assign p0_1=w0_1;
	assign p1_2=w1_2;
	assign p2_3=w2_3;
	assign p3_4=w3_4;
	assign p4_5=w4_5;
	//assign p5_6=w5_6;
	assign p6_7=w6_7;
	//assign p7_8=w7_8;
	//assign p8_9=w8_9;
	assign p9_10=w9_10;
	//assign p10_11=w10_11;
	assign p11_12=w11_12;
	//assign p12_13=w12_13;
	assign p13_14=w13_14;
	assign p14_15=w14_15;
	
	//****0****//
	wire [4:0] type1_0;
	wire [4:0] type2_0;
	wire [10:0] prop_0;
	wire [10:0] gen_0;
	
	type N1T_0 (p0_0[62:0],type1_0);
	type N2T_0 (p0_0[126:64],type2_0);
	
	assign prop_0=p0_0[62:52]^p0_0[62+64:52+64];
	assign gen_0=p0_0[62:52]&p0_0[62+64:52+64];	
	assign w0_1={type2_0,type1_0,gen_0,prop_0,p0_0};
	
	//****1****//
	
	wire [0:5617] pp_1;
	wire [10:0] goInv_1;
	wire [10:0] poInv_1;
	wire [65:0] cmInv_1;
	wire [9:0] goBias_1;
	wire [9:0] poBias_1;
	wire [54:0] cmBias_1;
	wire sign_1,c1_1,c2_1;
	
	
	partialProductGenerator PPG_1 ({p0_1[150],p0_1[51:0]},{p0_1[155],p0_1[115:64]},pp_1);
	carryMinterms #(11) EXP1_1 (p0_1[138:128],p0_1[149:139],1'b0,goInv_1,poInv_1,cmInv_1,c1_1);
	carryMinterms #(10) EXP2_1 (p0_1[137:128],p0_1[148:139],1'b1,goBias_1,poBias_1,cmBias_1,c2_1);
	
	assign sign_1=p0_1[63]^p0_1[127];
	assign w1_2={pp_1,cmBias_1,cmInv_1,p0_1[159:155],p0_1[154:150],goInv_1,poInv_1,p0_1[126],p0_1[62],sign_1};
	
	//****2****//
	
	wire [0:5617] u_2;
	wire [0:2861] c_2;
	wire [10:0] po1_2;
	wire [9:0] po2_2;
	wire [11:0] s1_2;
	wire [10:0] s2_2;
	
	assign u_2=p1_2[5773:156];
	
	carryMul #(11) CM1_2(p1_2[13:3],p1_2[24:14],p1_2[100:35],1'b0,s1_2,po1_2);
	carryMul #(10) CM2_2(p1_2[12:3],p1_2[23:14],p1_2[155:101],1'b1,s2_2,po2_2);
	
	compress16 #(0) C61_2 (u_2[0:635],c_2[0:317]);
	compress16 #(6) C62_2 (u_2[636:1271],c_2[318:635]);
	compress16 #(12) C63_2 (u_2[1272:1907],c_2[636:953]);
	compress16 #(18) C64_2 (u_2[1908:2543],c_2[954:1271]);
	compress16 #(24) C65_2 (u_2[2544:3179],c_2[1272:1589]);
	compress16 #(30) C66_2 (u_2[3180:3815],c_2[1590:1907]);
	compress16 #(36) C67_2 (u_2[3816:4451],c_2[1908:2225]);
	compress16 #(42) C68_2 (u_2[4452:5087],c_2[2226:2543]);
	compress5 #(0) C51_2 (u_2[5088:5617],c_2[2544:2861]);
	
	assign w2_3={p1_2[34:25],c_2,s2_2,s1_2,po1_2,p1_2[2:0]};
		
	//****3****//
	
	wire [0:2861] u_3;
	wire [0:1271] c_3;
	wire [10:0] sum1_3;
	wire [11:0] sum2_3;
	wire underflow_3;
	assign u_3=p2_3[2898:37];
	
	compress26 #(0) C61_3 (u_3[0:635],c_3[0:317]);
	compress26 #(12) C62_3 (u_3[636:1271],c_3[318:635]);
	compress26 #(24) C63_3 (u_3[1272:1907],c_3[636:953]);
	compress26 #(36) C64_3 (u_3[1908:2543],c_3[954:1271]);
	
	assign sum1_3 [10:0] =~(p2_3[24:14]^p2_3[13:3]);
	assign sum2_3 [9:0]=p2_3[12:3]^p2_3[35:26];
	assign sum2_3 [10]=~(p2_3[1] ^ p2_3[2] ^ p2_3[36]) & (p2_3[1] | p2_3[2] | p2_3[36]);
	assign sum2_3 [11]=p2_3[1] & p2_3[2] & p2_3[36];
	assign underflow_3 = ~(p2_3[1] | p2_3[2] | p2_3[36]);
	assign w3_4={p2_3[2908:2899],u_3[2544:2861],c_3,sum2_3,sum1_3,underflow_3,p2_3[0]};
	
	//****4****//

	wire [0:1271] u_4;
	wire [0:635] c_4;
	wire [12:0] incrExp_4;
	assign u_4=p3_4[1296:25];
	
	compress36 #(0) C61_4 (u_4[0:635],c_4[0:317]);
	compress36 #(24) C62_4 (u_4[636:1271],c_4[318:635]);
	incrementer #(12) EXP_4 (p3_4[24:13],1'b1,incrExp_4);
	
	assign w4_5={p3_4[1624:1615],p3_4[1614:1297],c_4,incrExp_4[11:0],p3_4[24:0]};

	//****5****//

	wire [0:635] u_5;
	wire [0:317] c_5;
	
	assign u_5=p4_5[672:37];
	
	compress46 #(0) c61_5 (u_5[0:635],c_5[0:317]);
	
	assign w5_6={p4_5[990:673],c_5,2'b00,p4_5[1000:991],p4_5[36:0]};
	

	//****6****//
	
	wire [0:635] u_6;
	wire [0:317] c_6;
	
	assign u_6={p5_6[366:49],p5_6[684:367]};
	
	
	compress56 #(0) c61_6 (u_6[0:635],c_6[0:317]);
	
	assign w6_7={c_6,p5_6[48:0]};
	
	//****7****//
	
	wire [0:317] u_7;
	wire [0:211] c_7;
	wire [105:7] prop_7;
	wire [105:7] gen_7;
	wire [105:0] c000,c111;
	
	assign u_7=p6_7[366:49];
	
	compress3 #(0) C31_7 (u_7[0:317],c_7[0:211]);
	
	genvar i;
	generate
		for(i=0;i<106;i=i+1)
		begin : gen
			assign c000[i]=c_7[i];
			assign c111[i]=c_7[106+i];
		end
	endgenerate
	
	assign prop_7=c000[105:7]^c111[105:7];
	assign gen_7=c000[105:7]&c111[105:7];
	assign w7_8={gen_7,prop_7,c000[6:0],p6_7[48:0]};
	
	//****8****//
	
	wire c1_8,c2_8,c3_8;
	wire [32:0] g01_8,g02_8,g03_8;
	wire [32:0] p01_8,p02_8,p03_8;
	wire [(33*34)/2-1:0] cm1_8,cm2_8,cm3_8;
	
	carryMinterms #(33) WALLACEADD1_8 (p7_8[88:56],p7_8[187:155],1'b0,g01_8,p01_8,cm1_8,c1_8);
	carryMinterms #(33) WALLACEADD2_8 (p7_8[121:89],p7_8[220:188],1'b0,g02_8,p02_8,cm2_8,c2_8);
	carryMinterms #(33) WALLACEADD3_8 (p7_8[154:122],p7_8[253:221],1'b0,g03_8,p03_8,cm3_8,c3_8);
	
	assign w8_9={p7_8[253:155],p7_8[154:56],cm3_8,cm2_8,cm1_8,p7_8[253:0]};
	
	//****9****//

	wire [32:0] p1_9,p2_9,p3_9;
	wire [33:0] s1_9,s2_9,s3_9;
	wire [32:0] sum1_9,sum2_9,sum3_9;
	
	carryMul #(33) WALLACEADD1_9 (p8_9[88:56],p8_9[187:155],p8_9[814:254],1'b0,s1_9,p1_9);
	carryMul #(33) WALLACEADD2_9 (p8_9[121:89],p8_9[220:188],p8_9[1375:815],1'b0,s2_9,p2_9);
	carryMul #(33) WALLACEADD3_9 (p8_9[154:122],p8_9[253:221],p8_9[1936:1376],1'b0,s3_9,p3_9);
	
	assign sum1_9=s1_9[32:0]^p8_9[88:56];
	assign sum2_9=s2_9[32:0]^p8_9[121:89];
	assign sum3_9=s3_9[32:0]^p8_9[154:122];
	assign w9_10={s3_9[33],s2_9[33],s1_9[33],sum3_9,sum2_9,sum1_9,p8_9[55:0]};
	
	//****10****//
	
	wire [33:0] incrFract2_10;
	wire [34:0] incrFract3_10;
	
	incrementer #(33) FRACT2_10 (p9_10[121:89],p9_10[155],incrFract2_10);
	incrementer #(34) FRACT3_10 ({p9_10[157],p9_10[154:122]},p9_10[156],incrFract3_10);
	
	assign w10_11={incrFract2_10[33],incrFract3_10[33:0],incrFract2_10[32:0],p9_10[88:0]};
	
	//****11****//
	
	wire [34:0] incrFract3_11;
	
	incrementer #(34) FRACT3_11 (p10_11[155:122],p10_11[156],incrFract3_11);
	
	assign w11_12={incrFract3_11[33:0],p10_11[121:0]};
	
	//****12****//
	
	wire [105:0] normMult_12;
	wire find1_12;
	wire round_12;
	wire [11:0] exponent_12;
	
	shift #(1,106) NORM_12 (p11_12[154:49],p11_12[154],normMult_12);
	andOrTree #(51,1) FIND1_12 (normMult_12[50:0],normMult_12[52],find1_12);
	assign round_12=find1_12 & normMult_12[51];
	assign exponent_12=(p11_12[154])?p11_12[36:25]:p11_12[24:13];
	
	assign w12_13={normMult_12[105:52],exponent_12,p11_12[46:37],round_12,p11_12[1:0]};
	
	//****13****//
	wire zero_13,zero1_13,inf1_13,inf_13,nan_13;
	wire excInf_13,excZero_13;
	wire [53:0] roundMult_13;
	
	andOrTree #(11,1) CHECKZERO_13 (p12_13[23:13],p12_13[24],excZero_13);
	andOrTree #(10,0) CHECKINF_13 (p12_13[22:13],p12_13[23],excInf_13);
	incrementer #(53) MULT_13 (p12_13[77:25],p12_13[2],roundMult_13);
	
	or3 O31_13 ((p12_13[3] & p12_13[10]),(p12_13[8] & p12_13[5]),p12_13[1],zero1_13);
	or3 O32_13 ((p12_13[5] & p12_13[10]),~excZero_13,zero1_13,zero_13);
	or3 O33_13 ((p12_13[6] & p12_13[8]),(p12_13[11] & p12_13[3]),(p12_13[6] & p12_13[11]),inf1_13);
	or3 O34_13 ((p12_13[7] | p12_13[12]),(p12_13[5] & p12_13[11]),(p12_13[10] & p12_13[6]),nan_13);
	
	assign inf_13=inf1_13 | (excInf_13 & ~nan_13);
	
	assign w13_14={nan_13,inf_13,zero_13,roundMult_13,p12_13[24:13],p12_13[12:3],p12_13[0]};
	
	//****14****//
	
	wire sign_14;
	wire inf_14;
	wire [62:0] body0_14;
	wire [62:0] body1_14;
	wire [62:0] body2_14;
	wire [62:0] body3_14;
	
	assign sign_14=p13_14[0];
	assign inf_14=p13_14[78] | p13_14[22];
	assign body0_14={p13_14[21:11],p13_14[74:23]};
	assign body1_14=(p13_14[77])?63'b0:body0_14;
	assign body2_14=(inf_14)?63'b111111111110000000000000000000000000000000000000000000000000000:body1_14;
	assign body3_14=(p13_14[79])?63'hffffffffffffffff:body2_14;
	
	assign w14_15={sign_14,body3_14};
	
	//****15****//
	
	always@(posedge clk)
	begin
		if(reset)
		begin
			p0_0<=128'b0;
			//p0_1<=160'b0;
			//p1_2<=5774'b0;
			//p2_3<=2909'b0;
			//p3_4<=1625'b0;
			//p4_5<=1001'b0;
			p5_6<=685'b0;
			//p6_7<=367'b0;
			p7_8<=254'b0;
			p8_9<=1937'b0;
			//p9_10<=158'b0;
			p10_11<=157'b0;
			//p11_12<=156'b0;
			p12_13<=79'b0;
			//p13_14<=80'b0;
			//p14_15<=64'b0;
		end
		else
		begin
			p0_0<={n2,n1};
			//p0_1<=w0_1;
			//p1_2<=w1_2;
			//p2_3<=w2_3;
			//p3_4<=w3_4;
			//p4_5<=w4_5;
			p5_6<=w5_6;
			//p6_7<=w6_7;
			p7_8<=w7_8;
			p8_9<=w8_9;
			//p9_10<=w9_10;
			p10_11<=w10_11;
			//p11_12<=w11_12;
			p12_13<=w12_13;
			//p13_14<=w13_14;
			//p14_15<=w14_15;
		end
	end
	
endmodule
