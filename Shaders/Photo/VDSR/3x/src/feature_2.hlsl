sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += float4(-0.100518815219402,-0.192216515541077,-0.117700941860676,-0.212066367268562) * Get(-dx,-dy);
res += float4(0.436032921075821,-0.190207451581955,0.047796379774809,-0.018125167116523) * Get(-dx,0);
res += float4(-0.311339735984802,-0.171441316604614,-0.082014203071594,0.171653985977173) * Get(-dx,dy);
res += float4(0.252619594335556,0.182258665561676,0.039171844720840,-0.172552511096001) * Get(0,-dy);
res += float4(0.224545598030090,0.225211203098297,-0.195178389549255,-0.078573435544968) * Get(0,0);
res += float4(0.041662439703941,0.071104168891907,-0.008062737993896,0.044259808957577) * Get(0,dy);
res += float4(-0.086224302649498,-0.122852109372616,0.030223287642002,-0.075533218681812) * Get(dx,-dy);
res += float4(-0.135335355997086,-0.030216222628951,0.089946016669273,-0.000985416583717) * Get(dx,0);
res += float4(-0.081628881394863,0.005796310957521,-0.081354282796383,0.249565750360489) * Get(dx,dy);
return max(float4(0,0,0,0), res);
}