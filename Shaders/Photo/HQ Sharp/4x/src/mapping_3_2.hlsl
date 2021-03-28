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
float4 res = float4(0.133920744061470,0.010083215311170,0.069965139031410,-0.045428380370140);
res += mul(Get(s0,-dx,-dy), float4x4(-0.068558044731617,0.021834153681993,-0.005585037637502,0.076349921524525,-0.016121095046401,0.019101876765490,-0.046444702893496,-0.058607105165720,-0.045322481542826,-0.031351685523987,0.126884818077087,-0.007190258707851,0.103918842971325,-0.056238286197186,-0.022231427952647,-0.096107579767704));
res += mul(Get(s0,-dx,0), float4x4(-0.014386667869985,-0.169803619384766,-0.021916622295976,0.040814619511366,-0.030483417212963,0.003298978786916,-0.092324174940586,0.111472763121128,-0.250035107135773,-0.068893365561962,-0.110452666878700,0.119123540818691,0.129858270287514,-0.023898065090179,0.029809804633260,0.089207433164120));
res += mul(Get(s0,-dx,dy), float4x4(0.019028127193451,0.073068328201771,-0.097875647246838,-0.012980211526155,0.070205070078373,-0.043461494147778,0.025571361184120,-0.097690843045712,0.170840501785278,-0.072361372411251,0.032869089394808,0.077529497444630,0.019228650256991,0.026240445673466,-0.095031954348087,-0.088775612413883));
res += mul(Get(s0,0,-dy), float4x4(0.080460309982300,-0.175252363085747,-0.050302486866713,0.007812692783773,0.014475129544735,-0.055327538400888,0.023057412356138,-0.045171011239290,-0.181236058473587,0.093936689198017,-0.115988835692406,0.076796561479568,0.186896950006485,-0.079793095588684,-0.019981186836958,-0.036615062505007));
res += mul(Get(s0,0,0), float4x4(0.118094861507416,-0.476860463619232,0.157262474298477,-0.376878619194031,0.077061988413334,-0.121673703193665,0.103388652205467,-0.038405962288380,-0.261184722185135,-0.149754762649536,0.001558630377986,-0.050564765930176,-0.009780764579773,-0.071150615811348,-0.007466664537787,-0.156426459550858));
res += mul(Get(s0,0,dy), float4x4(0.176459044218063,0.140718653798103,-0.163844943046570,0.014719965867698,0.089246831834316,0.011523734778166,0.065950848162174,-0.020493403077126,0.131374850869179,-0.062890917062759,0.176660791039467,-0.051115185022354,0.023077698424459,0.167479857802391,-0.076468288898468,0.054903160780668));
res += mul(Get(s0,dx,-dy), float4x4(0.013852885924280,-0.025075610727072,0.007731643039733,0.046027336269617,-0.039223149418831,-0.162687450647354,0.055687867105007,-0.072323076426983,-0.044824842363596,0.037084095180035,-0.059716541320086,-0.050834640860558,-0.008556537330151,-0.028678771108389,0.043864045292139,-0.043057717382908));
res += mul(Get(s0,dx,0), float4x4(-0.059170987457037,-0.074346251785755,-0.039116498082876,-0.028032947331667,0.062968447804451,-0.282036721706390,0.008969109505415,-0.031236613169312,-0.114336483180523,0.066131129860878,-0.047564573585987,-0.017016090452671,-0.047623500227928,-0.125695526599884,0.055670015513897,-0.065753169357777));
res += mul(Get(s0,dx,dy), float4x4(-0.044891823083162,0.023727962747216,0.030250638723373,0.085196316242218,0.089352697134018,-0.124764092266560,0.092266969382763,0.018805718049407,0.172363817691803,0.013648595660925,0.018265385180712,0.013778402470052,0.229905217885971,-0.042728424072266,0.032726947218180,-0.068258494138718));
res += mul(Get(s1,-dx,-dy), float4x4(0.013686736114323,0.017438584938645,0.016746118664742,0.028350720182061,-0.231416448950768,-0.097046993672848,-0.126912221312523,0.051519144326448,-0.013920909725130,0.034478299319744,0.116182334721088,-0.045224595814943,-0.004028567112982,0.003792556701228,0.011788111180067,-0.117792971432209));
res += mul(Get(s1,-dx,0), float4x4(0.118752658367157,-0.056226409971714,-0.035663411021233,0.030735155567527,-0.114856310188770,0.042069423943758,-0.236012265086174,0.038365807384253,-0.014480434358120,-0.174805894494057,0.230656191706657,0.029233209788799,-0.075813792645931,-0.024768983945251,-0.001432109507732,-0.052457779645920));
res += mul(Get(s1,-dx,dy), float4x4(0.000571679091081,0.017131170257926,-0.035269316285849,0.093539379537106,0.084067739546299,0.012428647838533,-0.068505682051182,0.012073361314833,0.068207055330276,0.017103569582105,0.139332816004753,0.003092262195423,-0.154719069600105,0.006910338997841,0.141085594892502,-0.018262568861246));
res += mul(Get(s1,0,-dy), float4x4(-0.115209169685841,-0.027352880686522,0.018941981717944,-0.043460272252560,-0.009531348012388,-0.117128662765026,-0.094632163643837,-0.090117625892162,0.109267935156822,-0.070049673318863,0.094703711569309,-0.038952007889748,-0.007506780326366,-0.003727807430550,-0.026504710316658,-0.044997893273830));
res += mul(Get(s1,0,0), float4x4(-0.040734764188528,-0.093719504773617,0.076097361743450,0.021101422607899,-0.196541845798492,0.081123828887939,-0.061342634260654,0.038769286125898,0.019617728888988,-0.068703405559063,0.146825775504112,0.122876092791557,0.020016143098474,0.051563311368227,0.066465914249420,-0.134001910686493));
res += mul(Get(s1,0,dy), float4x4(0.032353989779949,-0.086850106716156,0.048113137483597,0.080591388046741,-0.038496345281601,-0.132533162832260,-0.038840599358082,-0.134406834840775,-0.015795070677996,0.008350042626262,0.149845093488693,0.309162646532059,0.048432588577271,0.008471156470478,-0.022064335644245,-0.041484143584967));
res += mul(Get(s1,dx,-dy), float4x4(0.099607355892658,0.008492710068822,-0.021034114062786,0.046159032732248,-0.092689774930477,0.252133309841156,-0.077660642564297,-0.022370852530003,0.014587334357202,0.048019409179688,0.015925522893667,0.049000859260559,0.096457928419113,-0.037620294839144,-0.000838367210235,-0.103071950376034));
res += mul(Get(s1,dx,0), float4x4(0.158536180853844,-0.182937085628510,-0.027636220678687,0.037571836262941,-0.000092575181043,-0.088741369545460,0.029547832906246,-0.094347238540649,0.007008179556578,0.048057954758406,0.003919656388462,0.149367734789848,0.014656998217106,-0.104408539831638,0.040136132389307,-0.004354048985988));
res += mul(Get(s1,dx,dy), float4x4(-0.002824379364029,0.014185547828674,0.105198606848717,-0.027919130399823,0.155672460794449,0.139812439680099,-0.045483041554689,-0.050238430500031,0.044364351779222,0.045711725950241,0.117696344852448,0.102942593395710,0.014728335663676,-0.025710327550769,0.049944784492254,0.044471327215433));
res += mul(Get(s2,-dx,-dy), float4x4(0.087445050477982,-0.011567804031074,0.094584926962852,0.051750946789980,-0.101188056170940,-0.064969785511494,-0.057678785175085,0.011553055606782,0.087337635457516,0.081435538828373,0.108724080026150,0.070158898830414,-0.161219820380211,-0.061339765787125,0.042624481022358,0.029363621026278));
res += mul(Get(s2,-dx,0), float4x4(0.040367767214775,0.005117209162563,0.070129856467247,0.030969319865108,0.031682271510363,-0.043339099735022,0.015762060880661,-0.010054736398160,0.040921472012997,0.059740375727415,-0.035274852067232,-0.040284920483828,-0.049266364425421,-0.065741062164307,0.106742069125175,-0.065756998956203));
res += mul(Get(s2,-dx,dy), float4x4(0.079353868961334,0.055135112255812,0.117598310112953,0.002108120592311,0.070401631295681,-0.125693619251251,-0.068387858569622,-0.049265861511230,0.118569724261761,-0.060436658561230,-0.017331203445792,-0.013997652567923,0.057908523827791,-0.017454685643315,-0.037563253194094,-0.029066057875752));
res += mul(Get(s2,0,-dy), float4x4(-0.111105710268021,-0.049566939473152,-0.019168034195900,0.000727421487682,0.026972653344274,0.023787217214704,0.094683453440666,-0.011603465303779,-0.134715422987938,-0.115596719086170,0.145441293716431,-0.095249086618423,0.001091302605346,-0.037166506052017,-0.005903047975153,-0.177779302000999));
res += mul(Get(s2,0,0), float4x4(-0.106501094996929,-0.091187700629234,-0.063462175428867,-0.030422570183873,-0.116847448050976,-0.115128204226494,-0.097813464701176,0.140475437045097,0.105637349188328,0.003022146876901,-0.097662232816219,0.025065738707781,0.034612592309713,0.091235741972923,-0.212826699018478,-0.032283861190081));
res += mul(Get(s2,0,dy), float4x4(0.005099212750793,0.074143983423710,-0.025012573227286,-0.185770928859711,-0.051775954663754,0.069351226091385,0.139293760061264,0.074919484555721,-0.066961459815502,-0.012570309452713,0.111909642815590,-0.066570147871971,0.068172402679920,0.087154768407345,0.031328938901424,0.074977867305279));
res += mul(Get(s2,dx,-dy), float4x4(0.077117025852203,-0.157145231962204,0.048520803451538,0.001232009381056,-0.069011144340038,-0.003548626089469,0.015922082588077,0.044142957776785,-0.090894997119904,0.156925231218338,0.019031174480915,-0.049582593142986,0.016774730756879,0.084919914603233,0.034372918307781,0.096196740865707));
res += mul(Get(s2,dx,0), float4x4(0.077693358063698,-0.106865875422955,-0.026810409501195,0.097532272338867,0.032266791909933,0.068456046283245,0.070050545036793,-0.191111966967583,0.003337976289913,0.102175876498222,0.012418656609952,0.047194819897413,-0.019304217770696,0.295648276805878,-0.022011797875166,0.225066959857941));
res += mul(Get(s2,dx,dy), float4x4(-0.088197298347950,0.262523591518402,0.088557302951813,0.103188678622246,0.085135847330093,0.054581254720688,-0.096271209418774,-0.043933421373367,-0.063151724636555,0.047423224896193,-0.018355239182711,0.002321971347556,-0.150345280766487,-0.008354386314750,0.037696838378906,0.197019368410110));
res += mul(Get(s3,-dx,-dy), float4x4(-0.056744806468487,-0.053210709244013,0.131900876760483,0.024482959881425,-0.017109017819166,0.044975351542234,-0.013428551144898,0.001218745135702,0.191452756524086,0.010882898233831,-0.061301026493311,-0.044570289552212,-0.217663198709488,-0.013813345693052,-0.035050313919783,-0.027385877445340));
res += mul(Get(s3,-dx,0), float4x4(0.009871962480247,0.013556024059653,-0.087303504347801,0.127785831689835,-0.072435975074768,-0.047380618751049,-0.022643392905593,0.040676780045033,0.060905218124390,0.085244894027710,0.024302585050464,0.125840663909912,-0.174826011061668,-0.073040984570980,-0.101793691515923,-0.015948506072164));
res += mul(Get(s3,-dx,dy), float4x4(0.112423770129681,-0.065593652427197,-0.000881483894773,-0.030268156901002,-0.102510124444962,-0.047291029244661,0.062349151819944,-0.017683289945126,-0.007652322296053,-0.066352382302284,-0.102364502847195,-0.004795330110937,0.115224838256836,-0.053428824990988,-0.115128658711910,-0.086404532194138));
res += mul(Get(s3,0,-dy), float4x4(-0.001787231536582,-0.013615450821817,0.033969663083553,-0.077919952571392,-0.208123758435249,-0.032608889043331,-0.021062539890409,-0.004628032911569,-0.029288142919540,0.003073631785810,0.018137229606509,0.018731348216534,-0.287236005067825,0.048107285052538,-0.033347129821777,-0.101693682372570));
res += mul(Get(s3,0,0), float4x4(-0.080235481262207,-0.157566562294960,-0.111769430339336,-0.009907025843859,-0.104343533515930,-0.172299236059189,-0.079766631126404,-0.113061048090458,-0.036040574312210,-0.063266195356846,-0.022154606878757,-0.076549097895622,0.064235419034958,-0.109796464443207,-0.138347446918488,0.062810041010380));
res += mul(Get(s3,0,dy), float4x4(0.046264182776213,0.094481579959393,0.019410667940974,-0.092796392738819,0.087024219334126,0.043786820024252,0.057429295033216,-0.011869830079377,-0.062002830207348,-0.137568682432175,0.099449411034584,-0.042040068656206,0.110776074230671,-0.014047333039343,-0.206497088074684,0.092825040221214));
res += mul(Get(s3,dx,-dy), float4x4(-0.126397714018822,0.128659963607788,-0.002087948378175,0.034763772040606,0.083179593086243,-0.015130477957428,-0.007105607073754,0.026213441044092,0.191744774580002,0.014435396529734,-0.003897650865838,-0.063769921660423,-0.237402915954590,0.020399397239089,-0.023827590048313,0.125614106655121));
res += mul(Get(s3,dx,0), float4x4(0.003978656604886,-0.011029687710106,-0.008225308731198,-0.064828850328922,-0.059819575399160,0.161110594868660,0.028654737398028,-0.001156297512352,0.083613716065884,0.130565479397774,0.122182540595531,0.009993426501751,-0.013223615474999,-0.107885174453259,-0.155706286430359,-0.085586518049240));
res += mul(Get(s3,dx,dy), float4x4(0.071975268423557,0.101935349404812,0.045702103525400,0.062787041068077,-0.050819750875235,0.067075647413731,-0.009016507305205,0.002511424943805,0.028890594840050,-0.140369832515717,-0.027587180957198,-0.032827459275723,-0.010101545602083,0.033813863992691,-0.060751140117645,-0.050677418708801));
res += mul(Get(s4,-dx,-dy), float4x4(-0.023952549323440,-0.009865939617157,-0.009479272179306,0.013607848435640,0.102031685411930,0.002220455557108,0.013778781518340,0.031812429428101,0.023134572431445,0.033072371035814,0.002360355108976,0.058865927159786,-0.284921318292618,0.055182527750731,-0.007695419713855,0.024790454655886));
res += mul(Get(s4,-dx,0), float4x4(0.061237186193466,-0.055738344788551,0.085005871951580,-0.020541615784168,-0.003503636689857,0.020418016240001,-0.140335768461227,0.073253780603409,0.027781879529357,0.073471255600452,-0.029042363166809,-0.017085853964090,-0.205792501568794,-0.036034863442183,-0.065106943249702,0.016899274662137));
res += mul(Get(s4,-dx,dy), float4x4(0.035324897617102,0.042575210332870,-0.094561226665974,-0.005373040214181,-0.099427103996277,-0.016685238108039,0.028044980019331,0.000534518272616,0.001661238493398,-0.013795961625874,0.003394501982257,0.148623719811440,-0.106260254979134,0.010032591409981,0.168014407157898,0.002453094348311));
res += mul(Get(s4,0,-dy), float4x4(0.052737932652235,0.030172273516655,-0.004009374417365,0.009862714447081,-0.068616338074207,0.037351727485657,0.028042780235410,0.061457443982363,-0.188271760940552,0.078840278089046,-0.119300335645676,0.063728921115398,-0.395967692136765,0.011918697506189,-0.059145402163267,-0.007207513786852));
res += mul(Get(s4,0,0), float4x4(0.037627380341291,-0.082461275160313,0.041501685976982,-0.015412794426084,0.119004786014557,0.048018146306276,0.026691272854805,-0.070149287581444,-0.094384871423244,0.202871993184090,-0.032413490116596,-0.087095491588116,-0.037875540554523,-0.156319856643677,-0.342116504907608,0.222030982375145));
res += mul(Get(s4,0,dy), float4x4(-0.059463977813721,-0.138415411114693,0.126377463340759,0.038136467337608,0.001088021555915,-0.016331037506461,-0.063274174928665,0.086357273161411,0.011773908510804,-0.091876760125160,-0.003402900649235,-0.118494689464569,-0.409236669540405,0.147328272461891,0.003257017349824,-0.006946254055947));
res += mul(Get(s4,dx,-dy), float4x4(-0.027921857312322,-0.030068287625909,-0.053510364145041,-0.070773452520370,-0.108190424740314,-0.062032431364059,-0.025609197095037,-0.063306078314781,-0.100125283002853,-0.057561758905649,-0.040877994149923,0.020298443734646,-0.216706499457359,0.096637792885303,-0.060703407973051,0.020793266594410));
res += mul(Get(s4,dx,0), float4x4(0.052978966385126,0.058239102363586,-0.045681193470955,0.075112573802471,-0.007939242757857,0.108452178537846,0.017424114048481,0.053596258163452,-0.091420829296112,0.094650141894817,0.033588398247957,-0.015907162800431,0.131842225790024,-0.066820576786995,-0.123972378671169,-0.165436282753944));
res += mul(Get(s4,dx,dy), float4x4(-0.033090267330408,-0.064725928008556,-0.057989086955786,-0.358564227819443,-0.109348088502884,0.067427225410938,-0.036154486238956,-0.028258346021175,0.109002448618412,-0.031980104744434,0.045527700334787,-0.079296290874481,0.074158571660519,0.137941569089890,0.005873241461813,-0.170206859707832));
res += mul(Get(s5,-dx,-dy), float4x4(-0.069953158497810,-0.078914597630501,-0.051125090569258,0.063864506781101,0.012381076812744,0.017857765778899,0.026074443012476,-0.064246557652950,-0.084952510893345,-0.022483376786113,0.080187782645226,-0.002830978715792,0.088765360414982,0.084855765104294,-0.060448687523603,-0.007298664189875));
res += mul(Get(s5,-dx,0), float4x4(-0.171727970242500,-0.098060928285122,-0.008661928586662,0.034504946321249,-0.085021145641804,-0.028835935518146,-0.050496347248554,0.044817861169577,-0.114515192806721,-0.042433205991983,0.044343676418066,-0.022040527313948,0.072411358356476,-0.102247230708599,-0.363734096288681,-0.006321084219962));
res += mul(Get(s5,-dx,dy), float4x4(0.104148045182228,-0.074110865592957,-0.062248546630144,-0.099811829626560,0.069546200335026,0.037179037928581,0.119277976453304,0.006983111146837,-0.174623504281044,-0.040446601808071,0.029236277565360,0.034185044467449,0.069345325231552,-0.065874263644218,0.060641486197710,0.030944107100368));
res += mul(Get(s5,0,-dy), float4x4(-0.358234286308289,-0.151322647929192,0.028399780392647,-0.058780852705240,-0.011840009130538,0.001587371807545,0.007957982830703,0.065655224025249,-0.250499308109283,-0.077500559389591,0.025746148079634,-0.102482534945011,0.122579365968704,-0.001778401667252,-0.061685293912888,-0.000116217852337));
res += mul(Get(s5,0,0), float4x4(-0.078089386224747,-0.283958435058594,0.134410232305527,-0.147534415125847,-0.107766494154930,-0.004109819885343,0.115445531904697,-0.018997510895133,-0.181315660476685,-0.056698288768530,0.020244849845767,0.047780126333237,-0.104219384491444,0.062180843204260,-0.073537901043892,-0.142452031373978));
res += mul(Get(s5,0,dy), float4x4(0.073631517589092,0.132634505629539,-0.366521239280701,0.014638412743807,0.005646910052747,0.009135209023952,-0.184886723756790,-0.087841838598251,-0.057648446410894,-0.047730039805174,0.074726641178131,0.350795000791550,-0.081282377243042,-0.056251645088196,0.108411632478237,-0.030180798843503));
res += mul(Get(s5,dx,-dy), float4x4(-0.234516680240631,0.049348160624504,-0.032870609313250,-0.039709422737360,0.016190079972148,-0.135851591825485,0.026132753118873,0.065009653568268,-0.139186114072800,0.094484306871891,0.009122136980295,-0.007131027057767,0.089419350028038,0.011629653163254,0.019793666899204,-0.120072849094868));
res += mul(Get(s5,dx,0), float4x4(-0.107557460665703,0.220486670732498,0.004846476484090,-0.137682363390923,-0.273322016000748,0.073974624276161,0.189202517271042,-0.014955263584852,-0.162199199199677,0.011493401601911,0.011768436059356,0.065559171140194,0.017984637990594,0.065440654754639,-0.004865972325206,-0.031314142048359));
res += mul(Get(s5,dx,dy), float4x4(0.197479501366615,0.110180109739304,-0.045220632106066,0.045965928584337,-0.002664224244654,-0.068014532327652,-0.133871257305145,-0.250670909881592,-0.034761741757393,-0.089163661003113,0.014665000140667,0.043029207736254,0.066950753331184,-0.056670650839806,-0.008295851759613,-0.023712761700153));
res = max(float4(0, 0, 0, 0), res) + float4(0.028126174584031,-0.093614652752876,0.287400364875793,-0.232510328292847) * min(float4(0, 0, 0, 0), res);
return res;
}
