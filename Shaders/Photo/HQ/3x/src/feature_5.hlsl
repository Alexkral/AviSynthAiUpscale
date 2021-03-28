sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.252709269523621,-0.036740515381098,-0.461509048938751,-0.235232964158058);
res += float4(-0.033555451780558,0.049346555024385,-0.007914183661342,0.003987733740360) * Get(-ddx,-ddy);
res += float4(0.046402994543314,-0.062486447393894,-0.116083510220051,0.018557285889983) * Get(-ddx,-dy);
res += float4(0.027348892763257,0.162350058555603,0.129280254244804,-0.118014998733997) * Get(-ddx,0);
res += float4(-0.000520667061210,-0.082435406744480,-0.054805632680655,-0.040287014096975) * Get(-ddx,dy);
res += float4(-0.018163289874792,-0.011389978230000,0.014888527803123,0.017848538234830) * Get(-ddx,ddy);
res += float4(0.035751957446337,-0.010470818728209,-0.073791943490505,0.048886824399233) * Get(-dx,-ddy);
res += float4(0.066368043422699,-0.072120107710361,0.075378470122814,-0.005998931359500) * Get(-dx,-dy);
res += float4(0.329072237014771,0.120675519108772,0.076258875429630,0.078471727669239) * Get(-dx,0);
res += float4(-0.085642859339714,0.145548731088638,0.277806550264359,-0.320973902940750) * Get(-dx,dy);
res += float4(-0.045450277626514,0.004947207868099,-0.107465989887714,-0.048208214342594) * Get(-dx,ddy);
res += float4(-0.111359104514122,0.008758706972003,0.160098135471344,-0.103837415575981) * Get(0,-ddy);
res += float4(0.236678883433342,0.092948250472546,0.109395019710064,-0.416737228631973) * Get(0,-dy);
res += float4(0.409654676914215,0.706386506557465,0.531446456909180,1.524654269218445) * Get(0,0);
res += float4(-0.147627934813499,-0.281020462512970,-0.047437231987715,0.192247077822685) * Get(0,dy);
res += float4(0.020760854706168,-0.071153305470943,0.136300459504128,0.034055069088936) * Get(0,ddy);
res += float4(0.061104565858841,0.017247715964913,-0.037759218364954,0.025453349575400) * Get(dx,-ddy);
res += float4(-0.222215563058853,0.142313361167908,0.033895589411259,-0.011718694120646) * Get(dx,-dy);
res += float4(0.046372078359127,-0.327912241220474,0.247509762644768,-0.297976642847061) * Get(dx,0);
res += float4(-0.122427381575108,-0.264284610748291,0.030586561188102,-0.121755741536617) * Get(dx,dy);
res += float4(0.093456596136093,-0.002173319924623,-0.029391722753644,-0.079129442572594) * Get(dx,ddy);
res += float4(0.014272395521402,-0.022522946819663,0.009641731157899,-0.091732360422611) * Get(ddx,-ddy);
res += float4(0.065059959888458,0.022426668554544,-0.042288556694984,0.024703150615096) * Get(ddx,-dy);
res += float4(0.167341619729996,-0.195783644914627,0.018340559676290,-0.067410558462143) * Get(ddx,0);
res += float4(-0.042629536241293,0.013455996289849,0.065753415226936,-0.003830022178590) * Get(ddx,dy);
res += float4(-0.065617121756077,0.005592604167759,-0.054447483271360,0.029837448149920) * Get(ddx,ddy);
return res;
}