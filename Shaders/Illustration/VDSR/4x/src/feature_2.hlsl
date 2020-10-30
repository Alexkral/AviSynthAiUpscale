sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += float4(1.794978022575378,-0.048144422471523,-0.001741519547068,-0.032248020172119) * Get(-dx,-dy);
res += float4(1.672409772872925,-0.058809209614992,-0.019998507574201,-0.057553075253963) * Get(-dx,0);
res += float4(1.398386359214783,-0.023670017719269,-0.010405130684376,-0.032394424080849) * Get(-dx,dy);
res += float4(-0.380194783210754,-0.006603002548218,-0.013983219861984,-0.053189579397440) * Get(0,-dy);
res += float4(-0.579464077949524,-0.032502360641956,-0.015267027541995,-0.033920656889677) * Get(0,0);
res += float4(-0.653164863586426,-0.001638698973693,-0.022241547703743,-0.016422266140580) * Get(0,dy);
res += float4(-1.021002173423767,-0.026096846908331,-0.003574144328013,0.005009135697037) * Get(dx,-dy);
res += float4(-1.092289924621582,-0.011485084891319,0.010809864848852,0.015285105444491) * Get(dx,0);
res += float4(-1.118088245391846,0.021460374817252,-0.010662239044905,-0.008387034758925) * Get(dx,dy);
return max(float4(0,0,0,0), res);
}
