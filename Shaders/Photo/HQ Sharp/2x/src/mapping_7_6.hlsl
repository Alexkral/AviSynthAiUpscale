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
float4 res = float4(-0.176189988851547,-0.074354454874992,-0.062842033803463,0.019818201661110);
res += mul(Get(s0,-dx,-dy), float4x4(0.006577979307622,0.032935954630375,0.085372850298882,-0.025692868977785,0.003903155680746,-0.074302591383457,0.040236975997686,-0.016952741891146,0.057066712528467,0.027023512870073,0.049497969448566,0.004380975849926,-0.012319806031883,0.070675633847713,0.139311149716377,0.036873985081911));
res += mul(Get(s0,-dx,0), float4x4(0.072102278470993,-0.057838253676891,0.021800085902214,0.017951276153326,-0.024223076179624,-0.034806106239557,-0.094872280955315,-0.011729084886611,0.122513391077518,0.162826180458069,0.126865908503532,0.049080885946751,-0.027903264388442,-0.046078953891993,0.155497118830681,-0.131915658712387));
res += mul(Get(s0,-dx,dy), float4x4(0.185126587748528,0.000349278096110,0.102241195738316,-0.063561469316483,0.032107677310705,-0.126351311802864,-0.171844020485878,0.033690582960844,0.303794264793396,-0.026890253648162,-0.063169963657856,-0.030618505552411,0.029695134609938,0.044210936874151,0.083478368818760,0.087517596781254));
res += mul(Get(s0,0,-dy), float4x4(-0.013714008033276,-0.096067383885384,0.015829922631383,-0.000917592609767,0.015647916123271,-0.078051894903183,-0.028689002618194,0.007722333073616,-0.026544781401753,-0.190322890877724,-0.085156895220280,0.025228850543499,0.008162881247699,0.039863161742687,0.035273045301437,0.138754352927208));
res += mul(Get(s0,0,0), float4x4(-0.157177224755287,0.037850491702557,-0.144135162234306,-0.100950241088867,-0.053060930222273,-0.004068200476468,0.022005090489984,0.078624181449413,-0.188002482056618,-0.153572931885719,-0.243436381220818,0.146141752600670,0.030766706913710,0.055370200425386,-0.000291764270514,0.084960892796516));
res += mul(Get(s0,0,dy), float4x4(0.102155156433582,-0.132886230945587,-0.115830525755882,0.021462697535753,0.087448455393314,0.249111831188202,-0.064845502376556,-0.028623647987843,-0.383111268281937,0.237499862909317,0.083350956439972,-0.100168108940125,-0.019329246133566,-0.059490263462067,0.071612507104874,0.168334484100342));
res += mul(Get(s0,dx,-dy), float4x4(0.012975793331861,0.031614080071449,-0.018827050924301,-0.075865827500820,-0.035635650157928,-0.043036554008722,-0.030440159142017,-0.066814348101616,-0.044929128140211,0.053186256438494,0.030502352863550,0.072969220578671,0.039965074509382,0.019541276618838,0.034656595438719,-0.184507474303246));
res += mul(Get(s0,dx,0), float4x4(-0.058985054492950,0.010069686919451,0.151574715971947,0.059234276413918,0.083549611270428,-0.150994375348091,-0.152945682406425,-0.006350850220770,0.008429676294327,-0.140151515603065,0.173364728689194,-0.225882053375244,-0.019606698304415,-0.027570739388466,-0.022177284583449,0.186719849705696));
res += mul(Get(s0,dx,dy), float4x4(-0.077589459717274,-0.078878358006477,0.042400367558002,0.099756419658661,-0.071382336318493,-0.000469383870950,0.023943757638335,-0.022215709090233,0.093793369829655,-0.103720061480999,0.031611826270819,-0.006646227557212,0.028897956013680,-0.048834130167961,-0.177966713905334,0.064989231526852));
res += mul(Get(s1,-dx,-dy), float4x4(-0.007103228941560,-0.111633151769638,0.112838916480541,-0.078967466950417,-0.021734030917287,-0.131792962551117,-0.089513652026653,0.018937325105071,0.060321614146233,0.156422138214111,0.070785179734230,0.002421116456389,-0.086720623075962,0.046649992465973,0.039330050349236,0.000819026608951));
res += mul(Get(s1,-dx,0), float4x4(-0.259207278490067,-0.215898200869560,0.271753013134003,-0.009910391643643,0.027979796752334,-0.125104874372482,-0.355592966079712,-0.046055786311626,0.095849826931953,0.203064441680908,0.313456058502197,0.011074464768171,0.026791116222739,0.021949205547571,-0.236423805356026,-0.074889689683914));
res += mul(Get(s1,-dx,dy), float4x4(-0.097532056272030,0.070502005517483,0.206058621406555,0.129221916198730,-0.183518007397652,0.038994554430246,0.035154249519110,-0.060462180525064,0.218502804636955,-0.077617682516575,-0.035598490387201,0.058647714555264,-0.031526576727629,-0.040121868252754,-0.028267653658986,-0.070775985717773));
res += mul(Get(s1,0,-dy), float4x4(0.009590375237167,-0.071632400155067,0.148419886827469,-0.297536224126816,-0.065563015639782,-0.064304426312447,-0.038821578025818,0.095947451889515,0.087535686790943,0.035583820194006,-0.198732346296310,0.028577897697687,0.019423229619861,0.095680676400661,-0.079474568367004,0.018227914348245));
res += mul(Get(s1,0,0), float4x4(0.032368965446949,0.041950710117817,-0.016058219596744,0.164858505129814,-0.042449865490198,-0.043724205344915,0.029458429664373,-0.202934727072716,0.228278309106827,0.112384878098965,-0.278599441051483,-0.078412607312202,0.102958053350449,0.004639023449272,0.014236112125218,-0.034038368612528));
res += mul(Get(s1,0,dy), float4x4(-0.089900277554989,-0.036765243858099,0.004513224586844,0.220667555928230,-0.155293479561806,-0.003808468347415,-0.015027724206448,-0.018799329176545,0.031563326716423,-0.060960594564676,-0.041853319853544,-0.019482519477606,-0.047981839627028,0.147321954369545,0.070619359612465,0.051307573914528));
res += mul(Get(s1,dx,-dy), float4x4(0.070451892912388,0.009343547746539,-0.029465822502971,-0.123721517622471,0.001167461508885,-0.053420532494783,0.126501783728600,0.035163775086403,0.031397510319948,-0.019270472228527,-0.046989668160677,0.048730965703726,0.017789287492633,-0.055018674582243,-0.042662322521210,0.047797892242670));
res += mul(Get(s1,dx,0), float4x4(0.045259524136782,-0.214522868394852,-0.045603182166815,0.106179304420948,0.111519582569599,-0.144310787320137,0.272204816341400,-0.240296542644501,-0.004193545319140,-0.061135716736317,-0.090559303760529,-0.455911576747894,-0.071665711700916,0.074683398008347,0.102034740149975,0.038038734346628));
res += mul(Get(s1,dx,dy), float4x4(-0.033187299966812,0.023640772327781,-0.115575879812241,0.135225370526314,0.070201598107815,0.016069231554866,-0.007466071750969,-0.073925696313381,-0.049796275794506,0.075582422316074,-0.100969165563583,0.111740373075008,-0.044743940234184,0.048185139894485,0.058111168444157,-0.125734388828278));
res += mul(Get(s2,-dx,-dy), float4x4(-0.056854937225580,-0.074135407805443,-0.067593462765217,0.045006789267063,-0.070443809032440,-0.107473634183407,0.042484119534492,0.166323587298393,-0.022345986217260,0.051215898245573,-0.085501000285149,0.122523173689842,-0.021539945155382,-0.074712499976158,0.026487154886127,-0.124511502683163));
res += mul(Get(s2,-dx,0), float4x4(-0.034690991044044,0.024549541994929,-0.097304701805115,-0.064229659736156,-0.274228364229202,0.009677287191153,0.090423338115215,-0.014638585969806,-0.037386279553175,0.017648404464126,0.145186871290207,-0.192443251609802,0.049935292452574,-0.006094275973737,-0.147071734070778,-0.067990407347679));
res += mul(Get(s2,-dx,dy), float4x4(0.075305007398129,-0.060292702168226,-0.117536708712578,0.008255849592388,0.067269600927830,-0.051743183284998,0.000321497791447,0.027165671810508,-0.069458216428757,0.211294129490852,0.138021305203438,0.057102557271719,-0.099233157932758,0.101381875574589,0.073479332029819,-0.217807397246361));
res += mul(Get(s2,0,-dy), float4x4(-0.058128252625465,-0.152370810508728,0.001645890180953,-0.048420209437609,0.084395103156567,0.061789553612471,0.083618953824043,-0.010169458575547,0.062267035245895,-0.090970039367676,-0.061117041856050,0.194241270422935,-0.069587938487530,-0.047852970659733,-0.109983369708061,-0.013337559066713));
res += mul(Get(s2,0,0), float4x4(-0.075035877525806,-0.237073630094528,-0.017480723559856,0.018423734232783,0.017855200916529,0.092299178242683,0.007657041773200,0.020261326804757,0.026464659720659,-0.185265839099884,-0.035284835845232,-0.240358561277390,-0.097426876425743,-0.010294040665030,0.075783021748066,-0.239758849143982));
res += mul(Get(s2,0,dy), float4x4(-0.018933817744255,-0.039993450045586,-0.046040009707212,-0.037383694201708,-0.122480437159538,-0.081421226263046,0.098121881484985,0.008453607559204,0.178464770317078,-0.193220302462578,0.030045453459024,0.109044119715691,-0.242479816079140,0.058552455157042,-0.026495495811105,-0.212760835886002));
res += mul(Get(s2,dx,-dy), float4x4(0.069727592170238,0.077831745147705,0.017704874277115,-0.174220532178879,0.063518650829792,-0.043655563145876,-0.078547991812229,-0.166198343038559,-0.019799999892712,-0.073295943439007,-0.009454240091145,0.060256309807301,-0.017342209815979,-0.009928573854268,0.059795830398798,0.053449723869562));
res += mul(Get(s2,dx,0), float4x4(0.135322004556656,0.098453067243099,-0.072138831019402,-0.032924689352512,0.065573006868362,-0.162653207778931,-0.016435978934169,0.095594331622124,-0.001379389781505,0.146096646785736,-0.111855827271938,-0.098332159221172,0.050808489322662,-0.095090337097645,0.243835151195526,-0.118809193372726));
res += mul(Get(s2,dx,dy), float4x4(0.028715040534735,0.057640489190817,0.051291525363922,-0.178587719798088,0.074154980480671,-0.006400997284800,-0.068335816264153,0.009109850041568,-0.084344193339348,0.197789773344994,-0.080826811492443,-0.045577991753817,0.101904012262821,-0.181532129645348,0.023192180320621,-0.052481789141893));
res += mul(Get(s3,-dx,-dy), float4x4(0.017293339595199,0.031064407899976,0.028402240946889,-0.081475242972374,0.016569975763559,0.141558110713959,-0.006218247115612,0.119349732995033,-0.011060566641390,0.018179418519139,-0.047245029360056,-0.023853018879890,-0.022025536745787,0.137591972947121,0.111386612057686,-0.007914595305920));
res += mul(Get(s3,-dx,0), float4x4(-0.055941186845303,0.188448533415794,0.231100276112556,-0.059568241238594,-0.017244899645448,0.158285841345787,0.386493474245071,0.003185189329088,0.054240930825472,0.007033920846879,-0.080153949558735,0.120530627667904,-0.144942566752434,0.012184775434434,-0.037925977259874,-0.019813302904367));
res += mul(Get(s3,-dx,dy), float4x4(0.136810198426247,-0.164080545306206,-0.078142687678337,0.021691281348467,0.175579026341438,0.047147076576948,0.028143193572760,-0.030831607058644,0.086955554783344,-0.054990518838167,-0.037044182419777,-0.046345669776201,0.046422187238932,-0.075071141123772,-0.072880223393440,0.100492917001247));
res += mul(Get(s3,0,-dy), float4x4(-0.008762198500335,-0.027892110869288,0.104826524853706,-0.028181480243802,-0.059679649770260,0.013170235790312,0.102440580725670,0.148210808634758,-0.094654783606529,0.028528399765491,-0.144762009382248,0.071131072938442,-0.023115791380405,0.106736972928047,-0.122867725789547,-0.119039453566074));
res += mul(Get(s3,0,0), float4x4(-0.007872014306486,-0.184169560670853,-0.026730014011264,-0.004489003214985,-0.055592048913240,0.051713958382607,-0.068025916814804,0.076830424368382,-0.023877959698439,-0.239880084991455,0.015193917788565,0.119462370872498,0.130444109439850,0.147527992725372,-0.130606174468994,-0.014331303536892));
res += mul(Get(s3,0,dy), float4x4(-0.196795672178268,0.053186412900686,-0.071273230016232,-0.036339342594147,0.151870504021645,0.114011630415916,0.052740067243576,-0.245048969984055,-0.222155570983887,-0.266540735960007,0.010916771367192,0.023628300055861,-0.054983559995890,0.254873931407928,-0.100115247070789,0.139681443572044));
res += mul(Get(s3,dx,-dy), float4x4(-0.043977361172438,-0.054278559982777,0.036456912755966,0.037382975220680,0.004040838684887,0.068196743726730,0.045872006565332,0.073504343628883,0.071366250514984,-0.106959842145443,-0.130062833428383,-0.232127919793129,0.097524426877499,0.167490288615227,-0.057430233806372,0.041702423244715));
res += mul(Get(s3,dx,0), float4x4(-0.010587994009256,-0.199915945529938,0.167200773954391,-0.133720085024834,0.075532495975494,0.016080802306533,-0.070587195456028,-0.070739254355431,0.031307455152273,0.151702180504799,-0.215522289276123,0.309973239898682,0.008335795253515,0.035047486424446,0.102147474884987,-0.208184853196144));
res += mul(Get(s3,dx,dy), float4x4(-0.006258043926209,-0.016586139798164,0.055962421000004,0.039696469902992,-0.048791408538818,0.013871129602194,-0.135474428534508,0.037979356944561,0.161060959100723,0.052863899618387,-0.157730937004089,0.003546569263563,0.195773750543594,-0.081801459193230,-0.013495621271431,0.202072516083717));
res += mul(Get(s4,-dx,-dy), float4x4(-0.025992650538683,-0.089339889585972,-0.182501539587975,-0.069204941391945,0.006633225362748,-0.071429699659348,0.041020859032869,-0.065118111670017,-0.039795260876417,0.021198753267527,0.060010623186827,-0.086114965379238,-0.079669751226902,-0.156102538108826,0.156725004315376,0.078977994620800));
res += mul(Get(s4,-dx,0), float4x4(-0.033148597925901,0.076060257852077,0.030596951022744,0.084292478859425,0.003368490841240,-0.065985321998596,-0.116773754358292,0.053246397525072,-0.013626058585942,-0.185752436518669,-0.017892329022288,-0.064990900456905,-0.130180507898331,-0.011288222856820,0.200586259365082,-0.015420408919454));
res += mul(Get(s4,-dx,dy), float4x4(-0.001568999607116,0.106017209589481,0.020196998491883,-0.003428296186030,-0.165466234087944,-0.149464011192322,0.058636620640755,-0.040955558419228,-0.194439962506294,0.013494021259248,-0.008200198411942,-0.123455181717873,-0.069322474300861,0.012848799116910,0.167798966169357,0.073033079504967));
res += mul(Get(s4,0,-dy), float4x4(-0.015138608403504,-0.031898736953735,0.070088729262352,-0.081556826829910,0.007525711786002,-0.311808794736862,-0.048973411321640,0.042937155812979,0.020264074206352,-0.054724216461182,-0.015115594491363,-0.038406074047089,0.034912619739771,-0.045325577259064,0.035519339144230,0.097955934703350));
res += mul(Get(s4,0,0), float4x4(-0.083421111106873,-0.028097998350859,0.078391395509243,0.032575394958258,-0.067884311079979,-0.141313403844833,-0.076533950865269,-0.083157494664192,-0.066049702465534,-0.004686928819865,-0.047562867403030,-0.026888584718108,0.027706736698747,-0.082303635776043,0.029208540916443,0.094506785273552));
res += mul(Get(s4,0,dy), float4x4(0.160752192139626,-0.180489316582680,-0.065138176083565,0.053037084639072,-0.050914466381073,-0.180673629045486,0.037745945155621,0.071643091738224,0.055088087916374,0.032708279788494,0.081230260431767,-0.113300293684006,-0.046651102602482,-0.054429266601801,0.087447986006737,-0.029089543968439));
res += mul(Get(s4,dx,-dy), float4x4(0.045942708849907,-0.047378074377775,0.101281829178333,0.022039987146854,-0.006771978456527,-0.019399069249630,-0.201032340526581,-0.078365258872509,-0.001484684646130,0.091821245849133,-0.016427218914032,0.060838665813208,0.021360050886869,0.065768957138062,0.059087809175253,-0.019625857472420));
res += mul(Get(s4,dx,0), float4x4(0.006241844967008,-0.169608339667320,-0.091405645012856,0.024090554565191,-0.007609668653458,0.122897632420063,0.048035223037004,0.065811909735203,-0.042298030108213,-0.065270252525806,0.031301736831665,0.054291699081659,0.012254172936082,0.088379681110382,-0.084447719156742,0.142763242125511));
res += mul(Get(s4,dx,dy), float4x4(-0.101720817387104,-0.008228329010308,-0.028104340657592,0.082840740680695,0.032855864614248,-0.001497847959399,0.053747657686472,-0.185690566897392,0.122433118522167,-0.027053197845817,-0.062257267534733,0.157694905996323,-0.038931857794523,0.059494718909264,0.059139464050531,-0.002884698798880));
res += mul(Get(s5,-dx,-dy), float4x4(0.011188975535333,-0.031368598341942,0.048227839171886,-0.174258783459663,0.041119817644358,0.070098556578159,0.009280454367399,-0.020675472915173,0.067344531416893,0.041988838464022,-0.010781906545162,0.066688314080238,0.022369401529431,0.089616410434246,0.052139870822430,-0.073236286640167));
res += mul(Get(s5,-dx,0), float4x4(0.060776866972446,0.097727090120316,0.143981024622917,-0.016876462846994,0.017254130914807,0.148362457752228,-0.080753967165947,0.075542539358139,0.055456541478634,-0.001448398805223,-0.003359894501045,0.050109449774027,0.078424043953419,-0.191964477300644,0.113952547311783,-0.051910951733589));
res += mul(Get(s5,-dx,dy), float4x4(0.007349235005677,0.072683170437813,0.069494634866714,0.025277502834797,0.137191638350487,0.118791595101357,-0.160810992121696,-0.070375367999077,0.037464112043381,0.024054666981101,0.014521744102240,0.131041973829269,-0.039868135005236,-0.126528933644295,-0.097188897430897,-0.048015229403973));
res += mul(Get(s5,0,-dy), float4x4(0.072939597070217,-0.108601920306683,0.035103209316730,-0.077493317425251,-0.050250485539436,-0.099697373807430,0.175744786858559,0.079110279679298,-0.136013045907021,-0.018399870023131,-0.040346849709749,0.017610410228372,0.095623791217804,0.124004840850830,-0.015111612156034,-0.194712519645691));
res += mul(Get(s5,0,0), float4x4(-0.097676083445549,0.033058330416679,-0.140306502580643,-0.052595362067223,-0.026730358600616,0.146297499537468,0.097169622778893,0.025804683566093,-0.208635315299034,-0.104593120515347,0.142095178365707,-0.110934704542160,0.044591654092073,0.155420035123825,0.070261664688587,0.138550177216530));
res += mul(Get(s5,0,dy), float4x4(-0.183939427137375,0.193992048501968,-0.038080122321844,0.237628534436226,0.096206046640873,0.069029822945595,0.019979320466518,-0.000354238727596,-0.052102316170931,-0.059745043516159,-0.018660988658667,0.116477802395821,-0.111059524118900,0.089722856879234,0.039968077093363,0.054300595074892));
res += mul(Get(s5,dx,-dy), float4x4(-0.023465055972338,0.088337630033493,-0.035944107919931,-0.007983973249793,-0.074616409838200,0.032395925372839,0.251427799463272,0.165809378027916,0.053647141903639,-0.053652629256248,-0.118238404393196,-0.027233542874455,0.057726986706257,0.008854717016220,0.009025693871081,0.013066963292658));
res += mul(Get(s5,dx,0), float4x4(0.009143044240773,-0.088450253009796,0.058970451354980,-0.202222749590874,0.013005078770220,-0.066713809967041,0.206147059798241,-0.079094134271145,0.200245350599289,0.041633650660515,-0.240137785673141,0.127848386764526,-0.039941728115082,-0.083137378096581,0.001562710385770,0.134577676653862));
res += mul(Get(s5,dx,dy), float4x4(0.097924947738647,-0.232453256845474,0.045154646039009,0.173588514328003,-0.073099069297314,0.063211917877197,0.118331238627434,0.038715958595276,0.005890875123441,0.251829087734222,-0.061381496489048,0.026515105739236,0.025913780555129,0.081885583698750,-0.047937560826540,-0.043107163161039));
res = max(float4(0, 0, 0, 0), res) + float4(-0.018977988511324,0.013736116699874,0.038629699498415,0.022899031639099) * min(float4(0, 0, 0, 0), res);
return res;
}
