module compress5(u,c);
	input [0:529] u;
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
	if(0+L<106)
	begin : i0
		assign c[0+L]=1'b0;
		assign c[106+L]=1'b0;
		assign c[212+L]=1'b0;
	end
	if(1+L<106)
	begin :i1
		assign c[1+L]=1'b0;
		assign c[107+L]=1'b0;
		assign c[213+L]=1'b0;
	end
	if(2+L<106)
	begin : i2
		assign c[2+L]=1'b0;
		assign c[108+L]=1'b0;
		assign c[214+L]=1'b0;
	end
	if(3+L<106)
	begin : i3
		assign c[3+L]=1'b0;
		assign c[109+L]=1'b0;
		assign c[215+L]=1'b0;
	end
	if(4+L<106)
	begin : i4
		assign c[4+L]=1'b0;
		assign c[110+L]=1'b0;
	assign c[216+L]=1'b0;
	end
	if(5+L<106)
	begin : i5
		assign c[5+L]=1'b0;
		assign c[111+L]=1'b0;
		assign c[217+L]=1'b0;
	end
	if(6+L<106)
	begin : i6
		assign c[6+L]=1'b0;
		assign c[112+L]=1'b0;
		assign c[218+L]=1'b0;
	end
	if(7+L<106)
	begin : i7
		assign c[7+L]=1'b0;
		assign c[113+L]=1'b0;
		assign c[219+L]=1'b0;
	end
	if(8+L<106)
	begin : i8
		assign c[8+L]=1'b0;
		assign c[114+L]=1'b0;
		assign c[220+L]=1'b0;
	end
	if(9+L<106)
	begin : i9
		assign c[9+L]=1'b0;
		assign c[115+L]=1'b0;
	assign c[221+L]=1'b0;
	end
	if(10+L<106)
	begin : i10
		assign c[10+L]=1'b0;
		assign c[116+L]=1'b0;
	assign c[222+L]=1'b0;
	end
	if(11+L<106)
	begin : i11
		assign c[11+L]=1'b0;
		assign c[117+L]=1'b0;
		assign c[223+L]=1'b0;
	end
	if(12+L<106)
	begin : i12
		assign c[12+L]=1'b0;
		assign c[118+L]=1'b0;
		assign c[224+L]=1'b0;
	end
	if(13+L<106)
	begin : i13
		assign c[13+L]=1'b0;
		assign c[119+L]=1'b0;
		assign c[225+L]=1'b0;
	end
	if(14+L<106)
	begin : i14
		assign c[14+L]=1'b0;
		assign c[120+L]=1'b0;
		assign c[226+L]=1'b0;
	end
	if(15+L<106)
	begin : i15
		assign c[15+L]=1'b0;
		assign c[121+L]=1'b0;
		assign c[227+L]=1'b0;
	end
	if(16+L<106)
	begin : i16
		assign c[16+L]=1'b0;
		assign c[122+L]=1'b0;
		assign c[228+L]=1'b0;
	end
	if(17+L<106)
	begin : i17
		assign c[17+L]=1'b0;
		assign c[123+L]=1'b0;
		assign c[229+L]=1'b0;
	end
	if(18+L<106)
	begin : i18
		assign c[18+L]=1'b0;
		assign c[124+L]=1'b0;
		assign c[230+L]=1'b0;
	end
	if(19+L<106)
	begin : i19
		assign c[19+L]=1'b0;
		assign c[125+L]=1'b0;
		assign c[231+L]=1'b0;
	end
	if(20+L<106)
	begin : i20
		assign c[20+L]=1'b0;
		assign c[126+L]=1'b0;
		assign c[232+L]=1'b0;
	end
	if(21+L<106)
	begin : i21
		assign c[21+L]=1'b0;
		assign c[127+L]=1'b0;
		assign c[233+L]=1'b0;
	end
	if(22+L<106)
	begin : i22
		assign c[22+L]=1'b0;
		assign c[128+L]=1'b0;
		assign c[234+L]=1'b0;
	end
	if(23+L<106)
	begin : i23
		assign c[23+L]=1'b0;
		assign c[129+L]=1'b0;
		assign c[235+L]=1'b0;
	end
	if(24+L<106)
	begin : i24
		assign c[24+L]=1'b0;
		assign c[130+L]=1'b0;
		assign c[236+L]=1'b0;
	end
	if(25+L<106)
	begin : i25
		assign c[25+L]=1'b0;
		assign c[131+L]=1'b0;
		assign c[237+L]=1'b0;
	end
	if(26+L<106)
	begin : i26
		assign c[26+L]=1'b0;
		assign c[132+L]=1'b0;
		assign c[238+L]=1'b0;
	end
	if(27+L<106)
	begin : i27
		assign c[27+L]=1'b0;
		assign c[133+L]=1'b0;
		assign c[239+L]=1'b0;
	end
	if(28+L<106)
	begin : i28
		assign c[28+L]=1'b0;
		assign c[134+L]=1'b0;
		assign c[240+L]=1'b0;
	end
	if(29+L<106)
	begin : i29
		assign c[29+L]=1'b0;
		assign c[135+L]=1'b0;
		assign c[241+L]=1'b0;
	end
	if(30+L<106)
	begin : i30
		assign c[30+L]=1'b0;
		assign c[136+L]=1'b0;
		assign c[242+L]=1'b0;
	end
	if(31+L<106)
	begin : i31
		assign c[31+L]=1'b0;
		assign c[137+L]=1'b0;
		assign c[243+L]=1'b0;
	end
	if(32+L<106)
	begin : i32
		assign c[32+L]=1'b0;
		assign c[138+L]=1'b0;
		assign c[244+L]=1'b0;
	end
	if(33+L<106)
	begin : i33
		assign c[33+L]=1'b0;
		assign c[139+L]=1'b0;
		assign c[245+L]=1'b0;
	end
	if(34+L<106)
	begin : i34
		assign c[34+L]=1'b0;
		assign c[140+L]=1'b0;
		assign c[246+L]=1'b0;
	end
	if(35+L<106)
	begin : i35
		assign c[35+L]=1'b0;
		assign c[141+L]=1'b0;
		assign c[247+L]=1'b0;
	end
	if(36+L<106)
	begin : i36
		assign c[36+L]=1'b0;
		assign c[142+L]=1'b0;
		assign c[248+L]=1'b0;
	end
	if(37+L<106)
	begin : i37
		assign c[37+L]=1'b0;
		assign c[143+L]=1'b0;
		assign c[249+L]=1'b0;
	end
	if(38+L<106)
	begin : i38
		assign c[38+L]=1'b0;
		assign c[144+L]=1'b0;
		assign c[250+L]=1'b0;
	end
	if(39+L<106)
	begin : i39
		assign c[39+L]=1'b0;
		assign c[145+L]=1'b0;
		assign c[251+L]=1'b0;
	end
	if(40+L<106)
	begin : i40
		assign c[40+L]=1'b0;
		assign c[146+L]=1'b0;
	assign c[252+L]=1'b0;
	end
	if(41+L<106)
	begin : i41
		assign c[41+L]=1'b0;
		assign c[147+L]=1'b0;
		assign c[253+L]=1'b0;
	end
	if(42+L<106)
	begin : i42
		assign c[42+L]=1'b0;
		assign c[148+L]=1'b0;
		assign c[254+L]=1'b0;
	end
	if(43+L<106)
	begin : i43
		assign c[43+L]=1'b0;
		assign c[149+L]=1'b0;
		assign c[255+L]=1'b0;
	end
	if(44+L<106)
	begin : i44
		assign c[44+L]=1'b0;
		assign c[150+L]=1'b0;
		assign c[256+L]=1'b0;
	end
	if(45+L<106)
	begin : i45
		assign c[45+L]=1'b0;
		assign c[151+L]=1'b0;
		assign c[257+L]=1'b0;
	end
	if(46+L<106)
	begin : i46
		assign c[46+L]=1'b0;
		assign c[152+L]=1'b0;
		assign c[258+L]=1'b0;
	end
	if(47+L<106)
	begin : i47
		assign c[47+L]=1'b0;
		assign c[153+L]=1'b0;
		assign c[259+L]=1'b0;
	end
	assign c[48+L]=u[48+L];
	if(48+L<106)
	begin : i48
		assign c[154+L]=1'b0;
		assign c[260+L]=1'b0;
	end
	a2 w49 (u[49+L],u[155+L],c[49+L],c[50+L]);
	if(49+L<106)
	begin : i49
		assign c[155+L]=1'b0;
		assign c[261+L]=1'b0;
	end
	a3 w50 (u[50+L],u[156+L],u[262+L],c[156+L],c[51+L]);
	if(50+L<106)
	begin : i50
		assign c[262+L]=1'b0;
	end
	a4 w51 (u[51+L],u[157+L],u[263+L],u[369+L],c[157+L],c[52+L],c[53+L]);
	if(51+L<106)
	begin : i51
		assign c[263+L]=1'b0;
	end
	a5 w52 (u[52+L],u[158+L],u[264+L],u[370+L],u[476+L],c[158+L],c[159+L],c[54+L]);
	if(52+L<106)
	begin : i52
		assign c[264+L]=1'b0;
	end
	a5 w53 (u[53+L],u[159+L],u[265+L],u[371+L],u[477+L],c[265+L],c[160+L],c[55+L]);
	a5 w54 (u[54+L],u[160+L],u[266+L],u[372+L],u[478+L],c[266+L],c[161+L],c[56+L]);
	a5 w55 (u[55+L],u[161+L],u[267+L],u[373+L],u[479+L],c[267+L],c[162+L],c[57+L]);
	a5 w56 (u[56+L],u[162+L],u[268+L],u[374+L],u[480+L],c[268+L],c[163+L],c[58+L]);
	a5 w57 (u[57+L],u[163+L],u[269+L],u[375+L],u[481+L],c[269+L],c[164+L],c[59+L]);
	a5 w58 (u[58+L],u[164+L],u[270+L],u[376+L],u[482+L],c[270+L],c[165+L],c[60+L]);
	a5 w59 (u[59+L],u[165+L],u[271+L],u[377+L],u[483+L],c[271+L],c[166+L],c[61+L]);
	a5 w60 (u[60+L],u[166+L],u[272+L],u[378+L],u[484+L],c[272+L],c[167+L],c[62+L]);
	a5 w61 (u[61+L],u[167+L],u[273+L],u[379+L],u[485+L],c[273+L],c[168+L],c[63+L]);
	a5 w62 (u[62+L],u[168+L],u[274+L],u[380+L],u[486+L],c[274+L],c[169+L],c[64+L]);
	a5 w63 (u[63+L],u[169+L],u[275+L],u[381+L],u[487+L],c[275+L],c[170+L],c[65+L]);
	a5 w64 (u[64+L],u[170+L],u[276+L],u[382+L],u[488+L],c[276+L],c[171+L],c[66+L]);
	a5 w65 (u[65+L],u[171+L],u[277+L],u[383+L],u[489+L],c[277+L],c[172+L],c[67+L]);
	a5 w66 (u[66+L],u[172+L],u[278+L],u[384+L],u[490+L],c[278+L],c[173+L],c[68+L]);
	a5 w67 (u[67+L],u[173+L],u[279+L],u[385+L],u[491+L],c[279+L],c[174+L],c[69+L]);
	a5 w68 (u[68+L],u[174+L],u[280+L],u[386+L],u[492+L],c[280+L],c[175+L],c[70+L]);
	a5 w69 (u[69+L],u[175+L],u[281+L],u[387+L],u[493+L],c[281+L],c[176+L],c[71+L]);
	a5 w70 (u[70+L],u[176+L],u[282+L],u[388+L],u[494+L],c[282+L],c[177+L],c[72+L]);
	a5 w71 (u[71+L],u[177+L],u[283+L],u[389+L],u[495+L],c[283+L],c[178+L],c[73+L]);
	a5 w72 (u[72+L],u[178+L],u[284+L],u[390+L],u[496+L],c[284+L],c[179+L],c[74+L]);
	a5 w73 (u[73+L],u[179+L],u[285+L],u[391+L],u[497+L],c[285+L],c[180+L],c[75+L]);
	a5 w74 (u[74+L],u[180+L],u[286+L],u[392+L],u[498+L],c[286+L],c[181+L],c[76+L]);
	a5 w75 (u[75+L],u[181+L],u[287+L],u[393+L],u[499+L],c[287+L],c[182+L],c[77+L]);
	a5 w76 (u[76+L],u[182+L],u[288+L],u[394+L],u[500+L],c[288+L],c[183+L],c[78+L]);
	a5 w77 (u[77+L],u[183+L],u[289+L],u[395+L],u[501+L],c[289+L],c[184+L],c[79+L]);
	a5 w78 (u[78+L],u[184+L],u[290+L],u[396+L],u[502+L],c[290+L],c[185+L],c[80+L]);
	a5 w79 (u[79+L],u[185+L],u[291+L],u[397+L],u[503+L],c[291+L],c[186+L],c[81+L]);
	a5 w80 (u[80+L],u[186+L],u[292+L],u[398+L],u[504+L],c[292+L],c[187+L],c[82+L]);
	a5 w81 (u[81+L],u[187+L],u[293+L],u[399+L],u[505+L],c[293+L],c[188+L],c[83+L]);
	a5 w82 (u[82+L],u[188+L],u[294+L],u[400+L],u[506+L],c[294+L],c[189+L],c[84+L]);
	a5 w83 (u[83+L],u[189+L],u[295+L],u[401+L],u[507+L],c[295+L],c[190+L],c[85+L]);
	a5 w84 (u[84+L],u[190+L],u[296+L],u[402+L],u[508+L],c[296+L],c[191+L],c[86+L]);
	a5 w85 (u[85+L],u[191+L],u[297+L],u[403+L],u[509+L],c[297+L],c[192+L],c[87+L]);
	a5 w86 (u[86+L],u[192+L],u[298+L],u[404+L],u[510+L],c[298+L],c[193+L],c[88+L]);
	a5 w87 (u[87+L],u[193+L],u[299+L],u[405+L],u[511+L],c[299+L],c[194+L],c[89+L]);
	a5 w88 (u[88+L],u[194+L],u[300+L],u[406+L],u[512+L],c[300+L],c[195+L],c[90+L]);
	a5 w89 (u[89+L],u[195+L],u[301+L],u[407+L],u[513+L],c[301+L],c[196+L],c[91+L]);
	a5 w90 (u[90+L],u[196+L],u[302+L],u[408+L],u[514+L],c[302+L],c[197+L],c[92+L]);
	a5 w91 (u[91+L],u[197+L],u[303+L],u[409+L],u[515+L],c[303+L],c[198+L],c[93+L]);
	a5 w92 (u[92+L],u[198+L],u[304+L],u[410+L],u[516+L],c[304+L],c[199+L],c[94+L]);
	a5 w93 (u[93+L],u[199+L],u[305+L],u[411+L],u[517+L],c[305+L],c[200+L],c[95+L]);
	a5 w94 (u[94+L],u[200+L],u[306+L],u[412+L],u[518+L],c[306+L],c[201+L],c[96+L]);
	a5 w95 (u[95+L],u[201+L],u[307+L],u[413+L],u[519+L],c[307+L],c[202+L],c[97+L]);
	a5 w96 (u[96+L],u[202+L],u[308+L],u[414+L],u[520+L],c[308+L],c[203+L],c[98+L]);
	a5 w97 (u[97+L],u[203+L],u[309+L],u[415+L],u[521+L],c[309+L],c[204+L],c[99+L]);
	a5 w98 (u[98+L],u[204+L],u[310+L],u[416+L],u[522+L],c[310+L],c[205+L],c[100+L]);
	a5 w99 (u[99+L],u[205+L],u[311+L],u[417+L],u[523+L],c[311+L],c[206+L],c[101+L]);
	a5 w100 (u[100+L],u[206+L],u[312+L],u[418+L],u[524+L],c[312+L],c[207+L],c[102+L]);
	a4 w101 (u[207+L],u[313+L],u[419+L],u[525+L],c[313+L],c[208+L],c[103+L]);
	a3 w102 (u[314+L],u[420+L],u[526+L],c[314+L],c[209+L]);
	a2 w103 (u[421+L],u[527+L],c[315+L],c[104+L]);
	assign c[210+L]=u[528+L];
	if(104+L<106)
	begin : i104
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
