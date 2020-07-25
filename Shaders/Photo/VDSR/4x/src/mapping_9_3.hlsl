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
res += mul(Get(s0,-dx,-dy), float4x4(-0.023844821378589,-0.085309825837612,0.091924890875816,0.107097618281841,-0.094663940370083,-0.083416730165482,0.028298350051045,0.112194009125233,0.075480014085770,0.028928078711033,0.373251199722290,0.050197407603264,0.155469745397568,0.084374308586121,0.070760220289230,-0.071265920996666));
res += mul(Get(s0,-dx,0), float4x4(-0.038503121584654,-0.048237647861242,-0.080296799540520,0.001500229467638,-0.021311277523637,0.071175672113895,0.047223132103682,-0.095045372843742,0.092808872461319,0.151643887162209,0.136662468314171,-0.151704475283623,0.011280295439065,0.019517935812473,-0.045565530657768,-0.035526271909475));
res += mul(Get(s0,-dx,dy), float4x4(-0.068801760673523,0.058783721178770,0.058925118297338,0.045661322772503,0.017121663317084,0.075701586902142,-0.036749035120010,-0.006338900420815,0.167765229940414,-0.208175480365753,0.100719310343266,0.172470360994339,0.101258881390095,0.065485723316669,-0.116304598748684,-0.146897733211517));
res += mul(Get(s0,0,-dy), float4x4(0.106803379952908,-0.002852061530575,-0.216741830110550,0.133949220180511,-0.012919271364808,-0.091880612075329,0.140822708606720,-0.046127311885357,0.044452343136072,0.091702058911324,0.012051952071488,0.115953490138054,0.124430999159813,0.112855680286884,0.158997535705566,-0.048808220773935));
res += mul(Get(s0,0,0), float4x4(-0.134171128273010,0.026998374611139,0.228287577629089,0.034708999097347,0.062906391918659,-0.027884526178241,-0.003665023948997,-0.046315457671881,-0.068880125880241,-0.194290712475777,-0.225713714957237,0.119227573275566,-0.101903989911079,-0.047038059681654,-0.182820215821266,-0.032133061438799));
res += mul(Get(s0,0,dy), float4x4(-0.068386293947697,-0.034401465207338,0.085365071892738,-0.336731672286987,-0.016685802489519,-0.077549107372761,0.049646563827991,0.055447585880756,0.063862711191177,0.078842468559742,-0.102518141269684,-0.091806180775166,0.069691821932793,0.102396227419376,-0.369110345840454,-0.052811902016401));
res += mul(Get(s0,dx,-dy), float4x4(-0.021733967587352,-0.039240032434464,-0.300471663475037,-0.129867270588875,-0.113862708210945,-0.053320221602917,0.106029026210308,-0.019182527437806,0.078019499778748,-0.253864407539368,0.017604537308216,-0.009632976725698,0.074026681482792,0.051312431693077,0.218809276819229,-0.045204889029264));
res += mul(Get(s0,dx,0), float4x4(-0.072107307612896,0.005966580938548,-0.105350144207478,-0.036684121936560,0.209367260336876,0.122404150664806,-0.113947026431561,0.070866890251637,-0.023003855720162,-0.180644080042839,-0.049100939184427,0.010046253912151,-0.006271584890783,0.216794610023499,-0.068289846181870,0.165769562125206));
res += mul(Get(s0,dx,dy), float4x4(-0.013916262425482,-0.155279189348221,-0.091855607926846,-0.085307054221630,0.004917692858726,0.043735098093748,0.207280799746513,-0.083777591586113,0.010109459050000,-0.114570617675781,-0.011337462812662,-0.053937774151564,-0.031656425446272,-0.139483973383904,-0.086437709629536,-0.031305518001318));
res += mul(Get(s1,-dx,-dy), float4x4(-0.098208002746105,0.014656107872725,0.045605935156345,-0.157496437430382,0.225743085145950,-0.077446676790714,-0.252119362354279,0.249200314283371,-0.009220427833498,0.071098349988461,-0.000990476575680,0.018074547871947,0.069085098803043,0.184692025184631,-0.049154814332724,-0.123758099973202));
res += mul(Get(s1,-dx,0), float4x4(-0.164469093084335,0.020797174423933,0.119927383959293,0.082869157195091,-0.127896904945374,0.010453939437866,-0.042696245014668,0.219802334904671,-0.028173219412565,-0.056535672396421,0.048395607620478,-0.066380187869072,-0.019853664562106,-0.025609083473682,0.105945490300655,0.071196831762791));
res += mul(Get(s1,-dx,dy), float4x4(-0.051107179373503,0.002126441802830,0.027672577649355,-0.046621214598417,-0.057962082326412,0.206950217485428,0.006114434450865,-0.140169665217400,-0.058279987424612,0.150871410965919,0.196192443370819,0.084084652364254,0.133774444460869,0.007608943153173,0.073518835008144,0.096076637506485));
res += mul(Get(s1,0,-dy), float4x4(-0.028752045705914,0.110723681747913,0.117598295211792,0.045719519257545,-0.023675471544266,0.163780823349953,0.027978641912341,0.056060999631882,0.153426170349121,0.255130559206009,0.144645377993584,-0.003499130019918,-0.008831182494760,-0.030497131869197,-0.060349691659212,-0.100592948496342));
res += mul(Get(s1,0,0), float4x4(0.132399484515190,-0.016738576814532,-0.118080526590347,0.059643998742104,-0.040083315223455,0.097652710974216,-0.031152898445725,-0.249551534652710,0.135917931795120,0.008151654154062,-0.071793690323830,0.065074563026428,0.050493903458118,0.306730836629868,-0.277936041355133,0.063272193074226));
res += mul(Get(s1,0,dy), float4x4(0.009610231034458,-0.142787665128708,0.002547705778852,0.190390303730965,-0.153198838233948,-0.093641750514507,-0.063322693109512,-0.033602647483349,-0.183956384658813,-0.128591224551201,0.037553746253252,-0.013138347305357,-0.015411824919283,0.020095670595765,0.111148521304131,0.100345678627491));
res += mul(Get(s1,dx,-dy), float4x4(0.096693627536297,0.015468320809305,-0.219031408429146,-0.052547972649336,0.076937220990658,-0.079622238874435,0.021842774003744,-0.003718178952113,0.041673079133034,0.039393354207277,0.159477680921555,0.031078213825822,0.002768236910924,-0.204872503876686,-0.044674798846245,-0.082621954381466));
res += mul(Get(s1,dx,0), float4x4(0.232278913259506,-0.045048695057631,-0.020512817427516,0.085228249430656,0.083083584904671,-0.045717954635620,0.088252440094948,0.140086993575096,0.261702448129654,0.119890250265598,-0.076616011559963,-0.181584715843201,-0.151490226387978,0.006150984205306,0.119940333068371,0.140633046627045));
res += mul(Get(s1,dx,dy), float4x4(-0.016151547431946,-0.109326176345348,0.069829657673836,0.136526897549629,0.024164570495486,-0.125853732228279,-0.174539104104042,0.130725711584091,0.096296072006226,0.236431881785393,0.082869052886963,0.034695170819759,0.126917690038681,0.178448185324669,0.029563846066594,-0.117287322878838));
res += mul(Get(s2,-dx,-dy), float4x4(0.028472542762756,0.066839136183262,0.080479599535465,0.064911596477032,-0.108902767300606,-0.009991680271924,0.011586091481149,-0.188665643334389,-0.101330861449242,0.092672057449818,0.217384040355682,0.053087372332811,-0.061320036649704,0.011625825427473,0.097855590283871,-0.020058020949364));
res += mul(Get(s2,-dx,0), float4x4(0.016853215172887,0.063309349119663,-0.069218695163727,-0.079031407833099,0.000809008139186,0.022718872874975,0.064893037080765,0.020750302821398,0.020123673602939,-0.015349001623690,0.104281835258007,0.048453584313393,-0.004544673487544,-0.010478504002094,0.026619555428624,-0.040433332324028));
res += mul(Get(s2,-dx,dy), float4x4(-0.263369321823120,0.132913842797279,-0.044003024697304,-0.123333804309368,-0.008329387754202,-0.039339177310467,-0.017654217779636,0.004739600233734,-0.036224145442247,0.041532762348652,-0.074379414319992,-0.029401505365968,0.062538340687752,-0.201928690075874,0.044612746685743,0.024415979161859));
res += mul(Get(s2,0,-dy), float4x4(0.046182546764612,-0.202813372015953,0.071561902761459,0.058658234775066,0.041807420551777,0.087183699011803,0.043357718735933,0.104184374213219,-0.070948116481304,0.181731253862381,0.184231162071228,0.093848772346973,-0.102953478693962,0.051199171692133,0.044710975140333,0.137209668755531));
res += mul(Get(s2,0,0), float4x4(-0.032446514815092,0.063788086175919,0.097268767654896,-0.045164730399847,-0.129403561353683,0.042342800647020,-0.118987292051315,0.300752997398376,-0.138649538159370,-0.294769167900085,0.058112688362598,-0.015632703900337,0.067238382995129,0.114041991531849,-0.025368547067046,-0.101169511675835));
res += mul(Get(s2,0,dy), float4x4(0.233969166874886,-0.105988301336765,-0.043612193316221,0.080267064273357,0.060938596725464,0.120722420513630,0.028216065838933,-0.090765915811062,-0.099894195795059,0.150829628109932,-0.082151189446449,0.014740730635822,-0.010065777227283,-0.148151889443398,0.056738041341305,0.039263579994440));
res += mul(Get(s2,dx,-dy), float4x4(-0.124967113137245,-0.160672232508659,0.055364541709423,-0.078712224960327,0.063759930431843,-0.193708613514900,-0.057476930320263,0.141689866781235,-0.086969435214996,0.092100776731968,-0.024188822135329,-0.011046812869608,0.206461399793625,-0.097523741424084,0.111702151596546,-0.012801980599761));
res += mul(Get(s2,dx,0), float4x4(0.053078122437000,-0.035992059856653,0.010264101438224,-0.114869870245457,0.002679956611246,-0.100466795265675,-0.009091798216105,0.187458172440529,-0.086849495768547,0.171965673565865,-0.173454046249390,0.025198606774211,0.096030451357365,-0.057640895247459,0.071665078401566,-0.060378909111023));
res += mul(Get(s2,dx,dy), float4x4(-0.075186908245087,-0.025410411879420,0.203899115324020,-0.071256697177887,0.169272437691689,0.004378957208246,-0.101309426128864,-0.208716660737991,-0.093093439936638,0.082527451217175,-0.126615703105927,-0.094969294965267,-0.106984540820122,0.077682711184025,0.043401233851910,-0.099233455955982));
res += mul(Get(s3,-dx,-dy), float4x4(0.158230200409889,-0.100113816559315,0.170893102884293,-0.065935775637627,-0.230583518743515,-0.032372027635574,-0.038433916866779,0.039458692073822,-0.049089495092630,-0.186091214418411,-0.089236527681351,0.103962287306786,0.025643577799201,-0.009126712568104,-0.064919337630272,-0.078426808118820));
res += mul(Get(s3,-dx,0), float4x4(-0.159637242555618,-0.232343643903732,-0.103085517883301,-0.081736087799072,-0.087009266018867,0.231132537126541,0.097376450896263,0.065770529210567,-0.167129993438721,-0.005539156030864,-0.089792527258396,-0.037266757339239,-0.071061089634895,-0.061763197183609,0.024243924766779,-0.198225900530815));
res += mul(Get(s3,-dx,dy), float4x4(-0.071986153721809,-0.184559777379036,0.049957506358624,0.081330604851246,0.100656069815159,-0.115098536014557,-0.010571342892945,-0.164791643619537,0.030284035950899,-0.113359451293945,-0.141310915350914,-0.040721375495195,-0.010223963297904,-0.230488270521164,0.012608292512596,-0.123687528073788));
res += mul(Get(s3,0,-dy), float4x4(0.126677989959717,-0.165861219167709,0.193988755345345,0.101244904100895,-0.063099086284637,0.115122877061367,-0.044030643999577,0.101117402315140,0.042991522699594,0.039325363934040,0.086084403097630,0.099215954542160,-0.045248124748468,0.088692143559456,-0.078520543873310,-0.125408709049225));
res += mul(Get(s3,0,0), float4x4(-0.011200584471226,-0.062821000814438,-0.040336001664400,-0.147301957011223,0.004302791319788,0.078194506466389,0.017182782292366,-0.043206486850977,0.087999194860458,-0.180122569203377,0.053287826478481,0.025773435831070,-0.101296901702881,0.193620786070824,0.068146698176861,-0.159388080239296));
res += mul(Get(s3,0,dy), float4x4(0.003671195358038,0.022944742813706,-0.144927799701691,0.213644728064537,0.296510428190231,-0.029747180640697,0.133829414844513,-0.011353949084878,-0.025800591334701,-0.047004092484713,0.061791554093361,-0.143742680549622,-0.015516093000770,0.034703068435192,0.009776294231415,0.154200449585915));
res += mul(Get(s3,dx,-dy), float4x4(-0.079539112746716,0.033497940748930,0.054330185055733,-0.110343933105469,0.100253961980343,0.134708762168884,-0.151731356978416,0.010361080057919,-0.153121218085289,-0.113847814500332,-0.102534100413322,-0.068738736212254,-0.140117287635803,-0.007479759864509,0.245176076889038,-0.032316356897354));
res += mul(Get(s3,dx,0), float4x4(-0.008814971894026,-0.003085690550506,0.047888968139887,-0.035691834986210,0.156474664807320,-0.085496202111244,-0.083925962448120,-0.025326272472739,0.008679323829710,0.095564581453800,0.006847041659057,-0.172335088253021,-0.011529893614352,0.265273720026016,0.256131678819656,0.111028194427490));
res += mul(Get(s3,dx,dy), float4x4(0.009895351715386,-0.039404153823853,-0.134178623557091,0.133194923400879,0.214555844664574,0.066723406314850,-0.222780242562294,-0.117650270462036,-0.207523822784424,0.079256258904934,-0.134307354688644,0.288296103477478,-0.131451502442360,-0.204325214028358,0.103924393653870,0.054236337542534));
return max(float4(0,0,0,0), res);
}
