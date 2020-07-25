sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += float4(0.065279535949230,-0.002685320563614,0.148757264018059,0.026352295652032) * Get(-dx,-dy);
res += float4(-0.153279989957809,-0.008613874204457,-0.259456843137741,-0.008674644865096) * Get(-dx,0);
res += float4(-0.029938329011202,-0.053705144673586,-0.018838331103325,0.059030860662460) * Get(-dx,dy);
res += float4(-0.179763317108154,-0.151787370443344,0.003723901230842,-0.158661395311356) * Get(0,-dy);
res += float4(-0.139136448502541,0.048151481896639,0.179476782679558,-0.211462989449501) * Get(0,0);
res += float4(-0.080661155283451,-0.030830176547170,0.190383478999138,0.182663038372993) * Get(0,dy);
res += float4(0.007141997106373,-0.111397460103035,-0.151335507631302,0.111185275018215) * Get(dx,-dy);
res += float4(0.031601201742887,0.010128183290362,0.069340385496616,0.070347465574741) * Get(dx,0);
res += float4(0.279249042272568,-0.045846812427044,-0.005964132025838,0.099945150315762) * Get(dx,dy);
return max(float4(0,0,0,0), res);
}
