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
float4 res = float4(-0.227282106876373,-0.172232687473297,-0.071502707898617,0.047549221664667);
res += mul(Get(s0,-dx,-dy), float4x4(0.039394985884428,0.027782279998064,0.061464767903090,0.055872868746519,0.005714811384678,-0.089899547398090,0.041722305119038,0.055531054735184,0.020885512232780,0.049561634659767,-0.083590365946293,-0.115569718182087,0.020011730492115,-0.027794601395726,-0.108148045837879,0.011807700619102));
res += mul(Get(s0,-dx,0), float4x4(0.067492142319679,0.096335470676422,-0.016207404434681,0.064482502639294,0.040488373488188,-0.073646947741508,-0.118564836680889,-0.052421707659960,-0.023617651313543,0.040413569658995,0.046007905155420,-0.103927798569202,-0.119478292763233,0.000439415161964,0.042628508061171,0.017059059813619));
res += mul(Get(s0,-dx,dy), float4x4(0.004749595187604,-0.002819654066116,0.092997536063194,-0.075648792088032,0.027768790721893,0.000316973251756,0.071234762668610,0.002922902582213,-0.039918314665556,0.146122246980667,0.008310938253999,0.026819622144103,-0.084472171962261,0.138355210423470,0.053690802305937,0.007359398994595));
res += mul(Get(s0,0,-dy), float4x4(-0.045811731368303,-0.045723162591457,-0.097116723656654,0.006596848834306,-0.132404327392578,0.119139842689037,-0.012183260172606,0.208397656679153,0.031439028680325,-0.072071477770805,-0.030579909682274,0.077268205583096,-0.124002650380135,-0.012986863031983,0.151037767529488,0.003289864631370));
res += mul(Get(s0,0,0), float4x4(0.010419272817671,0.008674454875290,-0.061005629599094,0.121710471808910,0.083099663257599,0.103113621473312,0.045292541384697,-0.511877715587616,-0.009684410877526,-0.041060123592615,-0.059943310916424,-0.171142026782036,-0.111286751925945,-0.102658696472645,0.131515026092529,-0.177251249551773));
res += mul(Get(s0,0,dy), float4x4(0.053222011774778,0.012301973998547,-0.088039420545101,-0.014014178887010,0.055964369326830,-0.139533609151840,0.048818327486515,0.207202196121216,0.024734899401665,0.086659580469131,-0.149909660220146,0.046320039778948,-0.078148871660233,0.005568672902882,0.003168083960190,0.139984428882599));
res += mul(Get(s0,dx,-dy), float4x4(-0.014669289812446,0.121508255600929,-0.017610924318433,-0.055570844560862,-0.025574760511518,-0.077005378901958,-0.218854472041130,0.103988781571388,0.007011331152171,-0.029777783900499,-0.014320650137961,0.021378373727202,-0.028693431988358,-0.116724982857704,0.085645690560341,-0.186687588691711));
res += mul(Get(s0,dx,0), float4x4(-0.001908097765408,0.300976902246475,-0.074372477829456,-0.052921198308468,0.035676293075085,-0.062758587300777,0.131319478154182,-0.058200225234032,-0.015954427421093,-0.017502779141068,-0.032955005764961,-0.043600484728813,0.076410070061684,0.009608912281692,-0.039658114314079,0.031255651265383));
res += mul(Get(s0,dx,dy), float4x4(-0.038429185748100,-0.105707041919231,0.090728200972080,0.072591878473759,0.001633378211409,-0.011377085000277,-0.065046317875385,-0.002407469088212,-0.000222092014155,0.025174919515848,-0.058351967483759,-0.094130568206310,-0.149488210678101,0.065860152244568,-0.045618928968906,0.025802148506045));
res += mul(Get(s1,-dx,-dy), float4x4(0.059739530086517,-0.162906214594841,-0.006054612807930,-0.026517529040575,-0.001468531438150,0.135566920042038,0.023180250078440,-0.156360954046249,0.035669568926096,0.082669615745544,-0.016426131129265,-0.025874892249703,-0.002544099930674,-0.010371165350080,-0.026149915531278,0.051258765161037));
res += mul(Get(s1,-dx,0), float4x4(0.003303027478978,-0.060307316482067,0.024715630337596,0.065625794231892,-0.004575842525810,-0.007678386755288,0.015567352063954,0.128306567668915,-0.013665513135493,-0.046530969440937,0.134591430425644,-0.028524750843644,0.059337008744478,0.112517163157463,0.073626838624477,0.078309498727322));
res += mul(Get(s1,-dx,dy), float4x4(0.016853429377079,-0.184796541929245,-0.067895174026489,0.021497352048755,0.056336689740419,0.010279893875122,-0.003005714854226,-0.053296547383070,0.000153172455612,0.009162606671453,-0.086367227137089,-0.076336644589901,0.049234237521887,-0.120702378451824,0.020036691799760,-0.031937234103680));
res += mul(Get(s1,0,-dy), float4x4(0.050748426467180,-0.207454547286034,0.110375218093395,-0.138208135962486,0.194803789258003,-0.090768411755562,0.114321880042553,-0.285012692213058,-0.069747991859913,-0.000366285414202,-0.056258965283632,-0.033304989337921,0.191995263099670,0.041752330958843,0.019586188718677,-0.054518062621355));
res += mul(Get(s1,0,0), float4x4(0.000367387459846,0.119009897112846,-0.005545807071030,0.169271141290665,0.058835379779339,-0.169336140155792,-0.000055830176279,0.168589428067207,-0.102222651243210,-0.001267634681426,0.051395848393440,0.108294956386089,-0.128199845552444,-0.217866063117981,-0.059058342128992,0.204221650958061));
res += mul(Get(s1,0,dy), float4x4(-0.008882833644748,0.523548603057861,0.005320372525603,-0.117192246019840,-0.014305687509477,0.089920356869698,0.044571653008461,0.074778385460377,0.135323822498322,-0.000254838960245,-0.099001742899418,-0.067828431725502,-0.051954533904791,-0.064800880849361,0.105063855648041,-0.126994013786316));
res += mul(Get(s1,dx,-dy), float4x4(0.038148738443851,-0.257605373859406,0.043523166328669,-0.077860772609711,-0.395320713520050,-0.089800439774990,-0.135193303227425,-0.098597645759583,-0.025121888145804,0.010665177367628,-0.082554049789906,-0.073359057307243,-0.011091837659478,-0.031166093423963,-0.154540359973907,0.111296728253365));
res += mul(Get(s1,dx,0), float4x4(-0.011600135825574,-0.066294677555561,-0.001140939653851,0.088670052587986,-0.027036929503083,-0.097105205059052,-0.069289922714233,-0.002307411748916,-0.044168520718813,0.069880388677120,-0.144379869103432,0.057859010994434,-0.116197727620602,0.046713102608919,-0.122994698584080,0.028116775676608));
res += mul(Get(s1,dx,dy), float4x4(-0.024357426911592,0.054421138018370,0.148787051439285,-0.058051969856024,-0.020995538681746,0.100270286202431,-0.000559919106308,-0.023818602785468,-0.022276530042291,-0.029433373361826,0.013374778442085,-0.058415427803993,0.017934208735824,-0.133477479219437,0.136452242732048,-0.037667583674192));
res += mul(Get(s2,-dx,-dy), float4x4(-0.016137327998877,0.085033334791660,0.040397591888905,-0.042935527861118,-0.344779044389725,-0.044243793934584,0.080288171768188,-0.068412005901337,-0.050001695752144,0.066568747162819,0.033362843096256,-0.008968311361969,-0.033503606915474,0.003217279445380,-0.024788916110992,0.008956191129982));
res += mul(Get(s2,-dx,0), float4x4(0.046473637223244,0.072723902761936,0.071596667170525,-0.099710814654827,-0.145933717489243,0.088110111653805,-0.019396128132939,0.014781685546041,0.093546167016029,0.133688569068909,0.036511611193419,-0.068547509610653,-0.105304010212421,-0.005957598332316,0.122327789664268,-0.055746231228113));
res += mul(Get(s2,-dx,dy), float4x4(0.023707538843155,-0.023006692528725,0.060222283005714,0.039273314177990,-0.013419268652797,-0.110628671944141,0.040520377457142,-0.002075181109831,0.103536918759346,-0.054759293794632,0.104088291525841,0.030333980917931,0.033730354160070,-0.057756885886192,-0.073285289108753,0.056982941925526));
res += mul(Get(s2,0,-dy), float4x4(0.024788478389382,-0.008665589615703,0.086905725300312,-0.107470273971558,0.294843226671219,0.105160355567932,0.126852557063103,-0.255749106407166,-0.045385546982288,-0.051786441355944,0.014570846222341,-0.059945072978735,-0.011527892202139,-0.012595009990036,-0.038184985518456,-0.065305270254612));
res += mul(Get(s2,0,0), float4x4(0.071934856474400,0.111881583929062,-0.029081212356687,0.004276576451957,0.116484023630619,-0.072031773626804,-0.203360140323639,0.315510332584381,-0.223772615194321,0.020174711942673,0.019084703177214,0.175228253006935,0.004633526317775,-0.061371918767691,0.014008839614689,0.063149124383926));
res += mul(Get(s2,0,dy), float4x4(0.006971579045057,-0.066540613770485,0.039427217096090,-0.004304375965148,-0.025272667407990,-0.024378430098295,-0.085053935647011,0.062060542404652,0.004172263666987,-0.001793256727979,0.186886191368103,0.000038627815229,-0.146550565958023,-0.003347856458277,-0.078938417136669,-0.172436118125916));
res += mul(Get(s2,dx,-dy), float4x4(-0.065677359700203,0.014152458868921,0.171183198690414,-0.101559579372406,0.136947557330132,0.139440998435020,0.100053124129772,-0.046943906694651,-0.246806070208549,-0.012306452728808,0.178686261177063,0.043290380388498,0.029967840760946,-0.000098243144748,0.006858647335321,-0.017919542267919));
res += mul(Get(s2,dx,0), float4x4(0.057372950017452,0.030628636479378,0.008648553863168,0.024145079776645,0.040933102369308,-0.049620136618614,-0.030889770016074,0.049462340772152,-0.027263799682260,-0.042790554463863,-0.103443183004856,0.149713695049286,-0.018580175936222,0.048402961343527,-0.001911611296237,0.019470470026135));
res += mul(Get(s2,dx,dy), float4x4(0.120887443423271,-0.039695974439383,-0.158078610897064,-0.064184918999672,-0.038326106965542,0.028021935373545,0.021027449518442,-0.013806673698127,-0.000549604417756,0.043842218816280,0.046941660344601,0.063214272260666,-0.039161592721939,-0.002559603191912,0.047593101859093,-0.174047067761421));
res += mul(Get(s3,-dx,-dy), float4x4(0.104255519807339,0.003913098946214,-0.078399129211903,0.064252279698849,-0.242327436804771,-0.010574981570244,-0.165805101394653,0.049841184169054,-0.024520013481379,-0.042240776121616,0.104077383875847,-0.007450042292476,0.020296171307564,0.081551149487495,-0.099131800234318,0.016505926847458));
res += mul(Get(s3,-dx,0), float4x4(0.125283092260361,0.083643093705177,-0.042844068259001,0.047493707388639,0.049759030342102,-0.069876477122307,-0.006298578344285,-0.043387338519096,-0.055913787335157,0.001052365521900,-0.039031174033880,0.049942642450333,-0.031149290502071,-0.080466590821743,0.274765282869339,-0.078315906226635));
res += mul(Get(s3,-dx,dy), float4x4(0.009266534820199,0.025945087894797,-0.118909567594528,-0.068408519029617,-0.057918597012758,-0.033199459314346,-0.019045464694500,-0.083370253443718,0.032613802701235,-0.003627079073340,0.058695659041405,-0.079467616975307,0.011596663855016,-0.014837076887488,0.081324584782124,0.101086445152760));
res += mul(Get(s3,0,-dy), float4x4(-0.034127589315176,-0.029271356761456,0.005734761711210,0.212419509887695,-0.153434887528419,0.046593979001045,-0.120531223714352,0.074346140027046,0.223227173089981,0.126454755663872,-0.105061702430248,0.056919373571873,-0.024594919756055,0.025429381057620,0.002074631163850,0.073992848396301));
res += mul(Get(s3,0,0), float4x4(0.004262385889888,0.000083869599621,-0.072351537644863,-0.193583026528358,-0.031783189624548,-0.098002463579178,-0.011682474054396,0.221929445862770,-0.244416117668152,-0.040704842656851,0.097635805606842,0.165298730134964,0.040560249239206,0.024401459842920,0.262075573205948,-0.039418160915375));
res += mul(Get(s3,0,dy), float4x4(0.041001640260220,0.086746789515018,-0.113024704158306,0.006532660685480,0.027401428669691,-0.072127558290958,-0.081509701907635,-0.132030338048935,0.051418632268906,-0.093026757240295,-0.034751448780298,-0.170957133173943,0.015572681091726,-0.015244601294398,-0.123281538486481,-0.015116808004677));
res += mul(Get(s3,dx,-dy), float4x4(-0.001982685877010,0.007156770210713,-0.080611988902092,-0.034473467618227,-0.057399369776249,0.066348850727081,-0.308674067258835,-0.003227945417166,-0.245540782809258,-0.105992995202541,-0.106936484575272,0.051325686275959,-0.034113489091396,-0.005740895867348,0.086317561566830,0.004272324498743));
res += mul(Get(s3,dx,0), float4x4(0.009595999494195,-0.016281541436911,-0.174794569611549,-0.052494321018457,-0.022593133151531,0.074463225901127,-0.161334604024887,-0.026007654145360,0.000371576636098,-0.154987797141075,0.232205033302307,-0.097000755369663,-0.070619843900204,0.077234812080860,0.149865016341209,0.010493475943804));
res += mul(Get(s3,dx,dy), float4x4(0.028381153941154,-0.008894343860447,-0.021143235266209,-0.008101778104901,0.061322957277298,-0.055109582841396,0.143070816993713,-0.027963871136308,-0.009288432076573,-0.138041183352470,-0.055649265646935,0.001788529334590,-0.071226805448532,-0.033931750804186,-0.075450986623764,-0.073011346161366));
res += mul(Get(s4,-dx,-dy), float4x4(-0.002010236494243,-0.110731989145279,0.015384512953460,-0.136195853352547,-0.186637848615646,0.138512998819351,-0.010936234146357,0.032914593815804,0.004804769065231,-0.015871582552791,0.016311047598720,-0.013326029293239,-0.099894821643829,0.059276483952999,-0.041423037648201,-0.023584300652146));
res += mul(Get(s4,-dx,0), float4x4(-0.014789902605116,-0.030198801308870,-0.046416334807873,0.086941197514534,-0.206647023558617,0.055949397385120,0.000526609772351,-0.023093508556485,0.041028216481209,-0.029565395787358,-0.049229543656111,-0.006102066021413,-0.017233574762940,-0.089360088109970,-0.007952308282256,0.053042788058519));
res += mul(Get(s4,-dx,dy), float4x4(-0.018945274874568,-0.101253867149353,0.016190249472857,-0.016279628500342,-0.081024095416069,0.179104983806610,0.003890563035384,0.000669956207275,-0.029612185433507,-0.262821137905121,-0.041593767702579,-0.022501176223159,-0.013109117746353,-0.020794447511435,0.022392151877284,-0.022965122014284));
res += mul(Get(s4,0,-dy), float4x4(-0.047662556171417,-0.017100689932704,0.115606971085072,-0.040499310940504,-0.400849729776382,0.077561952173710,0.021757217124104,0.123430147767067,0.015413438901305,0.130245879292488,0.013748496770859,-0.026452582329512,-0.103774294257164,-0.019252764061093,0.086340807378292,0.003013828303665));
res += mul(Get(s4,0,0), float4x4(-0.040901623666286,-0.105439133942127,0.047583427280188,-0.101092740893364,-0.275229156017303,0.366484403610229,-0.141225233674049,-0.218502208590508,0.022967318072915,0.554743766784668,-0.134313911199570,-0.102097727358341,0.084556914865971,-0.091050677001476,-0.112346664071083,-0.075920164585114));
res += mul(Get(s4,0,dy), float4x4(0.016784256324172,-0.002334098564461,0.037124250084162,0.060138761997223,-0.121190100908279,0.001074490137398,0.047351736575365,0.079793587327003,-0.096629641950130,-0.294790685176849,0.036861829459667,0.169475883245468,-0.052541289478540,-0.031229516491294,-0.037298433482647,0.082679487764835));
res += mul(Get(s4,dx,-dy), float4x4(0.001945834024809,-0.025730893015862,0.025233084335923,0.034333951771259,-0.356123059988022,-0.002956517506391,0.004098723176867,-0.032918043434620,-0.001613700296730,-0.065901502966881,0.042217433452606,-0.045396018773317,-0.031993698328733,0.089784100651741,-0.030087208375335,-0.021314460784197));
res += mul(Get(s4,dx,0), float4x4(0.020956650376320,-0.024454079568386,0.037453249096870,0.021944442763925,-0.242473244667053,-0.033057916909456,0.210105225443840,0.013394167646766,-0.002202863106504,-0.176087513566017,0.224085494875908,0.040116615593433,0.065622217953205,-0.015881270170212,-0.000355954281986,-0.161324173212051));
res += mul(Get(s4,dx,dy), float4x4(-0.076570563018322,0.006073324009776,-0.244270354509354,-0.074650265276432,-0.117345802485943,0.081634081900120,-0.034413717687130,-0.032754447311163,-0.025419291108847,-0.152753949165344,-0.174237489700317,0.012878199107945,0.004426736384630,-0.072845265269279,0.032749205827713,0.000059726946347));
res += mul(Get(s5,-dx,-dy), float4x4(-0.006482582539320,-0.000497275730595,0.002070668851957,0.005115925334394,0.042381074279547,-0.021292036399245,-0.030877927318215,-0.075591444969177,-0.058142371475697,0.001837132964283,0.017024325206876,-0.075077846646309,-0.018419265747070,0.059625115245581,0.035788659006357,0.037553481757641));
res += mul(Get(s5,-dx,0), float4x4(-0.006309738848358,-0.001093304716051,0.002878787927330,0.005580119322985,0.108973786234856,-0.272899538278580,-0.048880860209465,-0.001764782587998,-0.022155871614814,0.089659214019775,-0.026396987959743,-0.010829363018274,-0.021672969684005,0.064552448689938,0.019320571795106,-0.129816383123398));
res += mul(Get(s5,-dx,dy), float4x4(-0.007241016253829,-0.001335755339824,0.003413317725062,0.007155928760767,0.030350092798471,-0.052234448492527,0.066356614232063,-0.082075968384743,0.016221739351749,0.128134205937386,-0.039253231137991,0.024912241846323,0.049616456031799,0.053128097206354,-0.044912666082382,-0.029492238536477));
res += mul(Get(s5,0,-dy), float4x4(-0.011419871822000,0.000142770804814,0.002562605077401,0.003863289020956,0.002334293909371,-0.147468954324722,0.051754437386990,0.082878328859806,-0.006122221238911,-0.102702140808105,-0.071643605828285,0.031024165451527,0.061370141804218,-0.147585764527321,0.136848911643028,-0.183712691068649));
res += mul(Get(s5,0,0), float4x4(-0.009934090077877,-0.001316023524851,0.001742826309055,0.003908244427294,-0.006892294157296,0.287587940692902,-0.049601957201958,-0.014636533334851,-0.103586673736572,0.232022807002068,0.140805080533028,-0.089917637407780,0.082800112664700,-0.105061389505863,0.018435578793287,0.084332644939423));
res += mul(Get(s5,0,dy), float4x4(-0.009674626402557,-0.000747793470509,0.000439493684098,0.006278072483838,-0.080492459237576,-0.078229628503323,-0.009711783379316,0.062525831162930,-0.042144276201725,0.037059962749481,0.064731173217297,0.028797160834074,-0.052625957876444,-0.026452278718352,-0.109024025499821,-0.004059033468366));
res += mul(Get(s5,dx,-dy), float4x4(-0.012528030201793,0.001858175732195,0.004611475393176,0.003996865823865,-0.013079889118671,-0.127307057380676,-0.124304264783859,0.035613257437944,-0.063101932406425,0.060729511082172,-0.033216580748558,-0.049283705651760,-0.018590681254864,-0.038497120141983,0.062774144113064,-0.114812001585960));
res += mul(Get(s5,dx,0), float4x4(-0.010609423741698,0.001086092204787,0.004034949932247,0.003712543752044,-0.025048464536667,0.070569634437561,-0.025050392374396,0.018370019271970,-0.039130389690399,-0.074250817298889,0.187691688537598,0.017313875257969,-0.028879016637802,-0.071980550885201,-0.044967588037252,0.150359526276588));
res += mul(Get(s5,dx,dy), float4x4(-0.010465188883245,0.001186068286188,-0.001585942343809,0.006536616943777,-0.033893521875143,0.003214753232896,0.063393697142601,0.050586972385645,0.040903735905886,0.035398431122303,-0.010591656900942,0.025668513029814,0.029031267389655,-0.041189368814230,-0.013156924396753,0.030924679711461));
res = max(float4(0, 0, 0, 0), res) + float4(0.032929252833128,0.060480814427137,0.148998096585274,-0.035003054887056) * min(float4(0, 0, 0, 0), res);
return res;
}
