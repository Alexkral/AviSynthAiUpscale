sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += float4(0.041339412331581,-0.031732324510813,-0.107494547963142,0.277321636676788) * Get(-dx,-dy);
res += float4(-0.076010346412659,-0.095147788524628,0.028780603781343,0.254598468542099) * Get(-dx,0);
res += float4(0.152341783046722,0.006171860266477,-0.134028226137161,0.155011221766472) * Get(-dx,dy);
res += float4(-0.165701627731323,0.188886702060699,-0.049682457000017,-0.135771706700325) * Get(0,-dy);
res += float4(-0.037794101983309,0.155854284763336,-0.089091077446938,-0.262072950601578) * Get(0,0);
res += float4(-0.017962969839573,-0.103231780230999,0.120715312659740,-0.151577353477478) * Get(0,dy);
res += float4(0.008837651461363,0.006714771967381,-0.133049011230469,0.191587671637535) * Get(dx,-dy);
res += float4(0.005118315573782,-0.153688371181488,-0.000957799551543,-0.147744655609131) * Get(dx,0);
res += float4(-0.093043178319931,-0.154939815402031,0.119672708213329,0.011879657395184) * Get(dx,dy);
res = max(float4(0,0,0,0), res);
return res;
}