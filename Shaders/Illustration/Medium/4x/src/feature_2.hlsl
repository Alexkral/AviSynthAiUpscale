sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.0146673396229744,-0.0149547904729843,-0.0436303503811359,0.1622401177883148);
res += float4(-0.0042271465063095,-0.0202246662229300,0.0113911563530564,-0.0123818498104811) * Get(-ddx,-ddy);
res += float4(-0.0179127268493176,0.0501652844250202,-0.0025888450909406,0.0375001430511475) * Get(-ddx,-dy);
res += float4(-0.0101066399365664,-0.1071618124842644,0.0128833828493953,0.0480334423482418) * Get(-ddx,0);
res += float4(-0.0147099709138274,0.0486450009047985,0.0129504110664129,0.0540707707405090) * Get(-ddx,dy);
res += float4(0.0137173999100924,0.0209780186414719,-0.0101245483383536,-0.0429959669709206) * Get(-ddx,ddy);
res += float4(0.0272233989089727,0.0537450648844242,0.0029196492396295,-0.0382300429046154) * Get(-dx,-ddy);
res += float4(0.0066943261772394,-0.1998166888952255,-0.0472336448729038,-0.0437552295625210) * Get(-dx,-dy);
res += float4(0.1843434125185013,0.4194745421409607,0.0145998876541853,0.0486881360411644) * Get(-dx,0);
res += float4(0.0646067187190056,-0.0523782223463058,0.0060308347456157,0.0102794561535120) * Get(-dx,dy);
res += float4(0.0029110333416611,-0.0151562318205833,0.0026123581919819,0.0618540085852146) * Get(-dx,ddy);
res += float4(0.0299960859119892,0.0440015792846680,-0.0250310637056828,0.0587057210505009) * Get(0,-ddy);
res += float4(0.0392464585602283,-0.2452031373977661,-0.1829415559768677,-0.2513829171657562) * Get(0,-dy);
res += float4(-0.4358285665512085,0.0724104195833206,0.2097574323415756,-0.4319609999656677) * Get(0,0);
res += float4(-0.1204313412308693,-0.2819637358188629,0.0629960596561432,0.1064535975456238) * Get(0,dy);
res += float4(-0.0232537761330605,0.0632407963275909,-0.0080914124846458,-0.0242378655821085) * Get(0,ddy);
res += float4(0.0224996563047171,0.0082887988537550,0.0972148403525352,-0.0484331101179123) * Get(dx,-ddy);
res += float4(-0.0793806314468384,0.1736915707588196,-0.1060107424855232,-0.1717468351125717) * Get(dx,-dy);
res += float4(0.2655403614044189,-0.0787985473871231,0.1591778844594955,0.0846165865659714) * Get(dx,0);
res += float4(0.0718501061201096,0.1501563042402267,-0.0135781411081553,0.1310858577489853) * Get(dx,dy);
res += float4(-0.0196315273642540,-0.0535318702459335,0.0292854662984610,0.0256330836564302) * Get(dx,ddy);
res += float4(-0.0144378943368793,-0.0573669821023941,-0.0518713407218456,0.0124559300020337) * Get(ddx,-ddy);
res += float4(0.0049246018752456,0.0668526068329811,0.0428675673902035,0.0298132766038179) * Get(ddx,-dy);
res += float4(-0.0136847635731101,-0.0733263120055199,-0.1218843832612038,0.0511185303330421) * Get(ddx,0);
res += float4(-0.0357956252992153,0.0427115671336651,-0.0128793213516474,0.0278230849653482) * Get(ddx,dy);
res += float4(0.0351068153977394,-0.0145412394776940,-0.0250668320804834,-0.0366914421319962) * Get(ddx,ddy);
return res;
}
