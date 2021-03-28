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
float4 res = float4(-0.134821057319641,-0.233711883425713,0.018952682614326,-0.059459194540977);
res += mul(Get(s0,-dx,-dy), float4x4(0.007577403448522,-0.157875388860703,0.239851906895638,0.171398505568504,-0.011741009540856,-0.006201373413205,0.244724735617638,0.310431599617004,0.034284595400095,-0.042914941906929,-0.103183157742023,0.148069068789482,-0.202964976429939,0.082973502576351,-0.175638422369957,-0.332827180624008));
res += mul(Get(s0,-dx,0), float4x4(0.025231374427676,-0.257850885391235,-0.083947040140629,0.163010179996490,0.031939189881086,0.029582314193249,-0.107947431504726,-0.093673899769783,-0.100216895341873,-0.021829569712281,-0.320420801639557,-0.174486279487610,0.467316985130310,-0.107857674360275,0.294631242752075,-0.029822969809175));
res += mul(Get(s0,-dx,dy), float4x4(0.026987811550498,-0.229808613657951,0.048779562115669,-0.167381390929222,0.006042607594281,0.076325505971909,0.082122094929218,0.011808070354164,0.097565509378910,0.139232903718948,0.042745288461447,0.179098933935165,0.059340909123421,0.033275488764048,-0.082320660352707,-0.109406061470509));
res += mul(Get(s0,0,-dy), float4x4(-0.162293076515198,-0.037261735647917,0.273641258478165,-0.043711140751839,-0.311265796422958,-0.072364203631878,-0.053856331855059,0.218111336231232,-0.215770810842514,0.099416293203831,-0.067519180476665,-0.061777457594872,-0.185677170753479,0.122728765010834,-0.044898569583893,0.129927098751068));
res += mul(Get(s0,0,0), float4x4(0.028280984610319,-0.188661575317383,-0.087330393493176,-0.075632445514202,0.062947735190392,0.011594315059483,-0.078119114041328,-0.084825247526169,0.402869403362274,-0.283034384250641,0.083499073982239,-0.220830425620079,-0.000522463815287,-0.165818095207214,0.183891490101814,0.327676922082901));
res += mul(Get(s0,0,dy), float4x4(0.001605210592970,0.189457327127457,-0.015108902938664,-0.188556134700775,-0.134919077157974,-0.074388362467289,0.085882343351841,0.207763269543648,-0.136712789535522,0.183468118309975,-0.229734078049660,0.296882629394531,0.042528554797173,-0.372840464115143,0.031353719532490,-0.048970825970173));
res += mul(Get(s0,dx,-dy), float4x4(-0.046514477580786,-0.030651573091745,0.173776850104332,-0.041032165288925,-0.254850596189499,0.075950168073177,0.023801019415259,-0.034071620553732,-0.009261989034712,0.013865777291358,-0.285529136657715,-0.129188224673271,-0.010927405208349,0.091852106153965,-0.150129184126854,-0.141200214624405));
res += mul(Get(s0,dx,0), float4x4(-0.042986247688532,0.020698271691799,0.003103274852037,-0.120921425521374,0.083514817059040,-0.125579178333282,-0.174823313951492,-0.296914994716644,-0.073361165821552,0.189745634794235,-0.035217564553022,0.109916284680367,0.129469260573387,0.014045334421098,0.087173186242580,-0.123716846108437));
res += mul(Get(s0,dx,dy), float4x4(-0.059921897947788,0.070410802960396,-0.090244300663471,-0.030045572668314,0.026949465274811,-0.003669688710943,0.046053037047386,0.047071270644665,-0.122103162109852,0.015737714245915,0.048515412956476,0.147479280829430,0.039524734020233,-0.043151956051588,-0.078678846359253,-0.113876305520535));
res += mul(Get(s1,-dx,-dy), float4x4(0.094115711748600,0.014294601976871,0.020469691604376,0.082614012062550,0.147259682416916,0.088176280260086,0.063608705997467,-0.083017155528069,-0.074952788650990,0.005740005988628,-0.007775647100061,0.206170767545700,0.009551045484841,0.015783425420523,0.122899226844311,0.052972231060266));
res += mul(Get(s1,-dx,0), float4x4(-0.151210650801659,0.059050057083368,-0.161161214113235,-0.036948051303625,0.119271554052830,0.160311952233315,0.161866188049316,0.139890313148499,-0.043643604964018,0.008742955513299,0.104846179485321,0.084776468575001,-0.247512504458427,0.015774928033352,-0.183122202754021,-0.025107117369771));
res += mul(Get(s1,-dx,dy), float4x4(0.089730709791183,0.008820869959891,-0.102361544966698,0.096458055078983,-0.052294794470072,-0.068921700119972,-0.160395458340645,0.045499630272388,-0.127755388617516,-0.031427312642336,-0.015298251993954,0.045598257333040,0.004904852714390,0.013385837897658,0.140457451343536,0.007285781670362));
res += mul(Get(s1,0,-dy), float4x4(-0.016071941703558,0.146213203668594,-0.330439686775208,-0.092605352401733,0.303235679864883,0.007424210663885,-0.182262539863586,0.030282838270068,-0.153060376644135,0.021610118448734,0.056468069553375,0.370962053537369,0.180945426225662,0.083492890000343,-0.021349659189582,0.032444205135107));
res += mul(Get(s1,0,0), float4x4(0.319182962179184,0.125531926751137,0.270470052957535,-0.099096789956093,-0.083759486675262,0.250698328018188,-0.040693201124668,-0.112327098846436,-0.310493558645248,-0.126973092556000,-0.245018675923347,-0.027343168854713,0.239198863506317,0.096979558467865,-0.139608964323997,-0.230375498533249));
res += mul(Get(s1,0,dy), float4x4(-0.282352775335312,0.030618792399764,-0.315364152193069,0.289815515279770,0.099805891513824,0.112375989556313,0.093219362199306,-0.026789821684361,0.172786638140678,0.097116790711880,0.010472850874066,0.233043015003204,0.020018303766847,0.288598835468292,0.005914023611695,-0.297971278429031));
res += mul(Get(s1,dx,-dy), float4x4(-0.104735374450684,0.003303113160655,-0.068406872451305,-0.019888285547495,-0.026327805593610,-0.033190313726664,0.177241533994675,-0.024026930332184,-0.035692989826202,-0.005533450748771,-0.120403535664082,-0.036238826811314,-0.000070488087658,-0.026773046702147,0.074173316359520,-0.036830037832260));
res += mul(Get(s1,dx,0), float4x4(-0.090827137231827,-0.174178138375282,0.305062115192413,-0.034123960882425,0.055916193872690,-0.293440133333206,0.088060677051544,-0.053864195942879,-0.279883176088333,-0.064417816698551,-0.354266047477722,-0.390863895416260,0.140115439891815,0.070465303957462,0.138175472617149,0.030969018116593));
res += mul(Get(s1,dx,dy), float4x4(-0.062224987894297,-0.159886509180069,-0.008717142976820,-0.109718792140484,0.154604747891426,0.059317607432604,0.075716860592365,-0.097465708851814,0.132155522704124,0.063544921576977,-0.233555302023888,-0.149467825889587,-0.050314061343670,-0.009573584422469,0.094938129186630,0.082306832075119));
res += mul(Get(s2,-dx,-dy), float4x4(0.060790393501520,-0.159757360816002,-0.130223557353020,0.025237642228603,-0.041901849210262,0.060241602361202,-0.462981879711151,0.043426517397165,-0.007674021646380,-0.081630922853947,0.127315044403076,0.093869253993034,0.047037757933140,-0.039752017706633,-0.257882922887802,-0.002028908114880));
res += mul(Get(s2,-dx,0), float4x4(-0.005855652969331,0.036180879920721,-0.180716648697853,-0.168635264039040,-0.087050892412663,-0.071864448487759,-0.179775714874268,-0.107377395033836,-0.214669704437256,0.008720480836928,-0.259036004543304,0.032377686351538,0.117262661457062,-0.046706590801477,-0.188688188791275,-0.061149317771196));
res += mul(Get(s2,-dx,dy), float4x4(0.083845980465412,0.003334126435220,-0.008193472400308,-0.437152147293091,0.026037968695164,0.132887408137321,-0.067810952663422,0.102949641644955,0.003927783109248,-0.118735767900944,0.036738321185112,-0.029565930366516,-0.060019593685865,-0.139574915170670,-0.110146336257458,0.039939362555742));
res += mul(Get(s2,0,-dy), float4x4(-0.014389329589903,-0.052566006779671,0.043181207031012,0.025024389848113,0.036820404231548,-0.129241511225700,0.153845936059952,0.034712731838226,-0.193586751818657,0.110193803906441,0.064999245107174,0.026542842388153,-0.167940631508827,-0.020777493715286,0.014120704494417,0.027922758832574));
res += mul(Get(s2,0,0), float4x4(-0.130453690886497,0.189406231045723,-0.186498880386353,0.015551886521280,0.230920925736427,0.121044792234898,-0.018625507131219,-0.224028989672661,-0.055105883628130,-0.007143325638026,-0.106364302337170,0.176922634243965,-0.146771803498268,-0.123583823442459,0.089397184550762,-0.005385433323681));
res += mul(Get(s2,0,dy), float4x4(0.122367024421692,0.064652934670448,0.238508597016335,-0.275549322366714,0.232393682003021,0.206566646695137,0.094412714242935,-0.138721615076065,0.248937174677849,-0.026850437745452,-0.004342977888882,-0.064112260937691,-0.146234542131424,-0.029662949964404,-0.003300956450403,-0.060346439480782));
res += mul(Get(s2,dx,-dy), float4x4(0.080912776291370,-0.093851819634438,0.059919796884060,0.056185167282820,-0.084328308701515,-0.039873383939266,0.118653841316700,-0.066904559731483,0.025560200214386,-0.039477523416281,-0.040206018835306,-0.007071901112795,-0.106056816875935,-0.008156553842127,-0.024378186091781,-0.040956679731607));
res += mul(Get(s2,dx,0), float4x4(-0.027928829193115,-0.175805523991585,-0.154164150357246,0.139117792248726,0.449935883283615,0.106948882341385,0.200846090912819,-0.020239314064384,0.077819615602493,0.076225489377975,0.077714994549751,-0.107312545180321,-0.048864271491766,-0.206733390688896,-0.017928862944245,-0.029767025262117));
res += mul(Get(s2,dx,dy), float4x4(-0.062582604587078,-0.084912419319153,0.050812538713217,-0.031968578696251,0.122315242886543,0.136901393532753,-0.018559968098998,-0.093606874346733,0.097107708454132,0.048788774758577,-0.072578243911266,0.124345019459724,-0.083016447722912,-0.231962576508522,0.201436698436737,-0.030008796602488));
res += mul(Get(s3,-dx,-dy), float4x4(-0.063657775521278,0.046824984252453,0.164736807346344,-0.059038568288088,0.042210053652525,-0.005956154782325,-0.274029880762100,-0.106207013130188,0.155721426010132,0.117649346590042,-0.099514074623585,-0.009930553846061,-0.023425888270140,-0.110438071191311,-0.053934928029776,-0.020658705383539));
res += mul(Get(s3,-dx,0), float4x4(0.004810481332242,0.010739308781922,0.153686732053757,0.133849650621414,0.077645704150200,0.007343846373260,0.000877300801221,-0.063563004136086,-0.076839998364449,0.389490813016891,0.008023297414184,0.143838942050934,0.007207437884063,-0.281443715095520,0.233889028429985,0.131832525134087));
res += mul(Get(s3,-dx,dy), float4x4(-0.016750497743487,-0.031762339174747,0.143628135323524,-0.092617698013783,-0.050156190991402,0.272529572248459,-0.162346780300140,0.167805701494217,0.047434296458960,0.064959101378918,-0.119078256189823,0.046982470899820,0.105683624744415,-0.080016404390335,0.119535766541958,-0.184668004512787));
res += mul(Get(s3,0,-dy), float4x4(0.290163874626160,-0.046923443675041,-0.264633357524872,-0.053089875727892,0.024844432249665,-0.101476348936558,-0.263250976800919,-0.074114315211773,-0.062687814235687,0.097219280898571,0.087535545229912,0.013900773599744,-0.105516999959946,-0.096558555960655,0.230383932590485,-0.011399391107261));
res += mul(Get(s3,0,0), float4x4(-0.169148489832878,0.222488045692444,-0.585450708866119,0.079145647585392,0.198091685771942,-0.153557538986206,-0.247485071420670,-0.375810176134109,-0.119032569229603,-0.191868454217911,0.103804439306259,0.355004876852036,0.045207556337118,-0.096945524215698,0.293024033308029,-0.175987318158150));
res += mul(Get(s3,0,dy), float4x4(0.198312774300575,-0.128313317894936,0.198293909430504,-0.401628136634827,-0.089348457753658,0.353650987148285,-0.286092907190323,0.081039510667324,0.020046167075634,0.184028685092926,0.059674564749002,0.197853848338127,-0.027178866788745,-0.357493638992310,0.412427246570587,-0.045288663357496));
res += mul(Get(s3,dx,-dy), float4x4(-0.022602979093790,0.059621833264828,0.121118418872356,-0.038464762270451,-0.305168986320496,0.074880518019199,-0.076151177287102,0.163228318095207,-0.026661546900868,0.117218047380447,0.091526307165623,-0.017040913924575,-0.003346466459334,-0.210685849189758,0.470129579305649,0.134310975670815));
res += mul(Get(s3,dx,0), float4x4(-0.424089401960373,-0.197372362017632,0.018622646108270,0.067360810935497,0.011339658871293,0.094447955489159,-0.136432066559792,0.152492284774780,-0.108260951936245,0.064667537808418,0.002703589620069,-0.077963061630726,0.110803201794624,-0.287505120038986,0.240609064698219,0.102994397282600));
res += mul(Get(s3,dx,dy), float4x4(0.027236683294177,-0.255955368280411,0.047864843159914,0.017958387732506,-0.030562017112970,-0.060565195977688,0.045630332082510,-0.046568930149078,0.019779628142715,-0.030125953257084,-0.071851171553135,-0.206111416220665,-0.017062721773982,-0.165733844041824,0.270831376314163,0.024610916152596));
res += mul(Get(s4,-dx,-dy), float4x4(-0.344388037919998,-0.169865325093269,-0.081077188253403,-0.098171100020409,-0.254682034254074,-0.101358309388161,0.027284102514386,0.198550894856453,0.125109508633614,0.046557825058699,0.095663331449032,0.132642328739166,-0.258975833654404,0.059095848351717,0.154889047145844,-0.279744684696198));
res += mul(Get(s4,-dx,0), float4x4(-0.136734604835510,0.004551441408694,0.040366455912590,-0.025787247344851,-0.142817199230194,0.003780726110563,-0.401258200407028,-0.109683044254780,0.108161002397537,0.118019022047520,-0.020534217357635,0.010994270443916,-0.125285521149635,0.047807663679123,-0.212890163064003,-0.049994230270386));
res += mul(Get(s4,-dx,dy), float4x4(-0.028906673192978,-0.067239210009575,0.034536831080914,-0.028029544278979,-0.069977045059204,-0.069244533777237,-0.022432787343860,-0.191937521100044,0.045254409313202,0.083343915641308,-0.047804441303015,-0.100393757224083,-0.009015523828566,0.034276966005564,0.239721551537514,-0.043743692338467));
res += mul(Get(s4,0,-dy), float4x4(0.066960029304028,-0.123219139873981,-0.206157669425011,-0.153174519538879,-0.085337035357952,-0.071898177266121,-0.126777783036232,-0.061853457242250,0.120308034121990,0.146580040454865,-0.172273069620132,-0.000498603389133,0.009122862480581,-0.161289274692535,-0.013644366525114,0.165872216224670));
res += mul(Get(s4,0,0), float4x4(-0.101294152438641,0.249383121728897,-0.084035970270634,0.004199194256216,0.056836575269699,-0.188030138611794,-0.368844479322433,-0.037904769182205,0.095508791506290,0.319906294345856,0.182191014289856,-0.028506981208920,0.182688891887665,0.100265398621559,-0.035877756774426,-0.018826689571142));
res += mul(Get(s4,0,dy), float4x4(0.058435045182705,0.016407798975706,0.151210144162178,0.160752281546593,0.139170721173286,0.462660729885101,-0.147826597094536,-0.110308378934860,0.053146138787270,0.152442216873169,-0.323697865009308,0.214102521538734,0.084686443209648,0.141160488128662,0.062788970768452,-0.091435328125954));
res += mul(Get(s4,dx,-dy), float4x4(0.120586037635803,-0.065490558743477,0.071708060801029,-0.132437616586685,-0.076839514076710,-0.109031073749065,-0.104609303176403,-0.182140365242958,-0.007159057538956,0.049946885555983,-0.026681855320930,0.029035145416856,0.006534099113196,-0.024629507213831,0.009776668623090,0.034075986593962));
res += mul(Get(s4,dx,0), float4x4(0.138136401772499,-0.064785204827785,-0.204076677560806,-0.092023096978664,0.169717401266098,-0.247499331831932,-0.026710001751781,0.101074039936066,0.141621515154839,0.130719423294067,0.115320861339569,0.050930555909872,0.088415369391441,-0.139494970440865,0.089666217565536,-0.151112437248230));
res += mul(Get(s4,dx,dy), float4x4(0.097867213189602,0.037732392549515,-0.095997989177704,0.157123908400536,0.175917595624924,0.301096379756927,0.000853166682646,-0.106806479394436,-0.134049221873283,-0.251143723726273,-0.126949056982994,0.180543437600136,0.040850523859262,0.091705121099949,-0.014858429320157,0.223887234926224));
res += mul(Get(s5,-dx,-dy), float4x4(-0.004232141654938,-0.004835547879338,-0.090541951358318,-0.107898272573948,0.110602773725986,-0.178024411201477,0.275128096342087,0.061666574329138,0.038200121372938,-0.038784142583609,0.098727405071259,-0.093228481709957,-0.055315267294645,0.037287656217813,0.018302546814084,-0.066004842519760));
res += mul(Get(s5,-dx,0), float4x4(-0.077729642391205,-0.329707205295563,0.246640533208847,-0.073313154280186,-0.332998961210251,-0.213692560791969,-0.163702636957169,0.071488089859486,0.238336652517319,-0.037089377641678,0.053583309054375,-0.024807760491967,0.105685494840145,0.083412133157253,0.185986399650574,0.134288474917412));
res += mul(Get(s5,-dx,dy), float4x4(-0.015237385407090,-0.322684884071350,0.096682503819466,-0.024314725771546,-0.103482447564602,-0.370163202285767,0.328942030668259,-0.004264876246452,-0.073076389729977,0.103849597275257,-0.171585366129875,0.095940053462982,-0.024400111287832,0.054817162454128,0.228151842951775,0.341611951589584));
res += mul(Get(s5,0,-dy), float4x4(-0.043161369860172,-0.176346838474274,-0.108330659568310,-0.046277854591608,-0.054097134619951,-0.165352553129196,-0.009353439323604,0.006144818849862,0.013718422502279,-0.028547434136271,0.068299174308777,0.016367601230741,0.054491762071848,0.007080898154527,-0.018053909763694,0.094301901757717));
res += mul(Get(s5,0,0), float4x4(0.022542474791408,-0.260730028152466,-0.004156003240496,-0.147402331233025,-0.174896582961082,-0.188872322440147,-0.000965792802162,-0.151793330907822,-0.133595302700996,0.139461189508438,-0.187358751893044,0.078682854771614,-0.056536961346865,0.032673314213753,0.038669351488352,-0.119633771479130));
res += mul(Get(s5,0,dy), float4x4(-0.035949382930994,-0.115735135972500,-0.023411188274622,-0.036646753549576,-0.073471009731293,-0.504837930202484,0.059764351695776,-0.015245102345943,-0.058627501130104,-0.007214049808681,0.023223400115967,0.034455407410860,0.205217480659485,0.184341773390770,0.170569956302643,0.177585273981094));
res += mul(Get(s5,dx,-dy), float4x4(-0.000510661571752,0.033737182617188,-0.041316971182823,-0.011097703129053,0.068186879158020,-0.077992916107178,0.002548757242039,-0.049324590712786,0.013117243535817,-0.084211654961109,0.060391224920750,0.037433613091707,0.092548370361328,0.043506205081940,0.150106236338615,-0.006701105739921));
res += mul(Get(s5,dx,0), float4x4(-0.048180509358644,-0.098162889480591,0.070316039025784,-0.112141467630863,-0.072911873459816,-0.143162339925766,0.070240728557110,0.029217047616839,0.035669501870871,0.044453117996454,-0.189024135470390,0.079781122505665,-0.076140925288200,0.015893513336778,-0.057876482605934,0.060318287461996));
res += mul(Get(s5,dx,dy), float4x4(-0.087701067328453,-0.090220659971237,-0.089298792183399,0.071717463433743,0.031183153390884,-0.064757347106934,0.072021178901196,-0.156634107232094,0.001200314261951,0.170812740921974,0.003913146909326,0.054128091782331,0.140273466706276,-0.082892522215843,-0.004056326113641,-0.209571108222008));
res = max(float4(0, 0, 0, 0), res) + float4(0.058138258755207,0.011279580183327,0.083331167697906,0.331329464912415) * min(float4(0, 0, 0, 0), res);
return res;
}
