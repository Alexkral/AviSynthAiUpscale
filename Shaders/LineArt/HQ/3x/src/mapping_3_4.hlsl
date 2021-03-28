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
float4 res = float4(-0.032010126858950,0.158827915787697,-0.163308829069138,0.234453290700912);
res += mul(Get(s0,-dx,-dy), float4x4(0.039038486778736,-0.105605833232403,0.168919265270233,-0.049205183982849,0.034270666539669,-0.070140279829502,-0.091937184333801,-0.019535675644875,-0.114810176193714,-0.164485111832619,0.226741433143616,0.176624879240990,0.025824707001448,-0.067691817879677,0.017362421378493,0.019326621666551));
res += mul(Get(s0,-dx,0), float4x4(-0.201098456978798,-0.157885059714317,0.185455873608589,-0.272487103939056,0.040408380329609,-0.203131020069122,0.253384053707123,0.000264950911514,0.280701458454132,-0.061660382896662,0.125796601176262,-0.076543755829334,-0.040803063660860,-0.220968052744865,0.090598680078983,0.117437377572060));
res += mul(Get(s0,-dx,dy), float4x4(-0.002601971151307,-0.079688712954521,-0.041095506399870,-0.110964000225067,-0.024206340312958,-0.130643978714943,0.256634801626205,0.061680033802986,-0.054727084934711,0.148342549800873,-0.082402110099792,0.216057837009430,0.041269775480032,0.058430377393961,-0.062305532395840,0.085480712354183));
res += mul(Get(s0,0,-dy), float4x4(0.164684072136879,0.034751452505589,0.138517826795578,0.114503473043442,0.017170777544379,-0.150731801986694,0.010758352465928,-0.017286123707891,-0.012875337153673,-0.134536415338516,-0.073516003787518,-0.090517140924931,0.117398865520954,-0.036983780562878,-0.090642221271992,0.338415116071701));
res += mul(Get(s0,0,0), float4x4(-0.199443817138672,-0.026028787717223,0.338607221841812,-0.178455010056496,-0.132256925106049,-0.298042178153992,0.235834464430809,-0.065909750759602,0.170336946845055,-0.028926197439432,-0.268014162778854,-0.022626787424088,0.173959404230118,-0.189869865775108,-0.084022305905819,0.031325053423643));
res += mul(Get(s0,0,dy), float4x4(0.025254977867007,-0.090608134865761,0.034935113042593,-0.055938929319382,-0.099439464509487,0.107539080083370,0.058943297713995,-0.059369578957558,0.040706295520067,-0.155745133757591,0.024370653554797,0.077011927962303,0.047218993306160,-0.083951115608215,0.067477561533451,0.102510593831539));
res += mul(Get(s0,dx,-dy), float4x4(-0.058761604130268,0.036714617162943,-0.010817884467542,0.140862762928009,0.035258989781141,-0.078171841800213,-0.253302514553070,0.119698025286198,0.073124378919601,-0.203382954001427,-0.089040204882622,-0.089675612747669,-0.016343140974641,-0.000311348179821,0.047862652689219,0.038172759115696));
res += mul(Get(s0,dx,0), float4x4(-0.115284815430641,-0.095362037420273,-0.208172649145126,-0.085236541926861,0.222315639257431,-0.365406900644302,-0.115696847438812,0.046753726899624,-0.012731020338833,-0.104929983615875,-0.299670130014420,-0.281983494758606,0.049371484667063,-0.054115898907185,0.016013698652387,0.022613946348429));
res += mul(Get(s0,dx,dy), float4x4(0.029353769496083,0.049627851694822,-0.057277478277683,-0.075188331305981,-0.190457493066788,0.358429968357086,-0.225642547011375,-0.134069412946701,-0.031875047832727,-0.073265641927719,0.130950480699539,0.081044480204582,0.046694427728653,-0.065441727638245,-0.005796892568469,0.008681611157954));
res += mul(Get(s1,-dx,-dy), float4x4(-0.003584729740396,0.165904343128204,-0.009764432907104,0.184622615575790,-0.138053029775620,0.081066943705082,0.145614355802536,-0.026663254946470,-0.048000831156969,-0.101176716387272,-0.166132137179375,0.142482504248619,0.037770867347717,0.105713672935963,0.080365233123302,-0.019671261310577));
res += mul(Get(s1,-dx,0), float4x4(-0.131275236606598,-0.134221240878105,0.165068551898003,0.064231351017952,-0.027795724570751,-0.211062967777252,0.095968581736088,0.077493041753769,0.054300308227539,-0.342539161443710,-0.067438431084156,-0.135434105992317,-0.120510526001453,-0.039814759045839,0.123600192368031,0.182261869311333));
res += mul(Get(s1,-dx,dy), float4x4(0.041565366089344,0.040237825363874,-0.255416095256805,-0.027261925861239,-0.105806127190590,-0.283643960952759,0.146611005067825,0.013704883866012,-0.065832845866680,0.064950324594975,0.237684279680252,-0.002038355916739,-0.050765704363585,-0.035583268851042,-0.205655828118324,-0.085368104279041));
res += mul(Get(s1,0,-dy), float4x4(0.179906964302063,0.043548054993153,-0.222750917077065,0.113433644175529,-0.038441125303507,-0.091172732412815,-0.525425016880035,-0.050363607704639,0.166343495249748,0.051756117492914,-0.179262921214104,0.133173972368240,0.326900750398636,-0.490285038948059,-0.091197870671749,-0.795627534389496));
res += mul(Get(s1,0,0), float4x4(-0.101668119430542,-0.000746184145100,0.199907943606377,-0.045579519122839,-0.261044263839722,0.186436325311661,-0.459327220916748,-0.142467811703682,0.108164846897125,0.031452789902687,-0.239697724580765,-0.249796733260155,-0.094096392393112,0.209226846694946,0.168453767895699,0.153300553560257));
res += mul(Get(s1,0,dy), float4x4(-0.016230681911111,0.060172680765390,-0.029922846704721,0.081448584794998,0.000777818786446,-0.014180900529027,0.068844176828861,-0.085780963301659,-0.060607653111219,0.077841646969318,0.063365593552589,0.129697740077972,0.021426213905215,0.002511666389182,-0.073629125952721,-0.042341470718384));
res += mul(Get(s1,dx,-dy), float4x4(0.074498593807220,-0.075456753373146,-0.017828436568379,0.036444123834372,0.042576190084219,0.001533681876026,-0.193928301334381,0.003031934378669,-0.012894341722131,0.167479649186134,0.084811791777611,-0.013998031616211,0.257544636726379,-0.101214475929737,-0.658789455890656,-0.175417408347130));
res += mul(Get(s1,dx,0), float4x4(0.071467436850071,-0.027031376957893,-0.121759824454784,-0.041362378746271,-0.087015584111214,-0.011405216529965,-0.282782942056656,-0.098283119499683,-0.062191780656576,0.025871435180306,-0.143249496817589,-0.006497557740659,0.054949272423983,0.024744868278503,-0.085620038211346,0.046834629029036));
res += mul(Get(s1,dx,dy), float4x4(0.048784654587507,-0.089991785585880,0.037488438189030,0.011837886646390,-0.032666478306055,-0.056738652288914,0.094855718314648,-0.011291773058474,0.031850378960371,-0.002433807589114,-0.073043227195740,-0.004052831791341,0.047864295542240,0.101094417273998,-0.319954544305801,-0.090023078024387));
res += mul(Get(s2,-dx,-dy), float4x4(-0.088071264326572,0.088753305375576,0.160032033920288,-0.128938540816307,0.107640281319618,-0.071752093732357,-0.175496846437454,0.032975248992443,-0.190225884318352,0.017895344644785,-0.262429118156433,-0.301888257265091,0.097353495657444,-0.060591049492359,0.095590010285378,0.066386841237545));
res += mul(Get(s2,-dx,0), float4x4(-0.286343216896057,0.021517477929592,0.122815854847431,-0.197992309927940,-0.008156283758581,0.036577131599188,-0.047356136143208,-0.074418403208256,0.060225695371628,-0.318717658519745,-0.022906988859177,-0.329699665307999,0.059232406318188,-0.030036520212889,-0.066445372998714,-0.009783393703401));
res += mul(Get(s2,-dx,dy), float4x4(-0.013302599079907,-0.215328484773636,0.009191486984491,0.047280658036470,0.002537958091125,0.117263302206993,-0.107932493090630,-0.038647338747978,0.088732659816742,-0.235673859715462,0.084868997335434,-0.088807165622711,-0.130656138062477,0.111330665647984,0.232006818056107,0.096288464963436));
res += mul(Get(s2,0,-dy), float4x4(-0.102566666901112,0.067074604332447,0.060463301837444,0.016230158507824,0.405241400003433,-0.146766379475594,0.002210633363575,-0.131747692823410,-0.688795089721680,0.152979195117950,0.155478447675705,0.134054645895958,0.021116180345416,-0.041470244526863,0.164899334311485,0.157041758298874));
res += mul(Get(s2,0,0), float4x4(-0.483134001493454,-0.160966202616692,0.032383959740400,-0.109665192663670,-0.007224236149341,0.197238847613335,0.162790417671204,-0.015517360530794,0.165468558669090,-0.001988960895687,0.220840334892273,-0.153935417532921,-0.514124631881714,0.042168132960796,0.097128085792065,-0.246511816978455));
res += mul(Get(s2,0,dy), float4x4(-0.093154177069664,-0.505484402179718,-0.012040954083204,0.007515460718423,-0.137499377131462,0.106248751282692,-0.001004372141324,-0.065705709159374,-0.120176233351231,-0.192409336566925,0.150146558880806,-0.062031064182520,0.010477218776941,-0.113598451018333,-0.069784753024578,-0.217017143964767));
res += mul(Get(s2,dx,-dy), float4x4(-0.066542491316795,0.070354431867599,0.074951589107513,0.074523240327835,0.127131000161171,0.127218604087830,-0.038575600832701,-0.002259548520669,-0.019662782549858,-0.045282121747732,-0.073278129100800,-0.038332294672728,0.074701331555843,-0.209090009331703,-0.111636541783810,-0.260061115026474));
res += mul(Get(s2,dx,0), float4x4(-0.092038638889790,0.074458986520767,-0.119975514709949,-0.176715448498726,-0.071295514702797,0.080809757113457,-0.015937220305204,-0.028056716546416,0.017817461863160,0.054461956024170,-0.210421085357666,0.076508380472660,-0.178837269544601,-0.192668154835701,0.035580549389124,0.012227581813931));
res += mul(Get(s2,dx,dy), float4x4(-0.065999962389469,0.165962323546410,-0.047211788594723,0.037498101592064,-0.018768355250359,0.038670428097248,-0.178070157766342,-0.006450697313994,-0.050422940403223,-0.051379479467869,0.095187596976757,-0.007888562045991,-0.066180787980556,-0.435990780591965,0.188366651535034,-0.054661609232426));
res += mul(Get(s3,-dx,-dy), float4x4(0.035770405083895,-0.053121238946915,-0.135902747511864,-0.076656840741634,0.054649148136377,0.036001265048981,-0.077028855681419,0.038979697972536,0.064372211694717,-0.100477188825607,0.143658518791199,0.334156513214111,-0.007282399106771,-0.253036558628082,0.024392671883106,-0.135534331202507));
res += mul(Get(s3,-dx,0), float4x4(0.059368435293436,-0.111341901123524,-0.029034232720733,0.002172963926569,-0.037185929715633,-0.047197781503201,0.343162983655930,-0.121984675526619,-0.051505964249372,0.379761070013046,-0.079530082643032,-0.062554113566875,-0.021534238010645,-0.121407523751259,-0.105161771178246,0.065140053629875));
res += mul(Get(s3,-dx,dy), float4x4(-0.051166012883186,0.181306973099709,-0.083944603800774,0.052895888686180,-0.047369915992022,0.034045230597258,-0.029757190495729,-0.208317860960960,-0.110628664493561,0.242920041084290,0.350399404764175,-0.038991443812847,-0.012556086294353,-0.092544823884964,0.169770076870918,0.054204352200031));
res += mul(Get(s3,0,-dy), float4x4(-0.146020844578743,0.100832052528858,-0.037843540310860,0.171684160828590,0.169441387057304,-0.090126566588879,0.169264286756516,-0.027846084907651,0.235275566577911,-0.275456577539444,0.104546763002872,-0.076596088707447,0.117952316999435,-0.126731544733047,-0.181689262390137,-0.187723204493523));
res += mul(Get(s3,0,0), float4x4(0.253261029720306,-0.004200716037303,0.035221349447966,0.095033869147301,-0.203787267208099,0.073229894042015,0.528447806835175,-0.290963172912598,0.138649150729179,0.496167510747910,-0.588871836662292,-0.263168662786484,0.110265158116817,-0.096220158040524,0.131125241518021,-0.069362796843052));
res += mul(Get(s3,0,dy), float4x4(-0.212937042117119,-0.031082997098565,0.445372641086578,0.152505680918694,-0.034188225865364,-0.064612559974194,0.299004852771759,-0.148504748940468,-0.194087818264961,0.336121499538422,0.182410076260567,-0.401100456714630,0.119866624474525,-0.115490198135376,0.015475342981517,0.000918036093935));
res += mul(Get(s3,dx,-dy), float4x4(0.036677908152342,0.184627190232277,-0.263480842113495,0.168970346450806,0.049987498670816,0.002415088936687,0.113136664032936,0.100106269121170,0.040117435157299,-0.191838443279266,-0.194610327482224,0.133910089731216,-0.352578908205032,-0.128920555114746,0.017488185316324,0.095954701304436));
res += mul(Get(s3,dx,0), float4x4(-0.100720688700676,0.168028622865677,-0.075661763548851,0.123523660004139,-0.298104792833328,0.017945233732462,0.440463989973068,0.072797380387783,0.068532913923264,-0.405484765768051,-0.533883452415466,-0.005637831520289,0.002961560385302,-0.106372520327568,0.104850828647614,-0.062646545469761));
res += mul(Get(s3,dx,dy), float4x4(-0.036895912140608,-0.060575395822525,0.032447211444378,0.045733604580164,-0.026622984558344,-0.233121365308762,0.129345372319221,-0.012967867776752,-0.000532003177796,-0.004994146991521,-0.250109165906906,-0.148260340094566,-0.033458095043898,-0.082185022532940,-0.114855341613293,0.038754694163799));
res += mul(Get(s4,-dx,-dy), float4x4(0.012901642359793,0.124396093189716,0.097144618630409,0.057479199022055,-0.135299980640411,0.181506723165512,-0.172111615538597,0.133084550499916,0.003044928656891,-0.003912314306945,0.010327774100006,0.019605183973908,0.078738927841187,-0.006659000646323,0.086701080203056,-0.087400980293751));
res += mul(Get(s4,-dx,0), float4x4(-0.152793377637863,0.239946335554123,-0.222337067127228,-0.071375355124474,0.127442687749863,0.036381952464581,0.111600995063782,-0.077982269227505,0.114477224647999,0.106301516294479,-0.293584346771240,0.222114592790604,-0.036097478121519,0.063591331243515,0.195076599717140,0.078535676002502));
res += mul(Get(s4,-dx,dy), float4x4(0.079694166779518,-0.074615001678467,0.058430336415768,-0.224257230758667,-0.076325841248035,-0.200239270925522,0.275332689285278,0.051747843623161,-0.022627588361502,-0.011029679328203,-0.094465948641300,0.017520317807794,0.059361372143030,-0.025700349360704,-0.107939712703228,0.027439769357443));
res += mul(Get(s4,0,-dy), float4x4(-0.025008877739310,0.101467490196228,-0.006963299587369,-0.148105993866920,0.326626926660538,-0.228702634572983,-0.155041664838791,0.005457547958940,0.084796711802483,-0.160473763942719,-0.116936899721622,-0.027368851006031,-0.277803868055344,0.008237013593316,0.130946099758148,0.200161874294281));
res += mul(Get(s4,0,0), float4x4(-0.018332034349442,-0.070969939231873,0.161782622337341,0.150112718343735,0.168036743998528,-0.098089210689068,-0.040036942809820,0.059701047837734,-0.335305988788605,0.284009784460068,-0.044686879962683,0.351825773715973,0.031995054334402,0.099596723914146,-0.519608736038208,0.083656579256058));
res += mul(Get(s4,0,dy), float4x4(-0.197738945484161,-0.101889647543430,0.105191811919212,-0.036311849951744,-0.053460776805878,0.165711045265198,0.028773685917258,0.054356783628464,-0.001588394516148,-0.154676422476768,-0.020107086747885,0.011842497624457,0.018505947664380,0.126883924007416,-0.058737453073263,-0.005058142822236));
res += mul(Get(s4,dx,-dy), float4x4(-0.132117941975594,-0.113866917788982,0.042230054736137,0.233542785048485,-0.081031896173954,0.197378754615784,-0.103686995804310,0.139218732714653,0.163074925541878,-0.031931098550558,-0.251253634691238,0.106739863753319,-0.206644296646118,-0.068710595369339,-0.169628381729126,0.013831241056323));
res += mul(Get(s4,dx,0), float4x4(0.015598549507558,-0.052470967173576,0.025280525907874,0.071271695196629,-0.034076258540154,0.172455996274948,-0.087930180132389,0.003990538418293,-0.068938948214054,-0.054749663919210,0.071061432361603,-0.051063161343336,0.256111353635788,-0.056445285677910,-0.235665231943130,-0.092823185026646));
res += mul(Get(s4,dx,dy), float4x4(-0.045000113546848,-0.075680792331696,-0.150480508804321,-0.068172685801983,0.052651818841696,-0.027670513838530,0.029392799362540,0.023933527991176,-0.013111517764628,0.001985553186387,-0.077260673046112,0.102446988224983,0.100694715976715,0.106639705598354,0.133333116769791,-0.116007417440414));
res += mul(Get(s5,-dx,-dy), float4x4(0.124681673943996,-0.060408938676119,0.070453494787216,0.064428396522999,-0.027523584663868,0.001547752995975,-0.164826080203056,-0.057894531637430,-0.062181163579226,-0.131197229027748,0.114919431507587,-0.187486261129379,-0.019954908639193,-0.076888412237167,0.269535511732101,-0.178472086787224));
res += mul(Get(s5,-dx,0), float4x4(-0.004346837289631,0.302606225013733,0.263567328453064,-0.123012587428093,-0.065220735967159,0.055631186813116,0.058578021824360,-0.132517844438553,0.086469538509846,0.082668907940388,-0.352329879999161,-0.150147661566734,-0.063517130911350,0.010509309358895,0.080595023930073,0.032968495041132));
res += mul(Get(s5,-dx,dy), float4x4(-0.065895467996597,0.063686951994896,-0.045297998934984,-0.053579974919558,0.100585505366325,0.050308931618929,-0.190496683120728,-0.065235376358032,0.041165586560965,0.027679806575179,0.144437864422798,0.019005954265594,-0.095416516065598,0.114035330712795,-0.131170153617859,-0.058266889303923));
res += mul(Get(s5,0,-dy), float4x4(0.091261826455593,-0.041975334286690,-0.018103122711182,0.393128126859665,0.130172878503799,-0.013881085440516,-0.068606689572334,-0.253401100635529,-0.351817458868027,0.103144489228725,0.324661374092102,-0.103175505995750,0.003051178064197,0.166548073291779,0.034389235079288,0.285894989967346));
res += mul(Get(s5,0,0), float4x4(0.054585997015238,0.249362140893936,-0.464594662189484,-0.237858965992928,0.061561476439238,-0.098038360476494,0.069499716162682,0.002757511567324,0.107900902628899,-0.154708191752434,-0.097986564040184,-0.072995439171791,-0.038694728165865,-0.134036615490913,-0.139807447791100,0.018288984894753));
res += mul(Get(s5,0,dy), float4x4(-0.063172869384289,-0.108615443110466,0.029531463980675,0.014763082377613,-0.025622092187405,0.068271659314632,0.081329204142094,-0.168778210878372,-0.125663354992867,0.025394808501005,-0.059392530471087,-0.100084543228149,-0.109368085861206,0.367157131433487,0.154179111123085,0.193600922822952));
res += mul(Get(s5,dx,-dy), float4x4(0.020408121868968,0.072706028819084,-0.167778134346008,0.111369676887989,0.192904442548752,-0.208025857806206,-0.324515223503113,-0.399437993764877,0.136156573891640,-0.176007851958275,-0.047815941274166,0.136652857065201,-0.020264163613319,0.110720619559288,-0.299138486385345,-0.160799205303192));
res += mul(Get(s5,dx,0), float4x4(-0.090287514030933,0.065903045237064,-0.048707373440266,0.042165763676167,-0.107703544199467,-0.166017785668373,-0.368973731994629,-0.039217334240675,0.145552664995193,-0.187440797686577,0.084709532558918,-0.033754114061594,0.286862492561340,0.038735143840313,-0.280079275369644,0.106609590351582));
res += mul(Get(s5,dx,dy), float4x4(0.079494677484035,0.055252529680729,0.122231394052505,-0.009143508970737,-0.065600708127022,0.027786348015070,0.072309754788876,-0.019109260290861,-0.011660998687148,-0.134341314435005,0.096294112503529,0.021291570737958,-0.068973384797573,0.248062089085579,-0.022390345111489,-0.105951115489006));
res = max(float4(0, 0, 0, 0), res) + float4(-0.185160458087921,0.117431752383709,0.114386171102524,0.138858512043953) * min(float4(0, 0, 0, 0), res);
return res;
}
