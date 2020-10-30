sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += float4(-0.956590533256531,-0.008274377323687,0.180644452571869,0.085991136729717) * Get(-dx,-dy);
res += float4(-0.572654366493225,-0.001010826556012,0.780707120895386,-0.750162124633789) * Get(-dx,0);
res += float4(1.036862254142761,0.008047824725509,0.346584856510162,-1.200092315673828) * Get(-dx,dy);
res += float4(-0.966355621814728,-0.032094102352858,-0.403338044881821,0.428406119346619) * Get(0,-dy);
res += float4(-0.222048774361610,-0.029725791886449,-0.154043242335320,-0.294093966484070) * Get(0,0);
res += float4(1.740410685539246,-0.017007468268275,-0.355418235063553,-0.866487801074982) * Get(0,dy);
res += float4(-0.940488874912262,-0.042036861181259,-0.036031153053045,1.429699420928955) * Get(dx,-dy);
res += float4(-0.430337309837341,0.007672909647226,-0.148640170693398,0.865265369415283) * Get(dx,0);
res += float4(1.328553795814514,0.026842374354601,-0.163291648030281,0.283753275871277) * Get(dx,dy);
return max(float4(0,0,0,0), res);
}
