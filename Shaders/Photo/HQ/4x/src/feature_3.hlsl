sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.000660103571136,0.240242987871170,-0.521180868148804,-0.297318518161774);
res += float4(0.016609339043498,0.062163185328245,0.046090777963400,0.014323662035167) * Get(-ddx,-ddy);
res += float4(-0.170571804046631,-0.106797911226749,0.021527193486691,0.048699326813221) * Get(-ddx,-dy);
res += float4(0.155421763658524,-0.125857964158058,0.030467957258224,-0.052972782403231) * Get(-ddx,0);
res += float4(0.083654768764973,-0.084308907389641,-0.017200626432896,0.055849630385637) * Get(-ddx,dy);
res += float4(0.017219819128513,0.021082902327180,-0.011947460472584,-0.031696397811174) * Get(-ddx,ddy);
res += float4(0.046858750283718,-0.003609029809013,-0.005356537178159,-0.133728504180908) * Get(-dx,-ddy);
res += float4(-0.027774645015597,-0.210982918739319,0.150541350245476,0.007311815861613) * Get(-dx,-dy);
res += float4(-0.047930229455233,-0.095032900571823,0.014558664523065,-0.011359904892743) * Get(-dx,0);
res += float4(-0.118771433830261,-0.065694324672222,-0.104216888546944,-0.013153337873518) * Get(-dx,dy);
res += float4(-0.210723295807838,-0.054241649806499,0.067468389868736,0.035309381783009) * Get(-dx,ddy);
res += float4(-0.124566413462162,-0.070908673107624,-0.081491500139236,0.059847842901945) * Get(0,-ddy);
res += float4(-0.052666887640953,-0.250362873077393,0.438109904527664,0.021599423140287) * Get(0,-dy);
res += float4(0.037754241377115,-0.268065363168716,0.368179202079773,0.751266300678253) * Get(0,0);
res += float4(0.073491193354130,-0.154656469821930,0.193058580160141,0.125834524631500) * Get(0,dy);
res += float4(0.339276671409607,-0.037431627511978,0.011094990186393,0.046115692704916) * Get(0,ddy);
res += float4(0.001039319206029,-0.048795681446791,-0.040111072361469,0.042815823107958) * Get(dx,-ddy);
res += float4(0.067364349961281,-0.154687836766243,0.016032805666327,-0.152182027697563) * Get(dx,-dy);
res += float4(0.006854481995106,-0.039098221808672,0.143582105636597,0.256136775016785) * Get(dx,0);
res += float4(0.081639654934406,-0.236650899052620,-0.069196864962578,-0.205042198300362) * Get(dx,dy);
res += float4(-0.046132348477840,0.088738597929478,-0.004201263189316,0.015289559960365) * Get(dx,ddy);
res += float4(0.040098547935486,0.056249286979437,-0.000411173299653,0.041150804609060) * Get(ddx,-ddy);
res += float4(0.140442490577698,-0.105410218238831,0.039451185613871,-0.006147490348667) * Get(ddx,-dy);
res += float4(-0.091357663273811,-0.033744715154171,0.026662249118090,-0.054416347295046) * Get(ddx,0);
res += float4(-0.182202592492104,-0.083044424653053,0.011790380813181,-0.035863086581230) * Get(ddx,dy);
res += float4(-0.015326207503676,-0.033974923193455,0.027391612529755,0.008922341279685) * Get(ddx,ddy);
return res;
}