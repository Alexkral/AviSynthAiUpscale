sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.0239042695611715,0.0068627214059234,-0.0164309572428465,-0.0165323037654161);
res += float4(-0.0018119713058695,-0.0134044485166669,-0.0482696630060673,-0.0234718099236488) * Get(-ddx,-ddy);
res += float4(-0.0062818238511682,0.0214129704982042,0.0312883220613003,0.0194910578429699) * Get(-ddx,-dy);
res += float4(0.0631239563226700,-0.0439114756882191,0.0597214326262474,-0.0190653167665005) * Get(-ddx,0);
res += float4(-0.0248939935117960,-0.0827167928218842,0.0251197684556246,-0.0007358831935562) * Get(-ddx,dy);
res += float4(-0.0310916118323803,0.0601349771022797,-0.0042593101970851,0.0067709642462432) * Get(-ddx,ddy);
res += float4(-0.0016815232811496,0.0265459641814232,-0.0131196547299623,-0.0038643409498036) * Get(-dx,-ddy);
res += float4(-0.0636837035417557,0.0212026610970497,0.2186145484447479,0.0020751901902258) * Get(-dx,-dy);
res += float4(-0.0516228899359703,0.0807707086205482,0.0051144817844033,-0.0436641424894333) * Get(-dx,0);
res += float4(0.0213395692408085,-0.0456182174384594,-0.1254133731126785,-0.0775355324149132) * Get(-dx,dy);
res += float4(0.0581056214869022,-0.0399211458861828,0.0639635995030403,-0.0919271409511566) * Get(-dx,ddy);
res += float4(0.0471449643373489,-0.0925039276480675,0.0099842678755522,-0.0347152277827263) * Get(0,-ddy);
res += float4(-0.1354987919330597,0.1852200925350189,-0.1755710095167160,0.2687371969223022) * Get(0,-dy);
res += float4(0.3302399218082428,-0.1131145060062408,-0.2482933700084686,0.3386554419994354) * Get(0,0);
res += float4(-0.0107033252716064,-0.0291903037577868,0.3081499636173248,-0.0709414333105087) * Get(0,dy);
res += float4(-0.1107158139348030,-0.0074192807078362,-0.1730662733316422,-0.0811556279659271) * Get(0,ddy);
res += float4(-0.0444072820246220,0.0542314462363720,-0.0299235377460718,-0.0007936166948639) * Get(dx,-ddy);
res += float4(0.1247122958302498,-0.1628899425268173,0.0127675626426935,0.0509275831282139) * Get(dx,-dy);
res += float4(-0.1636087894439697,0.0593369156122208,0.2525799572467804,0.0018462822772563) * Get(dx,0);
res += float4(-0.0744255110621452,0.2036456316709518,-0.1554510444402695,-0.0125727690756321) * Get(dx,dy);
res += float4(0.0449795015156269,-0.0777378678321838,0.0639085993170738,-0.0461728833615780) * Get(dx,ddy);
res += float4(-0.0127077158540487,-0.0145733589306474,0.0540898703038692,0.0127615677192807) * Get(ddx,-ddy);
res += float4(-0.0151056740432978,0.0549498759210110,-0.0422399304807186,0.0592959038913250) * Get(ddx,-dy);
res += float4(0.0536655113101006,-0.1134183481335640,-0.0986116603016853,-0.0415747985243797) * Get(ddx,0);
res += float4(0.0425382070243359,0.0273285321891308,0.0220748819410801,-0.1316842734813690) * Get(ddx,dy);
res += float4(-0.0066998172551394,0.0175726357847452,0.0062335687689483,-0.0561694949865341) * Get(ddx,ddy);
return res;
}
