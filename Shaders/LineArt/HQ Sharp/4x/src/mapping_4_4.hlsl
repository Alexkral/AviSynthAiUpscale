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
float4 res = float4(-0.178755164146423,0.006410716101527,0.076477535068989,0.339797437191010);
res += mul(Get(s0,-dx,-dy), float4x4(-0.079350300133228,-0.021049147471786,-0.024541208520532,0.067469723522663,0.097821265459061,-0.043886788189411,-0.127197474241257,0.059666797518730,-0.060473106801510,0.025422547012568,0.232947662472725,0.047224856913090,0.088276430964470,-0.357764065265656,0.002130457665771,0.094827249646187));
res += mul(Get(s0,-dx,0), float4x4(-0.056031804531813,0.168128371238708,0.122424148023129,-0.004410713445395,-0.151042625308037,0.105573147535324,-0.228898599743843,0.164370805025101,-0.056896585971117,0.035521727055311,0.041803818196058,0.021763717755675,-0.174151450395584,-0.044173415750265,0.022827969864011,-0.281548023223877));
res += mul(Get(s0,-dx,dy), float4x4(0.117029048502445,-0.179349616169930,0.133665964007378,0.109099678695202,-0.079717546701431,0.051449958235025,-0.076610602438450,-0.033419426530600,-0.077729530632496,0.198119297623634,0.014268754050136,0.186681106686592,-0.003044307697564,-0.194547608494759,0.029233878478408,-0.241796016693115));
res += mul(Get(s0,0,-dy), float4x4(0.181824132800102,0.007040371652693,0.087386064231396,0.007886478677392,0.089991368353367,0.157821461558342,-0.222760513424873,-0.093345776200294,0.015990676358342,0.225572124123573,0.179428637027740,-0.312698185443878,-0.044139668345451,0.107543736696243,0.059566278010607,0.100860342383385));
res += mul(Get(s0,0,0), float4x4(0.192065715789795,0.187719821929932,0.251322150230408,-0.123587690293789,-0.152105063199997,0.270580142736435,0.008325549773872,-0.263938695192337,0.232022851705551,0.214896857738495,-0.077100016176701,0.128283292055130,0.063175596296787,-0.367975652217865,-0.041841521859169,0.022307090461254));
res += mul(Get(s0,0,dy), float4x4(0.278820037841797,0.047329880297184,0.185037508606911,-0.032094810158014,-0.324027150869370,0.072264529764652,-0.074843361973763,0.388714134693146,0.202773213386536,-0.021651122719049,-0.028601171448827,0.165098279714584,-0.074805930256844,-0.042740650475025,0.016578949987888,0.120907798409462));
res += mul(Get(s0,dx,-dy), float4x4(0.014732878655195,-0.269036024808884,-0.016184922307730,-0.078684329986572,0.032678529620171,0.116500176489353,-0.210522100329399,-0.157074272632599,-0.069628253579140,-0.009001636877656,0.145584806799889,0.093518748879433,0.076592475175858,0.217406466603279,-0.206293299794197,-0.082770690321922));
res += mul(Get(s0,dx,0), float4x4(-0.066969066858292,0.004039786290377,0.170123383402824,0.242298081517220,0.020811924710870,-0.053665749728680,-0.159726679325104,-0.442236423492432,0.034075576812029,0.027709908783436,0.082746468484402,0.188892990350723,0.282799631357193,0.181054562330246,0.070183090865612,-0.061098661273718));
res += mul(Get(s0,dx,dy), float4x4(-0.013012892566621,-0.011869916692376,0.148068279027939,0.111655473709106,-0.197393119335175,0.165229618549347,-0.079674452543259,0.209102332592010,0.179933056235313,-0.018115578219295,0.168471291661263,-0.144774824380875,0.023843633010983,-0.003818886354566,-0.161853238940239,0.099160254001617));
res += mul(Get(s1,-dx,-dy), float4x4(-0.016628459095955,0.056344538927078,-0.036234494298697,-0.101154781877995,-0.095536917448044,0.218583703041077,0.138334125280380,0.004157685674727,-0.090116120874882,-0.109241522848606,0.060358293354511,0.168691083788872,-0.122915096580982,-0.054819591343403,-0.024917757138610,0.039553325623274));
res += mul(Get(s1,-dx,0), float4x4(0.117372475564480,0.143559083342552,-0.199969828128815,-0.194806948304176,-0.180508121848106,0.067799657583237,0.211707502603531,-0.463068693876266,-0.009980807080865,0.018900968134403,-0.015361591242254,-0.121855519711971,0.118757113814354,-0.034763582050800,-0.039859347045422,0.052513033151627));
res += mul(Get(s1,-dx,dy), float4x4(-0.019795155152678,-0.134884685277939,-0.157591462135315,-0.036668352782726,0.125028789043427,0.163422897458076,-0.179369732737541,-0.533214330673218,-0.005773939657956,-0.009658272378147,0.382267385721207,-0.154785215854645,0.044971261173487,-0.022877130657434,0.018369039520621,0.014997574500740));
res += mul(Get(s1,0,-dy), float4x4(0.058379992842674,0.158776968717575,-0.009276267141104,-0.219793155789375,0.056091811507940,-0.199619933962822,-0.054203588515520,-0.119473092257977,-0.039490208029747,0.003348329570144,0.033871479332447,0.246337190270424,0.029127119109035,-0.296478778123856,-0.195081681013107,0.038212232291698));
res += mul(Get(s1,0,0), float4x4(-0.049880955368280,0.213289916515350,-0.241325587034225,-0.588320493698120,0.124251328408718,0.225277125835419,-0.068955704569817,-0.141602173447609,-0.050243657082319,0.066583022475243,0.327146708965302,-0.611173033714294,0.025639608502388,0.138535320758820,-0.162562474608421,-0.003965600393713));
res += mul(Get(s1,0,dy), float4x4(-0.270677268505096,0.059078387916088,-0.225984483957291,-0.194871589541435,-0.041784349828959,0.145023182034492,0.071650743484497,-0.412084430456161,-0.038421545177698,-0.081547059118748,0.118237577378750,-0.335315018892288,0.009613730013371,0.059831142425537,-0.059334546327591,0.139914870262146));
res += mul(Get(s1,dx,-dy), float4x4(-0.085336863994598,0.201786667108536,-0.192708373069763,0.059233997017145,-0.026626754552126,0.000562630535569,-0.148583948612213,-0.190527990460396,-0.044995095580816,-0.293590784072876,-0.224573016166687,-0.311765670776367,0.052763462066650,-0.052159972488880,-0.292952775955200,-0.401441782712936));
res += mul(Get(s1,dx,0), float4x4(0.115418940782547,0.049332294613123,0.095826648175716,0.007078486494720,0.034703776240349,-0.132838055491447,-0.183394387364388,-0.011382284574211,0.094741627573967,0.143489331007004,-0.102055296301842,-0.416182875633240,-0.018892297521234,-0.245760798454285,-0.572659313678741,-0.542604565620422));
res += mul(Get(s1,dx,dy), float4x4(-0.014316109009087,0.059680301696062,0.092647679150105,0.079453222453594,0.125382497906685,-0.242558583617210,0.031943142414093,-0.089561849832535,0.007671068422496,-0.053337100893259,-0.030277876183391,0.180775135755539,-0.015615159645677,-0.324408620595932,-0.282962352037430,-0.117417611181736));
res += mul(Get(s2,-dx,-dy), float4x4(0.276129633188248,0.212641075253487,0.139483854174614,-0.345769613981247,-0.003406394738704,0.151334002614021,-0.059936545789242,0.033961508423090,0.105558373034000,0.040713481605053,-0.116891875863075,-0.135444417595863,0.057092737406492,0.031601849943399,-0.203319340944290,-0.007330199703574));
res += mul(Get(s2,-dx,0), float4x4(0.249622777104378,0.068156614899635,0.079718448221684,-0.015449678525329,-0.253460913896561,0.117961727082729,-0.159754112362862,0.144144371151924,0.019377911463380,0.053314734250307,-0.082406394183636,0.074063539505005,0.050103969871998,-0.040663681924343,-0.078325189650059,0.404354780912399));
res += mul(Get(s2,-dx,dy), float4x4(0.098807640373707,0.084921747446060,0.110154233872890,0.083518996834755,-0.182922348380089,0.027639796957374,-0.138711199164391,0.121807865798473,-0.015239692293108,0.014565579593182,-0.166943803429604,0.073123998939991,-0.024353913962841,0.084985569119453,-0.043001167476177,0.014764497056603));
res += mul(Get(s2,0,-dy), float4x4(0.057307962328196,-0.096675135195255,0.091577313840389,0.240933075547218,-0.083444751799107,0.246514320373535,-0.218305706977844,-0.482773303985596,0.029811350628734,0.140063181519508,0.074301712214947,-0.093346402049065,0.019062003120780,-0.212478056550026,-0.223185256123543,0.038169927895069));
res += mul(Get(s2,0,0), float4x4(0.200300797820091,-0.110594905912876,-0.213254630565643,0.371119230985641,-0.866002023220062,0.023191841319203,-0.597353518009186,-0.391083985567093,0.032301805913448,0.129380717873573,0.086638025939465,-0.131989955902100,-0.101912282407284,-0.150544971227646,0.019269708544016,-0.235622644424438));
res += mul(Get(s2,0,dy), float4x4(0.150710061192513,0.187104612588882,-0.171079695224762,0.119434028863907,-0.123029559850693,0.060536850243807,-0.154466181993484,0.071425460278988,0.065857417881489,-0.090370364487171,-0.014876238070428,0.080810666084290,-0.635261952877045,0.249386161565781,-0.166335910558701,-0.365192949771881));
res += mul(Get(s2,dx,-dy), float4x4(0.144147321581841,0.422742933034897,0.138676583766937,0.215622380375862,-0.066804349422455,0.197411105036736,-0.360021352767944,-0.051829095929861,0.064386472105980,-0.067057631909847,0.127959877252579,0.051767855882645,-0.037031419575214,-0.380407601594925,-0.123709268867970,-0.123369559645653));
res += mul(Get(s2,dx,0), float4x4(-0.193384155631065,0.059637241065502,0.207456454634666,-0.357416540384293,-0.327745467424393,-0.345248192548752,-0.532942712306976,-0.248594939708710,0.117169827222824,0.105507172644138,0.263998448848724,-0.161348134279251,-0.104116894304752,-0.112838633358479,0.019984981045127,-0.010433232411742));
res += mul(Get(s2,dx,dy), float4x4(0.070715777575970,0.004307172261178,0.007137974258512,-0.201215222477913,-0.035016808658838,-0.297290533781052,-0.081737756729126,-0.016440961509943,-0.069851830601692,0.043479409068823,-0.068437963724136,-0.168414950370789,0.030844368040562,0.012025271542370,-0.004657273180783,-0.090918757021427));
res += mul(Get(s3,-dx,-dy), float4x4(0.023788560181856,-0.088227428495884,0.032063327729702,-0.006267878692597,0.008315676823258,-0.101173378527164,-0.326910287141800,-0.186194315552711,-0.008904120884836,0.036145590245724,0.276637107133865,-0.487959295511246,0.164003938436508,0.012092294171453,0.144709259271622,-0.052431624382734));
res += mul(Get(s3,-dx,0), float4x4(0.002748338272795,-0.028401112183928,0.021544974297285,0.022470097988844,-0.438605934381485,0.033829659223557,-0.245135486125946,-0.686905145645142,-0.282753080129623,0.021467201411724,0.082343570888042,0.021055325865746,-0.057740334421396,0.003231109585613,0.144443213939667,-0.466663390398026));
res += mul(Get(s3,-dx,dy), float4x4(-0.005465026013553,-0.035687718540430,-0.072107188403606,0.016936013475060,-0.083488523960114,-0.174454361200333,0.020619099959731,-0.059852626174688,0.090421549975872,0.099163398146629,-0.027263140305877,0.010739748366177,0.136517494916916,0.283258587121964,-0.143263101577759,-0.171672418713570));
res += mul(Get(s3,0,-dy), float4x4(0.135390445590019,-0.099783249199390,0.191000893712044,-0.070504121482372,-0.051433857530355,-0.113416627049446,-0.511867344379425,-0.051949016749859,0.062503017485142,-0.205267876386642,-0.239420339465141,-0.900207400321960,-0.041266810148954,0.086369492113590,-0.033474784344435,-0.374585896730423));
res += mul(Get(s3,0,0), float4x4(0.007792813237756,-0.050263810902834,0.118245944380760,-0.646483242511749,-0.500631690025330,0.193547770380974,-0.517954766750336,-0.802802383899689,-0.349962443113327,-0.034647919237614,0.060119915753603,0.060859590768814,-0.022028081119061,-0.078409492969513,0.264799803495407,-0.017430219799280));
res += mul(Get(s3,0,dy), float4x4(0.004067092668265,-0.178802788257599,0.120067104697227,-0.044338926672935,-0.161286681890488,-0.084823511540890,-0.029291801154613,-0.463426172733307,0.015208577737212,0.063612066209316,0.079095542430878,-0.053089179098606,0.030549062415957,0.255374073982239,0.200385466217995,0.048058532178402));
res += mul(Get(s3,dx,-dy), float4x4(0.091251976788044,-0.103938966989517,-0.014082600362599,-0.157639950513840,0.035137526690960,-0.060351584106684,-0.098770648241043,-0.100156083703041,-0.036856006830931,-0.211921036243439,-0.105550095438957,-0.290834724903107,-0.015853941440582,0.023750342428684,0.096747145056725,0.121880739927292));
res += mul(Get(s3,dx,0), float4x4(0.179523944854736,-0.069049596786499,0.011901373043656,-0.627852261066437,-0.039321206510067,0.031069736927748,-0.230626121163368,-0.297033846378326,-0.131025880575180,0.035286225378513,-0.121117837727070,0.091864094138145,-0.092577569186687,-0.138581559062004,0.064928419888020,0.557785511016846));
res += mul(Get(s3,dx,dy), float4x4(0.065092325210571,-0.210476249456406,0.050957471132278,0.011283939704299,-0.163261443376541,-0.365962684154510,-0.069380618631840,-0.070081926882267,0.095699578523636,-0.026291923597455,0.187937244772911,0.024080472066998,0.115696310997009,-0.036729432642460,0.160280898213387,-0.087862111628056));
res += mul(Get(s4,-dx,-dy), float4x4(0.018367670476437,-0.214666351675987,0.053321484476328,-0.022324690595269,-0.063634432852268,0.177867218852043,-0.185322433710098,0.059769839048386,0.212433427572250,0.230471312999725,-0.009495018050075,-0.070248886942863,0.008602960035205,0.027756100520492,-0.010543434880674,-0.011697330512106));
res += mul(Get(s4,-dx,0), float4x4(-0.020502978935838,0.120984561741352,-0.092118173837662,-0.116642683744431,0.145186647772789,0.010685242712498,0.131960019469261,0.235219284892082,0.143506467342377,0.113058969378471,-0.119897373020649,-0.215900614857674,0.086651131510735,-0.037268344312906,0.150225564837456,-0.316824465990067));
res += mul(Get(s4,-dx,dy), float4x4(0.054859567433596,0.064338795840740,0.066468119621277,0.020191157236695,0.104221254587173,0.255029082298279,0.084137178957462,0.224518999457359,0.165320709347725,0.070741593837738,0.010916674509645,-0.248357996344566,0.028999671339989,0.004681686405092,-0.054191432893276,-0.055633563548326));
res += mul(Get(s4,0,-dy), float4x4(-0.056289609521627,-0.140772089362144,-0.030187008902431,-0.125924810767174,-0.112243868410587,0.132078856229782,0.336475700139999,0.420098870992661,0.229883953928947,0.136197790503502,0.371611833572388,0.280809760093689,0.011307924054563,-0.034628283232450,0.038403484970331,-0.005558050703257));
res += mul(Get(s4,0,0), float4x4(-0.092953816056252,-0.073485031723976,-0.282346516847610,0.181233957409859,0.273012071847916,-0.301149815320969,0.066212795674801,0.185764893889427,0.024856241419911,-0.062822505831718,-0.051033463329077,0.449170500040054,0.191807091236115,0.137464821338654,-0.091361097991467,-0.916463494300842));
res += mul(Get(s4,0,dy), float4x4(0.091841168701649,-0.184661656618118,-0.044599559158087,-0.131748557090759,0.272173702716827,0.175951376557350,0.123325251042843,0.240647077560425,0.502220094203949,-0.113046392798424,-0.038528118282557,-0.295997947454453,-0.093376994132996,-0.124526455998421,-0.090018257498741,-0.146248891949654));
res += mul(Get(s4,dx,-dy), float4x4(0.182023525238037,0.022904934361577,-0.170850932598114,-0.041695579886436,-0.190234586596489,0.108621612191200,0.142186760902405,0.147632434964180,-0.029465623199940,0.168273583054543,-0.102420166134834,-0.024647662416101,-0.125616312026978,-0.331976711750031,-0.076097570359707,0.018093472346663));
res += mul(Get(s4,dx,0), float4x4(0.079465858638287,-0.158833190798759,0.101654842495918,-0.106131888926029,-0.043955948203802,-0.057441454380751,0.017330268397927,0.059242583811283,0.052153017371893,0.048129584640265,0.043330676853657,0.114841245114803,0.017242474481463,-0.103969782590866,-0.127075597643852,-0.075307227671146));
res += mul(Get(s4,dx,dy), float4x4(-0.193051010370255,-0.104154519736767,-0.051627788692713,-0.204466268420219,0.156450584530830,0.242160528898239,0.069233208894730,0.168671280145645,0.311828404664993,-0.028431095182896,-0.171569660305977,-0.234156504273415,0.089265622198582,-0.100021481513977,-0.236666649580002,-0.053930915892124));
res += mul(Get(s5,-dx,-dy), float4x4(0.011982192285359,-0.028096109628677,-0.041876226663589,0.031545575708151,-0.004342308267951,-0.126517683267593,0.057643905282021,0.076840631663799,0.104130402207375,-0.188501358032227,0.211538657546043,-0.202559247612953,-0.044707182794809,-0.144519656896591,0.038080759346485,-0.116290688514709));
res += mul(Get(s5,-dx,0), float4x4(0.009211030788720,-0.085237517952919,-0.162619769573212,0.045733861625195,0.044200468808413,0.134233936667442,0.063026629388332,-0.061969388276339,0.123563438653946,0.120903648436069,0.094898186624050,-0.160382166504860,-0.042323224246502,-0.208423644304276,-0.168448582291603,0.043344810605049));
res += mul(Get(s5,-dx,dy), float4x4(-0.017008963972330,0.011861082166433,0.121012412011623,-0.033933829516172,-0.007752496283501,0.068490982055664,0.223122864961624,-0.146436020731926,0.072318002581596,-0.061058096587658,0.067029558122158,-0.089406959712505,0.234412714838982,-0.136563226580620,-0.114994816482067,-0.096016600728035));
res += mul(Get(s5,0,-dy), float4x4(-0.002140637021512,-0.092166349291801,-0.040850207209587,0.223509967327118,0.064754985272884,-0.178131014108658,-0.058122288435698,0.391898483037949,0.329225450754166,-0.300301373004913,0.100596874952316,-0.076708182692528,-0.080610744655132,-0.109770394861698,0.452090919017792,-0.261328011751175));
res += mul(Get(s5,0,0), float4x4(0.249477788805962,0.034981552511454,0.116048172116280,-0.098285079002380,0.059341270476580,0.182856410741806,-0.291343331336975,0.064873464405537,-0.025844478979707,0.138406187295914,0.220576614141464,-0.340538382530212,-0.240510746836662,0.061684943735600,-0.190107792615891,0.230957746505737));
res += mul(Get(s5,0,dy), float4x4(-0.163677453994751,0.198072314262390,0.176760762929916,-0.097399875521660,0.154152318835258,0.047899577766657,0.167698413133621,0.127389371395111,0.398389577865601,0.026666022837162,-0.195004299283028,-0.014306714758277,0.322715312242508,-0.083726257085800,-0.004996902309358,-0.098095841705799));
res += mul(Get(s5,dx,-dy), float4x4(0.035531301051378,-0.111642695963383,-0.047259453684092,-0.100968196988106,-0.003143748501316,-0.352491021156311,0.073222301900387,-0.017224239185452,0.082680530846119,-0.430608093738556,-0.044386137276888,0.138232961297035,-0.047238957136869,-0.056226633489132,0.086791887879372,0.158553585410118));
res += mul(Get(s5,dx,0), float4x4(0.015357396565378,-0.109149940311909,0.094378396868706,-0.161719784140587,0.180106222629547,0.194832146167755,-0.074716091156006,0.058342978358269,-0.005663902498782,-0.338272362947464,-0.024248823523521,-0.059049762785435,0.025170803070068,-0.078102029860020,0.155168086290359,-0.001151831471361));
res += mul(Get(s5,dx,dy), float4x4(-0.266502290964127,-0.130276933312416,0.083429403603077,0.060157015919685,-0.018460981547832,0.116977244615555,-0.125315874814987,-0.060578741133213,0.090780839323997,-0.431539207696915,-0.045341908931732,-0.150337055325508,0.071508318185806,-0.056095257401466,-0.099365226924419,0.092740513384342));
res += tex2D(s6, tex);
res = max(float4(0, 0, 0, 0), res) + float4(0.146881118416786,0.316366940736771,0.164474472403526,-0.041780956089497) * min(float4(0, 0, 0, 0), res);
return res;
}
