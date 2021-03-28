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
float4 res = float4(-0.093013033270836,-0.021329259499907,-0.122565150260925,0.121764495968819);
res += mul(Get(s0,-dx,-dy), float4x4(-0.020545110106468,0.007515018340200,-0.000000325166610,-0.089165553450584,0.010093532502651,-0.053668953478336,0.000002921220585,-0.096023052930832,0.072861909866333,0.039450656622648,-0.000006613283404,-0.040074273943901,0.024164546281099,-0.011656546033919,-0.000002974467634,-0.096739642322063));
res += mul(Get(s0,-dx,0), float4x4(0.006837856955826,-0.020586645230651,0.000001813645895,0.171121165156364,-0.035122737288475,0.059700142592192,0.000008784321835,0.014784732833505,0.051303684711456,0.021441534161568,-0.000006855644642,-0.041180286556482,0.073454305529594,-0.015839980915189,-0.000002487201982,0.022384412586689));
res += mul(Get(s0,-dx,dy), float4x4(-0.060085542500019,-0.016802014783025,0.000001448632020,-0.163685932755470,-0.065666034817696,0.038405396044254,-0.000003147509005,-0.038342747837305,0.099146477878094,0.094275258481503,-0.000015326573703,-0.098373457789421,0.069896340370178,-0.037780568003654,-0.000004219674338,-0.041232611984015));
res += mul(Get(s0,0,-dy), float4x4(0.006677365396172,0.014614543877542,-0.000002036879323,0.066494129598141,0.110832251608372,-0.035412818193436,-0.000015487628843,-0.052840068936348,-0.009651065804064,0.034034304320812,0.000003743400384,-0.017785953357816,0.095276713371277,-0.009022031910717,-0.000002337520982,0.014816443435848));
res += mul(Get(s0,0,0), float4x4(0.022252993658185,-0.020098358392715,-0.000001536430318,-0.015682816505432,-0.071101896464825,-0.098036333918571,-0.000002026509037,0.013794756494462,0.051242806017399,0.140444889664650,0.000007040631317,-0.142971083521843,0.117639221251011,-0.012954224832356,-0.000001723740979,-0.026371676474810));
res += mul(Get(s0,0,dy), float4x4(-0.044020250439644,-0.005550918169320,-0.000001772654173,0.057190828025341,0.108321659266949,-0.010262934491038,-0.000011083438039,0.056662924587727,-0.131536781787872,0.086270019412041,-0.000000319069585,-0.039185646921396,0.102591931819916,0.005889030173421,-0.000002752839009,0.025161389261484));
res += mul(Get(s0,dx,-dy), float4x4(-0.021484408527613,-0.026775652542710,-0.000002135407158,-0.001279973424971,-0.013621292077005,-0.101300179958344,-0.000019424895072,0.107834272086620,0.111843697726727,-0.034349430352449,0.000010739938261,0.008590814657509,-0.003926254343241,-0.030553236603737,0.000000160780672,0.038086738437414));
res += mul(Get(s0,dx,0), float4x4(-0.007163755130023,-0.023168887943029,-0.000001625086725,0.002552635734901,0.167021363973618,0.003745623398572,-0.000006362055501,0.139174938201904,-0.003265322884545,-0.030854184180498,0.000013829513591,-0.055487692356110,0.059528093785048,-0.007366737816483,0.000000448824721,-0.036228906363249));
res += mul(Get(s0,dx,dy), float4x4(-0.013849643990397,-0.019615095108747,-0.000002752734645,0.032898008823395,0.081351593136787,-0.021467814221978,-0.000017455113266,-0.065776832401752,0.032872609794140,-0.049218416213989,0.000011227562027,0.118223331868649,0.062436781823635,0.007178099825978,0.000000179630533,-0.102614693343639));
res += mul(Get(s1,-dx,-dy), float4x4(-0.045387152582407,-0.072084732353687,-0.000001338776997,-0.084870517253876,0.009249011985958,0.008571647107601,-0.000000999350050,0.028663285076618,-0.002752213971689,-0.083144389092922,-0.000023705979402,0.009135392494500,-0.037273228168488,-0.088120736181736,0.000016585798221,0.047355104237795));
res += mul(Get(s1,-dx,0), float4x4(0.074773348867893,0.040116701275110,-0.000002202648375,-0.043240431696177,-0.009537560865283,0.003333917586133,-0.000001107498747,-0.106332249939442,0.021298903971910,0.047770921140909,-0.000018419837943,0.015664964914322,0.015506897121668,0.009044091217220,0.000018044815079,-0.004555862396955));
res += mul(Get(s1,-dx,dy), float4x4(-0.152520179748535,-0.072059705853462,-0.000000382175756,0.041405651718378,0.002299935556948,0.003818034427240,-0.000001609679316,0.062454845756292,-0.080461971461773,0.011023132130504,-0.000022278911274,-0.039587281644344,0.044614974409342,-0.008594108745456,0.000013651622794,-0.023018974810839));
res += mul(Get(s1,0,-dy), float4x4(0.048000220209360,-0.062077306210995,0.000004282672762,0.035202685743570,0.011384176090360,-0.021837387233973,-0.000001575399210,0.061030901968479,0.029501654207706,-0.011910804547369,0.000015541800167,0.112508192658424,0.040458496659994,0.002500907517970,0.000018755208657,0.086936846375465));
res += mul(Get(s1,0,0), float4x4(-0.208005458116531,-0.143367946147919,0.000007371419997,0.186034500598907,0.004891606513411,0.026107026264071,-0.000002396454192,-0.087638683617115,-0.024611014872789,-0.023420292884111,0.000021941816158,0.193997964262962,-0.095851875841618,-0.040096905082464,0.000019020510081,-0.063212752342224));
res += mul(Get(s1,0,dy), float4x4(0.199044957756996,-0.039168879389763,-0.000001907905698,0.210238441824913,-0.040321338921785,-0.007753240875900,-0.000001065834340,0.024135593324900,0.135242745280266,0.063062891364098,0.000009857641089,0.053080268204212,0.013587039895356,0.038436025381088,0.000012914176295,0.019931387156248));
res += mul(Get(s1,dx,-dy), float4x4(-0.039223741739988,-0.086722284555435,-0.000011469666788,-0.033981658518314,0.001983475405723,0.004395748022944,-0.000000457827042,-0.025011230260134,-0.049697786569595,0.013948212377727,0.000010771699635,-0.085281684994698,-0.022146316245198,0.029581010341644,0.000013628943634,0.015052927657962));
res += mul(Get(s1,dx,0), float4x4(0.041770681738853,-0.000140263407957,-0.000005201120530,-0.014954073354602,-0.045803640037775,-0.026171259582043,-0.000001682063726,0.008462978526950,-0.078741766512394,0.044936660677195,0.000018777389414,-0.287998706102371,0.054424498230219,0.016275029629469,0.000013103621313,-0.139336511492729));
res += mul(Get(s1,dx,dy), float4x4(-0.098242782056332,-0.000480940216221,-0.000015595363948,-0.071509316563606,0.026118448004127,0.018276484683156,-0.000000467556788,0.031438183039427,-0.240443319082260,-0.041839901357889,0.000013226253941,-0.040953688323498,-0.051938988268375,-0.042979046702385,0.000010418224520,0.040295235812664));
res += mul(Get(s2,-dx,-dy), float4x4(-0.037558902055025,-0.039655618369579,0.000015150384570,-0.037537075579166,-0.062695309519768,0.014595904387534,-0.000870959367603,-0.019357573240995,0.035029746592045,0.005446894094348,0.000008754202099,0.055823419243097,-0.006087671034038,0.022139962762594,0.000010475297131,-0.075143374502659));
res += mul(Get(s2,-dx,0), float4x4(-0.007542385254055,0.019676482304931,0.000009707072422,-0.010011925362051,0.018690735101700,0.042197529226542,-0.000889918243047,0.070483572781086,0.013118923641741,0.031281482428312,0.000007410247235,-0.109003134071827,0.000412309163949,-0.004520179703832,0.000008942892237,-0.001222432823852));
res += mul(Get(s2,-dx,dy), float4x4(-0.005177310202271,-0.019954485818744,0.000001691496095,0.051644749939442,-0.089130491018295,0.009884984232485,-0.000719770789146,-0.059329543262720,-0.046377249062061,-0.038598641753197,0.000005693723779,-0.065034128725529,-0.032794699072838,-0.012829914689064,0.000010877970453,-0.036265559494495));
res += mul(Get(s2,0,-dy), float4x4(-0.087845593690872,-0.045288119465113,0.000014871041458,0.041086953133345,-0.011322013102472,0.058425381779671,-0.001083952374756,0.085426568984985,0.084929287433624,-0.000174682150828,0.000002373717734,0.019077366217971,0.030916711315513,0.016280800104141,-0.000001439368589,-0.058561604470015));
res += mul(Get(s2,0,0), float4x4(-0.024461269378662,-0.010353679768741,0.000012005618373,-0.027172394096851,-0.074411429464817,0.031875744462013,-0.000953062379267,0.059087298810482,0.001785050495528,0.001160296844319,0.000002089552481,0.003509277710691,-0.009785206057131,-0.023482551798224,-0.000003696804924,-0.047387804836035));
res += mul(Get(s2,0,dy), float4x4(0.018717788159847,-0.024135166779160,0.000003695426130,-0.077607236802578,0.012930995784700,0.069459386169910,-0.000758632959332,0.152361258864403,-0.059020254760981,-0.045677628368139,0.000003904620371,0.116348654031754,-0.034032661467791,-0.030083430930972,0.000001113481630,0.047380682080984));
res += mul(Get(s2,dx,-dy), float4x4(-0.033823207020760,-0.033388290554285,0.000010334606486,0.001604594057426,-0.102956511080265,-0.035731874406338,-0.001023515709676,-0.106900803744793,-0.011540221050382,-0.003903042757884,0.000000461152723,-0.054094221442938,0.015963852405548,-0.014206605032086,-0.000008586272088,0.051637019962072));
res += mul(Get(s2,dx,0), float4x4(-0.016681676730514,-0.018157871440053,0.000009632692127,-0.090568147599697,-0.040364123880863,-0.070990011096001,-0.000816712796222,-0.143247574567795,0.030930405482650,0.005648912396282,-0.000000417594549,0.093610242009163,-0.006541362032294,-0.035467173904181,-0.000010871767699,0.134700417518616));
res += mul(Get(s2,dx,dy), float4x4(-0.025730254128575,-0.059324610978365,0.000002125536412,0.108369015157223,-0.164902776479721,-0.041376359760761,-0.000646836881060,-0.040656607598066,0.018326746299863,0.016387799754739,0.000000667811832,-0.139295414090157,0.078016333281994,0.014455905184150,-0.000006633674730,-0.022555544972420));
res += mul(Get(s3,-dx,-dy), float4x4(-0.017150752246380,-0.000486559118144,0.000032844942325,-0.058281250298023,-0.068679019808769,-0.042943283915520,0.000039516515244,-0.045341730117798,-0.018693994730711,0.032262448221445,-0.000001320352112,0.035891886800528,-0.068494513630867,0.009605134837329,-0.000017166528778,-0.107033379375935));
res += mul(Get(s3,-dx,0), float4x4(0.011695695109665,-0.062665954232216,0.000037498495658,0.072284825146198,-0.083270139992237,-0.095627553761005,0.000051409850130,0.157856583595276,0.098510921001434,0.057953592389822,0.000001430914381,-0.113142281770706,0.017505042254925,-0.007013516966254,-0.000012514770788,0.088027998805046));
res += mul(Get(s3,-dx,dy), float4x4(0.023806435987353,-0.020362665876746,0.000048816007620,-0.014553142711520,0.126011833548546,0.051849856972694,0.000025445991923,-0.048812147229910,-0.122408688068390,-0.048043102025986,0.000001997319714,-0.056194636970758,-0.019908066838980,0.027667678892612,-0.000005470054930,-0.037013176828623));
res += mul(Get(s3,0,-dy), float4x4(0.002214866457507,0.014504692517221,0.000024846918677,0.001460721949115,-0.030260667204857,-0.031816866248846,0.000050464008382,-0.013346911408007,0.035996243357658,-0.056607577949762,-0.000009583770407,0.018818646669388,0.003505396889523,0.052701797336340,-0.000009551961739,0.037318598479033));
res += mul(Get(s3,0,0), float4x4(-0.003500463673845,0.000120994758618,0.000027159172532,-0.087882116436958,-0.036691859364510,-0.011352258734405,0.000064817468228,0.100416302680969,0.036510221660137,0.019851928576827,-0.000008767531654,0.027615046128631,0.009818650782108,-0.000061706639826,-0.000009595493793,-0.002299401676282));
res += mul(Get(s3,0,dy), float4x4(-0.069785125553608,0.013566570356488,0.000034240485547,-0.104771122336388,0.258425682783127,0.080945186316967,0.000031593630410,0.008108892478049,-0.030414830893278,0.011900028213859,-0.000008907701158,-0.029490562155843,0.087589167058468,0.062694348394871,-0.000007765235750,0.004523956682533));
res += mul(Get(s3,dx,-dy), float4x4(0.037769556045532,0.083499476313591,0.000024153070626,0.015466386452317,-0.030084041878581,-0.071992412209511,0.000056703327573,-0.021288385614753,0.080329954624176,-0.046678818762302,-0.000015178012291,-0.062058817595243,-0.057027444243431,0.039040345698595,-0.000008149243513,-0.001491437200457));
res += mul(Get(s3,dx,0), float4x4(-0.028623851016164,0.038216318935156,0.000023048649382,-0.012681870721281,-0.135564029216766,-0.056308932602406,0.000077143653471,-0.177648425102234,-0.052306059747934,-0.053759235888720,-0.000016199704987,0.167326405644417,0.024110585451126,-0.008578071370721,-0.000011554119737,-0.002390911569819));
res += mul(Get(s3,dx,dy), float4x4(0.001799164107069,0.027278501540422,0.000027296526241,0.174226075410843,0.053334079682827,-0.056223955005407,0.000046631230362,-0.093166768550873,0.119853928685188,0.023206287994981,-0.000018000995624,0.051948256790638,-0.028399923816323,-0.000012026631339,-0.000009209369637,0.021920880302787));
res += mul(Get(s4,-dx,-dy), float4x4(0.000001046235411,0.006754303816706,0.000008285172953,0.058305930346251,-0.007367360871285,0.009763407520950,0.000014349338016,0.010666497051716,-0.009012294933200,-0.019236041232944,-0.000013731164472,-0.089266143739223,-0.023813322186470,-0.048838578164577,-0.000002037722879,0.006329391617328));
res += mul(Get(s4,-dx,0), float4x4(-0.040408160537481,0.003772984491661,0.000006875256076,-0.157132998108864,-0.014054926112294,0.023452067747712,0.000019446066290,-0.022410308942199,0.058092087507248,0.056966796517372,-0.000015669733330,0.013351595029235,0.051306616514921,0.049577336758375,-0.000006403844054,-0.084199391305447));
res += mul(Get(s4,-dx,dy), float4x4(0.027817016467452,0.006023633293808,0.000002218262352,0.067039608955383,-0.090481966733932,-0.006028101779521,0.000012595591215,-0.032564777880907,-0.081128723919392,-0.061853002756834,-0.000021815756554,0.068458259105682,-0.101478472352028,-0.004726591520011,-0.000003934491815,0.088159419596195));
res += mul(Get(s4,0,-dy), float4x4(-0.000652451883070,-0.029215909540653,0.000005639155006,0.037426706403494,-0.008963955566287,0.001603816985153,0.000020657620553,-0.028736336156726,0.031883616000414,-0.017008341848850,-0.000010047569958,0.067030645906925,0.042570747435093,-0.013149338774383,0.000000960069883,-0.115418061614037));
res += mul(Get(s4,0,0), float4x4(-0.087025053799152,0.001668755547144,0.000007851024748,-0.103960543870926,-0.026439169421792,0.053720217198133,0.000026548766982,-0.054007787257433,-0.013700927607715,-0.021638739854097,-0.000007882709724,0.011068304069340,-0.188153550028801,-0.123059689998627,-0.000002180711590,0.174573287367821));
res += mul(Get(s4,0,dy), float4x4(-0.101669631898403,-0.053228273987770,0.000005412944574,0.029588649049401,-0.125125169754028,-0.002165270736441,0.000022252421331,0.025235520675778,0.078090913593769,0.033381588757038,-0.000013514993043,-0.060124076902866,0.224348857998848,0.029867861419916,-0.000006606011539,0.054060455411673));
res += mul(Get(s4,dx,-dy), float4x4(0.015198584645987,-0.002121569588780,0.000003454197667,0.075788475573063,-0.049432244151831,-0.017905171960592,0.000023239446818,0.019672045484185,-0.047746863216162,-0.058776609599590,-0.000009702345778,-0.012003861367702,0.015769174322486,-0.094995349645615,-0.000009902049896,0.087357349693775));
res += mul(Get(s4,dx,0), float4x4(0.003112985054031,0.028837988153100,0.000003854389888,0.039762660861015,-0.053146686404943,0.021502349525690,0.000028106649552,0.085303358733654,0.063075594604015,-0.026705352589488,-0.000008935418009,-0.059826750308275,0.045241970568895,-0.022271463647485,-0.000009265341760,-0.081990830600262));
res += mul(Get(s4,dx,dy), float4x4(0.021182987838984,0.020677076652646,0.000003116898370,-0.029147369787097,-0.031911112368107,0.000213960825931,0.000027574695196,-0.060654506087303,-0.090030305087566,-0.045507654547691,-0.000012086341485,0.010818593204021,0.018293639644980,-0.011385823599994,-0.000015218386579,-0.100537538528442));
res += mul(Get(s5,-dx,-dy), float4x4(-0.019671881571412,0.027422692626715,-0.000018956205167,0.006318901199847,0.052947249263525,-0.046758901327848,-0.000047826764785,-0.006046732421964,-0.046234924346209,-0.052248604595661,0.002716854214668,-0.088869549334049,-0.017756216228008,0.056088972836733,-0.000007155320418,-0.015633508563042));
res += mul(Get(s5,-dx,0), float4x4(0.018045846372843,0.012349280528724,-0.000020801931896,-0.022506196051836,0.037086062133312,-0.008983081206679,-0.000111527944682,-0.181625351309776,-0.015980327501893,-0.001447092741728,0.002329437993467,-0.135758414864540,-0.044214654713869,-0.048671476542950,-0.000000631583532,0.100822843611240));
res += mul(Get(s5,-dx,dy), float4x4(0.072985693812370,0.044856030493975,-0.000027548734579,0.062581777572632,0.052733030170202,-0.062713488936424,-0.000066057255026,0.121721826493740,-0.209726095199585,-0.013826201669872,0.002002348657697,-0.037208069115877,0.144550636410713,0.091852068901062,-0.000015568772142,-0.057605169713497));
res += mul(Get(s5,0,-dy), float4x4(0.031047001481056,0.064281649887562,-0.000009779249922,0.060564730316401,-0.016372021287680,-0.054166566580534,-0.000029999460821,-0.146735429763794,-0.029729880392551,-0.103517703711987,0.003001149743795,-0.052208457142115,0.098139896988869,0.045105304569006,-0.000032287905924,-0.022428298369050));
res += mul(Get(s5,0,0), float4x4(-0.001937901019119,0.108411893248558,-0.000012232742847,-0.121227800846100,-0.169750377535820,-0.038989752531052,-0.000123960053315,-0.197748854756355,-0.073906674981117,-0.054952383041382,0.002291628625244,-0.142429366707802,-0.126136019825935,-0.045199699699879,-0.000018638816982,-0.241159871220589));
res += mul(Get(s5,0,dy), float4x4(-0.042227163910866,0.117272682487965,-0.000019523256924,-0.086565658450127,-0.196299701929092,-0.078629665076733,-0.000068672437919,-0.121101170778275,-0.318355828523636,-0.129239201545715,0.002051557181403,-0.009954942390323,0.052308123558760,0.112165674567223,-0.000033520143916,-0.069965995848179));
res += mul(Get(s5,dx,-dy), float4x4(-0.058704111725092,-0.005172391887754,0.000003151596957,-0.085675060749054,-0.010206919163465,0.108135335147381,-0.000041990853788,0.100798465311527,0.006764455698431,-0.022476585581899,0.002662105951458,-0.004011418204755,-0.015950338914990,-0.002158141229302,-0.000023586646421,0.117705769836903));
res += mul(Get(s5,dx,0), float4x4(-0.033770252019167,-0.062561459839344,-0.000000172547715,-0.017460756003857,-0.040487360209227,0.156032875180244,-0.000145512123709,0.112144015729427,0.022031303495169,0.009612068533897,0.001980467233807,0.322123825550079,0.041735399514437,-0.010283706709743,-0.000011284289030,0.007998378016055));
res += mul(Get(s5,dx,dy), float4x4(-0.031427841633558,-0.042211852967739,-0.000004125090982,0.074227757751942,-0.071698963642120,0.087213739752769,-0.000062844788772,0.130192041397095,-0.057517517358065,-0.012111731804907,0.001842647441663,0.220457956194878,0.258087843656540,0.051565516740084,-0.000030680312193,0.125299274921417));
res = max(float4(0, 0, 0, 0), res) + float4(0.037765983492136,0.006496862508357,0.000731068779714,0.373242169618607) * min(float4(0, 0, 0, 0), res);
return res;
}
