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
res += mul(Get(s0,-dx,-dy), float4x4(0.092629171907902,-0.037650682032108,-0.262844890356064,0.078506648540497,-0.066417060792446,-0.112470403313637,-0.168863162398338,-0.181916937232018,0.059090334922075,0.069653265178204,-0.048642318695784,-0.144031986594200,0.121736936271191,-0.027914889156818,0.024523591622710,-0.000092356742243));
res += mul(Get(s0,-dx,0), float4x4(0.096567109227180,0.037764731794596,-0.297957450151443,0.184628814458847,0.297948747873306,0.080660954117775,0.001074376399629,-0.006567678879946,-0.049695782363415,0.053679034113884,0.293107748031616,0.074686020612717,0.065466791391373,0.010123675689101,-0.056195616722107,0.056879103183746));
res += mul(Get(s0,-dx,dy), float4x4(0.181124016642570,-0.051551483571529,-0.183190345764160,0.460096389055252,0.199813902378082,-0.140348196029663,-0.385399907827377,0.087676487863064,-0.118564777076244,-0.246813893318176,0.134674444794655,-0.067604176700115,0.106096275150776,0.126445099711418,-0.036631066352129,-0.013910405337811));
res += mul(Get(s0,0,-dy), float4x4(-0.034483965486288,-0.025978328660131,-0.095924235880375,-0.199875086545944,-0.053002282977104,-0.225543588399887,0.051755703985691,-0.063772536814213,-0.304559409618378,0.406060636043549,-0.071945153176785,-0.138817846775055,0.094853915274143,-0.049134176224470,0.002230759942904,-0.031382046639919));
res += mul(Get(s0,0,0), float4x4(0.064287029206753,-0.119700193405151,-0.091932117938995,0.074034392833710,-0.048899620771408,-0.026249248534441,0.658232629299164,0.208017051219940,-0.213242098689079,0.237695530056953,0.064947731792927,-0.058766514062881,-0.032810974866152,0.032205350697041,-0.084402427077293,-0.039380114525557));
res += mul(Get(s0,0,dy), float4x4(0.077815793454647,-0.019696377217770,-0.189877644181252,-0.205142721533775,0.185947120189667,-0.032024152576923,0.249532520771027,0.125734046101570,-0.092279687523842,-0.066699668765068,-0.263802021741867,0.068866588175297,0.026725435629487,0.083483986556530,-0.036811046302319,-0.065129928290844));
res += mul(Get(s0,dx,-dy), float4x4(0.099643118679523,-0.136952400207520,-0.002621295163408,-0.027096176519990,-0.030118431895971,-0.071448497474194,-0.116732180118561,-0.066408008337021,-0.088561639189720,0.005090142600238,0.000487580255140,-0.054443556815386,-0.062343169003725,-0.052167430520058,-0.066930167376995,-0.052539248019457));
res += mul(Get(s0,dx,0), float4x4(0.293947935104370,-0.087989054620266,-0.054171919822693,0.228918641805649,-0.025953942909837,0.001096692751162,0.349332362413406,0.309062272310257,-0.215665817260742,0.312468945980072,0.035748954862356,-0.061347022652626,-0.161905348300934,0.065863750874996,-0.071589946746826,-0.042037419974804));
res += mul(Get(s0,dx,dy), float4x4(0.055682200938463,-0.163563117384911,-0.131505519151688,-0.183457031846046,0.070307180285454,-0.105598196387291,0.079857416450977,0.319841653108597,-0.117504574358463,0.017482880502939,-0.155513092875481,-0.037463508546352,-0.046235576272011,0.090465560555458,-0.008988945744932,-0.060348428785801));
res += mul(Get(s1,-dx,-dy), float4x4(0.078012898564339,-0.044214408844709,-0.197945892810822,0.000291784381261,0.095687888562679,0.005380563903600,-0.162617295980453,-0.198192253708839,-0.068573780357838,0.006330761127174,-0.027480928227305,-0.119744285941124,-0.039823930710554,-0.078933656215668,-0.143957182765007,-0.107466571033001));
res += mul(Get(s1,-dx,0), float4x4(0.134612590074539,-0.019703822210431,-0.068321630358696,-0.029944289475679,-0.097657591104507,0.015617361292243,-0.170746356248856,-0.158821806311607,-0.078401498496532,-0.170874625444412,0.016141105443239,-0.112775892019272,0.052891287952662,0.084257706999779,-0.002912274561822,-0.123898088932037));
res += mul(Get(s1,-dx,dy), float4x4(0.089699953794479,-0.168116867542267,0.030627669766545,0.069790132343769,-0.050369553267956,0.265847176313400,-0.232895642518997,-0.081953190267086,-0.005436895880848,-0.156071469187737,0.207464739680290,0.011923827230930,-0.067827843129635,0.157367050647736,-0.023966299369931,-0.007325658109039));
res += mul(Get(s1,0,-dy), float4x4(0.007198599167168,-0.111624456942081,-0.049353692680597,-0.047630682587624,-0.020910395309329,-0.159727022051811,0.025098277255893,-0.178926184773445,-0.056147873401642,0.139031633734703,-0.120179042220116,0.082176961004734,0.490488350391388,-0.039639838039875,0.025559714064002,-0.201419696211815));
res += mul(Get(s1,0,0), float4x4(-0.045086301863194,-0.091745942831039,0.034655161201954,-0.034036096185446,0.079386875033379,0.015851620584726,0.009053751826286,0.003666059579700,-0.039144128561020,-0.050929613411427,-0.024579240009189,0.269831955432892,-0.093256838619709,0.016161227598786,-0.151009902358055,-0.157055720686913));
res += mul(Get(s1,0,dy), float4x4(0.121210597455502,-0.166876837611198,0.131877407431602,0.326640546321869,-0.059445798397064,0.073386833071709,-0.180553078651428,0.127554222941399,-0.012556347995996,-0.179949864745140,0.327742964029312,0.222350597381592,-0.105204738676548,-0.171663925051689,-0.123242884874344,-0.057057879865170));
res += mul(Get(s1,dx,-dy), float4x4(-0.194724440574646,-0.090748593211174,0.149424687027931,-0.068018883466721,-0.116048477590084,-0.148664921522141,0.086629666388035,-0.082231096923351,-0.141179174184799,0.136112794280052,-0.125139653682709,0.053310219198465,0.140855222940445,-0.017216533422470,-0.016775418072939,-0.186604171991348));
res += mul(Get(s1,dx,0), float4x4(-0.030721282586455,-0.176302492618561,0.117426648736000,-0.006509568542242,0.016878662630916,0.061388701200485,0.060827203094959,0.035931099206209,-0.039919182658195,0.105512663722038,-0.053773600608110,0.132069140672684,-0.050188887864351,-0.070413656532764,-0.178272262215614,-0.165612414479256));
res += mul(Get(s1,dx,dy), float4x4(0.056763876229525,-0.195119798183441,0.081084318459034,0.359380304813385,-0.087272703647614,0.015835611149669,-0.051978148519993,0.091597169637680,0.054685812443495,0.029225671663880,0.225643709301949,-0.043936964124441,0.183784857392311,0.096449412405491,-0.094322443008423,-0.096044376492500));
res += mul(Get(s2,-dx,-dy), float4x4(0.213888481259346,-0.038523592054844,-0.188564151525497,-0.132989972829819,-0.102122649550438,0.060272835195065,0.222013369202614,0.102078214287758,-0.102362647652626,0.041405193507671,-0.059524096548557,0.019359290599823,-0.035631489008665,0.207429245114326,0.395477890968323,0.011790066026151));
res += mul(Get(s2,-dx,0), float4x4(0.272808074951172,-0.060434930026531,0.024816514924169,-0.014241291210055,0.133050993084908,0.132086068391800,0.047324057668447,-0.064519025385380,-0.160921752452850,0.183804064989090,-0.055278908461332,-0.025368917733431,-0.008138022385538,0.089323796331882,0.063086360692978,-0.185588032007217));
res += mul(Get(s2,-dx,dy), float4x4(0.270427763462067,-0.093417488038540,-0.049074705690145,0.055597711354494,0.014407789334655,0.025046784430742,-0.122729182243347,-0.005373093299568,-0.208288222551346,0.034038949757814,0.029839582741261,0.321184962987900,0.119473375380039,0.078636825084686,-0.040649596601725,-0.176599726080894));
res += mul(Get(s2,0,-dy), float4x4(0.140724495053291,-0.050264850258827,0.342223674058914,0.325191587209702,-0.048708848655224,0.120645895600319,-0.049996759742498,0.044972520321608,-0.073453575372696,0.109091073274612,0.146706089377403,-0.213421702384949,-0.103030867874622,0.019205072894692,0.039090789854527,-0.116105005145073));
res += mul(Get(s2,0,0), float4x4(0.361122071743011,-0.125060230493546,0.028227753937244,0.000520274334121,-0.135299459099770,0.087283521890640,0.026589253917336,-0.007728504016995,-0.137691050767899,0.122468955814838,0.135999232530594,-0.032793443650007,-0.072935052216053,-0.132799938321114,0.021746639162302,-0.184211924672127));
res += mul(Get(s2,0,dy), float4x4(0.080645740032196,-0.170894116163254,-0.218834728002548,-0.086380377411842,0.011145165190101,0.007298767101020,0.087860092520714,0.342277437448502,-0.006244227755815,0.203774958848953,0.019379239529371,-0.107888035476208,-0.034952215850353,-0.070297300815582,0.028733750805259,0.010788712650537));
res += mul(Get(s2,dx,-dy), float4x4(-0.045180555433035,-0.129236593842506,0.021131759509444,0.193224832415581,0.047472521662712,0.036006398499012,-0.112744852900505,0.111405238509178,-0.083992049098015,0.098706088960171,-0.044481016695499,-0.045562274754047,-0.167672008275986,-0.015117134898901,-0.212015047669411,-0.039409659802914));
res += mul(Get(s2,dx,0), float4x4(0.211227104067802,-0.108155786991119,0.010833431035280,-0.079051963984966,-0.097490206360817,0.037657201290131,0.051568131893873,-0.074398726224899,-0.015643827617168,-0.164371877908707,0.012211708351970,0.161353334784508,-0.025883803144097,-0.133572712540627,-0.068220905959606,0.020524773746729));
res += mul(Get(s2,dx,dy), float4x4(0.117538280785084,-0.074498116970062,0.154074326157570,-0.085647702217102,-0.078328199684620,-0.052850387990475,0.101964183151722,0.266139209270477,0.008426593616605,0.012153246439993,0.114530831575394,-0.058987092226744,-0.043309953063726,-0.175844162702560,0.021990096196532,0.177096009254456));
res += mul(Get(s3,-dx,-dy), float4x4(0.115866608917713,-0.084388218820095,0.194885209202766,-0.080722510814667,-0.080102302134037,0.012485607527196,-0.091251976788044,0.137554138898849,-0.125831618905067,-0.080447793006897,-0.010885501280427,-0.113280951976776,0.049811046570539,-0.128495559096336,-0.045409817248583,0.022489368915558));
res += mul(Get(s3,-dx,0), float4x4(0.035007514059544,0.047229576855898,0.150650829076767,-0.072269044816494,0.037739478051662,-0.041453890502453,0.028645759448409,0.091256938874722,-0.106459707021713,0.281761944293976,-0.137086316943169,-0.150418967008591,-0.048749953508377,-0.194502338767052,0.031998831778765,0.110256329178810));
res += mul(Get(s3,-dx,dy), float4x4(0.136183902621269,-0.209459513425827,-0.138243302702904,-0.070168614387512,0.054901842027903,-0.027058608829975,0.031673438847065,-0.041038576513529,-0.146037712693214,0.109839178621769,-0.005644681397825,-0.082349717617035,-0.041788607835770,-0.020183390006423,0.099898353219032,0.033423673361540));
res += mul(Get(s3,0,-dy), float4x4(-0.079565763473511,0.229036048054695,0.228631511330605,-0.002967806532979,-0.029460588470101,-0.019457403570414,-0.089552752673626,0.070490509271622,-0.004521738737822,-0.157034114003181,-0.236079409718513,0.059126969426870,0.400334388017654,-0.193313151597977,0.080605924129486,-0.017058817669749));
res += mul(Get(s3,0,0), float4x4(-0.101117677986622,0.050680916756392,0.126140579581261,-0.121806666254997,0.118367567658424,-0.102448210120201,0.034000255167484,0.067051537334919,0.000097960350104,0.030056817457080,-0.185740381479263,0.166511014103889,-0.031380433589220,-0.149674460291862,-0.089338526129723,-0.148465573787689));
res += mul(Get(s3,0,dy), float4x4(-0.104850992560387,-0.175126969814301,-0.166803359985352,-0.003041740739718,0.167591363191605,-0.081848233938217,0.051415286958218,0.005078607238829,-0.078282006084919,0.055058609694242,0.199087440967560,0.121505200862885,-0.051543135195971,0.046166773885489,-0.065993830561638,-0.002822452457622));
res += mul(Get(s3,dx,-dy), float4x4(-0.225095972418785,0.152138143777847,0.062595553696156,-0.163761064410210,-0.031319785863161,-0.021889906376600,-0.104540638625622,-0.027662809938192,-0.119566343724728,-0.055764961987734,0.001458267681301,-0.120738565921783,0.313118427991867,0.048943076282740,0.091186009347439,-0.132248133420944));
res += mul(Get(s3,dx,0), float4x4(-0.118730902671814,-0.004417432006449,-0.055369369685650,-0.189096719026566,0.067926578223705,-0.066871583461761,-0.002998678945005,-0.003406886244193,-0.062778182327747,0.060447230935097,0.119871385395527,-0.002890277188271,-0.103050716221333,-0.008517173118889,-0.091625474393368,-0.169900178909302));
res += mul(Get(s3,dx,dy), float4x4(-0.161192730069160,-0.125545516610146,0.000925498083234,0.220478177070618,0.180246084928513,-0.057757124304771,-0.030499253422022,0.019816895946860,-0.149230584502220,-0.088640570640564,0.224807366728783,-0.051275439560413,-0.075404487550259,-0.077045008540154,-0.027277395129204,-0.008307386189699));
return max(float4(0,0,0,0), res);
}
