module compress56(u,c);
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
	assign c[3+L]=u[3+L];
	if(3+L<106)
	begin : i3
		assign c[109+L]=1'b0;
		assign c[215+L]=1'b0;
	end
	assign c[4+L]=u[4+L];
	if(4+L<106)
	begin : i4
		assign c[110+L]=1'b0;
		assign c[216+L]=1'b0;
	end
	a2 w5 (u[5+L],u[111+L],c[5+L],c[6+L]);
	if(5+L<106)
	begin : i5
		assign c[111+L]=1'b0;
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
	a2 w8 (u[8+L],u[114+L],c[114+L],c[9+L]);
	if(8+L<106)
	begin : i8
		assign c[220+L]=1'b0;
	end
	a2 w9 (u[9+L],u[115+L],c[115+L],c[10+L]);
	if(9+L<106)
	begin : i9
		assign c[221+L]=1'b0;
	end
	a2 w10 (u[10+L],u[116+L],c[116+L],c[11+L]);
	if(10+L<106)
	begin : i10
		assign c[222+L]=1'b0;
	end
	a2 w11 (u[11+L],u[117+L],c[117+L],c[12+L]);
	if(11+L<106)
	begin : i11
		assign c[223+L]=1'b0;
	end
	a2 w12 (u[12+L],u[118+L],c[118+L],c[13+L]);
	if(12+L<106)
	begin : i12
		assign c[224+L]=1'b0;
	end
	a2 w13 (u[13+L],u[119+L],c[119+L],c[14+L]);
	if(13+L<106)
	begin : i13
		assign c[225+L]=1'b0;
	end
	a2 w14 (u[14+L],u[120+L],c[120+L],c[15+L]);
	if(14+L<106)
	begin : i14
		assign c[226+L]=1'b0;
	end
	a2 w15 (u[15+L],u[121+L],c[121+L],c[16+L]);
	if(15+L<106)
	begin : i15
		assign c[227+L]=1'b0;
	end
	a2 w16 (u[16+L],u[122+L],c[122+L],c[17+L]);
	if(16+L<106)
	begin : i16
		assign c[228+L]=1'b0;
	end
	a2 w17 (u[17+L],u[123+L],c[123+L],c[18+L]);
	if(17+L<106)
	begin : i17
		assign c[229+L]=1'b0;
	end
	a2 w18 (u[18+L],u[124+L],c[124+L],c[19+L]);
	if(18+L<106)
	begin : i18
		assign c[230+L]=1'b0;
	end
	a2 w19 (u[19+L],u[125+L],c[125+L],c[20+L]);
	if(19+L<106)
	begin : i19
		assign c[231+L]=1'b0;
	end
	a2 w20 (u[20+L],u[126+L],c[126+L],c[21+L]);
	if(20+L<106)
	begin : i20
		assign c[232+L]=1'b0;
	end
	a2 w21 (u[21+L],u[127+L],c[127+L],c[22+L]);
	if(21+L<106)
	begin : i21
		assign c[233+L]=1'b0;
	end
	a2 w22 (u[22+L],u[128+L],c[128+L],c[23+L]);
	if(22+L<106)
	begin : i22
		assign c[234+L]=1'b0;
	end
	a2 w23 (u[23+L],u[129+L],c[129+L],c[24+L]);
	if(23+L<106)
	begin : i23
		assign c[235+L]=1'b0;
	end
	a2 w24 (u[24+L],u[130+L],c[130+L],c[25+L]);
	if(24+L<106)
	begin : i24
		assign c[236+L]=1'b0;
	end
	a2 w25 (u[25+L],u[131+L],c[131+L],c[26+L]);
	if(25+L<106)
	begin : i25
		assign c[237+L]=1'b0;
	end
	a3 w26 (u[26+L],u[132+L],u[238+L],c[132+L],c[27+L]);
	if(26+L<106)
	begin : i26
		assign c[238+L]=1'b0;
	end
	a3 w27 (u[27+L],u[133+L],u[239+L],c[133+L],c[28+L]);
	if(27+L<106)
	begin : i27
		assign c[239+L]=1'b0;
	end
	a3 w28 (u[28+L],u[134+L],u[240+L],c[134+L],c[29+L]);
	if(28+L<106)
	begin : i28
		assign c[240+L]=1'b0;
	end
	a3 w29 (u[29+L],u[135+L],u[241+L],c[135+L],c[30+L]);
	if(29+L<106)
	begin : i29
		assign c[241+L]=1'b0;
	end
	a3 w30 (u[30+L],u[136+L],u[242+L],c[136+L],c[31+L]);
	if(30+L<106)
	begin : i30
		assign c[242+L]=1'b0;
	end
	a3 w31 (u[31+L],u[137+L],u[243+L],c[137+L],c[32+L]);
	if(31+L<106)
	begin : i31
		assign c[243+L]=1'b0;
	end
	a3 w32 (u[32+L],u[138+L],u[244+L],c[138+L],c[33+L]);
	if(32+L<106)
	begin : i32
		assign c[244+L]=1'b0;
	end
	a3 w33 (u[33+L],u[139+L],u[245+L],c[139+L],c[34+L]);
	if(33+L<106)
	begin : i33
		assign c[245+L]=1'b0;
	end
	a3 w34 (u[34+L],u[140+L],u[246+L],c[140+L],c[35+L]);
	if(34+L<106)
	begin : i34
		assign c[246+L]=1'b0;
	end
	a3 w35 (u[35+L],u[141+L],u[247+L],c[141+L],c[36+L]);
	if(35+L<106)
	begin : i35
		assign c[247+L]=1'b0;
	end
	a3 w36 (u[36+L],u[142+L],u[248+L],c[142+L],c[37+L]);
	if(36+L<106)
	begin : i36
		assign c[248+L]=1'b0;
	end
	a3 w37 (u[37+L],u[143+L],u[249+L],c[143+L],c[38+L]);
	if(37+L<106)
	begin : i37
		assign c[249+L]=1'b0;
	end
	a3 w38 (u[38+L],u[144+L],u[250+L],c[144+L],c[39+L]);
	if(38+L<106)
	begin : i38
		assign c[250+L]=1'b0;
	end
	a3 w39 (u[39+L],u[145+L],u[251+L],c[145+L],c[40+L]);
	if(39+L<106)
	begin : i39
		assign c[251+L]=1'b0;
	end
	a3 w40 (u[40+L],u[146+L],u[252+L],c[146+L],c[41+L]);
	if(40+L<106)
	begin : i40
		assign c[252+L]=1'b0;
	end
	a3 w41 (u[41+L],u[147+L],u[253+L],c[147+L],c[42+L]);
	if(41+L<106)
	begin : i41
		assign c[253+L]=1'b0;
	end
	a3 w42 (u[42+L],u[148+L],u[254+L],c[148+L],c[43+L]);
	if(42+L<106)
	begin : i42
		assign c[254+L]=1'b0;
	end
	a3 w43 (u[43+L],u[149+L],u[255+L],c[149+L],c[44+L]);
	if(43+L<106)
	begin : i43
		assign c[255+L]=1'b0;
	end
	a3 w44 (u[44+L],u[150+L],u[256+L],c[150+L],c[45+L]);
	if(44+L<106)
	begin : i44
		assign c[256+L]=1'b0;
	end
	a3 w45 (u[45+L],u[151+L],u[257+L],c[151+L],c[46+L]);
	if(45+L<106)
	begin : i45
		assign c[257+L]=1'b0;
	end
	a3 w46 (u[46+L],u[152+L],u[258+L],c[152+L],c[47+L]);
	if(46+L<106)
	begin : i46
		assign c[258+L]=1'b0;
	end
	a3 w47 (u[47+L],u[153+L],u[259+L],c[153+L],c[48+L]);
	if(47+L<106)
	begin : i47
		assign c[259+L]=1'b0;
	end
	a4 w48 (u[48+L],u[154+L],u[260+L],u[366+L],c[154+L],c[49+L],c[50+L]);
	if(48+L<106)
	begin : i48
		assign c[260+L]=1'b0;
	end
	a4 w49 (u[49+L],u[155+L],u[261+L],u[367+L],c[155+L],c[156+L],c[51+L]);
	if(49+L<106)
	begin : i49
		assign c[261+L]=1'b0;
	end
	a5 w50 (u[50+L],u[156+L],u[262+L],u[368+L],u[474+L],c[262+L],c[157+L],c[52+L]);
	a5 w51 (u[51+L],u[157+L],u[263+L],u[369+L],u[475+L],c[263+L],c[158+L],c[53+L]);
	a5 w52 (u[52+L],u[158+L],u[264+L],u[370+L],u[476+L],c[264+L],c[159+L],c[54+L]);
	a6 w53 (u[53+L],u[159+L],u[265+L],u[371+L],u[477+L],u[583+L],c[265+L],c[160+L],c[55+L]);
	a6 w54 (u[54+L],u[160+L],u[266+L],u[372+L],u[478+L],u[584+L],c[266+L],c[161+L],c[56+L]);
	a6 w55 (u[55+L],u[161+L],u[267+L],u[373+L],u[479+L],u[585+L],c[267+L],c[162+L],c[57+L]);
	a6 w56 (u[56+L],u[162+L],u[268+L],u[374+L],u[480+L],u[586+L],c[268+L],c[163+L],c[58+L]);
	a6 w57 (u[57+L],u[163+L],u[269+L],u[375+L],u[481+L],u[587+L],c[269+L],c[164+L],c[59+L]);
	a6 w58 (u[58+L],u[164+L],u[270+L],u[376+L],u[482+L],u[588+L],c[270+L],c[165+L],c[60+L]);
	a6 w59 (u[59+L],u[165+L],u[271+L],u[377+L],u[483+L],u[589+L],c[271+L],c[166+L],c[61+L]);
	a6 w60 (u[60+L],u[166+L],u[272+L],u[378+L],u[484+L],u[590+L],c[272+L],c[167+L],c[62+L]);
	a6 w61 (u[61+L],u[167+L],u[273+L],u[379+L],u[485+L],u[591+L],c[273+L],c[168+L],c[63+L]);
	a6 w62 (u[62+L],u[168+L],u[274+L],u[380+L],u[486+L],u[592+L],c[274+L],c[169+L],c[64+L]);
	a6 w63 (u[63+L],u[169+L],u[275+L],u[381+L],u[487+L],u[593+L],c[275+L],c[170+L],c[65+L]);
	a6 w64 (u[64+L],u[170+L],u[276+L],u[382+L],u[488+L],u[594+L],c[276+L],c[171+L],c[66+L]);
	a6 w65 (u[65+L],u[171+L],u[277+L],u[383+L],u[489+L],u[595+L],c[277+L],c[172+L],c[67+L]);
	a6 w66 (u[66+L],u[172+L],u[278+L],u[384+L],u[490+L],u[596+L],c[278+L],c[173+L],c[68+L]);
	a6 w67 (u[67+L],u[173+L],u[279+L],u[385+L],u[491+L],u[597+L],c[279+L],c[174+L],c[69+L]);
	a6 w68 (u[68+L],u[174+L],u[280+L],u[386+L],u[492+L],u[598+L],c[280+L],c[175+L],c[70+L]);
	a6 w69 (u[69+L],u[175+L],u[281+L],u[387+L],u[493+L],u[599+L],c[281+L],c[176+L],c[71+L]);
	a6 w70 (u[70+L],u[176+L],u[282+L],u[388+L],u[494+L],u[600+L],c[282+L],c[177+L],c[72+L]);
	a6 w71 (u[71+L],u[177+L],u[283+L],u[389+L],u[495+L],u[601+L],c[283+L],c[178+L],c[73+L]);
	a6 w72 (u[72+L],u[178+L],u[284+L],u[390+L],u[496+L],u[602+L],c[284+L],c[179+L],c[74+L]);
	a6 w73 (u[73+L],u[179+L],u[285+L],u[391+L],u[497+L],u[603+L],c[285+L],c[180+L],c[75+L]);
	a6 w74 (u[74+L],u[180+L],u[286+L],u[392+L],u[498+L],u[604+L],c[286+L],c[181+L],c[76+L]);
	a6 w75 (u[75+L],u[181+L],u[287+L],u[393+L],u[499+L],u[605+L],c[287+L],c[182+L],c[77+L]);
	a6 w76 (u[76+L],u[182+L],u[288+L],u[394+L],u[500+L],u[606+L],c[288+L],c[183+L],c[78+L]);
	a6 w77 (u[77+L],u[183+L],u[289+L],u[395+L],u[501+L],u[607+L],c[289+L],c[184+L],c[79+L]);
	a6 w78 (u[78+L],u[184+L],u[290+L],u[396+L],u[502+L],u[608+L],c[290+L],c[185+L],c[80+L]);
	a5 w79 (u[79+L],u[185+L],u[397+L],u[503+L],u[609+L],c[291+L],c[186+L],c[81+L]);
	a5 w80 (u[80+L],u[186+L],u[398+L],u[504+L],u[610+L],c[292+L],c[187+L],c[82+L]);
	a5 w81 (u[81+L],u[187+L],u[399+L],u[505+L],u[611+L],c[293+L],c[188+L],c[83+L]);
	a5 w82 (u[82+L],u[188+L],u[400+L],u[506+L],u[612+L],c[294+L],c[189+L],c[84+L]);
	a5 w83 (u[83+L],u[189+L],u[401+L],u[507+L],u[613+L],c[295+L],c[190+L],c[85+L]);
	a5 w84 (u[84+L],u[190+L],u[402+L],u[508+L],u[614+L],c[296+L],c[191+L],c[86+L]);
	a5 w85 (u[85+L],u[191+L],u[403+L],u[509+L],u[615+L],c[297+L],c[192+L],c[87+L]);
	a5 w86 (u[86+L],u[192+L],u[404+L],u[510+L],u[616+L],c[298+L],c[193+L],c[88+L]);
	a5 w87 (u[87+L],u[193+L],u[405+L],u[511+L],u[617+L],c[299+L],c[194+L],c[89+L]);
	a5 w88 (u[88+L],u[194+L],u[406+L],u[512+L],u[618+L],c[300+L],c[195+L],c[90+L]);
	a5 w89 (u[89+L],u[195+L],u[407+L],u[513+L],u[619+L],c[301+L],c[196+L],c[91+L]);
	a5 w90 (u[90+L],u[196+L],u[408+L],u[514+L],u[620+L],c[302+L],c[197+L],c[92+L]);
	a5 w91 (u[91+L],u[197+L],u[409+L],u[515+L],u[621+L],c[303+L],c[198+L],c[93+L]);
	a5 w92 (u[92+L],u[198+L],u[410+L],u[516+L],u[622+L],c[304+L],c[199+L],c[94+L]);
	a5 w93 (u[93+L],u[199+L],u[411+L],u[517+L],u[623+L],c[305+L],c[200+L],c[95+L]);
	a5 w94 (u[94+L],u[200+L],u[412+L],u[518+L],u[624+L],c[306+L],c[201+L],c[96+L]);
	a5 w95 (u[95+L],u[201+L],u[413+L],u[519+L],u[625+L],c[307+L],c[202+L],c[97+L]);
	a5 w96 (u[96+L],u[202+L],u[414+L],u[520+L],u[626+L],c[308+L],c[203+L],c[98+L]);
	a5 w97 (u[97+L],u[203+L],u[415+L],u[521+L],u[627+L],c[309+L],c[204+L],c[99+L]);
	a5 w98 (u[98+L],u[204+L],u[416+L],u[522+L],u[628+L],c[310+L],c[205+L],c[100+L]);
	a5 w99 (u[99+L],u[205+L],u[417+L],u[523+L],u[629+L],c[311+L],c[206+L],c[101+L]);
	a5 w100 (u[100+L],u[206+L],u[418+L],u[524+L],u[630+L],c[312+L],c[207+L],c[102+L]);
	a4 w101 (u[101+L],u[419+L],u[525+L],u[631+L],c[313+L],c[208+L],c[103+L]);
	a3 w102 (u[420+L],u[526+L],u[632+L],c[314+L],c[209+L]);
	a3 w103 (u[421+L],u[527+L],u[633+L],c[315+L],c[104+L]);
	a2 w104 (u[422+L],u[528+L],c[210+L],c[105+L]);
	if(104+L<106)
	begin : i104
		assign c[316+L]=1'b0;
	end
	if(105+L<106)
	begin : i105
		assign c[211+L]=1'b0;
		assign c[317+L]=1'b0;
	end
	endgenerate
endmodule
