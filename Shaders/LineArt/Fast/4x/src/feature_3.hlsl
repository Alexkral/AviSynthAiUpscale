sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.128170043230057,0.207137674093246,-0.172952488064766,-0.904214739799500);
res += float4(0.001884575700387,0.004286536481231,-0.027015881612897,-0.007468014955521) * Get(-ddx,-ddy);
res += float4(-0.071412742137909,-0.036903411149979,-0.051262944936752,0.035502985119820) * Get(-ddx,-dy);
res += float4(0.166532173752785,0.005198925733566,0.056609928607941,-0.011173356324434) * Get(-ddx,0);
res += float4(-0.050855256617069,-0.014631729573011,-0.011036905460060,-0.018382908776402) * Get(-ddx,dy);
res += float4(-0.009101267904043,0.009713472798467,0.009317617863417,0.002166854217649) * Get(-ddx,ddy);
res += float4(0.007433384191245,-0.050567120313644,0.111850880086422,0.016712835058570) * Get(-dx,-ddy);
res += float4(0.168479442596436,0.326383650302887,-0.071038387715816,-0.025239219889045) * Get(-dx,-dy);
res += float4(0.046720430254936,-0.040245663374662,-0.151559755206108,0.044205818325281) * Get(-dx,0);
res += float4(0.038217954337597,0.016397295519710,-0.336053431034088,-0.013668081723154) * Get(-dx,dy);
res += float4(0.041224647313356,0.002983125392348,0.024520147591829,-0.002321813954040) * Get(-dx,ddy);
res += float4(0.072343051433563,0.095549084246159,-0.111184306442738,0.020839458331466) * Get(0,-ddy);
res += float4(-0.351094305515289,-1.987919569015503,0.250896990299225,-0.050066363066435) * Get(0,-dy);
res += float4(0.671300709247589,0.291302412748337,0.820886850357056,0.997656583786011) * Get(0,0);
res += float4(-0.361859917640686,-0.042061448097229,0.044379349797964,0.077240273356438) * Get(0,dy);
res += float4(0.173100382089615,0.010652843862772,-0.101402111351490,-0.004072237294167) * Get(0,ddy);
res += float4(-0.036797627806664,-0.055687084794044,-0.013108598068357,-0.007656760513783) * Get(dx,-ddy);
res += float4(-0.141141712665558,0.232744023203850,-0.009542892687023,0.005087602883577) * Get(dx,-dy);
res += float4(-0.314945608377457,-0.093382894992828,-0.091021075844765,0.043413363397121) * Get(dx,0);
res += float4(0.163262084126472,0.016393281519413,-0.072744697332382,-0.034687504172325) * Get(dx,dy);
res += float4(0.060431458055973,0.015089961700141,0.008036352694035,0.004354306496680) * Get(dx,ddy);
res += float4(-0.006924949586391,0.021578120067716,-0.032025739550591,-0.006668774876744) * Get(ddx,-ddy);
res += float4(0.014227159321308,-0.035815160721540,0.001932695275173,0.019491080194712) * Get(ddx,-dy);
res += float4(0.031256288290024,0.002376421587542,0.067766249179840,-0.007631559390575) * Get(ddx,0);
res += float4(0.026117734611034,0.003739847801626,0.037425082176924,-0.007071636617184) * Get(ddx,dy);
res += float4(-0.025878237560391,0.004782870877534,-0.033509805798531,-0.003108107019216) * Get(ddx,ddy);
res = max(float4(0, 0, 0, 0), res) + float4(0.909278988838196,0.011240417137742,1.099552035331726,-0.008574789389968) * min(float4(0, 0, 0, 0), res);
return res;
}