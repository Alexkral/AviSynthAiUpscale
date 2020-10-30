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
res += mul(Get(s0,-dx,-dy), float4x4(-0.026528533548117,-0.050135396420956,-0.048939809203148,0.111159421503544,-0.046125113964081,-0.082090578973293,-0.114948384463787,-0.084364660084248,-0.021724896505475,0.084208339452744,-0.013459935784340,0.066806815564632,0.065528221428394,0.001374764833599,-0.024784633889794,-0.005218463484198));
res += mul(Get(s0,-dx,0), float4x4(0.005972739774734,0.077447474002838,-0.028163205832243,0.006050645373762,0.098672233521938,-0.126005843281746,-0.218440338969231,0.155965983867645,-0.012690469622612,0.050108857452869,0.073872260749340,0.054516706615686,0.044405363500118,-0.070359155535698,0.087550893425941,0.021772844716907));
res += mul(Get(s0,-dx,dy), float4x4(0.002388092922047,0.107528060674667,-0.075277909636497,-0.007018307223916,-0.006799506954849,0.203651413321495,-0.095392428338528,0.028886791318655,-0.055367678403854,-0.003516780445352,0.014637044630945,0.050650846213102,-0.036105554550886,0.022727364674211,0.028834067285061,-0.143806859850883));
res += mul(Get(s0,0,-dy), float4x4(-0.050029911100864,0.103481300175190,0.093408532440662,0.112352937459946,-0.032948501408100,-0.033311720937490,0.009302756749094,-0.104889795184135,-0.067974671721458,0.073020443320274,0.010179256089032,0.109625004231930,0.233330294489861,-0.054811444133520,0.047382719814777,-0.045534212142229));
res += mul(Get(s0,0,0), float4x4(-0.088161498308182,0.289919823408127,0.053982958197594,-0.057223431766033,-0.118529073894024,0.084940396249294,-0.068796798586845,-0.135306373238564,-0.025289280340075,0.038043055683374,-0.021210543811321,-0.047540932893753,0.135465055704117,-0.098487138748169,-0.030708706006408,0.033382523804903));
res += mul(Get(s0,0,dy), float4x4(-0.067328147590160,0.100661605596542,0.069322071969509,-0.036622762680054,0.015496265143156,0.208415850996971,-0.005601015407592,-0.037988290190697,0.036238409578800,-0.109627038240433,-0.043547876179218,-0.018693981692195,-0.153362959623337,0.070736445486546,-0.059645891189575,-0.170579284429550));
res += mul(Get(s0,dx,-dy), float4x4(0.041029378771782,0.058468930423260,0.018947755917907,0.111939840018749,-0.047451440244913,-0.003773294854909,-0.047455526888371,0.020327078178525,-0.110714912414551,-0.019710432738066,0.006939410232008,-0.034019093960524,0.065540418028831,-0.023947868496180,-0.088971495628357,-0.077589407563210));
res += mul(Get(s0,dx,0), float4x4(0.064102612435818,0.000252900237683,0.035492990165949,0.027298757806420,-0.016017645597458,0.009140798822045,-0.062947064638138,-0.042386289685965,-0.123088181018829,0.000024031429348,0.037376884371042,-0.104214765131474,0.037208545953035,-0.116787590086460,-0.085692182183266,0.043110229074955));
res += mul(Get(s0,dx,dy), float4x4(0.073700010776520,-0.039883065968752,0.076254695653915,0.028427217155695,0.018998684361577,-0.025331735610962,0.138253554701805,0.149813383817673,-0.019429998472333,-0.045130621641874,-0.028509449213743,-0.005978898145258,-0.136072680354118,-0.028477348387241,-0.027481075376272,-0.003494074335322));
res += mul(Get(s1,-dx,-dy), float4x4(-0.078168928623199,0.047564726322889,-0.163451343774796,0.000218294138904,0.006726051215082,-0.026453627273440,0.211024224758148,-0.130539014935493,0.051512036472559,-0.109565086662769,-0.073227815330029,-0.080076880753040,0.037418223917484,0.003511105664074,0.038880147039890,0.014158565551043));
res += mul(Get(s1,-dx,0), float4x4(-0.054630111902952,-0.107405155897141,0.014539862982929,0.079618677496910,-0.021090036258101,-0.173011198639870,0.123726002871990,-0.063871234655380,-0.030167240649462,-0.091414250433445,-0.124762982130051,0.090532854199409,0.029818499460816,0.058825373649597,0.073802962899208,0.092968203127384));
res += mul(Get(s1,-dx,dy), float4x4(-0.030638609081507,0.085629276931286,-0.079605326056480,-0.013935584574938,-0.078553237020969,-0.024910084903240,0.113425210118294,0.044308759272099,-0.151085838675499,0.105821914970875,0.061854928731918,0.170861154794693,-0.059957418590784,0.154538556933403,0.014136115089059,0.105400472879410));
res += mul(Get(s1,0,-dy), float4x4(0.432952791452408,-0.139729544520378,-0.289754062891006,0.014063615351915,0.046698212623596,0.216249674558640,0.116233445703983,-0.125693738460541,-0.088407211005688,-0.181899085640907,-0.010742521844804,-0.108241036534309,0.013140160590410,-0.053519688546658,0.025887925177813,0.002393010770902));
res += mul(Get(s1,0,0), float4x4(-0.119282692670822,-0.137967243790627,-0.068933777511120,0.089331910014153,0.081804722547531,0.026010323315859,0.053935118019581,0.104988716542721,-0.030802324414253,-0.211840763688087,-0.019686685875058,-0.131076097488403,-0.028438443318009,0.051941663026810,-0.032499454915524,-0.118273846805096));
res += mul(Get(s1,0,dy), float4x4(0.089808240532875,-0.084746569395065,-0.013623444363475,-0.047461610287428,0.037510760128498,0.108661696314812,0.093574315309525,-0.012256856076419,-0.111868679523468,-0.086688622832298,0.214280724525452,0.073888763785362,-0.048463407903910,0.147821053862572,-0.035808768123388,-0.148617804050446));
res += mul(Get(s1,dx,-dy), float4x4(0.099332533776760,-0.014904935844243,-0.084269739687443,-0.033915873616934,0.085738293826580,-0.046888168901205,-0.130820035934448,0.181266769766808,0.069479838013649,-0.100113056600094,-0.054745979607105,-0.080287866294384,0.119125179946423,-0.109225265681744,-0.004013414960355,0.012220878154039));
res += mul(Get(s1,dx,0), float4x4(-0.014673723839223,0.035280779004097,-0.013303031213582,-0.057415463030338,0.146832212805748,-0.093944482505322,-0.265273988246918,0.582296729087830,0.062482461333275,-0.070564202964306,-0.109916076064110,-0.004599259234965,-0.015336846001446,-0.122096665203571,-0.039414331316948,-0.098915033042431));
res += mul(Get(s1,dx,dy), float4x4(0.090595155954361,0.041775941848755,0.018471324816346,0.135309487581253,-0.071930825710297,0.012309154495597,-0.110236197710037,-0.132757589221001,-0.022438228130341,0.048910047858953,0.036895036697388,0.035572450608015,-0.039378695189953,-0.146914348006248,-0.016529113054276,-0.053357910364866));
res += mul(Get(s2,-dx,-dy), float4x4(-0.053615413606167,-0.081559568643570,-0.173751965165138,-0.065712578594685,-0.003667767159641,0.089517027139664,-0.008201266638935,-0.020083364099264,-0.041062910109758,0.058149755001068,-0.124703526496887,-0.067967601120472,-0.014602480456233,0.062815576791763,0.037559151649475,0.038727357983589));
res += mul(Get(s2,-dx,0), float4x4(-0.237370967864990,-0.027124414220452,-0.109717577695847,-0.138469353318214,0.000196665059775,-0.041469354182482,-0.056154105812311,0.025721449404955,-0.099892511963844,-0.162658676505089,0.089489869773388,-0.011065456084907,0.116490423679352,0.068906530737877,0.004928210750222,0.047062791883945));
res += mul(Get(s2,-dx,dy), float4x4(-0.175284072756767,0.074105478823185,0.195443972945213,-0.023290928453207,0.029285565018654,0.118996374309063,-0.013245253823698,-0.063985079526901,-0.026937196031213,0.157809332013130,0.045216195285320,-0.115624651312828,0.008697286248207,0.024860585108399,0.087795212864876,-0.021219050511718));
res += mul(Get(s2,0,-dy), float4x4(0.138366967439651,-0.047634065151215,-0.046295583248138,-0.052869014441967,-0.029397098347545,0.036034028977156,0.145035430788994,-0.013266301713884,0.074389442801476,-0.104282267391682,-0.004715110640973,-0.043947350233793,0.003977625165135,-0.013512846082449,0.070770137012005,0.052719324827194));
res += mul(Get(s2,0,0), float4x4(-0.062265176326036,0.043463744223118,-0.096204027533531,-0.141237124800682,-0.052101742476225,-0.078702189028263,0.082032814621925,0.021301297470927,-0.093748822808266,-0.125991925597191,0.155839726328850,-0.015000917017460,0.037414666265249,0.077036939561367,-0.001333747291937,0.065894052386284));
res += mul(Get(s2,0,dy), float4x4(-0.034541010856628,-0.102477148175240,0.066043660044670,-0.039633110165596,-0.065845035016537,-0.005564191844314,0.033403716981411,-0.076566182076931,-0.088890552520752,0.090554535388947,0.032309390604496,-0.003265041625127,0.031367406249046,-0.008361517451704,0.022512897849083,0.025641638785601));
res += mul(Get(s2,dx,-dy), float4x4(0.088704019784927,-0.117590375244617,0.113955177366734,-0.105997465550900,0.022629143670201,0.090537652373314,0.089886918663979,-0.056935042142868,0.026736844331026,-0.088712088763714,0.138535782694817,-0.120247423648834,-0.049642097204924,-0.026215337216854,-0.045083712786436,-0.021202649921179));
res += mul(Get(s2,dx,0), float4x4(0.183869019150734,-0.071063444018364,-0.015558693557978,-0.042135130614042,-0.016405157744884,-0.016497248783708,0.023262077942491,0.005564044695348,-0.050247997045517,-0.007531311362982,0.139494672417641,-0.090027935802937,0.034816563129425,0.000920315156691,-0.032646574079990,0.010032037273049));
res += mul(Get(s2,dx,dy), float4x4(0.063491255044937,-0.112318694591522,0.083471961319447,-0.147832646965981,-0.042648967355490,0.114262990653515,0.017481720075011,-0.065865285694599,-0.167674094438553,0.010187814012170,0.074823401868343,0.000897260673810,0.037477307021618,-0.047067247331142,0.030910169705749,0.053849950432777));
res += mul(Get(s3,-dx,-dy), float4x4(-0.054007343947887,0.049977574497461,-0.062203101813793,0.067259535193443,-0.085001096129417,-0.071884572505951,-0.173671096563339,0.004124387633055,0.146905660629272,-0.090820908546448,0.021910749375820,0.097656860947609,-0.026880538091063,-0.016378598287702,-0.075298868119717,-0.004512997809798));
res += mul(Get(s3,-dx,0), float4x4(-0.061321608722210,0.110033929347992,-0.070139497518539,0.030034007504582,-0.090303838253021,0.103003025054932,-0.241981089115143,-0.103472374379635,0.055005919188261,-0.088307306170464,-0.003494905540720,0.024181693792343,-0.036103408783674,0.145985811948776,0.008676031604409,-0.058746129274368));
res += mul(Get(s3,-dx,dy), float4x4(0.002098137512803,0.088098257780075,0.009382592514157,-0.020312445238233,-0.115687668323517,0.113841235637665,-0.126920789480209,0.048867758363485,-0.007126125972718,0.013416761532426,0.044419087469578,0.054049778729677,-0.006610736716539,0.037091638892889,-0.034218382090330,0.143567278981209));
res += mul(Get(s3,0,-dy), float4x4(0.104073874652386,0.040635149925947,-0.065584160387516,0.008652214892209,-0.095926508307457,0.100536979734898,-0.173618987202644,-0.111030980944633,-0.083921834826469,-0.011383493430912,0.091291815042496,0.011791145429015,-0.085394904017448,0.051170226186514,-0.152573853731155,-0.155991762876511));
res += mul(Get(s3,0,0), float4x4(-0.016202522441745,-0.003566294442862,-0.067123427987099,-0.026316648349166,-0.136794969439507,0.143447697162628,0.089775331318378,-0.092322543263435,0.161430954933167,-0.027289327234030,-0.067038409411907,-0.056949499994516,-0.051921028643847,0.009426142089069,0.028935482725501,-0.102997370064259));
res += mul(Get(s3,0,dy), float4x4(-0.058693513274193,-0.035308491438627,0.202789902687073,0.001470585353673,0.029302394017577,-0.143709212541580,0.021056203171611,0.052414093166590,0.002464811550453,0.025968026369810,-0.044846776872873,0.037629701197147,-0.018492078408599,-0.079906433820724,0.101513385772705,0.185555353760719));
res += mul(Get(s3,dx,-dy), float4x4(0.192350924015045,0.027617670595646,0.056068088859320,0.121660135686398,0.062565200030804,0.010737978853285,-0.227988332509995,0.005357900168747,0.000405330705689,0.079675860702991,0.048273839056492,-0.026674950495362,0.069030344486237,-0.029737124219537,-0.076329745352268,0.067773878574371));
res += mul(Get(s3,dx,0), float4x4(0.066885098814964,0.047817945480347,-0.008684501051903,0.055637571960688,-0.000432797271060,0.019951315596700,0.121532045304775,-0.077024467289448,0.093562565743923,0.013008606620133,-0.023618223145604,-0.115324132144451,0.040165290236473,0.012966312468052,0.041062939912081,0.107685714960098));
res += mul(Get(s3,dx,dy), float4x4(0.115447260439396,0.048782188445330,0.008552243001759,-0.057266477495432,-0.053790386766195,-0.041437253355980,0.072528772056103,0.016889734193683,0.031967163085938,-0.009819367900491,0.113942958414555,0.017952416092157,-0.094882622361183,0.034323334693909,0.048533372581005,0.121169604361057));
return max(float4(0,0,0,0), res);
}
