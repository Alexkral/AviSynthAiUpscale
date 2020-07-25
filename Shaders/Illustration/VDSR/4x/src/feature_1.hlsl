sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += float4(-0.128623306751251,0.065021663904190,-0.091265052556992,0.082417786121368) * Get(-dx,-dy);
res += float4(0.154480189085007,-0.267625212669373,0.007818335667253,0.313815742731094) * Get(-dx,0);
res += float4(-0.055632930248976,-0.082316651940346,0.000964177655987,0.093962594866753) * Get(-dx,dy);
res += float4(0.132034718990326,0.502414762973785,0.103496864438057,-0.163850232958794) * Get(0,-dy);
res += float4(-0.094009496271610,-0.063022486865520,-0.232236146926880,-0.141690909862518) * Get(0,0);
res += float4(-0.098875530064106,0.115199662744999,-0.355752766132355,0.069843135774136) * Get(0,dy);
res += float4(-0.046189200133085,-0.084144443273544,0.160414502024651,-0.149889886379242) * Get(dx,-dy);
res += float4(-0.116007864475250,0.058446194976568,0.366618275642395,-0.172623842954636) * Get(dx,0);
res += float4(-0.048214871436357,-0.112256735563278,0.156259208917618,0.069421179592609) * Get(dx,dy);
return max(float4(0,0,0,0), res);
}
