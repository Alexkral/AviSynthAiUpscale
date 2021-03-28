sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
sampler s4 : register(s4);
sampler s5 : register(s5);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.181896582245827,-0.091933920979500,-0.123494282364845,0.105021417140961);
res += mul(Get(s0,-dx,-dy), float4x4(0.104217275977135,-0.130252033472061,0.019392024725676,-0.025100622326136,-0.339649528264999,-0.213600963354111,-0.038020994514227,0.117823086678982,0.161591053009033,0.129724428057671,-0.034584451466799,0.053256981074810,0.006874903570861,-0.192806422710419,0.055790461599827,-0.160688206553459));
res += mul(Get(s0,-dx,0), float4x4(-0.081790998578072,0.022784754633904,0.015209502540529,0.048428226262331,-0.713280737400055,-0.131121858954430,-0.493872523307800,0.154627889394760,0.198623970150948,0.091978430747986,-0.050770614296198,-0.032719787210226,0.196050584316254,-0.024872586131096,0.176808878779411,0.238795906305313));
res += mul(Get(s0,-dx,dy), float4x4(-0.142180532217026,0.149345397949219,-0.072640918195248,0.148775234818459,-0.197299733757973,0.054852779954672,-0.191107779741287,0.160408228635788,-0.021177850663662,-0.099316403269768,-0.071681462228298,-0.061484333127737,0.125274613499641,0.114337511360645,0.230947449803352,-0.018383743241429));
res += mul(Get(s0,0,-dy), float4x4(-0.009592110291123,-0.073407582938671,0.016769388690591,-0.059035990387201,0.140522226691246,-0.405094653367996,-0.038391012698412,-0.053020466119051,-0.226832285523415,0.134167879819870,-0.094214074313641,-0.062533482909203,0.096726164221764,-0.005226387642324,0.047752358019352,0.183269307017326));
res += mul(Get(s0,0,0), float4x4(-0.053866993635893,-0.142436444759369,-0.141174942255020,0.014006325975060,0.165704131126404,-0.135415375232697,0.193148434162140,-0.042939852923155,-0.389410942792892,0.060780089348555,-0.070891909301281,-0.008178294636309,0.305997282266617,0.017138056457043,-0.033100128173828,0.278165847063065));
res += mul(Get(s0,0,dy), float4x4(-0.096691921353340,0.087667241692543,-0.209229931235313,-0.100474663078785,-0.007352525368333,0.305596321821213,0.061945792287588,0.008785105310380,-0.104192182421684,-0.010707519017160,-0.096561491489410,0.079631865024567,0.033377438783646,0.108393020927906,0.030815688893199,0.014061467722058));
res += mul(Get(s0,dx,-dy), float4x4(0.026807768270373,0.073897026479244,0.023571379482746,0.050635583698750,0.027908993884921,-0.142944455146790,0.018062517046928,-0.032850183546543,-0.024497574195266,0.004622826352715,-0.001795808086172,0.055335946381092,-0.047745283693075,0.084393791854382,-0.006350649055094,-0.077802196145058));
res += mul(Get(s0,dx,0), float4x4(0.004431045148522,0.044687423855066,0.096132412552834,-0.009482185356319,-0.253727018833160,-0.408376812934875,-0.734599530696869,-0.045577775686979,0.051345124840736,0.102442562580109,0.103650577366352,0.337099075317383,-0.221517771482468,0.051010310649872,-0.163852110505104,-0.344275444746017));
res += mul(Get(s0,dx,dy), float4x4(0.015947824344039,0.059066176414490,0.091321043670177,0.090597510337830,-0.055751338601112,0.159157752990723,-0.380990982055664,-0.026418043300509,-0.057686779648066,-0.138512268662453,-0.026837144047022,0.107863880693913,-0.055555328726768,0.048949878662825,-0.067905828356743,-0.046570286154747));
res += mul(Get(s1,-dx,-dy), float4x4(0.129093050956726,-0.386914640665054,-0.131756871938705,0.015528071671724,-0.015602118335664,0.095949530601501,0.093138992786407,0.071622990071774,0.076859861612320,0.090848408639431,-0.012575251050293,-0.025497317314148,-0.008663938380778,0.044071383774281,-0.030781099572778,-0.067086264491081));
res += mul(Get(s1,-dx,0), float4x4(0.124627657234669,0.022259721532464,-0.067489840090275,-0.080730840563774,-0.056526459753513,0.078295238316059,0.297887057065964,0.229322984814644,0.152482256293297,-0.080718003213406,-0.016578206792474,-0.025677157565951,-0.235687300562859,-0.112585067749023,0.045520391315222,0.043061956763268));
res += mul(Get(s1,-dx,dy), float4x4(0.212416604161263,-0.034644175320864,0.112858749926090,-0.010063008405268,0.058904126286507,0.134458765387535,0.259099662303925,-0.025890337303281,-0.018786149099469,0.102988056838512,-0.033940460532904,-0.059330068528652,-0.118940778076649,0.091951116919518,-0.025571629405022,0.005425057839602));
res += mul(Get(s1,0,-dy), float4x4(-0.174483016133308,-0.400758057832718,0.003265319857746,-0.005585768260062,0.020714849233627,-0.094083003699780,0.006415145937353,-0.023758858442307,-0.088399969041348,0.234018132090569,0.022265389561653,0.049857761710882,0.033303208649158,-0.093056194484234,-0.001079266075976,-0.058237258344889));
res += mul(Get(s1,0,0), float4x4(-0.443412542343140,-0.149500176310539,0.020457684993744,-0.011332237161696,-0.397635370492935,-0.112811222672462,-0.505344390869141,0.026641091331840,-0.467341244220734,-0.530552029609680,-0.364202111959457,-0.011883833445609,0.127541586756706,-0.442397803068161,0.340594649314880,-0.033526554703712));
res += mul(Get(s1,0,dy), float4x4(-0.355394035577774,-0.123306170105934,-0.209671944379807,-0.161584228277206,-0.020904490724206,0.077754192054272,-0.099740371108055,-0.027841811999679,-0.075259357690811,0.279681652784348,-0.232444494962692,0.036778796464205,0.040743730962276,0.252080708742142,0.110598862171173,-0.034204483032227));
res += mul(Get(s1,dx,-dy), float4x4(-0.032623104751110,-0.623011291027069,-0.118681892752647,0.193517401814461,0.063201911747456,-0.126312136650085,0.085447385907173,0.049009684473276,0.069899812340736,0.011091265827417,-0.008767265826464,0.023337038233876,0.023314334452152,-0.136890500783920,-0.040189050137997,-0.063925296068192));
res += mul(Get(s1,dx,0), float4x4(0.065337754786015,-0.079358555376530,-0.267149776220322,0.049096968024969,0.142800822854042,0.105678744614124,0.135506182909012,-0.152971282601357,0.184860616922379,-0.105897761881351,0.162570729851723,0.115150533616543,0.134210988879204,-0.107323214411736,-0.006942159496248,-0.111381784081459));
res += mul(Get(s1,dx,dy), float4x4(0.009927378967404,0.041660238057375,0.029836419969797,0.108842991292477,0.017368633300066,-0.021645048633218,0.120906114578247,-0.086559101939201,0.025005228817463,0.068590492010117,0.096519015729427,-0.012139054946601,-0.053629085421562,0.082803741097450,-0.132667675614357,-0.108874693512917));
res += mul(Get(s2,-dx,-dy), float4x4(-0.064357548952103,0.026535227894783,-0.036624852567911,-0.040821611881256,-0.010339226573706,0.052220139652491,-0.098141394555569,-0.012698339298368,-0.073257565498352,0.102516092360020,-0.037653800100088,0.022466467693448,-0.165449112653732,-0.043586026877165,-0.037570811808109,0.052468940615654));
res += mul(Get(s2,-dx,0), float4x4(0.191316977143288,-0.064200811088085,0.144329771399498,0.004675436299294,0.273787468671799,0.115654416382313,0.057500042021275,-0.253242522478104,-0.122873932123184,-0.070526935160160,-0.035476762801409,-0.045737478882074,-0.130336269736290,0.166730999946594,-0.118228539824486,-0.151179954409599));
res += mul(Get(s2,-dx,dy), float4x4(0.120146490633488,-0.094152748584747,0.088062040507793,0.055496804416180,0.103740908205509,-0.136765316128731,0.038298264145851,-0.063997976481915,0.035482279956341,0.052825849503279,0.054087810218334,0.055165603756905,0.019148273393512,0.101287648081779,-0.194313496351242,-0.049203902482986));
res += mul(Get(s2,0,-dy), float4x4(0.008439878001809,-0.026172913610935,-0.047959376126528,0.135643005371094,-0.091826289892197,-0.379992753267288,0.156371116638184,0.226492837071419,-0.111582405865192,0.385270804166794,-0.411791801452637,0.038141328841448,0.114174582064152,-0.044064361602068,0.136729016900063,-0.127065941691399));
res += mul(Get(s2,0,0), float4x4(-0.008151817135513,0.105468779802322,-0.149720355868340,-0.044356536120176,0.011161625385284,0.410501629114151,0.002379042794928,0.348837465047836,-0.088085047900677,-0.310249209403992,-0.218051657080650,0.037206668406725,-0.013374964706600,0.045435097068548,0.447914361953735,-0.327503353357315));
res += mul(Get(s2,0,dy), float4x4(-0.143876299262047,-0.453130602836609,-0.116274736821651,-0.143343597650528,0.033962875604630,-0.106083676218987,0.076988421380520,0.016546940430999,-0.064717277884483,0.205237045884132,-0.100696742534637,-0.022467263042927,-0.023368436843157,0.092640839517117,0.162566736340523,0.063228614628315));
res += mul(Get(s2,dx,-dy), float4x4(0.049412522464991,0.001442931359634,0.029174948111176,-0.169018700718880,0.012673755176365,0.103399239480495,0.006684337276965,-0.092193782329559,0.038095980882645,0.299127399921417,0.109034270048141,-0.092683739960194,0.051773749291897,0.264175325632095,-0.016611324623227,0.119362473487854));
res += mul(Get(s2,dx,0), float4x4(0.075252912938595,0.020745860412717,0.195643082261086,-0.068651422858238,-0.077665448188782,0.016057802364230,-0.018236048519611,-0.231851980090141,0.043208260089159,-0.123114064335823,-0.030851377174258,-0.074817635118961,0.161834001541138,0.046953015029430,0.263652741909027,0.304164677858353));
res += mul(Get(s2,dx,dy), float4x4(0.060359943658113,-0.063243344426155,0.117132715880871,0.091655336320400,0.035018950700760,0.053746692836285,0.074301674962044,-0.009692439809442,-0.008753267116845,-0.055032566189766,0.012070554308593,-0.016450673341751,0.008723907172680,-0.061328109353781,0.079980522394180,0.018962189555168));
res += mul(Get(s3,-dx,-dy), float4x4(-0.149942055344582,-0.007498569320887,-0.101689100265503,0.022641384974122,-0.197115987539291,0.008885765448213,-0.086398124694824,0.126944214105606,-0.049359027296305,-0.155276551842690,-0.105717033147812,0.049617227166891,-0.078680209815502,0.095876313745975,-0.038497045636177,-0.086231224238873));
res += mul(Get(s3,-dx,0), float4x4(0.001903556054458,-0.018659839406610,-0.103735283017159,0.027958836406469,-0.364683955907822,0.048294577747583,-0.235582515597343,0.257209688425064,-0.069461353123188,-0.134765043854713,-0.029946373775601,0.084634721279144,-0.062757946550846,-0.036291386932135,0.152504608035088,0.070774585008621));
res += mul(Get(s3,-dx,dy), float4x4(0.014816640876234,-0.065701112151146,0.056409735232592,-0.107548646628857,-0.260008156299591,-0.289748251438141,-0.468386054039001,0.292247653007507,-0.052664723247290,-0.018744334578514,-0.077353611588478,0.054510656744242,0.006361879408360,0.036312319338322,0.108783632516861,-0.043482415378094));
res += mul(Get(s3,0,-dy), float4x4(-0.022200241684914,0.215220853686333,-0.148699969053268,-0.054122436791658,0.019227249547839,-0.264673858880997,0.027602426707745,0.038382600992918,-0.309993058443069,-0.380744308233261,-0.131935283541679,0.097138866782188,0.270641446113586,-0.253440946340561,0.014335921965539,-0.199316009879112));
res += mul(Get(s3,0,0), float4x4(0.107427962124348,-0.173547402024269,-0.304149150848389,-0.060500152409077,-0.299330890178680,0.053381431847811,-0.014853345230222,-0.082460984587669,-0.564136266708374,0.068810909986496,-0.194198250770569,0.262279599905014,0.517732679843903,0.060885187238455,0.003032641950995,-0.398625105619431));
res += mul(Get(s3,0,dy), float4x4(0.012096198275685,0.107476264238358,-0.311999768018723,-0.052648011595011,-0.130651071667671,0.197440445423126,-0.290121555328369,-0.080508954823017,-0.146212354302406,0.049677494913340,-0.042309954762459,0.112803459167480,0.171471625566483,-0.065529264509678,-0.113780267536640,-0.215766996145248));
res += mul(Get(s3,dx,-dy), float4x4(0.107689730823040,0.258266866207123,0.103916592895985,-0.077855080366135,-0.041487749665976,0.090773947536945,-0.153914287686348,-0.136344313621521,0.142708241939545,-0.283080786466599,0.146836191415787,-0.118561424314976,0.014090477488935,-0.070391781628132,0.009336486458778,-0.061173778027296));
res += mul(Get(s3,dx,0), float4x4(-0.082224667072296,-0.004890480078757,0.024428885430098,-0.242656528949738,0.011687338352203,-0.201986223459244,-0.050742082297802,0.177482619881630,0.218840017914772,-0.050786715000868,0.129300937056541,-0.101640559732914,-0.022075930610299,-0.294098973274231,0.058384798467159,-0.118105113506317));
res += mul(Get(s3,dx,dy), float4x4(0.001324589364231,0.013526310212910,0.078304581344128,-0.144857436418533,0.016587492078543,0.147446841001511,-0.028829203918576,-0.050738431513309,0.006730155553669,0.078800424933434,0.031720735132694,-0.023433320224285,-0.041473723948002,-0.018957687541842,0.049792692065239,-0.160706251859665));
res += mul(Get(s4,-dx,-dy), float4x4(0.056564375758171,0.072189182043076,0.045174214988947,0.036837227642536,0.141665324568748,-0.164212629199028,0.103114768862724,-0.172070950269699,0.085425697267056,0.110591277480125,0.033407893031836,0.019069250673056,-0.168412551283836,-0.139732718467712,-0.100997351109982,-0.024606619030237));
res += mul(Get(s4,-dx,0), float4x4(0.040413070470095,0.163521915674210,0.049791511148214,0.043726101517677,0.030501283705235,-0.034197296947241,0.095075786113739,-0.109127990901470,0.203913137316704,0.041218835860491,0.310860842466354,-0.063519962131977,-0.453403949737549,-0.196926876902580,-0.501207172870636,0.041734442114830));
res += mul(Get(s4,-dx,dy), float4x4(0.026401031762362,-0.117442697286606,0.000171146224602,0.048867553472519,-0.016489133238792,0.005954351741821,-0.067954741418362,-0.151687785983086,0.010163855738938,-0.054328437894583,0.129417613148689,-0.003027285914868,0.040194664150476,0.179276108741760,-0.078218214213848,0.014116206206381));
res += mul(Get(s4,0,-dy), float4x4(-0.241044878959656,0.318629175424576,-0.213087305426598,0.171142622828484,0.177281424403191,0.308474034070969,0.002909595612437,-0.084726892411709,0.092126637697220,0.302385836839676,-0.156236782670021,0.180470287799835,-0.134529650211334,-0.096941143274307,-0.169909015297890,-0.046811483800411));
res += mul(Get(s4,0,0), float4x4(-0.145979568362236,0.339694470167160,-0.097256615757942,-0.090583771467209,0.081176005303860,-0.175439491868019,0.273857265710831,0.183553278446198,0.045050535351038,0.002761795185506,-0.047166291624308,0.322420984506607,-0.129090383648872,-0.343638330698013,-0.277182698249817,-0.138050183653831));
res += mul(Get(s4,0,dy), float4x4(0.030340099707246,-0.322644293308258,-0.040502876043320,-0.014967240393162,0.034395329654217,-0.045164495706558,0.096765495836735,0.026870120316744,-0.020810816437006,0.092624679207802,0.016237843781710,0.036430876702070,-0.008229651488364,0.147603958845139,0.044160597026348,-0.010873033665121));
res += mul(Get(s4,dx,-dy), float4x4(-0.047326017171144,0.163785099983215,-0.071060433983803,0.028473267331719,0.012180179357529,-0.072799786925316,-0.006523766554892,0.049227170646191,-0.118908375501633,0.064557500183582,-0.028736758977175,-0.113577634096146,-0.037548348307610,-0.015765652060509,0.010331369936466,-0.006277003325522));
res += mul(Get(s4,dx,0), float4x4(-0.095111593604088,0.306140750646591,-0.027724767103791,0.220863491296768,-0.030189581215382,0.129267409443855,0.064377792179585,0.062993340194225,0.102921664714813,-0.241001084446907,-0.182682856917381,-0.268203556537628,0.017118575051427,-0.075705982744694,0.114017479121685,0.127751052379608));
res += mul(Get(s4,dx,dy), float4x4(-0.027822514995933,-0.172513723373413,-0.009883452206850,0.053447477519512,-0.047545641660690,-0.018315115943551,-0.001104026334360,-0.032273035496473,0.113848164677620,0.069655798375607,-0.002306426409632,0.047835275530815,-0.030374197289348,-0.019392246380448,0.032030671834946,0.034334518015385));
res += mul(Get(s5,-dx,-dy), float4x4(0.044422991573811,-0.163589343428612,0.037852730602026,-0.053664494305849,-0.136251449584961,-0.089501544833183,-0.103112369775772,0.059587229043245,0.066468015313148,-0.226618841290474,0.032375723123550,-0.010935803875327,0.079663731157780,0.251576870679855,0.113826692104340,0.075181439518929));
res += mul(Get(s5,-dx,0), float4x4(0.060440525412560,-0.000583286921028,0.007273057010025,-0.140638336539268,-0.148425281047821,-0.036518961191177,-0.091554984450340,0.292431116104126,0.027429712936282,-0.089700758457184,-0.174952924251556,-0.097511477768421,-0.203500419855118,0.080890692770481,0.267625600099564,0.261332601308823));
res += mul(Get(s5,-dx,dy), float4x4(0.247138321399689,0.038143083453178,0.270526260137558,-0.085880279541016,0.008499456569552,-0.053913753479719,-0.173075914382935,0.041113127022982,-0.027413934469223,0.109379880130291,0.000074916082667,-0.025734534487128,-0.032019127160311,-0.101844295859337,0.379968523979187,0.079747170209885));
res += mul(Get(s5,0,-dy), float4x4(0.091566860675812,-0.170779809355736,0.138504356145859,0.054253455251455,-0.023183071985841,-0.485308945178986,0.006624463479966,-0.030305076390505,0.064050182700157,0.128458395600319,0.104888044297695,-0.070296734571457,0.041306763887405,0.072107598185539,0.065712444484234,-0.026340078562498));
res += mul(Get(s5,0,0), float4x4(0.119207933545113,-0.170480459928513,0.259983569383621,0.174623429775238,-0.253956794738770,-0.549301981925964,-0.190636605024338,-0.083256147801876,0.029690984636545,-0.133073389530182,-0.019482048228383,0.117550879716873,-0.245610103011131,-0.110269561409950,-0.043500389903784,-0.079034477472305));
res += mul(Get(s5,0,dy), float4x4(0.242642611265182,0.000080644305854,0.535314321517944,0.215457335114479,-0.104730971157551,0.038914885371923,-0.181731417775154,-0.075431801378727,0.089127913117409,-0.091269664466381,-0.091107867658138,0.031525567173958,0.017854783684015,-0.010756297968328,-0.056014288216829,0.028040915727615));
res += mul(Get(s5,dx,-dy), float4x4(0.017510401085019,-0.072600647807121,0.004378716461360,0.123181879520416,-0.042178455740213,-0.078093260526657,0.011661577969790,0.054410096257925,0.007672123145312,0.097482271492481,-0.028972188010812,0.012206454761326,0.032918214797974,0.084856860339642,0.004273026715964,-0.067074097692966));
res += mul(Get(s5,dx,0), float4x4(0.065292939543724,0.008252214640379,-0.018718166276813,0.029469996690750,0.027637626975775,0.134168162941933,0.150376617908478,0.309848368167877,-0.199548840522766,-0.081906035542488,-0.148102849721909,-0.338203221559525,0.079076744616032,0.028661590069532,0.078117191791534,0.084673292934895));
res += mul(Get(s5,dx,dy), float4x4(-0.074009239673615,-0.096733585000038,-0.263707101345062,-0.127963006496429,0.024859532713890,-0.055042982101440,0.040179338306189,0.128175735473633,0.007765523158014,0.085135571658611,0.043028309941292,-0.218023329973221,0.040209688246250,0.045284397900105,0.058155428618193,0.051764175295830));
res = max(float4(0, 0, 0, 0), res) + float4(-0.074295125901699,-0.034541044384241,-0.050916608422995,-1.331042289733887) * min(float4(0, 0, 0, 0), res);
return res;
}