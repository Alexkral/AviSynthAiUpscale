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
float4 res = float4(0.024740017950535,0.184614568948746,0.060779806226492,0.061515409499407);
res += mul(Get(s0,-dx,-dy), float4x4(0.115028791129589,0.093077421188354,-0.007908245548606,0.015796711668372,0.049275022000074,0.054462313652039,-0.222985655069351,0.102148614823818,-0.076017864048481,0.022977534681559,0.092616140842438,0.071760118007660,0.015633884817362,0.071255981922150,0.020865319296718,0.082765020430088));
res += mul(Get(s0,-dx,0), float4x4(-0.140889659523964,0.056884307414293,0.089853249490261,-0.032790843397379,-0.035328835248947,-0.023293701931834,-0.435663819313049,0.037732727825642,-0.005746731534600,0.034834127873182,0.116054527461529,0.159919217228889,0.000746505917050,0.088372774422169,0.252822101116180,-0.138553231954575));
res += mul(Get(s0,-dx,dy), float4x4(-0.122497007250786,-0.011824641376734,-0.025025358423591,0.054663870483637,-0.040102809667587,-0.039176389575005,-0.197676464915276,-0.043313313275576,0.094063811004162,-0.100196897983551,0.079338856041431,-0.013053141534328,0.112124502658844,-0.149655848741531,-0.023795217275620,0.035250354558229));
res += mul(Get(s0,0,-dy), float4x4(-0.000123656936921,0.089923515915871,0.111874304711819,-0.107528507709503,-0.030040115118027,-0.247563347220421,0.001828535227105,-0.014145168475807,-0.078562274575233,0.278172582387924,-0.006007859017700,-0.129057213664055,-0.019924087449908,0.055441170930862,0.066494718194008,0.042707752436399));
res += mul(Get(s0,0,0), float4x4(-0.194790422916412,0.119527995586395,0.062284544110298,0.224472329020500,-0.001904390053824,-0.765877008438110,-0.372865110635757,-0.110123813152313,-0.275600522756577,0.132941171526909,0.095317751169205,0.073394402861595,-0.051270678639412,0.240406870841980,0.149327039718628,-0.342554986476898));
res += mul(Get(s0,0,dy), float4x4(0.137854889035225,0.034607619047165,0.091354154050350,-0.009819440543652,-0.259551376104355,-0.331847906112671,0.015919104218483,0.038606207817793,-0.071621447801590,0.147932723164558,-0.078760743141174,-0.102316729724407,0.390715122222900,-0.007202853448689,-0.003973659593612,-0.144888386130333));
res += mul(Get(s0,dx,-dy), float4x4(0.005934683606029,-0.017546558752656,0.046500533819199,-0.027423700317740,0.014709429815412,-0.113349050283432,-0.015037056058645,0.026419254019856,0.086458772420883,0.117836557328701,-0.022714911028743,-0.179201990365982,0.032007467001677,-0.090962655842304,-0.042781643569469,0.109806999564171));
res += mul(Get(s0,dx,0), float4x4(0.013158614747226,-0.036890763789415,0.049167655408382,0.233274117112160,0.099465347826481,-0.660405516624451,-0.078749716281891,-0.135301902890205,0.078368753194809,-0.333578526973724,-0.213966682553291,0.166518479585648,0.134919136762619,0.015950189903378,0.009711921215057,-0.008321285247803));
res += mul(Get(s0,dx,dy), float4x4(0.005153108388186,-0.041445773094893,-0.048108391463757,-0.070289507508278,-0.045964863151312,-0.283402353525162,0.049773912876844,0.043585333973169,0.139280304312706,-0.148067653179169,-0.093983747065067,0.160357549786568,0.017544245347381,0.038841735571623,-0.011305072344840,0.046779893338680));
res += mul(Get(s1,-dx,-dy), float4x4(-0.091812595725060,-0.155217692255974,-0.061740446835756,-0.091356724500656,-0.074418835341930,0.171485617756844,-0.003467432223260,0.044471278786659,0.000944545376115,0.096190311014652,-0.166538923978806,-0.232715457677841,-0.003325724974275,-0.230576530098915,-0.239895477890968,-0.147288903594017));
res += mul(Get(s1,-dx,0), float4x4(-0.025682052597404,0.030280167236924,0.102812334895134,0.108398713171482,0.042773768305779,-0.023640593513846,0.445909559726715,-0.188979372382164,-0.274570137262344,0.118463233113289,-0.126556053757668,-0.029700260609388,0.042751334607601,-0.372015058994293,-0.408974677324295,0.090186722576618));
res += mul(Get(s1,-dx,dy), float4x4(0.188224613666534,-0.025729490444064,0.101187586784363,-0.005062599200755,0.143487200140953,-0.203422293066978,0.066791780292988,0.036129910498857,-0.228304311633110,0.077567383646965,-0.036661211401224,-0.010536303743720,0.049335580319166,-0.254024952650070,-0.162194490432739,0.131789430975914));
res += mul(Get(s1,0,-dy), float4x4(0.003026271704584,-0.059215717017651,0.085383966565132,0.258243471384048,-0.275491893291473,0.051495492458344,-0.064599812030792,-0.173053339123726,0.146414607763290,-0.199892461299896,0.001317297923379,-0.758949875831604,0.056636024266481,-0.231082603335381,0.088701941072941,-0.038140121847391));
res += mul(Get(s1,0,0), float4x4(0.014437980949879,-0.037845958024263,-0.075140595436096,0.080632433295250,-0.115250132977962,-0.130186304450035,-0.095302879810333,0.020052956417203,-0.681918442249298,-0.115163505077362,0.045805964618921,-0.136111661791801,-0.016396250575781,-0.269917428493500,0.176204696297646,0.202863022685051));
res += mul(Get(s1,0,dy), float4x4(-0.137566715478897,-0.124377541244030,-0.067985773086548,-0.212882861495018,0.472689002752304,-0.249923378229141,-0.124699376523495,-0.068747036159039,-0.210285797715187,0.095424398779869,-0.018034499138594,-0.012344905175269,-0.008635765872896,-0.442684322595596,0.021838231012225,0.124635629355907));
res += mul(Get(s1,dx,-dy), float4x4(0.000989935593680,0.132981002330780,-0.062787033617496,0.148670017719269,-0.071743950247765,-0.085006974637508,0.033572386950254,-0.105090886354446,-0.008114221505821,-0.044419318437576,-0.022501710802317,-0.293148249387741,0.015392361208797,-0.086864568293095,0.005456448066980,-0.133608177304268));
res += mul(Get(s1,dx,0), float4x4(-0.003717572428286,-0.010310148820281,0.047042589634657,0.230768263339996,-0.038357630372047,-0.246065691113472,-0.042713806033134,0.149435162544250,0.046451531350613,-0.006004400551319,0.054899077862501,-0.004354110453278,0.038653112947941,-0.022766679525375,-0.024471558630466,0.021524755284190));
res += mul(Get(s1,dx,dy), float4x4(0.102226391434669,0.030327342450619,-0.057132039219141,-0.167345985770226,0.112297445535660,-0.314529925584793,-0.092357717454433,-0.189867556095123,-0.177982851862907,-0.051646761596203,0.044066835194826,-0.001612041378394,0.173340126872063,-0.039337661117315,0.063073769211769,0.107563823461533));
res += mul(Get(s2,-dx,-dy), float4x4(-0.106564350426197,-0.102114088833332,0.034934982657433,0.080818563699722,-0.028815995901823,0.030291717499495,0.215382233262062,-0.078302092850208,0.021812885999680,0.086477302014828,-0.009598990902305,0.129847466945648,-0.033473107963800,0.102751091122627,0.108591623604298,-0.110183537006378));
res += mul(Get(s2,-dx,0), float4x4(0.155165389180183,-0.043584257364273,0.094442561268806,0.016589984297752,-0.040070582181215,0.065751165151596,0.049572817981243,0.058864224702120,0.132956936955452,0.059798818081617,0.191525056958199,0.141778543591499,-0.319065839052200,-0.102081887423992,-0.493629008531570,-0.017308739945292));
res += mul(Get(s2,-dx,dy), float4x4(0.140979126095772,-0.081527091562748,0.133386045694351,0.044804017990828,-0.062041886150837,0.156419336795807,-0.024739895015955,-0.027777409180999,-0.056044630706310,-0.124105654656887,0.095103919506073,0.065024815499783,0.057287797331810,0.061774190515280,0.031527321785688,0.020710896700621));
res += mul(Get(s2,0,-dy), float4x4(-0.068949289619923,0.017311552539468,-0.022890720516443,-0.183337360620499,-0.016728540882468,-0.059709370136261,-0.129262223839760,-0.086983308196068,0.061997849494219,0.032486841082573,0.117704190313816,0.105613373219967,-0.050102487206459,0.080493092536926,0.034776885062456,0.055414240807295));
res += mul(Get(s2,0,0), float4x4(0.326713979244232,0.001630078884773,0.058283571153879,-0.014626839198172,0.150549516081810,-0.164361074566841,0.114386320114136,0.023856543004513,0.000973767950200,-0.130744084715843,0.234437018632889,0.260129809379578,0.034058053046465,-0.298629462718964,-0.029642092064023,-0.102551899850368));
res += mul(Get(s2,0,dy), float4x4(0.048746209591627,0.019224693998694,-0.033160008490086,-0.081405855715275,-0.030466677621007,0.045818828046322,0.096586756408215,0.043400168418884,-0.117198869585991,-0.150031581521034,0.040665388107300,0.278741240501404,-0.121132016181946,-0.014208565466106,-0.044304050505161,-0.115833669900894));
res += mul(Get(s2,dx,-dy), float4x4(-0.031361054629087,-0.062418606132269,0.046616289764643,0.039989627897739,-0.036824859678745,0.053877077996731,-0.119616769254208,0.123497165739536,0.081685371696949,0.096550136804581,0.025025246664882,0.184419929981232,-0.001015759888105,0.024892263114452,0.041274785995483,-0.059488568454981));
res += mul(Get(s2,dx,0), float4x4(-0.022546593099833,0.032477352768183,-0.099405065178871,0.000190684324480,-0.109349563717842,0.044156309217215,0.016890022903681,-0.065013460814953,0.039126299321651,0.003165886504576,-0.013793570920825,0.327737659215927,0.001550753950141,0.025729788467288,0.003817693796009,0.013044008985162));
res += mul(Get(s2,dx,dy), float4x4(0.210484296083450,0.062320139259100,0.004757232964039,-0.018316451460123,-0.058451958000660,0.051270939409733,-0.005019494332373,0.075527988374233,-0.006908832583576,0.163362711668015,0.053995832800865,0.170204639434814,-0.117394030094147,0.185708597302437,0.030826481059194,0.079350985586643));
res += mul(Get(s3,-dx,-dy), float4x4(0.051001578569412,-0.070105195045471,0.028222242370248,-0.165568828582764,-0.051623344421387,-0.055036172270775,0.018681418150663,-0.017932474613190,0.007929300889373,-0.004744964651763,0.050728224217892,-0.042084150016308,0.040935687720776,0.115679688751698,-0.092664830386639,0.058754943311214));
res += mul(Get(s3,-dx,0), float4x4(-0.082284808158875,-0.032048512250185,0.288655161857605,0.091817401349545,0.043635301291943,0.182310014963150,0.304802298545837,0.148404583334923,0.117319144308567,-0.058073703199625,-0.157504394650459,-0.162114828824997,0.014638153836131,0.082676023244858,-0.166967764496803,-0.062170065939426));
res += mul(Get(s3,-dx,dy), float4x4(0.096759170293808,0.100408837199211,-0.108682557940483,0.182418972253799,-0.022428898140788,-0.063084259629250,0.070910342037678,-0.035915128886700,-0.113285064697266,0.119047991931438,0.008403912186623,-0.049003109335899,-0.025545701384544,0.170082196593285,-0.070266976952553,0.018977230414748));
res += mul(Get(s3,0,-dy), float4x4(-0.038187399506569,0.182065159082413,-0.030823832377791,-0.207018733024597,-0.106091655790806,0.004525618162006,0.124843098223209,0.040771417319775,0.027483250945807,0.142159506678581,0.054758932441473,-0.203907757997513,0.015236887149513,0.059322088956833,-0.046383295208216,-0.095172896981239));
res += mul(Get(s3,0,0), float4x4(0.044725861400366,-0.017823131754994,-0.260115742683411,0.086076803505421,0.148772805929184,0.218262806534767,0.420246064662933,0.500248491764069,-0.090388454496861,0.080330282449722,0.063794583082199,-0.358684539794922,0.058281641453505,-0.197408840060234,0.113233029842377,-0.114883787930012));
res += mul(Get(s3,0,dy), float4x4(0.220755115151405,0.122183784842491,0.010943219065666,0.105861440300941,0.227492675185204,0.040655493736267,-0.077640585601330,-0.045041345059872,0.038344837725163,0.139798983931541,0.038541596382856,-0.180704131722450,0.120599217712879,-0.110659629106522,-0.176317319273949,-0.203246265649796));
res += mul(Get(s3,dx,-dy), float4x4(-0.009079063311219,0.008789869956672,-0.060112643986940,-0.115448758006096,0.066917635500431,-0.018143380060792,-0.129934728145599,-0.156159639358521,0.014844362623990,0.172353222966194,0.019539043307304,-0.008589969016612,0.009613423608243,0.168471738696098,0.184601649641991,0.047625511884689));
res += mul(Get(s3,dx,0), float4x4(-0.099182046949863,0.031225586310029,0.019728058949113,-0.028291985392570,-0.127867236733437,-0.194223076105118,-0.176633164286613,-0.030511211603880,0.087288364768028,-0.056082136929035,0.001706723240204,-0.120815470814705,-0.074716575443745,-0.074815109372139,-0.012419626116753,-0.181093215942383));
res += mul(Get(s3,dx,dy), float4x4(-0.051908537745476,0.001462365849875,0.021952170878649,-0.005050564650446,-0.074234001338482,-0.140931874513626,-0.073162280023098,0.063618935644627,0.042542923241854,0.138154238462448,0.031924255192280,-0.177234038710594,0.064789772033691,-0.059444643557072,0.083800151944160,-0.062203813344240));
res += mul(Get(s4,-dx,-dy), float4x4(-0.094258166849613,0.112547338008881,-0.055273082107306,0.000963741971646,-0.094048097729683,-0.005953506566584,0.015372433699667,-0.041479505598545,0.023910572752357,-0.008707109838724,0.202430203557014,0.028040422126651,0.052515663206577,-0.018375877290964,0.235086977481842,0.124076433479786));
res += mul(Get(s4,-dx,0), float4x4(-0.054220601916313,0.162613511085510,-0.031231785193086,0.051683131605387,-0.078113794326782,0.036336448043585,0.014859274961054,0.038029689341784,0.096984341740608,0.144130602478981,0.039772447198629,-0.025597073137760,-0.066953442990780,-0.007805150002241,0.239162892103195,-0.005257483571768));
res += mul(Get(s4,-dx,dy), float4x4(-0.124130181968212,0.051185488700867,0.024557739496231,-0.096845254302025,-0.028478628024459,0.066892281174660,0.068056866526604,0.104754321277142,-0.118033319711685,0.041414439678192,0.260888725519180,0.020800614729524,0.331471264362335,0.012090066447854,0.180388197302818,-0.082484513521194));
res += mul(Get(s4,0,-dy), float4x4(0.179766625165939,0.113517299294472,-0.039634451270103,0.286838173866272,-0.011109583079815,0.249072521924973,-0.161208197474480,-0.043692134320736,-0.060610838234425,-0.005929545033723,0.015562868677080,-0.336695194244385,0.121960088610649,0.038055226206779,-0.130738496780396,0.280294448137283));
res += mul(Get(s4,0,0), float4x4(0.013808367773890,-0.245443210005760,-0.250820219516754,0.019477056339383,-0.122380256652832,0.132332190871239,-0.275696605443954,0.012171446345747,-0.027887249365449,0.017339363694191,-0.146194979548454,-0.306990623474121,-0.101181313395500,0.028382731601596,-0.260183513164520,-0.090203255414963));
res += mul(Get(s4,0,dy), float4x4(-0.019619651138783,0.119348332285881,0.215071722865105,-0.268971145153046,-0.070178270339966,0.148541033267975,-0.157536476850510,0.330131471157074,-0.654704153537750,0.041784469038248,0.012289723381400,-0.164375603199005,0.405539274215698,0.125223919749260,-0.033110655844212,-0.138863176107407));
res += mul(Get(s4,dx,-dy), float4x4(-0.100489802658558,-0.108121350407600,-0.077211067080498,-0.087211199104786,-0.031647134572268,0.014357180334628,-0.145680174231529,-0.333547651767731,-0.029462411999702,0.065166145563126,0.017007051035762,-0.247049584984779,0.033065561205149,0.071460321545601,0.043826892971992,0.209209829568863));
res += mul(Get(s4,dx,0), float4x4(0.048720359802246,0.142974674701691,-0.079706199467182,0.063890725374222,-0.193762958049774,-0.302711576223373,0.011465519666672,0.012860947288573,0.031021090224385,-0.059903662651777,0.172145500779152,-0.343787491321564,0.102416865527630,-0.026331258937716,0.032915465533733,0.150679752230644));
res += mul(Get(s4,dx,dy), float4x4(-0.032417975366116,-0.045273639261723,-0.161939948797226,-0.192515626549721,-0.170401781797409,0.248341172933578,0.074726037681103,0.285003632307053,-0.196519881486893,0.090001612901688,-0.000661217432935,-0.086398422718048,0.096145272254944,0.080671988427639,0.057359993457794,-0.276948183774948));
res += mul(Get(s5,-dx,-dy), float4x4(-0.052499815821648,-0.145901128649712,0.007343860808760,0.067054867744446,-0.190527856349945,-0.022120654582977,0.131216168403625,-0.116168864071369,-0.007992409169674,-0.126566708087921,-0.099109813570976,0.008517825976014,0.015601853840053,0.059307999908924,-0.069491796195507,0.031662002205849));
res += mul(Get(s5,-dx,0), float4x4(0.071162827312946,0.011422540992498,-0.124845981597900,-0.096218153834343,0.095609314739704,0.189344167709351,0.598063051700592,-0.085714980959892,-0.038707055151463,-0.171613261103630,-0.006914741359651,0.007300192024559,0.007900728844106,0.298343747854233,0.009704304859042,0.066417507827282));
res += mul(Get(s5,-dx,dy), float4x4(-0.160092040896416,0.051976855844259,-0.143390700221062,0.046322666108608,0.166062936186790,0.126637786626816,0.177144646644592,0.061216752976179,0.115456879138947,-0.077388733625412,0.021500017493963,0.105221435427666,0.134044021368027,-0.078397139906883,0.223404496908188,-0.093235403299332));
res += mul(Get(s5,0,-dy), float4x4(-0.203428640961647,-0.096003711223602,-0.008219686336815,-0.115467600524426,-0.111136786639690,0.062614306807518,0.059591494500637,-0.169089928269386,0.010412728413939,-0.178274035453796,-0.136187300086021,0.087884694337845,0.028139509260654,0.123948536813259,-0.004164518788457,0.092568628489971));
res += mul(Get(s5,0,0), float4x4(0.301883757114410,0.314072877168655,0.356930583715439,0.263300061225891,0.151975616812706,-0.080942966043949,-0.083912290632725,0.188821837306023,-0.044185835868120,-0.120251163840294,-0.188794657588005,-0.135703474283218,0.050209742039442,0.056380026042461,-0.110406309366226,-0.055355291813612));
res += mul(Get(s5,0,dy), float4x4(-0.004063399042934,-0.004343124572188,0.104009345173836,0.097354643046856,0.317775011062622,0.078796498477459,0.060616217553616,-0.032278768718243,0.047855906188488,0.040822528302670,-0.128813251852989,0.233650162816048,0.062497790902853,0.089928127825260,-0.016648657619953,0.183924585580826));
res += mul(Get(s5,dx,-dy), float4x4(0.030457034707069,0.044910125434399,-0.072613470256329,-0.248881846666336,-0.071380510926247,0.194940373301506,0.002966922475025,0.137454465031624,-0.035416491329670,-0.086557641625404,-0.138382613658905,-0.088641472160816,0.029668144881725,0.133973509073257,0.055312383919954,0.050470620393753));
res += mul(Get(s5,dx,0), float4x4(-0.014950562268496,-0.099001824855804,-0.034074399620295,0.110163941979408,0.007362562697381,-0.051739878952503,-0.031737271696329,-0.121223583817482,0.004979659803212,-0.120740674436092,0.068453945219517,0.204935848712921,0.017857024446130,-0.016134856268764,0.018916748464108,-0.132422804832458));
res += mul(Get(s5,dx,dy), float4x4(-0.086742676794529,-0.175832808017731,0.022478122264147,0.167030513286591,0.130071163177490,0.054589025676250,-0.010834339074790,-0.036707445979118,0.050539862364531,-0.267689973115921,-0.083241097629070,0.131569683551788,-0.012414821423590,-0.014217450283468,-0.007568136788905,0.116296216845512));
res = max(float4(0, 0, 0, 0), res) + float4(-0.410528898239136,0.037420827895403,-0.298616975545883,-0.000577905040700) * min(float4(0, 0, 0, 0), res);
return res;
}