sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.006884526927024,-0.286632269620895,0.076994530856609,-0.536341309547424);
res += float4(0.062875695526600,-0.006445924751461,0.040769226849079,-0.037466876208782) * Get(-ddx,-ddy);
res += float4(-0.052070718258619,-0.044393282383680,0.117100253701210,0.092337585985661) * Get(-ddx,-dy);
res += float4(0.120269477367401,0.209183990955353,-0.011153961531818,-0.047014236450195) * Get(-ddx,0);
res += float4(-0.105218291282654,-0.082244679331779,-0.044572632759809,0.084593892097473) * Get(-ddx,dy);
res += float4(0.018694745376706,-0.026661232113838,-0.128951847553253,0.023575931787491) * Get(-ddx,ddy);
res += float4(-0.100901938974857,-0.037866264581680,0.014522690325975,0.103983193635941) * Get(-dx,-ddy);
res += float4(0.215829670429230,-0.158056199550629,-0.125532433390617,0.110696583986282) * Get(-dx,-dy);
res += float4(-0.254559040069580,0.174139410257339,0.093003839254379,0.000573495053686) * Get(-dx,0);
res += float4(0.093840278685093,-0.095581136643887,0.229052498936653,-0.233004078269005) * Get(-dx,dy);
res += float4(0.045514814555645,0.067518718540668,0.021822340786457,-0.029563521966338) * Get(-dx,ddy);
res += float4(0.145959019660950,0.118046648800373,-0.031520493328571,0.029340434819460) * Get(0,-ddy);
res += float4(-0.041888777166605,0.018304321914911,-0.076362557709217,0.068541757762432) * Get(0,-dy);
res += float4(0.164909109473228,0.833708643913269,-0.514837503433228,0.223559081554413) * Get(0,0);
res += float4(0.128110632300377,-0.474599242210388,0.223709553480148,0.286320239305496) * Get(0,dy);
res += float4(-0.187770068645477,0.055873863399029,-0.007398913614452,0.014629228040576) * Get(0,ddy);
res += float4(-0.065629005432129,-0.033863678574562,0.000690730928909,0.036171916872263) * Get(dx,-ddy);
res += float4(0.107928901910782,-0.268830567598343,0.183026850223541,-0.051478419452906) * Get(dx,-dy);
res += float4(0.040017858147621,0.122241839766502,0.242993459105492,0.141094624996185) * Get(dx,0);
res += float4(-0.222128704190254,0.000355337921064,-0.234512194991112,0.110840506851673) * Get(dx,dy);
res += float4(0.039066754281521,0.106389738619328,-0.169487193226814,0.026570022106171) * Get(dx,ddy);
res += float4(-0.031707368791103,-0.001724458066747,-0.013266132213175,-0.018006313592196) * Get(ddx,-ddy);
res += float4(-0.060760203748941,-0.013190970756114,-0.133616954088211,-0.038115173578262) * Get(ddx,-dy);
res += float4(-0.082154601812363,0.196891829371452,0.097496069967747,0.084117397665977) * Get(ddx,0);
res += float4(0.015078384429216,-0.029602160677314,0.090508744120598,-0.015825575217605) * Get(ddx,dy);
res += float4(0.022834211587906,-0.142767101526260,0.013774909079075,0.020327933132648) * Get(ddx,ddy);
return res;
}
