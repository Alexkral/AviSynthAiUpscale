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
float4 res = float4(0.123818531632423,0.235679149627686,0.042682766914368,0.153554514050484);
res += mul(Get(s0,-dx,-dy), float4x4(0.166000366210938,0.128069519996643,-0.151898175477982,-0.053392674773932,-0.306854516267776,0.027022840455174,-0.072876065969467,-0.427377104759216,-0.338220596313477,-0.235384017229080,-0.033515904098749,-0.025427320972085,0.001603569369763,0.067200861871243,0.012058239430189,-0.038241818547249));
res += mul(Get(s0,-dx,0), float4x4(0.089503854513168,0.110422126948833,-0.094276569783688,0.132313668727875,-0.660116910934448,0.063070550560951,0.192772552371025,-0.262498706579208,-0.140560135245323,0.050873246043921,-0.092247292399406,-0.057483423501253,0.078617230057716,-0.022195283323526,-0.143260464072227,0.206736966967583));
res += mul(Get(s0,-dx,dy), float4x4(0.259646505117416,0.050119802355766,-0.110048055648804,0.022991592064500,-0.186939626932144,0.110977187752724,0.165512159466743,-0.512321531772614,0.081604175269604,0.004215580411255,0.059622805565596,-0.140886932611465,-0.075186297297478,0.039602056145668,-0.172330453991890,0.054971545934677));
res += mul(Get(s0,0,-dy), float4x4(0.210562184453011,0.345031559467316,-0.186429649591446,0.012362550944090,-0.557197570800781,0.355392217636108,-0.064101919531822,-0.366438955068588,-0.833457410335541,-1.342499971389771,-0.465765506029129,0.219577863812447,-0.336070656776428,-0.227381408214569,-0.232372403144836,0.037143744528294));
res += mul(Get(s0,0,0), float4x4(0.212768465280533,0.041729360818863,-0.023750297725201,0.093343071639538,-0.360609084367752,-0.209636732935905,0.098143719136715,-0.195332527160645,0.124340988695621,0.363520056009293,0.250737518072128,-0.017601370811462,-0.218780145049095,0.141292318701744,-0.280053883790970,-0.019810646772385));
res += mul(Get(s0,0,dy), float4x4(0.076163880527020,-0.201555445790291,0.138199567794800,0.137982442975044,0.137251898646355,-0.002421985613182,0.319161921739578,-0.688281595706940,-0.053706165403128,0.037944134324789,0.028679572045803,0.108943104743958,-0.095423825085163,0.037418205291033,-0.212391093373299,0.107986353337765));
res += mul(Get(s0,dx,-dy), float4x4(0.252744644880295,0.129055172204971,-0.153323769569397,0.105603791773319,-0.148636698722839,-0.003614725312218,0.032750926911831,-0.325012296438217,-0.006468470208347,-0.099927052855492,-0.065147370100021,0.053423300385475,-0.126472815871239,-0.553467273712158,-0.520057618618011,0.033318772912025));
res += mul(Get(s0,dx,0), float4x4(0.201263904571533,-0.058398719877005,-0.062656983733177,-0.022855360060930,0.047365583479404,0.031423475593328,0.135197818279266,-0.313496470451355,0.071737281978130,0.136289373040199,-0.043328907340765,-0.109650634229183,-0.159857496619225,0.117118604481220,-0.166404530405998,-0.165986239910126));
res += mul(Get(s0,dx,dy), float4x4(0.224044561386108,-0.043146785348654,-0.105806462466717,0.071421429514885,-0.294789373874664,0.164260938763618,0.057301893830299,-0.265754342079163,-0.087211817502975,0.085801236331463,-0.084196753799915,0.131843954324722,-0.144329696893692,0.077023513615131,0.001022806856781,-0.053952023386955));
res += mul(Get(s1,-dx,-dy), float4x4(0.011452151462436,-0.125953450798988,-0.006446881685406,0.024098100140691,0.255017220973969,-0.054288327693939,-0.386237472295761,0.259181171655655,0.015462772920728,-0.166838660836220,-0.319942176342010,-0.081232920289040,-0.097604341804981,0.309955596923828,0.061274591833353,0.102362230420113));
res += mul(Get(s1,-dx,0), float4x4(-0.054332830011845,-0.036818943917751,0.147755622863770,-0.156624257564545,-0.077340610325336,0.175563737750053,-0.259022742509842,0.443296313285828,0.180076673626900,-0.348658353090286,-0.062320675700903,0.209534570574760,-0.071997277438641,-0.044788386672735,0.140213161706924,-0.452226638793945));
res += mul(Get(s1,-dx,dy), float4x4(-0.199240803718567,-0.255540579557419,0.070416547358036,-0.135230720043182,-0.068572096526623,0.027560187503695,0.083932206034660,0.212012052536011,-0.002707708161324,-0.118833072483540,0.041893683373928,-0.180216968059540,-0.096992820501328,0.020426634699106,-0.024540528655052,-0.020370425656438));
res += mul(Get(s1,0,-dy), float4x4(-0.094014950096607,-0.052130743861198,-0.103710375726223,0.177462518215179,-0.014081510715187,-1.111525177955627,-0.307517647743225,0.238613113760948,0.277762860059738,0.262093305587769,-0.157107800245285,-0.223969310522079,0.204663306474686,0.091141924262047,0.351541817188263,-0.325212538242340));
res += mul(Get(s1,0,0), float4x4(-0.303684771060944,-0.087931990623474,0.359018146991730,-0.371897220611572,0.064948201179504,-0.247042953968048,0.086271904408932,0.104641415178776,0.426896899938583,0.208071798086166,-0.308587610721588,0.317091226577759,0.074602119624615,-0.202960520982742,0.116822369396687,-0.859677374362946));
res += mul(Get(s1,0,dy), float4x4(-0.285046726465225,0.137022837996483,0.117857433855534,0.365370512008667,-0.176933094859123,-0.041019637137651,0.059319302439690,0.252310723066330,0.243159145116806,-0.241868481040001,-0.285352200269699,0.103655859827995,-0.634035110473633,0.133856832981110,0.012696856632829,0.104082770645618));
res += mul(Get(s1,dx,-dy), float4x4(-0.094869114458561,-0.172648787498474,0.100228957831860,-0.086864084005356,-0.249166756868362,-0.282710701227188,-0.414976418018341,0.232843324542046,-0.107386492192745,0.107658170163631,-0.211761996150017,-0.151374578475952,-0.173756107687950,0.106590948998928,0.116676993668079,-0.159066244959831));
res += mul(Get(s1,dx,0), float4x4(-0.054571464657784,0.018493270501494,0.109717398881912,-0.313233256340027,0.135696992278099,-0.173841089010239,-0.048326738178730,0.000188309611985,-0.038664828985929,0.061371620744467,-0.083326376974583,0.227285772562027,-0.313354492187500,0.079227544367313,-0.067217014729977,0.011530347168446));
res += mul(Get(s1,dx,dy), float4x4(-0.173506483435631,-0.054721061140299,0.100871294736862,-0.134467408061028,0.109279595315456,-0.012367731891572,0.130324602127075,-0.073279939591885,0.156232371926308,0.205230012536049,-0.381092280149460,0.253967523574829,-0.013781157322228,-0.136026129126549,0.052048604935408,-0.206623196601868));
res += mul(Get(s2,-dx,-dy), float4x4(0.237457200884819,0.093659080564976,0.012708805501461,0.081116683781147,0.147278934717178,0.018859434872866,-0.135910049080849,0.158625543117523,0.024839023128152,0.029737005010247,-0.160389810800552,-0.048270817846060,-0.058267064392567,-0.030926607549191,-0.082022115588188,-0.051296435296535));
res += mul(Get(s2,-dx,0), float4x4(0.077175162732601,0.014797070063651,0.128319576382637,-0.833795785903931,0.166184678673744,0.035199753940105,-0.137249156832695,0.289447456598282,0.027334852144122,-0.016134796664119,-0.184087976813316,0.334444254636765,0.113127231597900,0.246284931898117,-0.102459490299225,-0.339625060558319));
res += mul(Get(s2,-dx,dy), float4x4(-0.156986102461815,-0.166274711489677,0.065964773297310,0.077272765338421,0.190810680389404,0.418027520179749,-0.286427676677704,0.056538771837950,0.115278899669647,-0.015612139366567,-0.046273525804281,-0.094243444502354,0.129968494176865,0.043360587209463,-0.033296447247267,0.014077951200306));
res += mul(Get(s2,0,-dy), float4x4(0.194375768303871,-0.025115987285972,0.268939197063446,-0.136202365159988,-0.071371883153915,-0.178876534104347,-0.468499451875687,0.296594589948654,-0.100063785910606,0.128498405218124,-0.155206128954887,0.347872495651245,-0.097659289836884,-0.405456691980362,-0.326974481344223,-0.435671031475067));
res += mul(Get(s2,0,0), float4x4(-0.212576776742935,-0.004010944161564,0.097419388592243,0.229033216834068,0.232699885964394,-0.388539105653763,-0.115991204977036,0.177647352218628,0.067348457872868,-0.000126674174680,-0.125511229038239,0.423029303550720,-0.129375919699669,-0.222855806350708,-0.176641359925270,0.339211046695709));
res += mul(Get(s2,0,dy), float4x4(-0.095979854464531,0.214317649602890,0.003818398341537,0.436272293329239,0.360054880380630,0.105467855930328,-0.248402848839760,0.218282923102379,0.077435605227947,0.170851528644562,0.085411973297596,0.216520786285400,0.040059756487608,-0.037520680576563,-0.049508884549141,-0.071665480732918));
res += mul(Get(s2,dx,-dy), float4x4(0.094341203570366,0.120167963206768,0.025892103090882,0.160497501492500,0.012777557596564,0.266087502241135,-0.334378480911255,0.239038452506065,-0.008275834843516,0.091454088687897,0.018261713907123,0.285344272851944,0.009554033167660,0.125484466552734,0.044121492654085,-0.214425504207611));
res += mul(Get(s2,dx,0), float4x4(0.322080492973328,-0.087835192680359,0.053567167371511,0.211901605129242,0.205503150820732,0.053738791495562,-0.274022966623306,0.181872487068176,0.026698524132371,-0.014104253612459,-0.047002147883177,0.213956832885742,-0.004429993685335,0.027611777186394,-0.075297579169273,0.082171648740768));
res += mul(Get(s2,dx,dy), float4x4(0.234772831201553,-0.065500929951668,-0.181970670819283,0.259686321020126,0.103084117174149,0.305343717336655,-0.162506446242332,0.236925944685936,-0.052742023020983,0.114186875522137,0.098104268312454,0.153381735086441,0.057515237480402,-0.012056324630976,0.000069321693445,-0.106912277638912));
res += mul(Get(s3,-dx,-dy), float4x4(0.005350897088647,-0.376500219106674,-0.146424174308777,-0.088621392846107,-0.189468219876289,-0.164483830332756,0.090936236083508,0.149462103843689,0.277480423450470,-0.122537754476070,-0.120673857629299,-0.421714454889297,0.077174425125122,0.038356211036444,0.261324167251587,-0.225904703140259));
res += mul(Get(s3,-dx,0), float4x4(-0.050543643534184,-1.171389460563660,-0.266111105680466,-0.291929364204407,-0.020264742895961,-0.174158021807671,0.005450513679534,0.004199872724712,0.032067153602839,-0.115618988871574,0.077710092067719,-0.322153925895691,0.123202800750732,-0.191821798682213,0.345403105020523,-0.331875801086426));
res += mul(Get(s3,-dx,dy), float4x4(0.090350218117237,-0.041693389415741,-0.048217833042145,0.007258416153491,-0.053186316043139,-0.087975926697254,0.003717379178852,0.029406609013677,0.019064517691731,0.098067350685596,0.046911589801311,0.065763495862484,-0.185185700654984,0.000246783922194,0.279406189918518,0.143281951546669));
res += mul(Get(s3,0,-dy), float4x4(-0.030148768797517,0.196289300918579,-0.192291945219040,0.050711743533611,-0.364219486713409,-0.956075847148895,0.161361187696457,0.104872226715088,0.165863171219826,0.043747358024120,-0.199532732367516,-0.139436796307564,0.075692415237427,-0.213910415768623,-0.038633503019810,-0.061255306005478));
res += mul(Get(s3,0,0), float4x4(-0.242214620113373,0.176670059561729,0.128777265548706,-0.111001104116440,-0.615971565246582,-1.050469279289246,0.205605357885361,0.137831032276154,-0.405844390392303,0.320233434438705,0.194571211934090,-0.535862684249878,0.119757674634457,0.304304063320160,0.239362686872482,-0.035067789256573));
res += mul(Get(s3,0,dy), float4x4(0.035740938037634,0.164814010262489,0.078703798353672,0.085886858403683,-0.054618228226900,-0.207957759499550,0.157420009374619,-0.104353517293930,0.174215331673622,-0.084729969501495,0.018867865204811,0.364196091890335,0.108510397374630,0.046207301318645,0.084630712866783,-0.566110670566559));
res += mul(Get(s3,dx,-dy), float4x4(-0.101699784398079,0.000523063587025,-0.073319733142853,-0.007750027813017,-0.091695070266724,-0.014987578615546,0.052953254431486,-0.085237450897694,-0.083660967648029,0.017462234944105,0.147608593106270,-0.005819180514663,0.116811290383339,0.087001144886017,0.000763319665566,0.044973120093346));
res += mul(Get(s3,dx,0), float4x4(0.173551201820374,-0.035191126167774,-0.029488638043404,0.078881382942200,-0.226649254560471,0.005161704029888,0.027987530454993,0.057903714478016,-0.240537822246552,-0.314928561449051,0.136600717902184,0.239990502595901,0.132345438003540,0.336901903152466,0.080473177134991,-0.012075607664883));
res += mul(Get(s3,dx,dy), float4x4(-0.036456923931837,-0.060560211539268,-0.016270060092211,-0.051501430571079,-0.004641360603273,0.030339963734150,0.125389531254768,-0.168866112828255,-0.042064949870110,-0.041110869497061,-0.015056638047099,0.064492121338844,0.055717915296555,0.023770097643137,0.149230957031250,-0.341764152050018));
res += mul(Get(s4,-dx,-dy), float4x4(0.059026833623648,-0.071471974253654,-0.108524248003960,0.063320964574814,-0.126332074403763,0.097641274333000,0.113362468779087,-0.194506779313087,0.038275182247162,0.052527043968439,0.136193871498108,-0.031478911638260,0.157294139266014,0.079596556723118,0.190778225660324,0.007901608943939));
res += mul(Get(s4,-dx,0), float4x4(-0.058731976896524,0.225067436695099,-0.020737467333674,0.007614512462169,0.089964278042316,-0.094616860151291,0.169277355074883,-0.069750539958477,0.087604098021984,0.294244766235352,-0.262336134910583,0.217406481504440,0.059912834316492,0.128804057836533,-0.057339429855347,0.024399999529123));
res += mul(Get(s4,-dx,dy), float4x4(0.001648363308050,-0.113876312971115,0.125476047396660,0.001509540248662,0.121656112372875,-0.224329605698586,0.156120091676712,-0.301932930946350,0.164821997284889,0.123156309127808,-0.233525797724724,-0.021869441494346,-0.007314010057598,0.171985134482384,-0.207443371415138,-0.043001875281334));
res += mul(Get(s4,0,-dy), float4x4(-0.113948218524456,-0.182998612523079,0.196869879961014,-0.069472618401051,-0.121789596974850,-0.069378532469273,-0.058240860700607,0.055158410221338,-0.256295472383499,-0.011270782910287,-0.332914233207703,-0.117904633283615,-0.154864877462387,-0.070936791598797,0.093894496560097,-0.011235882528126));
res += mul(Get(s4,0,0), float4x4(-0.221122801303864,0.110190138220787,0.058775257319212,0.349150836467743,0.355014085769653,0.157992005348206,-0.096029743552208,0.107988812029362,0.262674719095230,-0.202708378434181,0.470666676759720,-0.047547519207001,-0.072143048048019,-0.016484079882503,0.085945256054401,-0.076450444757938));
res += mul(Get(s4,0,dy), float4x4(0.294049054384232,0.031911645084620,0.181740447878838,-0.077536374330521,-0.314247220754623,0.059150613844395,-0.032433193176985,0.200646430253983,-0.234319701790810,0.002256127074361,-0.001247886102647,0.097626358270645,-0.090958200395107,0.030230134725571,0.032116703689098,0.042712990194559));
res += mul(Get(s4,dx,-dy), float4x4(-0.094162836670876,0.075715810060501,0.021636540070176,-0.213692560791969,0.162979900836945,0.019689247012138,0.007620695978403,0.060989212244749,-0.163715526461601,0.067915022373199,-0.121295161545277,-0.108349472284317,0.056171052157879,-0.020206952467561,-0.057318840175867,-0.035769775509834));
res += mul(Get(s4,dx,0), float4x4(0.111699305474758,-0.130867928266525,-0.151438459753990,0.103772610425949,0.105778746306896,-0.108537703752518,-0.010666647925973,0.037209775298834,0.217502996325493,-0.353045642375946,-0.002074972027913,-0.218664124608040,-0.022756248712540,-0.051394741982222,0.271758288145065,0.045336522161961));
res += mul(Get(s4,dx,dy), float4x4(0.214575365185738,0.100276254117489,0.016655473038554,-0.137472376227379,0.069349907338619,-0.071610413491726,0.057637486606836,-0.081218101084232,-0.190899834036827,-0.013627349399030,-0.095759868621826,0.037487514317036,0.067684702575207,0.056820426136255,0.079350948333740,-0.149081259965897));
res += mul(Get(s5,-dx,-dy), float4x4(0.066193066537380,-0.359785556793213,0.200013026595116,-0.114831060171127,-0.079821914434433,-0.204614803195000,0.215738385915756,-0.051824167370796,-0.071831338107586,0.507309317588806,0.040636833757162,0.120641455054283,-0.336566656827927,-0.075228177011013,-0.150238782167435,0.296324312686920));
res += mul(Get(s5,-dx,0), float4x4(0.073607079684734,-0.508216619491577,0.087712995707989,-0.465314239263535,0.265519678592682,-0.219261839985847,0.138472124934196,-0.279961943626404,-0.303898364305496,0.266591846942902,-0.011356823146343,-0.117604270577431,0.010909591801465,-0.138297274708748,-0.105782866477966,0.008304357528687));
res += mul(Get(s5,-dx,dy), float4x4(0.051727339625359,0.075116135179996,-0.012974173761904,-0.363612234592438,-0.221859797835350,-0.120817072689533,0.001934778410941,0.101120971143246,0.071022383868694,0.189021676778793,0.203226074576378,-0.068581715226173,0.139039441943169,-0.391022264957428,-0.025808045640588,0.008169073611498));
res += mul(Get(s5,0,-dy), float4x4(0.154896393418312,-0.270665436983109,-0.011236262507737,-0.197355642914772,0.034845616668463,0.026528101414442,-0.044475991278887,-0.023361725732684,-0.275803893804550,0.554841160774231,0.086644299328327,-0.371929049491882,0.029707755893469,0.029354825615883,0.005221711006016,-0.123667784035206));
res += mul(Get(s5,0,0), float4x4(0.344147026538849,-0.787386775016785,0.022664384916425,-0.112239480018616,-0.399533063173294,0.017691364511847,-0.059637542814016,0.083941839635372,-0.238849923014641,-0.121481627225876,-0.137730345129967,-0.425624608993530,-0.245002314448357,0.094118237495422,0.243859976530075,-0.304670542478561));
res += mul(Get(s5,0,dy), float4x4(0.190237492322922,-0.133068352937698,0.244986131787300,-0.156624421477318,-0.214211106300354,-0.131669148802757,-0.102455213665962,-0.156015917658806,-0.004802656825632,0.513375937938690,-0.366603791713715,0.197080641984940,-0.185784563422203,-0.135924354195595,-0.116874180734158,0.100832909345627));
res += mul(Get(s5,dx,-dy), float4x4(0.080305263400078,-0.147452086210251,0.077177137136459,-0.105772987008095,0.201781392097473,-0.007546758279204,0.019305014982820,0.013028132729232,-0.209713324904442,0.357656747102737,-0.079756885766983,0.247019618749619,-0.109930515289307,0.118923775851727,0.000979200471193,-0.022315487265587));
res += mul(Get(s5,dx,0), float4x4(0.023237936198711,-0.034085091203451,-0.002254798077047,-0.189509019255638,0.178029149770737,-0.169296488165855,0.093429721891880,0.022136017680168,-0.279677420854568,0.192887946963310,-0.078162983059883,-0.001631822553463,-0.134921029210091,-0.036877740174532,0.266452729701996,-0.104222215712070));
res += mul(Get(s5,dx,dy), float4x4(0.174877554178238,0.068959094583988,0.047555636614561,-0.033075869083405,-0.132016748189926,-0.099847368896008,-0.013349007815123,-0.045575495809317,-0.081664599478245,0.096498087048531,-0.127313524484634,0.256167858839035,-0.161304548382759,0.031661473214626,0.037718623876572,0.137128114700317));
res = max(float4(0, 0, 0, 0), res) + float4(0.073653034865856,-0.026887398213148,0.138564482331276,0.056419529020786) * min(float4(0, 0, 0, 0), res);
return res;
}