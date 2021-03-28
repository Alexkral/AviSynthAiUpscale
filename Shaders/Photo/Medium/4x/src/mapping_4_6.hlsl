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
float4 res = float4(-0.138624846935272,-0.212720841169357,-0.130393370985985,-0.114032909274101);
res += mul(Get(s0,-dx,-dy), float4x4(0.117534622550011,-0.004751582629979,-0.038081850856543,0.001824153587222,-0.124554142355919,0.038277123123407,-0.049646962434053,-0.123371213674545,-0.057838074862957,0.086202293634415,-0.042797390371561,0.002139131538570,-0.014950852841139,-0.165603533387184,0.079825617372990,-0.001824857085012));
res += mul(Get(s0,-dx,0), float4x4(-0.031578104943037,-0.073374368250370,-0.075637102127075,0.071886993944645,0.156711459159851,-0.104717500507832,0.123801372945309,0.064963407814503,-0.069715470075607,0.403958141803741,-0.129155501723289,-0.114539571106434,0.073312878608704,-0.124977618455887,-0.004878619220108,-0.101247832179070));
res += mul(Get(s0,-dx,dy), float4x4(0.010291503742337,-0.036721903830767,0.019469758495688,-0.102840967476368,0.026124389842153,-0.138572588562965,0.032624162733555,0.276385098695755,-0.028552079573274,0.341315835714340,-0.069970011711121,0.030511839315295,-0.077029787003994,0.072974637150764,-0.095808245241642,-0.098964758217335));
res += mul(Get(s0,0,-dy), float4x4(0.041848957538605,-0.032957017421722,-0.038672912865877,-0.063456252217293,-0.168823897838593,0.088799409568310,0.050576325505972,-0.097026556730270,-0.037879504263401,-0.196271315217018,-0.037967216223478,-0.055244237184525,0.132533922791481,0.097600191831589,0.008789133280516,0.025561861693859));
res += mul(Get(s0,0,0), float4x4(0.059659615159035,0.010413192212582,0.001345508033410,-0.064906544983387,-0.057196967303753,0.020439852029085,-0.100548140704632,0.130260139703751,-0.029774321243167,0.105592086911201,0.020098114386201,-0.049690496176481,0.332713544368744,0.021396338939667,0.051405742764473,-0.149037227034569));
res += mul(Get(s0,0,dy), float4x4(-0.222455516457558,0.064393684267998,-0.118321396410465,0.082165271043777,0.063010588288307,-0.017464090138674,0.144682690501213,0.001266397652216,0.045974627137184,0.007425504270941,0.005052991677076,0.032800275832415,-0.280134767293930,-0.001253529684618,-0.031637083739042,0.132279902696609));
res += mul(Get(s0,dx,-dy), float4x4(0.022349147126079,-0.066344238817692,-0.054902400821447,-0.042101282626390,-0.169950261712074,-0.042193382978439,0.092344328761101,0.103935688734055,0.038457036018372,0.010798512026668,0.021159645169973,-0.030888993293047,0.032001592218876,-0.033356070518494,-0.072140596807003,-0.038521122187376));
res += mul(Get(s0,dx,0), float4x4(0.168650940060616,-0.074679717421532,-0.106479898095131,-0.064137332141399,-0.088074326515198,0.001544341328554,-0.047522231936455,0.128257274627686,-0.042438562959433,0.143162220716476,0.088073872029781,0.000637490360532,0.173804536461830,-0.001806756132282,-0.097659960389137,-0.043570954352617));
res += mul(Get(s0,dx,dy), float4x4(-0.139177247881889,-0.083573199808598,-0.101574108004570,0.089089751243591,-0.022064078599215,-0.019621411338449,0.011059059761465,-0.060203976929188,0.028882749378681,0.039508309215307,-0.053816892206669,0.022633424028754,-0.120681963860989,0.057578038424253,0.160185173153877,-0.015120045281947));
res += mul(Get(s1,-dx,-dy), float4x4(-0.161099925637245,-0.098645620048046,-0.090932168066502,-0.035529121756554,-0.035300005227327,0.058931104838848,0.123800449073315,0.077808119356632,0.085042156279087,-0.130386188626289,0.015330015681684,-0.159771099686623,-0.000849978183396,0.130844578146935,0.019334759563208,-0.019274193793535));
res += mul(Get(s1,-dx,0), float4x4(-0.511524498462677,-0.101043254137039,-0.135958284139633,-0.101567246019840,0.078034579753876,0.131307348608971,0.012469707056880,-0.121704898774624,-0.141000390052795,-0.131737083196640,0.077256120741367,-0.076284281909466,-0.075410872697830,-0.218511313199997,-0.010005247779191,-0.014027201570570));
res += mul(Get(s1,-dx,dy), float4x4(0.115751311182976,0.137852102518082,0.084436036646366,-0.230582892894745,0.002716779010370,0.243333771824837,-0.036704417318106,-0.065621562302113,-0.040634259581566,-0.048012901097536,-0.042629141360521,0.034871209412813,-0.034477423876524,-0.150336787104607,-0.005307739134878,-0.024905720725656));
res += mul(Get(s1,0,-dy), float4x4(-0.173286050558090,0.113123521208763,0.046725720167160,-0.066261999309063,0.063667349517345,0.042056307196617,0.047377239912748,0.018055697903037,-0.065100014209747,-0.058405108749866,-0.115448318421841,-0.002260925248265,0.206901982426643,-0.069572843611240,0.132256463170052,-0.339147955179214));
res += mul(Get(s1,0,0), float4x4(-0.210818842053413,-0.094247750937939,-0.268592149019241,0.050420332700014,0.363911479711533,-0.067973479628563,0.184511616826057,-0.032438129186630,-0.061231106519699,-0.026572439819574,0.462651699781418,0.090815909206867,-0.475399434566498,0.111757375299931,-0.316064238548279,-0.210061788558960));
res += mul(Get(s1,0,dy), float4x4(0.307496011257172,-0.149844259023666,-0.016842117533088,-0.390902608633041,-0.105532392859459,-0.294372349977493,0.012396586127579,0.126102685928345,0.080637313425541,0.089278139173985,0.057218916714191,-0.100804947316647,-0.027144616469741,0.093247324228287,-0.032439555972815,0.071169063448906));
res += mul(Get(s1,dx,-dy), float4x4(0.012840840034187,-0.093551710247993,-0.035668291151524,0.036991506814957,0.149190843105316,-0.024437692016363,-0.056917011737823,0.032590493559837,-0.074718743562698,-0.063842363655567,0.064165271818638,-0.077402554452419,0.207311332225800,0.071049772202969,-0.045064106583595,-0.063563629984856));
res += mul(Get(s1,dx,0), float4x4(-0.109993495047092,-0.021521475166082,0.079700551927090,0.057697162032127,0.227279886603355,-0.039357982575893,0.125645563006401,-0.083293788135052,-0.037601694464684,-0.059862494468689,-0.008803403936327,0.005802915431559,0.009900926612318,-0.130081653594971,0.099415823817253,0.004512887913734));
res += mul(Get(s1,dx,dy), float4x4(0.094453424215317,0.009568831883371,-0.075330741703510,-0.056842353194952,-0.083816230297089,0.080028451979160,0.145155742764473,-0.037780020385981,0.041739173233509,-0.029064957052469,0.084767557680607,-0.125464156270027,0.096999883651733,-0.142973467707634,0.107868716120720,-0.020176127552986));
res += mul(Get(s2,-dx,-dy), float4x4(-0.037501499056816,0.048805989325047,-0.027115065604448,-0.023324441164732,0.292222708463669,0.091309182345867,0.175430700182915,-0.290853440761566,0.160651475191116,-0.239233762025833,-0.090722419321537,-0.280748575925827,0.086129501461983,0.054671414196491,0.093813911080360,0.062332946807146));
res += mul(Get(s2,-dx,0), float4x4(-0.287755489349365,-0.239284604787827,-0.062890902161598,0.326572686433792,-0.162244826555252,0.123773120343685,-0.056497998535633,0.178810417652130,-0.317514926195145,-0.273616462945938,-0.018705565482378,0.161422684788704,-0.021575430408120,0.215122774243355,-0.015240481123328,-0.185158804059029));
res += mul(Get(s2,-dx,dy), float4x4(0.088282249867916,-0.401142209768295,-0.047376006841660,-0.237360253930092,0.033822230994701,0.038983430713415,0.105284437537193,-0.251002967357635,0.230549663305283,-0.214918375015259,0.017120728269219,-0.131135314702988,-0.016507122665644,0.088111124932766,-0.049485471099615,0.086901508271694));
res += mul(Get(s2,0,-dy), float4x4(0.049219787120819,-0.167101472616196,-0.111880317330360,-0.335287898778915,0.052272401750088,-0.231603488326073,-0.184858918190002,-0.037000250071287,-0.037804625928402,0.246031686663628,0.025816768407822,0.016357809305191,0.198788076639175,-0.144095867872238,-0.086333468556404,-0.240999415516853));
res += mul(Get(s2,0,0), float4x4(-0.168248638510704,0.083764992654324,-0.055403579026461,0.111093811690807,-0.306116789579391,-0.322097837924957,-0.032794166356325,0.078079864382744,0.148921474814415,0.337915360927582,-0.096235245466232,-0.090560324490070,-0.099422864615917,-0.025898030027747,-0.145899176597595,-0.013601834885776));
res += mul(Get(s2,0,dy), float4x4(-0.004569724202156,0.117316149175167,-0.164152041077614,-0.072966687381268,0.224923431873322,-0.260143607854843,-0.054379131644964,-0.235101416707039,-0.027099065482616,0.239449575543404,-0.073170177638531,0.127977490425110,-0.178907632827759,-0.066191725432873,0.048321150243282,0.026054451242089));
res += mul(Get(s2,dx,-dy), float4x4(-0.149797096848488,0.034429755061865,-0.180535167455673,-0.049224067479372,-0.152241066098213,0.031915474683046,0.046459991484880,-0.262205839157104,-0.123646602034569,-0.076105363667011,-0.044636871665716,0.169646516442299,0.044462934136391,-0.010950973257422,-0.033910188823938,-0.184901520609856));
res += mul(Get(s2,dx,0), float4x4(-0.180638715624809,0.009374625049531,-0.075972609221935,-0.127627074718475,-0.084363251924515,0.083827637135983,-0.088307447731495,0.076660193502903,0.191451311111450,-0.142567932605743,0.013964630663395,-0.058667462319136,-0.087427854537964,-0.066389493644238,0.018346089869738,-0.087899759411812));
res += mul(Get(s2,dx,dy), float4x4(-0.025989970192313,-0.132348522543907,-0.070984877645969,0.159801542758942,0.073150828480721,0.112875558435917,0.001042765914463,-0.175881102681160,-0.060608584433794,-0.096985004842281,0.039071582257748,0.136397927999496,-0.146303996443748,-0.134764224290848,0.005687642376870,-0.048519391566515));
res += mul(Get(s3,-dx,-dy), float4x4(-0.001479198574089,-0.054256450384855,0.061173364520073,-0.029554413631558,0.099016413092613,-0.115299336612225,-0.108205422759056,-0.003645490156487,-0.064210206270218,0.068839378654957,-0.053797159343958,0.001591810141690,-0.038960173726082,-0.059776723384857,-0.069777466356754,0.018133400008082));
res += mul(Get(s3,-dx,0), float4x4(0.044920615851879,-0.056957423686981,0.120976045727730,-0.062848396599293,0.069370962679386,-0.519564509391785,0.157632172107697,0.057012699544430,-0.055128183215857,0.139410212635994,0.042716387659311,-0.040299419313669,0.087060600519180,-0.063351877033710,0.074711628258228,0.084714949131012));
res += mul(Get(s3,-dx,dy), float4x4(0.065051905810833,0.044829152524471,-0.004940865095705,0.153788536787033,-0.107854820787907,-0.245125487446785,-0.056343555450439,0.032952941954136,0.012559026479721,-0.076371960341930,-0.028141807764769,0.092299871146679,-0.207349911332130,-0.167952433228493,-0.112402744591236,0.097981609404087));
res += mul(Get(s3,0,-dy), float4x4(0.032945428043604,0.247252970933914,0.059152703732252,-0.071302764117718,-0.218907639384270,0.056493788957596,-0.106265895068645,-0.224488019943237,-0.059401188045740,0.010831606574357,0.083703517913818,0.217928737401962,0.038247440010309,0.025134500116110,0.019739618524909,-0.006633058656007));
res += mul(Get(s3,0,0), float4x4(-0.212829813361168,-0.014879249967635,-0.223226681351662,-0.000024228525945,-0.068494871258736,0.028624881058931,-0.638708055019379,0.228622347116470,0.102352879941463,-0.268714398145676,0.052843943238258,0.072357691824436,0.306221514940262,-0.044756017625332,-0.199076354503632,-0.163668692111969));
res += mul(Get(s3,0,dy), float4x4(-0.081060148775578,-0.089627951383591,0.262668401002884,0.298161685466766,-0.105839699506760,-0.055324811488390,0.135383054614067,-0.067122630774975,0.082762502133846,-0.148829191923141,-0.096837542951107,0.028495024889708,-0.075907073915005,-0.017150571569800,-0.038433503359556,0.101236522197723));
res += mul(Get(s3,dx,-dy), float4x4(0.090765841305256,-0.053068064153194,-0.034897930920124,-0.158409759402275,0.041377317160368,0.005400363355875,0.023608636111021,-0.130084276199341,-0.079265795648098,-0.010578704066575,-0.090315394103527,-0.137346133589745,-0.170234248042107,0.072415120899677,-0.060744646936655,0.317903250455856));
res += mul(Get(s3,dx,0), float4x4(-0.286704987287521,0.048508338630199,0.025517001748085,-0.268574148416519,0.022281818091869,0.035260025411844,-0.050531558692455,0.019813342019916,-0.150995716452599,0.011919732205570,-0.105872839689255,-0.047820083796978,0.028158176690340,-0.098152153193951,0.003793902695179,-0.053264375776052));
res += mul(Get(s3,dx,dy), float4x4(-0.064824901521206,0.115693472325802,-0.125973656773567,0.284807384014130,-0.063806958496571,0.013536973856390,-0.032182279974222,-0.054899621754885,0.083333954215050,-0.001685954513960,-0.035685535520315,-0.018049260601401,-0.099756456911564,-0.025001792237163,-0.046320378780365,-0.066576264798641));
res += mul(Get(s4,-dx,-dy), float4x4(0.081631556153297,0.040952600538731,-0.021855073049664,0.175682663917542,0.019369352608919,0.173710912466049,0.001973500242457,0.023130083456635,0.045453254133463,-0.022108735516667,-0.010502859950066,-0.020838031545281,0.117202699184418,0.181932926177979,0.076778307557106,0.140698134899139));
res += mul(Get(s4,-dx,0), float4x4(-0.166565164923668,-0.094030655920506,0.023925950750709,-0.048474133014679,-0.093784481287003,0.281226605176926,-0.044018823653460,0.038112435489893,-0.182088240981102,-0.024643896147609,0.026729390025139,-0.169052883982658,0.213838905096054,-0.040000062435865,-0.101027287542820,0.052409134805202));
res += mul(Get(s4,-dx,dy), float4x4(-0.172636374831200,-0.244088500738144,-0.082021147012711,-0.083556458353996,0.099106766283512,0.298698425292969,-0.019064350053668,-0.020342964679003,-0.052108246833086,-0.119834952056408,-0.020022429525852,0.018040468916297,0.049904070794582,0.075652338564396,-0.041640467941761,0.025332393124700));
res += mul(Get(s4,0,-dy), float4x4(-0.010834547691047,0.085664607584476,-0.003392682410777,0.243180423974991,0.014677393250167,-0.091437943279743,-0.031752035021782,-0.245279163122177,-0.412202507257462,0.045331116765738,0.084775581955910,0.165340140461922,0.071552924811840,0.004711624700576,0.046765130013227,0.135504141449928));
res += mul(Get(s4,0,0), float4x4(-0.098442897200584,0.048111163079739,0.183946564793587,-0.045671872794628,-0.171429336071014,0.034028645604849,-0.069178238511086,-0.020791919901967,-0.326345354318619,-0.188491463661194,0.302255481481552,-0.254977107048035,0.252996355295181,0.073440462350845,0.033378399908543,0.130245193839073));
res += mul(Get(s4,0,dy), float4x4(0.031740728765726,-0.020955586805940,-0.073583133518696,-0.029474779963493,-0.007991107180715,0.027522830292583,0.076409265398979,-0.058229099959135,0.007655106484890,-0.005411169491708,0.070161536335945,0.077152729034424,-0.122614204883575,0.072469562292099,-0.129780665040016,-0.064857348799706));
res += mul(Get(s4,dx,-dy), float4x4(0.104010231792927,0.032898813486099,0.031767681241035,0.072061784565449,-0.135804399847984,-0.061326827853918,0.010776136070490,-0.107801578938961,-0.059211567044258,-0.004076772369444,0.022479394450784,-0.034855380654335,0.184882521629333,0.068143032491207,-0.112416654825211,0.146116524934769));
res += mul(Get(s4,dx,0), float4x4(-0.068682253360748,0.056879509240389,-0.022619394585490,0.021077791228890,-0.076636582612991,0.011342165060341,-0.105649352073669,-0.034636493772268,-0.071699373424053,0.110451944172382,-0.147518172860146,-0.003244958119467,0.111491441726685,-0.009979367256165,-0.040553584694862,0.055901970714331));
res += mul(Get(s4,dx,dy), float4x4(0.040830325335264,0.056357704102993,-0.006634961348027,-0.030985862016678,-0.095053106546402,-0.098880022764206,0.060182802379131,-0.042064540088177,-0.069721154868603,0.023645900189877,0.016809586435556,0.058390069752932,0.118036486208439,-0.029359109699726,0.030264403671026,-0.024688087403774));
res += mul(Get(s5,-dx,-dy), float4x4(0.113075055181980,-0.005755684338510,0.017354108393192,0.111272282898426,0.108132191002369,-0.009864164516330,0.207826554775238,-0.273894608020782,-0.000226490868954,0.092115610837936,-0.011947032064199,0.074675381183624,-0.079249396920204,0.046762261539698,-0.022883836179972,0.029946027323604));
res += mul(Get(s5,-dx,0), float4x4(0.053765002638102,-0.072495326399803,-0.096045091748238,0.054538138210773,-0.185313507914543,0.264838039875031,-0.318260073661804,-0.073020480573177,0.178633570671082,0.111257582902908,0.033109903335571,-0.037318505346775,-0.026593172922730,-0.328728675842285,0.009971581399441,0.021171873435378));
res += mul(Get(s5,-dx,dy), float4x4(0.054358828812838,-0.086074039340019,-0.056293834000826,-0.011584484949708,-0.163635104894638,0.062947668135166,-0.004836288280785,0.183420389890671,0.114976353943348,0.155402347445488,0.082675538957119,0.159452006220818,0.167619302868843,-0.239574000239372,0.168676599860191,0.163006961345673));
res += mul(Get(s5,0,-dy), float4x4(0.039342530071735,-0.065293647348881,-0.052556257694960,-0.006484136916697,0.056359749287367,0.003897810820490,-0.116182990372181,-0.147322475910187,-0.176647782325745,0.025802256539464,-0.122563451528549,0.123951748013496,0.036646213382483,0.024486189708114,0.041542578488588,0.033521853387356));
res += mul(Get(s5,0,0), float4x4(0.089756436645985,0.127142801880836,0.293039560317993,-0.234972193837166,-0.235335186123848,-0.048502594232559,0.253170788288116,-0.014983482658863,0.111239865422249,-0.056569349020720,-0.090044774115086,-0.085559636354446,-0.060402579605579,-0.089451722800732,-0.023623175919056,0.142200335860252));
res += mul(Get(s5,0,dy), float4x4(-0.018176469951868,0.094831563532352,-0.051561571657658,-0.022386884316802,0.135887771844864,0.158860653638840,0.033766843378544,0.122252114117146,0.032509800046682,0.082301609218121,0.057581663131714,-0.065217770636082,0.090630501508713,-0.128498271107674,-0.269780665636063,0.153661996126175));
res += mul(Get(s5,dx,-dy), float4x4(-0.017660269513726,-0.003816293319687,-0.049276929348707,-0.058662973344326,0.109570555388927,0.072837747633457,0.133369237184525,-0.124986022710800,-0.115453384816647,-0.062067098915577,0.029862742871046,0.004626031033695,0.086407542228699,-0.002981480443850,-0.083484269678593,0.036731667816639));
res += mul(Get(s5,dx,0), float4x4(0.143659681081772,-0.047671902924776,-0.006434318143874,-0.017510190606117,-0.129030942916870,0.083258591592312,0.110407799482346,0.010016542859375,-0.115744486451149,-0.051758125424385,-0.113616444170475,0.008659255690873,-0.210307940840721,-0.008020722307265,-0.016340872272849,0.092402398586273));
res += mul(Get(s5,dx,dy), float4x4(-0.011306801810861,0.025490036234260,0.123861141502857,0.008438743650913,0.106894567608833,0.056427445262671,0.053542166948318,0.114124968647957,0.083170309662819,-0.059967946261168,-0.141204953193665,0.023374294862151,0.137802690267563,-0.069373331964016,0.038321260362864,0.002269879449159));
res = max(float4(0, 0, 0, 0), res) + float4(-0.034318465739489,-0.007167000789195,0.003499357262626,0.010705467313528) * min(float4(0, 0, 0, 0), res);
return res;
}
