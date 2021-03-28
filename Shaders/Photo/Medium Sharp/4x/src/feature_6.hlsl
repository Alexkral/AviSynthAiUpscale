sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.027252444997430,-0.075752407312393,0.211621135473251,0.005585310980678);
res += float4(-0.001641273382120,0.071709662675858,-0.020170526579022,-0.085646472871304) * Get(-ddx,-ddy);
res += float4(-0.047118753194809,0.111773043870926,0.016932303085923,-0.095073692500591) * Get(-ddx,-dy);
res += float4(0.213794291019440,0.095777362585068,0.098756089806557,0.021132582798600) * Get(-ddx,0);
res += float4(-0.264142453670502,-0.178319409489632,0.012023011222482,-0.005486946087331) * Get(-ddx,dy);
res += float4(0.075352512300014,0.023476514965296,-0.014130967669189,0.009925095364451) * Get(-ddx,ddy);
res += float4(0.049410842359066,-0.219312831759453,-0.016806101426482,0.078906349837780) * Get(-dx,-ddy);
res += float4(-0.320718258619308,0.058181717991829,0.013472370803356,0.181675076484680) * Get(-dx,-dy);
res += float4(0.562028408050537,-0.483883053064346,-0.090154461562634,0.106963388621807) * Get(-dx,0);
res += float4(0.206330910325050,0.085696443915367,-0.010290637612343,-0.309082657098770) * Get(-dx,dy);
res += float4(-0.129992559552193,0.025131264701486,0.014454273506999,0.007865284569561) * Get(-dx,ddy);
res += float4(0.125038549304008,0.105497166514397,-0.019337320700288,0.148362159729004) * Get(0,-ddy);
res += float4(-0.222841635346413,0.036038383841515,0.115201488137245,-0.555072009563446) * Get(0,-dy);
res += float4(-0.785162329673767,0.641616225242615,0.186306014657021,0.841723084449768) * Get(0,0);
res += float4(0.410421520471573,-0.007551876362413,0.196541622281075,-0.443075865507126) * Get(0,dy);
res += float4(-0.021364202722907,-0.144136577844620,-0.036224324256182,0.260013431310654) * Get(0,ddy);
res += float4(-0.006115453783423,-0.000612308504060,0.034475341439247,-0.077384047210217) * Get(dx,-ddy);
res += float4(0.447822302579880,-0.009194505400956,-0.189495623111725,0.134424790740013) * Get(dx,-dy);
res += float4(-0.286625444889069,-0.163866713643074,-1.822406291961670,-0.028141297399998) * Get(dx,0);
res += float4(-0.116958104074001,0.192910894751549,0.276597887277603,0.198393598198891) * Get(dx,dy);
res += float4(0.044119406491518,-0.185302421450615,-0.077971555292606,-0.098441161215305) * Get(dx,ddy);
res += float4(-0.137927249073982,0.040328588336706,0.000580768624786,-0.029964424669743) * Get(ddx,-ddy);
res += float4(0.163603037595749,-0.032301828265190,0.036453492939472,-0.026064462959766) * Get(ddx,-dy);
res += float4(0.050000384449959,0.246660381555557,-0.108330070972443,-0.242881938815117) * Get(ddx,0);
res += float4(-0.106805525720119,-0.133322015404701,-0.006991456262767,0.004765756893903) * Get(ddx,dy);
res += float4(0.028723964467645,-0.042654562741518,0.006203358527273,0.021365813910961) * Get(ddx,ddy);
res = max(float4(0, 0, 0, 0), res) + float4(-0.169054344296455,0.932966709136963,-0.011785600334406,0.980819761753082) * min(float4(0, 0, 0, 0), res);
return res;
}
