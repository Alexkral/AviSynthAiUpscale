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
float4 res = float4(-0.029798980802298,-0.432647913694382,-0.011955938301980,-0.083335541188717);
res += mul(Get(s0,-dx,-dy), float4x4(0.036590043455362,0.004035611636937,-0.044195879250765,0.128192842006683,-0.158943518996239,0.005530172493309,0.032368972897530,0.151779621839523,0.036136183887720,-0.065406821668148,-0.029236583039165,-0.064225845038891,0.202755421400070,-0.016163611784577,0.072333939373493,0.144141122698784));
res += mul(Get(s0,-dx,0), float4x4(-0.116206511855125,-0.066438965499401,-0.061588365584612,-0.035394538193941,-0.016292925924063,0.055212225764990,-0.036246430128813,-0.119819641113281,0.003171818796545,-0.081123232841492,-0.004951169714332,-0.126109689474106,-0.041808493435383,-0.003315939567983,0.007566361222416,-0.074223324656487));
res += mul(Get(s0,-dx,dy), float4x4(0.184075325727463,-0.033088441938162,0.000386110797990,0.234731093049049,-0.007506682537496,-0.091730006039143,0.027416724711657,-0.072115734219551,-0.030578428879380,-0.081345036625862,0.000706928316504,-0.089721418917179,-0.083992063999176,-0.074765689671040,0.096025407314301,0.012829090468585));
res += mul(Get(s0,0,-dy), float4x4(0.033572118729353,0.047314360737801,-0.036349374800920,0.038297824561596,-0.114742189645767,0.138228371739388,0.101986967027187,0.114003434777260,-0.021351365372539,0.043375819921494,0.044444762170315,0.026611478999257,0.041927501559258,-0.155569106340408,0.067378766834736,0.096910439431667));
res += mul(Get(s0,0,0), float4x4(0.009787818416953,-0.050020020455122,0.067264564335346,-0.051884043961763,0.009296017698944,-0.108604155480862,0.003068968653679,0.024338958784938,0.101024523377419,0.094592437148094,-0.064174421131611,-0.027455905452371,-0.114755891263485,0.057227578014135,-0.029373811557889,-0.152391299605370));
res += mul(Get(s0,0,dy), float4x4(0.213496282696724,0.060008335858583,-0.021619813516736,0.150964051485062,-0.037168648093939,-0.131032839417458,-0.150912269949913,-0.179935961961746,0.078341051936150,0.043932653963566,-0.312349677085876,-0.080573886632919,0.103129275143147,-0.138261407613754,0.129581004381180,0.020986786112189));
res += mul(Get(s0,dx,-dy), float4x4(-0.099619671702385,0.180960297584534,0.025935072451830,-0.096722394227982,-0.037818059325218,0.072478644549847,-0.068664364516735,-0.113488681614399,0.204456388950348,0.024496067315340,0.097115494310856,0.077807627618313,0.182480588555336,0.103206977248192,0.021497521549463,0.095602333545685));
res += mul(Get(s0,dx,0), float4x4(0.045516345649958,-0.096964471042156,-0.078940682113171,-0.010767196305096,0.164805233478546,0.095573797821999,0.077117025852203,-0.004949044901878,-0.145915716886520,0.034141737967730,0.033126473426819,-0.012081956490874,-0.071230947971344,0.101935476064682,0.008691170252860,-0.029740264639258));
res += mul(Get(s0,dx,dy), float4x4(0.285736620426178,0.029325285926461,-0.158025249838829,0.039723929017782,0.082325443625450,0.036072894930840,-0.038717817515135,-0.018104840070009,-0.052473645657301,-0.045416530221701,-0.075774297118187,0.007086144294590,0.109924510121346,0.072681643068790,0.092686913907528,-0.083152346313000));
res += mul(Get(s1,-dx,-dy), float4x4(-0.031283162534237,0.089522480964661,0.075387470424175,0.096155531704426,0.035947494208813,-0.076916769146919,0.045784622430801,-0.013758751563728,-0.038810066878796,-0.093319177627563,0.033324792981148,0.053463622927666,-0.325929164886475,0.009475560858846,-0.032093148678541,-0.044402882456779));
res += mul(Get(s1,-dx,0), float4x4(-0.181273773312569,0.273510664701462,0.054583739489317,-0.026039343327284,-0.070128291845322,-0.047815863043070,0.002313080243766,0.118792086839676,-0.054096668958664,-0.116017706692219,0.020841395482421,0.008668993599713,0.090745247900486,0.012080676853657,0.010758914984763,0.144751980900764));
res += mul(Get(s1,-dx,dy), float4x4(-0.199368253350258,0.188947990536690,0.055754050612450,0.015398288145661,0.069186903536320,0.004710156936198,0.187986493110657,-0.269653052091599,-0.030250728130341,-0.106779329478741,0.041950818151236,-0.052306506782770,-0.058220945298672,-0.028055774047971,-0.034802861511707,-0.169148519635201));
res += mul(Get(s1,0,-dy), float4x4(0.355864137411118,0.070884414017200,0.118844740092754,0.150745391845703,0.061340775340796,-0.165500268340111,0.017250265926123,0.030384125187993,0.010360055603087,-0.005869089160115,0.081141300499439,0.155683249235153,-0.075669050216675,0.058379113674164,-0.007615287322551,-0.002474102657288));
res += mul(Get(s1,0,0), float4x4(0.142125055193901,0.071533717215061,-0.211024910211563,-0.159749791026115,-0.259939104318619,-0.025767110288143,0.116293765604496,0.263136476278305,-0.036199029535055,-0.052973043173552,-0.042300112545490,-0.091444492340088,0.079282015562057,-0.037081029266119,0.043579522520304,0.278381556272507));
res += mul(Get(s1,0,dy), float4x4(0.082039996981621,0.080386988818645,-0.163625657558441,-0.114678896963596,0.088619336485863,-0.013980238698423,0.125757202506065,-0.044714346528053,0.038202796131372,-0.109005562961102,-0.088356338441372,-0.051095798611641,-0.130495652556419,0.027508817613125,-0.267998993396759,-0.419651836156845));
res += mul(Get(s1,dx,-dy), float4x4(0.034889448434114,-0.006051976233721,0.069092996418476,0.138293176889420,0.101077824831009,-0.101308926939964,-0.024116370826960,-0.085106953978539,-0.048481546342373,0.030328406020999,-0.056970637291670,0.074578709900379,-0.227618917822838,-0.086973018944263,0.088885545730591,0.074838526546955));
res += mul(Get(s1,dx,0), float4x4(0.038773022592068,-0.278402000665665,0.022917775437236,-0.041958525776863,0.214574128389359,0.029422730207443,0.050688780844212,-0.006982102990150,-0.067949637770653,-0.160826012492180,0.013936887495220,0.004969013389200,-0.020764533430338,0.031286362558603,0.171144559979439,0.146280571818352));
res += mul(Get(s1,dx,dy), float4x4(-0.066807679831982,-0.202973708510399,-0.029877826571465,-0.072621382772923,0.001677080173977,-0.074994102120399,0.130339428782463,0.000746515172068,0.073603279888630,-0.008652375079691,-0.168532744050026,-0.131012097001076,-0.054051760584116,-0.020122857764363,0.006028151139617,-0.242219299077988));
res += mul(Get(s2,-dx,-dy), float4x4(0.145163014531136,0.067000374197960,0.009039593860507,0.033176504075527,-0.047063741832972,-0.009503223933280,-0.043467309325933,0.008950251154602,-0.124244250357151,0.011988878250122,-0.126527309417725,-0.047508887946606,-0.015132596716285,-0.025142639875412,-0.044536501169205,-0.015476627275348));
res += mul(Get(s2,-dx,0), float4x4(-0.048578962683678,0.081752076745033,-0.261440098285675,-0.350781947374344,-0.103190951049328,-0.042648974806070,-0.015517055988312,-0.075510136783123,-0.341083794832230,0.027208866551518,-0.083366505801678,-0.037609744817019,-0.050996489822865,0.076484069228172,0.019107991829515,0.111057370901108));
res += mul(Get(s2,-dx,dy), float4x4(-0.031253311783075,-0.086065985262394,0.046547587960958,-0.049365438520908,0.014796566218138,-0.052957568317652,0.100988022983074,0.079246051609516,-0.004890682175756,0.001224481849931,0.025185098871589,0.034376945346594,-0.110973201692104,0.044599045068026,0.145456284284592,-0.009925915859640));
res += mul(Get(s2,0,-dy), float4x4(-0.046420160681009,0.163282528519630,0.022744782269001,0.227762281894684,0.008656173944473,-0.067313313484192,-0.025471812114120,0.101730003952980,-0.120369821786880,-0.068577110767365,-0.054481558501720,-0.025828732177615,0.020097792148590,0.182514563202858,-0.034561336040497,0.074579492211342));
res += mul(Get(s2,0,0), float4x4(0.203916937112808,-0.057637225836515,-0.076965346932411,-0.181512176990509,-0.093491137027740,-0.244277432560921,0.001354200649075,-0.095673725008965,-0.241856962442398,0.123446963727474,-0.075195819139481,-0.059265784919262,-0.190698057413101,0.008461849763989,-0.190659910440445,-0.161299824714661));
res += mul(Get(s2,0,dy), float4x4(0.050930451601744,0.043180979788303,0.222271993756294,-0.028966160491109,-0.005379832815379,-0.099622480571270,0.013483550399542,-0.045850362628698,-0.068664737045765,-0.105034805834293,-0.139372467994690,-0.103844776749611,-0.307112127542496,-0.005497904960066,-0.023656236007810,-0.206131309270859));
res += mul(Get(s2,dx,-dy), float4x4(0.183314174413681,-0.014554277062416,-0.063023149967194,0.013409168459475,-0.036618586629629,-0.152235239744186,-0.031250394880772,0.052375670522451,-0.019118737429380,-0.022748647257686,0.043013010174036,0.069509044289589,0.043775945901871,0.090008459985256,-0.038570180535316,0.042836703360081));
res += mul(Get(s2,dx,0), float4x4(-0.075971946120262,-0.126430258154869,-0.132366493344307,0.094860322773457,0.064308658242226,-0.144024491310120,-0.035659451037645,-0.128000915050507,-0.019589874893427,0.262151449918747,-0.036584481596947,0.135095357894897,0.101258844137192,0.072820298373699,-0.057266216725111,-0.273088634014130));
res += mul(Get(s2,dx,dy), float4x4(-0.108865164220333,0.010072512552142,0.017286598682404,-0.127740666270256,0.015133449807763,-0.097052313387394,-0.042284738272429,-0.023205757141113,0.110560044646263,-0.071085780858994,-0.014148465357721,0.089651413261890,0.152243807911873,0.221947684884071,0.000001993889782,0.119049243628979));
res += mul(Get(s3,-dx,-dy), float4x4(0.140845432877541,-0.020217932760715,0.020932240411639,0.019498985260725,0.093562982976437,0.143477678298950,-0.003974128980190,0.135298356413841,-0.068603336811066,-0.038498934358358,0.079544715583324,-0.015400713309646,0.049048680812120,0.006623756140471,0.022169372066855,0.039007544517517));
res += mul(Get(s3,-dx,0), float4x4(0.077633023262024,-0.008516283705831,-0.043253496289253,-0.076497256755829,-0.322732448577881,-0.077678456902504,-0.063322052359581,-0.149068608880043,0.045733574777842,0.076644606888294,0.176044642925262,0.079840898513794,0.098507203161716,0.023487659171224,0.016804303973913,-0.103906676173210));
res += mul(Get(s3,-dx,dy), float4x4(0.199215874075890,-0.087520577013493,0.047000065445900,0.054817959666252,-0.143625929951668,-0.019980672746897,0.173748522996902,0.014154866337776,-0.113259777426720,-0.070028625428677,-0.035264533013105,-0.110328115522861,0.061604119837284,0.077299825847149,0.143012836575508,0.126431897282600));
res += mul(Get(s3,0,-dy), float4x4(0.149831324815750,-0.064615420997143,0.035287678241730,0.153690651059151,0.099317215383053,0.183509737253189,-0.046923231333494,0.077100999653339,0.068966895341873,0.019446210935712,-0.089494496583939,-0.144155487418175,-0.155303165316582,-0.122511751949787,0.063938677310944,-0.043742019683123));
res += mul(Get(s3,0,0), float4x4(-0.122108899056911,-0.141047507524490,-0.126422032713890,-0.108073391020298,-0.096762225031853,-0.196775943040848,-0.204152867197990,-0.168150082230568,0.071807153522968,0.191021203994751,-0.001174781471491,0.240891814231873,-0.039619918912649,-0.094950102269650,0.185628026723862,0.148582667112350));
res += mul(Get(s3,0,dy), float4x4(-0.087996318936348,-0.039045404642820,0.383982330560684,0.176567092537880,-0.133113130927086,-0.029969999566674,0.208819910883904,0.139446377754211,-0.039734195917845,-0.004850939847529,-0.084096983075142,-0.159654855728149,-0.185429453849792,-0.008590380661190,0.245562553405762,0.094481095671654));
res += mul(Get(s3,dx,-dy), float4x4(-0.138859495520592,-0.057900957763195,0.067286089062691,0.021448284387589,0.114792577922344,0.167304426431656,0.032529357820749,0.070455491542816,-0.008399763144553,-0.168320253491402,0.042477477341890,-0.019297629594803,0.100861854851246,-0.183866292238235,-0.109268978238106,-0.013939914293587));
res += mul(Get(s3,dx,0), float4x4(-0.043355070054531,-0.152524277567863,0.020687418058515,-0.002308647846803,0.152900502085686,-0.112600035965443,-0.113352276384830,-0.070403486490250,0.076842449605465,-0.050427459180355,-0.032769061625004,0.045918028801680,-0.079282075166702,0.078939490020275,-0.000868175528012,0.100015237927437));
res += mul(Get(s3,dx,dy), float4x4(0.147768184542656,0.198742479085922,-0.042210817337036,-0.043890688568354,0.113210342824459,-0.001552667701617,-0.087627872824669,0.045539561659098,0.002349873539060,-0.118378423154354,0.075724251568317,0.028352355584502,-0.010869114659727,0.038367904722691,-0.067556336522102,0.061685845255852));
res += mul(Get(s4,-dx,-dy), float4x4(-0.105325110256672,0.101495243608952,0.023176858201623,-0.097672753036022,-0.022417828440666,-0.043599255383015,-0.006350396201015,-0.016982484608889,0.157543227076530,0.010186512954533,-0.049983270466328,0.100102052092552,0.042595636099577,-0.134423479437828,-0.081915497779846,-0.147723898291588));
res += mul(Get(s4,-dx,0), float4x4(-0.136147007346153,-0.005504038184881,-0.055398117750883,-0.089803211390972,-0.148143708705902,-0.142083302140236,-0.062431577593088,-0.087917774915695,-0.110531248152256,-0.027439692988992,0.070960037410259,-0.224314808845520,0.130357265472412,0.027528556063771,0.041451860219240,0.010561306960881));
res += mul(Get(s4,-dx,dy), float4x4(-0.194924980401993,0.066395245492458,-0.126986071467400,-0.127732247114182,0.011084031313658,-0.086913906037807,0.094435542821884,-0.167283877730370,0.059060737490654,-0.034854330122471,0.035339802503586,-0.113863363862038,0.041092306375504,0.038151927292347,0.041195921599865,0.185709863901138));
res += mul(Get(s4,0,-dy), float4x4(0.105112574994564,0.044203106313944,0.099342755973339,0.085810139775276,0.073902465403080,0.114987887442112,-0.096596874296665,-0.031804021447897,0.135494843125343,0.082745552062988,0.104143999516964,0.203977987170219,-0.042635485529900,-0.054096281528473,-0.073021844029427,-0.014782863669097));
res += mul(Get(s4,0,0), float4x4(0.287047207355499,0.042680297046900,0.221924960613251,0.129447862505913,-0.031392693519592,0.030099976807833,0.167041644454002,0.086403407156467,0.048650201410055,-0.113265067338943,-0.115938358008862,-0.243898868560791,-0.180158481001854,0.120275206863880,-0.199101224541664,-0.063082456588745));
res += mul(Get(s4,0,dy), float4x4(0.135800033807755,-0.013491003774107,-0.172959730029106,-0.111940503120422,0.153934717178345,-0.047332547605038,-0.064572788774967,-0.130390778183937,0.013403437100351,-0.039121031761169,0.118993833661079,-0.011289444752038,-0.157132357358932,-0.018313579261303,0.147623673081398,-0.013180713169277));
res += mul(Get(s4,dx,-dy), float4x4(0.040214367210865,0.094240628182888,0.000560022890568,-0.078161552548409,0.023905970156193,-0.054348114877939,0.052050065249205,0.061443101614714,-0.009343557059765,0.262514591217041,0.113141864538193,0.058116272091866,-0.131006091833115,0.155622079968452,0.065636105835438,0.053512778133154));
res += mul(Get(s4,dx,0), float4x4(-0.159336313605309,-0.025056252256036,0.017502177506685,0.152534723281860,0.008390448056161,0.035392377525568,-0.072188407182693,-0.031797148287296,-0.136701494455338,0.005538368131965,-0.002108867047355,-0.131316229701042,0.009137843735516,-0.125343859195709,0.109898068010807,0.120637781918049));
res += mul(Get(s4,dx,dy), float4x4(-0.297945469617844,-0.038808681070805,-0.007083956617862,0.017864266410470,-0.020902816206217,-0.131111070513725,0.034914113581181,-0.063517391681671,-0.046139925718307,-0.013057752512395,0.019430231302977,0.047765698283911,0.130580961704254,-0.000662504753564,-0.035030100494623,-0.046829413622618));
res += mul(Get(s5,-dx,-dy), float4x4(-0.092763513326645,-0.099159307777882,-0.044516783207655,0.137991085648537,-0.178225040435791,-0.148146599531174,0.013782165944576,0.006076477468014,0.094999477267265,0.079379163682461,0.040435738861561,0.082168303430080,-0.035385433584452,-0.189152836799622,-0.007986512966454,-0.053332198411226));
res += mul(Get(s5,-dx,0), float4x4(-0.156678527593613,-0.083301171660423,0.137656822800636,0.019172875210643,-0.097225584089756,-0.134057596325874,0.004602586850524,0.007110037375242,-0.060160640627146,-0.013582764193416,0.203029051423073,0.152395769953728,-0.272650301456451,-0.165122270584106,-0.019355457276106,-0.080305047333241));
res += mul(Get(s5,-dx,dy), float4x4(0.048989411443472,0.063051171600819,-0.107869900763035,-0.323460280895233,0.008733810856938,-0.007084674201906,-0.091587521135807,-0.008062545210123,-0.087162375450134,0.088982917368412,-0.169200390577316,-0.273759841918945,-0.154569461941719,-0.126995608210564,0.099499516189098,0.183884084224701));
res += mul(Get(s5,0,-dy), float4x4(-0.048611108213663,0.086014144122601,-0.006150852888823,0.028648827224970,-0.133698418736458,-0.174641519784927,0.011956016533077,0.039573512971401,-0.117834456264973,0.012634441256523,0.056308262050152,0.084184728562832,-0.020046664401889,0.073466733098030,0.020398933440447,0.072820380330086));
res += mul(Get(s5,0,0), float4x4(-0.076517701148987,0.082266941666603,0.066600859165192,0.099382638931274,-0.216999560594559,0.036283899098635,0.138619199395180,0.014234239235520,-0.170649796724319,0.153955742716789,0.127472519874573,0.142448052763939,0.137158155441284,0.124894469976425,-0.100059635937214,-0.193469405174255));
res += mul(Get(s5,0,dy), float4x4(-0.106186971068382,0.054583568125963,-0.035464815795422,-0.112890094518661,-0.079483434557915,-0.160516574978828,0.047460224479437,-0.092347100377083,0.074582882225513,0.004584576468915,-0.199697390198708,-0.221180871129036,0.285824060440063,0.161444231867790,0.245180100202560,0.132586658000946));
res += mul(Get(s5,dx,-dy), float4x4(0.093282543122768,0.104804940521717,0.063497915863991,-0.011436894536018,0.023274665698409,0.279661417007446,0.026684489101171,0.008085400797427,0.066573210060596,0.219805255532265,-0.028407080098987,-0.032266184687614,0.031791958957911,0.062223866581917,-0.004037205595523,0.027143133804202));
res += mul(Get(s5,dx,0), float4x4(0.098703488707542,0.278166085481644,0.024887263774872,0.023560699075460,-0.051639307290316,0.375320583581924,-0.000784797361121,-0.003662217874080,0.039397835731506,0.407736688852310,0.094768829643726,0.135016635060310,-0.002685462590307,-0.216123625636101,-0.063129477202892,-0.092456981539726));
res += mul(Get(s5,dx,dy), float4x4(-0.093508966267109,0.023805521428585,0.025915062054992,-0.014672002755105,0.006899081170559,-0.178298085927963,0.023886827751994,-0.006396785844117,0.061181813478470,0.124893449246883,-0.029194181784987,-0.047021631151438,0.108684591948986,0.177567586302757,0.180127054452896,0.148100659251213));
res = max(float4(0, 0, 0, 0), res) + float4(0.179949909448624,-0.040422964841127,-0.211257949471474,-0.255585938692093) * min(float4(0, 0, 0, 0), res);
return res;
}