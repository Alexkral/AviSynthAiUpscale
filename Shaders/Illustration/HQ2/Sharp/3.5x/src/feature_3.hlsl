sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += float4(0.276477873325348,-0.037597015500069,-0.134112775325775,-0.024307701736689) * Get(-dx,-dy);
res += float4(-0.179598778486252,-0.085977129638195,0.008010108023882,-0.151860579848289) * Get(-dx,0);
res += float4(-0.007076140493155,-0.281856000423431,-0.130218625068665,-0.034212786704302) * Get(-dx,dy);
res += float4(0.244767993688583,0.013578997924924,-0.035284284502268,0.362154871225357) * Get(0,-dy);
res += float4(-0.086984172463417,-0.207864671945572,0.201886087656021,0.087788298726082) * Get(0,0);
res += float4(0.033489134162664,-0.050096359103918,0.089740276336670,0.037080261856318) * Get(0,dy);
res += float4(-0.039964236319065,0.262476623058319,-0.165704026818275,-0.094723440706730) * Get(dx,-dy);
res += float4(-0.213149815797806,0.100261434912682,0.128447711467743,-0.050628751516342) * Get(dx,0);
res += float4(-0.097809717059135,0.151779383420944,-0.147159472107887,-0.054765418171883) * Get(dx,dy);
return max(float4(0,0,0,0), res);
}
