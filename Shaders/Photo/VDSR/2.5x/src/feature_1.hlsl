sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += float4(0.053117822855711,-0.220976188778877,0.055710643529892,0.028304412961006) * Get(-dx,-dy);
res += float4(-0.131231203675270,0.211787328124046,0.131108701229095,-0.074657738208771) * Get(-dx,0);
res += float4(0.020686632022262,-0.181158646941185,0.085631117224693,0.050711717456579) * Get(-dx,dy);
res += float4(-0.145848095417023,0.208428665995598,-0.124946378171444,-0.008876827545464) * Get(0,-dy);
res += float4(-0.197154477238655,0.842491328716278,-0.076867863535881,-0.105484552681446) * Get(0,0);
res += float4(0.012775387614965,-0.223402455449104,-0.091632455587387,0.016330905258656) * Get(0,dy);
res += float4(-0.109267525374889,-0.174406796693802,0.069350033998489,-0.030421292409301) * Get(dx,-dy);
res += float4(-0.004623954184353,-0.247612014412880,-0.217375591397285,-0.045680902898312) * Get(dx,0);
res += float4(0.092014864087105,0.065588362514973,-0.007787848357111,-0.079971984028816) * Get(dx,dy);
return max(float4(0,0,0,0), res);
}
