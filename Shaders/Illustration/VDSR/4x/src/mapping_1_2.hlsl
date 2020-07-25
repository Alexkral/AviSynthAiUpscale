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
res += mul(Get(s0,-dx,-dy), float4x4(-0.204259768128395,-0.116106182336807,0.138094544410706,-0.009515370242298,0.157224878668785,-0.065019302070141,0.194547891616821,-0.201160356402397,0.158452197909355,0.151113227009773,-0.042674250900745,0.015764631330967,0.027651365846395,-0.043466586619616,-0.035862024873495,0.016223637387156));
res += mul(Get(s0,-dx,0), float4x4(0.040792759507895,0.025434868410230,-0.085891529917717,-0.069906286895275,0.187280088663101,-0.005384936463088,-0.021941404789686,0.067760773003101,-0.064682640135288,0.079230606555939,-0.104399338364601,0.060184992849827,-0.068995922803879,0.188918679952621,0.140929073095322,0.088094331324100));
res += mul(Get(s0,-dx,dy), float4x4(-0.050430297851563,-0.116751164197922,-0.048759646713734,-0.088946692645550,0.169372364878654,-0.129663243889809,-0.018781598657370,-0.261430263519287,0.118959262967110,0.049774289131165,-0.132981762290001,-0.041672270745039,0.094285383820534,-0.071962669491768,-0.085899904370308,0.024166936054826));
res += mul(Get(s0,0,-dy), float4x4(-0.041053310036659,0.077208355069160,-0.072099208831787,-0.016138739883900,-0.062826819717884,0.156842559576035,0.071250230073929,0.078919157385826,0.034594252705574,-0.043982278555632,-0.062772840261459,-0.055964425206184,-0.154194906353951,-0.125634014606476,-0.098600246012211,-0.010666619986296));
res += mul(Get(s0,0,0), float4x4(0.197696492075920,0.116976395249367,0.125654056668282,0.156642422080040,0.147315904498100,-0.124998830258846,-0.130139440298080,0.117814086377621,-0.078467078506947,0.125270202755928,0.025347363203764,-0.062447983771563,0.219936415553093,-0.048957433551550,0.041815046221018,0.088383100926876));
res += mul(Get(s0,0,dy), float4x4(0.151684731245041,-0.109558545053005,0.263591229915619,-0.178541317582130,-0.073836877942085,-0.076470784842968,-0.172555863857269,0.185649767518044,-0.160667583346367,0.160832494497299,-0.080300927162170,0.173847675323486,-0.228507101535797,0.123557284474373,0.112126491963863,0.007884696125984));
res += mul(Get(s0,dx,-dy), float4x4(0.117231920361519,-0.074610285460949,0.121450312435627,0.122260652482510,-0.067036755383015,-0.060252193361521,0.034106489270926,0.105027891695499,0.119632937014103,-0.141616389155388,-0.012263222597539,0.038926564157009,-0.077909640967846,0.092233039438725,0.046860527247190,0.057284604758024));
res += mul(Get(s0,dx,0), float4x4(-0.085296824574471,0.087719000875950,0.017838748171926,-0.071443222463131,-0.093557782471180,0.266297698020935,0.033482022583485,0.027535576373339,-0.070850931107998,0.038078211247921,-0.162637501955032,-0.001481843180954,-0.110381096601486,-0.088531136512756,0.022442981600761,-0.189780920743942));
res += mul(Get(s0,dx,dy), float4x4(-0.073563396930695,-0.194009691476822,-0.118675433099270,0.138836532831192,-0.111951030790806,0.087307170033455,0.025022570043802,-0.045052818953991,-0.076686307787895,-0.238264203071594,-0.292176961898804,0.048034586012363,0.219683110713959,-0.146106660366058,-0.049839943647385,-0.016102423891425));
res += mul(Get(s1,-dx,-dy), float4x4(0.039670135825872,-0.109670832753181,0.140013903379440,0.000195085638552,-0.014883359894156,-0.108727037906647,0.146199971437454,-0.058407761156559,0.117886357009411,0.009430910460651,-0.162771657109261,-0.024492356926203,0.180049046874046,-0.226542472839355,0.013061946257949,-0.187778010964394));
res += mul(Get(s1,-dx,0), float4x4(0.050447873771191,-0.060941241681576,-0.043652441352606,-0.172237738966942,-0.041189309209585,-0.208808884024620,-0.007375000510365,0.006101468112320,-0.093173585832119,-0.115504585206509,0.026483297348022,0.174439147114754,-0.014982716180384,-0.209654062986374,-0.040856007486582,-0.192013904452324));
res += mul(Get(s1,-dx,dy), float4x4(-0.052782971411943,0.134531274437904,-0.050851330161095,-0.142720028758049,-0.191417127847672,-0.000974970869720,0.051001369953156,-0.003082454903051,-0.219732418656349,-0.191515982151031,-0.001584523706697,-0.024830840528011,0.066718086600304,0.124081626534462,0.080940969288349,-0.086087502539158));
res += mul(Get(s1,0,-dy), float4x4(0.082602523267269,-0.008480439893901,0.157874122262001,-0.131304875016212,0.032373275607824,0.152394920587540,0.085058212280273,0.143572017550468,0.045955162495375,0.064232982695103,-0.068703301250935,-0.061882592737675,-0.099307917058468,-0.064849741756916,0.036709796637297,-0.025563752278686));
res += mul(Get(s1,0,0), float4x4(0.099296122789383,-0.164954513311386,0.008806414902210,0.035520851612091,0.001406721887179,-0.022848945111036,-0.165382981300354,0.021617757156491,0.279812157154083,0.132117167115211,0.101553738117218,-0.068355403840542,-0.050355110317469,0.114246509969234,-0.052641801536083,-0.029917476698756));
res += mul(Get(s1,0,dy), float4x4(0.096021659672260,0.008056729100645,-0.148483917117119,-0.150290936231613,0.049922030419111,0.065682232379913,0.078744396567345,-0.016067285090685,0.128941863775253,0.222469970583916,0.080898299813271,0.088135704398155,-0.249325364828110,0.003427399089560,0.082403287291527,0.149504467844963));
res += mul(Get(s1,dx,-dy), float4x4(0.085408151149750,-0.093999736011028,0.094620116055012,0.001890821498819,0.060629144310951,0.118203781545162,-0.031317811459303,-0.005961822811514,-0.049757942557335,0.093239076435566,0.137552544474602,-0.069569781422615,0.031082021072507,0.042290903627872,-0.068282447755337,0.044253777712584));
res += mul(Get(s1,dx,0), float4x4(0.056988596916199,0.127800136804581,0.003056415356696,0.023239588364959,0.030964188277721,-0.152778610587120,0.056063074618578,-0.104983665049076,0.143001958727837,0.134613499045372,-0.142599672079086,-0.107541702687740,0.018400438129902,0.039599388837814,-0.173647031188011,0.066089019179344));
res += mul(Get(s1,dx,dy), float4x4(-0.245196551084518,0.298947185277939,0.008163040503860,0.168666511774063,-0.038567997515202,0.143630757927895,0.055955082178116,0.041868261992931,0.095452859997749,-0.117606192827225,-0.161876991391182,0.212469980120659,0.079829640686512,0.175308883190155,0.099670916795731,0.009250623174012));
res += mul(Get(s2,-dx,-dy), float4x4(0.002718830946833,0.176892131567001,0.212974220514297,-0.031516816467047,0.117912426590919,0.105609081685543,-0.038059305399656,0.164418101310730,-0.102878436446190,0.180644139647484,-0.117784343659878,-0.028854690492153,-0.098888382315636,0.074929803609848,-0.029386624693871,0.021377077326179));
res += mul(Get(s2,-dx,0), float4x4(0.023635957390070,-0.004259095527232,0.016788559034467,-0.063632972538471,-0.306609392166138,-0.176083832979202,0.002834528917447,0.003910439088941,-0.005918059498072,-0.087329551577568,0.076276466250420,0.025055916979909,-0.028943587094545,0.078873626887798,0.080301463603973,0.036408208310604));
res += mul(Get(s2,-dx,dy), float4x4(0.027592808008194,0.119465991854668,-0.042632676661015,0.005253234412521,0.074292205274105,-0.063270874321461,0.022006599232554,0.036643743515015,-0.083287276327610,0.043912630528212,-0.193609073758125,0.084639988839626,-0.025217577815056,0.223149672150612,0.139891847968102,0.128824204206467));
res += mul(Get(s2,0,-dy), float4x4(0.106729462742805,-0.026104357093573,-0.044559795409441,0.075167782604694,-0.066433146595955,-0.201253950595856,0.038516998291016,0.143012732267380,0.048313934355974,0.051525801420212,0.003695060033351,-0.010717973113060,0.094788216054440,-0.027999436482787,-0.043153453618288,0.050914801657200));
res += mul(Get(s2,0,0), float4x4(0.070338092744350,-0.007672676816583,-0.105917930603027,-0.057704996317625,-0.042612046003342,0.020795730873942,0.104686945676804,-0.117685750126839,-0.142639875411987,0.032064914703369,0.167457625269890,0.053411748260260,0.196056231856346,-0.011637550778687,-0.067572034895420,-0.148857817053795));
res += mul(Get(s2,0,dy), float4x4(-0.058360282331705,0.099075213074684,0.069105774164200,-0.216285064816475,0.078495070338249,-0.035988695919514,-0.036756683140993,-0.262137085199356,-0.193310037255287,-0.002641904400662,-0.130899414420128,-0.136232897639275,0.136534184217453,-0.092199735343456,0.137879580259323,-0.105324178934097));
res += mul(Get(s2,dx,-dy), float4x4(-0.078774675726891,-0.076926045119762,-0.186497911810875,0.046621810644865,0.234276637434959,0.132240861654282,-0.083793751895428,-0.056881658732891,0.081779487431049,0.020852688699961,0.293046981096268,0.075196765363216,0.179726198315620,-0.148986145853996,-0.073574602603912,0.111532449722290));
res += mul(Get(s2,dx,0), float4x4(0.085370875895023,-0.076228000223637,-0.161946296691895,0.031334761530161,-0.151235416531563,0.296288669109344,-0.105070099234581,-0.073837921023369,0.123217612504959,0.087037928402424,0.138410389423370,0.109905965626240,-0.094683580100536,0.000038259531721,-0.062637776136398,0.063410513103008));
res += mul(Get(s2,dx,dy), float4x4(0.128937184810638,0.067677624523640,-0.064960777759552,-0.140096500515938,0.227985024452209,0.210043519735336,0.033444024622440,0.131417050957680,-0.067411422729492,-0.032078020274639,-0.089626044034958,0.027958752587438,0.159388497471809,-0.077570736408234,-0.145240157842636,0.155361503362656));
res += mul(Get(s3,-dx,-dy), float4x4(0.173494100570679,0.020355675369501,0.017748598009348,-0.039636343717575,0.208515927195549,-0.002154724672437,-0.314170539379120,0.156097590923309,0.120789855718613,-0.113935478031635,-0.192909479141235,0.119846500456333,0.098554864525795,-0.221906006336212,0.168914556503296,-0.083375833928585));
res += mul(Get(s3,-dx,0), float4x4(-0.008183633908629,0.190101817250252,-0.110010176897049,0.035426545888186,-0.004622804000974,-0.114805147051811,-0.077371060848236,0.171347573399544,0.026383088901639,-0.104170270264149,-0.191325232386589,-0.104693718254566,-0.149470075964928,0.058631811290979,0.041137401014566,-0.002591820666566));
res += mul(Get(s3,-dx,dy), float4x4(-0.053858887404203,-0.163077235221863,-0.212833523750305,0.031597018241882,-0.160499066114426,-0.086469866335392,-0.121004648506641,-0.041067980229855,-0.155029818415642,-0.057371545583010,0.111304692924023,0.152260944247246,0.103095844388008,0.050689876079559,0.054173085838556,-0.042735885828733));
res += mul(Get(s3,0,-dy), float4x4(-0.014521569013596,-0.089032612740993,-0.037268754094839,0.075705297291279,0.073633633553982,-0.175040662288666,-0.090298973023891,-0.109653905034065,0.308489531278610,0.074686557054520,0.074602544307709,-0.072338357567787,0.059472169727087,-0.126185864210129,-0.228645771741867,0.037109721451998));
res += mul(Get(s3,0,0), float4x4(0.022458888590336,-0.231081932783127,0.167824894189835,-0.014603121206164,-0.084681555628777,0.040598768740892,0.125957220792770,-0.061803344637156,0.160610795021057,0.051382645964622,0.171627745032310,-0.003830448491499,-0.063122048974037,-0.210817962884903,0.063011452555656,0.167473062872887));
res += mul(Get(s3,0,dy), float4x4(0.036731537431479,-0.085128650069237,-0.081562250852585,0.023515863344073,-0.004882873967290,0.107062108814716,-0.058103557676077,0.116877384483814,0.042473241686821,-0.133188813924789,-0.053947973996401,0.038785915821791,-0.144211873412132,0.306287914514542,0.096589505672455,-0.005017845425755));
res += mul(Get(s3,dx,-dy), float4x4(0.243452444672585,-0.102332100272179,-0.017304992303252,-0.091345503926277,0.058352656662464,0.102119654417038,-0.037119921296835,-0.009393285959959,0.102978765964508,-0.114440895617008,0.044463306665421,0.003268769942224,0.180748432874680,-0.040868178009987,-0.166904896497726,-0.291416227817535));
res += mul(Get(s3,dx,0), float4x4(0.042062416672707,-0.038064386695623,0.111599266529083,0.141545355319977,-0.153553992509842,0.114859968423843,0.084375053644180,0.158288270235062,-0.028087951242924,0.329383820295334,-0.092322595417500,0.185531899333000,-0.104154020547867,-0.006463775876909,0.063745401799679,0.017503730952740));
res += mul(Get(s3,dx,dy), float4x4(0.052587561309338,0.021613249555230,0.191750332713127,-0.028676856309175,-0.019525550305843,0.039104640483856,-0.000559714564588,0.021567810326815,-0.183177828788757,0.073608353734016,-0.229151710867882,-0.022371137514710,-0.015303748659790,-0.067385531961918,0.088822528719902,-0.292465269565582));
return max(float4(0,0,0,0), res);
}