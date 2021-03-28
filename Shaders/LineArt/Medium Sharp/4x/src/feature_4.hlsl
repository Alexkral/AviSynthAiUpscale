sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.036261484026909,0.297675967216492,-0.227430492639542,-0.451925903558731);
res += float4(0.000177200228791,-0.039324596524239,-0.069238305091858,0.013277960009873) * Get(-ddx,-ddy);
res += float4(-0.005910606589168,0.023376137018204,0.071472190320492,-0.011956655420363) * Get(-ddx,-dy);
res += float4(0.006408179178834,-0.038711637258530,-0.030942035838962,0.013485270552337) * Get(-ddx,0);
res += float4(0.013507827185094,0.059747204184532,0.056172981858253,0.056785635650158) * Get(-ddx,dy);
res += float4(0.006831895094365,0.037541564553976,0.015608719550073,-0.067118793725967) * Get(-ddx,ddy);
res += float4(0.011440242640674,0.064487680792809,0.081605292856693,0.020212810486555) * Get(-dx,-ddy);
res += float4(0.037459705024958,0.004023654386401,-0.196096137166023,0.048633657395840) * Get(-dx,-dy);
res += float4(0.000239010143559,-0.136344254016876,0.039369378238916,-0.137814849615097) * Get(-dx,0);
res += float4(0.061343800276518,-0.122382812201977,0.028542466461658,-0.005463892128319) * Get(-dx,dy);
res += float4(-0.016414334997535,0.019674109295011,-0.012590299360454,0.079159833490849) * Get(-dx,ddy);
res += float4(-0.032880034297705,-0.110966078937054,-0.027144430205226,-0.094727657735348) * Get(0,-ddy);
res += float4(-0.004614120349288,0.031090606004000,0.149360001087189,0.126385256648064) * Get(0,-dy);
res += float4(-0.117096312344074,-0.562505125999451,0.478068917989731,0.714408695697784) * Get(0,0);
res += float4(0.023968944326043,-0.436705499887466,-0.080261990427971,-0.193671390414238) * Get(0,dy);
res += float4(0.044183887541294,-0.084716960787773,-0.053412422537804,-0.004081873223186) * Get(0,ddy);
res += float4(0.079646915197372,0.082526683807373,0.014155265875161,0.023486498743296) * Get(dx,-ddy);
res += float4(-0.121038854122162,-0.116242736577988,-0.052189595997334,-0.103882707655430) * Get(dx,-dy);
res += float4(0.668490529060364,-0.393051117658615,-0.125138580799103,0.361139535903931) * Get(dx,0);
res += float4(0.010072749108076,0.061122234910727,-0.105469450354576,-0.248662635684013) * Get(dx,dy);
res += float4(-0.097344279289246,0.060878030955791,-0.018254118040204,0.026277596130967) * Get(dx,ddy);
res += float4(-0.296055316925049,-0.000139935422339,0.030211629346013,0.009335214272141) * Get(ddx,-ddy);
res += float4(-0.506330370903015,0.021719329059124,-0.031116187572479,0.034329473972321) * Get(ddx,-dy);
res += float4(-0.668700337409973,-0.043349727988243,0.166088968515396,-0.109294876456261) * Get(ddx,0);
res += float4(-0.381475150585175,0.115295767784119,-0.023851403966546,0.066082701086998) * Get(ddx,dy);
res += float4(-0.400120973587036,-0.047834098339081,0.072985105216503,-0.006034509744495) * Get(ddx,ddy);
res = max(float4(0, 0, 0, 0), res) + float4(0.003620771691203,0.178753986954689,0.451994866132736,0.029961418360472) * min(float4(0, 0, 0, 0), res);
return res;
}
