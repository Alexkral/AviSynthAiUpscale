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
float4 res = float4(0.213534131646156,-0.159363418817520,0.022619886323810,-0.194047272205353);
res += mul(Get(s0,-dx,-dy), float4x4(-0.012548454105854,-0.015292473137379,0.079082734882832,0.026150051504374,0.044918842613697,0.036577075719833,-0.107708171010017,-0.109257683157921,-0.074106164276600,-0.004419536795467,0.008858687244356,-0.003581822849810,-0.054098863154650,0.053908284753561,-0.092607013881207,-0.050569996237755));
res += mul(Get(s0,-dx,0), float4x4(0.025078747421503,-0.026269584894180,0.126606285572052,0.048330303281546,-0.015653148293495,-0.078727006912231,0.077114582061768,-0.023402541875839,-0.010836272500455,-0.026632780209184,-0.036498170346022,0.006275519728661,-0.068564116954803,-0.114955969154835,0.040194388478994,0.030590021982789));
res += mul(Get(s0,-dx,dy), float4x4(0.041032899171114,0.163801416754723,-0.093755029141903,0.009590784087777,-0.024876529350877,-0.068012550473213,0.064517840743065,-0.026284497231245,0.022341670468450,-0.088335394859314,0.019420418888330,0.025390692055225,-0.024057822301984,0.073408856987953,0.133030101656914,-0.026090828701854));
res += mul(Get(s0,0,-dy), float4x4(0.026133712381124,0.031911984086037,-0.125909954309464,0.034590601921082,0.022901356220245,-0.056237954646349,-0.049704194068909,-0.050995107740164,0.042027384042740,-0.008890533819795,0.066310197114944,-0.043655950576067,-0.119548052549362,-0.003517849836498,-0.043660640716553,0.007871547713876));
res += mul(Get(s0,0,0), float4x4(-0.089151255786419,0.107925601303577,0.041106972843409,-0.022138657048345,-0.082419253885746,-0.210095301270485,0.013972455635667,0.111510291695595,0.009922668337822,0.017343945801258,-0.130023166537285,0.000653866038192,-0.107727378606796,-0.190965786576271,0.008068932220340,0.048222795128822));
res += mul(Get(s0,0,dy), float4x4(0.055357500910759,0.048637125641108,0.045219883322716,-0.037832815200090,-0.068780437111855,-0.048060450702906,-0.117623917758465,0.001275262911804,-0.055892527103424,0.082670636475086,-0.004372742492706,-0.065869316458702,0.006680452730507,-0.010664286091924,0.032077379524708,-0.181812062859535));
res += mul(Get(s0,dx,-dy), float4x4(0.098951928317547,0.021543251350522,-0.049676243215799,0.038346979767084,-0.017909802496433,0.058149311691523,-0.006613411009312,-0.050310421735048,0.081513933837414,-0.065554395318031,0.136959403753281,0.004917171783745,-0.064859621226788,-0.000602751737460,0.090651854872704,-0.004217419773340));
res += mul(Get(s0,dx,0), float4x4(-0.010861185379326,-0.027170434594154,0.123206175863743,-0.035260271281004,-0.026775479316711,-0.077015474438667,-0.049553453922272,0.042734000831842,-0.072282686829567,0.052809160202742,0.078954935073853,0.024804780259728,-0.101104035973549,-0.130038216710091,0.003168955212459,-0.030818464234471));
res += mul(Get(s0,dx,dy), float4x4(0.040465928614140,-0.062610320746899,-0.017918724566698,0.030186519026756,-0.115105159580708,0.178065747022629,-0.018727093935013,-0.000625864078756,0.008416038937867,-0.013736293651164,0.035746112465858,0.070133171975613,-0.002405991544947,0.119322493672371,-0.129185318946838,-0.194538593292236));
res += mul(Get(s1,-dx,-dy), float4x4(0.017673376947641,0.053539726883173,0.034374870359898,-0.045094359666109,0.033204995095730,0.025467393919826,0.102014034986496,0.000375380361220,-0.016676297411323,0.008676564320922,-0.036483619362116,0.006052709184587,0.075910478830338,0.006253432482481,-0.001344795571640,-0.024341434240341));
res += mul(Get(s1,-dx,0), float4x4(0.050680793821812,0.118119947612286,-0.026547070592642,-0.037738095968962,-0.081240803003311,0.036726720631123,0.068802922964096,-0.055921472609043,-0.017496662214398,0.017327029258013,0.030170328915119,-0.030946703627706,0.118460692465305,-0.068100899457932,0.160424530506134,0.012714505195618));
res += mul(Get(s1,-dx,dy), float4x4(0.036717269569635,-0.046475660055876,0.087343320250511,-0.046549540013075,0.003430524608120,0.075680762529373,-0.178662419319153,-0.020531937479973,0.007690919097513,-0.025240315124393,-0.141611710190773,0.033820476382971,0.115797616541386,0.001426799572073,-0.119128637015820,-0.066880114376545));
res += mul(Get(s1,0,-dy), float4x4(0.005639452487230,0.105695918202400,-0.180200174450874,-0.054152633994818,-0.031604602932930,0.006490165367723,-0.214431524276733,0.034405715763569,0.016651583835483,-0.013415249995887,0.139804303646088,-0.018884019926190,-0.008440977893770,0.002083528321236,0.132618486881256,-0.007489754818380));
res += mul(Get(s1,0,0), float4x4(-0.084046743810177,-0.044045779854059,0.197409555315971,0.049288310110569,0.019665770232677,-0.012656382285058,0.109420955181122,0.001119194901548,0.054772756993771,-0.100111104547977,-0.072017021477222,0.006999510340393,0.018291164189577,-0.047480121254921,-0.126221865415573,0.125288784503937));
res += mul(Get(s1,0,dy), float4x4(0.074350774288177,-0.144232138991356,-0.111695304512978,-0.016125939786434,0.019573323428631,0.036397155374289,0.083031967282295,0.050534971058369,-0.033857166767120,0.064925976097584,0.151883944869041,-0.037947181612253,-0.058274812996387,-0.041676327586174,0.026157639920712,0.055400852113962));
res += mul(Get(s1,dx,-dy), float4x4(0.065084137022495,0.104253374040127,0.039064247161150,-0.094817474484444,-0.046510208398104,-0.026106975972652,-0.007616131566465,0.003815702628344,0.112087406218052,-0.142013058066368,-0.052756249904633,0.004700740333647,0.020522836595774,0.096886955201626,-0.034838773310184,-0.071938209235668));
res += mul(Get(s1,dx,0), float4x4(0.050813928246498,-0.162384554743767,-0.098012022674084,-0.004355354234576,0.028163710609078,0.014209242537618,-0.003892179578543,-0.026872657239437,-0.028963204473257,0.116579130291939,0.062190771102905,-0.076772622764111,-0.098590992391109,-0.124982059001923,-0.035234481096268,0.090415857732296));
res += mul(Get(s1,dx,dy), float4x4(-0.025392696261406,0.127776399254799,-0.034427095204592,-0.004999203141779,-0.026277931407094,-0.129873186349869,0.104171186685562,0.055172529071569,0.024847427383065,0.026401555165648,-0.021747807040811,0.032408457249403,-0.097038045525551,-0.062600046396255,-0.138946548104286,-0.004463020246476));
res += mul(Get(s2,-dx,-dy), float4x4(-0.068694733083248,0.111693151295185,0.052433341741562,0.007557719014585,0.042501349002123,-0.057119105011225,-0.025233099237084,-0.054845906794071,-0.055544752627611,0.076391354203224,-0.167613044381142,-0.021748838946223,0.023899830877781,0.014826127327979,0.124709390103817,0.025994809344411));
res += mul(Get(s2,-dx,0), float4x4(0.011258103884757,0.024208964779973,-0.092434003949165,-0.005078145302832,0.015109008178115,-0.125539630651474,-0.037440627813339,0.034010831266642,-0.063896685838699,0.020047996193171,0.149019703269005,-0.061823919415474,-0.030111350119114,0.095456853508949,-0.112079225480556,0.081141367554665));
res += mul(Get(s2,-dx,dy), float4x4(0.052071340382099,0.027588628232479,0.010247141122818,0.009092060849071,-0.001837463001721,-0.051381330937147,-0.006194947753102,0.032247409224510,-0.054984387010336,-0.068657197058201,0.031239530071616,0.050123114138842,-0.061949174851179,0.032915782183409,0.129441708326340,-0.010341753251851));
res += mul(Get(s2,0,-dy), float4x4(0.036172248423100,0.096787557005882,0.083977133035660,-0.028728958219290,0.021750077605247,-0.007648941129446,-0.033016733825207,-0.011112769134343,-0.081224329769611,-0.066899083554745,-0.001717817853205,-0.044273860752583,0.055285770446062,0.063683293759823,-0.107981562614441,-0.035999834537506));
res += mul(Get(s2,0,0), float4x4(0.014643752016127,0.040840692818165,-0.030009487643838,0.065033152699471,0.019267018884420,-0.171493962407112,-0.035611703991890,0.085379116237164,-0.012699862010777,-0.151307985186577,0.002954784315079,-0.019399683922529,-0.204889059066772,0.028456462547183,0.153694108128548,0.041000377386808));
res += mul(Get(s2,0,dy), float4x4(0.029537871479988,0.009383324533701,0.061269808560610,-0.012979882769287,-0.023243937641382,0.128252372145653,0.043419014662504,-0.115220703184605,-0.017568901181221,-0.051479075103998,-0.023971885442734,-0.006251228973269,0.054792899638414,-0.094645887613297,-0.019056396558881,-0.005627243779600));
res += mul(Get(s2,dx,-dy), float4x4(0.039387308061123,0.075719915330410,-0.004673506598920,-0.055529400706291,0.021113822236657,-0.076114416122437,0.004945060238242,0.025933647528291,-0.021499941125512,-0.021989936009049,-0.093913860619068,-0.056442245841026,0.035808634012938,0.042853929102421,-0.063474334776402,0.014388460665941));
res += mul(Get(s2,dx,0), float4x4(-0.089477337896824,-0.067125618457794,-0.064666785299778,0.107969649136066,-0.065704733133316,-0.000541151210200,-0.174182951450348,-0.026860894635320,0.050728335976601,0.100446648895741,-0.091432034969330,-0.223457559943199,-0.017041841521859,-0.132829725742340,0.098379112780094,-0.001603240612894));
res += mul(Get(s2,dx,dy), float4x4(-0.019946936517954,-0.065084233880043,0.019675714895129,0.124945536255836,-0.093615859746933,0.292494237422943,0.015500534325838,-0.085141278803349,-0.079994179308414,0.264167636632919,0.004640632309020,-0.228568568825722,0.048990078270435,0.057439450174570,-0.185493126511574,-0.028636867180467));
res += mul(Get(s3,-dx,-dy), float4x4(-0.001015475369059,0.016705933958292,-0.041902940720320,0.043825548142195,-0.068319253623486,0.062368854880333,0.090842232108116,0.001854432630353,-0.052742984145880,0.055128280073404,0.091389000415802,0.022161269560456,0.063208736479282,0.000372315262211,-0.065206915140152,0.005151438061148));
res += mul(Get(s3,-dx,0), float4x4(0.013940844684839,0.015074310824275,0.010567729361355,0.023306475952268,0.002197253983468,-0.040608443319798,-0.163479924201965,-0.014889331534505,-0.071475699543953,0.045129843056202,-0.105707071721554,-0.030719850212336,0.082845315337181,-0.029886405915022,0.100336730480194,0.015682458877563));
res += mul(Get(s3,-dx,dy), float4x4(0.060074999928474,0.022471373900771,0.094225659966469,-0.005694874562323,-0.017548695206642,-0.064360678195953,0.068951569497585,0.004001808352768,-0.023957950994372,0.098206095397472,0.057698804885149,-0.034483730792999,-0.086919948458672,0.101330794394016,0.149072095751762,-0.015286330133677));
res += mul(Get(s3,0,-dy), float4x4(-0.048789352178574,-0.031668081879616,0.063613913953304,0.011344021186233,-0.032182812690735,-0.111052468419075,0.065891385078430,0.014476745389402,-0.048446934670210,0.106322921812534,-0.016279680654407,0.016019931063056,-0.003424778813496,-0.093606933951378,-0.126283794641495,-0.001794418552890));
res += mul(Get(s3,0,0), float4x4(-0.033657371997833,-0.003917194437236,-0.112098604440689,-0.004866035655141,0.034621622413397,-0.032473050057888,-0.020543225109577,-0.072035640478134,-0.099304303526878,0.088906861841679,0.124421007931232,-0.015263436362147,0.099107168614864,-0.001434077974409,-0.118019945919514,-0.013407661579549));
res += mul(Get(s3,0,dy), float4x4(-0.038409080356359,-0.011010199785233,-0.086516939103603,-0.028166849166155,-0.031184850260615,-0.102970942854881,-0.091190710663795,-0.013432906940579,0.010805478319526,-0.019365161657333,0.047886282205582,-0.013395007699728,-0.055754937231541,0.056121755391359,0.002293830038980,0.031336791813374));
res += mul(Get(s3,dx,-dy), float4x4(0.078831546008587,0.028680156916380,0.152271822094917,0.014693335630000,0.110680788755417,0.026653578504920,0.092347010970116,0.054297197610140,-0.032077584415674,0.043950520455837,0.001847555977292,-0.020771455019712,-0.049742091447115,-0.039581485092640,0.120999366044998,0.037067346274853));
res += mul(Get(s3,dx,0), float4x4(-0.040319178253412,0.055239260196686,-0.060373179614544,-0.032930627465248,0.090174078941345,0.123564071953297,0.019995430484414,-0.037062034010887,0.107974216341972,-0.050615221261978,-0.009733643382788,-0.039541311562061,-0.031595703214407,0.094402551651001,-0.028611559420824,-0.005949403159320));
res += mul(Get(s3,dx,dy), float4x4(-0.008028963580728,-0.003178214887157,-0.082637183368206,-0.091441377997398,0.149170562624931,0.049365311861038,0.061720538884401,-0.215815663337708,0.102553687989712,-0.112070210278034,0.012638847343624,-0.009591384790838,-0.086098641157150,-0.037199746817350,-0.016837481409311,0.023488977923989));
res += mul(Get(s4,-dx,-dy), float4x4(0.023909261450171,-0.075453117489815,0.241586446762085,-0.025533407926559,0.029624905437231,0.039634030312300,0.215454101562500,0.002556904684752,0.148401379585266,0.042221143841743,0.056248478591442,-0.029635066166520,-0.055921703577042,-0.010480201803148,-0.113342411816120,0.040834378451109));
res += mul(Get(s4,-dx,0), float4x4(0.059810806065798,0.110082760453224,-0.154186874628067,-0.042871706187725,0.031966175884008,0.046379797160625,-0.213530421257019,0.036490280181170,-0.069848500192165,0.022906923666596,-0.038791444152594,-0.018741494044662,-0.123358771204948,0.031287126243114,-0.080157116055489,0.006309979595244));
res += mul(Get(s4,-dx,dy), float4x4(0.084930643439293,0.086495332419872,0.066562660038471,-0.036344159394503,0.029827758669853,0.008953451178968,-0.037718106061220,0.050205986946821,-0.121539361774921,0.002774873282760,-0.092320442199707,-0.014951506629586,0.241589531302452,0.006527558900416,0.051514033228159,0.030706277117133));
res += mul(Get(s4,0,-dy), float4x4(0.146181851625443,0.044979959726334,-0.148386433720589,-0.030025184154510,0.090064987540245,-0.045961912721395,-0.071265906095505,0.057299867272377,0.064748197793961,0.084890626370907,0.002977578202263,-0.041578941047192,-0.043460626155138,0.002647665096447,0.052719730883837,0.020081952214241));
res += mul(Get(s4,0,0), float4x4(-0.037999588996172,0.198037669062614,0.190071433782578,-0.005776167847216,0.119408592581749,0.212893635034561,0.028800142928958,-0.015437023714185,0.096570350229740,-0.039154209196568,0.011065386235714,-0.010482148267329,-0.087736912071705,-0.060436956584454,-0.066419556736946,-0.050801817327738));
res += mul(Get(s4,0,dy), float4x4(0.112981200218201,-0.153510749340057,-0.136640846729279,0.075040541589260,-0.125630512833595,0.017632711678743,0.114939197897911,0.158832088112831,-0.073990032076836,-0.050907477736473,-0.066473633050919,0.032436922192574,0.138554394245148,0.048495508730412,-0.059985127300024,-0.127033278346062));
res += mul(Get(s4,dx,-dy), float4x4(-0.008163891732693,0.178250983357430,0.075970374047756,-0.058339823037386,-0.033902410417795,-0.149317830801010,-0.169119656085968,0.012220923788846,-0.059483937919140,0.046838685870171,0.205193534493446,0.045836679637432,0.047621168196201,-0.039112340658903,-0.040250856429338,-0.004292496480048));
res += mul(Get(s4,dx,0), float4x4(0.070999197661877,-0.076477006077766,-0.075116716325283,0.025447934865952,0.062136169523001,0.211529284715652,0.045877076685429,-0.095098450779915,0.080098487436771,-0.185018628835678,0.062547363340855,0.160823464393616,0.012607767246664,-0.065249681472778,-0.007715694606304,-0.108690261840820));
res += mul(Get(s4,dx,dy), float4x4(0.184087693691254,-0.061717566102743,0.067128479480743,0.008011326193810,-0.085099950432777,-0.152560159564018,0.011879804544151,0.294033139944077,0.028313219547272,0.102747522294521,-0.065629780292511,-0.133297711610794,0.106835857033730,0.090390510857105,0.010025774128735,-0.155915841460228));
res += mul(Get(s5,-dx,-dy), float4x4(-0.241130024194717,0.086043208837509,0.057341899722815,-0.091786265373230,-0.010409113019705,0.042204491794109,-0.012888852506876,-0.002821716945618,0.038426324725151,0.021373875439167,0.014791353605688,-0.019397595897317,0.085120573639870,0.029271060600877,-0.079725429415703,-0.001053954940289));
res += mul(Get(s5,-dx,0), float4x4(-0.155191108584404,-0.152847126126289,0.087054252624512,0.008676798082888,0.082002237439156,0.012504838407040,0.172407791018486,-0.013234230689704,0.041764955967665,-0.002669211709872,0.077613517642021,-0.031693965196609,0.029250279068947,0.067396238446236,-0.001225820509717,-0.003724785987288));
res += mul(Get(s5,-dx,dy), float4x4(0.026970025151968,0.034178629517555,-0.031007034704089,-0.077821046113968,0.042920280247927,0.117037825286388,-0.083706028759480,-0.003034908324480,0.001205320353620,-0.004688288550824,-0.017716109752655,-0.013289111666381,0.016864387318492,-0.034539718180895,0.011221913620830,0.018080521374941));
res += mul(Get(s5,0,-dy), float4x4(-0.108613997697830,-0.053115848451853,-0.097251370549202,-0.083102449774742,-0.039501477032900,-0.020142043009400,0.170928314328194,0.008761198259890,0.054713860154152,0.029907781630754,0.112422987818718,-0.012843037024140,-0.111689753830433,-0.016708852723241,0.058803845196962,0.047627963125706));
res += mul(Get(s5,0,0), float4x4(-0.156226366758347,-0.184900060296059,-0.115732252597809,-0.042336825281382,-0.056503437459469,0.062953732907772,-0.220953509211540,0.022698445245624,0.120922133326530,0.070369534194469,-0.013134111650288,-0.009460387751460,0.054029047489166,-0.159058451652527,0.095398180186749,0.034502010792494));
res += mul(Get(s5,0,dy), float4x4(-0.037531733512878,0.033886644989252,0.019770741462708,-0.291469842195511,0.047708980739117,-0.027600688859820,0.050339058041573,0.021494586020708,0.049694113433361,0.171077355742455,-0.003021969227120,-0.007932484149933,-0.045529063791037,-0.094945475459099,-0.026430759578943,0.059978324919939));
res += mul(Get(s5,dx,-dy), float4x4(-0.162716567516327,-0.045285083353519,-0.049835573881865,0.017029212787747,0.107665374875069,0.043285321444273,-0.077840760350227,-0.088024087250233,0.051330093294382,-0.051507830619812,-0.076401047408581,-0.028161462396383,-0.103583283722401,-0.009371890686452,0.106840357184410,0.025556217879057));
res += mul(Get(s5,dx,0), float4x4(-0.215406477451324,-0.182026788592339,-0.033642563968897,0.028863010928035,-0.150963008403778,0.089403867721558,0.092074975371361,-0.037619866430759,-0.031544022262096,0.003359800204635,0.094127513468266,0.111936189234257,0.016875129193068,0.034723337739706,-0.011349461972713,-0.025410644710064));
res += mul(Get(s5,dx,dy), float4x4(-0.043093070387840,-0.025730822235346,0.157265141606331,-0.243124648928642,-0.011176803149283,-0.128990963101387,-0.101957276463509,-0.003161590080708,0.015251227654517,-0.105794236063957,0.120896488428116,0.188025563955307,-0.119603902101517,0.187275379896164,0.024669433012605,-0.067126162350178));
res = max(float4(0, 0, 0, 0), res) + float4(0.208192005753517,-0.023175913840532,0.826266825199127,0.003707287600264) * min(float4(0, 0, 0, 0), res);
return res;
}