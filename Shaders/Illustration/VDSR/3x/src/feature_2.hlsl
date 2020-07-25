sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += float4(-0.095474332571030,-0.114156380295753,-0.176285728812218,-0.269776195287704) * Get(-dx,-dy);
res += float4(-0.113513752818108,0.172361269593239,0.251106351613998,-0.167647108435631) * Get(-dx,0);
res += float4(-0.134503573179245,0.042264003306627,0.147249475121498,0.049114659428596) * Get(-dx,dy);
res += float4(-0.063830681145191,-0.108936369419098,-0.007661255076528,0.014463180676103) * Get(0,-dy);
res += float4(-0.235693454742432,0.199079677462578,-0.182081118226051,0.025208232924342) * Get(0,0);
res += float4(0.111597642302513,0.002424275502563,-0.134995937347412,-0.036555279046297) * Get(0,dy);
res += float4(0.057232979685068,-0.161063432693481,-0.053462978452444,-0.012787822633982) * Get(dx,-dy);
res += float4(-0.006104303523898,-0.026507396250963,0.061592660844326,-0.088217973709106) * Get(dx,0);
res += float4(-0.007056167349219,-0.091958463191986,-0.178777679800987,0.072343505918980) * Get(dx,dy);
return max(float4(0,0,0,0), res);
}
