module compress36(u,c);
	input [0:635] u;
	output [0:317] c;
	// synopsys template
	parameter L=0;
	genvar i;
	generate
		for(i=0;i<L;i=i+1)
		begin : iL
			assign c[i]=1'b0;
			assign c[106+i]=1'b0;
			assign c[212+i]=1'b0;
		end
	assign c[0+L]=u[0+L];
	if(0+L<106)
	begin : i0
		assign c[106+L]=1'b0;
		assign c[212+L]=1'b0;
	end
	assign c[1+L]=u[1+L];
	if(1+L<106)
	begin : i1
		assign c[107+L]=1'b0;
		assign c[213+L]=1'b0;
	end
	assign c[2+L]=u[2+L];
	if(2+L<106)
	begin : i2
		assign c[108+L]=1'b0;
		assign c[214+L]=1'b0;
	end
	a2 w3 (u[3+L],u[109+L],c[3+L],c[4+L]);
	if(3+L<106)
	begin : i3
		assign c[109+L]=1'b0;
		assign c[215+L]=1'b0;
	end
	a2 w4 (u[4+L],u[110+L],c[110+L],c[5+L]);
	if(4+L<106)
	begin : i4
		assign c[216+L]=1'b0;
	end
	a2 w5 (u[5+L],u[111+L],c[111+L],c[6+L]);
	if(5+L<106)
	begin : i5
		assign c[217+L]=1'b0;
	end
	a2 w6 (u[6+L],u[112+L],c[112+L],c[7+L]);
	if(6+L<106)
	begin : i6
		assign c[218+L]=1'b0;
	end
	a2 w7 (u[7+L],u[113+L],c[113+L],c[8+L]);
	if(7+L<106)
	begin : i7
		assign c[219+L]=1'b0;
	end
	a3 w8 (u[8+L],u[114+L],u[220+L],c[114+L],c[9+L]);
	if(8+L<106)
	begin : i8
		assign c[220+L]=1'b0;
	end
	a3 w9 (u[9+L],u[115+L],u[221+L],c[115+L],c[10+L]);
	if(9+L<106)
	begin : i9
		assign c[221+L]=1'b0;
	end
	a3 w10 (u[10+L],u[116+L],u[222+L],c[116+L],c[11+L]);
	if(10+L<106)
	begin : i10
		assign c[222+L]=1'b0;
	end
	a3 w11 (u[11+L],u[117+L],u[223+L],c[117+L],c[12+L]);
	if(11+L<106)
	begin : i11
		assign c[223+L]=1'b0;
	end
	a4 w12 (u[12+L],u[118+L],u[224+L],u[330+L],c[118+L],c[13+L],c[14+L]);
	if(12+L<106)
	begin : i12
		assign c[224+L]=1'b0;
	end
	a4 w13 (u[13+L],u[119+L],u[225+L],u[331+L],c[119+L],c[120+L],c[15+L]);
	if(13+L<106)
	begin : i13
		assign c[225+L]=1'b0;
	end
	a4 w14 (u[14+L],u[120+L],u[226+L],u[332+L],c[226+L],c[121+L],c[16+L]);
	a5 w15 (u[15+L],u[121+L],u[227+L],u[333+L],u[439+L],c[227+L],c[122+L],c[17+L]);
	a5 w16 (u[16+L],u[122+L],u[228+L],u[334+L],u[440+L],c[228+L],c[123+L],c[18+L]);
	a5 w17 (u[17+L],u[123+L],u[229+L],u[335+L],u[441+L],c[229+L],c[124+L],c[19+L]);
	a5 w18 (u[18+L],u[124+L],u[230+L],u[336+L],u[442+L],c[230+L],c[125+L],c[20+L]);
	a5 w19 (u[19+L],u[125+L],u[231+L],u[337+L],u[443+L],c[231+L],c[126+L],c[21+L]);
	a6 w20 (u[20+L],u[126+L],u[232+L],u[338+L],u[444+L],u[550+L],c[232+L],c[127+L],c[22+L]);
	a6 w21 (u[21+L],u[127+L],u[233+L],u[339+L],u[445+L],u[551+L],c[233+L],c[128+L],c[23+L]);
	a6 w22 (u[22+L],u[128+L],u[234+L],u[340+L],u[446+L],u[552+L],c[234+L],c[129+L],c[24+L]);
	a6 w23 (u[23+L],u[129+L],u[235+L],u[341+L],u[447+L],u[553+L],c[235+L],c[130+L],c[25+L]);
	a6 w24 (u[24+L],u[130+L],u[236+L],u[342+L],u[448+L],u[554+L],c[236+L],c[131+L],c[26+L]);
	a6 w25 (u[25+L],u[131+L],u[237+L],u[343+L],u[449+L],u[555+L],c[237+L],c[132+L],c[27+L]);
	a6 w26 (u[26+L],u[132+L],u[238+L],u[344+L],u[450+L],u[556+L],c[238+L],c[133+L],c[28+L]);
	a6 w27 (u[27+L],u[133+L],u[239+L],u[345+L],u[451+L],u[557+L],c[239+L],c[134+L],c[29+L]);
	a6 w28 (u[28+L],u[134+L],u[240+L],u[346+L],u[452+L],u[558+L],c[240+L],c[135+L],c[30+L]);
	a6 w29 (u[29+L],u[135+L],u[241+L],u[347+L],u[453+L],u[559+L],c[241+L],c[136+L],c[31+L]);
	a6 w30 (u[30+L],u[136+L],u[242+L],u[348+L],u[454+L],u[560+L],c[242+L],c[137+L],c[32+L]);
	a6 w31 (u[31+L],u[137+L],u[243+L],u[349+L],u[455+L],u[561+L],c[243+L],c[138+L],c[33+L]);
	a6 w32 (u[32+L],u[138+L],u[244+L],u[350+L],u[456+L],u[562+L],c[244+L],c[139+L],c[34+L]);
	a6 w33 (u[33+L],u[139+L],u[245+L],u[351+L],u[457+L],u[563+L],c[245+L],c[140+L],c[35+L]);
	a6 w34 (u[34+L],u[140+L],u[246+L],u[352+L],u[458+L],u[564+L],c[246+L],c[141+L],c[36+L]);
	a6 w35 (u[35+L],u[141+L],u[247+L],u[353+L],u[459+L],u[565+L],c[247+L],c[142+L],c[37+L]);
	a6 w36 (u[36+L],u[142+L],u[248+L],u[354+L],u[460+L],u[566+L],c[248+L],c[143+L],c[38+L]);
	a6 w37 (u[37+L],u[143+L],u[249+L],u[355+L],u[461+L],u[567+L],c[249+L],c[144+L],c[39+L]);
	a6 w38 (u[38+L],u[144+L],u[250+L],u[356+L],u[462+L],u[568+L],c[250+L],c[145+L],c[40+L]);
	a6 w39 (u[39+L],u[145+L],u[251+L],u[357+L],u[463+L],u[569+L],c[251+L],c[146+L],c[41+L]);
	a6 w40 (u[40+L],u[146+L],u[252+L],u[358+L],u[464+L],u[570+L],c[252+L],c[147+L],c[42+L]);
	a6 w41 (u[41+L],u[147+L],u[253+L],u[359+L],u[465+L],u[571+L],c[253+L],c[148+L],c[43+L]);
	a6 w42 (u[42+L],u[148+L],u[254+L],u[360+L],u[466+L],u[572+L],c[254+L],c[149+L],c[44+L]);
	a6 w43 (u[43+L],u[149+L],u[255+L],u[361+L],u[467+L],u[573+L],c[255+L],c[150+L],c[45+L]);
	a6 w44 (u[44+L],u[150+L],u[256+L],u[362+L],u[468+L],u[574+L],c[256+L],c[151+L],c[46+L]);
	a6 w45 (u[45+L],u[151+L],u[257+L],u[363+L],u[469+L],u[575+L],c[257+L],c[152+L],c[47+L]);
	a6 w46 (u[46+L],u[152+L],u[258+L],u[364+L],u[470+L],u[576+L],c[258+L],c[153+L],c[48+L]);
	a6 w47 (u[47+L],u[153+L],u[259+L],u[365+L],u[471+L],u[577+L],c[259+L],c[154+L],c[49+L]);
	a6 w48 (u[48+L],u[154+L],u[260+L],u[366+L],u[472+L],u[578+L],c[260+L],c[155+L],c[50+L]);
	a6 w49 (u[49+L],u[155+L],u[261+L],u[367+L],u[473+L],u[579+L],c[261+L],c[156+L],c[51+L]);
	a6 w50 (u[50+L],u[156+L],u[262+L],u[368+L],u[474+L],u[580+L],c[262+L],c[157+L],c[52+L]);
	a6 w51 (u[51+L],u[157+L],u[263+L],u[369+L],u[475+L],u[581+L],c[263+L],c[158+L],c[53+L]);
	a6 w52 (u[52+L],u[158+L],u[264+L],u[370+L],u[476+L],u[582+L],c[264+L],c[159+L],c[54+L]);
	a6 w53 (u[53+L],u[159+L],u[265+L],u[371+L],u[477+L],u[583+L],c[265+L],c[160+L],c[55+L]);
	a6 w54 (u[54+L],u[160+L],u[266+L],u[372+L],u[478+L],u[584+L],c[266+L],c[161+L],c[56+L]);
	a6 w55 (u[55+L],u[161+L],u[267+L],u[373+L],u[479+L],u[585+L],c[267+L],c[162+L],c[57+L]);
	a6 w56 (u[56+L],u[162+L],u[268+L],u[374+L],u[480+L],u[586+L],c[268+L],c[163+L],c[58+L]);
	a6 w57 (u[57+L],u[163+L],u[269+L],u[375+L],u[481+L],u[587+L],c[269+L],c[164+L],c[59+L]);
	a6 w58 (u[58+L],u[164+L],u[270+L],u[376+L],u[482+L],u[588+L],c[270+L],c[165+L],c[60+L]);
	a6 w59 (u[59+L],u[165+L],u[271+L],u[377+L],u[483+L],u[589+L],c[271+L],c[166+L],c[61+L]);
	a5 w60 (u[60+L],u[166+L],u[378+L],u[484+L],u[590+L],c[272+L],c[167+L],c[62+L]);
	a5 w61 (u[61+L],u[167+L],u[379+L],u[485+L],u[591+L],c[273+L],c[168+L],c[63+L]);
	a5 w62 (u[62+L],u[168+L],u[380+L],u[486+L],u[592+L],c[274+L],c[169+L],c[64+L]);
	a5 w63 (u[63+L],u[169+L],u[381+L],u[487+L],u[593+L],c[275+L],c[170+L],c[65+L]);
	a4 w64 (u[64+L],u[382+L],u[488+L],u[594+L],c[276+L],c[171+L],c[66+L]);
	a3 w65 (u[383+L],u[489+L],u[595+L],c[277+L],c[172+L]);
	a3 w66 (u[384+L],u[490+L],u[596+L],c[278+L],c[67+L]);
	a3 w67 (u[385+L],u[491+L],u[597+L],c[173+L],c[68+L]);
	if(67+L<106)
	begin : i67
		assign c[279+L]=1'b0;
	end
	a3 w68 (u[386+L],u[492+L],u[598+L],c[174+L],c[69+L]);
	if(68+L<106)
	begin : i68
		assign c[280+L]=1'b0;
	end
	a3 w69 (u[387+L],u[493+L],u[599+L],c[175+L],c[70+L]);
	if(69+L<106)
	begin : i69
		assign c[281+L]=1'b0;
	end
	a3 w70 (u[388+L],u[494+L],u[600+L],c[176+L],c[71+L]);
	if(70+L<106)
	begin : i70
		assign c[282+L]=1'b0;
	end
	a3 w71 (u[389+L],u[495+L],u[601+L],c[177+L],c[72+L]);
	if(71+L<106)
	begin : i71
		assign c[283+L]=1'b0;
	end
	a2 w72 (u[390+L],u[496+L],c[178+L],c[73+L]);
	if(72+L<106)
	begin : i72
		assign c[284+L]=1'b0;
	end
	a2 w73 (u[391+L],u[497+L],c[179+L],c[74+L]);
	if(73+L<106)
	begin : i73
		assign c[285+L]=1'b0;
	end
	a2 w74 (u[392+L],u[498+L],c[180+L],c[75+L]);
	if(74+L<106)
	begin : i74
		assign c[286+L]=1'b0;
	end
	a2 w75 (u[393+L],u[499+L],c[181+L],c[76+L]);
	if(75+L<106)
	begin : i75
		assign c[287+L]=1'b0;
	end
	assign c[182+L]=u[394+L];
	if(76+L<106)
	begin : i76
		assign c[288+L]=1'b0;
	end
	if(77+L<106)
	begin : i77
		assign c[77+L]=1'b0;
		assign c[183+L]=1'b0;
	assign c[289+L]=1'b0;
	end
	if(78+L<106)
	begin : i78
		assign c[78+L]=1'b0;
		assign c[184+L]=1'b0;
		assign c[290+L]=1'b0;
	end
	if(79+L<106)
	begin : i79
		assign c[79+L]=1'b0;
		assign c[185+L]=1'b0;
		assign c[291+L]=1'b0;
	end
	if(80+L<106)
	begin : i80
		assign c[80+L]=1'b0;
		assign c[186+L]=1'b0;
		assign c[292+L]=1'b0;
	end
	if(81+L<106)
	begin : i81
		assign c[81+L]=1'b0;
		assign c[187+L]=1'b0;
		assign c[293+L]=1'b0;
	end
	if(82+L<106)
	begin : i82
		assign c[82+L]=1'b0;
		assign c[188+L]=1'b0;
		assign c[294+L]=1'b0;
	end
	if(83+L<106)
	begin : i83
		assign c[83+L]=1'b0;
		assign c[189+L]=1'b0;
		assign c[295+L]=1'b0;
	end
	if(84+L<106)
	begin : i84
		assign c[84+L]=1'b0;
		assign c[190+L]=1'b0;
		assign c[296+L]=1'b0;
	end
	if(85+L<106)
	begin : i85
		assign c[85+L]=1'b0;
		assign c[191+L]=1'b0;
		assign c[297+L]=1'b0;
	end
	if(86+L<106)
	begin : i86
		assign c[86+L]=1'b0;
		assign c[192+L]=1'b0;
		assign c[298+L]=1'b0;
	end
	if(87+L<106)
	begin : i87
		assign c[87+L]=1'b0;
		assign c[193+L]=1'b0;
		assign c[299+L]=1'b0;
	end
	if(88+L<106)
	begin : i88
		assign c[88+L]=1'b0;
		assign c[194+L]=1'b0;
		assign c[300+L]=1'b0;
	end
	if(89+L<106)
	begin : i89
		assign c[89+L]=1'b0;
		assign c[195+L]=1'b0;
		assign c[301+L]=1'b0;
	end
	if(90+L<106)
	begin : i90
		assign c[90+L]=1'b0;
		assign c[196+L]=1'b0;
		assign c[302+L]=1'b0;
	end
	if(91+L<106)
	begin : i91
		assign c[91+L]=1'b0;
		assign c[197+L]=1'b0;
		assign c[303+L]=1'b0;
	end
	if(92+L<106)
	begin : i92
		assign c[92+L]=1'b0;
		assign c[198+L]=1'b0;
		assign c[304+L]=1'b0;
	end
	if(93+L<106)
	begin : i93
		assign c[93+L]=1'b0;
		assign c[199+L]=1'b0;
		assign c[305+L]=1'b0;
	end
	if(94+L<106)
	begin : i94
		assign c[94+L]=1'b0;
		assign c[200+L]=1'b0;
		assign c[306+L]=1'b0;
	end
	if(95+L<106)
	begin : i95
		assign c[95+L]=1'b0;
		assign c[201+L]=1'b0;
		assign c[307+L]=1'b0;
	end
	if(96+L<106)
	begin : i96
		assign c[96+L]=1'b0;
		assign c[202+L]=1'b0;
		assign c[308+L]=1'b0;
	end
	if(97+L<106)
	begin : i97
		assign c[97+L]=1'b0;
		assign c[203+L]=1'b0;
		assign c[309+L]=1'b0;
	end
	if(98+L<106)
	begin : i98
		assign c[98+L]=1'b0;
		assign c[204+L]=1'b0;
		assign c[310+L]=1'b0;
	end
	if(99+L<106)
	begin : i99
		assign c[99+L]=1'b0;
		assign c[205+L]=1'b0;
		assign c[311+L]=1'b0;
	end
	if(100+L<106)
	begin : i100
		assign c[100+L]=1'b0;
		assign c[206+L]=1'b0;
		assign c[312+L]=1'b0;
	end
	if(101+L<106)
	begin : i101
		assign c[101+L]=1'b0;
		assign c[207+L]=1'b0;
		assign c[313+L]=1'b0;
	end
	if(102+L<106)
	begin : i102
		assign c[102+L]=1'b0;
		assign c[208+L]=1'b0;
		assign c[314+L]=1'b0;
	end
	if(103+L<106)
	begin : i103
		assign c[103+L]=1'b0;
		assign c[209+L]=1'b0;
		assign c[315+L]=1'b0;
	end
	if(104+L<106)
	begin : i104
		assign c[104+L]=1'b0;
		assign c[210+L]=1'b0;
		assign c[316+L]=1'b0;
	end
	if(105+L<106)
	begin : i105
		assign c[105+L]=1'b0;
		assign c[211+L]=1'b0;
		assign c[317+L]=1'b0;
	end
	endgenerate
endmodule
