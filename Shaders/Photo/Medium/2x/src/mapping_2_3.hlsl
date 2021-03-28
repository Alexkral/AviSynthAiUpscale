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
float4 res = float4(-0.000597461941652,-0.013379887677729,-0.093036539852619,0.113157249987125);
res += mul(Get(s0,-dx,-dy), float4x4(-0.065541163086891,-0.013845246285200,-0.227977722883224,0.006715870928019,-0.182723924517632,-0.076430372893810,0.020670372992754,0.047957409173250,0.048321206122637,-0.026310639455914,0.103468403220177,0.098135344684124,0.047340668737888,-0.046902284026146,0.019459115341306,0.045473109930754));
res += mul(Get(s0,-dx,0), float4x4(-0.000502441660501,-0.271803259849548,-0.246993914246559,-0.017260717228055,-0.009030021727085,-0.147718548774719,0.136505663394928,0.149071961641312,0.131641224026680,0.003334996523336,0.071772590279579,0.057369794696569,0.015343046747148,-0.109596326947212,0.054628737270832,0.050774693489075));
res += mul(Get(s0,-dx,dy), float4x4(-0.043767586350441,0.015892328694463,-0.074270665645599,-0.383518725633621,-0.082135073840618,0.009624822065234,-0.191229835152626,0.009765788912773,0.033342156559229,-0.004852179437876,0.096941478550434,0.044281382113695,0.068901881575584,-0.138344153761864,0.002246120013297,-0.057209115475416));
res += mul(Get(s0,0,-dy), float4x4(-0.050407432019711,-0.089513666927814,0.085091173648834,-0.121392644941807,-0.064540386199951,-0.014477962628007,-0.147501021623611,-0.025094611570239,0.148058861494064,-0.206742152571678,0.172526732087135,-0.011259645223618,0.055887706577778,-0.021295081824064,0.022355128079653,0.061505507677794));
res += mul(Get(s0,0,0), float4x4(0.037814661860466,-0.271166294813156,-0.077960126101971,-0.039466012269258,0.078255549073219,0.048425473272800,0.080945894122124,-0.026308273896575,-0.001663720700890,-0.156319081783295,0.077169582247734,-0.114085674285889,0.020023908466101,-0.209434613585472,0.137333765625954,0.046999830752611));
res += mul(Get(s0,0,dy), float4x4(0.093067415058613,-0.190660476684570,-0.118277125060558,-0.426518142223358,0.075875490903854,0.110334962606430,0.039301648736000,0.081981450319290,0.030267069116235,-0.009351853281260,0.031336445361376,0.029134193435311,0.056946087628603,-0.023805905133486,-0.122355364263058,-0.021396372467279));
res += mul(Get(s0,dx,-dy), float4x4(0.044131543487310,0.138149425387383,0.027875375002623,0.023730920627713,0.099317342042923,0.061838779598475,0.154309019446373,0.013607677072287,0.071251466870308,-0.013547314330935,-0.083079844713211,-0.020134156569839,0.021360654383898,0.031739443540573,0.017868448048830,0.038546435534954));
res += mul(Get(s0,dx,0), float4x4(0.019685870036483,0.153392821550369,0.121161505579948,-0.013587850145996,0.025538193061948,0.080286912620068,-0.065698109567165,0.028832027688622,-0.020077750086784,-0.241932213306427,-0.139818444848061,0.030655559152365,0.085650905966759,0.054548975080252,0.067891627550125,0.025561954826117));
res += mul(Get(s0,dx,dy), float4x4(-0.040091905742884,0.097061328589916,0.216514661908150,-0.078773804008961,0.099095292389393,-0.020277833566070,-0.104549981653690,0.027422867715359,0.024407779797912,0.029357606545091,-0.051294047385454,-0.055847223848104,0.056734245270491,0.102566979825497,0.048846788704395,0.002133882837370));
res += mul(Get(s1,-dx,-dy), float4x4(-0.056987509131432,-0.137541383504868,-0.127225577831268,-0.069656558334827,0.121849060058594,-0.156780987977982,0.056494817137718,0.017096100375056,-0.140216618776321,0.053732294589281,-0.195465683937073,-0.020553685724735,0.278404533863068,-0.104887776076794,-0.044786415994167,-0.039117645472288));
res += mul(Get(s1,-dx,0), float4x4(-0.068296596407890,-0.184337243437767,0.159259513020515,0.017477311193943,0.217701628804207,-0.257449328899384,0.086884543299675,0.047388274222612,-0.091652169823647,0.048767831176519,0.157259613275528,0.006404575426131,0.276477247476578,-0.066129297018051,-0.031954046338797,-0.002952368929982));
res += mul(Get(s1,-dx,dy), float4x4(-0.026735341176391,-0.085861608386040,0.017816631123424,-0.103789664804935,0.062850683927536,-0.371295601129532,0.018760439008474,0.040326535701752,-0.079018197953701,-0.026714107021689,0.024828080087900,0.098914191126823,-0.101779639720917,-0.130438014864922,-0.003425146918744,-0.061713628470898));
res += mul(Get(s1,0,-dy), float4x4(0.158578932285309,-0.026733880862594,0.016217641532421,-0.074349284172058,-0.116212569177151,-0.144540488719940,0.030323188751936,-0.015899527817965,0.092538438737392,-0.041627809405327,-0.064854353666306,-0.051746226847172,0.031540114432573,-0.130359500646591,0.036304816603661,-0.027017394080758));
res += mul(Get(s1,0,0), float4x4(-0.051887825131416,-0.143943116068840,-0.101943887770176,0.212742313742638,0.055707447230816,-0.089577928185463,-0.070684418082237,-0.095884457230568,0.037404838949442,0.029457351192832,0.045262817293406,0.003580488963053,-0.091936610639095,-0.118745438754559,-0.005213157739490,0.027741704136133));
res += mul(Get(s1,0,dy), float4x4(-0.110538348555565,-0.033117707818747,-0.126341179013252,-0.027124499902129,0.180078536272049,-0.370354324579239,-0.059572625905275,0.173221409320831,0.036375574767590,0.006718900054693,-0.102186597883701,0.014274919405580,-0.070362888276577,0.004213775042444,-0.180136352777481,0.166475266218185));
res += mul(Get(s1,dx,-dy), float4x4(-0.000863008201122,0.139635503292084,0.040878076106310,-0.113625623285770,0.064055748283863,-0.119117833673954,-0.072137393057346,-0.090747199952602,0.058909755200148,0.023218598216772,-0.061769582331181,0.009825009852648,-0.099250160157681,-0.090438440442085,0.044743623584509,-0.092939525842667));
res += mul(Get(s1,dx,0), float4x4(0.006679122336209,-0.047224767506123,0.207969740033150,0.104308590292931,0.224085599184036,-0.193342790007591,-0.096870861947536,0.076087489724159,0.080540977418423,0.015272530727088,-0.169216707348824,-0.007721322122961,-0.174651980400085,-0.101441808044910,0.212988927960396,0.006509246770293));
res += mul(Get(s1,dx,dy), float4x4(-0.055152744054794,0.033208359032869,0.241746038198471,-0.109324030578136,0.151351168751717,-0.313059657812119,-0.054968196898699,-0.093634761869907,0.059479691088200,-0.092156097292900,0.098864674568176,-0.111332915723324,-0.121755838394165,-0.117965593934059,-0.146762594580650,0.018627414479852));
res += mul(Get(s2,-dx,-dy), float4x4(0.017735231667757,-0.046427585184574,-0.021495986729860,-0.010868540033698,0.018801473081112,-0.101149052381516,0.176197320222855,-0.009016267955303,0.037636511027813,-0.048310652375221,0.272937029600143,0.061317790299654,0.070701166987419,0.013467967510223,0.016370540484786,-0.006551935337484));
res += mul(Get(s2,-dx,0), float4x4(-0.018259804695845,0.059407100081444,0.224201917648315,-0.066695407032967,0.027948880568147,0.037746760994196,-0.149186447262764,-0.085223272442818,0.001623017829843,0.077233225107193,0.234969943761826,0.020486108958721,-0.112049475312233,0.040170975029469,-0.205885156989098,0.036970883607864));
res += mul(Get(s2,-dx,dy), float4x4(0.068085044622421,0.137189701199532,0.039981540292501,-0.011474448256195,0.231158465147018,0.058597497642040,-0.038046836853027,0.025424951687455,0.075213886797428,0.186238288879395,0.104582257568836,0.014641192741692,-0.047399666160345,-0.072932206094265,-0.043633952736855,0.132029771804810));
res += mul(Get(s2,0,-dy), float4x4(-0.005738667212427,-0.025186719372869,0.051178064197302,0.024439778178930,-0.109795361757278,-0.198241874575615,0.061261098831892,-0.071667745709419,0.080979980528355,0.002320698462427,0.070271797478199,0.058340355753899,-0.009102695621550,-0.314737021923065,0.178614228963852,0.056170232594013));
res += mul(Get(s2,0,0), float4x4(0.060894086956978,-0.153109624981880,-0.096284471452236,0.056342396885157,-0.139757141470909,0.711965799331665,0.006987879518420,-0.172189608216286,-0.218150779604912,0.029798008501530,-0.159988597035408,0.052758876234293,-0.120498843491077,-0.260434150695801,-0.038764480501413,-0.009217457845807));
res += mul(Get(s2,0,dy), float4x4(0.031366813927889,-0.021106183528900,0.061424486339092,-0.075439728796482,0.072087615728378,0.208818078041077,-0.117351874709129,0.224057808518410,0.012587553821504,0.068893499672413,-0.111550852656364,0.192729547619820,0.003083751071244,-0.392355501651764,0.037329033017159,-0.134017363190651));
res += mul(Get(s2,dx,-dy), float4x4(0.179316461086273,0.004712000954896,0.042335953563452,-0.001620639930479,0.004484654404223,-0.170909628272057,-0.019837561994791,-0.006618998479098,0.000099049939308,0.091923683881760,0.166793033480644,0.055486485362053,0.184476554393768,-0.204228863120079,-0.285516262054443,0.058838859200478));
res += mul(Get(s2,dx,0), float4x4(0.072312824428082,-0.131020471453667,-0.091246396303177,-0.007421469315886,-0.000036893470678,-0.130680516362190,0.045047339051962,-0.008263966068625,0.034235898405313,0.031744167208672,0.018612027168274,0.008090263232589,0.149116843938828,-0.339002490043640,-0.099620908498764,-0.059291996061802));
res += mul(Get(s2,dx,dy), float4x4(0.086685195565224,-0.117073230445385,-0.126213923096657,-0.137207925319672,0.018612721934915,-0.027852198109031,-0.053622841835022,0.069323457777500,0.096231400966644,0.051885180175304,0.013879661448300,0.040490783751011,0.123020753264427,-0.079483151435852,0.159180134534836,-0.025060286745429));
res += mul(Get(s3,-dx,-dy), float4x4(0.063401423394680,-0.021663529798388,-0.079056680202484,-0.023406105116010,-0.060707397758961,0.051981855183840,0.195975124835968,-0.045486260205507,-0.061266310513020,0.057048756629229,-0.040102779865265,0.094801947474480,-0.095052555203438,-0.125854015350342,0.061886496841908,-0.021300621330738));
res += mul(Get(s3,-dx,0), float4x4(0.341453790664673,0.047343440353870,0.107708908617496,-0.021287169307470,0.094061583280563,-0.083272740244865,-0.074367202818394,0.078652918338776,0.041218306869268,-0.070700161159039,0.165108978748322,-0.093685179948807,-0.183176711201668,0.012761748395860,-0.125713616609573,-0.086097709834576));
res += mul(Get(s3,-dx,dy), float4x4(-0.002694330876693,0.111908145248890,0.017781451344490,-0.053057722747326,-0.002043828135356,-0.086346469819546,0.029984900727868,0.163987874984741,0.094727955758572,-0.103045307099819,-0.025542290881276,0.007760966196656,-0.053867172449827,0.085035264492035,0.098143838346004,-0.179981932044029));
res += mul(Get(s3,0,-dy), float4x4(0.091498598456383,-0.002455834997818,-0.095387354493141,-0.013671375811100,-0.166322112083435,0.040236502885818,0.059274256229401,-0.000384251121432,-0.189821824431419,0.097341239452362,-0.102200932800770,0.001205151085742,0.100283309817314,-0.128281697630882,0.308928489685059,0.092867031693459));
res += mul(Get(s3,0,0), float4x4(-0.212570562958717,-0.385055989027023,-0.146594852209091,-0.049206953495741,0.103707797825336,0.315770924091339,0.148028776049614,0.015009408816695,-0.067981824278831,0.116699270904064,-0.118690893054008,0.018919840455055,-0.026092119514942,0.189456790685654,-0.035137962549925,-0.440783143043518));
res += mul(Get(s3,0,dy), float4x4(0.040300659835339,-0.143889993429184,-0.137388586997986,0.337079375982285,0.112368986010551,-0.052472315728664,0.273638218641281,-0.218276098370552,-0.050309646874666,0.025388717651367,0.018286578357220,-0.044576425105333,-0.033189319074154,0.051375418901443,0.017981976270676,0.002006164053455));
res += mul(Get(s3,dx,-dy), float4x4(0.015979260206223,-0.093978740274906,-0.028081677854061,0.009720081463456,-0.022007672116160,-0.035021103918552,0.010967224836349,-0.050374880433083,-0.034423992037773,0.009059413336217,-0.047796238213778,-0.002614894183353,0.060743778944016,0.041234500706196,-0.113270319998264,-0.049436088651419));
res += mul(Get(s3,dx,0), float4x4(0.026795113459229,-0.190157204866409,0.006901363376528,0.003172908211127,0.074127122759819,-0.048227790743113,-0.080110721290112,-0.129607632756233,0.114191472530365,-0.159611344337463,0.076179072260857,-0.126005634665489,-0.071940265595913,0.241035252809525,0.027497537434101,-0.183684006333351));
res += mul(Get(s3,dx,dy), float4x4(0.007170571479946,-0.197706818580627,-0.098527289927006,0.189886182546616,0.043390598148108,-0.031576987355947,0.029777538031340,0.024324078112841,0.071528330445290,-0.132841691374779,0.023100437596440,-0.145034447312355,-0.161219134926796,0.206127747893333,-0.011852012947202,0.153623864054680));
res += mul(Get(s4,-dx,-dy), float4x4(-0.236552521586418,-0.221674546599388,0.132453441619873,-0.063961356878281,-0.022698013111949,-0.032261203974485,-0.060727961361408,0.007451307494193,-0.029603317379951,0.109187670052052,-0.034479126334190,-0.047301672399044,0.078028149902821,-0.047837395220995,-0.124855659902096,-0.141537964344025));
res += mul(Get(s4,-dx,0), float4x4(-0.147478178143501,-0.050044290721416,0.172584474086761,-0.030460409820080,-0.042393654584885,0.098073177039623,-0.120896555483341,-0.014144117012620,-0.196053758263588,0.175309270620346,0.175760984420776,0.020629830658436,0.098340317606926,-0.278310179710388,-0.158177077770233,-0.157594516873360));
res += mul(Get(s4,-dx,dy), float4x4(0.062922105193138,-0.058811753988266,0.099164359271526,-0.069243527948856,0.030287697911263,0.019238684326410,-0.104559347033501,-0.033917628228664,-0.137571826577187,0.137390688061714,0.011600595898926,-0.103956922888756,0.090779036283493,-0.072208680212498,0.086904525756836,-0.359516769647598));
res += mul(Get(s4,0,-dy), float4x4(0.095199748873711,-0.097877949476242,0.082298062741756,0.032069880515337,-0.025494493544102,-0.006521141622216,-0.059829827398062,0.028728973120451,-0.020342659205198,-0.179344370961189,-0.055430438369513,-0.119444325566292,0.069678410887718,0.051940158009529,0.015823476016521,0.050716400146484));
res += mul(Get(s4,0,0), float4x4(0.069623164832592,0.027633622288704,0.117075130343437,-0.113014250993729,-0.119149178266525,0.019469326362014,-0.190964937210083,-0.041696690022945,-0.117346256971359,0.011699057184160,-0.121102139353752,-0.145780801773071,0.143357366323471,-0.022114360705018,-0.116356946527958,0.005592735484242));
res += mul(Get(s4,0,dy), float4x4(0.024656467139721,-0.086298823356628,-0.000405611179303,0.007798684295267,0.024376934394240,0.029334248974919,-0.118788383901119,-0.110192507505417,-0.228401377797127,0.158882707357407,0.016298837959766,0.108820803463459,0.034618001431227,0.001701966393739,-0.150469914078712,-0.187477335333824));
res += mul(Get(s4,dx,-dy), float4x4(-0.002979467622936,-0.085351645946503,0.024296980351210,0.008638110011816,0.043738134205341,0.040137644857168,-0.200441420078278,0.054824549704790,-0.107936620712280,-0.002680847188458,0.043803531676531,-0.035693787038326,-0.124802812933922,0.000362257065717,-0.213720664381981,-0.029703570529819));
res += mul(Get(s4,dx,0), float4x4(0.037316128611565,0.064234524965286,-0.064350396394730,0.102700449526310,0.027565861120820,0.022324925288558,-0.190338239073753,-0.004317682236433,-0.076561607420444,0.174509614706039,0.059877645224333,-0.210355237126350,-0.037151109427214,0.087072536349297,0.008010771125555,-0.094482697546482));
res += mul(Get(s4,dx,dy), float4x4(0.118418872356415,-0.101287893950939,-0.041926842182875,0.000185402910574,-0.011957558803260,0.023661376908422,-0.069450698792934,-0.035023465752602,-0.149721235036850,0.145574107766151,0.090202361345291,0.037562891840935,0.033467460423708,0.099544852972031,0.141218110918999,-0.120664112269878));
res += mul(Get(s5,-dx,-dy), float4x4(-0.043235436081886,0.137304335832596,0.010185925289989,0.015531412325799,-0.153109192848206,-0.038462173193693,0.048974808305502,0.000667746411636,-0.444406658411026,0.038211546838284,-0.031407661736012,0.034193344414234,-0.322650611400604,-0.006557505112141,-0.016020325943828,-0.007398382294923));
res += mul(Get(s5,-dx,0), float4x4(0.209190696477890,0.284562557935715,0.085267268121243,0.036683507263660,-0.039899878203869,-0.150089859962463,0.126870155334473,0.167619332671165,-0.170662730932236,0.113621041178703,-0.026289662346244,0.059618644416332,-0.271400064229965,-0.050561800599098,0.118945501744747,0.005284454207867));
res += mul(Get(s5,-dx,dy), float4x4(0.028682783246040,0.400834679603577,0.121744118630886,0.060232415795326,-0.074613682925701,-0.070645771920681,-0.051854956895113,-0.061983592808247,-0.024111453443766,0.024503970518708,-0.029080832377076,-0.070722274482250,-0.087992794811726,0.015342291444540,-0.123401306569576,0.039309985935688));
res += mul(Get(s5,0,-dy), float4x4(-0.064405992627144,0.178247109055519,0.269618153572083,0.012501172721386,-0.166405722498894,0.161102876067162,0.082571081817150,-0.013267623260617,0.188975900411606,-0.043172642588615,0.027757160365582,-0.007985581643879,-0.242892518639565,-0.008245331235230,-0.083981096744537,0.010938732884824));
res += mul(Get(s5,0,0), float4x4(-0.156647711992264,0.219930648803711,0.087853744626045,-0.031004611402750,0.026534812524915,0.217498049139977,-0.191764533519745,0.180637896060944,0.211790964007378,0.086583517491817,0.315610438585281,-0.159711286425591,0.057318828999996,-0.483829796314240,0.168615266680717,0.072974510490894));
res += mul(Get(s5,0,dy), float4x4(-0.196852535009384,-0.121403276920319,-0.100441165268421,-0.160235092043877,-0.014503685757518,-0.467454999685287,-0.134776517748833,0.217040762305260,-0.066736064851284,0.123529061675072,-0.111952714622021,0.159696295857430,-0.084148585796356,0.024801608175039,-0.115390121936798,-0.066182516515255));
res += mul(Get(s5,dx,-dy), float4x4(-0.105180457234383,0.163038939237595,0.064446426928043,0.037321522831917,0.041952390223742,0.028528457507491,-0.163694664835930,0.034269172698259,0.119898580014706,-0.143781512975693,-0.119264587759972,-0.068947002291679,-0.112403169274330,-0.024067185819149,0.072763167321682,-0.006624313537031));
res += mul(Get(s5,dx,0), float4x4(-0.189197421073914,0.305986642837524,0.029662476852536,0.046052854508162,0.039113666862249,0.106824636459351,0.034989729523659,0.117608241736889,0.159378573298454,-0.476971715688705,-0.003920944407582,0.132498905062675,0.044609028846025,-0.173666492104530,0.043648965656757,0.070934876799583));
res += mul(Get(s5,dx,dy), float4x4(-0.118999250233173,0.193912595510483,0.087223604321480,-0.019757969304919,-0.007693942170590,-0.063968881964684,-0.040623992681503,0.046126749366522,0.099940687417984,-0.149846866726875,0.124171227216721,-0.141427174210548,-0.034783791750669,-0.095202244818211,-0.004613938275725,-0.002370533766225));
res = max(float4(0, 0, 0, 0), res) + float4(-0.010492152534425,-0.091575257480145,-0.067700318992138,-0.330316334962845) * min(float4(0, 0, 0, 0), res);
return res;
}