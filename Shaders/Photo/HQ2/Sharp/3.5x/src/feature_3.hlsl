sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += float4(-0.030085433274508,-0.059023197740316,-0.164083153009415,-0.184529006481171) * Get(-dx,-dy);
res += float4(0.064607061445713,0.131275281310081,-0.003916959278286,0.089554391801357) * Get(-dx,0);
res += float4(-0.119508817791939,0.233110234141350,0.039678141474724,-0.090131007134914) * Get(-dx,dy);
res += float4(-0.147864565253258,-0.211097866296768,0.233580321073532,-0.024025769904256) * Get(0,-dy);
res += float4(-0.123110704123974,0.006430558860302,-0.033056654036045,-0.060682862997055) * Get(0,0);
res += float4(0.029541745781898,0.020414922386408,0.001467399997637,-0.008974414318800) * Get(0,dy);
res += float4(-0.027812262997031,-0.078812316060066,-0.015911513939500,-0.101028278470039) * Get(dx,-dy);
res += float4(0.014750019647181,-0.062462665140629,-0.177394077181816,0.044973533600569) * Get(dx,0);
res += float4(0.145259425044060,-0.204577818512917,-0.060713015496731,0.030340058729053) * Get(dx,dy);
res = max(float4(0,0,0,0), res);
return res;
}
