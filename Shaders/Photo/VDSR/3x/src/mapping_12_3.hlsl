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
res += mul(Get(s0,-dx,-dy), float4x4(-0.083179920911789,-0.064265906810760,0.022290281951427,0.034961327910423,0.009716439992189,0.113813072443008,-0.007008303422481,0.021684031933546,-0.034575354307890,0.135359078645706,-0.215768396854401,0.167390152812004,-0.004178047180176,0.022527415305376,-0.040378678590059,-0.030313944444060));
res += mul(Get(s0,-dx,0), float4x4(-0.003654739819467,-0.000847963907290,0.053671125322580,-0.056317433714867,0.134948685765266,0.205619975924492,-0.070947967469692,0.081941418349743,-0.121554948389530,-0.094419099390507,-0.074453257024288,0.178071498870850,0.008762463927269,0.053580641746521,0.087963670492172,0.093592666089535));
res += mul(Get(s0,-dx,dy), float4x4(-0.130527660250664,-0.048614658415318,-0.194010943174362,-0.066428273916245,0.087988197803497,-0.081877768039703,-0.035732429474592,0.106507308781147,-0.056516349315643,-0.064334392547607,0.106836937367916,-0.096145935356617,0.021522082388401,0.015759006142616,-0.008565094321966,0.101877652108669));
res += mul(Get(s0,0,-dy), float4x4(0.027173986658454,-0.034164443612099,-0.190902993083000,0.256531924009323,0.087984010577202,-0.178226903080940,-0.117129288613796,-0.229605659842491,-0.041215460747480,0.023925244808197,0.077876225113869,0.319110959768295,-0.071273721754551,0.004594261292368,-0.170557290315628,0.095729872584343));
res += mul(Get(s0,0,0), float4x4(-0.055591486394405,-0.110143505036831,0.171585053205490,-0.151406660676003,0.076338052749634,0.055288016796112,-0.120418474078178,-0.023214407265186,-0.010988615453243,0.042412307113409,-0.018516644835472,-0.032710805535316,-0.066293187439442,-0.124618716537952,0.010520336218178,-0.086524911224842));
res += mul(Get(s0,0,dy), float4x4(0.113654218614101,0.046378910541534,-0.124462336301804,-0.065675906836987,0.127534165978432,-0.018656088039279,-0.000509954406880,0.145282834768295,-0.023323405534029,0.040230613201857,-0.003058821195737,-0.068318359553814,-0.167759314179420,0.060696039348841,-0.071873217821121,-0.026931209489703));
res += mul(Get(s0,dx,-dy), float4x4(-0.101843267679214,-0.015423377975821,0.006864581722766,0.207418248057365,0.066997736692429,0.024419100955129,0.018054215237498,0.109442271292210,-0.103035226464272,0.029782973229885,0.006398363504559,0.156498238444328,-0.017952190712094,0.050827980041504,-0.023820718750358,-0.239376708865166));
res += mul(Get(s0,dx,0), float4x4(-0.154163360595703,0.087223172187805,0.035687010735273,-0.029355397447944,0.022948738187551,-0.063812188804150,0.062951661646366,-0.178433209657669,0.008619156666100,0.008520414121449,0.039722632616758,-0.003103493945673,0.045235272496939,-0.010674378834665,0.110131770372391,0.169842109084129));
res += mul(Get(s0,dx,dy), float4x4(0.097665995359421,-0.234054490923882,-0.118713401257992,-0.094968684017658,0.118072666227818,-0.132921516895294,0.127801209688187,0.040304396301508,-0.147130340337753,-0.003575482638553,-0.141527861356735,0.048643697053194,-0.019067738205194,0.096107013523579,0.019834198057652,0.149441808462143));
res += mul(Get(s1,-dx,-dy), float4x4(0.054595429450274,-0.059119790792465,-0.183568850159645,0.131385877728462,0.075629174709320,-0.136037081480026,-0.012391422875226,0.033701062202454,0.044785283505917,-0.097150579094887,-0.205457463860512,-0.135221570730209,0.109437540173531,0.015520405955613,-0.118508398532867,0.044131930917501));
res += mul(Get(s1,-dx,0), float4x4(0.183703884482384,0.012025078758597,-0.058092601597309,-0.074988186359406,0.067900374531746,0.005820479709655,0.097928211092949,0.160334363579750,-0.056859247386456,0.004134701564908,-0.004171237349510,-0.170469149947166,-0.013281540013850,-0.066469728946686,-0.099066302180290,-0.098691344261169));
res += mul(Get(s1,-dx,dy), float4x4(-0.135443851351738,-0.049279805272818,0.040296159684658,-0.094401478767395,0.035750452429056,-0.016196677461267,-0.018728666007519,0.040402047336102,-0.056349128484726,-0.186957314610481,0.159858986735344,0.020266847684979,-0.118473015725613,-0.136363118886948,-0.086795277893543,-0.005186009220779));
res += mul(Get(s1,0,-dy), float4x4(-0.139596447348595,0.034529294818640,-0.116041079163551,-0.046357326209545,0.015915073454380,-0.039533700793982,-0.089212559163570,0.056041993200779,0.149412199854851,-0.171412140130997,-0.141116961836815,-0.044570043683052,0.059321589767933,0.090867429971695,-0.028817260637879,0.124080620706081));
res += mul(Get(s1,0,0), float4x4(0.127736061811447,-0.042035564780235,-0.115148410201073,-0.012211040593684,0.111860923469067,-0.016114493831992,0.047522295266390,0.014148434624076,0.197391495108604,0.056974615901709,0.056481413543224,0.194429561495781,-0.092314302921295,-0.010828466154635,-0.197308540344238,0.016000300645828));
res += mul(Get(s1,0,dy), float4x4(0.111430972814560,0.014730631373823,0.043576627969742,-0.135277420282364,-0.047572076320648,-0.023192662745714,-0.023759683594108,0.208155781030655,-0.132513731718063,0.018811646848917,0.086139783263206,-0.049485813826323,-0.020683173090219,0.019948936998844,-0.095051139593124,-0.053611993789673));
res += mul(Get(s1,dx,-dy), float4x4(0.038407538086176,-0.079168155789375,0.152924969792366,0.107530027627945,0.088561207056046,-0.138426259160042,0.112427964806557,0.014291726984084,-0.110067367553711,-0.028451124206185,-0.160427436232567,0.018269700929523,-0.001229862216860,0.086514830589294,0.016514396294951,0.086635336279869));
res += mul(Get(s1,dx,0), float4x4(0.064212150871754,0.046309724450111,0.011155954562128,0.101318731904030,0.055247571319342,0.150727391242981,0.098144620656967,0.053924292325974,-0.125051587820053,0.008969836868346,0.035666041076183,0.008427707478404,-0.132577210664749,-0.209403976798058,-0.044765930622816,0.047951973974705));
res += mul(Get(s1,dx,dy), float4x4(-0.099283829331398,0.017887674272060,-0.063158586621284,0.027885008603334,0.053027745336294,0.088835671544075,-0.045640897005796,0.094340562820435,-0.126735046505928,-0.078809574246407,0.103944554924965,0.045164331793785,-0.348894029855728,0.037281263619661,0.039581701159477,-0.052874539047480));
res += mul(Get(s2,-dx,-dy), float4x4(-0.026622984558344,-0.120303645730019,-0.095529273152351,-0.116579972207546,0.105541415512562,0.168308988213539,0.132350116968155,-0.084462903439999,0.053169418126345,-0.267515003681183,-0.014767933636904,-0.054537627846003,0.021926959976554,0.041343420743942,-0.213643625378609,-0.150041297078133));
res += mul(Get(s2,-dx,0), float4x4(0.147170662879944,-0.023245114833117,-0.040250156074762,-0.054343000054359,0.115780994296074,-0.087243020534515,-0.074138119816780,-0.051104132086039,-0.001145409769379,-0.137284681200981,0.103117220103741,0.151158034801483,-0.015918105840683,0.060871452093124,-0.017449585720897,0.169614359736443));
res += mul(Get(s2,-dx,dy), float4x4(-0.005084087606519,0.040016461163759,0.014602764509618,0.089902907609940,-0.036289080977440,-0.030950298532844,0.002661566482857,-0.102005705237389,-0.048409443348646,0.002166440943256,-0.088700041174889,0.149365097284317,0.083073087036610,-0.009957442991436,0.107264526188374,0.074020311236382));
res += mul(Get(s2,0,-dy), float4x4(0.140681400895119,-0.057317405939102,0.053298454731703,-0.038719121366739,0.151661887764931,-0.162446066737175,0.009385878220201,0.016252266243100,0.170264631509781,0.040767308324575,-0.079111859202385,0.165970340371132,0.043389521539211,0.023734049871564,0.101795271039009,0.094652026891708));
res += mul(Get(s2,0,0), float4x4(-0.016309078782797,-0.022094532847404,-0.058520145714283,-0.091763310134411,0.092212595045567,-0.053002934902906,0.075792402029037,0.036093112081289,-0.064865298569202,-0.046957619488239,-0.059197228401899,-0.087291248142719,0.297880619764328,-0.029250744730234,-0.099387384951115,0.129172399640083));
res += mul(Get(s2,0,dy), float4x4(-0.040642391890287,0.030433524399996,-0.012146976776421,0.061607703566551,0.174949526786804,-0.020831959322095,-0.133227467536926,-0.025514962151647,0.106768056750298,-0.027276860550046,0.034197714179754,0.117280885577202,0.029657194390893,-0.005815803539008,-0.035299185663462,-0.112734116613865));
res += mul(Get(s2,dx,-dy), float4x4(-0.061572402715683,-0.007572975009680,0.147536501288414,0.089545696973801,0.140602350234985,0.032460328191519,0.034021425992250,-0.008079355582595,0.009665273129940,-0.127632811665535,-0.105428218841553,0.015784107148647,0.064814284443855,0.001562427147292,-0.059340480715036,-0.054215900599957));
res += mul(Get(s2,dx,0), float4x4(-0.028489949181676,0.059083603322506,0.053745537996292,0.126904785633087,-0.138893023133278,-0.046553850173950,-0.029643282294273,0.264458388090134,-0.000439807248767,-0.159605875611305,0.141846358776093,0.157456725835800,0.003118599299341,0.055996723473072,-0.116311378777027,-0.048700284212828));
res += mul(Get(s2,dx,dy), float4x4(-0.012482370249927,-0.119127012789249,0.025283129885793,0.091514371335506,0.050281636416912,0.177126258611679,-0.024220123887062,0.054434511810541,-0.009661076590419,0.127197682857513,0.027466392144561,-0.079471305012703,-0.100829146802425,-0.036629669368267,0.005386535543948,-0.028921632096171));
res += mul(Get(s3,-dx,-dy), float4x4(-0.145257815718651,-0.091772735118866,-0.110973477363586,0.037354022264481,0.070849545300007,0.072490654885769,0.147268921136856,-0.086554534733295,0.017135750502348,0.063984751701355,-0.051090117543936,-0.044900685548782,0.159263178706169,0.023032411932945,0.016944691538811,0.135872185230255));
res += mul(Get(s3,-dx,0), float4x4(0.164238259196281,0.027253162115812,-0.157734006643295,0.078051559627056,-0.009490367956460,0.060934320092201,0.094488099217415,-0.086632832884789,-0.075567908585072,0.026614489033818,0.000095629155112,-0.007640867959708,-0.018304731696844,0.123291335999966,-0.017645642161369,-0.057419504970312));
res += mul(Get(s3,-dx,dy), float4x4(0.012292178347707,-0.010875674895942,-0.078815273940563,0.147326290607452,-0.091280810534954,0.002057370962575,-0.079261377453804,0.035032134503126,-0.072954311966896,0.030197415500879,0.005863850004971,0.002986623905599,-0.076637730002403,-0.028309473767877,0.233699709177017,0.044631265103817));
res += mul(Get(s3,0,-dy), float4x4(-0.119964018464088,-0.057603210210800,0.105436533689499,-0.144206076860428,-0.014416912570596,0.051913458853960,-0.117206573486328,-0.108438432216644,0.112523920834064,0.114292860031128,0.128771036863327,0.042819231748581,0.106077633798122,0.068570718169212,-0.063569828867912,0.046520914882421));
res += mul(Get(s3,0,0), float4x4(-0.067540019750595,0.060386814177036,0.195228889584541,-0.014997710473835,-0.150268882513046,0.077536180615425,-0.079014420509338,-0.011723008938134,-0.043810933828354,-0.035000313073397,-0.098823733627796,0.016439368948340,-0.129249006509781,-0.092514604330063,0.002899890532717,0.081427119672298));
res += mul(Get(s3,0,dy), float4x4(-0.030854916200042,0.038338053971529,-0.099743500351906,-0.003596292110160,-0.059486869722605,0.012415114790201,-0.080545887351036,-0.124836131930351,-0.054838120937347,0.033745769411325,0.021840140223503,0.001825354178436,-0.068627916276455,-0.115559428930283,-0.099260903894901,0.018254844471812));
res += mul(Get(s3,dx,-dy), float4x4(0.104775801301003,-0.048973791301250,-0.216330915689468,-0.026567708700895,-0.019809629768133,-0.029590433463454,-0.154771029949188,-0.087955430150032,-0.099316976964474,-0.017887469381094,0.146319657564163,-0.206880345940590,-0.096801094710827,0.016022142022848,0.030659992247820,-0.124276287853718));
res += mul(Get(s3,dx,0), float4x4(-0.066683284938335,-0.018212847411633,0.048292398452759,0.026596739888191,0.008446201682091,0.040747128427029,0.036609638482332,-0.105391897261143,-0.018544157966971,-0.010786276310682,-0.144754081964493,0.155314087867737,-0.046131782233715,-0.003218873403966,-0.017345836386085,-0.118856012821198));
res += mul(Get(s3,dx,dy), float4x4(-0.053659826517105,0.020416604354978,-0.112326793372631,0.057405866682529,-0.034361172467470,0.003645340679213,-0.012053570710123,-0.005336483009160,-0.218425676226616,0.068362899124622,0.127174556255341,-0.146017551422119,0.198239237070084,0.148460596799850,-0.012450324371457,0.046513482928276));
return max(float4(0,0,0,0), res);
}
