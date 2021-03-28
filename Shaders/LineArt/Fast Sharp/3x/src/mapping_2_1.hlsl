sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.044554337859154,-0.085369095206261,-0.014409708790481,0.043112996965647);
res += mul(Get(s0,-dx,-dy), float4x4(-0.049238409847021,0.127767831087112,0.252278745174408,-0.111053079366684,0.027844795957208,0.178613036870956,-0.395962834358215,0.094602212309837,0.072238706052303,0.153501227498055,0.005693315528333,-0.189983889460564,0.042348548769951,-0.080524064600468,0.249612584710121,0.151874482631683));
res += mul(Get(s0,-dx,0), float4x4(0.095879293978214,-0.164463534951210,-0.601469993591309,0.289971202611923,-0.198832035064697,0.350691884756088,-0.008140387013555,-0.122248426079750,0.262737214565277,0.126706883311272,-0.212097927927971,-0.034570727497339,-0.087501011788845,-0.713815987110138,-0.137574270367622,-0.042630802839994));
res += mul(Get(s0,-dx,dy), float4x4(-0.187045633792877,-0.306103110313416,-0.242932230234146,0.102446064352989,0.140226647257805,0.320365816354752,-0.012708611786366,0.078269958496094,0.316154181957245,-0.194707512855530,-0.332606464624405,0.239112645387650,-0.062182489782572,-0.114730365574360,-0.173016890883446,0.195136711001396));
res += mul(Get(s0,0,-dy), float4x4(-0.606922686100006,0.331208586692810,-0.166054591536522,-0.448771864175797,-0.132865056395531,0.131227716803551,-0.295026630163193,0.039492126554251,0.178589105606079,0.012520813383162,0.128526240587234,0.113759927451611,-0.032513868063688,-0.087917193770409,0.514709234237671,0.360939115285873));
res += mul(Get(s0,0,0), float4x4(0.157376542687416,-0.444232046604156,0.325230598449707,-0.314502894878387,-0.182028993964195,0.470067799091339,-0.146455481648445,-0.251525789499283,-0.143800079822540,0.286427795886993,-0.006091356277466,-0.451958537101746,-0.013773905113339,0.511362850666046,0.063486956059933,0.206273972988129));
res += mul(Get(s0,0,dy), float4x4(0.458083570003510,-0.096077159047127,0.069267235696316,0.205274462699890,-0.242501616477966,0.182316541671753,0.020144902169704,-0.112730950117111,0.179822042584419,-0.515705525875092,-0.146508723497391,0.167210236191750,-0.172276169061661,0.182062491774559,0.190741375088692,-0.165372923016548));
res += mul(Get(s0,dx,-dy), float4x4(0.056506507098675,0.141321703791618,0.072963245213032,-0.023608192801476,0.008405559696257,0.109816655516624,-0.067762874066830,-0.084450617432594,-0.069224007427692,0.034777037799358,0.192665189504623,0.151118218898773,-0.120754137635231,-0.125814452767372,-0.035367451608181,-0.155223548412323));
res += mul(Get(s0,dx,0), float4x4(-0.078395843505859,0.126212149858475,-0.123808741569519,-0.041253924369812,0.242630630731583,0.252196609973907,-0.080283105373383,0.043558441102505,-0.208326026797295,-0.237807154655457,-0.112646535038948,-0.112613245844841,0.045896347612143,-0.065185397863388,0.166046291589737,0.350282132625580));
res += mul(Get(s0,dx,dy), float4x4(-0.016371473670006,-0.006384377833456,0.000985342776403,-0.107122585177422,0.010841939598322,0.134790629148483,-0.209782257676125,-0.043602555990219,0.031302310526371,-0.153112560510635,0.026104075834155,0.074807360768318,0.042702179402113,-0.089449055492878,0.119355544447899,0.042841907590628));
res += mul(Get(s1,-dx,-dy), float4x4(0.040260411798954,-0.162060290575027,0.003985632676631,-0.115526489913464,0.082148514688015,-0.301820456981659,0.098817780613899,0.553292155265808,0.022607188671827,0.090934514999390,0.187631234526634,-0.166778191924095,-0.197411090135574,0.072059735655785,-0.265015959739685,-0.133325859904289));
res += mul(Get(s1,-dx,0), float4x4(-0.057727966457605,-0.493250310420990,0.004459468182176,-0.324822783470154,-0.342230170965195,-0.474007368087769,0.149265244603157,0.197466582059860,0.143487825989723,0.274381518363953,-0.128039136528969,0.189422562718391,0.173408105969429,0.068693913519382,0.367347747087479,0.212431713938713));
res += mul(Get(s1,-dx,dy), float4x4(0.003620915580541,0.200726062059402,0.039829492568970,-0.497944623231888,-0.089664950966835,0.074858248233795,0.188634410500526,0.018516674637794,-0.121999971568584,-0.043374769389629,0.167313098907471,0.242430299520493,-0.185835897922516,-0.057125799357891,0.042477522045374,0.003488106653094));
res += mul(Get(s1,0,-dy), float4x4(0.170759066939354,-0.430004864931107,-0.165096536278725,-0.217513680458069,0.075823888182640,-0.345421791076660,0.380529940128326,0.678123474121094,0.238334476947784,-0.542124569416046,0.141084820032120,0.451291710138321,0.151754066348076,0.100348703563213,-0.322975516319275,-0.073933161795139));
res += mul(Get(s1,0,0), float4x4(0.414945095777512,-0.425346881151199,0.296882271766663,0.027875956147909,-0.137012273073196,-0.607479274272919,0.228917270898819,0.336539208889008,-0.199730396270752,-0.040369197726250,-0.217931896448135,0.242810875177383,0.205183744430542,-0.268057823181152,0.249517276883125,0.145733237266541));
res += mul(Get(s1,0,dy), float4x4(-0.045320134609938,-0.080812670290470,0.077554762363434,-0.427253544330597,0.128758728504181,0.084148369729519,0.278650939464569,0.083862401545048,0.383509904146194,-0.003944084979594,0.489727973937988,-0.233979985117912,0.742605149745941,-0.259685605764389,0.169339284300804,0.121465012431145));
res += mul(Get(s1,dx,-dy), float4x4(0.155020579695702,-0.230569288134575,-0.096668675541878,-0.059645414352417,-0.137190178036690,-0.222768545150757,-0.099743813276291,0.272787064313889,-0.091803975403309,-0.229972213506699,-0.016155445948243,0.131517186760902,0.108881995081902,0.039618216454983,0.168006092309952,0.426422864198685));
res += mul(Get(s1,dx,0), float4x4(-0.023082787171006,-0.198123008012772,-0.115230657160282,-0.409676700830460,-0.064033664762974,0.131920143961906,0.208774864673615,0.267008602619171,-0.241185963153839,-0.393236249685287,-0.084780491888523,0.408468723297119,-0.347550630569458,-0.072619728744030,0.002208311343566,-0.669681668281555));
res += mul(Get(s1,dx,dy), float4x4(-0.056486207991838,-0.191016629338264,0.086942218244076,-0.556861460208893,-0.032256864011288,0.097364090383053,0.128386124968529,0.025604389607906,0.083087921142578,-0.075214564800262,-0.050621621310711,-0.017767785117030,-0.348099082708359,-0.076676517724991,0.377401262521744,-0.089807063341141));
res += mul(Get(s2,-dx,-dy), float4x4(0.007264595478773,-0.017350982874632,-0.034956481307745,0.202709689736366,-0.140569806098938,-0.187871873378754,0.429952144622803,-0.045633580535650,0.025305012241006,-0.333170473575592,0.377829521894455,0.035505689680576,-0.015356602147222,-0.296716928482056,0.382183074951172,-0.062919795513153));
res += mul(Get(s2,-dx,0), float4x4(-0.545238018035889,-0.205296874046326,-0.476456403732300,0.200346663594246,-0.132336884737015,-0.275509685277939,0.053996052592993,0.040989708155394,-0.206328481435776,-0.019626913592219,-0.390036016702652,0.556723237037659,0.361745953559875,-0.061637129634619,-0.622456789016724,-0.061912853270769));
res += mul(Get(s2,-dx,dy), float4x4(-0.070411361753941,0.145611017942429,0.162510275840759,-0.099697731435299,-0.236084222793579,-0.058444119989872,0.245665132999420,-0.089758269488811,-0.149993553757668,-0.112103611230850,-0.208553358912468,-0.196304693818092,0.005858138669282,0.036739740520716,-0.648539006710052,-0.272580415010452));
res += mul(Get(s2,0,-dy), float4x4(0.181242033839226,-0.278197288513184,0.383855015039444,-0.251166313886642,-0.170052334666252,-0.220414131879807,0.135365188121796,0.013820023275912,0.063411600887775,-0.717168271541595,-0.285619616508484,-0.171198815107346,0.125115633010864,0.149909302592278,0.207713827490807,-0.256949633359909));
res += mul(Get(s2,0,0), float4x4(0.401143819093704,0.246318548917770,-0.571509599685669,-0.565268218517303,-0.423652350902557,-0.257329016923904,-0.093331851065159,0.375949978828430,-0.336557894945145,0.702076196670532,-0.346565663814545,-0.272822737693787,-0.006141522433609,-0.438143342733383,-0.148083999752998,0.041455667465925));
res += mul(Get(s2,0,dy), float4x4(0.058069694787264,-0.251562833786011,-0.129585295915604,0.364971011877060,-0.447041183710098,0.234933897852898,-0.305171489715576,-0.138649791479111,0.055540770292282,-0.072798751294613,-0.252496957778931,-0.150508955121040,-0.018816392868757,0.254916161298752,-0.131532981991768,0.272243797779083));
res += mul(Get(s2,dx,-dy), float4x4(-0.088341377675533,-0.074884362518787,-0.205713599920273,-0.089286029338837,-0.137025624513626,0.159855544567108,-0.340224444866180,-0.498780906200409,-0.020980400964618,0.550089657306671,0.052001178264618,-0.310372471809387,-0.241895511746407,0.001649940502830,-0.019487636163831,0.057623129338026));
res += mul(Get(s2,dx,0), float4x4(-0.140846028923988,-0.242901116609573,0.112308695912361,-0.244871407747269,-0.473280251026154,-0.980625391006470,0.101037792861462,0.709158957004547,-0.212024852633476,0.203962028026581,0.296725869178772,0.076729953289032,-0.048492893576622,0.075921691954136,0.109415315091610,-0.267639070749283));
res += mul(Get(s2,dx,dy), float4x4(-0.033816505223513,0.241114243865013,-0.028053974732757,0.308237969875336,-0.138345345854759,0.419331401586533,-0.173697099089622,0.372312068939209,-0.347284764051437,-0.152848660945892,0.212998166680336,0.179865106940269,0.131378218531609,0.140207588672638,0.139962568879128,-0.036312095820904));
res = max(float4(0, 0, 0, 0), res) + float4(0.389288157224655,0.096793949604034,0.086870469152927,0.035525161772966) * min(float4(0, 0, 0, 0), res);
return res;
}