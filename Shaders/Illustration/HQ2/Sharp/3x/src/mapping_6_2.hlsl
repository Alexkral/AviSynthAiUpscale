sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += mul(Get(s0,-dx,-dy), float4x4(-0.026257669553161,-0.059868354350328,0.016110762953758,0.015971885994077,-0.009847666136920,0.034905578941107,0.061680637300014,-0.005785704124719,0.070814006030560,0.046376690268517,0.071368455886841,-0.088378407061100,-0.081964388489723,0.011076153255999,0.070150062441826,-0.013208563439548));
res += mul(Get(s0,-dx,0), float4x4(-0.035453464835882,0.017374793067575,-0.069682143628597,0.077972821891308,-0.023564131930470,0.045764192938805,0.036100722849369,-0.038999248296022,-0.034570287913084,0.134509697556496,0.018192527815700,0.015145088545978,0.004707583226264,-0.059572808444500,-0.058195870369673,-0.028476098552346));
res += mul(Get(s0,-dx,dy), float4x4(-0.023104574531317,-0.072989366948605,-0.070626363158226,-0.041096586734056,0.004516743123531,0.001609541592188,0.032285042107105,-0.046585351228714,-0.076296135783195,0.115594074130058,-0.115770354866982,0.042548038065434,0.082520835101604,-0.048601262271404,0.002261248184368,0.018963551148772));
res += mul(Get(s0,0,-dy), float4x4(-0.085430011153221,0.026406155899167,-0.052848387509584,0.104324258863926,-0.094769388437271,-0.038823522627354,0.051289927214384,0.031195886433125,-0.021437678486109,-0.026369720697403,0.041680458933115,-0.040036037564278,-0.010489846579731,0.041163250803947,0.007919060066342,0.047472327947617));
res += mul(Get(s0,0,0), float4x4(-0.078358545899391,-0.062062907963991,0.103869616985321,0.032472889870405,-0.112669110298157,0.057624932378531,0.059493783861399,-0.040114454925060,-0.089562639594078,0.029286803677678,0.066688053309917,0.025130771100521,0.033121213316917,-0.000095364172012,-0.132029429078102,0.061413776129484));
res += mul(Get(s0,0,dy), float4x4(-0.073365122079849,-0.012564931064844,0.062459256500006,-0.018892697989941,0.008194616995752,-0.060919430106878,0.018104325979948,-0.064361669123173,-0.068460032343864,0.075141504406929,-0.005287583451718,-0.056876748800278,0.005506804678589,-0.100439384579659,-0.037796571850777,0.128111541271210));
res += mul(Get(s0,dx,-dy), float4x4(-0.000608199159615,0.020906055346131,0.103983312845230,0.035405188798904,0.061810124665499,0.029510291293263,-0.015184543095529,0.067602775990963,0.070498481392860,0.057856310158968,-0.036208409816027,-0.003214994678274,0.006529924925417,0.046328615397215,0.013969476334751,-0.072408944368362));
res += mul(Get(s0,dx,0), float4x4(-0.024014854803681,0.024585880339146,0.081334374845028,-0.010480803437531,0.034575350582600,0.031572055071592,-0.043369706720114,-0.016083056107163,0.056678175926208,0.022245606407523,-0.120172969996929,-0.000016015479559,-0.033383481204510,0.055831052362919,-0.068324349820614,-0.102078154683113));
res += mul(Get(s0,dx,dy), float4x4(0.079280763864517,-0.009057546034455,0.034045096486807,-0.003132985206321,0.072296448051929,-0.031642232090235,-0.091709576547146,0.061482235789299,0.045384205877781,-0.029322281479836,0.097216866910458,0.120462790131569,0.012787243351340,0.039329238235950,-0.073594771325588,0.004117758478969));
res += mul(Get(s1,-dx,-dy), float4x4(-0.083978809416294,-0.035609275102615,-0.094847768545151,-0.033375874161720,0.072953820228577,-0.104657933115959,0.104982525110245,-0.129675403237343,0.056116744875908,0.107997588813305,0.112391717731953,-0.028242001309991,0.046795759350061,-0.055460654199123,0.055355221033096,-0.170425370335579));
res += mul(Get(s1,-dx,0), float4x4(-0.070198848843575,-0.108700305223465,-0.001141904504038,-0.077365607023239,-0.032303992658854,0.070364728569984,0.029096771031618,0.047539845108986,0.041574116796255,-0.005459169857204,-0.019323170185089,-0.135566368699074,-0.017559144645929,0.064229361712933,-0.073593840003014,-0.126799076795578));
res += mul(Get(s1,-dx,dy), float4x4(-0.064258128404617,-0.057098884135485,-0.014959619380534,0.020858980715275,0.022047046571970,-0.057589050382376,0.012955958023667,0.075573742389679,-0.025876754894853,-0.127666950225830,-0.099696442484856,0.041196696460247,0.041162174195051,-0.006889896467328,0.040872141718864,-0.030294882133603));
res += mul(Get(s1,0,-dy), float4x4(-0.014903341419995,-0.011402615346014,-0.038567747920752,-0.018338218331337,0.031919371336699,0.042339473962784,-0.043220262974501,0.086257286369801,0.027232954278588,0.055499255657196,-0.012720598839223,-0.095653653144836,0.087096497416496,0.044648271054029,0.029133724048734,0.062339968979359));
res += mul(Get(s1,0,0), float4x4(0.031280238181353,-0.044777233153582,0.080773204565048,-0.138409838080406,-0.114459328353405,0.051005683839321,0.193949222564697,0.138105958700180,0.187077075242996,0.031511213630438,-0.110836558043957,-0.089462637901306,-0.011421060189605,-0.058924153447151,-0.052152976393700,0.054273705929518));
res += mul(Get(s1,0,dy), float4x4(-0.004490875639021,-0.018147341907024,-0.026560384780169,-0.037315774708986,-0.067230686545372,-0.004101292230189,0.006441448349506,0.056024860590696,-0.013020844198763,-0.106522843241692,0.008974800817668,0.024483440443873,0.050224404782057,0.114719159901142,0.039108119904995,-0.032091982662678));
res += mul(Get(s1,dx,-dy), float4x4(0.141540527343750,-0.037507016211748,0.160084664821625,0.054603274911642,0.072553783655167,-0.036367166787386,0.043415710330009,-0.110254511237144,-0.038677424192429,-0.099070288240910,0.026450656354427,-0.017831588163972,0.134588912129402,0.088198259472847,-0.010220477357507,-0.076463192701340));
res += mul(Get(s1,dx,0), float4x4(0.106288075447083,0.031033212319016,0.015279177576303,-0.015960620716214,-0.083506345748901,-0.037976365536451,0.013234799727798,-0.058690305799246,0.098539479076862,-0.010977826081216,-0.048196800053120,-0.049397595226765,0.049125462770462,0.076344482600689,-0.086199238896370,-0.031503703445196));
res += mul(Get(s1,dx,dy), float4x4(0.062544532120228,-0.007458832580596,-0.064223118126392,0.032792735844851,-0.077390134334564,0.053063269704580,-0.089940406382084,-0.114452704787254,0.056810006499290,0.056626617908478,-0.014840245246887,-0.042284682393074,-0.001296094735153,0.083893172442913,0.073853567242622,-0.154579222202301));
res += mul(Get(s2,-dx,-dy), float4x4(-0.016937823966146,-0.066946327686310,0.121875762939453,-0.055319592356682,-0.008764858357608,-0.042181432247162,0.060670696198940,-0.044284962117672,-0.082901246845722,-0.060653984546661,0.108335271477699,0.119524225592613,-0.021435746923089,0.065999358892441,-0.028671180829406,-0.010675391182303));
res += mul(Get(s2,-dx,0), float4x4(-0.024577930569649,0.080002516508102,0.053646720945835,-0.143747493624687,0.095613799989223,-0.007969523780048,0.001635278691538,0.001096553285606,0.023655099794269,-0.040352452546358,-0.006689193658531,0.044434316456318,-0.111094743013382,0.115490905940533,0.053280528634787,-0.047407656908035));
res += mul(Get(s2,-dx,dy), float4x4(0.099899031221867,0.000617295852862,-0.028913464397192,-0.076192274689674,0.023736227303743,-0.043080039322376,0.008777149952948,-0.051958333700895,0.010862233117223,0.058081366121769,-0.120387800037861,-0.000306008412736,-0.069056056439877,-0.039272636175156,0.083061672747135,0.087810657918453));
res += mul(Get(s2,0,-dy), float4x4(-0.019892228767276,0.119371041655540,0.042201656848192,-0.073405869305134,-0.078996673226357,0.033602040261030,0.056220233440399,0.013675408437848,-0.018402734771371,-0.003379907924682,-0.044598896056414,0.077515192329884,-0.117624089121819,-0.090241737663746,-0.075349465012550,-0.008240394294262));
res += mul(Get(s2,0,0), float4x4(0.072728082537651,-0.052205551415682,0.035030916333199,0.042331524193287,-0.029549259692430,0.062948033213615,0.001452082651667,0.012959793210030,-0.016388712450862,0.213063910603523,-0.111768223345280,0.043270215392113,-0.044097412377596,0.017740840092301,-0.062603421509266,0.047613885253668));
res += mul(Get(s2,0,dy), float4x4(0.147651821374893,-0.077036872506142,0.037482392042875,-0.061016745865345,0.037657801061869,0.021199759095907,0.056810081005096,0.003887944854796,-0.024501234292984,0.041403207927942,-0.051675517112017,0.023348556831479,-0.060673534870148,0.116539292037487,-0.055881205946207,0.043489422649145));
res += mul(Get(s2,dx,-dy), float4x4(0.019299682229757,0.097673043608665,-0.040898695588112,0.057944670319557,-0.027742579579353,0.101332604885101,0.065451353788376,0.120876260101795,-0.005980297923088,0.036073397845030,-0.149924337863922,-0.003388108219951,0.066018447279930,-0.015134595334530,0.012282852083445,-0.022621750831604));
res += mul(Get(s2,dx,0), float4x4(0.059277478605509,0.003579756477848,-0.118161767721176,0.217250153422356,0.009833074174821,0.063625834882259,0.021935669705272,-0.078033745288849,0.014271480962634,0.056280598044395,-0.038303144276142,0.155437529087067,0.010752988047898,0.004218641202897,0.066480956971645,0.032220441848040));
res += mul(Get(s2,dx,dy), float4x4(-0.023584982380271,-0.132992744445801,0.097651191055775,0.069587267935276,0.092183105647564,-0.008661547675729,0.004014723934233,-0.038580697029829,0.008751899935305,0.105343304574490,-0.121336631476879,-0.014892334118485,0.014341987669468,0.011626064777374,0.023806758224964,-0.022196542471647));
res += mul(Get(s3,-dx,-dy), float4x4(-0.047597464174032,-0.058901619166136,-0.013848707079887,0.022337738424540,-0.061406590044498,-0.034972023218870,0.010972085408866,0.037726577371359,0.072010800242424,0.041686322540045,0.041814133524895,0.068585932254791,-0.007047218270600,-0.079548038542271,-0.056197121739388,0.007703817449510));
res += mul(Get(s3,-dx,0), float4x4(0.085442192852497,-0.058131799101830,-0.066935904324055,-0.018162742257118,-0.055613297969103,-0.036147434264421,0.023638768121600,0.086752466857433,0.048906102776527,-0.082105979323387,0.029196972027421,0.055319860577583,-0.114812284708023,-0.084193155169487,-0.023837462067604,0.038390085101128));
res += mul(Get(s3,-dx,dy), float4x4(-0.036817036569118,-0.012546517886221,0.015155506320298,0.059387020766735,-0.069713279604912,0.081464208662510,-0.026006445288658,0.104204565286636,-0.000823148177005,0.003584743244573,0.060811266303062,0.041089445352554,-0.232232347130775,-0.047806907445192,-0.014527759514749,-0.045416139066219));
res += mul(Get(s3,0,-dy), float4x4(-0.031457494944334,0.021096186712384,-0.038936253637075,-0.015850545838475,-0.000354501127731,-0.062233071774244,0.114108495414257,-0.021468570455909,0.141613259911537,0.078097566962242,0.018853696063161,0.038716446608305,-0.041570860892534,-0.027762692421675,0.136476919054985,-0.104354135692120));
res += mul(Get(s3,0,0), float4x4(0.048725541681051,-0.077811695635319,-0.009586053900421,-0.078600257635117,-0.029151121154428,0.059746697545052,0.020970277488232,0.004597134888172,0.103425614535809,-0.033880040049553,0.002556690480560,0.064122140407562,-0.102272592484951,0.122868821024895,0.016915535554290,-0.099542364478111));
res += mul(Get(s3,0,dy), float4x4(0.017386898398399,0.026424333453178,0.021379051730037,-0.009767265990376,-0.056790731847286,0.057469405233860,0.019519861787558,0.057591464370489,-0.067948251962662,0.094662353396416,0.049605820327997,-0.089638113975525,-0.262678891420364,-0.025060541927814,-0.079843349754810,0.113327600061893));
res += mul(Get(s3,dx,-dy), float4x4(-0.016497092321515,0.046399563550949,0.010466877371073,-0.009264545515180,0.063791342079639,-0.104313045740128,-0.030574247241020,-0.035746704787016,-0.050885736942291,0.004852341488004,-0.014648837037385,0.218949809670448,0.063981652259827,0.032209016382694,0.044593621045351,-0.039441719651222));
res += mul(Get(s3,dx,0), float4x4(0.066167108714581,0.104241788387299,-0.052195586264133,-0.068694688379765,-0.014393599703908,0.058414269238710,0.018272940069437,0.131149932742119,-0.080848447978497,-0.076384514570236,0.072008937597275,0.138421386480331,-0.040562827140093,-0.005211804062128,-0.091999843716621,-0.025701848790050));
res += mul(Get(s3,dx,dy), float4x4(0.064442001283169,0.041839633136988,-0.056516118347645,-0.029616128653288,0.026854367926717,-0.049474325031042,-0.042198836803436,0.034693464636803,-0.051425755023956,0.159136638045311,0.104094810783863,0.024880263954401,-0.093865610659122,-0.075142174959183,-0.107149772346020,-0.003757964121178));
return max(float4(0,0,0,0), res);
}
