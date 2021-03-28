sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.015055694617331,-0.343152672052383,-0.061917230486870,0.026032354682684);
res += float4(0.060240469872952,0.058414071798325,-0.039369583129883,-0.022121086716652) * Get(-ddx,-ddy);
res += float4(0.160836890339851,0.043080758303404,-0.009820564649999,-0.022469652816653) * Get(-ddx,-dy);
res += float4(-0.095591455698013,-0.087830409407616,-0.015821315348148,0.015774769708514) * Get(-ddx,0);
res += float4(0.018651427701116,-0.001046508667059,-0.012799382209778,0.094529785215855) * Get(-ddx,dy);
res += float4(-0.113759487867355,-0.009253537282348,-0.001727805705741,-0.033477846533060) * Get(-ddx,ddy);
res += float4(-0.071527548134327,-0.023858388885856,-0.046587619930506,-0.093522109091282) * Get(-dx,-ddy);
res += float4(-0.046305179595947,-0.127567633986473,0.271558284759521,-0.054638575762510) * Get(-dx,-dy);
res += float4(-0.031054714694619,-0.064764931797981,-0.215781524777412,0.046866849064827) * Get(-dx,0);
res += float4(0.095964558422565,-0.217127338051796,0.034651506692171,-0.033074948936701) * Get(-dx,dy);
res += float4(0.055330697447062,0.066351577639580,-0.050964940339327,-0.004762900527567) * Get(-dx,ddy);
res += float4(-0.013295842334628,0.102779313921928,0.032869003713131,0.093901589512825) * Get(0,-ddy);
res += float4(0.095867522060871,0.120553582906723,-0.288592219352722,-0.019197747111320) * Get(0,-dy);
res += float4(0.025898538529873,-0.011221676133573,0.380885928869247,0.126956611871719) * Get(0,0);
res += float4(-0.057484555989504,0.334031432867050,0.049900673329830,-0.127270206809044) * Get(0,dy);
res += float4(-0.003220394952223,-0.039246246218681,0.049211442470551,-0.124121934175491) * Get(0,ddy);
res += float4(-0.018610101193190,-0.055422578006983,0.039877057075500,-0.067922793328762) * Get(dx,-ddy);
res += float4(-0.026199795305729,-0.010034702718258,0.040975287556648,-0.067860029637814) * Get(dx,-dy);
res += float4(0.070574827492237,0.200931355357170,-0.128769218921661,-0.033755593001842) * Get(dx,0);
res += float4(-0.075826220214367,0.119485646486282,-0.012648334726691,0.132668599486351) * Get(dx,dy);
res += float4(0.034273937344551,0.020216835662723,-0.013906015083194,0.106600940227509) * Get(dx,ddy);
res += float4(0.091816760599613,-0.027760807424784,-0.023599974811077,0.019307814538479) * Get(ddx,-ddy);
res += float4(-0.172019317746162,0.099716268479824,-0.101894848048687,0.019575975835323) * Get(ddx,-dy);
res += float4(0.014491967856884,0.131172075867653,0.213761106133461,0.035611946135759) * Get(ddx,0);
res += float4(0.019779821857810,0.117131359875202,-0.056185543537140,-0.054042562842369) * Get(ddx,dy);
res += float4(-0.001127519994043,0.014869313687086,0.001747296424583,-0.001507480978034) * Get(ddx,ddy);
return res;
}