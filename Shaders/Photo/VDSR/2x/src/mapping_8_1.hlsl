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
res += mul(Get(s0,-dx,-dy), float4x4(0.028432935476303,-0.040297083556652,-0.111977152526379,0.051715109497309,-0.031411163508892,0.034083716571331,0.037329751998186,0.072401359677315,-0.103233762085438,-0.049362551420927,0.086486630141735,-0.083976656198502,0.145689755678177,-0.075346484780312,-0.180617094039917,-0.125910282135010));
res += mul(Get(s0,-dx,0), float4x4(0.109309174120426,-0.011217623949051,-0.016363732516766,0.086942933499813,0.027077592909336,0.015919404104352,0.169096231460571,-0.101849898695946,-0.087032891809940,0.144836515188217,0.039517104625702,0.003750629723072,0.049176946282387,-0.065951026976109,-0.011757424101233,-0.199851736426353));
res += mul(Get(s0,-dx,dy), float4x4(-0.051528554409742,-0.055806554853916,-0.085123524069786,0.019061544910073,0.032122831791639,0.051026433706284,-0.081791371107101,-0.093037873506546,-0.021842602640390,0.085288435220718,0.046990167349577,-0.012834319844842,0.107419967651367,-0.063584215939045,0.042942922562361,-0.062742121517658));
res += mul(Get(s0,0,-dy), float4x4(0.017869798466563,0.074310548603535,-0.039902135729790,0.013894418254495,-0.031431648880243,-0.038971252739429,0.094361372292042,0.004393510520458,0.068431496620178,-0.013872992247343,0.061298232525587,-0.091980248689651,0.140863060951233,0.043237585574389,0.058710899204016,-0.145183861255646));
res += mul(Get(s0,0,0), float4x4(0.022343084216118,0.066289775073528,-0.081524953246117,0.344115346670151,0.173485681414604,0.006592477206141,0.101979516446590,-0.088306993246078,-0.036160942167044,0.048381336033344,0.063931502401829,0.183650523424149,-0.033755946904421,0.064362980425358,0.035129100084305,-0.204423651099205));
res += mul(Get(s0,0,dy), float4x4(0.029318381100893,-0.013007713481784,-0.060864705592394,-0.102163679897785,-0.071800805628300,0.137161150574684,-0.065894141793251,-0.018773918971419,0.033257663249969,-0.138671696186066,-0.019137041643262,0.028028244152665,0.028420656919479,-0.023546788841486,-0.054282769560814,0.093065291643143));
res += mul(Get(s0,dx,-dy), float4x4(0.012180089019239,-0.050385404378176,-0.066733308136463,-0.069543145596981,-0.039697162806988,0.027966435998678,0.058476123958826,-0.054745186120272,-0.088153444230556,0.036424342542887,-0.034511029720306,-0.007786213885993,0.089256703853607,-0.010081985965371,0.036501821130514,-0.121420666575432));
res += mul(Get(s0,dx,0), float4x4(0.071322277188301,-0.045825645327568,0.013872110284865,0.059103675186634,0.065746106207371,-0.027961526066065,-0.054090943187475,-0.043182272464037,0.041716169565916,0.082085423171520,-0.006190607324243,0.042020209133625,-0.159928545355797,0.024431344121695,0.044466637074947,-0.089310646057129));
res += mul(Get(s0,dx,dy), float4x4(0.045432452112436,-0.134904041886330,0.003342432202771,0.057980779558420,-0.070111766457558,-0.022828731685877,0.006826181430370,-0.028360322117805,-0.103892475366592,0.167338684201241,0.024023765698075,-0.055830493569374,0.156843826174736,-0.009169500321150,0.049551848322153,-0.096974983811378));
res += mul(Get(s1,-dx,-dy), float4x4(-0.009416422806680,-0.058799412101507,-0.014588951133192,-0.055400379002094,-0.062673561275005,0.060961313545704,0.127809494733810,-0.029963415116072,-0.261622637510300,0.026005530729890,0.067982465028763,-0.038063686341047,0.023259110748768,0.100489214062691,0.023937156423926,0.053946860134602));
res += mul(Get(s1,-dx,0), float4x4(0.215213805437088,-0.077358648180962,-0.063692212104797,0.077449560165405,0.035613615065813,0.047842349857092,-0.024767188355327,-0.066607967019081,-0.211553320288658,-0.065239846706390,0.002464357996359,-0.106941811740398,0.206977680325508,-0.063859768211842,-0.108833312988281,0.069375954568386));
res += mul(Get(s1,-dx,dy), float4x4(0.088097050786018,-0.046778701245785,-0.029225332662463,-0.070308640599251,-0.098158970475197,-0.097884275019169,-0.018618501722813,-0.077342621982098,0.004286438226700,0.082579955458641,-0.039454601705074,-0.065318591892719,0.112758629024029,0.008899383246899,0.040818408131599,0.069580383598804));
res += mul(Get(s1,0,-dy), float4x4(-0.057455461472273,0.114161312580109,-0.082739196717739,0.074514985084534,-0.047128140926361,0.025237923488021,0.043024171143770,-0.078700020909309,-0.143565192818642,-0.011541060172021,0.011093743145466,0.041334420442581,-0.034553308039904,0.084128804504871,-0.111684024333954,-0.021949052810669));
res += mul(Get(s1,0,0), float4x4(-0.050321046262980,0.008524080738425,-0.105310373008251,0.142964750528336,0.075343772768974,0.026341522112489,-0.050105225294828,0.013003325089812,-0.123694047331810,-0.043835692107677,0.018679631873965,-0.076966442167759,-0.055252805352211,-0.014676370657980,-0.085383944213390,-0.014328379184008));
res += mul(Get(s1,0,dy), float4x4(0.064794175326824,0.032869119197130,-0.080916166305542,0.107957519590855,0.068461984395981,0.018180919811130,0.023711275309324,0.015075775794685,-0.047659687697887,0.066275782883167,-0.134917706251144,0.078915476799011,-0.033761002123356,0.086401261389256,-0.018988743424416,-0.019100777804852));
res += mul(Get(s1,dx,-dy), float4x4(0.069662757217884,-0.052470106631517,0.139638468623161,0.073283202946186,-0.022523701190948,0.097016893327236,-0.040245175361633,-0.020770911127329,0.008395184762776,0.103968054056168,-0.035001669079065,0.015788074582815,0.020413070917130,0.010620692744851,0.000384803162888,0.019619444385171));
res += mul(Get(s1,dx,0), float4x4(0.018706668168306,-0.113944791257381,-0.002900412539020,0.011923619545996,-0.010497837327421,-0.028565699234605,-0.063038796186447,0.030698303133249,0.090767905116081,0.006233595777303,0.100105650722980,-0.016504496335983,0.051916047930717,-0.060058582574129,0.115380235016346,0.041228309273720));
res += mul(Get(s1,dx,dy), float4x4(-0.101930379867554,-0.052226927131414,-0.061982221901417,-0.015558996237814,-0.038388643413782,-0.098035864531994,0.111528314650059,-0.000429361127317,0.085814528167248,0.087779320776463,-0.086284555494785,0.011213017627597,-0.084889844059944,0.065800048410892,0.059779968112707,-0.006873283535242));
res += mul(Get(s2,-dx,-dy), float4x4(-0.084934882819653,-0.033789653331041,-0.077150285243988,0.034554671496153,0.066670045256615,-0.091560587286949,-0.002312773372978,0.090948194265366,0.145610541105270,0.002618891652673,0.065931245684624,0.031700462102890,-0.106279164552689,0.034342411905527,0.094158187508583,-0.062993355095387));
res += mul(Get(s2,-dx,0), float4x4(0.134402230381966,-0.003899742150679,-0.074680857360363,0.025987088680267,-0.118480764329433,-0.029584927484393,0.073221161961555,0.069507911801338,0.162459924817085,0.035313088446856,-0.006676578894258,0.010949749499559,0.087682910263538,0.013264490291476,0.016660289838910,-0.045500073581934));
res += mul(Get(s2,-dx,dy), float4x4(0.059356212615967,-0.047756053507328,-0.078807853162289,0.070960804820061,-0.016084101051092,-0.025884333997965,0.065888680517673,0.000934250478167,0.117516353726387,-0.032858897000551,-0.026594070717692,-0.228197053074837,-0.057477831840515,-0.055583853274584,-0.027751404792070,-0.044065125286579));
res += mul(Get(s2,0,-dy), float4x4(0.062451485544443,0.026545668020844,-0.023072779178619,0.048728089779615,-0.114399299025536,0.037492793053389,0.038640774786472,0.023950725793839,0.003054872155190,-0.028954464942217,0.042098563164473,-0.005339380819350,0.056495014578104,-0.018389727920294,-0.053637523204088,-0.006904782727361));
res += mul(Get(s2,0,0), float4x4(0.134491786360741,0.048784110695124,0.162616625428200,0.018413078039885,-0.102094091475010,0.109381325542927,0.029761712998152,-0.028808632865548,0.013368317857385,-0.018046448007226,0.040771294385195,-0.199896648526192,0.107390791177750,0.034206606447697,-0.109348215162754,-0.100741386413574));
res += mul(Get(s2,0,dy), float4x4(-0.063072629272938,-0.068228892982006,0.037810534238815,0.126896083354950,-0.046385239809752,-0.007305065169930,-0.064219854772091,0.003856806317344,-0.013709411956370,0.030986942350864,0.138271510601044,-0.146046251058578,0.179730832576752,0.022700568661094,-0.142770066857338,-0.149645194411278));
res += mul(Get(s2,dx,-dy), float4x4(-0.067923985421658,0.038499910384417,-0.019592501223087,-0.080116346478462,0.000786367454566,-0.154124364256859,0.109420977532864,-0.068113312125206,0.044555418193340,-0.023735446855426,0.035011898726225,0.081876032054424,0.060706414282322,-0.023307401686907,0.049052771180868,0.018402373418212));
res += mul(Get(s2,dx,0), float4x4(0.100173912942410,-0.087183497846127,0.036207500845194,0.086369931697845,0.003472434123978,-0.186167553067207,0.210099443793297,-0.035220328718424,-0.069841317832470,-0.173081874847412,-0.027346931397915,-0.112158730626106,-0.033042125403881,0.022379638627172,0.012542027048767,-0.037636164575815));
res += mul(Get(s2,dx,dy), float4x4(-0.025669680908322,-0.171966090798378,0.131882742047310,-0.047729853540659,0.014339939691126,-0.022441787645221,0.094447135925293,0.014959316700697,-0.079521782696247,-0.019686916843057,-0.042100712656975,-0.040251027792692,0.028886953368783,0.008117489516735,-0.050413891673088,-0.104044318199158));
res += mul(Get(s3,-dx,-dy), float4x4(-0.070400878787041,0.053085740655661,0.022902263328433,0.019104436039925,-0.006614174693823,-0.038852717727423,0.041934024542570,-0.121885694563389,-0.197171598672867,0.128250405192375,0.017221553251147,0.013159375637770,0.031936954706907,0.001025439356454,-0.177343443036079,0.050427328795195));
res += mul(Get(s3,-dx,0), float4x4(-0.039906047284603,0.028325980529189,-0.082421034574509,0.127559289336205,-0.031108353286982,-0.039619613438845,-0.029432112351060,-0.071518719196320,-0.222993552684784,-0.030902743339539,-0.001976329833269,-0.023347888141870,0.114267081022263,0.011796132661402,-0.071426406502724,0.030244603753090));
res += mul(Get(s3,-dx,dy), float4x4(-0.065339952707291,0.113045774400234,-0.018057435750961,-0.064460985362530,0.083678841590881,-0.039185352623463,0.032955937087536,-0.048509001731873,-0.055286679416895,0.008874619379640,-0.071922987699509,0.078583531081676,-0.043013162910938,0.034261494874954,-0.021686952561140,0.020995900034904));
res += mul(Get(s3,0,-dy), float4x4(0.030262259766459,-0.072371728718281,0.004175830632448,0.070118464529514,-0.002272173063830,-0.030164809897542,0.337145775556564,-0.131318286061287,-0.155884504318237,-0.063095390796661,-0.107815660536289,0.050844538956881,-0.007913620211184,-0.023125784471631,0.046558283269405,0.011440080590546));
res += mul(Get(s3,0,0), float4x4(-0.063737124204636,-0.016438139602542,-0.039053495973349,0.055777177214622,-0.018340166658163,0.127538904547691,0.001463591470383,-0.003502957522869,-0.073117561638355,-0.015864720568061,-0.013404119759798,0.080013908445835,0.089578591287136,-0.007095951586962,0.082419976592064,-0.089525997638702));
res += mul(Get(s3,0,dy), float4x4(-0.153382778167725,-0.086635097861290,0.067179441452026,0.043805405497551,-0.013501822948456,0.106125906109810,0.009705914184451,0.205433085560799,0.025507222861052,-0.004856064449996,-0.073152147233486,0.046309288591146,-0.077291838824749,0.025529908016324,0.065466649830341,0.021858753636479));
res += mul(Get(s3,dx,-dy), float4x4(-0.014661608263850,0.039788085967302,-0.133870914578438,0.018809106200933,0.186806291341782,-0.039840918034315,0.022259749472141,-0.099372252821922,0.031026680022478,0.053953949362040,0.032154768705368,-0.013281117193401,-0.080166794359684,-0.144643068313599,-0.002782126655802,0.012639724649489));
res += mul(Get(s3,dx,0), float4x4(0.033155560493469,0.111890278756618,-0.098244123160839,-0.034642163664103,0.119509376585484,-0.052699081599712,0.092336639761925,0.110127381980419,0.052077423781157,0.393640428781509,-0.084355875849724,-0.045945357531309,0.065255619585514,0.027290752157569,-0.029808649793267,0.034705277532339));
res += mul(Get(s3,dx,dy), float4x4(-0.003049301914871,-0.013590333983302,-0.049133073538542,-0.000178345857421,-0.030566278845072,-0.052466873079538,0.033645570278168,-0.018662789836526,0.031970564275980,0.078151099383831,-0.009786834940314,0.057289525866508,-0.121938630938530,0.093008019030094,-0.016089355573058,-0.050264298915863));
return max(float4(0,0,0,0), res);
}
