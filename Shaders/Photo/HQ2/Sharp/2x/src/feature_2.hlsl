sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += float4(-0.178246095776558,-0.039010461419821,-0.162676230072975,-0.054009173065424) * Get(-dx,-dy);
res += float4(0.062262386083603,0.016559623181820,-0.131044805049896,0.144952550530434) * Get(-dx,0);
res += float4(-0.051347695291042,-0.116493567824364,-0.042466577142477,-0.113722108304501) * Get(-dx,dy);
res += float4(-0.017155745998025,0.027248073369265,-0.109673403203487,0.094315484166145) * Get(0,-dy);
res += float4(0.185382083058357,0.126616179943085,0.176821053028107,-0.190099611878395) * Get(0,0);
res += float4(-0.002376295858994,0.089359946548939,-0.137232586741447,-0.056886911392212) * Get(0,dy);
res += float4(-0.096645988523960,-0.172306478023529,0.061938937753439,-0.064352661371231) * Get(dx,-dy);
res += float4(0.170695021748543,-0.124010287225246,-0.135258153080940,-0.029386613518000) * Get(dx,0);
res += float4(0.119406446814537,-0.130716755986214,-0.064235970377922,-0.043092343956232) * Get(dx,dy);
res = max(float4(0,0,0,0), res);
return res;
}
