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
float4 res = float4(-0.073599167168140,-0.086720138788223,0.007198710460216,-0.104476504027843);
res += mul(Get(s0,-dx,-dy), float4x4(0.010347048752010,-0.174525737762451,-0.031147945672274,-0.112545184791088,-0.154719993472099,-0.083610758185387,0.188744798302650,-0.064441949129105,-0.066580571234226,0.021329602226615,-0.166781693696976,0.085921362042427,0.037597626447678,-0.072702646255493,0.058790761977434,0.053131062537432));
res += mul(Get(s0,-dx,0), float4x4(-0.268807053565979,0.103012368083000,-0.028258604928851,-0.136863097548485,-0.033626236021519,0.120340161025524,-0.116598226130009,-0.054127085953951,-0.240256130695343,0.031187444925308,-0.015571455471218,0.110772959887981,0.190341427922249,-0.101760111749172,-0.113285519182682,0.135182127356529));
res += mul(Get(s0,-dx,dy), float4x4(-0.027303151786327,-0.101617865264416,0.019584845751524,-0.035165131092072,-0.140946239233017,0.177808567881584,0.230105102062225,-0.138551861047745,0.051520053297281,-0.168815419077873,0.017571618780494,-0.017928441986442,0.000098415854154,-0.080774933099747,0.058246657252312,0.059031836688519));
res += mul(Get(s0,0,-dy), float4x4(0.038326650857925,-0.336036533117294,0.038268443197012,-0.116798289120197,-0.128660663962364,-0.050039947032928,0.187417179346085,-0.089158490300179,-0.116877809166908,0.088650353252888,0.021401606500149,-0.035135548561811,-0.087958902120590,0.071346327662468,0.037822835147381,0.059329349547625));
res += mul(Get(s0,0,0), float4x4(0.104129970073700,0.157292768359184,-0.373659521341324,-0.250901639461517,0.183715045452118,-0.082340210676193,0.218031764030457,0.121548034250736,0.019833358004689,-0.153708994388580,-0.168027117848396,-0.283137500286102,-0.145272642374039,0.059861652553082,-0.052755717188120,0.053514119237661));
res += mul(Get(s0,0,dy), float4x4(0.021093398332596,-0.137264698743820,0.183188453316689,0.030998034402728,0.046097766608000,-0.013712221756577,-0.248751878738403,-0.111096054315567,-0.052026875317097,-0.017338965088129,0.222053945064545,-0.004409953951836,-0.050355292856693,-0.068962402641773,0.116059944033623,0.048920691013336));
res += mul(Get(s0,dx,-dy), float4x4(0.004514985717833,0.003180197905749,0.078809306025505,0.035900712013245,0.031818632036448,0.082327015697956,0.009567210450768,0.014519107528031,0.098159730434418,0.132663816213608,-0.074012577533722,-0.105658113956451,-0.030338186770678,0.165207430720329,-0.005966410040855,-0.049285195767879));
res += mul(Get(s0,dx,0), float4x4(-0.147003784775734,0.108627282083035,0.101097255945206,0.109530195593834,-0.005568720400333,-0.183958426117897,0.085385784506798,0.093114070594311,-0.011471185833216,-0.100163690745831,-0.180277809500694,-0.071134731173515,-0.037098187953234,0.154086962342262,-0.058005683124065,-0.054211258888245));
res += mul(Get(s0,dx,dy), float4x4(-0.047333259135485,0.078728199005127,0.137946814298630,0.026138748973608,-0.083595111966133,0.010270069353282,-0.151537269353867,-0.067557282745838,0.029285179451108,-0.053592640906572,0.165160194039345,-0.103706315159798,-0.052805885672569,-0.009799223393202,0.081354334950447,-0.027351897209883));
res += mul(Get(s1,-dx,-dy), float4x4(0.108908757567406,0.028192393481731,0.034430705010891,0.110274702310562,-0.148103758692741,-0.011229271069169,-0.187872990965843,0.107312969863415,0.036429092288017,-0.056088831275702,-0.072999939322472,-0.034136500209570,0.209692642092705,0.035335745662451,-0.178289026021957,0.162922531366348));
res += mul(Get(s1,-dx,0), float4x4(0.072596773505211,0.051410187035799,0.006060131359845,0.027776710689068,0.055338475853205,-0.214428052306175,-0.004555413965136,0.218726396560669,-0.124725930392742,0.201042324304581,-0.129410654306412,0.035500988364220,0.244349524378777,-0.018468022346497,0.005595112685114,0.067424364387989));
res += mul(Get(s1,-dx,dy), float4x4(0.038456920534372,-0.049705661833286,0.133610218763351,0.009510561823845,0.086297594010830,-0.168120101094246,0.157387554645538,-0.048121102154255,-0.058367062360048,-0.252768933773041,-0.040035717189312,-0.071916274726391,0.008673941716552,-0.001383894705214,0.075572930276394,-0.007636742200702));
res += mul(Get(s1,0,-dy), float4x4(-0.055851370096207,-0.236144885420799,0.035077296197414,0.032852660864592,-0.103540644049644,0.139119237661362,-0.213491320610046,0.120731800794601,-0.178692325949669,0.061793796718121,-0.014930773526430,-0.018210927024484,0.021264137700200,0.156928345561028,0.036971218883991,0.048948608338833));
res += mul(Get(s1,0,0), float4x4(-0.125189170241356,0.168109700083733,-0.050518311560154,0.187683671712875,-0.171246483922005,0.185630112886429,0.205986157059669,-0.146775603294373,-0.097243823111057,0.126018017530441,0.272989392280579,-0.007943580858409,0.217328161001205,0.032146658748388,-0.097618252038956,0.212434217333794));
res += mul(Get(s1,0,dy), float4x4(-0.096599817276001,0.138266235589981,0.186245054006577,0.110776454210281,0.214762359857559,0.001483757281676,-0.292663484811783,-0.163390398025513,-0.002912649186328,-0.109846465289593,0.113629080355167,0.002135800197721,0.172233924269676,-0.086944259703159,-0.114755474030972,-0.058990832418203));
res += mul(Get(s1,dx,-dy), float4x4(-0.147423371672630,-0.020734913647175,0.034952189773321,0.062777936458588,0.085034407675266,-0.111511476337910,-0.200181528925896,0.098271720111370,-0.023398479446769,0.023451305925846,-0.259261131286621,0.009959912858903,-0.036549758166075,0.058096166700125,-0.017578743398190,0.079253837466240));
res += mul(Get(s1,dx,0), float4x4(-0.121330685913563,0.119619749486446,-0.012832949869335,0.027193862944841,0.017805173993111,0.035852253437042,0.012853822670877,0.055574260652065,0.216769292950630,-0.068598352372646,-0.330555886030197,-0.065339319407940,-0.152027800679207,0.204936027526855,0.086821258068085,0.157833769917488));
res += mul(Get(s1,dx,dy), float4x4(0.045515563338995,-0.043003801256418,-0.223769068717957,-0.054183416068554,-0.047956924885511,0.051652781665325,-0.024708338081837,-0.015215829946101,-0.044275652617216,0.136741399765015,-0.113397128880024,0.060245245695114,-0.085990972816944,0.049633022397757,0.008309208787978,0.039018739014864));
res += mul(Get(s2,-dx,-dy), float4x4(-0.165566891431808,-0.036714572459459,0.030942466109991,0.063230514526367,0.126058459281921,0.113515935838223,-0.076523110270500,-0.058938667178154,0.221283003687859,0.001303773489781,0.110373757779598,-0.096068054437637,-0.119843937456608,-0.210097283124924,-0.214991256594658,0.036737367510796));
res += mul(Get(s2,-dx,0), float4x4(0.229648306965828,-0.153352394700050,0.030920367687941,-0.038967251777649,0.272561818361282,-0.063323341310024,-0.004945709370077,0.014122579246759,0.004425685387105,0.141362205147743,0.029599133878946,-0.117325060069561,0.047311019152403,-0.098478071391582,-0.072791017591953,0.153222411870956));
res += mul(Get(s2,-dx,dy), float4x4(0.012155401520431,0.022161843255162,0.009998635388911,0.013077144511044,0.022057240828872,-0.092178873717785,0.076018795371056,0.054401971399784,-0.143656596541405,0.162880048155785,0.150551453232765,-0.035716887563467,0.062100887298584,-0.056271959096193,-0.228736042976379,-0.105222277343273));
res += mul(Get(s2,0,-dy), float4x4(0.203579679131508,0.038018483668566,0.137997165322304,-0.072881929576397,0.373865127563477,0.346568346023560,0.073166318237782,-0.003901755437255,0.016966955736279,-0.040782537311316,0.127004548907280,-0.086163036525249,0.010272599756718,-0.151731401681900,-0.025046037510037,0.073294647037983));
res += mul(Get(s2,0,0), float4x4(0.112310752272606,0.114649146795273,-0.015255676582456,0.175950020551682,0.073780328035355,0.171707272529602,0.207384929060936,-0.029582638293505,-0.033722069114447,-0.108852341771126,-0.008520425297320,0.025202488526702,-0.127793028950691,0.212216302752495,0.241801336407661,0.351619243621826));
res += mul(Get(s2,0,dy), float4x4(0.221869423985481,0.179443195462227,0.094196908175945,0.022242344915867,0.117595113813877,0.074793845415115,0.063995741307735,0.048326261341572,-0.242237165570259,0.202389642596245,-0.132993906736374,0.115640245378017,-0.029273880645633,0.094200722873211,-0.316327154636383,-0.066286504268646));
res += mul(Get(s2,dx,-dy), float4x4(0.003365008160472,-0.068511933088303,-0.036976840347052,-0.006350467912853,-0.080112546682358,0.188930526375771,0.133041858673096,0.104475021362305,-0.026442470028996,-0.045837845653296,0.062586590647697,0.078638017177582,0.048469070345163,-0.180820435285568,0.008896499872208,0.004997442942113));
res += mul(Get(s2,dx,0), float4x4(-0.080123811960220,-0.023621950298548,0.135187193751335,0.017638348042965,0.006212817039341,0.199517577886581,0.115535095334053,-0.038265004754066,0.112594619393349,0.039897128939629,-0.172690719366074,-0.090860895812511,0.071603961288929,-0.091241776943207,-0.053580690175295,0.112294539809227));
res += mul(Get(s2,dx,dy), float4x4(0.317097187042236,-0.040447026491165,0.018302109092474,-0.019483912736177,0.043744128197432,-0.006534748710692,-0.010968362912536,-0.060996327549219,0.169500261545181,-0.020672123879194,-0.234914019703865,0.021081984043121,-0.027537479996681,0.091555863618851,-0.207842588424683,0.002089476678520));
res += mul(Get(s3,-dx,-dy), float4x4(-0.036492031067610,0.068830639123917,-0.117394067347050,-0.090098783373833,-0.144485041499138,0.078159295022488,-0.064011916518211,-0.018832731992006,0.058049254119396,-0.065581902861595,0.143776938319206,0.041617512702942,0.202558383345604,0.047041542828083,-0.188990235328674,0.051584780216217));
res += mul(Get(s3,-dx,0), float4x4(-0.179585084319115,-0.088821627199650,0.083244107663631,0.106778971850872,-0.449558287858963,-0.093900397419930,0.077787511050701,-0.017413550987840,0.009896859526634,0.186096563935280,0.056160438805819,0.008796821348369,0.082892738282681,0.051052991300821,-0.114942230284214,0.051117878407240));
res += mul(Get(s3,-dx,dy), float4x4(0.028912002220750,0.158543333411217,-0.235946744680405,-0.112515076994896,-0.080566734075546,-0.139058038592339,-0.115060664713383,-0.096388444304466,0.067998312413692,0.076105631887913,-0.029821576550603,-0.033524531871080,-0.029244225472212,-0.099159307777882,0.120385624468327,0.046821434050798));
res += mul(Get(s3,0,-dy), float4x4(0.094739258289337,0.124495275318623,-0.065807178616524,0.014145690947771,-0.009924511425197,0.269254624843597,-0.129150360822678,0.161079555749893,0.084148593246937,0.006564824841917,-0.065808892250061,0.004972420632839,0.102663666009903,-0.051381893455982,-0.064491026103497,-0.040513746440411));
res += mul(Get(s3,0,0), float4x4(-0.012314355000854,0.045342966914177,0.156977951526642,0.069922782480717,0.147193282842636,-0.531620562076569,0.238995403051376,-0.087512046098709,-0.052451126277447,0.065456137061119,0.006134071387351,-0.090080976486206,0.000936125929002,0.030002044513822,-0.061852678656578,0.076340474188328));
res += mul(Get(s3,0,dy), float4x4(0.058970529586077,0.020808290690184,-0.167876914143562,-0.043535750359297,-0.201881647109985,0.022978404536843,0.163514330983162,-0.167863279581070,-0.076373346149921,-0.006213185843080,-0.078465260565281,0.060323182493448,-0.042492095381021,-0.115194350481033,0.228685826063156,0.035620179027319));
res += mul(Get(s3,dx,-dy), float4x4(0.011364428326488,0.110871925950050,-0.009214024990797,-0.065323933959007,-0.094460442662239,0.098652638494968,-0.027124851942062,0.079384841024876,-0.181165933609009,-0.076611287891865,-0.127984762191772,-0.024131426587701,-0.199695631861687,0.071028463542461,0.125909700989723,-0.000563738401979));
res += mul(Get(s3,dx,0), float4x4(0.063843406736851,0.004162768833339,0.013068133033812,-0.036111146211624,0.186251312494278,-0.106200613081455,0.007937111891806,0.098848640918732,-0.058246865868568,0.046905003488064,-0.080521307885647,-0.073789723217487,-0.105017602443695,-0.021548181772232,0.075032107532024,0.051857922226191));
res += mul(Get(s3,dx,dy), float4x4(0.032375238835812,-0.003266746178269,0.105295635759830,-0.030707208439708,0.061367385089397,-0.107623286545277,-0.165056213736534,-0.087923079729080,-0.100972630083561,-0.007964448072016,-0.023121468722820,-0.069639213383198,0.004541925154626,-0.007435339502990,0.120194867253304,-0.027758354321122));
res += mul(Get(s4,-dx,-dy), float4x4(0.036681886762381,0.017560290172696,0.048460818827152,0.062506757676601,-0.108666174113750,-0.004359919577837,-0.022262470796704,-0.010080751962960,0.094976797699928,-0.115240886807442,-0.084149412810802,-0.146699845790863,-0.336005002260208,-0.117311254143715,-0.057563524693251,-0.042446095496416));
res += mul(Get(s4,-dx,0), float4x4(0.064104080200195,0.192896991968155,0.063726618885994,-0.054852608591318,-0.504893481731415,0.158116191625595,-0.005574100185186,0.144411876797676,-0.088110044598579,-0.109130002558231,0.035637635737658,-0.022927653044462,-0.224704951047897,-0.014036783948541,0.002691589761525,-0.064430579543114));
res += mul(Get(s4,-dx,dy), float4x4(-0.067454986274242,-0.144872829318047,-0.090703800320625,-0.002239911118522,-0.076345123350620,-0.173196464776993,0.032977338880301,0.089623808860779,0.003321415744722,-0.088686197996140,-0.298020541667938,-0.031723823398352,-0.067884810268879,-0.046895403414965,-0.185668542981148,-0.094088166952133));
res += mul(Get(s4,0,-dy), float4x4(0.000259849213762,-0.041838698089123,0.087195828557014,-0.103833124041557,0.153217688202858,-0.134400799870491,0.042923334985971,-0.135940298438072,0.040332447737455,-0.201217800378799,0.255953967571259,-0.086014799773693,0.157339975237846,-0.214104920625687,-0.031725175678730,0.084701143205166));
res += mul(Get(s4,0,0), float4x4(-0.016461679711938,0.040052693337202,0.076622076332569,0.105481460690498,0.275115519762039,-0.108463622629642,-0.015475201420486,-0.276683479547501,-0.105600342154503,0.221208304166794,0.034956131130457,0.126099184155464,0.025825694203377,0.013657446950674,-0.061936277896166,0.104368411004543));
res += mul(Get(s4,0,dy), float4x4(0.061470583081245,-0.058514006435871,-0.266242563724518,-0.108115762472153,0.054455582052469,-0.211524024605751,0.006732085254043,0.109450116753578,0.166986927390099,0.023945111781359,-0.360920399427414,-0.176616296172142,0.001864057965577,0.091234356164932,0.010131148621440,-0.015936436131597));
res += mul(Get(s4,dx,-dy), float4x4(0.030691320076585,0.072409577667713,0.021095845848322,0.004856316838413,-0.038366608321667,-0.018303897231817,-0.032692149281502,0.106315858662128,-0.021315203979611,-0.127159297466278,0.029739219695330,-0.029364649206400,-0.068341515958309,0.002728264080361,0.072045110166073,0.055546950548887));
res += mul(Get(s4,dx,0), float4x4(0.023810282349586,0.116275228559971,0.120645187795162,0.098417237401009,-0.021018858999014,-0.016515208408237,0.029469903558493,0.058273699134588,-0.056122515350580,0.081061981618404,0.088376022875309,-0.007970287464559,-0.100291818380356,0.102880105376244,0.074437789618969,-0.018332123756409));
res += mul(Get(s4,dx,dy), float4x4(-0.098986312747002,0.079825647175312,-0.137034580111504,0.016746722161770,0.038310796022415,-0.063689365983009,0.030087862163782,-0.007294223178178,-0.048795148730278,0.054874811321497,0.067049339413643,-0.011037461459637,0.043248645961285,-0.021461604163051,0.059697210788727,0.011679938063025));
res += mul(Get(s5,-dx,-dy), float4x4(-0.060291007161140,-0.047207992523909,0.125596627593040,0.027859304100275,-0.145046666264534,-0.044812098145485,0.083361819386482,-0.188860207796097,0.063286006450653,-0.191278427839279,-0.076241850852966,-0.109967209398746,0.032761938869953,0.038126360625029,-0.111603297293186,0.105143971741199));
res += mul(Get(s5,-dx,0), float4x4(-0.082599930465221,0.223179414868355,-0.098960712552071,0.189387381076813,-0.050524726510048,-0.186015531420708,0.182880803942680,0.040871299803257,-0.081803835928440,-0.092314712703228,0.043072618544102,0.001193647040054,0.020672120153904,-0.059859380125999,-0.242685869336128,0.229077994823456));
res += mul(Get(s5,-dx,dy), float4x4(-0.060738973319530,0.055297754704952,0.012290490791202,0.133888572454453,-0.182998403906822,0.218367993831635,-0.079977862536907,-0.056981798261404,-0.218576431274414,0.034362610429525,0.105159692466259,0.147169172763824,-0.030652374029160,-0.090970866382122,-0.107750788331032,0.111911341547966));
res += mul(Get(s5,0,-dy), float4x4(-0.037786860018969,0.012128236703575,0.147961512207985,-0.077031001448631,0.004080927930772,0.235267877578735,-0.011074068024755,0.075535610318184,-0.086359798908234,-0.176991939544678,0.033814139664173,0.063028931617737,0.076819069683552,0.185379952192307,-0.067231126129627,0.090020559728146));
res += mul(Get(s5,0,0), float4x4(-0.173156008124352,0.168312981724739,-0.050801187753677,0.181889921426773,-0.001431535347365,-0.018177308142185,0.227890595793724,-0.018091326579452,0.171454221010208,-0.041598685085773,-0.074207447469234,0.212378680706024,-0.179123535752296,0.096392177045345,-0.046376969665289,-0.297470480203629));
res += mul(Get(s5,0,dy), float4x4(0.014229753986001,-0.097493663430214,-0.029275611042976,0.018817089498043,0.105686947703362,-0.090820945799351,0.031041404232383,0.056742563843727,-0.093737326562405,-0.093346804380417,-0.006154547911137,0.181853234767914,-0.092799410223961,-0.069313816726208,0.120346017181873,0.088856272399426));
res += mul(Get(s5,dx,-dy), float4x4(0.071113988757133,0.087334789335728,0.073100164532661,-0.039737526327372,0.043207108974457,0.017386846244335,-0.100017122924328,0.015772812068462,0.023910271003842,-0.086525477468967,-0.034721318632364,0.074308648705482,-0.028481712564826,0.003129718359560,-0.095542967319489,0.017831869423389));
res += mul(Get(s5,dx,0), float4x4(0.040114119648933,-0.100154034793377,-0.019640386104584,-0.177239760756493,-0.018154604360461,-0.229907825589180,0.034620452672243,-0.041892156004906,-0.092473335564137,0.043364152312279,0.054237950593233,0.027170782908797,0.119798205792904,0.008575039915740,-0.170164763927460,0.080397754907608));
res += mul(Get(s5,dx,dy), float4x4(0.073211267590523,-0.150509268045425,0.209112122654915,0.005996483378112,-0.078646920621395,-0.064329005777836,-0.041855912655592,-0.037435814738274,0.016443056985736,0.011594169773161,0.136513218283653,-0.006707846652716,0.018228966742754,-0.061852477490902,-0.005603991448879,0.084639802575111));
res = max(float4(0, 0, 0, 0), res) + float4(-0.136987701058388,0.259687632322311,0.083422809839249,-0.092560641467571) * min(float4(0, 0, 0, 0), res);
return res;
}
