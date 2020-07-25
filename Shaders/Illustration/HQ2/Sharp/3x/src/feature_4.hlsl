sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += float4(-0.125931218266487,-0.030916323885322,-0.062511079013348,-0.016509911045432) * Get(-dx,-dy);
res += float4(-0.088653750717640,-0.030503829941154,-0.117820225656033,-0.123594984412193) * Get(-dx,0);
res += float4(0.036535557359457,0.000445489044068,0.044585980474949,-0.020611489191651) * Get(-dx,dy);
res += float4(0.237383723258972,-0.088705576956272,-0.099459767341614,-0.077222794294357) * Get(0,-dy);
res += float4(0.345670789480209,-0.033881213515997,0.081226997077465,-0.112366318702698) * Get(0,0);
res += float4(-0.137992009520531,-0.042937405407429,-0.130865722894669,-0.033674590289593) * Get(0,dy);
res += float4(-0.139089539647102,0.052692573517561,0.019816845655441,0.150881394743919) * Get(dx,-dy);
res += float4(0.023686207830906,0.008930645883083,-0.042248245328665,0.020069953054190) * Get(dx,0);
res += float4(-0.044075462967157,-0.081047855317593,-0.045430310070515,0.057765431702137) * Get(dx,dy);
return max(float4(0,0,0,0), res);
}