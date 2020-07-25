sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += float4(-0.036434937268496,-0.246931537985802,-0.164665222167969,0.280308336019516) * Get(-dx,-dy);
res += float4(-0.025973284617066,0.210985347628593,0.128228887915611,-0.199415758252144) * Get(-dx,0);
res += float4(0.149890273809433,-0.035702046006918,0.107696205377579,-0.172068640589714) * Get(-dx,dy);
res += float4(-0.010832687839866,0.079918950796127,-0.336922436952591,0.206455945968628) * Get(0,-dy);
res += float4(0.042852066457272,0.420238733291626,-0.067372739315033,0.025973342359066) * Get(0,0);
res += float4(0.047052815556526,0.056390702724457,0.139154329895973,-0.018256297335029) * Get(0,dy);
res += float4(-0.137642502784729,-0.172398433089256,0.034334011375904,-0.151655867695808) * Get(dx,-dy);
res += float4(0.061737395823002,-0.050438277423382,-0.027304422110319,-0.029560748487711) * Get(dx,0);
res += float4(-0.219232052564621,-0.149369880557060,0.106671407818794,0.137688294053078) * Get(dx,dy);
return max(float4(0,0,0,0), res);
}