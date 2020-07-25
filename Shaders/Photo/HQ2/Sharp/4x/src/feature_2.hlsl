sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += float4(0.037286948412657,-0.021281991153955,-0.008867203257978,-0.026849582791328) * Get(-dx,-dy);
res += float4(-0.083276718854904,-0.075935147702694,0.053219314664602,0.008716093376279) * Get(-dx,0);
res += float4(-0.092239245772362,0.092301353812218,-0.138036116957664,-0.031975939869881) * Get(-dx,dy);
res += float4(0.101412825286388,-0.169933050870895,0.057304043322802,-0.034781813621521) * Get(0,-dy);
res += float4(-0.096194170415401,-0.155882015824318,0.059388794004917,-0.052275002002716) * Get(0,0);
res += float4(-0.011891662143171,0.058135449886322,-0.076174922287464,0.003652446437627) * Get(0,dy);
res += float4(-0.137748196721077,-0.007990981452167,-0.156820371747017,-0.030635070055723) * Get(dx,-dy);
res += float4(0.064156651496887,0.016733601689339,-0.007091080304235,-0.014733464457095) * Get(dx,0);
res += float4(-0.070869006216526,-0.055179968476295,-0.001359822577797,0.042284909635782) * Get(dx,dy);
res = max(float4(0,0,0,0), res);
return res;
}