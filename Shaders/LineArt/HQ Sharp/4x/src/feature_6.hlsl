sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.011854717507958,0.019313342869282,-0.004388151690364,0.029840696603060);
res += float4(-0.015111574903131,-0.027237098664045,-0.058793898671865,-0.060332667082548) * Get(-ddx,-ddy);
res += float4(0.039291571825743,0.034548044204712,-0.053653854876757,-0.086292259395123) * Get(-ddx,-dy);
res += float4(0.086551703512669,-0.026212682947516,0.015533065423369,0.299902319908142) * Get(-ddx,0);
res += float4(-0.064590536057949,0.079413406550884,0.078554324805737,-0.174148440361023) * Get(-ddx,dy);
res += float4(-0.022518355399370,-0.057050935924053,-0.031204352155328,0.082617811858654) * Get(-ddx,ddy);
res += float4(-0.125091925263405,-0.006844593212008,-0.054084740579128,-0.026552367955446) * Get(-dx,-ddy);
res += float4(0.003283248050138,-0.023729503154755,0.167143642902374,-0.029969252645969) * Get(-dx,-dy);
res += float4(0.102487623691559,-0.012180117890239,0.038682661950588,0.042566232383251) * Get(-dx,0);
res += float4(0.057740606367588,0.035841356962919,-0.132372841238976,0.094094544649124) * Get(-dx,dy);
res += float4(-0.019423106685281,-0.021498497575521,-0.008935947902501,0.051386363804340) * Get(-dx,ddy);
res += float4(0.084824211895466,-0.043589800596237,0.009704479947686,0.097942970693111) * Get(0,-ddy);
res += float4(-0.026165662333369,0.075322896242142,-0.093146957457066,0.160733506083488) * Get(0,-dy);
res += float4(-0.137988328933716,-0.056939318776131,-0.014516306109726,-0.537421345710754) * Get(0,0);
res += float4(-0.020947866141796,-0.094500981271267,0.096482962369919,0.178203046321869) * Get(0,dy);
res += float4(-0.018897242844105,0.036116380244493,0.006901643704623,-0.119851835072041) * Get(0,ddy);
res += float4(-0.013144250959158,-0.002870899159461,-0.016209984198213,-0.140181675553322) * Get(dx,-ddy);
res += float4(-0.022922243922949,0.044622931629419,-0.008186127990484,-0.086491309106350) * Get(dx,-dy);
res += float4(0.136126473546028,0.156677559018135,0.111822344362736,0.134747460484505) * Get(dx,0);
res += float4(-0.081185430288315,0.093027755618095,-0.107946507632732,-0.055686455219984) * Get(dx,dy);
res += float4(-0.006081113591790,-0.087254233658314,0.032066423445940,0.120158933103085) * Get(dx,ddy);
res += float4(0.029588254168630,-0.016501590609550,0.081515960395336,0.025911260396242) * Get(ddx,-ddy);
res += float4(-0.099207088351250,0.008344934321940,-0.075497873127460,0.032616686075926) * Get(ddx,-dy);
res += float4(0.061630737036467,-0.044409722089767,-0.081523902714252,-0.028400141745806) * Get(ddx,0);
res += float4(-0.010531556792557,-0.138714551925659,0.095469519495964,-0.032447736710310) * Get(ddx,dy);
res += float4(0.055057100951672,0.034101601690054,0.007405051495880,-0.018367022275925) * Get(ddx,ddy);
return res;
}
