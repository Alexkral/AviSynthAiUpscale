sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += float4(0.068914107978344,-0.034990228712559,-0.114146128296852,-0.005065225996077) * Get(-dx,-dy);
res += float4(-0.117769449949265,0.001677931984887,0.046268843114376,-0.028482289984822) * Get(-dx,0);
res += float4(-0.006486762315035,-0.009949546307325,-0.113888613879681,-0.025193665176630) * Get(-dx,dy);
res += float4(0.183083474636078,-0.084890782833099,-0.047450788319111,-0.017716834321618) * Get(0,-dy);
res += float4(-0.017006609588861,-0.002969338092953,0.329252183437347,-0.019102426245809) * Get(0,0);
res += float4(-0.040964975953102,-0.028459038585424,0.030341694131494,0.022749647498131) * Get(0,dy);
res += float4(0.035316057503223,-0.008385061286390,-0.025260625407100,0.011429209262133) * Get(dx,-dy);
res += float4(-0.100974164903164,0.013391901738942,-0.156909301877022,-0.042346805334091) * Get(dx,0);
res += float4(0.034094080328941,-0.010843596421182,-0.095186769962311,-0.012104243971407) * Get(dx,dy);
return max(float4(0,0,0,0), res);
}
