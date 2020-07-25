sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += float4(0.006298580672592,-0.037749942392111,0.031322285532951,0.049903318285942) * Get(-dx,-dy);
res += float4(0.002532502403483,-0.049656793475151,-0.026397377252579,0.037974432110786) * Get(-dx,0);
res += float4(-0.015417753718793,-0.023472668603063,-0.004911011550575,0.012898143380880) * Get(-dx,dy);
res += float4(-0.005964372772723,-0.005149801727384,-0.053761143237352,-0.082622528076172) * Get(0,-dy);
res += float4(-0.005824698600918,-0.000585711561143,-0.027899270877242,-0.066133789718151) * Get(0,0);
res += float4(-0.023595862090588,-0.035027902573347,-0.015164515003562,0.000518541201018) * Get(0,dy);
res += float4(0.024392304942012,0.030262995511293,-0.012742517516017,-0.068212352693081) * Get(dx,-dy);
res += float4(-0.027009371668100,-0.023304902017117,0.031013367697597,-0.080258853733540) * Get(dx,0);
res += float4(0.016510754823685,-0.024184914305806,-0.025072168558836,0.008110229857266) * Get(dx,dy);
return max(float4(0,0,0,0), res);
}
