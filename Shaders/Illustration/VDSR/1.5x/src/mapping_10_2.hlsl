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
res += mul(Get(s0,-dx,-dy), float4x4(-0.004068938083947,-0.060157205909491,0.038131583482027,0.030321950092912,-0.038049109280109,0.004516687244177,-0.125895798206329,-0.123369060456753,0.139607220888138,-0.068954542279243,0.141423150897026,-0.003850613022223,-0.047656677663326,-0.118144795298576,-0.034431185573339,0.017561055719852));
res += mul(Get(s0,-dx,0), float4x4(-0.016422770917416,-0.119890615344048,0.008420246653259,-0.084711894392967,-0.022199138998985,-0.104839794337749,-0.087510161101818,-0.008564271964133,0.088184230029583,-0.094427257776260,0.191977053880692,-0.052540190517902,0.031205918639898,-0.004142868332565,0.111911259591579,-0.053304947912693));
res += mul(Get(s0,-dx,dy), float4x4(0.013157523237169,-0.084257595241070,-0.077286683022976,0.034702308475971,0.017279950901866,-0.000690416491125,0.031160224229097,0.043967902660370,-0.015676444396377,0.001030883518979,0.025741005316377,0.024937219917774,-0.002660080092028,0.047806415706873,0.070952095091343,0.076398365199566));
res += mul(Get(s0,0,-dy), float4x4(0.014643117785454,-0.054406676441431,0.118904881179333,0.019566675648093,-0.023525459691882,0.025380292907357,0.022779284045100,-0.072023339569569,0.015247923322022,-0.044710189104080,0.032902136445045,0.046884875744581,-0.148727029561996,-0.126543357968330,-0.106828004121780,0.032162301242352));
res += mul(Get(s0,0,0), float4x4(0.087641872465611,-0.049252822995186,0.035691712051630,-0.140699133276939,-0.065706357359886,0.006410996895283,0.089349210262299,0.019609069451690,-0.098374262452126,-0.007421650923789,-0.066417515277863,-0.022361846640706,0.011720077134669,-0.095880769193172,-0.037132643163204,-0.020742939785123));
res += mul(Get(s0,0,dy), float4x4(-0.038263980299234,0.002247953554615,0.013712924905121,0.157799482345581,0.121521316468716,-0.031755235046148,-0.003115628613159,0.122132107615471,0.113759510219097,0.052485544234514,-0.060664843767881,0.054005168378353,0.102328546345234,-0.009640557691455,-0.001797812525183,0.070712700486183));
res += mul(Get(s0,dx,-dy), float4x4(0.027816433459520,0.026418589055538,0.057440131902695,-0.033548466861248,-0.037246648222208,-0.098897196352482,0.040781080722809,-0.175761073827744,0.003937981557101,-0.026859536767006,-0.015803091228008,-0.001979888183996,0.054495129734278,-0.042222350835800,-0.015308736823499,-0.032632105052471));
res += mul(Get(s0,dx,0), float4x4(0.038709070533514,0.037076670676470,0.004044389817864,-0.032307729125023,-0.067868858575821,-0.070003204047680,-0.027499599382281,0.023254109546542,-0.041113249957561,0.020609792321920,0.021239949390292,0.041227884590626,0.003873954992741,-0.024941030889750,0.053008064627647,-0.013909625820816));
res += mul(Get(s0,dx,dy), float4x4(0.112926214933395,0.014307289384305,-0.060861255973577,0.049912750720978,0.118381202220917,-0.006814788095653,0.000628982263152,0.083659596741199,-0.011346071958542,0.006318969186395,0.048065610229969,-0.000890940777026,0.009000521153212,0.004495196975768,0.099019199609756,0.013652049936354));
res += mul(Get(s1,-dx,-dy), float4x4(0.080075748264790,-0.156832113862038,0.090994872152805,-0.027107937261462,-0.015914617106318,-0.034232992678881,0.098723851144314,0.009773732163012,-0.025675214827061,0.048298131674528,0.026002904400229,0.005825597327203,-0.085433527827263,0.011757561936975,-0.098852299153805,-0.021730782464147));
res += mul(Get(s1,-dx,0), float4x4(0.069905988872051,-0.040180452167988,-0.086297847330570,0.027538355439901,0.050286013633013,0.076252602040768,0.018211141228676,-0.145084753632545,-0.029229769483209,-0.022988727316260,0.016593329608440,0.069198936223984,0.004114339593798,-0.022015219554305,-0.058549460023642,0.231663838028908));
res += mul(Get(s1,-dx,dy), float4x4(0.016945967450738,-0.022037826478481,0.113932125270367,0.030490100383759,-0.015320060774684,-0.027602795511484,0.008167279884219,-0.108462847769260,-0.032270003110170,0.027117183431983,0.059225670993328,0.048498768359423,-0.092790506780148,0.028519162908196,-0.066263653337955,0.004667205270380));
res += mul(Get(s1,0,-dy), float4x4(0.028539242222905,-0.062257621437311,0.069423668086529,-0.017521470785141,0.067790865898132,0.003651234321296,0.121990978717804,-0.010637064464390,0.014183258637786,0.110165551304817,-0.039063181728125,-0.035947479307652,-0.003436253406107,0.131390213966370,-0.170332759618759,-0.061018634587526));
res += mul(Get(s1,0,0), float4x4(-0.071115590631962,-0.023082176223397,0.062980197370052,-0.026292040944099,0.074652649462223,0.184074595570564,0.003992500714958,-0.096661619842052,0.024529641494155,0.015025793574750,0.074321210384369,0.010007306933403,0.056696198880672,0.024650726467371,-0.026512522250414,0.119900770485401));
res += mul(Get(s1,0,dy), float4x4(-0.001449612434953,0.004372866824269,0.163183480501175,-0.008890759199858,-0.034415241330862,0.104381076991558,0.042079374194145,-0.046180605888367,0.028698872774839,0.028829690068960,-0.014529538340867,0.121282443404198,0.002238225191832,0.014702716842294,-0.033075213432312,-0.000770700164139));
res += mul(Get(s1,dx,-dy), float4x4(0.051605865359306,0.049129635095596,0.045700538903475,-0.059018086642027,0.077488027513027,0.091547653079033,0.043898820877075,-0.075783498585224,0.047585967928171,-0.018598234280944,-0.015167378820479,-0.034671194851398,-0.115073800086975,-0.047895066440105,0.000560220563784,-0.060874801129103));
res += mul(Get(s1,dx,0), float4x4(0.051693193614483,0.021849324926734,0.036354977637529,0.010951567441225,0.049731340259314,0.121114708483219,0.087533012032509,-0.018437832593918,0.012365075759590,0.007084757555276,0.100680343806744,0.023876799270511,-0.028179557994008,-0.049520913511515,0.026205228641629,-0.102742418646812));
res += mul(Get(s1,dx,dy), float4x4(0.073342069983482,0.023771872743964,0.155763655900955,-0.016791639849544,0.003616010304540,0.015573290176690,-0.061356011778116,0.017029792070389,-0.018025126308203,0.117263697087765,0.046383094042540,0.067282572388649,-0.084392435848713,0.071284197270870,0.041062816977501,0.109658189117908));
res += mul(Get(s2,-dx,-dy), float4x4(-0.033541075885296,0.035216301679611,-0.138349056243896,-0.013456276617944,0.005090525839478,0.047075208276510,0.003623340744525,0.010189442895353,0.058254435658455,-0.012346168048680,-0.007439393550158,0.040834385901690,0.047165654599667,-0.086442597210407,0.007567061576992,0.098974861204624));
res += mul(Get(s2,-dx,0), float4x4(-0.060540251433849,0.238751620054245,-0.062351867556572,-0.062654584646225,-0.007509361952543,0.005016444716603,-0.020463230088353,-0.002166106132790,0.005128712393343,-0.084905996918678,-0.077733278274536,-0.031293947249651,0.012683465145528,-0.044114865362644,0.010151776485145,0.080201655626297));
res += mul(Get(s2,-dx,dy), float4x4(-0.020845357328653,0.159243434667587,-0.004972754511982,0.061020322144032,0.053549010306597,-0.063549615442753,-0.059266313910484,-0.026454554870725,-0.082596965134144,-0.047530978918076,-0.064613781869411,0.018176482990384,-0.056257862597704,-0.191852539777756,-0.066975265741348,-0.025901427492499));
res += mul(Get(s2,0,-dy), float4x4(-0.014204517938197,0.113719783723354,-0.010581756010652,-0.012897494249046,0.029628489166498,0.020172521471977,0.137584328651428,-0.033290721476078,0.060863789170980,-0.065416961908340,0.050344478338957,0.032356690615416,-0.053146872669458,-0.092796593904495,0.033020678907633,-0.063361622393131));
res += mul(Get(s2,0,0), float4x4(-0.034969255328178,0.005245692562312,0.032324235886335,-0.033401764929295,0.034636944532394,0.217131778597832,0.021397460252047,-0.032383345067501,0.038921535015106,-0.078062564134598,0.094770573079586,0.049064215272665,0.009582822211087,-0.021013529971242,0.045706927776337,0.076899692416191));
res += mul(Get(s2,0,dy), float4x4(-0.010450801812112,0.031469367444515,-0.045082625001669,0.103728517889977,0.098910585045815,0.059645127505064,-0.010519507341087,0.019709428772330,0.057315394282341,0.003140170825645,0.074998900294304,-0.049200408160686,-0.076097778975964,-0.051808688789606,-0.036567009985447,0.105009213089943));
res += mul(Get(s2,dx,-dy), float4x4(0.056373741477728,-0.033004432916641,-0.042162075638771,-0.014741523191333,0.015418052673340,0.038823693990707,0.136198565363884,0.046491265296936,0.042223293334246,0.011979145929217,-0.073995552957058,-0.046617928892374,-0.049188215285540,0.034153852611780,-0.043016143143177,-0.017561452463269));
res += mul(Get(s2,dx,0), float4x4(0.031554654240608,0.013418283313513,-0.017107253894210,0.013484057039022,-0.071199990808964,0.047099273651838,0.015833567827940,-0.052667431533337,-0.073584765195847,0.145986557006836,-0.054462864995003,0.095685444772243,0.025097724050283,0.027389036491513,-0.057503789663315,0.025254867970943));
res += mul(Get(s2,dx,dy), float4x4(0.017147066071630,0.045583002269268,0.034190621227026,0.019274622201920,0.015020336955786,0.016580929979682,-0.012905554845929,0.003160108579323,-0.058038879185915,0.061706591397524,0.076592162251472,0.056035630404949,-0.018370140343904,0.009683594107628,0.042364835739136,-0.027145821601152));
res += mul(Get(s3,-dx,-dy), float4x4(-0.024181080982089,-0.066452234983444,0.113012306392193,0.082544088363647,-0.000778480083682,0.023592617362738,-0.024774013087153,-0.011306103318930,-0.073852024972439,-0.102318830788136,-0.122587807476521,-0.009714359417558,-0.009395511820912,-0.097492359578609,0.038277644664049,0.029650187119842));
res += mul(Get(s3,-dx,0), float4x4(0.022198326885700,-0.017350943759084,0.103012785315514,-0.106560885906219,0.063407897949219,0.008181385695934,0.091113433241844,0.045567058026791,-0.079913012683392,-0.059050202369690,-0.150942519307137,-0.014650618657470,-0.019846029579639,-0.098808482289314,0.034761771559715,-0.061022073030472));
res += mul(Get(s3,-dx,dy), float4x4(-0.053676351904869,-0.014669476076961,0.152254015207291,0.050311665982008,-0.016081098467112,-0.038030318915844,0.013984737917781,0.031650222837925,0.016228046268225,-0.182876810431480,-0.115754306316376,-0.064039751887321,-0.007399129681289,-0.023665949702263,0.066611930727959,0.026964120566845));
res += mul(Get(s3,0,-dy), float4x4(-0.037449128925800,0.024978619068861,0.005148088559508,-0.012495332397521,-0.037251956760883,0.025367071852088,0.024681420996785,-0.110920980572701,0.023011732846498,-0.051783472299576,-0.000676113530062,0.049406927078962,-0.017107300460339,0.017632264643908,-0.034609891474247,-0.059950262308121));
res += mul(Get(s3,0,0), float4x4(-0.086880177259445,0.014582619071007,0.020262505859137,-0.088083587586880,0.014885011129081,-0.006082576233894,0.067195974290371,0.002413063310087,0.365968108177185,0.091948546469212,0.011342316865921,0.012525969184935,-0.047358404844999,-0.006524915341288,-0.001931936480105,-0.099796906113625));
res += mul(Get(s3,0,dy), float4x4(-0.042156063020229,0.021765213459730,-0.003980698063970,0.065417066216469,-0.123323440551758,-0.000606197339948,-0.001419570297003,-0.014081621542573,0.106128968298435,-0.025053577497602,-0.086906336247921,-0.045156277716160,-0.097292937338352,-0.052660223096609,-0.025482134893537,-0.065895162522793));
res += mul(Get(s3,dx,-dy), float4x4(0.049292642623186,-0.018597723916173,0.027650382369757,-0.004364462569356,-0.004394507501274,-0.026345407590270,0.039359770715237,-0.106023438274860,0.049556765705347,0.070432022213936,-0.020003691315651,0.083797700703144,-0.011001549661160,-0.039963491261005,-0.072025649249554,-0.001497086603194));
res += mul(Get(s3,dx,0), float4x4(0.114197976887226,0.050943993031979,0.042074635624886,-0.028613070026040,0.020720716565847,0.062479764223099,-0.013621583580971,0.073809832334518,-0.010936655104160,0.084816530346870,-0.040918476879597,-0.093079492449760,-0.044787298887968,0.027736205607653,-0.003742056200281,-0.048028737306595));
res += mul(Get(s3,dx,dy), float4x4(0.034250196069479,0.052070647478104,0.031752817332745,0.046685185283422,-0.068737864494324,0.066982783377171,0.196610748767853,-0.057845655828714,0.023371687158942,-0.032658729702234,-0.090372502803802,-0.041091542690992,-0.075393512845039,-0.010591273196042,-0.089348651468754,0.045776214450598));
return max(float4(0,0,0,0), res);
}
