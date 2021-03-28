sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
float2 p0 :  register(c0);
float2 p1 :  register(c1);

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float2 fcoord = frac(tex * p0 / 3.0);
float2 base = tex + (float2(0.5, 0.5) - fcoord) * p1 * 3.0;
int2 index = int2(fcoord * float2(3, 3));
float3x3 res = float3x3(tex2D(s0, base).rgb, tex2D(s1, base).rgb, tex2D(s2, base).rgb);
return float4(res[index.x][index.y] + tex2D(s3, tex)[0], 0, 0, 1);
}
