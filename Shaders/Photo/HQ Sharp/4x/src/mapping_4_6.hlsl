sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
sampler s4 : register(s4);
sampler s5 : register(s5);
sampler s6 : register(s6);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.142981037497520,-0.219563961029053,0.058984663337469,-0.160448879003525);
res += mul(Get(s0,-dx,-dy), float4x4(-0.197903811931610,-0.069991573691368,0.120205081999302,-0.055578071624041,-0.214136973023415,-0.077718384563923,0.121019862592220,0.019487673416734,0.081516698002815,-0.061508566141129,-0.055454935878515,-0.103839568793774,-0.065364353358746,-0.109702505171299,0.096035368740559,-0.078603267669678));
res += mul(Get(s0,-dx,0), float4x4(-0.124213352799416,0.020767007023096,-0.037671651691198,-0.062505945563316,-0.276853889226913,0.066091567277908,-0.047697391360998,0.035357970744371,0.069254390895367,-0.013314086943865,-0.075100563466549,0.089081995189190,0.058274716138840,-0.037579689174891,0.174358889460564,0.266233175992966));
res += mul(Get(s0,-dx,dy), float4x4(-0.024485329166055,-0.137839913368225,-0.074800401926041,-0.088514700531960,0.021696217358112,-0.123403720557690,0.014718435704708,0.029591793194413,0.061420436948538,-0.192454546689987,-0.002726288046688,0.094898469746113,-0.028950208798051,-0.051318813115358,0.047972526401281,0.130396261811256));
res += mul(Get(s0,0,-dy), float4x4(-0.195025160908699,-0.030007360503078,0.049689739942551,0.044453430920839,-0.183883115649223,0.036026082932949,0.014662875793874,0.051552243530750,0.020380930975080,0.063614979386330,0.006759439595044,-0.136967346072197,0.065113954246044,-0.050079930573702,-0.071169048547745,0.075104035437107));
res += mul(Get(s0,0,0), float4x4(-0.269851893186569,0.185587346553802,-0.051593482494354,-0.078583396971226,-0.263326764106750,-0.081838473677635,-0.198341235518456,-0.024244293570518,0.055125623941422,-0.000463513948489,-0.223232358694077,-0.011159135960042,0.157656416296959,0.078988991677761,0.094676725566387,0.066643133759499));
res += mul(Get(s0,0,dy), float4x4(-0.103676833212376,0.057705231010914,0.107341721653938,-0.126182839274406,0.057061232626438,0.179543599486351,-0.131809011101723,-0.102337256073952,0.055047277361155,0.157803505659103,-0.186238333582878,-0.211540535092354,0.036787766963243,0.015880972146988,-0.109926916658878,0.108118116855621));
res += mul(Get(s0,dx,-dy), float4x4(-0.277352333068848,0.010877425782382,0.081487677991390,-0.096137449145317,-0.191328912973404,-0.081145063042641,0.001855932874605,0.096557550132275,0.062695212662220,-0.066076651215553,-0.080508418381214,-0.096951976418495,-0.090884722769260,-0.006731377914548,0.044365685433149,0.214201256632805));
res += mul(Get(s0,dx,0), float4x4(-0.195959448814392,-0.044380843639374,-0.028135331347585,-0.097381614148617,-0.255462944507599,-0.046649340540171,-0.003054495668039,-0.066202856600285,0.076878771185875,-0.000651184644084,-0.030566185712814,0.010683745145798,-0.018100202083588,0.004563674796373,0.143212735652924,0.081824377179146));
res += mul(Get(s0,dx,dy), float4x4(-0.227133944630623,-0.015367021784186,0.005367947276682,0.016687842085958,0.033298309892416,0.010856873355806,-0.021711222827435,-0.045466940850019,0.072399750351906,0.019231043756008,-0.048744436353445,-0.073174431920052,0.045062590390444,-0.060183729976416,0.089515775442123,-0.111587174236774));
res += mul(Get(s1,-dx,-dy), float4x4(0.062002956867218,0.124923393130302,0.028751835227013,-0.016117908060551,0.044659025967121,0.056449472904205,-0.048155684024096,0.154184758663177,-0.062260322272778,0.014464552514255,-0.105879776179790,0.117971569299698,0.097694925963879,0.076694093644619,-0.026691511273384,0.184199839830399));
res += mul(Get(s1,-dx,0), float4x4(0.042902525514364,0.063241519033909,0.094543926417828,-0.173187121748924,0.044817276299000,0.024857953190804,-0.053796790540218,0.103326179087162,0.054202921688557,-0.175420418381691,-0.056598376482725,-0.073639824986458,0.209429711103439,-0.000627008848824,0.095305345952511,0.183451369404793));
res += mul(Get(s1,-dx,dy), float4x4(-0.178816914558411,0.019687077030540,0.093371331691742,-0.050179183483124,-0.093851312994957,-0.024637080729008,0.042455695569515,0.113473176956177,0.104719616472721,-0.154229268431664,-0.068689644336700,0.116445355117321,0.089069209992886,-0.048085305839777,-0.043823972344398,0.006449998822063));
res += mul(Get(s1,0,-dy), float4x4(-0.016073340550065,-0.021838739514351,-0.252157151699066,0.193951472640038,0.059680823236704,-0.032576505094767,0.166533678770065,0.132253199815750,-0.235456943511963,-0.096959665417671,0.086227513849735,-0.143121615052223,-0.050919536501169,0.047103367745876,-0.096300967037678,-0.113982319831848));
res += mul(Get(s1,0,0), float4x4(0.175690099596977,0.099691815674305,-0.127209708094597,0.007183694746345,0.031046735122800,0.083049826323986,-0.090014465153217,0.319767266511917,0.134066089987755,0.082429900765419,-0.016819940879941,-0.023210186511278,0.085588075220585,0.057025946676731,0.106119245290756,-0.001999589614570));
res += mul(Get(s1,0,dy), float4x4(0.063370294868946,-0.030118213966489,-0.105082884430885,0.011696892790496,-0.148809283971786,0.048209723085165,-0.070528820157051,0.206135064363480,0.019458677619696,0.017720535397530,-0.113134555518627,0.122814938426018,0.028600130230188,0.022727789357305,0.003610161831602,0.082488253712654));
res += mul(Get(s1,dx,-dy), float4x4(0.059613779187202,0.011033765971661,-0.096192091703415,0.130446165800095,-0.027261154726148,0.012863381765783,0.050424773246050,0.031111670657992,-0.046650100499392,0.140873119235039,0.127009421586990,-0.024586979299784,0.085024379193783,0.045129738748074,-0.054205089807510,0.110723473131657));
res += mul(Get(s1,dx,0), float4x4(-0.068009100854397,0.017453769221902,0.044238142669201,0.017971118912101,-0.023173572495580,0.099919430911541,-0.000803975504823,0.140399664640427,0.085414253175259,-0.027734603732824,-0.110056862235069,0.138908624649048,0.076675072312355,0.022769045084715,-0.160699740052223,0.101726949214935));
res += mul(Get(s1,dx,dy), float4x4(-0.057024206966162,-0.067498303949833,-0.027912985533476,0.018308650702238,-0.134504452347755,0.060156710445881,-0.001070566126145,0.132186532020569,-0.072319142520428,-0.142029523849487,-0.008857171051204,0.070658400654793,-0.007749818731099,0.020082056522369,-0.006185868754983,0.069912284612656));
res += mul(Get(s2,-dx,-dy), float4x4(0.104512698948383,-0.149386197328568,-0.112738966941833,-0.072178751230240,-0.054413534700871,-0.041229803115129,0.041129987686872,-0.226550519466400,0.116587840020657,-0.084112003445625,-0.131716892123222,0.175274237990379,0.154619857668877,0.039858274161816,-0.066653937101364,0.140943497419357));
res += mul(Get(s2,-dx,0), float4x4(-0.057056687772274,-0.090281851589680,-0.042131651192904,0.182253077626228,0.046349223703146,0.014197476208210,-0.052572354674339,0.236242145299911,0.032691374421120,-0.128731966018677,-0.030487615615129,-0.189500465989113,-0.033679287880659,0.332763612270355,0.230289772152901,0.085990801453590));
res += mul(Get(s2,-dx,dy), float4x4(-0.114708326756954,-0.079900853335857,-0.018667252734303,0.060984462499619,-0.034269701689482,-0.104709647595882,-0.012894035317004,-0.056708052754402,0.038898326456547,-0.281797111034393,-0.020639041438699,-0.087883219122887,0.116891480982304,0.156704127788544,0.056459937244654,0.080690637230873));
res += mul(Get(s2,0,-dy), float4x4(0.142142131924629,0.207954064011574,-0.198165595531464,0.265678644180298,-0.038495913147926,-0.010119379498065,0.234305217862129,-0.097095094621181,0.016208408400416,-0.007583056110889,0.075911030173302,-0.168395668268204,0.109785728156567,0.116665869951248,-0.068872399628162,0.170962035655975));
res += mul(Get(s2,0,0), float4x4(0.000349317910150,-0.203721672296524,0.068709596991539,-0.116181805729866,-0.031346235424280,-0.201057255268097,0.028524048626423,0.274952322244644,0.068303413689137,-0.063163623213768,0.035013888031244,-0.043266195803881,-0.143310695886612,-0.182480439543724,0.240212738513947,0.040688391774893));
res += mul(Get(s2,0,dy), float4x4(0.113706372678280,0.085172973573208,0.044048812240362,0.072302587330341,-0.065737657248974,-0.120715446770191,0.001200295402668,-0.142312958836555,0.081174023449421,-0.014291041530669,-0.005603186786175,0.062773577868938,-0.042679786682129,0.047774314880371,0.130100190639496,-0.105296574532986));
res += mul(Get(s2,dx,-dy), float4x4(0.115549027919769,-0.060114484280348,0.069616578519344,0.036532692611217,0.047272905707359,-0.041039600968361,0.082909449934959,-0.008744615130126,-0.053532235324383,-0.037994600832462,0.011044259183109,-0.109804511070251,0.067506656050682,0.082153595983982,0.034874096512794,-0.032431159168482));
res += mul(Get(s2,dx,0), float4x4(0.076380610466003,-0.137268692255020,0.066842466592789,0.055786922574043,-0.088486261665821,0.037552233785391,0.015002494677901,-0.100105762481689,0.075788438320160,0.026065280660987,-0.022921308875084,-0.128736749291420,-0.108375735580921,-0.221344947814941,-0.002538393484429,-0.036127667874098));
res += mul(Get(s2,dx,dy), float4x4(-0.095545448362827,-0.035420171916485,0.077095344662666,0.066105887293816,-0.001751150353812,-0.107826747000217,-0.012722183950245,-0.002921228762716,0.006274928338826,-0.077080905437469,-0.060253418982029,-0.088160827755928,-0.097640350461006,-0.007769397459924,-0.079112619161606,0.090149417519569));
res += mul(Get(s3,-dx,-dy), float4x4(0.110975764691830,0.061464153230190,0.009196897037327,-0.028725065290928,0.048251185566187,-0.002164395526052,0.021607760339975,-0.032674614340067,0.022052545100451,-0.018280029296875,0.009706810116768,-0.050274889916182,0.054506432265043,0.076804131269455,0.019923403859138,-0.021054873242974));
res += mul(Get(s3,-dx,0), float4x4(0.000528405827936,-0.117945648729801,0.077321060001850,-0.132496312260628,0.042464192956686,-0.094288967549801,-0.079396061599255,0.073157049715519,0.238964706659317,-0.303628951311111,-0.174442887306213,-0.015340714715421,-0.096167288720608,-0.058247942477465,0.129999041557312,-0.018482265993953));
res += mul(Get(s3,-dx,dy), float4x4(-0.075686916708946,-0.025101479142904,-0.016035554930568,0.102383084595203,0.012525531463325,-0.076368458569050,-0.117472864687443,-0.148174792528152,0.039279334247112,-0.094616010785103,0.062450032681227,0.107792131602764,0.087891623377800,-0.082796305418015,-0.052341971546412,-0.126052156090736));
res += mul(Get(s3,0,-dy), float4x4(-0.053415946662426,0.098420783877373,0.000877967569977,-0.195575281977654,0.150135040283203,0.063161477446556,-0.142041936516762,0.071589052677155,0.058205649256706,0.233717679977417,0.122521109879017,-0.159595429897308,-0.080691002309322,0.103179395198822,0.090719334781170,-0.022913424298167));
res += mul(Get(s3,0,0), float4x4(0.048748847097158,-0.150842472910881,0.112406156957150,-0.168386548757553,0.062477968633175,0.087976701557636,0.012471094727516,-0.013009816408157,0.159076154232025,0.207525700330734,-0.079382903873920,0.249691426753998,-0.162969499826431,-0.231314584612846,0.179059535264969,-0.088060937821865));
res += mul(Get(s3,0,dy), float4x4(0.042578574270010,-0.112067587673664,0.186612799763680,-0.100404337048531,0.126994952559471,0.020484670996666,0.018685692921281,-0.127409979701042,0.093238539993763,0.186727806925774,-0.048236742615700,0.042776469141245,0.054928325116634,0.259803831577301,-0.013158811256289,-0.324557244777679));
res += mul(Get(s3,dx,-dy), float4x4(0.122456707060337,0.116167381405830,0.026186255738139,-0.059188235551119,0.102139770984650,0.024063073098660,-0.020860880613327,-0.098689489066601,-0.114441096782684,0.009928192012012,-0.006613037083298,0.096304237842560,0.041421230882406,0.123430371284485,-0.108897328376770,-0.121767647564411));
res += mul(Get(s3,dx,0), float4x4(0.038563735783100,-0.113361664116383,0.065597727894783,0.112751580774784,0.065067559480667,0.109591215848923,-0.078245744109154,-0.054462980479002,-0.423899859189987,0.012275064364076,0.042795952409506,0.257962644100189,0.036598965525627,0.063180752098560,-0.126162186264992,0.080092832446098));
res += mul(Get(s3,dx,dy), float4x4(0.047768834978342,0.025487219914794,0.005675814580172,0.034938428550959,0.037850633263588,0.047682508826256,-0.078915581107140,-0.046122148633003,-0.077038235962391,0.017977433279157,0.130547255277634,-0.080186776816845,-0.093709781765938,0.026561725884676,-0.073800668120384,0.222156539559364));
res += mul(Get(s4,-dx,-dy), float4x4(0.027814235538244,0.166931435465813,0.019027790054679,0.063426263630390,-0.028695086017251,-0.044798340648413,-0.151928499341011,0.025058351457119,0.143622979521751,0.091012030839920,0.021809916943312,-0.056823711842299,-0.119349345564842,-0.027731817215681,0.048002351075411,0.001789465430193));
res += mul(Get(s4,-dx,0), float4x4(-0.191927552223206,-0.181475847959518,-0.005203410051763,-0.127879932522774,-0.063046567142010,0.057336553931236,-0.014239259995520,-0.025896433740854,0.061685629189014,0.067117616534233,-0.098711945116520,0.034876715391874,0.106669247150421,0.029073253273964,-0.053769204765558,0.145806729793549));
res += mul(Get(s4,-dx,dy), float4x4(0.019312553107738,0.088672943413258,-0.073466725647449,-0.235785990953445,0.042224548757076,-0.172901943325996,-0.159914806485176,0.023633051663637,0.155487433075905,0.038693044334650,-0.039666604250669,-0.018702039495111,-0.089970991015434,0.144757300615311,0.009056103415787,-0.045286182314157));
res += mul(Get(s4,0,-dy), float4x4(-0.066072836518288,-0.033357333391905,0.206290945410728,-0.114760860800743,0.129840984940529,-0.031712405383587,0.133259579539299,0.028049143031240,0.160797148942947,0.106730103492737,-0.087668016552925,-0.245759502053261,-0.200108274817467,0.164056256413460,-0.028512682765722,-0.080326534807682));
res += mul(Get(s4,0,0), float4x4(-0.072964452207088,-0.030543649569154,0.284164786338806,-0.228061065077782,0.252891659736633,0.189901947975159,0.071038357913494,-0.022671682760119,0.251453697681427,0.245237261056900,0.039245452731848,-0.078917630016804,0.015890119597316,0.125825345516205,0.096079669892788,-0.140631005167961));
res += mul(Get(s4,0,dy), float4x4(0.133082240819931,-0.104934565722942,-0.053455438464880,0.115371406078339,0.041472602635622,0.219849392771721,0.206772729754448,-0.069830894470215,-0.117918759584427,0.001803293009289,-0.005552807357162,-0.050506047904491,-0.029917711392045,0.098606362938881,0.079762145876884,-0.190349996089935));
res += mul(Get(s4,dx,-dy), float4x4(0.090886220335960,-0.038551565259695,-0.070764966309071,-0.177375078201294,0.070534780621529,-0.019047418609262,-0.302404642105103,0.047771487385035,-0.024207996204495,-0.022374199703336,0.069104857742786,0.015433417633176,-0.094809494912624,-0.046597048640251,-0.034659575670958,0.066834293305874));
res += mul(Get(s4,dx,0), float4x4(0.125564977526665,0.057642649859190,-0.086211904883385,-0.029238032177091,-0.157775208353996,0.056162785738707,-0.021179692819715,0.100866310298443,-0.031258661299944,0.131990030407906,0.067457839846611,0.119045682251453,-0.221128493547440,-0.180549442768097,0.012259457260370,-0.111160635948181));
res += mul(Get(s4,dx,dy), float4x4(-0.012876163236797,0.007372359279543,0.006450044456869,0.100862950086594,-0.072500199079514,0.153539299964905,0.004390963353217,-0.036768179386854,-0.047807767987251,0.108341313898563,0.037995081394911,0.179565325379372,-0.047611795365810,-0.127725005149841,0.039920210838318,-0.065042413771152));
res += mul(Get(s5,-dx,-dy), float4x4(0.031045963987708,-0.039883997291327,-0.122960135340691,0.126635625958443,0.011519635096192,-0.111401781439781,-0.095897592604160,0.030824985355139,-0.026448326185346,-0.063458196818829,0.049909304827452,-0.052009455859661,-0.041850678622723,-0.058723274618387,-0.041200626641512,0.057842567563057));
res += mul(Get(s5,-dx,0), float4x4(0.017621111124754,0.001701118424535,0.115286216139793,-0.121841810643673,0.054494731128216,-0.104370869696140,0.001701350207441,-0.215253099799156,-0.201692163944244,-0.074806995689869,0.049017611891031,-0.009663763456047,0.100825943052769,0.006620431784540,0.029776157811284,0.119644820690155));
res += mul(Get(s5,-dx,dy), float4x4(0.014216179028153,-0.039255268871784,-0.019875701516867,-0.019117956981063,-0.047448478639126,-0.069819785654545,0.047154534608126,0.018452882766724,0.041645321995020,0.031076753512025,0.142411902546883,-0.048059288412333,0.022996813058853,-0.115863710641861,0.002369299996644,0.069116376340389));
res += mul(Get(s5,0,-dy), float4x4(0.135037273168564,0.095046654343605,0.166408717632294,-0.000193648578716,-0.094543904066086,0.015976004302502,-0.034012857824564,0.208794221282005,0.111015848815441,0.076621100306511,0.016493406146765,0.024161830544472,-0.072098724544048,-0.000334764190484,-0.053216967731714,-0.081198990345001));
res += mul(Get(s5,0,0), float4x4(-0.085879445075989,0.059281006455421,0.159043967723846,0.067067563533783,-0.214000776410103,0.183531925082207,-0.232326939702034,0.293246686458588,0.100469060242176,0.183484435081482,0.038780827075243,0.123971588909626,-0.081465691328049,-0.043883569538593,-0.014061875641346,0.129913285374641));
res += mul(Get(s5,0,dy), float4x4(0.004502706695348,0.208737969398499,0.016531024128199,-0.119949199259281,-0.085462570190430,0.093330979347229,-0.170601978898048,0.028981231153011,0.205171138048172,-0.057188875973225,-0.165843307971954,0.137950852513313,0.039715081453323,0.031228102743626,0.066616423428059,-0.069988109171391));
res += mul(Get(s5,dx,-dy), float4x4(-0.056235034018755,-0.027555836364627,0.044123541563749,-0.104027263820171,0.052793327718973,0.092133410274982,0.065839558839798,-0.060735367238522,0.053165398538113,0.084749899804592,0.027559062466025,0.034485701471567,0.058962874114513,0.007935203611851,-0.024681573733687,-0.112162902951241));
res += mul(Get(s5,dx,0), float4x4(-0.021008022129536,-0.064438365399837,0.093158610165119,0.083551876246929,0.146039545536041,0.171539008617401,-0.049204491078854,0.053320992738008,-0.021177142858505,0.061721608042717,0.025916766375303,0.014983192086220,0.053262799978256,-0.010881365276873,-0.022939596325159,-0.035468947142363));
res += mul(Get(s5,dx,dy), float4x4(-0.097198054194450,-0.014995266683400,0.096644289791584,-0.115274943411350,-0.064598076045513,0.083761490881443,-0.063052706420422,0.235401868820190,-0.142704531550407,0.128085955977440,0.005295119713992,0.003898240858689,0.174526691436768,0.117843456566334,-0.028965502977371,-0.080046154558659));
res += tex2D(s6, tex);
res = max(float4(0, 0, 0, 0), res) + float4(-0.106520861387253,-0.002235153922811,0.958679318428040,-0.153935238718987) * min(float4(0, 0, 0, 0), res);
return res;
}