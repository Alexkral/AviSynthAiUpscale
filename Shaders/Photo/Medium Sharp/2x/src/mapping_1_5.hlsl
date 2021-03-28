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
float4 res = float4(-0.151664793491364,0.012326346710324,-0.047922186553478,-0.020915502682328);
res += mul(Get(s0,-dx,-dy), float4x4(0.039487961679697,-0.027773786336184,-0.024742649868131,0.015635568648577,-0.230446264147758,-0.097859717905521,-0.087003089487553,-0.029843596741557,-0.032230544835329,-0.084441818296909,-0.017562067136168,-0.138355121016502,0.091808609664440,-0.066271282732487,0.160637721419334,0.005282102618366));
res += mul(Get(s0,-dx,0), float4x4(-0.016340307891369,0.036144599318504,0.080487899482250,0.045964527875185,0.312357157468796,0.121697619557381,0.200804650783539,-0.010110009461641,-0.121786668896675,0.073588661849499,0.101730003952980,-0.006039093248546,0.035164065659046,-0.188120856881142,-0.044318214058876,-0.050850614905357));
res += mul(Get(s0,-dx,dy), float4x4(0.021918214857578,-0.038685627281666,0.010119395330548,-0.006454463582486,0.024997519329190,-0.101284354925156,0.041197605431080,-0.022628551349044,-0.077179886400700,-0.023744808509946,0.165709227323532,-0.042046319693327,0.138035997748375,-0.022182626649737,0.034357175230980,-0.009511337615550));
res += mul(Get(s0,0,-dy), float4x4(0.040887635201216,0.172260224819183,-0.107967667281628,-0.187825992703438,-0.004819844849408,-0.001715579768643,0.030052252113819,0.092592738568783,0.088548518717289,0.088822260499001,-0.007844107225537,-0.200343534350395,-0.145291998982430,-0.017871819436550,0.024326475337148,0.217609897255898));
res += mul(Get(s0,0,0), float4x4(-0.070261031389236,0.148079633712769,-0.099111370742321,0.085100077092648,-0.142177000641823,0.202809870243073,-0.206430345773697,0.163724005222321,-0.119327850639820,-0.022914510220289,-0.187150612473488,-0.018673658370972,0.329471707344055,-0.129296109080315,0.170662000775337,-0.119515813887119));
res += mul(Get(s0,0,dy), float4x4(0.010946689173579,-0.011464786715806,0.188252359628677,-0.126784160733223,-0.057548955082893,0.143778651952744,0.053271528333426,-0.052207138389349,-0.076300241053104,0.014688380993903,0.035486698150635,-0.148277774453163,0.157922327518463,-0.064880825579166,0.068898834288120,-0.023128664121032));
res += mul(Get(s0,dx,-dy), float4x4(-0.037695776671171,-0.164941385388374,0.019165614619851,-0.086263053119183,-0.080629870295525,0.002144521800801,0.161728024482727,-0.012617057189345,0.103424876928329,0.177449181675911,-0.031645432114601,-0.044288091361523,0.130800172686577,-0.079752840101719,-0.038335327059031,0.053093805909157));
res += mul(Get(s0,dx,0), float4x4(-0.017960770055652,-0.014919834211469,0.147702321410179,0.171997368335724,-0.077118717133999,-0.135870024561882,-0.023655770346522,-0.027628712356091,-0.078632839024067,0.194155484437943,-0.120934620499611,0.055847581475973,0.078395821154118,0.119034491479397,0.088958881795406,-0.020817916840315));
res += mul(Get(s0,dx,dy), float4x4(0.010889300145209,0.132856130599976,0.028704034164548,0.020538998767734,-0.031042722985148,-0.078380085527897,-0.052823666483164,0.004750170744956,-0.049639426171780,0.040227025747299,0.015965659171343,0.058875117450953,0.068912461400032,0.103661574423313,-0.133582800626755,-0.000817529158667));
res += mul(Get(s1,-dx,-dy), float4x4(0.042256522923708,0.080979205667973,-0.041411649435759,0.054134495556355,0.533613204956055,0.060642931610346,0.287668287754059,-0.089303679764271,0.025786044076085,0.032746143639088,0.182237878441811,-0.060936223715544,0.029499147087336,-0.000758542446420,0.022882401943207,0.055771864950657));
res += mul(Get(s1,-dx,0), float4x4(0.184850096702576,0.039038065820932,-0.053692266345024,0.022362077608705,0.170928522944450,-0.183933675289154,0.007134363986552,0.044096995145082,0.230877354741096,0.192242816090584,0.045325234532356,-0.054120626300573,0.108630731701851,0.003559001488611,0.049320776015520,-0.008869135752320));
res += mul(Get(s1,-dx,dy), float4x4(0.109647922217846,0.062028359621763,0.161812990903854,-0.003919684328139,-0.055114042013884,0.048981193453074,0.000473051535664,0.018911452963948,-0.247922196984291,0.056350730359554,-0.221010059118271,0.007155811879784,0.012584679760039,0.007629716768861,0.050306953489780,-0.050273604691029));
res += mul(Get(s1,0,-dy), float4x4(-0.046920623630285,0.067293144762516,-0.191542774438858,-0.198770686984062,-0.167139172554016,0.210155025124550,-0.084765225648880,0.095178432762623,0.045256912708282,-0.059819046407938,-0.148582041263580,-0.136933684349060,0.008846833370626,-0.012176306918263,-0.067226499319077,-0.044377766549587));
res += mul(Get(s1,0,0), float4x4(-0.372460573911667,-0.330481052398682,-0.141359314322472,0.208165690302849,0.086347028613091,0.075556978583336,0.143042728304863,-0.004553325939924,0.001825310522690,-0.037354595959187,0.100843071937561,0.288291156291962,0.041506722569466,-0.061895646154881,-0.018029630184174,-0.038619179278612));
res += mul(Get(s1,0,dy), float4x4(0.110218875110149,-0.008685814216733,0.091195255517960,0.026807567104697,0.022110456600785,0.011539599858224,0.032878324389458,0.019279323518276,0.083829514682293,-0.157532930374146,0.287798494100571,-0.010259184055030,-0.117625162005424,-0.073787249624729,-0.096472121775150,0.145682469010353));
res += mul(Get(s1,dx,-dy), float4x4(-0.074872009456158,-0.002187358913943,0.337238550186157,0.033679328858852,-0.094272598624229,-0.003536756848916,-0.060974523425102,0.048376765102148,-0.061711974442005,-0.016720106825233,-0.138225913047791,-0.224153921008110,0.048661548644304,0.134937852621078,0.146390706300735,0.019122427329421));
res += mul(Get(s1,dx,0), float4x4(0.099397435784340,-0.306327819824219,-0.187242999672890,-0.049568820744753,-0.080263279378414,0.014202762395144,-0.068454012274742,-0.023834800347686,0.023547710850835,-0.182515472173691,-0.254535853862762,0.320808708667755,0.001581338583492,0.033421721309423,-0.052388552576303,-0.302979320287704));
res += mul(Get(s1,dx,dy), float4x4(0.024408241733909,-0.044927768409252,-0.330850720405579,-0.003595082554966,-0.080858491361141,-0.047922246158123,0.038892325013876,0.037388473749161,-0.109648950397968,0.045130796730518,0.155800461769104,-0.068087570369244,-0.012977203354239,-0.013958697207272,-0.043024413287640,0.196682617068291));
res += mul(Get(s2,-dx,-dy), float4x4(-0.178944021463394,0.135010600090027,-0.068074904382229,0.028078431263566,-0.046120494604111,-0.080418646335602,-0.075754515826702,-0.017516423016787,0.083669088780880,0.171612277626991,-0.121643967926502,-0.024625645950437,-0.059715755283833,0.005816770717502,-0.219930991530418,-0.087885908782482));
res += mul(Get(s2,-dx,0), float4x4(-0.231224089860916,-0.058440577238798,-0.135464504361153,0.050784438848495,-0.006725630257279,-0.068767234683037,0.074980258941650,-0.055855557322502,0.059477314352989,0.097445316612720,0.030253607779741,0.060575149953365,0.166639760136604,0.024370936676860,0.218789324164391,0.081569068133831));
res += mul(Get(s2,-dx,dy), float4x4(-0.070617131888866,0.100905545055866,0.109905637800694,-0.023051833733916,0.052360191941261,0.021046180278063,-0.105728946626186,0.084007427096367,0.081596963107586,-0.030254172161222,0.022183295339346,-0.098017893731594,-0.139615952968597,-0.085860490798950,0.113642297685146,-0.045282591134310));
res += mul(Get(s2,0,-dy), float4x4(0.195217341184616,0.010087340138853,-0.019594611600041,0.107391119003296,-0.097405649721622,0.132434636354446,0.054238144308329,-0.038769625127316,0.058069586753845,-0.040519829839468,-0.033136356621981,-0.073237217962742,-0.007181455846876,-0.027083918452263,-0.039662048220634,-0.321134507656097));
res += mul(Get(s2,0,0), float4x4(0.324966102838516,-0.109314955770969,-0.081784017384052,-0.127684131264687,-0.010258902795613,0.116171583533287,0.081903234124184,-0.041082527488470,-0.158944308757782,-0.114020690321922,-0.007220671977848,0.216062888503075,0.074479185044765,0.105808928608894,0.010255300439894,0.523058056831360));
res += mul(Get(s2,0,dy), float4x4(-0.323890686035156,-0.187346473336220,-0.149689584970474,-0.004294672980905,0.152204290032387,0.117495805025101,0.081063084304333,0.015593444928527,0.086533792316914,-0.065327830612659,0.124015495181084,-0.101383224129677,-0.070490978658199,0.002911834511906,0.288269251585007,-0.104873858392239));
res += mul(Get(s2,dx,-dy), float4x4(0.126204147934914,-0.046880405396223,0.044619064778090,-0.015197539702058,-0.106264494359493,-0.033294439315796,-0.127040475606918,-0.012918822467327,-0.125495746731758,-0.028271300718188,0.223775297403336,0.032939199358225,0.035761974751949,0.011782792396843,-0.047593910247087,-0.334522992372513));
res += mul(Get(s2,dx,0), float4x4(-0.043621260672808,0.139534696936607,-0.200690075755119,0.078003406524658,-0.063846841454506,0.023187680169940,-0.090988963842392,-0.001530654262751,-0.106525495648384,-0.122056946158409,-0.013455762527883,-0.055274210870266,0.065753825008869,-0.068073384463787,-0.305476725101471,0.235488146543503));
res += mul(Get(s2,dx,dy), float4x4(0.011970299296081,0.054425500333309,0.117149524390697,-0.028513276949525,-0.018207002431154,0.060025352984667,0.031231800094247,0.039050862193108,0.024749202653766,0.064251773059368,-0.241573765873909,0.075346499681473,0.015321895480156,0.070376746356487,0.007966509088874,0.024367725476623));
res += mul(Get(s3,-dx,-dy), float4x4(-0.050599150359631,0.025091961026192,-0.088164217770100,-0.154685512185097,0.149149954319000,-0.211961627006531,0.090705230832100,0.165880754590034,0.027149837464094,0.042890310287476,-0.114906124770641,-0.056562006473541,0.042240761220455,0.001454393728636,0.016407594084740,-0.049657586961985));
res += mul(Get(s3,-dx,0), float4x4(0.022894380614161,0.010283535346389,-0.052720218896866,0.027730531990528,0.349777966737747,0.043213348835707,0.122101895511150,-0.042071107774973,0.002120699500665,-0.238473996520042,0.006439282558858,0.055341213941574,0.061869338154793,0.100420057773590,0.083353191614151,0.006905406713486));
res += mul(Get(s3,-dx,dy), float4x4(0.251942902803421,0.071271799504757,-0.038333948701620,0.072500042617321,0.075154669582844,-0.014642949216068,-0.313943237066269,-0.048713658004999,-0.055265866219997,0.074630267918110,0.093528375029564,-0.082017615437508,0.113669656217098,-0.075016103684902,-0.109920315444469,0.020647652447224));
res += mul(Get(s3,0,-dy), float4x4(0.037219982594252,-0.064366184175014,-0.045209668576717,-0.103666298091412,-0.041225824505091,-0.125916779041290,0.015839854255319,0.034279260784388,0.027966842055321,-0.046721585094929,0.046090748161077,0.213717877864838,0.015627367421985,-0.020331565290689,0.118495032191277,-0.152687236666679));
res += mul(Get(s3,0,0), float4x4(0.107295960187912,0.031809609383345,-0.066909231245518,-0.304882675409317,-0.108635596930981,0.253343105316162,0.332486212253571,0.150760740041733,-0.035824563354254,0.012242704629898,0.060426123440266,-0.100286267697811,-0.048431754112244,-0.087886139750481,-0.054139360785484,0.161585733294487));
res += mul(Get(s3,0,dy), float4x4(0.098048560321331,0.066842943429947,-0.141768872737885,0.164064809679985,0.024874685332179,0.054181106388569,-0.042731925845146,-0.068683072924614,0.009755689650774,0.070275798439980,-0.106223523616791,-0.031785871833563,0.053075909614563,0.151640996336937,0.189488381147385,0.036974437534809));
res += mul(Get(s3,dx,-dy), float4x4(0.063631087541580,-0.057167150080204,-0.074962005019188,-0.086989589035511,0.147236749529839,-0.068973504006863,-0.171226412057877,0.066577471792698,0.063078723847866,-0.195761397480965,0.013494949787855,0.337094217538834,-0.109256967902184,-0.036277651786804,0.174710765480995,0.048252362757921));
res += mul(Get(s3,dx,0), float4x4(0.199438616633415,-0.010019797831774,0.118624918162823,-0.221394717693329,0.127311706542969,0.111619688570499,0.103226825594902,-0.070746548473835,-0.079342968761921,0.303183078765869,0.018340421840549,-0.089952439069748,0.060340382158756,0.092614620923996,-0.085020616650581,-0.194406539201736));
res += mul(Get(s3,dx,dy), float4x4(0.040248580276966,-0.160004392266273,-0.087334267795086,0.174984678626060,0.078165240585804,-0.016870159655809,0.056476801633835,-0.066534355282784,-0.004201666451991,0.115888379514217,-0.096812345087528,-0.019947411492467,-0.130875974893570,-0.129935726523399,-0.319234073162079,0.109280288219452));
res += mul(Get(s4,-dx,-dy), float4x4(0.001605496974662,-0.122462630271912,-0.020988795906305,0.169673025608063,-0.119011625647545,0.018741525709629,-0.088427521288395,-0.234243154525757,0.020994866266847,-0.004822400398552,0.060586109757423,0.054939016699791,0.128919258713722,-0.035516042262316,-0.112814925611019,0.113564483821392));
res += mul(Get(s4,-dx,0), float4x4(0.323772251605988,0.035022832453251,0.103105999529362,-0.056181203573942,-0.095178991556168,-0.040895510464907,-0.181684061884880,0.003134991042316,0.035266026854515,0.038342263549566,-0.159451231360435,0.003705871989951,-0.356569230556488,0.112408265471458,-0.030713822692633,0.069135338068008));
res += mul(Get(s4,-dx,dy), float4x4(-0.104851573705673,0.002365511842072,0.077319607138634,0.035085562616587,-0.089321874082088,0.065889023244381,0.036375679075718,0.086619451642036,-0.033478509634733,-0.101848058402538,-0.028261946514249,-0.027255794033408,-0.145847186446190,-0.079403638839722,0.133974894881248,-0.220252454280853));
res += mul(Get(s4,0,-dy), float4x4(0.161872342228889,-0.054394010454416,0.063202746212482,-0.293720781803131,-0.072789818048477,0.104634553194046,0.137091591954231,-0.332299649715424,-0.046274010092020,0.069751925766468,0.013284179382026,0.075954005122185,-0.169030651450157,0.073547929525375,0.254571288824081,0.157349750399590));
res += mul(Get(s4,0,0), float4x4(-0.202042907476425,0.153061911463737,0.034956041723490,0.106603883206844,0.057802561670542,0.019814947620034,-0.310458838939667,-0.076670646667480,0.018367789685726,0.063937827944756,0.295601189136505,0.135011941194534,0.037192348390818,-0.091931998729706,-0.070608019828796,0.006188159342855));
res += mul(Get(s4,0,dy), float4x4(0.120410941541195,-0.050869718194008,-0.052919775247574,-0.022017052397132,0.070500172674656,-0.061510734260082,-0.024515675380826,-0.041564553976059,0.067167855799198,0.064167737960815,0.016379950568080,-0.043788176029921,0.043752241879702,-0.118060059845448,0.030534543097019,-0.061082001775503));
res += mul(Get(s4,dx,-dy), float4x4(-0.096360243856907,0.117783077061176,-0.061946976929903,-0.104733496904373,-0.045147802680731,0.143453791737556,0.149388059973717,-0.104709699749947,-0.029905861243606,0.091333843767643,-0.012736137956381,-0.152454167604446,0.039908554404974,0.001655227853917,-0.006831735372543,0.085109181702137));
res += mul(Get(s4,dx,0), float4x4(-0.015695577487350,-0.139715865254402,0.053118888288736,0.121058873832226,0.017442068085074,0.055316884070635,0.089363113045692,0.041311867535114,0.026294762268662,-0.085990697145462,-0.187777042388916,0.052088703960180,-0.053597703576088,0.060846723616123,-0.086109854280949,-0.000751815270633));
res += mul(Get(s4,dx,dy), float4x4(0.006943495478481,-0.032227803021669,-0.206842631101608,0.067356079816818,-0.063662588596344,-0.019215332344174,-0.028296535834670,0.019028272479773,0.008737720549107,-0.101123929023743,-0.024745572358370,-0.080800130963326,0.055129341781139,0.022191191092134,0.014711868949234,-0.036972343921661));
res += mul(Get(s5,-dx,-dy), float4x4(-0.122941263020039,-0.213507860898972,0.029530612751842,0.093959912657738,-0.063917309045792,-0.122053056955338,-0.126274257898331,-0.018787201493979,-0.357450723648071,-0.046919934451580,0.023605939000845,0.132219985127449,0.117378637194633,0.028322244063020,-0.040545981377363,-0.099788375198841));
res += mul(Get(s5,-dx,0), float4x4(-0.237105444073677,-0.116175115108490,0.016287790611386,-0.103310666978359,-0.148807302117348,-0.239244624972343,0.023626051843166,0.003915421199054,-0.834414184093475,-0.131741896271706,-0.097679287195206,0.056754298508167,-0.365372061729431,-0.178992539644241,-0.259280979633331,0.057054352015257));
res += mul(Get(s5,-dx,dy), float4x4(-0.014802721329033,-0.049118865281343,-0.012558185495436,-0.029082259163260,-0.132721796631813,-0.139227524399757,0.183187082409859,0.086697116494179,-0.373759150505066,-0.158266261219978,-0.069579526782036,-0.135758221149445,0.104925371706486,-0.161813080310822,0.025727879256010,0.022569855675101));
res += mul(Get(s5,0,-dy), float4x4(-0.150153100490570,0.000624760112260,-0.029905615374446,0.071752399206161,-0.011482080444694,-0.025489926338196,0.048170600086451,0.030188379809260,-0.005286670755595,0.013606907799840,0.003237903118134,0.060307621955872,0.102685354650021,0.069778345525265,0.265109032392502,0.213470622897148));
res += mul(Get(s5,0,0), float4x4(-0.146650820970535,-0.006426387932152,-0.114589482545853,-0.113726437091827,-0.100526988506317,0.194327548146248,-0.018734546378255,-0.090887166559696,-0.020780671387911,-0.216771543025970,-0.088801629841328,0.036566101014614,-0.138999938964844,-0.036734521389008,0.029997225850821,-0.153011128306389));
res += mul(Get(s5,0,dy), float4x4(-0.018391400575638,0.042402669787407,0.019756067544222,-0.034259259700775,-0.049484308809042,0.108695507049561,-0.216182395815849,-0.067825160920620,-0.207088440656662,0.014440945349634,-0.027386307716370,-0.060044772922993,-0.074093990027905,0.012336038984358,-0.261791586875916,0.002066895365715));
res += mul(Get(s5,dx,-dy), float4x4(-0.100214712321758,0.125008821487427,0.077545888721943,0.136537954211235,0.033159360289574,0.045803766697645,0.092742338776588,-0.015378437936306,-0.042284376919270,-0.026660867035389,-0.038533862680197,0.067731276154518,0.008182982914150,-0.058111321181059,0.086792163550854,0.258255511522293));
res += mul(Get(s5,dx,0), float4x4(-0.103823915123940,0.190954312682152,-0.083938330411911,-0.198621794581413,0.017553431913257,0.191601380705833,0.025896804407239,-0.016240695491433,-0.122730039060116,-0.018919778987765,0.232190832495689,-0.058382630348206,0.096140764653683,0.099146336317062,0.324119985103607,-0.096990555524826));
res += mul(Get(s5,dx,dy), float4x4(0.141422450542450,-0.025989415124059,-0.119160674512386,-0.016214104369283,0.068353250622749,-0.086978062987328,-0.028752969577909,-0.019171049818397,-0.025649098679423,0.035313133150339,-0.207332864403725,0.046140164136887,0.114032842218876,0.112528845667839,-0.172380402684212,-0.188169568777084));
res = max(float4(0, 0, 0, 0), res) + float4(-0.035006351768970,-0.092374399304390,-0.623446464538574,-0.372728824615479) * min(float4(0, 0, 0, 0), res);
return res;
}