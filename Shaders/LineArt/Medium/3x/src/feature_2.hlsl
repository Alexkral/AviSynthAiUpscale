sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.047207396477461,-0.023949429392815,0.057626500725746,0.275504469871521);
res += float4(-0.123023442924023,-0.081757016479969,0.036692138761282,-0.051107052713633) * Get(-ddx,-ddy);
res += float4(-0.008098736405373,0.140226826071739,0.028092445805669,-0.016103036701679) * Get(-ddx,-dy);
res += float4(0.059438455849886,-0.284137874841690,-0.046949420124292,0.114332877099514) * Get(-ddx,0);
res += float4(0.075184337794781,0.211285948753357,-0.166295588016510,-0.067030444741249) * Get(-ddx,dy);
res += float4(0.115133047103882,-0.043483342975378,0.014773187227547,0.026794813573360) * Get(-ddx,ddy);
res += float4(0.089248917996883,0.136722803115845,-0.099079437553883,0.049387127161026) * Get(-dx,-ddy);
res += float4(-0.249390944838524,0.030249722301960,0.051428072154522,0.106503710150719) * Get(-dx,-dy);
res += float4(0.430032968521118,0.204442098736763,0.148088812828064,0.018380485475063) * Get(-dx,0);
res += float4(-0.162097916007042,-0.180522546172142,-0.348551630973816,0.109592854976654) * Get(-dx,dy);
res += float4(0.004329374525696,-0.109198197722435,0.009647402912378,-0.056719839572906) * Get(-dx,ddy);
res += float4(0.057125262916088,-0.089944370090961,0.050363879650831,0.006588259711862) * Get(0,-ddy);
res += float4(0.233160153031349,-0.290169507265091,0.086331792175770,-0.022032154724002) * Get(0,-dy);
res += float4(-0.788680374622345,-0.074421934783459,0.131818458437920,-0.347517222166061) * Get(0,0);
res += float4(0.190874516963959,0.498671323060989,0.128555387258530,-0.069950990378857) * Get(0,dy);
res += float4(0.001904858741909,-0.018728861585259,-0.058940876275301,0.025315703824162) * Get(0,ddy);
res += float4(0.084913037717342,-0.018317749723792,0.071965441107750,0.043647576123476) * Get(dx,-ddy);
res += float4(-0.015329974703491,0.023672467097640,0.143139645457268,0.036334969103336) * Get(dx,-dy);
res += float4(-0.119103081524372,0.008637773804367,-0.571472883224487,-0.192238479852676) * Get(dx,0);
res += float4(0.069772928953171,0.008181970566511,0.076743647456169,-0.269648641347885) * Get(dx,dy);
res += float4(-0.031238462775946,0.047719910740852,0.036555491387844,0.027584925293922) * Get(dx,ddy);
res += float4(-0.029285863041878,0.014140633866191,-0.054447755217552,0.027563404291868) * Get(ddx,-ddy);
res += float4(0.134201854467392,-0.005848652683198,0.037685830146074,-0.123567640781403) * Get(ddx,-dy);
res += float4(0.026131214573979,0.010685260407627,0.123743206262589,0.077202193439007) * Get(ddx,0);
res += float4(-0.019353680312634,-0.121296495199203,0.039079852402210,-0.008862582966685) * Get(ddx,dy);
res += float4(-0.118612788617611,0.056154347956181,-0.102602876722813,-0.003004105063155) * Get(ddx,ddy);
res = max(float4(0, 0, 0, 0), res) + float4(0.956664323806763,0.391101688146591,0.038120940327644,0.298868775367737) * min(float4(0, 0, 0, 0), res);
return res;
}
