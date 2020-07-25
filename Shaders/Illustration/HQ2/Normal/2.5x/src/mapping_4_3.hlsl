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
res += mul(Get(s0,-dx,-dy), float4x4(0.015471217222512,0.005883961450309,0.034871798008680,0.035242229700089,0.012638732790947,-0.017392188310623,-0.037239432334900,-0.035594493150711,-0.013276050798595,0.008468378335238,-0.023975053802133,-0.006600840482861,-0.004858585074544,0.022865666076541,-0.036844279617071,0.018418252468109));
res += mul(Get(s0,-dx,0), float4x4(0.036693889647722,0.007322048768401,-0.044982422143221,0.005257065873593,0.039188019931316,0.001531631103717,-0.024464486166835,-0.023872284218669,0.057937648147345,0.025238715112209,-0.063289664685726,-0.018769903108478,-0.002154221758246,-0.020658504217863,-0.040181145071983,0.025412579998374));
res += mul(Get(s0,-dx,dy), float4x4(0.010302903130651,0.040202911943197,0.008706472814083,0.019987786188722,0.053174894303083,-0.011552752926946,0.029149310663342,-0.064541608095169,0.025087486952543,0.089310303330421,-0.045157164335251,-0.058313686400652,0.000068648434535,0.024049123749137,0.058857016265392,0.015821237117052));
res += mul(Get(s0,0,-dy), float4x4(0.014162192121148,-0.008224490098655,0.030267795547843,0.003446950810030,0.034805603325367,0.025321340188384,-0.026646642014384,-0.057916339486837,-0.011964250355959,-0.064305916428566,-0.004743087571114,0.024215705692768,-0.057962633669376,-0.008722465485334,-0.093683823943138,0.005565137602389));
res += mul(Get(s0,0,0), float4x4(0.052686959505081,0.033113189041615,0.043236497789621,0.050853807479143,0.081789836287498,0.008702116087079,-0.079511016607285,-0.041645310819149,-0.055860918015242,-0.049857772886753,0.066321812570095,0.009708573110402,-0.072400838136673,-0.061118029057980,-0.031784437596798,-0.001125996583141));
res += mul(Get(s0,0,dy), float4x4(-0.003969998564571,0.018709179013968,0.001947404933162,0.015028961934149,0.016845576465130,-0.017439858987927,-0.038416083902121,-0.028328582644463,-0.017972197383642,-0.015255102887750,-0.000404981372412,-0.007873750291765,-0.000919128651731,-0.028136061504483,0.025920849293470,-0.005197958089411));
res += mul(Get(s0,dx,-dy), float4x4(-0.045291665941477,-0.019834388047457,-0.026190858334303,0.000910159666091,0.043235432356596,-0.050011850893497,0.022770391777158,-0.070792086422443,0.012221153825521,-0.017745709046721,-0.011776648461819,-0.005510387010872,-0.021195227280259,0.031581670045853,-0.033564452081919,0.020867863669991));
res += mul(Get(s0,dx,0), float4x4(-0.004668578039855,-0.005620248150080,0.040079325437546,0.008497254922986,-0.001517859986052,0.001790291280486,-0.001987484516576,-0.083366163074970,0.009811501018703,-0.022397240623832,-0.011793433688581,-0.017772750928998,-0.024370618164539,0.013044503517449,0.002450307365507,-0.034539006650448));
res += mul(Get(s0,dx,dy), float4x4(-0.029296336695552,0.011478410102427,0.013155652210116,0.019480336457491,0.025289138779044,-0.033062770962715,-0.028578171506524,-0.049886871129274,0.003120182547718,-0.048680920153856,-0.038430418819189,-0.024565791711211,-0.042597778141499,-0.006570802070200,0.036748804152012,-0.069231659173965));
res += mul(Get(s1,-dx,-dy), float4x4(0.008919127285480,0.042849343270063,0.018040301278234,0.052080135792494,-0.011603557504714,-0.004393985494971,-0.004661992657930,0.041502289474010,-0.038492135703564,-0.003207310102880,-0.049318995326757,0.010808484628797,-0.019602600485086,0.004580014385283,0.051585204899311,0.010051712393761));
res += mul(Get(s1,-dx,0), float4x4(-0.007111287210137,-0.016676358878613,0.008719824254513,0.015553478151560,-0.021919362246990,-0.040063206106424,-0.013189743272960,0.040367048233747,0.029955789446831,-0.006698955781758,-0.054548989981413,0.040166866034269,-0.021412352100015,-0.039456870406866,0.000805905670859,0.023572357371449));
res += mul(Get(s1,-dx,dy), float4x4(0.037208974361420,-0.011500559747219,-0.022187938913703,0.033182602375746,-0.029802348464727,0.033745881170034,-0.027241338044405,0.010826605372131,0.000099621254776,-0.002569621196017,-0.021085480228066,0.030502390116453,-0.052533246576786,-0.025094715878367,0.050783298909664,-0.022057721391320));
res += mul(Get(s1,0,-dy), float4x4(-0.004955680575222,-0.001755353296176,0.021103603765368,0.016519503667951,-0.015060990117490,0.016803996637464,-0.000843645597342,-0.018034232780337,-0.028069499880075,0.010484102182090,-0.005021873861551,0.028311090543866,0.051625896245241,-0.012519596144557,-0.040599219501019,-0.017557172104716));
res += mul(Get(s1,0,0), float4x4(-0.054623350501060,-0.035620432347059,-0.020817829295993,-0.056214410811663,-0.032409317791462,0.031063355505466,0.030176147818565,0.053070217370987,-0.046362262219191,-0.002077221637592,0.018064912408590,0.029806025326252,0.054970428347588,0.044287737458944,0.087505415081978,0.018439309671521));
res += mul(Get(s1,0,dy), float4x4(-0.048951759934425,-0.008737635798752,-0.027960941195488,0.047933112829924,0.021866790950298,-0.043902538716793,-0.024632291868329,0.015406344085932,-0.031973600387573,0.000824618386105,-0.001792710274458,0.034694973379374,0.034949570894241,0.006731194909662,0.048802971839905,0.005769215524197));
res += mul(Get(s1,dx,-dy), float4x4(-0.006144751328975,0.061471961438656,0.007534895557910,0.023179952055216,0.016382310539484,0.006740839220583,-0.038123708218336,0.037839505821466,-0.049684751778841,-0.046866737306118,-0.039162132889032,0.001531827612780,-0.024760616943240,0.011676303111017,0.005355143453926,-0.003409023396671));
res += mul(Get(s1,dx,0), float4x4(-0.013488467782736,0.048037372529507,0.017741391435266,0.040342241525650,0.028344240039587,0.018898837268353,-0.019421735778451,-0.013672174885869,-0.029472401365638,-0.066242918372154,-0.044265907257795,-0.042048584669828,0.114032164216042,0.030616704374552,-0.010549888014793,0.039737805724144));
res += mul(Get(s1,dx,dy), float4x4(-0.029410859569907,0.074414506554604,0.002164422301576,0.032537788152695,0.007865168154240,-0.046280495822430,-0.009790613316000,0.057250533252954,-0.042393054813147,-0.015792490914464,0.052361313253641,0.004841276910156,0.038902964442968,0.017492529004812,0.057067755609751,0.025486657395959));
res += mul(Get(s2,-dx,-dy), float4x4(-0.017767213284969,-0.015355110168457,0.012353980913758,-0.052031349390745,-0.021347345784307,-0.057750198990107,-0.018755452707410,-0.005958953406662,-0.025130182504654,-0.043682396411896,0.044385332614183,0.006808680016547,0.071406081318855,0.017452843487263,0.071179941296577,0.046195335686207));
res += mul(Get(s2,-dx,0), float4x4(-0.056255973875523,-0.090443938970566,0.006063741631806,-0.066840104758739,-0.012941851280630,-0.003918733913451,-0.006062560249120,-0.027024909853935,0.011422980576754,-0.029301358386874,0.021902514621615,-0.023436605930328,0.052286487072706,0.035354588180780,0.067555628716946,0.058491587638855));
res += mul(Get(s2,-dx,dy), float4x4(-0.038893800228834,-0.097923301160336,0.053454052656889,-0.033274739980698,0.030373867601156,-0.027834901586175,-0.042125903069973,-0.027462152764201,-0.001482399646193,0.003029987681657,0.053006529808044,0.033287256956100,0.034719467163086,0.014086458832026,0.028326548635960,0.047799922525883));
res += mul(Get(s2,0,-dy), float4x4(-0.039568264037371,0.012327976524830,-0.007787978276610,-0.014929467812181,0.000831383804325,0.023727774620056,-0.035667311400175,0.029483811929822,-0.026845505461097,0.005164335947484,0.082274258136749,0.027053983882070,0.054434176534414,0.068751841783524,0.087999664247036,0.027523525059223));
res += mul(Get(s2,0,0), float4x4(-0.026117704808712,-0.006521089002490,-0.038051981478930,-0.049029018729925,-0.009583550505340,-0.004508785437793,-0.042842652648687,-0.039712067693472,0.023653857409954,0.068004943430424,0.117165617644787,0.014056964777410,0.083386346697807,-0.092759974300861,0.038785945624113,0.043267630040646));
res += mul(Get(s2,0,dy), float4x4(0.015483815222979,-0.085043758153915,-0.045561522245407,-0.071303352713585,-0.009915566071868,-0.050657559186220,-0.029501955956221,-0.047973688691854,0.013161363080144,0.027994550764561,0.007564444094896,0.013171297498047,0.066921852529049,0.004063339903951,0.052283242344856,0.037908874452114));
res += mul(Get(s2,dx,-dy), float4x4(0.001213967218064,0.000315413635690,-0.007519908249378,0.015027498826385,-0.051312915980816,0.053220927715302,-0.080278769135475,0.044768825173378,-0.067591249942780,-0.039469368755817,0.047178197652102,0.020860306918621,0.050995595753193,0.040652271360159,0.062032006680965,0.083953849971294));
res += mul(Get(s2,dx,0), float4x4(0.046515237540007,-0.028946960344911,-0.008655824698508,-0.040883969515562,0.062735959887505,0.039450071752071,-0.105159476399422,-0.006676668766886,-0.026463033631444,-0.033159490674734,-0.035257272422314,0.020115064457059,0.035339292138815,0.042522031813860,0.053813058882952,0.078062824904919));
res += mul(Get(s2,dx,dy), float4x4(0.013114963658154,-0.018001018092036,-0.019780369475484,-0.062054201960564,-0.000326726294588,0.027304684743285,0.020537164062262,-0.089248672127724,0.013475571759045,0.016367521136999,-0.006138172466308,0.017555458471179,0.052704188972712,-0.012470959685743,0.032994572073221,0.048021849244833));
res += mul(Get(s3,-dx,-dy), float4x4(-0.026803690940142,-0.018991783261299,-0.015497324056923,0.012535883113742,-0.000342711748090,-0.027134809643030,0.018208215013146,-0.013342575170100,-0.002946097869426,0.014534100890160,0.025886192917824,-0.006085888016969,-0.014191692695022,0.059418153017759,0.000362264981959,0.001602178206667));
res += mul(Get(s3,-dx,0), float4x4(-0.037927597761154,0.022546712309122,0.009659827686846,0.005961125716567,0.010957430116832,-0.072338327765465,-0.035184603184462,0.031581766903400,-0.007145282346755,0.072654977440834,0.030018821358681,-0.064761921763420,-0.030473524704576,0.056300014257431,-0.039112132042646,-0.047602854669094));
res += mul(Get(s3,-dx,dy), float4x4(-0.028971686959267,-0.021113928407431,-0.011876231059432,-0.023658175021410,0.002645082771778,0.069948911666870,0.026982499286532,0.019751768559217,-0.045574974268675,0.045727636665106,0.036091037094593,-0.070418126881123,0.010046315379441,-0.013340349309146,-0.070929042994976,-0.045073781162500));
res += mul(Get(s3,0,-dy), float4x4(-0.028354318812490,-0.016572382301092,-0.039053063839674,0.018045132979751,0.019546600058675,-0.035886555910110,0.036423530429602,-0.040910378098488,-0.042919527739286,-0.037255048751831,0.015697209164500,-0.040725156664848,-0.037247668951750,0.022444395348430,-0.054242599755526,-0.032420236617327));
res += mul(Get(s3,0,0), float4x4(-0.001843909150921,-0.014548094011843,-0.085351236164570,-0.003156332531944,0.018231570720673,-0.084631897509098,-0.082234889268875,-0.028219956904650,0.010599823668599,0.032771028578281,-0.000346932356479,-0.015736790373921,0.043569304049015,0.042931899428368,-0.068405203521252,-0.043208047747612));
res += mul(Get(s3,0,dy), float4x4(-0.008114252239466,0.020162364467978,0.008585831150413,0.024442259222269,-0.057854507118464,0.014060501009226,0.023801315575838,-0.000549760996364,0.023609733209014,0.035178929567337,0.016100699082017,-0.007930714637041,0.013513025827706,-0.007542695850134,-0.009396575391293,-0.037629202008247));
res += mul(Get(s3,dx,-dy), float4x4(0.046315543353558,-0.006533771287650,0.007224883418530,-0.025068132206798,0.017367579042912,0.017473436892033,0.013027180917561,-0.031695082783699,-0.019558709114790,0.000146691934788,0.051749978214502,-0.091027408838272,-0.051973961293697,0.039589710533619,0.027540728449821,-0.055899437516928));
res += mul(Get(s3,dx,0), float4x4(-0.055914402008057,0.003955274354666,-0.016175320371985,-0.005986175034195,-0.027938157320023,0.015837205573916,0.066494226455688,-0.018101155757904,0.015638412907720,0.043390087783337,0.010453120805323,-0.114326626062393,-0.062824390828609,0.044275972992182,0.019469281658530,-0.083435185253620));
res += mul(Get(s3,dx,dy), float4x4(0.059671439230442,-0.007909807376564,-0.002126785460860,-0.029081510379910,0.006506693549454,-0.025401258841157,0.057388249784708,-0.028891570866108,0.002517284592614,0.009862361475825,0.031393378973007,-0.096460685133934,0.033618606626987,0.056140348315239,-0.012386001646519,-0.005677397828549));
return max(float4(0,0,0,0), res);
}
