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
res += mul(Get(s0,-dx,-dy), float4x4(0.056602686643600,0.082170195877552,0.103869967162609,-0.033708848059177,0.117435917258263,-0.022267058491707,-0.030086858198047,0.180409699678421,0.087929382920265,0.121503882110119,-0.111625447869301,0.039416205137968,0.141636908054352,0.069017559289932,-0.155887126922607,-0.102605976164341));
res += mul(Get(s0,-dx,0), float4x4(-0.080668173730373,-0.069163598120213,0.049035683274269,0.054096598178148,-0.039843406528234,-0.063813209533691,-0.151237994432449,-0.126159533858299,-0.154739186167717,-0.095267362892628,0.222812175750732,0.188727170228958,0.069967560470104,0.176484063267708,-0.186512649059296,0.017614277079701));
res += mul(Get(s0,-dx,dy), float4x4(-0.205012261867523,0.019314873963594,-0.009645319543779,0.027801308780909,-0.124820224940777,-0.027052970603108,-0.094622820615768,0.112127333879471,-0.075488373637199,0.077864252030849,0.018063396215439,0.191946104168892,-0.197514638304710,-0.089591570198536,0.067140139639378,0.053075391799212));
res += mul(Get(s0,0,-dy), float4x4(-0.015932563692331,0.019739547744393,-0.132360398769379,-0.069691456854343,0.016350286081433,-0.046324349939823,0.047855552285910,-0.035707715898752,0.083987206220627,0.301422953605652,-0.006640139967203,-0.209232941269875,-0.078502900898457,0.167824059724808,-0.270541399717331,0.068850286304951));
res += mul(Get(s0,0,0), float4x4(0.205435782670975,-0.028996804729104,-0.003046293742955,0.038886118680239,-0.014032784849405,0.026532148942351,-0.046125240623951,-0.119727380573750,0.124539881944656,-0.165767952799797,0.036857917904854,0.184411138296127,0.031969550997019,-0.002604016568512,-0.211258471012115,0.052793893963099));
res += mul(Get(s0,0,dy), float4x4(-0.123700313270092,0.122497007250786,0.149268984794617,-0.056387286633253,0.216227144002914,0.006423427257687,-0.042210772633553,-0.017482507973909,-0.154204726219177,0.045696280896664,0.066833093762398,0.224225685000420,-0.050410035997629,-0.047410313040018,0.034264698624611,-0.028755404055119));
res += mul(Get(s0,dx,-dy), float4x4(-0.232660293579102,-0.097003035247326,-0.218265235424042,-0.076234638690948,0.009713382460177,-0.025543607771397,0.119240447878838,-0.057559899985790,-0.081187680363655,0.197112590074539,0.119258619844913,-0.093166038393974,-0.009814375080168,-0.068782687187195,-0.156645849347115,0.117670536041260));
res += mul(Get(s0,dx,0), float4x4(0.001176182064228,0.061782367527485,0.040888082236052,0.021205760538578,-0.142746075987816,0.011955218389630,-0.088761307299137,-0.105189628899097,0.110521055757999,-0.255203723907471,-0.126931861042976,-0.062052790075541,-0.025845024734735,-0.123757779598236,-0.047721851617098,-0.085044749081135));
res += mul(Get(s0,dx,dy), float4x4(-0.130618512630463,-0.067353822290897,-0.050473757088184,-0.113372504711151,0.257678955793381,-0.053387038409710,-0.032415267080069,0.039582323282957,0.018361633643508,-0.059304818511009,-0.041035864502192,-0.467979282140732,-0.022083461284637,0.092728279531002,-0.050317045301199,-0.045134097337723));
res += mul(Get(s1,-dx,-dy), float4x4(0.062637485563755,0.019460402429104,-0.128954261541367,-0.017533389851451,0.176229953765869,-0.047883588820696,-0.091321766376495,0.171714052557945,-0.006871716585010,0.018934842199087,0.043467715382576,0.003996350802481,-0.036346931010485,0.092634625732899,0.068542383611202,0.067971065640450));
res += mul(Get(s1,-dx,0), float4x4(-0.041886184364557,-0.024978987872601,0.054807886481285,0.061067692935467,0.168384701013565,0.080997996032238,0.051547676324844,-0.068461388349533,-0.042153060436249,0.057811584323645,0.024838438257575,-0.032708544284105,-0.018918139860034,-0.121627084910870,0.037076059728861,0.064001038670540));
res += mul(Get(s1,-dx,dy), float4x4(-0.071419857442379,-0.031407210975885,-0.148831591010094,-0.121120840311050,-0.157338470220566,-0.138870939612389,0.204837501049042,0.090861298143864,-0.056949879974127,0.016324788331985,0.008501224219799,0.020181613042951,0.043738715350628,0.007803488988429,0.035392608493567,0.050589408725500));
res += mul(Get(s1,0,-dy), float4x4(-0.002835969673470,-0.044910557568073,0.005294018890709,-0.034751538187265,-0.001184733118862,-0.147345855832100,-0.080467998981476,-0.013333585113287,0.008282078430057,0.018987050279975,0.074353799223900,0.008866771124303,0.005894274450839,0.061551764607430,0.022928446531296,-0.026682401075959));
res += mul(Get(s1,0,0), float4x4(-0.087310478091240,0.002970336470753,0.257149934768677,0.180542647838593,0.142339989542961,0.165676489472389,-0.014000796712935,0.061494883149862,-0.043013304471970,0.053076710551977,0.074012376368046,-0.030909299850464,0.049384277313948,-0.117707364261150,0.044022083282471,0.061191774904728));
res += mul(Get(s1,0,dy), float4x4(-0.170177191495895,0.023232467472553,0.088978976011276,0.098358839750290,0.276844948530197,-0.144569024443626,-0.002059167250991,0.098896771669388,-0.053142577409744,0.027382677420974,0.022088373079896,-0.010183803737164,0.075557015836239,-0.030539415776730,0.093014322221279,0.018982857465744));
res += mul(Get(s1,dx,-dy), float4x4(0.232580408453941,-0.155505269765854,-0.103867776691914,-0.216195970773697,-0.065095350146294,-0.199233219027519,0.049597270786762,-0.050490316003561,0.026696782559156,0.015858585014939,0.117864519357681,0.010889043100178,-0.003754989942536,0.023470629006624,0.000775158288889,-0.117464460432529));
res += mul(Get(s1,dx,0), float4x4(0.194088205695152,-0.052181579172611,0.155942410230637,0.019400950521231,-0.187553822994232,0.211124524474144,-0.010281358845532,-0.126526549458504,-0.032502364367247,0.080537118017673,0.140476450324059,-0.018168363720179,-0.028309054672718,-0.091093055903912,-0.007546040229499,0.025743510574102));
res += mul(Get(s1,dx,dy), float4x4(0.074560575187206,-0.039528958499432,0.170550525188446,0.039996985346079,0.291137039661407,-0.254900991916656,-0.060859929770231,-0.087919630110264,-0.060085844248533,0.037513397634029,0.044583670794964,-0.039508678019047,-0.048065651208162,-0.024641478434205,0.057128556072712,-0.117363661527634));
res += mul(Get(s2,-dx,-dy), float4x4(-0.206464946269989,0.216508820652962,-0.077031657099724,-0.068927623331547,0.116315603256226,-0.012546201236546,-0.051479499787092,-0.020593596622348,-0.114640146493912,0.028467634692788,-0.008570508100092,-0.002788636833429,0.000047502919188,-0.000052850322390,0.000012420813619,0.000030706847610));
res += mul(Get(s2,-dx,0), float4x4(0.102340489625931,0.136705636978149,-0.003485608380288,-0.176257625222206,-0.152032718062401,-0.031107207760215,-0.064608089625835,-0.018682109192014,0.141895756125450,0.011916670948267,0.021915365010500,0.024707416072488,0.000025566978366,0.000021112371542,0.000000566286872,0.000175411900273));
res += mul(Get(s2,-dx,dy), float4x4(-0.069510504603386,-0.054635766893625,0.108102187514305,0.132914081215858,0.031033340841532,-0.093776859343052,0.031438391655684,-0.082979761064053,0.048148598521948,-0.131430074572563,0.086334884166718,-0.003466057591140,-0.000033081705624,0.000160031049745,0.000003139944283,0.000027438420148));
res += mul(Get(s2,0,-dy), float4x4(-0.271939605474472,-0.062720395624638,-0.058125510811806,-0.254054784774780,0.110137209296227,-0.073530606925488,-0.023145876824856,-0.032912414520979,-0.172162130475044,-0.027785446494818,-0.044336944818497,0.285710722208023,-0.000021737430870,-0.000035596061934,0.000000409902754,0.000099616103398));
res += mul(Get(s2,0,0), float4x4(0.057833768427372,-0.185275375843048,-0.087541796267033,0.252719670534134,-0.043739281594753,0.023768542334437,-0.063511922955513,0.018754649907351,-0.054784730076790,0.011971822008491,-0.041067153215408,-0.107585743069649,-0.000043638778152,0.000036676345189,-0.000005151941878,0.000181966912351));
res += mul(Get(s2,0,dy), float4x4(0.169185489416122,-0.013925918377936,-0.098450578749180,-0.030782209709287,0.037893097847700,0.047604233026505,-0.051439281553030,0.009401996619999,0.028942445293069,0.039316274225712,0.003214908065274,-0.246392205357552,-0.000035652588849,0.000152417094796,0.000025458553864,0.000025091811040));
res += mul(Get(s2,dx,-dy), float4x4(-0.076876945793629,0.200807735323906,-0.062641248106956,0.292258262634277,0.007718373090029,-0.040378712117672,-0.011918521486223,0.007094838656485,0.171564236283302,-0.026769287884235,-0.024474674835801,0.056728530675173,-0.000057635206758,-0.000000353316949,0.000057701276091,0.000114474350994));
res += mul(Get(s2,dx,0), float4x4(-0.096129164099693,0.047321956604719,-0.199117794632912,0.205382823944092,0.043556381016970,0.004835529252887,-0.027398096397519,0.035588305443525,0.039708435535431,0.012345721945167,-0.088586553931236,-0.005048037040979,-0.000117797513667,0.000084349485405,0.000054651685787,0.000175238863449));
res += mul(Get(s2,dx,dy), float4x4(0.012778746895492,0.145784124732018,-0.140701532363892,-0.324078738689423,0.231156185269356,0.000260542554315,-0.015589988790452,0.061060573905706,-0.098277457058430,0.047912158071995,-0.128932967782021,-0.038721833378077,-0.000146397389472,0.000157295551617,0.000087850159616,0.000082472950453));
res += mul(Get(s3,-dx,-dy), float4x4(-0.170092076063156,0.094738140702248,0.074562802910805,0.300230175256729,0.068450771272182,-0.033886335790157,-0.082453995943069,0.046893179416656,0.134736537933350,-0.021048979833722,-0.009283421561122,-0.059011157602072,-0.041811715811491,-0.034802854061127,-0.007941915653646,0.053758695721626));
res += mul(Get(s3,-dx,0), float4x4(-0.064644902944565,-0.002921993844211,-0.338824331760406,-0.207962602376938,0.063687577843666,-0.088928624987602,-0.034428276121616,0.000602359068580,-0.082207262516022,-0.049460001289845,0.020626371726394,0.196239531040192,0.089069575071335,0.124731190502644,-0.008903427980840,-0.079002551734447));
res += mul(Get(s3,-dx,dy), float4x4(0.103729516267776,-0.018249958753586,0.014726904220879,-0.188904359936714,-0.151947572827339,0.039064958691597,-0.040345687419176,0.047797288745642,-0.074776068329811,-0.176551774144173,0.019040765240788,0.103575021028519,-0.092690013349056,0.032657098025084,-0.034083362668753,-0.068157449364662));
res += mul(Get(s3,0,-dy), float4x4(-0.019274866208434,0.056388974189758,-0.055226594209671,0.109691970050335,0.131124168634415,-0.078205555677414,-0.040693797171116,-0.057155597954988,0.057384040206671,0.159684836864471,-0.060185473412275,-0.057760696858168,0.003984546754509,-0.034652240574360,0.041433658450842,0.003206216963008));
res += mul(Get(s3,0,0), float4x4(-0.083047404885292,-0.129031315445900,-0.374163389205933,0.170491352677345,0.344239950180054,-0.016129190102220,0.044294908642769,-0.094007246196270,-0.044504884630442,-0.152562320232391,-0.053457416594028,0.146656125783920,0.057319458574057,0.135619774460793,0.091925300657749,-0.051463518291712));
res += mul(Get(s3,0,dy), float4x4(0.008179947733879,-0.016953891143203,-0.311791777610779,-0.004402415361255,-0.013367500156164,0.025518270209432,0.093180760741234,0.050802379846573,-0.098140001296997,-0.221049621701241,0.019900659099221,-0.046548735350370,0.003183759748936,0.029241425916553,-0.015367021784186,-0.037323322147131));
res += mul(Get(s3,dx,-dy), float4x4(0.115005336701870,-0.096621133387089,-0.092393241822720,-0.223739936947823,-0.177012279629707,0.095512926578522,-0.009003550745547,-0.060983404517174,-0.095704570412636,0.115761749446392,-0.058396991342306,-0.063125327229500,-0.014770378358662,-0.148576289415359,0.113187842071056,0.023713188245893));
res += mul(Get(s3,dx,0), float4x4(0.126153618097305,-0.037747945636511,0.605140447616577,-0.061574440449476,-0.049273334443569,0.250994294881821,0.098525442183018,-0.021925862878561,0.023553973063827,-0.098163746297359,-0.058286942541599,-0.085770457983017,-0.155837401747704,0.097339354455471,0.090721622109413,-0.000129480293253));
res += mul(Get(s3,dx,dy), float4x4(-0.117527693510056,-0.051815047860146,0.383924663066864,0.073355704545975,0.029199264943600,-0.135177344083786,0.062417238950729,0.015123593620956,0.042832590639591,-0.128648400306702,-0.004772275686264,-0.073029540479183,-0.166157484054565,0.138177648186684,-0.093335583806038,-0.023653667420149));
return max(float4(0,0,0,0), res);
}
