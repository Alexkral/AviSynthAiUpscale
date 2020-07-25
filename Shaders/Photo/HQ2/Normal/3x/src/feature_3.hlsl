sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += float4(0.006744745653123,0.085375681519508,-0.125639289617538,0.123025998473167) * Get(-dx,-dy);
res += float4(-0.181705132126808,-0.258960515260696,-0.014067940413952,0.011002180166543) * Get(-dx,0);
res += float4(-0.018973801285028,-0.002031736075878,0.018035460263491,-0.001069339225069) * Get(-dx,dy);
res += float4(-0.168891608715057,-0.231039464473724,-0.102643862366676,0.366684943437576) * Get(0,-dy);
res += float4(1.281088352203369,0.536619126796722,0.017580196261406,-0.451768010854721) * Get(0,0);
res += float4(-0.173799335956573,0.192806497216225,0.081153482198715,0.069931954145432) * Get(0,dy);
res += float4(-0.019573427736759,-0.049703650176525,-0.092241719365120,0.204115509986877) * Get(dx,-dy);
res += float4(-0.179898560047150,0.144641801714897,0.020301884040236,-0.188097253441811) * Get(dx,0);
res += float4(0.000474573753309,-0.046511754393578,0.069425806403160,0.145241916179657) * Get(dx,dy);
return max(float4(0,0,0,0), res);
}