sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += float4(0.078756809234619,-0.199879005551338,0.112424783408642,-0.003694689832628) * Get(-dx,-dy);
res += float4(-0.082661375403404,-0.004068422131240,-0.027747400105000,-0.134349256753922) * Get(-dx,0);
res += float4(-0.246993765234947,-0.115371860563755,0.065933205187321,0.091528363525867) * Get(-dx,dy);
res += float4(-0.142513945698738,0.351303339004517,-0.190347477793694,0.025303736329079) * Get(0,-dy);
res += float4(0.114813268184662,0.269399762153625,-0.040851138532162,-0.037342630326748) * Get(0,0);
res += float4(-0.110128708183765,0.215404331684113,-0.085327602922916,-0.012301053851843) * Get(0,dy);
res += float4(0.014464731328189,-0.166471451520920,-0.148376032710075,-0.024759421125054) * Get(dx,-dy);
res += float4(-0.018422964960337,-0.112861752510071,0.039340209215879,-0.164971470832825) * Get(dx,0);
res += float4(0.115640059113503,-0.071287527680397,0.016732010990381,-0.027093058452010) * Get(dx,dy);
res = max(float4(0,0,0,0), res);
return res;
}