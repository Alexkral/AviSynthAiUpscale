sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.180295050144196,0.008225162513554,0.003694486338645,-0.735284209251404);
res += float4(-0.059259433299303,0.003837673924863,-0.044086296111345,-0.014211059547961) * Get(-ddx,-ddy);
res += float4(0.115948237478733,0.038993977010250,0.025042835623026,-0.024534018710256) * Get(-ddx,-dy);
res += float4(0.205397456884384,-0.128884285688400,0.016297327354550,0.015511121600866) * Get(-ddx,0);
res += float4(0.242297559976578,0.129783287644386,0.065921753644943,-0.031926691532135) * Get(-ddx,dy);
res += float4(-0.124411970376968,0.021433997899294,-0.044491589069366,0.018264189362526) * Get(-ddx,ddy);
res += float4(-0.013332923874259,0.117178827524185,0.005992945749313,0.051273170858622) * Get(-dx,-ddy);
res += float4(0.143594875931740,-0.185438871383667,-0.008298489265144,0.168868973851204) * Get(-dx,-dy);
res += float4(-1.790086269378662,0.840206980705261,-0.234040662646294,-0.296247750520706) * Get(-dx,0);
res += float4(-0.096134334802628,-0.311442762613297,0.171443611383438,0.030098086223006) * Get(-dx,dy);
res += float4(0.134217321872711,0.081633158028126,0.009401153773069,-0.000856610655319) * Get(-dx,ddy);
res += float4(-0.013576854951680,-0.248275801539421,0.065465942025185,0.016372425481677) * Get(0,-ddy);
res += float4(0.222076386213303,0.111082673072815,-0.200502574443817,1.048153042793274) * Get(0,-dy);
res += float4(-0.174410611391068,-0.662480294704437,0.706092953681946,-0.062518313527107) * Get(0,0);
res += float4(0.176681771874428,0.375028163194656,0.109569735825062,0.003859843825921) * Get(0,dy);
res += float4(-0.075920589268208,-0.198580592870712,-0.137388423085213,-0.033452279865742) * Get(0,ddy);
res += float4(-0.003028843551874,-0.142152830958366,-0.005934241693467,0.012030073441565) * Get(dx,-ddy);
res += float4(-0.120742157101631,0.309755295515060,0.122988797724247,0.080005139112473) * Get(dx,-dy);
res += float4(0.113161183893681,-0.336591750383377,0.070506259799004,-0.053182587027550) * Get(dx,0);
res += float4(-0.114150702953339,0.103356935083866,-0.537192165851593,-0.050019435584545) * Get(dx,dy);
res += float4(-0.004471064079553,0.053478021174669,0.031397148966789,-0.004059311933815) * Get(dx,ddy);
res += float4(0.042906671762466,-0.026591088622808,0.000111790111987,-0.001960791880265) * Get(ddx,-ddy);
res += float4(-0.010893062688410,0.010880609042943,-0.025829799473286,-0.009249301627278) * Get(ddx,-dy);
res += float4(0.036698885262012,0.032330576330423,-0.024271335452795,-0.019328877329826) * Get(ddx,0);
res += float4(0.015832379460335,0.093330778181553,-0.023447148501873,0.025746133178473) * Get(ddx,dy);
res += float4(0.033095244318247,-0.071684241294861,0.051609765738249,0.002141347154975) * Get(ddx,ddy);
res = max(float4(0, 0, 0, 0), res) + float4(-0.012527154758573,0.983374297618866,-0.419598370790482,-0.064917795360088) * min(float4(0, 0, 0, 0), res);
return res;
}