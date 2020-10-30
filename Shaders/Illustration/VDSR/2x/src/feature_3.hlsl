sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += float4(0.027349071577191,0.017836187034845,0.000025116663892,-0.000009275342563) * Get(-dx,-dy);
res += float4(0.000300602085190,-0.053201854228973,-0.000497771194205,-0.000001803117129) * Get(-dx,0);
res += float4(0.117273740470409,0.019374774768949,-0.002606989583001,-0.000007610179182) * Get(-dx,dy);
res += float4(-0.103410474956036,-0.055888663977385,-0.000251873367233,-0.000004096489192) * Get(0,-dy);
res += float4(-0.193667918443680,0.181704089045525,-0.000754647538997,-0.000001636937668) * Get(0,0);
res += float4(0.013950540684164,-0.061913557350636,-0.002532085403800,-0.000000850490551) * Get(0,dy);
res += float4(-0.021976625546813,0.023859312757850,-0.000831589451991,-0.000005105174750) * Get(dx,-dy);
res += float4(-0.144155085086823,-0.058447889983654,-0.001047857338563,0.000000252287890) * Get(dx,0);
res += float4(0.090844869613647,0.020606333389878,-0.002366678323597,0.000000155132810) * Get(dx,dy);
return max(float4(0,0,0,0), res);
}
