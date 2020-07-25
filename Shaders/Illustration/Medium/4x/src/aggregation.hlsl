sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
float2 p0 :  register(c0);
float2 p1 :  register(c1);

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float2 fcoord = frac(tex * p0 * 0.25);
float2 base = tex + (float2(0.5, 0.5) - fcoord) * p1 * 4.0;
int2 index = int2(fcoord * float2(4, 4));
float4x4 res = float4x4(tex2D(s0, base), tex2D(s1, base), tex2D(s2, base), tex2D(s3, base));
return float4(res[index.x][index.y], 0, 0, 1);
}
