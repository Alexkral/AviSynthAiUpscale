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
float4 res = float4(-0.014645503833890,-0.740967869758606,-0.393342524766922,-0.147254288196564);
res += mul(Get(s0,-dx,-dy), float4x4(0.000716154347174,-0.197274088859558,-0.226437374949455,-0.063152119517326,0.025923950597644,-0.080762065947056,-0.136094689369202,0.059892594814301,-0.028953162953258,-0.095189020037651,-0.031798772513866,-0.197589546442032,-0.021380480378866,-0.055184423923492,0.056681483983994,0.012210117653012));
res += mul(Get(s0,-dx,0), float4x4(0.214382469654083,-0.060344412922859,0.104602739214897,-0.002497407374904,0.032789450138807,-0.241595834493637,-0.155428424477577,-0.233705744147301,0.134432360529900,0.207318976521492,0.239076763391495,0.041163507848978,0.124749861657619,-0.199793934822083,-0.047663040459156,-0.026468131691217));
res += mul(Get(s0,-dx,dy), float4x4(-0.067377887666225,-0.138702511787415,-0.058556869626045,-0.055061962455511,0.066253051161766,-0.175652369856834,-0.086807578802109,-0.094054132699966,0.104507267475128,0.027794029563665,-0.049419317394495,0.138666644692421,0.008527491241693,0.061665993183851,-0.002931955968961,0.063206456601620));
res += mul(Get(s0,0,-dy), float4x4(-0.020243387669325,0.059031527489424,-0.173056289553642,0.005874577909708,-0.120159707963467,0.001807712367736,-0.123797707259655,0.129892989993095,0.023118048906326,-0.115868315100670,-0.191129714250565,-0.004107901360840,-0.229825943708420,0.096840627491474,0.025359487161040,0.023340035229921));
res += mul(Get(s0,0,0), float4x4(0.202595695853233,0.197248190641403,0.248071104288101,0.203119039535522,0.023380542173982,-0.237121164798737,0.064071893692017,0.040550097823143,-0.180128261446953,0.002908586524427,-0.046472199261189,0.293720811605453,0.077135622501373,-0.330298900604248,-0.060503482818604,0.181379869580269));
res += mul(Get(s0,0,dy), float4x4(-0.141368106007576,-0.048363544046879,-0.076967008411884,-0.050379149615765,0.004863643087447,-0.178153634071350,0.134333133697510,-0.040025535970926,-0.092265821993351,0.080199547111988,-0.040678266435862,0.045364376157522,-0.308889895677567,-0.031072027981281,-0.083617009222507,-0.123024232685566));
res += mul(Get(s0,dx,-dy), float4x4(-0.032667785882950,0.009521115571260,0.049811478704214,-0.024075042456388,-0.038788061589003,-0.104120045900345,0.042726155370474,0.055885434150696,0.119719080626965,-0.049296695739031,-0.034289080649614,-0.006194127723575,-0.104093372821808,0.007648705504835,0.077689208090305,0.176773279905319));
res += mul(Get(s0,dx,0), float4x4(0.034111797809601,0.073955364525318,0.079880237579346,0.128308519721031,-0.075277216732502,-0.192620933055878,-0.134696796536446,-0.164292901754379,-0.043729145079851,-0.041047319769859,-0.281818628311157,0.214965179562569,-0.122830249369144,0.129375532269478,0.120399534702301,0.259999692440033));
res += mul(Get(s0,dx,dy), float4x4(-0.001084525603801,-0.121960505843163,0.063246496021748,-0.005190295167267,-0.003963357303292,-0.125930100679398,0.077807039022446,-0.138341635465622,-0.037606891244650,-0.117698907852173,-0.099876664578915,-0.145480841398239,0.001814263290726,0.006588337942958,0.041073556989431,0.130464836955070));
res += mul(Get(s1,-dx,-dy), float4x4(-0.050484076142311,0.109726719558239,0.042417962104082,0.000982693512924,-0.062639601528645,0.012216316536069,-0.043153755366802,-0.015629960224032,0.028112482279539,0.012510369531810,-0.088658034801483,0.069864399731159,-0.011994495056570,0.143640339374542,0.109207123517990,0.121364288032055));
res += mul(Get(s1,-dx,0), float4x4(0.044255763292313,0.116184249520302,0.081050477921963,-0.066207252442837,0.055466629564762,-0.054432265460491,0.051404371857643,-0.262648016214371,-0.084225043654442,0.060743540525436,-0.288560777902603,0.032212004065514,-0.018986312672496,0.168990358710289,0.164134785532951,0.055429078638554));
res += mul(Get(s1,-dx,dy), float4x4(0.117028400301933,-0.033602658659220,0.025644278153777,0.108584567904472,0.030689889565110,-0.084967881441116,0.082438074052334,-0.154964968562126,-0.244517832994461,-0.033759005367756,0.026426417753100,-0.130354911088943,-0.129922702908516,-0.099883005023003,-0.010573134757578,0.004562402144074));
res += mul(Get(s1,0,-dy), float4x4(0.137095421552658,0.167526364326477,0.205867126584053,0.135810583829880,0.117227293550968,-0.170430958271027,0.039868466556072,-0.054666418582201,0.075186751782894,-0.071354188024998,-0.012224003672600,0.228410616517067,-0.100628018379211,0.016622271388769,0.057992387562990,-0.009219864383340));
res += mul(Get(s1,0,0), float4x4(-0.224134877324104,-0.444482654333115,-0.343725442886353,0.147210404276848,-0.368219554424286,-0.357083201408386,-0.028731737285852,-0.103225514292717,0.066104546189308,-0.011070023290813,-0.113218508660793,0.251778364181519,0.305185109376907,-0.163341090083122,-0.247840061783791,-0.182250037789345));
res += mul(Get(s1,0,dy), float4x4(0.016762608662248,0.084891796112061,-0.072306796908379,0.016314901411533,0.075221933424473,0.051620520651340,0.090798757970333,-0.087020359933376,-0.312483936548233,-0.128194123506546,0.099785260856152,-0.129767194390297,-0.104142412543297,-0.146443188190460,0.029177568852901,-0.035318534821272));
res += mul(Get(s1,dx,-dy), float4x4(0.046766292303801,-0.040112543851137,0.035597093403339,-0.068051457405090,0.125691920518875,-0.080897539854050,-0.046935237944126,-0.035007350146770,0.005608780309558,0.014718723483384,-0.037179581820965,-0.072500951588154,-0.041258215904236,-0.061274010688066,-0.024576023221016,0.009600525721908));
res += mul(Get(s1,dx,0), float4x4(-0.094120740890503,0.116409525275230,0.086011007428169,-0.090045981109142,-0.163002535700798,-0.086770638823509,-0.099100023508072,-0.090518198907375,-0.004498898051679,0.064028002321720,0.042442467063665,0.252529501914978,0.014976114965975,-0.102012045681477,-0.054647386074066,-0.150037944316864));
res += mul(Get(s1,dx,dy), float4x4(-0.028446372598410,-0.025313030928373,-0.000800223962869,-0.005510407499969,0.032608374953270,-0.089576661586761,0.022963758558035,-0.123475141823292,-0.141434982419014,-0.117666356265545,-0.056951295584440,-0.130147427320480,-0.009149179793894,-0.066919192671776,-0.075653307139874,-0.089928515255451));
res += mul(Get(s2,-dx,-dy), float4x4(-0.032715015113354,0.048659395426512,-0.054443728178740,-0.062471468001604,-0.117009863257408,-0.119729407131672,-0.227457806468010,-0.006574132479727,0.119023844599724,0.068718709051609,0.300035744905472,-0.160906329751015,-0.109713956713676,0.101739749312401,-0.035352848470211,-0.059991605579853));
res += mul(Get(s2,-dx,0), float4x4(0.024235397577286,0.176905155181885,-0.142126828432083,0.269713908433914,-0.000341725652106,-0.151974931359291,0.021981962025166,-0.389788359403610,0.012376822531223,0.157739698886871,0.142530515789986,0.218820512294769,0.206808954477310,0.138433262705803,0.072410807013512,0.101405687630177));
res += mul(Get(s2,-dx,dy), float4x4(0.061290480196476,-0.149891853332520,0.038888826966286,-0.061594750732183,-0.067095249891281,-0.100699789822102,0.046418037265539,0.016094230115414,0.058944515883923,-0.173888623714447,-0.016122836619616,-0.011856812983751,-0.076691046357155,-0.092539094388485,-0.060158293694258,-0.044435560703278));
res += mul(Get(s2,0,-dy), float4x4(-0.128583833575249,0.091874085366726,-0.062918901443481,-0.177477255463600,-0.079337336122990,-0.076471187174320,-0.241799920797348,0.218279600143433,0.085312873125076,0.174589246511459,0.200556397438049,-0.197080329060555,-0.028641937300563,0.103144623339176,-0.036227703094482,-0.259050846099854));
res += mul(Get(s2,0,0), float4x4(-0.089650012552738,0.220362097024918,0.514198422431946,0.418253004550934,-0.441710978746414,0.131028085947037,-0.281995028257370,0.049995929002762,-0.054662317037582,0.122240439057350,0.021688254550099,-0.098621457815170,0.251565665006638,0.525503337383270,0.305191367864609,0.148102417588234));
res += mul(Get(s2,0,dy), float4x4(-0.156851947307587,-0.415685266256332,0.001359268324450,0.198066100478172,-0.165638506412506,-0.038459602743387,0.000763078860473,-0.146398663520813,0.151868596673012,0.041006028652191,0.035867054015398,0.029068764299154,-0.066801913082600,0.000239958491875,0.197832927107811,-0.047267153859138));
res += mul(Get(s2,dx,-dy), float4x4(-0.078838065266609,0.066486120223999,-0.026903478428721,-0.053826663643122,0.057926204055548,-0.097805477678776,0.063822008669376,0.213315099477768,-0.089230731129646,-0.004749758169055,-0.126265913248062,0.040503412485123,0.001586155267432,-0.020965745672584,0.003003531834111,0.189699202775955));
res += mul(Get(s2,dx,0), float4x4(-0.017084643244743,-0.116360120475292,-0.074119158089161,-0.185901150107384,-0.163804426789284,0.135112985968590,-0.059326715767384,0.187173336744308,0.065359212458134,0.042316660284996,0.266983687877655,0.013838270679116,-0.153512775897980,-0.169208943843842,-0.055874630808830,-0.072147712111473));
res += mul(Get(s2,dx,dy), float4x4(-0.025182008743286,-0.136363118886948,-0.006447576452047,-0.125164777040482,-0.035602971911430,-0.029729716479778,-0.048692844808102,0.063749857246876,-0.030117120593786,0.081244297325611,0.025096170604229,-0.014744482003152,0.116677604615688,-0.001332785352133,-0.006099249701947,-0.057422053068876));
res += mul(Get(s3,-dx,-dy), float4x4(0.031829632818699,0.007686914876103,0.166980132460594,-0.219846084713936,-0.252517670392990,0.140638381242752,-0.140488922595978,-0.182964429259300,0.030911548063159,0.064536057412624,0.014947550371289,0.088996790349483,-0.049580018967390,0.049704249948263,0.015632743015885,0.015615227632225));
res += mul(Get(s3,-dx,0), float4x4(0.210459560155869,0.035791955888271,-0.055932667106390,0.114318944513798,0.034479204565287,-0.108254224061966,-0.095538973808289,0.037584856152534,0.115952923893929,-0.036666531115770,-0.110580213367939,-0.114912703633308,0.129852086305618,0.174646720290184,0.225347697734833,0.109155617654324));
res += mul(Get(s3,-dx,dy), float4x4(-0.066277906298637,0.069690823554993,0.067177802324295,0.019924351945519,0.227915942668915,0.150171443820000,-0.198760792613029,-0.108710594475269,-0.098254889249802,0.041151624172926,0.032627373933792,-0.038954485207796,0.022199500352144,0.254326254129410,0.005073569715023,0.102700047194958));
res += mul(Get(s3,0,-dy), float4x4(0.061193324625492,-0.153317093849182,-0.239201247692108,-0.039378654211760,-0.143286973237991,0.028388563543558,0.007140557747334,0.154831081628799,-0.081418484449387,-0.021025570109487,-0.060202844440937,-0.133627265691757,-0.049036476761103,0.130294755101204,0.152003452181816,-0.322339147329330));
res += mul(Get(s3,0,0), float4x4(0.295820504426956,0.012475891970098,-0.000708516628947,0.050474483519793,0.017416132614017,-0.256373375654221,-0.056953679770231,0.019752006977797,0.231752052903175,0.228713035583496,-0.148175209760666,-0.282636433839798,0.237008228898048,0.389465957880020,0.432652801275253,-0.010774563066661));
res += mul(Get(s3,0,dy), float4x4(-0.004096689634025,0.015264378860593,-0.017020892351866,0.062596708536148,0.202434360980988,0.258130282163620,-0.096766546368599,-0.120816662907600,-0.014669694006443,-0.073095545172691,-0.128533065319061,-0.101391471922398,0.085053473711014,0.198242217302322,0.076135717332363,0.142918542027473));
res += mul(Get(s3,dx,-dy), float4x4(-0.155495211482048,-0.089260689914227,-0.043059695512056,-0.261284053325653,-0.027285223826766,0.110129304230213,-0.089800469577312,0.198705330491066,-0.087963767349720,0.094055302441120,0.036465145647526,-0.229031786322594,-0.095803044736385,0.302729040384293,0.111670836806297,0.193360120058060));
res += mul(Get(s3,dx,0), float4x4(0.155110344290733,-0.047201283276081,-0.099318318068981,0.043273672461510,0.168056264519691,-0.029784789308906,0.054936494678259,0.133125782012939,0.120018221437931,0.059002235531807,0.005663315299898,-0.173646494746208,0.072760835289955,0.322484970092773,0.259507685899734,0.300302982330322));
res += mul(Get(s3,dx,dy), float4x4(0.024409539997578,0.019216094166040,-0.055160690099001,0.021747007966042,-0.205004096031189,0.135536462068558,-0.050748877227306,0.016286410391331,0.033443585038185,0.111449606716633,-0.029158549383283,0.082812093198299,0.163129776716232,0.246976479887962,-0.001131904078647,0.124316930770874));
res += mul(Get(s4,-dx,-dy), float4x4(0.075809963047504,0.078822985291481,0.205830127000809,-0.054910641163588,-0.025103051215410,-0.156010314822197,0.018466413021088,-0.009603126905859,-0.027122464030981,-0.084311604499817,-0.131638661026955,0.270752280950546,0.090887561440468,-0.018452545627952,-0.065057128667831,0.032848265022039));
res += mul(Get(s4,-dx,0), float4x4(-0.040524676442146,0.130748853087425,0.140763729810715,0.174235478043556,-0.029321368783712,-0.041764732450247,-0.214920058846474,0.002976509742439,-0.169079229235649,-0.067948244512081,-0.181259855628014,-0.066533289849758,0.039615321904421,-0.055728420615196,-0.112928301095963,0.128953441977501));
res += mul(Get(s4,-dx,dy), float4x4(-0.204021513462067,-0.120666295289993,0.042396463453770,-0.041003242135048,-0.093931347131729,-0.076532095670700,0.121932558715343,-0.054640926420689,0.109509065747261,-0.096163138747215,0.090465076267719,-0.051807988435030,-0.014088866300881,-0.041399404406548,0.032970171421766,-0.030646281316876));
res += mul(Get(s4,0,-dy), float4x4(0.157245159149170,0.174617916345596,0.239631891250610,0.111127622425556,0.057933714240789,-0.154676631093025,0.007654233369976,0.004722291603684,-0.056151404976845,-0.043331243097782,-0.078893244266510,0.146650135517120,-0.122392825782299,0.113456964492798,0.045692238956690,-0.023419167846441));
res += mul(Get(s4,0,0), float4x4(0.013588112778962,-0.176765903830528,0.159629389643669,0.360067456960678,0.129440426826477,0.276791661977768,-0.034044943749905,-0.097575835883617,-0.148137822747231,0.080480553209782,-0.036418858915567,-0.161666452884674,-0.174425169825554,0.016963306814432,0.031787481158972,-0.195982396602631));
res += mul(Get(s4,0,dy), float4x4(-0.575561583042145,-0.055980481207371,0.194566771388054,-0.118343584239483,-0.177025184035301,-0.153902336955070,0.241665467619896,-0.154260948300362,0.117683120071888,-0.050139874219894,0.174827069044113,0.008912506513298,-0.039651878178120,-0.052051980048418,0.167479470372200,-0.141477867960930));
res += mul(Get(s4,dx,-dy), float4x4(0.066481634974480,-0.062712989747524,-0.112490184605122,-0.118816658854485,0.054047435522079,-0.226770460605621,-0.147987216711044,-0.167968869209290,-0.050250053405762,0.150316983461380,-0.035416670143604,0.115867704153061,-0.005957589950413,-0.061460249125957,-0.082499250769615,0.207673490047455));
res += mul(Get(s4,dx,0), float4x4(0.198864936828613,0.169646143913269,-0.035384025424719,0.077964909374714,0.047934208065271,-0.163964435458183,-0.118383474647999,-0.342414051294327,0.112157821655273,-0.159883961081505,-0.046949349343777,0.094340838491917,0.062221568077803,0.147589266300201,0.220087483525276,0.164029315114021));
res += mul(Get(s4,dx,dy), float4x4(-0.151007205247879,0.069742783904076,0.012232357636094,-0.177695348858833,-0.013514967635274,-0.016552178189158,-0.108315214514732,-0.110584482550621,-0.172200098633766,0.024920525029302,-0.026971455663443,0.066260762512684,0.051255330443382,-0.103829160332680,0.226502344012260,0.389168709516525));
res += mul(Get(s5,-dx,-dy), float4x4(0.029437618330121,-0.007233808748424,-0.071566186845303,0.044533178210258,-0.174539849162102,-0.008135486394167,0.027556231245399,-0.240693375468254,-0.126681208610535,0.059758543968201,-0.144246995449066,0.046869546175003,-0.015367687679827,-0.083639912307262,0.110330589115620,-0.048699926584959));
res += mul(Get(s5,-dx,0), float4x4(0.140794396400452,0.120395705103874,0.050988525152206,0.066068284213543,0.098422408103943,0.018783686682582,0.198900073766708,0.014597595669329,0.088233686983585,0.058708149939775,0.027643702924252,0.094279222190380,-0.123289287090302,-0.118373773992062,-0.090208798646927,-0.100738435983658));
res += mul(Get(s5,-dx,dy), float4x4(0.054552745074034,-0.082967013120651,0.046509727835655,-0.038758967071772,0.185611486434937,0.143138274550438,-0.054626759141684,0.247544392943382,-0.188919439911842,0.106303058564663,0.057237502187490,-0.041897539049387,0.084500767290592,-0.059891019016504,0.012513003312051,0.045221958309412));
res += mul(Get(s5,0,-dy), float4x4(-0.119148388504982,-0.033555217087269,-0.109245896339417,0.036093227565289,-0.058185596019030,0.020603237673640,-0.164921611547470,0.021273953840137,-0.013372967019677,0.202376887202263,-0.120476342737675,-0.146263509988785,-0.017092157155275,0.004331166390330,-0.084906816482544,-0.045068170875311));
res += mul(Get(s5,0,0), float4x4(0.367868810892105,-0.079425700008869,-0.187066256999969,0.041799187660217,0.093814998865128,-0.117493614554405,0.160875335335732,-0.185303166508675,0.223618730902672,0.204966723918915,0.318422257900238,0.083455756306648,-0.120205484330654,-0.378799051046371,-0.269135802984238,-0.337956100702286));
res += mul(Get(s5,0,dy), float4x4(0.102874152362347,0.064626470208168,-0.014509698376060,-0.060454636812210,0.180577307939529,0.123245455324650,-0.130762428045273,0.070233441889286,-0.190853849053383,0.203692004084587,0.037243407219648,0.356957763433456,0.192925602197647,-0.231119647622108,-0.125900730490685,-0.182064548134804));
res += mul(Get(s5,dx,-dy), float4x4(0.032886330038309,0.210553660988808,0.005872522480786,0.012635851278901,0.070716217160225,-0.098507434129715,0.016636796295643,0.170022815465927,-0.021430073305964,0.022641940042377,0.100448437035084,-0.098417863249779,-0.065749801695347,0.141770839691162,0.113214828073978,-0.133308395743370));
res += mul(Get(s5,dx,0), float4x4(0.087003909051418,-0.098609909415245,0.119877427816391,-0.099009312689304,-0.071206867694855,-0.040203440934420,0.133126318454742,-0.043952088803053,0.086209103465080,0.182605355978012,0.175867408514023,0.010871729813516,-0.061242934316397,0.067503757774830,0.203088775277138,-0.005290264729410));
res += mul(Get(s5,dx,dy), float4x4(0.073499307036400,-0.023695360869169,0.131333276629448,-0.086192145943642,-0.146795287728310,-0.128968983888626,-0.061017952859402,-0.005932343658060,0.065555021166801,0.236661747097969,0.014243563637137,0.147064074873924,-0.053363297134638,0.046746619045734,0.083404228091240,0.033722616732121));
res = max(float4(0, 0, 0, 0), res) + float4(-0.352203398942947,-0.018240520730615,-0.018424674868584,0.069156624376774) * min(float4(0, 0, 0, 0), res);
return res;
}