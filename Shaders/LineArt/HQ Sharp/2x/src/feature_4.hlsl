sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.006712965201586,0.010385345667601,-0.265892386436462,0.072598911821842);
res += float4(0.039087638258934,0.038979161530733,0.016922231763601,0.124400354921818) * Get(-ddx,-ddy);
res += float4(-0.097827084362507,-0.140728622674942,-0.094160370528698,-0.094501793384552) * Get(-ddx,-dy);
res += float4(-0.031330548226833,-0.060589618980885,0.058839756995440,0.011818922124803) * Get(-ddx,0);
res += float4(0.045050941407681,0.066103272140026,-0.064868792891502,0.017475135624409) * Get(-ddx,dy);
res += float4(0.043770473450422,-0.037072509527206,0.005182514432818,-0.076259911060333) * Get(-ddx,ddy);
res += float4(0.015063081867993,-0.075198166072369,-0.024637535214424,-0.051067657768726) * Get(-dx,-ddy);
res += float4(-0.045755736529827,-0.065370686352253,0.037597425282001,0.071989111602306) * Get(-dx,-dy);
res += float4(0.034073840826750,-0.050339639186859,-0.135537341237068,0.075139380991459) * Get(-dx,0);
res += float4(0.057296112179756,0.081055268645287,0.044488850980997,0.018021497875452) * Get(-dx,dy);
res += float4(-0.082657158374786,-0.018167987465858,-0.019095685333014,-0.086783722043037) * Get(-dx,ddy);
res += float4(-0.040977690368891,0.129473134875298,-0.000480011571199,-0.148679241538048) * Get(0,-ddy);
res += float4(0.060693752020597,-0.123084902763367,0.077073879539967,0.080426581203938) * Get(0,-dy);
res += float4(-0.052480727434158,-0.160408869385719,0.320746690034866,0.043146371841431) * Get(0,0);
res += float4(0.010959327220917,-0.125837117433548,0.000940811354667,-0.054087471216917) * Get(0,dy);
res += float4(0.069654986262321,0.018424417823553,-0.025786060839891,0.141325995326042) * Get(0,ddy);
res += float4(-0.011754426173866,-0.047370936721563,0.046514000743628,0.096254475414753) * Get(dx,-ddy);
res += float4(0.054813243448734,0.298594057559967,0.046867053955793,-0.095742657780647) * Get(dx,-dy);
res += float4(-0.000469538616017,0.143060892820358,0.137848973274231,-0.001389843411744) * Get(dx,0);
res += float4(0.020266037434340,-0.089326523244381,-0.037821076810360,-0.072344273328781) * Get(dx,dy);
res += float4(-0.011563373729587,0.053896192461252,-0.033902719616890,0.001257320400327) * Get(dx,ddy);
res += float4(-0.057643134146929,-0.108881756663322,0.033834524452686,-0.043297920376062) * Get(ddx,-ddy);
res += float4(0.007043253164738,-0.007412407081574,0.125493571162224,-0.034393411129713) * Get(ddx,-dy);
res += float4(-0.040750011801720,0.162948340177536,-0.022168679162860,-0.149043321609497) * Get(ddx,0);
res += float4(-0.056747190654278,0.088790886104107,0.028300633653998,0.093729637563229) * Get(ddx,dy);
res += float4(0.087590731680393,-0.006067135836929,-0.051007200032473,-0.013415581546724) * Get(ddx,ddy);
return res;
}