sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.000579558254685,0.542830228805542,-0.044569153338671,0.527274727821350);
res += float4(-0.035988517105579,-0.023873006924987,-0.034909185022116,-0.053821042180061) * Get(-ddx,-ddy);
res += float4(0.022784952074289,-0.116794973611832,0.016432443633676,0.020994890481234) * Get(-ddx,-dy);
res += float4(-0.077436558902264,0.080090180039406,0.051114324480295,-0.055107217282057) * Get(-ddx,0);
res += float4(0.002891049254686,0.012560587376356,0.026842053979635,0.132010102272034) * Get(-ddx,dy);
res += float4(0.001031153020449,-0.008119330741465,-0.034577772021294,0.008805877529085) * Get(-ddx,ddy);
res += float4(0.122149661183357,-0.009278465062380,0.058862756937742,-0.012366889044642) * Get(-dx,-ddy);
res += float4(-0.020633297041059,0.099603548645973,0.144978210330009,0.140912353992462) * Get(-dx,-dy);
res += float4(0.016581889241934,0.126805320382118,-0.036659222096205,-0.092425085604191) * Get(-dx,0);
res += float4(-0.059392843395472,0.000937913719099,-0.077646695077419,0.170018985867500) * Get(-dx,dy);
res += float4(0.010191260837018,-0.056901335716248,-0.010808445513248,0.004850753583014) * Get(-dx,ddy);
res += float4(-0.112318083643913,0.055587887763977,-0.084672562777996,0.083900161087513) * Get(0,-ddy);
res += float4(-0.108010955154896,0.027313916012645,0.056694522500038,-0.039582520723343) * Get(0,-dy);
res += float4(0.130737572908401,-0.352268785238266,0.093378469347954,-0.933715105056763) * Get(0,0);
res += float4(0.014593099243939,-0.049641780555248,-0.004506641998887,-0.235979154706001) * Get(0,dy);
res += float4(-0.012084238231182,-0.012794957496226,-0.024817055091262,-0.061862591654062) * Get(0,ddy);
res += float4(0.022859528660774,-0.035383388400078,0.148349180817604,0.066315010190010) * Get(dx,-ddy);
res += float4(0.014617010019720,-0.167547434568405,0.086403645575047,-0.004257269203663) * Get(dx,-dy);
res += float4(-0.163974121212959,-0.228947192430496,-0.018183391541243,0.216224357485771) * Get(dx,0);
res += float4(0.073428608477116,-0.229864448308945,-0.112902924418449,-0.144665136933327) * Get(dx,dy);
res += float4(0.072128124535084,0.035683784633875,-0.101927682757378,0.028177034109831) * Get(dx,ddy);
res += float4(-0.017397399991751,0.004501291085035,-0.126445397734642,-0.079222008585930) * Get(ddx,-ddy);
res += float4(-0.004439769312739,-0.067977577447891,-0.075561694800854,0.025653179734945) * Get(ddx,-dy);
res += float4(0.144685566425323,-0.005566838197410,-0.030967544764280,0.062033686786890) * Get(ddx,0);
res += float4(0.015985395759344,-0.016012409701943,0.071812182664871,-0.032188743352890) * Get(ddx,dy);
res += float4(-0.038799811154604,-0.032369002699852,0.094640061259270,-0.036889269948006) * Get(ddx,ddy);
return res;
}
