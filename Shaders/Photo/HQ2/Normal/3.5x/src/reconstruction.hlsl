sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
sampler s4 : register(s4);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float res = 0;
res += dot(float4(0.063372164964676,-0.085677586495876,-0.126278445124626,-0.006089128088206), Get(s1,-dx,-dy));
res += dot(float4(0.000007106984413,0.000012889297977,0.095421180129051,-0.108674012124538), Get(s2,-dx,-dy));
res += dot(float4(-0.195116147398949,-0.022363325580955,-0.104604713618755,-0.019172459840775), Get(s3,-dx,-dy));
res += dot(float4(0.080923281610012,0.138547956943512,-0.066410362720490,0.038063555955887), Get(s4,-dx,-dy));
res += dot(float4(0.112312763929367,-0.235040232539177,-0.100597426295280,-0.000370216555893), Get(s1,-dx,0));
res += dot(float4(0.000019635213903,0.000205300078960,0.115141116082668,0.053694736212492), Get(s2,-dx,0));
res += dot(float4(-0.133186295628548,-0.036685734987259,0.016509130597115,-0.016755810007453), Get(s3,-dx,0));
res += dot(float4(0.190643563866615,0.070326775312424,-0.009659061208367,0.106092907488346), Get(s4,-dx,0));
res += dot(float4(0.211084157228470,-0.027433335781097,-0.145474061369896,-0.004819327965379), Get(s1,-dx,dy));
res += dot(float4(0.000004808394351,0.000141828510095,-0.019838612526655,0.017887176945806), Get(s2,-dx,dy));
res += dot(float4(-0.016706377267838,-0.073698736727238,0.049484044313431,-0.025808511301875), Get(s3,-dx,dy));
res += dot(float4(0.123296760022640,0.004872723948210,-0.007991485297680,0.034497499465942), Get(s4,-dx,dy));
res += dot(float4(-0.126657649874687,0.111549295485020,0.062799498438835,0.029948478564620), Get(s1,0,-dy));
res += dot(float4(-0.000018095066480,-0.000123323843582,0.095164850354195,-0.008114206604660), Get(s2,0,-dy));
res += dot(float4(-0.094294086098671,-0.078783340752125,-0.270572900772095,0.005763533059508), Get(s3,0,-dy));
res += dot(float4(0.045179635286331,0.191429734230042,-0.132405757904053,0.045986827462912), Get(s4,0,-dy));
res += dot(float4(-0.401134490966797,-0.208489716053009,0.600373923778534,-0.119987368583679), Get(s1,0,0));
res += dot(float4(-0.000023548718673,-0.000384814571589,0.276659339666367,0.359806478023529), Get(s2,0,0));
res += dot(float4(-0.085489600896835,0.257390141487122,0.153815299272537,-0.334991961717606), Get(s3,0,0));
res += dot(float4(-0.034737374633551,-0.125693842768669,0.147368192672729,-0.183616086840630), Get(s4,0,0));
res += dot(float4(0.183008968830109,0.052013322710991,-0.137844905257225,0.003121972549707), Get(s1,0,dy));
res += dot(float4(-0.000001864791670,-0.000499867252074,-0.142316564917564,-0.140755936503410), Get(s2,0,dy));
res += dot(float4(0.078286789357662,0.002694096881896,0.156830832362175,-0.047041594982147), Get(s3,0,dy));
res += dot(float4(-0.001928408513777,-0.178340390324593,0.133766204118729,-0.046664979308844), Get(s4,0,dy));
res += dot(float4(-0.075664967298508,0.127069815993309,-0.029703792184591,0.102813884615898), Get(s1,dx,-dy));
res += dot(float4(-0.000005787991540,-0.000008606771189,-0.074765317142010,0.066415578126907), Get(s2,dx,-dy));
res += dot(float4(0.035711947828531,-0.083733484148979,-0.081728607416153,0.006110834423453), Get(s3,dx,-dy));
res += dot(float4(-0.044282190501690,0.142429873347282,-0.161798581480980,-0.006899049971253), Get(s4,dx,-dy));
res += dot(float4(-0.049481287598610,0.177183583378792,0.002333584241569,0.263558536767960), Get(s1,dx,0));
res += dot(float4(-0.000029886698030,-0.000079282930528,-0.225552573800087,0.114246062934399), Get(s2,dx,0));
res += dot(float4(0.127250850200653,-0.164914697408676,0.016312194988132,0.021849928423762), Get(s3,dx,0));
res += dot(float4(-0.128280594944954,0.014092890545726,-0.130292192101479,-0.136763989925385), Get(s4,dx,0));
res += dot(float4(0.103370659053326,0.133564725518227,-0.108508139848709,0.120946101844311), Get(s1,dx,dy));
res += dot(float4(0.000001501680572,0.000101970683318,-0.163283571600914,-0.096406385302544), Get(s2,dx,dy));
res += dot(float4(0.017921306192875,-0.023384386673570,0.056963630020618,-0.016747754067183), Get(s3,dx,dy));
res += dot(float4(-0.042110670357943,-0.061869412660599,-0.027912762016058,-0.093172036111355), Get(s4,dx,dy));
return float4(tex2D(s0, tex)[0] + res, 0, 0, 1);
}