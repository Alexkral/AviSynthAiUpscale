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
float4 res = float4(0.032848905771971,-0.125867381691933,-0.220014974474907,0.047394298017025);
res += mul(Get(s0,-dx,-dy), float4x4(-0.106404013931751,-0.151686638593674,-0.039528109133244,0.026730647310615,0.039279785007238,-0.075065992772579,-0.122748263180256,-0.221108883619308,-0.111019589006901,-0.000338422250934,-0.111382983624935,0.403422892093658,0.083457320928574,-0.040827203541994,-0.001763005391695,0.020403081551194));
res += mul(Get(s0,-dx,0), float4x4(0.028395321220160,-0.189385473728180,0.150043696165085,0.172629609704018,-0.059151671826839,0.011379320174456,-0.013428579084575,0.012897022068501,-0.037243578583002,0.011354803107679,-0.030360033735633,-0.148696586489677,0.010295607149601,0.068267956376076,0.009933517314494,0.008915184065700));
res += mul(Get(s0,-dx,dy), float4x4(0.019238896667957,-0.038780812174082,-0.050575550645590,-0.020877027884126,0.046409338712692,-0.010784901678562,-0.112507671117783,-0.115551643073559,0.037710145115852,0.036122836172581,0.033196248114109,-0.125787332653999,-0.159588634967804,-0.061506625264883,-0.023863291367888,0.042071200907230));
res += mul(Get(s0,0,-dy), float4x4(-0.113771982491016,-0.146438926458359,-0.078692190349102,-0.185163274407387,-0.175622478127480,0.122104160487652,-0.023451054468751,0.094191469252110,0.082384578883648,0.007023485377431,-0.122036829590797,-0.008416954427958,0.086519405245781,0.055637534707785,0.200593501329422,0.060360487550497));
res += mul(Get(s0,0,0), float4x4(0.097954809665680,-0.055855911225080,0.073227033019066,0.037442076951265,-0.232301041483879,0.058198437094688,0.151272535324097,0.139978408813477,0.080093607306480,-0.116263367235661,0.100820183753967,0.018036885187030,-0.001791486633010,0.045315131545067,-0.012502253986895,0.022370794788003));
res += mul(Get(s0,0,dy), float4x4(-0.019658623263240,-0.058296222239733,0.085969075560570,0.054753094911575,0.036570154130459,0.051182772964239,-0.086967468261719,0.043129496276379,-0.011717746034265,0.058045446872711,0.034717522561550,-0.057904630899429,-0.129283905029297,-0.019264120608568,-0.020912684500217,0.008390115574002));
res += mul(Get(s0,dx,-dy), float4x4(-0.047334037721157,-0.014045623131096,-0.018502874299884,-0.062830612063408,-0.008475243113935,0.073190599679947,-0.092288136482239,0.032278865575790,0.050995294004679,0.040851291269064,0.050637613981962,-0.180067673325539,0.066336490213871,-0.065474413335323,0.120927311480045,-0.025363208726048));
res += mul(Get(s0,dx,0), float4x4(-0.034183401614428,-0.061471581459045,0.069295935332775,0.007967321202159,-0.077716119587421,0.144978538155556,0.105889789760113,0.015113828703761,-0.147433444857597,0.071793735027313,-0.055626183748245,-0.010718609206378,0.031053699553013,0.004661833401769,0.053172670304775,-0.016015242785215));
res += mul(Get(s0,dx,dy), float4x4(-0.049167908728123,0.068289011716843,-0.050860427320004,-0.020258666947484,0.027870388701558,0.029631854966283,-0.058342143893242,-0.015249189920723,0.023503774777055,-0.064790301024914,0.175228029489517,0.155524790287018,-0.063984379172325,-0.068250812590122,0.022859739139676,-0.022721415385604));
res += mul(Get(s1,-dx,-dy), float4x4(-0.033038206398487,-0.139360100030899,0.012674369849265,-0.101145476102829,-0.000287597737042,-0.048313342034817,-0.139480471611023,-0.464478731155396,0.075017660856247,0.051642742007971,0.062751121819019,0.222579926252365,0.021121907979250,-0.002622935222462,0.001369489124045,-0.237115278840065));
res += mul(Get(s1,-dx,0), float4x4(-0.003899242728949,0.024860650300980,0.153560504317284,0.158316269516945,-0.113639518618584,-0.029802817851305,0.046212691813707,0.147358387708664,0.084555849432945,0.064756527543068,-0.041666962206364,-0.038810975849628,0.053130123764277,0.015688166022301,0.037826545536518,-0.248707726597786));
res += mul(Get(s1,-dx,dy), float4x4(0.030305407941341,0.159240737557411,0.095507211983204,-0.064259462058544,-0.052606869488955,-0.049497000873089,0.023620301857591,-0.088816404342651,0.151595309376717,-0.040991012006998,-0.049136228859425,-0.093265891075134,-0.071659632027149,-0.009854746051133,-0.082134909927845,-0.061640787869692));
res += mul(Get(s1,0,-dy), float4x4(0.168728485703468,-0.252227574586868,0.048749331384897,-0.056687310338020,0.048626370728016,0.070659041404724,-0.067720457911491,-0.176225557923317,0.010602202266455,0.051703535020351,0.086553059518337,0.079720765352249,-0.016169425100088,-0.022540103644133,0.033048469573259,0.007478761486709));
res += mul(Get(s1,0,0), float4x4(-0.042269591242075,0.190940573811531,0.010181560181081,0.108642026782036,0.054019469767809,-0.288863986730576,0.270535230636597,-0.354668051004410,0.148236423730850,-0.041866715997458,-0.068319261074066,0.024970756843686,0.008109341375530,-0.223959848284721,0.104558281600475,-0.014708817005157));
res += mul(Get(s1,0,dy), float4x4(0.000780502101406,0.570861518383026,-0.001977729843929,-0.013897286728024,0.044764954596758,0.087692208588123,-0.044929616153240,0.093777835369110,0.107044495642185,0.029115233570337,-0.059226375073195,-0.130647599697113,-0.078580662608147,-0.179476916790009,-0.061854198575020,-0.095814093947411));
res += mul(Get(s1,dx,-dy), float4x4(0.053678125143051,-0.180263459682465,-0.008024147711694,0.060005489736795,-0.024302292615175,-0.001196118653752,-0.060837756842375,-0.233273640275002,0.071538962423801,-0.041194651275873,0.036833863705397,0.032887946814299,0.040105015039444,-0.026560774073005,-0.014454912394285,-0.089081145823002));
res += mul(Get(s1,dx,0), float4x4(-0.003848293097690,-0.082140289247036,-0.008502695709467,-0.101790644228458,-0.117957860231400,-0.157580465078354,-0.117233589291573,-0.145618110895157,-0.016865968704224,-0.081829860806465,0.011060205288231,0.004281278233975,0.048265472054482,-0.092570684850216,0.079980231821537,-0.009842454455793));
res += mul(Get(s1,dx,dy), float4x4(-0.035098232328892,-0.343316227197647,-0.016286127269268,-0.011903910897672,-0.105057515203953,-0.035699870437384,0.129775285720825,0.039579689502716,-0.018075179308653,0.008711926639080,-0.049120537936687,-0.059362579137087,-0.100741945207119,-0.053408708423376,-0.113053128123283,-0.081682667136192));
res += mul(Get(s2,-dx,-dy), float4x4(-0.061692103743553,0.023937625810504,0.015420713461936,-0.021745942533016,-0.005129499360919,-0.013105222024024,-0.097790226340294,-0.149118378758430,0.017987398430705,-0.033565901219845,-0.053740054368973,0.001939074601978,-0.015328772366047,0.060616735368967,0.016007380560040,0.021993570029736));
res += mul(Get(s2,-dx,0), float4x4(0.046877861022949,-0.029409928247333,0.036363914608955,0.127192050218582,0.036152012646198,0.044238138943911,-0.120463855564594,-0.037995480000973,-0.016114262863994,-0.098692193627357,0.101812832057476,-0.022997649386525,0.021399844437838,0.041086353361607,-0.100619964301586,-0.153127491474152));
res += mul(Get(s2,-dx,dy), float4x4(0.062228098511696,-0.015748716890812,-0.011820879764855,0.075143463909626,-0.053408734500408,-0.007101432420313,0.055072013288736,0.271497726440430,0.055287260562181,0.025098575279117,-0.009417829103768,-0.165454357862473,-0.003914595115930,0.097882144153118,0.103509783744812,-0.108173169195652));
res += mul(Get(s2,0,-dy), float4x4(0.034308753907681,0.017424644902349,0.041868310421705,0.100909754633904,-0.032785926014185,-0.097361467778683,-0.043824486434460,-0.188532799482346,-0.073987342417240,0.091799810528755,-0.036789171397686,-0.106619067490101,0.043371271342039,0.143432468175888,0.157941132783890,0.063078358769417));
res += mul(Get(s2,0,0), float4x4(0.161964178085327,0.090624950826168,0.090687170624733,0.162337958812714,0.008744453079998,-0.111110769212246,-0.226954460144043,-0.439559191465378,0.001736383652315,-0.118370272219181,0.093653909862041,0.028313478454947,0.070675186812878,-0.066195778548717,0.098700448870659,-0.059060964733362));
res += mul(Get(s2,0,dy), float4x4(0.117367349565029,0.037051405757666,0.033047631382942,-0.027568427845836,0.259420394897461,0.002508674981073,-0.119872808456421,0.019631464034319,0.000632996961940,0.093288764357567,0.044706776738167,0.080182902514935,0.040507800877094,0.163709327578545,0.119849078357220,-0.063912898302078));
res += mul(Get(s2,dx,-dy), float4x4(-0.013303228653967,0.043930634856224,0.045415800064802,0.165768653154373,0.009786741808057,0.073626086115837,0.044442974030972,0.108502164483070,0.005209940019995,-0.025940945371985,-0.055552460253239,-0.072996698319912,-0.011566884815693,-0.029962206259370,0.085527651011944,0.117933817207813));
res += mul(Get(s2,dx,0), float4x4(0.043262027204037,0.039637617766857,0.101324535906315,0.006673248484731,0.110452957451344,0.106891766190529,-0.051996111869812,-0.078219659626484,0.046242967247963,-0.018706325441599,0.039045538753271,0.043886940926313,0.122501470148563,0.049357227981091,-0.088892079889774,-0.123188622295856));
res += mul(Get(s2,dx,dy), float4x4(-0.016677176579833,0.095552511513233,-0.060526385903358,-0.148238882422447,-0.041960500180721,-0.142022907733917,-0.009153322316706,-0.013952624984086,-0.014811460860074,-0.029541939496994,0.141566768288612,0.014258588664234,0.069643028080463,0.016111779958010,0.040140785276890,0.003064520657063));
res += mul(Get(s3,-dx,-dy), float4x4(-0.141121447086334,0.069007508456707,-0.167638614773750,-0.067952618002892,-0.013300262391567,0.050193622708321,-0.029257766902447,-0.012290025129914,0.011332634836435,0.023307988420129,-0.197931185364723,0.055028043687344,-0.030745452269912,-0.059310834854841,-0.044980660080910,0.066765964031219));
res += mul(Get(s3,-dx,0), float4x4(0.284552097320557,0.017199136316776,0.144083529710770,0.193739309906960,-0.009456794708967,-0.021658757701516,0.338947415351868,0.000221581809456,-0.103871598839760,0.127721354365349,-0.148822665214539,-0.203333541750908,-0.165592804551125,-0.042997267097235,-0.080222673714161,0.156393930315971));
res += mul(Get(s3,-dx,dy), float4x4(-0.165433004498482,0.003450569696724,-0.194205641746521,-0.021527992561460,0.045377422124147,-0.115012958645821,-0.007777129765600,-0.051406078040600,-0.014239931479096,-0.011140963993967,0.015601663850248,0.036686338484287,-0.012114731594920,0.017874712124467,-0.080772660672665,-0.075835108757019));
res += mul(Get(s3,0,-dy), float4x4(-0.072574973106384,0.089362382888794,0.139346122741699,-0.148072257637978,-0.185018703341484,-0.251118749380112,0.009856257587671,-0.009022387675941,0.171781048178673,0.030099628493190,-0.009934423491359,-0.129356488585472,-0.013970275409520,0.030925519764423,-0.026199057698250,0.087494485080242));
res += mul(Get(s3,0,0), float4x4(-0.240580990910530,-0.139994457364082,0.115229986608028,-0.069314621388912,-0.031444981694221,-0.458451867103577,-0.163753867149353,0.067499823868275,0.204611793160439,0.262395918369293,0.220089942216873,0.109226964414120,0.090204209089279,0.040894418954849,0.006409873254597,0.142555341124535));
res += mul(Get(s3,0,dy), float4x4(0.178616598248482,0.023278467357159,0.051113944500685,0.156852945685387,0.387204617261887,-0.298427850008011,-0.141640737652779,-0.020030084997416,-0.341128677129745,-0.149000987410545,0.175170361995697,-0.089301399886608,0.072329871356487,-0.083021484315395,0.034501165151596,0.061141628772020));
res += mul(Get(s3,dx,-dy), float4x4(-0.000953493756242,-0.078525170683861,-0.195269793272018,-0.011666718870401,-0.063328407704830,-0.117664873600006,0.127732351422310,0.068279899656773,0.050423648208380,-0.037390604615211,-0.026853883638978,0.023334665223956,0.027464926242828,0.051082443445921,-0.028539637103677,-0.154789686203003));
res += mul(Get(s3,dx,0), float4x4(-0.102576956152916,-0.050015747547150,0.113335356116295,-0.106666475534439,-0.083097122609615,-0.255897670984268,0.006985569838434,-0.020135385915637,-0.057715456932783,-0.008502406999469,0.260742276906967,0.026667926460505,-0.061384484171867,-0.043524961918592,0.173353210091591,-0.124763786792755));
res += mul(Get(s3,dx,dy), float4x4(-0.002311360090971,-0.020697003230453,0.032248131930828,-0.017407406121492,0.060503784567118,-0.252020001411438,0.059393148869276,0.037035357207060,-0.028448816388845,-0.016640558838844,0.041711572557688,0.083251044154167,0.045109901577234,-0.118181414902210,-0.068342544138432,-0.027949199080467));
res += mul(Get(s4,-dx,-dy), float4x4(0.015158298425376,-0.008379282429814,-0.106511309742928,0.194762140512466,0.101995624601841,0.056166280061007,-0.138407751917839,-0.322873175144196,0.023425837978721,-0.032979138195515,-0.030377674847841,-0.136750042438507,-0.008014492690563,0.039663195610046,0.132390111684799,-0.216599419713020));
res += mul(Get(s4,-dx,0), float4x4(0.013210563920438,0.111949108541012,-0.031410574913025,0.229053333401680,0.007513113785535,-0.225575760006905,-0.051897265017033,0.223478451371193,-0.089717790484428,-0.063698604702950,-0.054072175174952,0.028004657477140,-0.036889873445034,-0.034776516258717,0.098925545811653,-0.449676781892776));
res += mul(Get(s4,-dx,dy), float4x4(0.036470495164394,0.077008083462715,0.012925738468766,-0.101382330060005,0.027893971651793,-0.026198294013739,-0.168317824602127,0.058886937797070,0.012431392446160,0.020171169191599,0.091621838510036,0.173836767673492,0.035293776541948,0.057488556951284,-0.042495071887970,-0.022026924416423));
res += mul(Get(s4,0,-dy), float4x4(0.060314372181892,-0.108637884259224,-0.054227422922850,-0.053146094083786,0.096638567745686,-0.244624659419060,0.066023431718349,-0.157235696911812,-0.123911291360855,-0.029785636812449,0.014242646284401,-0.057519260793924,0.043586768209934,0.055903613567352,0.018623737618327,-0.235442519187927));
res += mul(Get(s4,0,0), float4x4(-0.059697836637497,0.165063500404358,0.139526337385178,0.193708017468452,-0.194713279604912,-0.393154293298721,-0.052857205271721,-0.055278796702623,0.030005361884832,-0.037480618804693,-0.005676717497408,0.019862188026309,-0.109172284603119,0.090483747422695,-0.017572073265910,-0.247139990329742));
res += mul(Get(s4,0,dy), float4x4(0.131049692630768,0.191210910677910,-0.006636046338826,0.016324976459146,0.210790663957596,0.038359392434359,-0.055566802620888,0.045384183526039,0.085511684417725,0.030021779239178,0.052229803055525,-0.123039916157722,-0.221017226576805,-0.013739307411015,0.119982838630676,-0.072038494050503));
res += mul(Get(s4,dx,-dy), float4x4(0.050090800970793,-0.083702176809311,0.013483196496964,-0.276859968900681,0.038275454193354,-0.072961390018463,0.040083002299070,0.056814175099134,0.013240380212665,-0.034213047474623,0.019103752449155,0.209382086992264,-0.016947181895375,0.036891739815474,0.032740633934736,0.355627804994583));
res += mul(Get(s4,dx,0), float4x4(-0.240786254405975,-0.185987800359726,-0.073066264390945,-0.151320606470108,-0.104599215090275,-0.015797611325979,-0.080063030123711,-0.059478521347046,-0.002145806327462,0.128046646714211,-0.022263325750828,-0.028900386765599,0.100708574056625,0.170136287808418,0.010683313943446,0.176933631300926));
res += mul(Get(s4,dx,dy), float4x4(0.349452883005142,-0.073975056409836,-0.138711869716644,0.126867875456810,0.011729673482478,0.006211319938302,0.000669078959618,0.005238667130470,-0.073493242263794,0.027296118438244,0.027429325506091,-0.136540710926056,0.058017536997795,0.086206346750259,0.049982167780399,-0.064727105200291));
res += mul(Get(s5,-dx,-dy), float4x4(0.084619946777821,0.109384350478649,0.415727525949478,-0.045667648315430,-0.052122253924608,0.014447295106947,-0.102948904037476,-0.017773300409317,-0.083606630563736,-0.059590749442577,-0.040200483053923,0.003083626972511,-0.056324601173401,-0.015537281520665,0.064167864620686,-0.012891453690827));
res += mul(Get(s5,-dx,0), float4x4(-0.206626415252686,0.097333319485188,0.273953109979630,0.009844101965427,-0.012488259933889,0.044827505946159,-0.028032813221216,0.199778810143471,-0.015626352280378,-0.092203922569752,0.043165922164917,-0.061612904071808,0.090334117412567,-0.028920652344823,0.239275813102722,-0.016224741935730));
res += mul(Get(s5,-dx,dy), float4x4(0.006026506423950,-0.012987552210689,-0.143104881048203,0.037389770150185,-0.116883166134357,0.013786456547678,-0.093168184161186,0.251152932643890,0.094655178487301,0.044110078364611,-0.016539329662919,0.060846228152514,0.060480419546366,0.058121837675571,0.078707985579967,0.111495278775692));
res += mul(Get(s5,0,-dy), float4x4(-0.172276169061661,-0.125976279377937,-0.130277425050735,-0.023615777492523,0.025496890768409,0.194706827402115,0.042428437620401,-0.292982250452042,-0.015484830364585,-0.027890874072909,0.092823021113873,-0.086344800889492,-0.046603675931692,0.047597128897905,0.184851780533791,-0.014971952885389));
res += mul(Get(s5,0,0), float4x4(0.369270890951157,0.003772842232138,0.131841421127319,-0.156030863523483,-0.208285242319107,-0.308401167392731,0.013700037263334,0.178240150213242,-0.176939293742180,0.019031153991818,0.136100307106972,-0.133224457502365,-0.104082241654396,-0.150115787982941,-0.138225987553596,-0.219617769122124));
res += mul(Get(s5,0,dy), float4x4(0.047475907951593,0.025550814345479,-0.027984535321593,0.037096645683050,0.237716510891914,0.151716724038124,-0.015317822806537,0.107063978910446,0.168420642614365,0.073227502405643,-0.082285560667515,0.126047998666763,0.093886606395245,0.010281762108207,0.226934328675270,0.272280931472778));
res += mul(Get(s5,dx,-dy), float4x4(-0.011185330338776,0.054328799247742,-0.137020915746689,0.156601265072823,-0.034177556633949,-0.027607411146164,0.073814369738102,-0.204455837607384,0.063145555555820,0.010211708955467,-0.030618777498603,0.052578356117010,-0.049848623573780,0.161313235759735,0.000838298350573,0.184912502765656));
res += mul(Get(s5,dx,0), float4x4(0.129869639873505,-0.003171608783305,-0.014774007722735,-0.028777554631233,-0.136111453175545,0.059178713709116,0.043536841869354,-0.122839115560055,-0.007101113442332,-0.062869384884834,-0.060911618173122,-0.073695734143257,-0.091929011046886,0.089888945221901,0.160467237234116,-0.046810846775770));
res += mul(Get(s5,dx,dy), float4x4(0.024700984358788,0.005504502914846,-0.036138456314802,-0.064161568880081,0.067705713212490,0.029860381036997,-0.050919994711876,0.080253422260284,0.130913153290749,0.038288932293653,0.015666889026761,0.092372246086597,0.002070628572255,0.103609628975391,0.156736761331558,-0.054268680512905));
res = max(float4(0, 0, 0, 0), res) + float4(0.437587618827820,-0.042862545698881,0.019133809953928,-0.208920866250992) * min(float4(0, 0, 0, 0), res);
return res;
}