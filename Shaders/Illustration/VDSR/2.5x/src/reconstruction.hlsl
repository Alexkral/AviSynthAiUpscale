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
res += dot(float4(0.329157322645187,-0.277836322784424,-0.058306958526373,-0.089674420654774), Get(s1,-dx,-dy));
res += dot(float4(0.086312711238861,0.068243563175201,-0.488228648900986,0.085415728390217), Get(s2,-dx,-dy));
res += dot(float4(0.039264757186174,-0.291003108024597,0.158834084868431,-0.177101954817772), Get(s3,-dx,-dy));
res += dot(float4(-0.118530020117760,0.113217182457447,-0.174956679344177,-0.070078372955322), Get(s4,-dx,-dy));
res += dot(float4(0.299900323152542,0.140512481331825,0.059620421379805,-0.573255836963654), Get(s1,-dx,0));
res += dot(float4(0.191362649202347,0.343107372522354,0.044492151588202,-0.102194845676422), Get(s2,-dx,0));
res += dot(float4(0.528686463832855,-0.332734405994415,-0.438868224620819,-0.055437564849854), Get(s3,-dx,0));
res += dot(float4(-0.060178745537996,0.016031296923757,0.025632215663791,0.085848368704319), Get(s4,-dx,0));
res += dot(float4(-0.147983461618423,0.116313539445400,-0.013684925623238,-0.345780134201050), Get(s1,-dx,dy));
res += dot(float4(-0.336604803800583,0.064574144780636,0.298389017581940,-0.006952994503081), Get(s2,-dx,dy));
res += dot(float4(0.178197801113129,-0.581344902515411,-0.099341794848442,-0.379957795143127), Get(s3,-dx,dy));
res += dot(float4(-0.391563028097153,0.168286755681038,-0.016871415078640,0.210845708847046), Get(s4,-dx,dy));
res += dot(float4(0.499828934669495,-0.171738967299461,-0.081782773137093,0.227371498942375), Get(s1,0,-dy));
res += dot(float4(-0.058781661093235,0.076150886714458,-0.526493966579437,-0.233606010675430), Get(s2,0,-dy));
res += dot(float4(-0.017466744408011,0.111966140568256,-0.117130160331726,0.069834984838963), Get(s3,0,-dy));
res += dot(float4(-0.142298549413681,0.019052138552070,0.013241494074464,-0.491916835308075), Get(s4,0,-dy));
res += dot(float4(-0.010128435678780,0.192027419805527,-0.207000181078911,-0.147296413779259), Get(s1,0,0));
res += dot(float4(0.429184317588806,0.228585660457611,0.145518228411674,-0.456913024187088), Get(s2,0,0));
res += dot(float4(0.585843265056610,0.193369716405869,-0.632870316505432,0.247630327939987), Get(s3,0,0));
res += dot(float4(-0.075458019971848,0.170752912759781,0.177438423037529,0.063246503472328), Get(s4,0,0));
res += dot(float4(-0.573209762573242,0.239663124084473,0.020154681056738,-0.224955156445503), Get(s1,0,dy));
res += dot(float4(0.408267438411713,0.132290914654732,0.399578094482422,-0.127708762884140), Get(s2,0,dy));
res += dot(float4(0.018659235909581,-0.101942606270313,-0.140898957848549,-0.164687290787697), Get(s3,0,dy));
res += dot(float4(-0.131415769457817,0.464326977729797,0.142172634601593,0.429053455591202), Get(s4,0,dy));
res += dot(float4(0.408098965883255,0.185541048645973,-0.004335756413639,0.240756779909134), Get(s1,dx,-dy));
res += dot(float4(-0.289086699485779,-0.172831788659096,-0.187832161784172,0.058884885162115), Get(s2,dx,-dy));
res += dot(float4(-0.388878047466278,0.248328775167465,0.134728029370308,0.061639498919249), Get(s3,dx,-dy));
res += dot(float4(0.081962674856186,-0.107679419219494,0.034223251044750,-0.370568364858627), Get(s4,dx,-dy));
res += dot(float4(-0.275083392858505,0.116245590150356,0.156556725502014,0.187022656202316), Get(s1,dx,0));
res += dot(float4(-0.365986287593842,-0.508917808532715,-0.105814531445503,-0.154467478394508), Get(s2,dx,0));
res += dot(float4(-0.355530470609665,0.402971625328064,0.335793226957321,0.322846770286560), Get(s3,dx,0));
res += dot(float4(0.114364430308342,-0.150003701448441,0.074303746223450,0.002775274217129), Get(s4,dx,0));
res += dot(float4(-0.394431382417679,-0.122693836688995,-0.025229511782527,0.004651616327465), Get(s1,dx,dy));
res += dot(float4(-0.073550112545490,-0.179162591695786,0.234538123011589,-0.011770538985729), Get(s2,dx,dy));
res += dot(float4(-0.449278414249420,0.005942436866462,0.389771938323975,0.220940157771111), Get(s3,dx,dy));
res += dot(float4(-0.020007818937302,-0.158149421215057,0.045463256537914,0.265394359827042), Get(s4,dx,dy));
return float4(tex2D(s0, tex)[0] + res, 0, 0, 1);
}
