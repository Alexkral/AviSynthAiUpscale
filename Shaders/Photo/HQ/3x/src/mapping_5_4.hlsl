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
float4 res = float4(-0.095073543488979,0.027905641123652,-0.028948357328773,0.025761673226953);
res += mul(Get(s0,-dx,-dy), float4x4(0.235738664865494,0.012343907728791,0.076468579471111,-0.110851898789406,0.133548572659492,-0.063052579760551,0.006418817676604,0.029786307364702,-0.087073951959610,0.061214435845613,0.054772213101387,0.011943480931222,0.022074308246374,0.018797976896167,0.064476966857910,0.104075610637665));
res += mul(Get(s0,-dx,0), float4x4(0.077761299908161,-0.244946181774139,-0.101063929498196,-0.002290201839060,0.005975543055683,0.048692852258682,-0.019946439191699,0.023226549848914,-0.291738569736481,0.028140209615231,-0.173073470592499,0.153451785445213,-0.014212084934115,0.110412843525410,-0.226611346006393,-0.144108623266220));
res += mul(Get(s0,-dx,dy), float4x4(-0.030348533764482,-0.013312854804099,0.001565001206473,0.007734793238342,-0.085370242595673,0.008631418459117,-0.141531407833099,-0.280100256204605,-0.164436414837837,0.097328707575798,0.152721062302589,-0.019385045394301,0.024498892948031,0.042539913207293,-0.062324974685907,-0.137031286954880));
res += mul(Get(s0,0,-dy), float4x4(0.031069586053491,0.115107908844948,-0.000380035344278,0.111587688326836,0.040860965847969,0.051850482821465,-0.134182795882225,-0.116999007761478,0.122055232524872,0.078389532864094,0.144637793302536,-0.109731853008270,-0.039681117981672,0.019850037992001,0.061541136354208,0.015063730068505));
res += mul(Get(s0,0,0), float4x4(0.194609180092812,0.359975457191467,-0.032183606177568,0.054405890405178,0.027541216462851,-0.043409146368504,-0.009207775816321,0.231884360313416,0.063417486846447,0.064299277961254,-0.066149845719337,0.005137494299561,-0.137925788760185,0.073865719139576,-0.034209065139294,-0.165965989232063));
res += mul(Get(s0,0,dy), float4x4(-0.000218739776756,0.068604782223701,0.010922468267381,-0.020566144958138,-0.217451676726341,-0.070451147854328,-0.127449154853821,-0.002549564931542,-0.166732951998711,0.041372802108526,-0.022380756214261,0.305365175008774,0.003854715265334,-0.020474450662732,-0.253393530845642,0.045614726841450));
res += mul(Get(s0,dx,-dy), float4x4(-0.032659213989973,-0.023186119273305,0.129603534936905,0.071986839175224,0.048664022237062,0.057876143604517,0.161260738968849,-0.204182401299477,0.241144970059395,0.092893071472645,0.058315861970186,0.058839969336987,0.146120741963387,0.006931856274605,0.029562445357442,-0.051464471966028));
res += mul(Get(s0,dx,0), float4x4(-0.121250085532665,-0.049423884600401,-0.015794811770320,-0.169274345040321,0.053851675242186,-0.138835117220879,0.288618028163910,0.193876117467880,0.008518717251718,-0.013269825838506,-0.124815165996552,-0.400366216897964,0.108731165528297,-0.186272293329239,-0.102092377841473,0.178637623786926));
res += mul(Get(s0,dx,dy), float4x4(-0.020239990204573,-0.018361667171121,0.074714429676533,-0.014244871214032,-0.040552496910095,-0.201272740960121,-0.089756079018116,-0.030639288946986,0.045221637934446,-0.033248394727707,-0.024897521361709,-0.235050603747368,-0.070020899176598,0.056254096329212,-0.004460935480893,-0.072470538318157));
res += mul(Get(s1,-dx,-dy), float4x4(-0.067555814981461,-0.060814596712589,0.008723939768970,-0.034693770110607,0.031078068539500,0.007260368671268,-0.189756467938423,0.049885198473930,0.200310513377190,-0.075450338423252,-0.009392211213708,-0.040272209793329,0.107485771179199,-0.073065757751465,-0.179947435855865,-0.051003105938435));
res += mul(Get(s1,-dx,0), float4x4(0.008344640024006,-0.071576043963432,-0.083323463797569,0.011406666599214,0.057699244469404,-0.019645461812615,0.154561087489128,-0.196529000997543,0.168383225798607,0.035048827528954,0.006949169095606,-0.061696138232946,0.041671615093946,-0.125813677906990,-0.149043649435043,0.098132111132145));
res += mul(Get(s1,-dx,dy), float4x4(-0.154007792472839,-0.030114993453026,0.049276139587164,-0.034736014902592,-0.064135730266571,0.038774117827415,-0.276514858007431,-0.126644089818001,0.184669926762581,-0.027479670941830,0.002892001997679,-0.127483800053596,0.028931319713593,0.088209770619869,0.009058406576514,0.247663751244545));
res += mul(Get(s1,0,-dy), float4x4(0.006388101726770,-0.072366133332253,0.120859302580357,-0.050889037549496,-0.040361743420362,0.059479746967554,0.065260104835033,-0.088167823851109,0.115473188459873,0.140695944428444,0.130619034171104,-0.148620262742043,-0.019976226612926,-0.088155373930931,0.027595715597272,0.032224539667368));
res += mul(Get(s1,0,0), float4x4(0.062610223889351,-0.162686988711357,0.089473381638527,0.005189587362111,0.235197082161903,-0.078376047313213,0.219575643539429,0.312290042638779,-0.121461004018784,-0.333804458379745,0.060600396245718,0.141429930925369,-0.105159901082516,0.055784549564123,0.034840084612370,-0.239297136664391));
res += mul(Get(s1,0,dy), float4x4(-0.058190520852804,0.006991351488978,-0.201731562614441,0.065513879060745,-0.073157355189323,0.093693315982819,0.023869698867202,-0.002758510177955,0.129269823431969,-0.327487885951996,-0.010290487669408,0.111301973462105,0.043739214539528,-0.120648033916950,-0.052271883934736,0.149940729141235));
res += mul(Get(s1,dx,-dy), float4x4(0.010602705180645,-0.035873953253031,0.080178044736385,-0.044449206441641,0.083353541791439,0.035220090299845,-0.145665585994720,-0.008873500861228,0.009358301758766,0.003341704141349,-0.093392871320248,0.049241110682487,-0.017486972734332,-0.010648748837411,0.036191191524267,0.027842080220580));
res += mul(Get(s1,dx,0), float4x4(-0.078187093138695,-0.097747489809990,0.184451028704643,-0.062812574207783,-0.092754974961281,-0.113810524344444,0.174376726150513,0.143719941377640,-0.041547484695911,-0.181703343987465,-0.048817511647940,-0.121891073882580,0.007161692716181,-0.084741525352001,-0.075709342956543,-0.107166327536106));
res += mul(Get(s1,dx,dy), float4x4(-0.094863094389439,-0.011069078929722,0.116551950573921,-0.040912445634604,-0.013254929333925,0.019883245229721,-0.127851769328117,-0.072039224207401,-0.088078990578651,0.058610424399376,0.037477709352970,-0.022295184433460,-0.141662999987602,-0.048545077443123,0.043233424425125,-0.407694220542908));
res += mul(Get(s2,-dx,-dy), float4x4(-0.228471353650093,-0.027820670977235,0.026149125769734,0.053179167211056,-0.094217434525490,-0.076865270733833,0.020419038832188,0.020906439051032,-0.202078253030777,0.035373363643885,0.084834150969982,-0.102602057158947,-0.013471806421876,0.029979916289449,-0.110426127910614,0.103359907865524));
res += mul(Get(s2,-dx,0), float4x4(0.028769841417670,-0.026566747575998,0.224786624312401,-0.076856262981892,0.018483581021428,-0.032234262675047,0.211126744747162,-0.035888407379389,0.096571318805218,-0.075246676802635,0.008093801327050,-0.194113522768021,-0.110752969980240,-0.010597107000649,-0.008135147392750,0.129303872585297));
res += mul(Get(s2,-dx,dy), float4x4(-0.055089477449656,0.031904000788927,-0.043435193598270,0.030888214707375,0.019920701161027,0.076500363647938,-0.085802495479584,0.063820891082287,0.090115763247013,-0.018846442922950,0.067683555185795,0.031799353659153,-0.154382929205894,0.006810240913182,-0.119615904986858,-0.121057309210300));
res += mul(Get(s2,0,-dy), float4x4(-0.198853313922882,-0.076178021728992,-0.072192221879959,0.148475646972656,-0.083830013871193,-0.013811765238643,-0.061888787895441,-0.034399401396513,-0.211859121918678,-0.000730660976842,0.137136861681938,0.001920310314745,0.242712557315826,0.002217192435637,0.079628951847553,-0.072629153728485));
res += mul(Get(s2,0,0), float4x4(-0.106306850910187,0.047268692404032,-0.012176637537777,0.328115999698639,0.257548928260803,-0.076882049441338,-0.041771136224270,0.195007845759392,-0.202884465456009,-0.010818459093571,-0.165093839168549,0.166280403733253,0.116323247551918,-0.080281794071198,-0.104161657392979,0.071841463446617));
res += mul(Get(s2,0,dy), float4x4(-0.059039216488600,-0.042151272296906,-0.010848356410861,-0.095857240259647,0.003195845521986,-0.031029263511300,-0.122021175920963,-0.159683763980865,-0.053349003195763,-0.061793707311153,-0.072711370885372,0.146631896495819,-0.124626465141773,-0.050117578357458,-0.237706631422043,-0.158358842134476));
res += mul(Get(s2,dx,-dy), float4x4(-0.028801491484046,0.040153451263905,0.021627277135849,-0.060262389481068,-0.018329782411456,0.041682872921228,-0.108380921185017,-0.067997619509697,0.027060067281127,0.046134162694216,-0.057612784206867,0.130426600575447,-0.101587802171707,-0.041746586561203,-0.119716838002205,0.019478050991893));
res += mul(Get(s2,dx,0), float4x4(0.049247514456511,0.044520441442728,0.148891776800156,-0.064261950552464,-0.051610175520182,-0.000153750341269,0.111608736217022,0.006985518150032,-0.050851907581091,-0.018391804769635,-0.028577245771885,0.054075434803963,0.022223133593798,-0.002800541231409,0.132811218500137,0.065588727593422));
res += mul(Get(s2,dx,dy), float4x4(0.001183056039736,-0.002025295980275,-0.133152857422829,-0.031728271394968,0.006129063665867,-0.003153722267598,-0.111900180578232,-0.053755000233650,-0.083155654370785,0.054324768483639,0.092048034071922,-0.066962987184525,-0.074074417352676,0.074613809585571,0.060787327587605,-0.057249579578638));
res += mul(Get(s3,-dx,-dy), float4x4(0.225104406476021,-0.142734169960022,0.435480296611786,-0.056862790137529,-0.136593922972679,-0.002486635465175,-0.119421139359474,0.124772779643536,0.105903230607510,0.001531470101327,-0.079836010932922,0.096658200025558,-0.133138343691826,0.006050748750567,0.097569480538368,0.111337095499039));
res += mul(Get(s3,-dx,0), float4x4(0.010570555925369,0.013968974351883,0.014720425941050,-0.146947711706161,0.063015706837177,-0.020599326118827,0.102637089788914,-0.040549974888563,-0.072701640427113,-0.056567408144474,0.060904409736395,-0.132262974977493,-0.299749583005905,0.226084694266319,0.049821708351374,0.199432969093323));
res += mul(Get(s3,-dx,dy), float4x4(0.255402237176895,0.030825654044747,0.206798657774925,0.072290435433388,-0.092193037271500,0.065470218658447,-0.115968771278858,0.028099901974201,-0.041844207793474,-0.010954968631268,-0.136557057499886,-0.113659515976906,-0.028929490596056,-0.019611410796642,0.017846943810582,-0.098475575447083));
res += mul(Get(s3,0,-dy), float4x4(0.052045762538910,-0.163892015814781,0.053183533251286,0.036438707262278,-0.202238813042641,0.086481057107449,-0.047123175114393,-0.173582658171654,-0.107315652072430,-0.021862978115678,0.112335942685604,0.168273791670799,0.235013708472252,0.019451167434454,-0.097125232219696,0.102304972708225));
res += mul(Get(s3,0,0), float4x4(-0.009615477174520,0.094504624605179,-0.042187832295895,0.054004386067390,0.075640730559826,0.549496829509735,0.174832612276077,-0.067585438489914,-0.112338677048683,-0.056423205882311,-0.078501261770725,0.266404181718826,-0.170930847525597,-0.045963369309902,0.002339479746297,0.095863290131092));
res += mul(Get(s3,0,dy), float4x4(-0.193123534321785,-0.026367528364062,0.069646537303925,0.111239053308964,-0.066536694765091,-0.173152267932892,-0.145512700080872,-0.047730870544910,-0.061915047466755,-0.187128156423569,-0.038381531834602,0.146140873432159,0.069754712283611,-0.052484095096588,-0.139473289251328,0.011558088473976));
res += mul(Get(s3,dx,-dy), float4x4(0.050968844443560,0.011559434235096,-0.021593779325485,-0.198549509048462,0.193362325429916,-0.005970856174827,0.060466662049294,0.006549024488777,0.000830348057207,-0.028813291341066,0.179549917578697,-0.136059522628784,-0.018040182068944,0.021580656990409,-0.012740066275001,-0.305316716432571));
res += mul(Get(s3,dx,0), float4x4(0.048555593937635,0.046917878091335,-0.018040029332042,-0.114010885357857,-0.007252910174429,-0.372917950153351,0.017310433089733,0.234725385904312,0.007362775038928,-0.000374473776901,0.015354339964688,0.041062604635954,0.060387901961803,0.060779169201851,0.136124998331070,-0.128389254212379));
res += mul(Get(s3,dx,dy), float4x4(-0.072273284196854,0.062981948256493,0.283955246210098,-0.143465384840965,0.124436870217323,-0.126921370625496,-0.102520935237408,-0.077955096960068,0.051622774451971,0.031159579753876,-0.022699780762196,-0.010699153877795,0.022790003567934,-0.103229075670242,0.019685484468937,0.185057103633881));
res += mul(Get(s4,-dx,-dy), float4x4(0.036250498145819,-0.098484195768833,-0.075636677443981,0.080414921045303,0.219552382826805,-0.211115822196007,0.307166874408722,0.009158699773252,0.103646211326122,-0.003319620154798,0.049899902194738,-0.149510592222214,0.063924893736839,-0.001399704837240,-0.003555932315066,-0.252825409173965));
res += mul(Get(s4,-dx,0), float4x4(0.176995038986206,-0.107349023222923,0.002083680359647,-0.077131576836109,0.174001812934875,-0.169613525271416,-0.035056743770838,-0.027086053043604,0.341700941324234,0.055662415921688,-0.010108071379364,-0.057480379939079,0.253634124994278,-0.723264753818512,-0.147510409355164,-0.065171360969543));
res += mul(Get(s4,-dx,dy), float4x4(-0.038513205945492,0.036878652870655,-0.125501975417137,-0.108595445752144,0.048652071505785,-0.019653959199786,-0.098468929529190,-0.018345903605223,-0.020721217617393,-0.010120926424861,-0.155532374978065,0.010366175323725,-0.142067939043045,0.096053056418896,0.025986930355430,0.090530902147293));
res += mul(Get(s4,0,-dy), float4x4(-0.117206774652004,0.018176624551415,-0.154073819518089,0.103408560156822,-0.149815097451210,-0.341677397489548,-0.062239021062851,0.288380175828934,-0.015870787203312,-0.000659009441733,-0.007582318969071,0.120284035801888,-0.119537785649300,0.064678661525249,0.204143226146698,0.086357980966568));
res += mul(Get(s4,0,0), float4x4(-0.146274492144585,-0.106149680912495,-0.005425990559161,-0.013943511061370,-0.076773092150688,0.036975346505642,-0.148177221417427,-0.195948392152786,-0.300422370433807,0.000433491106378,-0.108756117522717,-0.099784158170223,0.240400418639183,0.537451386451721,-0.017700528725982,-0.214734911918640));
res += mul(Get(s4,0,dy), float4x4(0.049240544438362,0.070514187216759,0.098183870315552,-0.078060574829578,0.196437835693359,-0.015484493225813,-0.097692705690861,0.062333591282368,-0.042427092790604,-0.080553926527500,0.050592347979546,-0.037286166101694,-0.022501356899738,-0.169388249516487,0.160073533654213,-0.211833953857422));
res += mul(Get(s4,dx,-dy), float4x4(0.054774254560471,0.019999803975224,-0.017527734860778,0.162159994244576,-0.073247916996479,-0.011926293373108,0.397028595209122,-0.164129570126534,0.110689163208008,0.015779765322804,-0.035611271858215,0.041977941989899,-0.223584368824959,-0.053356807678938,-0.011217776685953,0.292559236288071));
res += mul(Get(s4,dx,0), float4x4(0.083597421646118,-0.008247232995927,-0.005845835432410,0.044484857469797,0.030804799869657,-0.029752194881439,0.011571131646633,0.152959182858467,0.165860548615456,0.006162283010781,-0.241031929850578,0.052770119160414,-0.021582148969173,-0.165895596146584,-0.427972108125687,0.107601456344128));
res += mul(Get(s4,dx,dy), float4x4(0.071889691054821,-0.008642897009850,-0.155608251690865,0.166937902569771,0.068558648228645,0.024040034040809,-0.054165136069059,-0.141864106059074,-0.062207560986280,-0.033195085823536,-0.061089925467968,-0.084131971001625,-0.027421480044723,-0.030331529676914,0.046842608600855,-0.205376774072647));
res += mul(Get(s5,-dx,-dy), float4x4(0.069271944463253,-0.010263524018228,-0.140764221549034,-0.009926795959473,0.033884327858686,0.062436521053314,0.137102022767067,0.004176917020231,-0.015555448830128,0.091897636651993,-0.177859395742416,-0.029064873233438,-0.169412016868591,-0.001086177187972,-0.086877584457397,0.044520251452923));
res += mul(Get(s5,-dx,0), float4x4(0.208379313349724,-0.116401895880699,-0.155184775590897,0.053718846291304,0.196227937936783,-0.208278611302376,0.143816664814949,0.091636642813683,-0.059478398412466,0.101750865578651,0.081113129854202,-0.135575920343399,-0.245580315589905,-0.032413929700851,-0.103654585778713,-0.161229133605957));
res += mul(Get(s5,-dx,dy), float4x4(0.039358984678984,0.009092322550714,0.080985240638256,0.044062610715628,0.012579895555973,0.107177399098873,-0.122862093150616,0.004662869498134,-0.014163782820106,0.024056082591414,0.010297099128366,0.052733514457941,-0.140388399362564,-0.009104154072702,-0.036384683102369,-0.073740988969803));
res += mul(Get(s5,0,-dy), float4x4(-0.165050685405731,0.034582350403070,-0.131506353616714,-0.122789919376373,-0.088243171572685,-0.118392437696457,-0.021014710888267,0.097700439393520,-0.131188064813614,0.129371851682663,0.041277479380369,-0.010865126736462,0.197347536683083,0.006871507968754,0.192323908209801,-0.103866010904312));
res += mul(Get(s5,0,0), float4x4(0.139218658208847,0.034677013754845,-0.112919881939888,-0.251308798789978,-0.304982125759125,0.196033418178558,-0.031271576881409,-0.072480805218220,-0.101852871477604,0.349530458450317,0.104180678725243,-0.161784335970879,0.119482323527336,-0.056035384535789,0.116113603115082,0.144690170884132));
res += mul(Get(s5,0,dy), float4x4(0.044605191797018,-0.008591445162892,-0.007816455326974,0.109051696956158,-0.043739181011915,-0.074030272662640,0.157596319913864,0.104017846286297,0.108485370874405,-0.013175108470023,-0.025801127776504,0.145507499575615,0.027972256764770,-0.050199475139380,-0.091838769614697,-0.187598168849945));
res += mul(Get(s5,dx,-dy), float4x4(0.060872830450535,0.067200481891632,-0.090173207223415,-0.099171563982964,-0.053082413971424,-0.084505662322044,-0.113252654671669,-0.200809448957443,0.058818321675062,0.138818338513374,-0.062891632318497,0.008952987380326,-0.041128352284431,0.014399154111743,-0.090060383081436,0.210465803742409));
res += mul(Get(s5,dx,0), float4x4(-0.022682130336761,0.083536088466644,-0.048949975520372,-0.185983493924141,-0.046311963349581,-0.093359768390656,-0.005953064188361,-0.015117358416319,0.127934485673904,0.144235283136368,-0.177012741565704,0.074239633977413,-0.080044180154800,0.014028239063919,0.169550597667694,-0.390878081321716));
res += mul(Get(s5,dx,dy), float4x4(0.039067622274160,-0.026129240170121,0.104327514767647,0.075872682034969,-0.074690915644169,-0.140845999121666,0.037884738296270,0.223371207714081,0.010751475580037,0.029723262414336,0.052377656102180,-0.088709652423859,-0.092422239482403,-0.064831212162971,-0.029644163325429,-0.242858067154884));
res = max(float4(0, 0, 0, 0), res) + float4(0.390302300453186,0.931470274925232,-0.037712279707193,-0.372560262680054) * min(float4(0, 0, 0, 0), res);
return res;
}