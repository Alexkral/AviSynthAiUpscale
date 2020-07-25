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
res += dot(float4(-0.219761446118355,0.016726849600673,0.082619458436966,0.168520674109459), Get(s1,-dx,-dy));
res += dot(float4(0.102708257734776,-0.156147658824921,0.124240845441818,0.026449425145984), Get(s2,-dx,-dy));
res += dot(float4(-0.205075398087502,-0.190154477953911,-0.040287736803293,0.013651447370648), Get(s3,-dx,-dy));
res += dot(float4(0.262751162052155,0.142883226275444,0.184438928961754,0.095221579074860), Get(s4,-dx,-dy));
res += dot(float4(-0.187419414520264,0.054453786462545,-0.174100130796432,0.201216012239456), Get(s1,-dx,0));
res += dot(float4(0.066260978579521,-0.287461757659912,0.231740668416023,0.102497644722462), Get(s2,-dx,0));
res += dot(float4(-0.499487221240997,0.090192638337612,0.100715853273869,0.071877688169479), Get(s3,-dx,0));
res += dot(float4(0.295265913009644,0.264790773391724,0.018534373492002,0.013977750204504), Get(s4,-dx,0));
res += dot(float4(-0.173658534884453,0.107834614813328,0.002629635389894,0.150383278727531), Get(s1,-dx,dy));
res += dot(float4(-0.204015329480171,-0.224385276436806,0.113499425351620,-0.001609254162759), Get(s2,-dx,dy));
res += dot(float4(-0.169546604156494,-0.026595078408718,0.031715828925371,-0.257555425167084), Get(s3,-dx,dy));
res += dot(float4(0.001292055821978,0.171757400035858,-0.158121317625046,0.284198373556137), Get(s4,-dx,dy));
res += dot(float4(-0.043300051242113,0.101370461285114,0.000980868935585,0.128075003623962), Get(s1,0,-dy));
res += dot(float4(0.367053240537643,0.183470711112022,0.103451609611511,-0.089754551649094), Get(s2,0,-dy));
res += dot(float4(-0.049410261213779,-0.124437235295773,0.185529574751854,0.219937145709991), Get(s3,0,-dy));
res += dot(float4(0.114378079771996,-0.094641417264938,0.057646382600069,-0.141204774379730), Get(s4,0,-dy));
res += dot(float4(-0.040295694023371,-0.216096907854080,-0.218610018491745,0.350396484136581), Get(s1,0,0));
res += dot(float4(0.176330298185349,0.209969013929367,-0.223403230309486,0.119660146534443), Get(s2,0,0));
res += dot(float4(-0.458643555641174,0.098367519676685,0.353924304246902,0.215253621339798), Get(s3,0,0));
res += dot(float4(0.098077394068241,0.122085303068161,0.034772951155901,-0.269711017608643), Get(s4,0,0));
res += dot(float4(-0.088319562375546,-0.176920473575592,0.097558371722698,0.256509751081467), Get(s1,0,dy));
res += dot(float4(-0.291233509778976,-0.051880002021790,-0.129389911890030,0.078952476382256), Get(s2,0,dy));
res += dot(float4(-0.149537786841393,0.267615079879761,0.090464361011982,-0.216292247176170), Get(s3,0,dy));
res += dot(float4(-0.137505948543549,0.086376175284386,0.103658333420753,0.254474967718124), Get(s4,0,dy));
res += dot(float4(-0.307485878467560,0.243411019444466,-0.414973616600037,0.038848146796227), Get(s1,dx,-dy));
res += dot(float4(0.099236808717251,0.037596970796585,0.057427294552326,-0.020437950268388), Get(s2,dx,-dy));
res += dot(float4(0.063685357570648,-0.196740865707397,0.021501868963242,0.167272716760635), Get(s3,dx,-dy));
res += dot(float4(0.118776112794876,0.135640665888786,0.012747094035149,-0.138820394873619), Get(s4,dx,-dy));
res += dot(float4(-0.142328485846519,-0.021349029615521,-0.349944561719894,0.222289666533470), Get(s1,dx,0));
res += dot(float4(-0.017801068723202,0.235900923609734,-0.214896783232689,0.041965752840042), Get(s2,dx,0));
res += dot(float4(0.051922950893641,-0.286380201578140,0.024307547137141,0.036322750151157), Get(s3,dx,0));
res += dot(float4(-0.123973064124584,-0.059444975107908,0.075418159365654,-0.088828779757023), Get(s4,dx,0));
res += dot(float4(-0.194568693637848,-0.061007633805275,0.066332146525383,0.198577404022217), Get(s1,dx,dy));
res += dot(float4(-0.222442775964737,0.080096744000912,-0.119568265974522,0.170006752014160), Get(s2,dx,dy));
res += dot(float4(0.099266856908798,0.171822503209114,-0.171101853251457,-0.066047437489033), Get(s3,dx,dy));
res += dot(float4(-0.318213224411011,0.011206707917154,0.047811947762966,0.157367229461670), Get(s4,dx,dy));
return float4(tex2D(s0, tex)[0] + res, 0, 0, 1);
}