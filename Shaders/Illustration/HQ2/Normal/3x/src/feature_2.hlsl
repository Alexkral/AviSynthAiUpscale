sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += float4(-0.020425079390407,0.037577081471682,0.132515817880630,-0.067116260528564) * Get(-dx,-dy);
res += float4(0.021393593400717,0.081623494625092,-0.183816626667976,-0.039876919239759) * Get(-dx,0);
res += float4(-0.018064642325044,-0.074326328933239,0.004598999861628,0.150361150503159) * Get(-dx,dy);
res += float4(-0.057258076965809,0.020627135410905,0.306563109159470,-0.130724117159843) * Get(0,-dy);
res += float4(-0.034868437796831,-0.016573414206505,-0.070587128400803,-0.000034649841837) * Get(0,0);
res += float4(-0.031786583364010,-0.083262465894222,-0.096866421401501,0.211675226688385) * Get(0,dy);
res += float4(0.057305574417114,-0.037923596799374,0.117798805236816,0.038752913475037) * Get(dx,-dy);
res += float4(-0.069864049553871,-0.066865354776382,-0.153780579566956,-0.096970237791538) * Get(dx,0);
res += float4(0.030069038271904,-0.065490014851093,0.032821420580149,-0.036109540611506) * Get(dx,dy);
return max(float4(0,0,0,0), res);
}