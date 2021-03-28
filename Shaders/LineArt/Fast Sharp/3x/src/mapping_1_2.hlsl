sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.121443822979927,0.057219836860895,0.007943672128022,0.119231939315796);
res += mul(Get(s0,-dx,-dy), float4x4(-0.033457580953836,0.144444853067398,0.070562019944191,0.088922247290611,-0.092334158718586,0.367375493049622,-0.068537019193172,0.169214010238647,0.348850667476654,-0.182574167847633,0.104813441634178,-0.010524922981858,0.297648072242737,0.079313263297081,0.098168708384037,0.216727703809738));
res += mul(Get(s0,-dx,0), float4x4(0.231571972370148,-0.320803672075272,0.266288876533508,-0.296639561653137,-0.166257441043854,-0.071979016065598,0.053074028342962,-0.018973968923092,0.032751679420471,-0.011486643925309,-0.065214142203331,0.127563625574112,-0.138817727565765,0.049920849502087,0.339570432901382,0.016829790547490));
res += mul(Get(s0,-dx,dy), float4x4(-0.039024949073792,0.083373904228210,-0.025785133242607,-0.252272486686707,0.100817941129208,-0.461909323930740,-0.051451079547405,0.105382665991783,-0.028342232108116,0.015295568853617,0.001301449956372,-0.044410880655050,0.020281530916691,-0.069014154374599,-0.188584879040718,-0.178115814924240));
res += mul(Get(s0,0,-dy), float4x4(0.498234808444977,-0.107124909758568,0.222720071673393,-0.024905333295465,0.014611482620239,0.198534741997719,-0.130285218358040,0.027381516993046,-0.406554639339447,0.193665727972984,0.007717104628682,-0.300460427999496,-0.164228305220604,0.110524006187916,0.118494503200054,-0.021215105429292));
res += mul(Get(s0,0,0), float4x4(-0.641840577125549,0.649823725223541,0.106533348560333,0.268394529819489,-0.080322057008743,0.098853260278702,-0.033465269953012,0.015981096774340,-0.185928672552109,-0.200384959578514,0.408008217811584,0.059636391699314,-0.159238070249557,-0.291793793439865,-0.333180546760559,-0.041067242622375));
res += mul(Get(s0,0,dy), float4x4(-0.162974283099174,-0.727544486522675,0.100229173898697,-0.060310728847980,0.110851839184761,-0.373484164476395,-0.199327498674393,0.322035759687424,0.087773285806179,-0.080430872738361,-0.264883518218994,0.087490685284138,-0.219980925321579,-0.040240813046694,-0.027494285255671,0.135564401745796));
res += mul(Get(s0,dx,-dy), float4x4(0.171488344669342,0.019406458362937,-0.123065471649170,0.020899808034301,0.117019794881344,0.344173938035965,0.181867152452469,0.111221186816692,-0.366211116313934,0.272630035877228,0.002738522831351,0.093411155045033,-0.334416478872299,0.096967794001102,-0.009823844768107,0.040384199470282));
res += mul(Get(s0,dx,0), float4x4(-0.283179074525833,0.473791271448135,-0.271534502506256,0.183269515633583,-0.183430865406990,0.106947578489780,0.061485331505537,-0.219745114445686,0.293962687253952,-0.116144761443138,-0.185555607080460,0.057345826178789,-0.217975825071335,0.020557375624776,-0.138638332486153,-0.113180756568909));
res += mul(Get(s0,dx,dy), float4x4(0.162474021315575,-0.247575998306274,0.032011371105909,0.060474731028080,0.126448556780815,-0.243848815560341,0.146826222538948,-0.058029152452946,-0.128270179033279,0.142468780279160,-0.297219961881638,-0.063888885080814,0.274076312780380,-0.252804666757584,0.194934576749802,0.026667667552829));
res += mul(Get(s1,-dx,-dy), float4x4(0.177961692214012,-0.058244384825230,0.121891528367996,-0.093138501048088,-0.403065562248230,0.021676454693079,0.152066439390182,-0.363021463155746,-0.485563576221466,-0.006545147858560,-0.064634144306183,-0.070793040096760,-0.040931209921837,0.066629059612751,0.081495635211468,0.049269597977400));
res += mul(Get(s1,-dx,0), float4x4(-0.106162033975124,0.112846501171589,-0.063078075647354,-0.043156299740076,-0.057521387934685,0.232715278863907,-0.730871260166168,-0.064345076680183,-0.240836888551712,0.022026365622878,-0.377663344144821,0.601210117340088,0.140396639704704,-0.337971597909927,0.027171129360795,0.041853006929159));
res += mul(Get(s1,-dx,dy), float4x4(0.015748878940940,-0.156796291470528,-0.028164250776172,0.000856992613990,0.216010004281998,0.392972707748413,-0.177670449018478,-0.261929452419281,0.022059924900532,0.234907403588295,0.197266951203346,0.040843084454536,0.160871997475624,0.188104540109634,-0.247418180108070,0.211424186825752));
res += mul(Get(s1,0,-dy), float4x4(0.072806231677532,-0.031774651259184,-0.302036911249161,0.161278322339058,-0.197135403752327,-0.200762599706650,0.389202505350113,-0.082457840442657,-0.580782115459442,-0.030293624848127,-0.132744327187538,-0.311590522527695,0.641501426696777,0.121946908533573,0.114960342645645,0.110647507011890));
res += mul(Get(s1,0,0), float4x4(0.101658165454865,-0.295907109975815,-0.241686910390854,-0.516077876091003,-0.458525717258453,-0.058528162539005,0.373166263103485,-0.350380212068558,0.324605882167816,-0.438353866338730,-0.183606639504433,-0.067873589694500,0.279771775007248,-0.180040106177330,0.206718862056732,0.173244878649712));
res += mul(Get(s1,0,dy), float4x4(0.035254251211882,0.672691404819489,0.026467150077224,0.020788056775928,-0.158594965934753,-0.121094606816769,-0.304549902677536,-0.241623580455780,0.136688873171806,0.231120154261589,0.149231493473053,-0.120219051837921,-0.304815471172333,-0.244692102074623,-0.470944344997406,-0.181126177310944));
res += mul(Get(s1,dx,-dy), float4x4(-0.128657117486000,-0.726424038410187,0.003718022722751,0.325581252574921,0.041650470346212,-0.208328932523727,0.077026680111885,0.359603375196457,-0.025241557508707,-0.001172174816020,-0.165512174367905,0.038356095552444,-0.177796199917793,-0.066252246499062,0.110588967800140,0.112389639019966));
res += mul(Get(s1,dx,0), float4x4(-0.836720943450928,0.040020268410444,0.292678385972977,0.578330338001251,0.160423457622528,-0.306245148181915,-0.116453886032104,0.891461849212646,0.076079890131950,0.037938401103020,-0.233469277620316,-0.072394713759422,-0.236422538757324,-0.057365644723177,0.004667321685702,-0.494422256946564));
res += mul(Get(s1,dx,dy), float4x4(0.355076313018799,-0.079359717667103,0.243963629007339,-0.000545206421521,0.282781273126602,0.075205199420452,-0.051725879311562,-0.200682938098907,0.025882111862302,0.018436761572957,-0.082950420677662,-0.035302888602018,-0.112396240234375,0.146117523312569,-0.074042007327080,-0.158456385135651));
res += mul(Get(s2,-dx,-dy), float4x4(0.071626864373684,0.020726155489683,-0.018377836793661,0.070015728473663,0.165801987051964,0.028210794553161,0.046866770833731,-0.025820076465607,-0.316022187471390,-0.236127778887749,0.249400049448013,-0.005411070305854,-0.220945730805397,0.011921223253012,0.121294900774956,-0.125519588589668));
res += mul(Get(s2,-dx,0), float4x4(-0.146009415388107,-0.175878897309303,-0.132057771086693,-0.149588227272034,0.280312657356262,-0.346324592828751,0.285704940557480,-0.497955083847046,-0.252842217683792,-0.001279755728319,-0.117069788277149,0.196987494826317,-0.031406171619892,-0.003679471556097,-0.433020383119583,-0.353484362363815));
res += mul(Get(s2,-dx,dy), float4x4(-0.143741324543953,0.074213311076164,0.025867309421301,0.132898181676865,-0.256244570016861,0.067008115351200,-0.300097584724426,0.092758581042290,0.064695306122303,0.065638355910778,0.100488297641277,-0.018374465405941,0.189491018652916,-0.129527613520622,-0.374304801225662,-0.217847064137459));
res += mul(Get(s2,0,-dy), float4x4(-0.090065829455853,-0.073220595717430,0.090102545917034,0.043197862803936,0.306293159723282,0.000670172099490,-0.220855459570885,0.021534694358706,-0.425993025302887,-0.037090107798576,-0.388298094272614,-0.389874339103699,-0.134218931198120,-0.133471444249153,-0.047719229012728,-0.295627892017365));
res += mul(Get(s2,0,0), float4x4(-1.376664876937866,0.143101468682289,-0.013676455244422,-0.074108272790909,-0.317542761564255,0.445112586021423,-0.174132093787193,0.737281739711761,0.581258177757263,-0.045423496514559,0.213225319981575,-0.235651239752769,-0.100324988365173,-0.016956949606538,0.165393427014351,-0.306586354970932));
res += mul(Get(s2,0,dy), float4x4(0.249788984656334,-1.225808858871460,0.179734751582146,0.053311791270971,0.049757361412048,-0.444895476102829,0.059702266007662,0.101952470839024,-0.107376202940941,0.183029919862747,-0.417931079864502,0.326679319143295,0.023531069979072,0.327179938554764,-0.771702408790588,0.088105253875256));
res += mul(Get(s2,dx,-dy), float4x4(-0.134186580777168,0.007749770302325,-0.157753035426140,0.083812862634659,0.175047263503075,0.059438459575176,0.107139460742474,0.025225063785911,0.586315035820007,0.067862123250961,0.226263001561165,0.154462024569511,0.148521691560745,0.105301320552826,0.161859884858131,0.578212440013885));
res += mul(Get(s2,dx,0), float4x4(-0.085665822029114,0.092885389924049,-0.331791847944260,0.182835415005684,-0.506330490112305,0.062774509191513,-0.064175538718700,-0.376123338937759,-0.081637270748615,0.086647838354111,-0.074827052652836,0.259542047977448,0.344816535711288,-0.447013646364212,0.378309577703476,0.618356704711914));
res += mul(Get(s2,dx,dy), float4x4(-0.229026302695274,-0.197951704263687,-0.096568860113621,0.182101026177406,0.046673826873302,0.165091365575790,-0.137664616107941,-0.100533463060856,-0.103134714066982,-0.075258411467075,0.151691943407059,-0.089934006333351,-0.218722105026245,0.206425741314888,0.334141552448273,0.166946038603783));
res = max(float4(0, 0, 0, 0), res) + float4(-0.150767847895622,-0.287066161632538,0.789941310882568,-0.136794447898865) * min(float4(0, 0, 0, 0), res);
return res;
}