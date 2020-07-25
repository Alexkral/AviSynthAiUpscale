sampler s0 : register(s0);
float2 p0 :  register(c0);
float2 p1 :  register(c1);

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float2 fcoord = frac(tex * p0 * 0.5);
float2 base = tex + (float2(0.5, 0.5) - fcoord) * p1 * 2.0;
int2 index = int2(fcoord * float2(2, 2));
float4 res = tex2D(s0, base);
return float4(res[index.x * 2 + index.y], 0, 0, 1);
}
