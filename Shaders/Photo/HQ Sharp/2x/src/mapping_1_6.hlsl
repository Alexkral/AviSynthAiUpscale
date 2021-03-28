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
float4 res = float4(-0.019150834530592,0.015394007787108,-0.118330381810665,-0.264131724834442);
res += mul(Get(s0,-dx,-dy), float4x4(0.010087626986206,-0.080125793814659,0.051944226026535,-0.021571410819888,-0.114474818110466,-0.022440552711487,-0.057121448218822,-0.176264896988869,0.026804048568010,-0.143204450607300,-0.011791802942753,-0.110550917685032,-0.076914384961128,0.010163329541683,0.012183235958219,0.014222315512598));
res += mul(Get(s0,-dx,0), float4x4(-0.010440115816891,0.132261693477631,0.105920121073723,-0.068717941641808,-0.044890906661749,0.063593223690987,0.029861450195313,0.129682332277298,0.169619888067245,-0.055341500788927,-0.059530418366194,-0.164287388324738,0.026083216071129,0.024248844012618,0.038843240588903,0.024333611130714));
res += mul(Get(s0,-dx,dy), float4x4(0.007543413899839,-0.106489889323711,-0.031927641481161,-0.037527088075876,0.061803068965673,-0.054489254951477,-0.009832388721406,0.029054800048470,-0.017281781882048,0.042361147701740,0.023195186629891,0.061468843370676,-0.017464349046350,0.016720781102777,-0.021450914442539,-0.026402514427900));
res += mul(Get(s0,0,-dy), float4x4(0.018029810860753,-0.051833171397448,0.005533290561289,0.006144240964204,-0.162339836359024,-0.109092652797699,0.005934637505561,0.043325524777174,-0.169331148266792,0.114610165357590,-0.001889738603495,-0.103403367102146,-0.054558221250772,-0.039228711277246,0.011811873875558,-0.024315565824509));
res += mul(Get(s0,0,0), float4x4(-0.026519345119596,0.027866331860423,0.151918292045593,0.014459448866546,0.130720853805542,0.004050974734128,0.021951852366328,0.082882471382618,-0.009573517367244,-0.089395381510258,0.006510919425637,0.007604054175317,0.019790103659034,0.102288171648979,0.024628363549709,-0.023310374468565));
res += mul(Get(s0,0,dy), float4x4(-0.020295936614275,-0.028392732143402,-0.004329900722951,0.022538222372532,-0.053168680518866,0.065006792545319,0.013687117956579,0.112787686288357,0.120865225791931,-0.065941467881203,-0.063693501055241,-0.182219967246056,-0.034499708563089,0.001403553760611,0.019568333402276,-0.005296857561916));
res += mul(Get(s0,dx,-dy), float4x4(0.035670392215252,-0.056661929935217,-0.040411796420813,-0.054734494537115,-0.010855470784009,-0.016097059473395,0.050656203180552,-0.029952833428979,-0.034063328057528,-0.058544475585222,-0.015589572489262,-0.027270918712020,-0.014289003796875,-0.064865313470364,0.053469143807888,0.000277556566289));
res += mul(Get(s0,dx,0), float4x4(-0.049866214394569,0.041976984590292,0.162854373455048,0.082700766623020,0.113386385142803,0.000338995014317,0.010522111319005,0.061107683926821,0.004884396214038,0.052534401416779,-0.004805529024452,-0.015626722946763,-0.014145628549159,-0.028097912669182,0.007977811619639,-0.012562326155603));
res += mul(Get(s0,dx,dy), float4x4(0.027301128953695,-0.012908390723169,0.006094846874475,-0.045539785176516,0.091912053525448,0.013685686513782,-0.057182170450687,-0.067398160696030,0.057738356292248,0.048381704837084,-0.044519189745188,0.013360300101340,-0.014373600482941,-0.070494145154953,0.014096798375249,-0.045429222285748));
res += mul(Get(s1,-dx,-dy), float4x4(-0.085031516849995,0.125987708568573,-0.036409195512533,-0.080952845513821,0.000219981884584,0.051994875073433,-0.016227064654231,0.023233711719513,-0.040690250694752,-0.060105010867119,-0.047779783606529,-0.017343949526548,-0.012418148107827,-0.074125491082668,-0.048903603106737,-0.062127005308867));
res += mul(Get(s1,-dx,0), float4x4(-0.217096149921417,0.052002783864737,0.121901884675026,0.257263720035553,0.044663827866316,-0.095274142920971,-0.017248069867492,-0.048647373914719,-0.094549886882305,0.145585358142853,0.010019385255873,0.203838780522346,-0.076412893831730,0.038254313170910,0.001140199252404,0.041356630623341));
res += mul(Get(s1,-dx,dy), float4x4(-0.015360727906227,-0.025787547230721,0.006081738974899,0.122791796922684,-0.024971060454845,0.072753369808197,0.012589870952070,-0.061983373016119,0.051648080348969,-0.108981572091579,0.028262428939342,-0.024617774412036,-0.012616315856576,-0.017534963786602,0.007871964015067,-0.115909703075886));
res += mul(Get(s1,0,-dy), float4x4(-0.131326213479042,-0.195684209465981,-0.045962486416101,-0.002044115681201,0.006854195147753,-0.070572778582573,0.015296951867640,-0.003566523548216,-0.054131858050823,-0.095761276781559,0.054843489080667,-0.123185724020004,0.029723845422268,-0.071687251329422,0.071403354406357,0.070390298962593));
res += mul(Get(s1,0,0), float4x4(0.239328533411026,-0.049323379993439,0.036848697811365,-0.047952149063349,-0.108769439160824,0.053574569523335,-0.005974935833365,0.051048208028078,0.167580708861351,-0.072994649410248,-0.138202741742134,-0.356848448514938,-0.010883058421314,-0.107991464436054,-0.125098317861557,-0.160213395953178));
res += mul(Get(s1,0,dy), float4x4(0.016066595911980,0.074247717857361,-0.042348500341177,0.003308170475066,0.037934124469757,-0.114501826465130,0.041209954768419,-0.061100598424673,-0.036355495452881,0.122040972113609,0.074074685573578,-0.049128524959087,-0.064659520983696,0.015101974830031,0.082645006477833,0.033273622393608));
res += mul(Get(s1,dx,-dy), float4x4(-0.023838790133595,0.049650490283966,-0.011250420473516,-0.054316859692335,0.023278029635549,-0.002789767226204,0.066019259393215,-0.012977145612240,-0.073222331702709,0.138003528118134,0.070823475718498,0.004503977950662,-0.033907715231180,0.016978111118078,0.083707123994827,-0.037781242281199));
res += mul(Get(s1,dx,0), float4x4(0.111446209251881,0.005210604518652,0.005877254530787,0.072976805269718,-0.025722291320562,-0.005903426092118,-0.084289364516735,-0.037715423852205,0.013245986774564,-0.080110557377338,-0.053783576935530,-0.033243138343096,-0.111622482538223,0.102769121527672,-0.087563700973988,0.027599541470408));
res += mul(Get(s1,dx,dy), float4x4(-0.003771709045395,-0.043376468122005,0.014291648752987,-0.027414441108704,0.009493940509856,0.021806640550494,0.107323862612247,0.040763687342405,0.013106844387949,-0.023842724040151,0.081365548074245,0.065034225583076,0.012260756455362,0.052086614072323,0.046621154993773,0.030408341437578));
res += mul(Get(s2,-dx,-dy), float4x4(-0.056791435927153,-0.186825081706047,-0.011982501484454,-0.120992958545685,0.035045817494392,-0.138559117913246,-0.025357151404023,0.036365900188684,0.064867503941059,0.079510197043419,0.032774105668068,-0.049429323524237,0.025592124089599,-0.027263667434454,0.016165608540177,-0.075638897716999));
res += mul(Get(s2,-dx,0), float4x4(-0.012540044263005,0.060320980846882,0.050943829119205,-0.016331810504198,-0.035102609544992,0.066060021519661,0.029973834753036,0.186205789446831,0.018623478710651,-0.057353552430868,0.016633268445730,-0.075666345655918,-0.074093997478485,-0.016588289290667,0.031164053827524,-0.148591145873070));
res += mul(Get(s2,-dx,dy), float4x4(-0.006217559799552,0.022649938240647,-0.017365736886859,0.024656841531396,0.000765333825257,-0.018953030928969,-0.004887568764389,0.073347471654415,-0.015206347219646,0.075582295656204,0.009457366541028,-0.037789523601532,-0.012919906526804,-0.034385677427053,-0.000442271499196,-0.056262049823999));
res += mul(Get(s2,0,-dy), float4x4(0.006356955505908,-0.126810178160667,-0.018126707524061,-0.069794364273548,0.107702814042568,-0.141009792685509,-0.011384123936296,-0.037503030151129,0.026163496077061,-0.032734904438257,0.027047067880630,0.047557443380356,0.003887185361236,0.072491660714149,-0.064473077654839,0.031783405691385));
res += mul(Get(s2,0,0), float4x4(0.044754408299923,0.042385019361973,-0.011570574715734,-0.035318844020367,0.061875522136688,-0.040585592389107,0.022457664832473,-0.025316983461380,-0.057895466685295,0.035230308771133,0.089302532374859,0.087143085896969,-0.057563304901123,0.045831155031919,0.082462996244431,0.120744198560715));
res += mul(Get(s2,0,dy), float4x4(-0.014414553530514,-0.056805077940226,0.012445731088519,0.047291029244661,-0.089289672672749,0.107792615890503,0.012049575336277,0.022174675017595,0.102559074759483,-0.106258809566498,-0.006538152229041,0.023863200098276,0.024417081847787,-0.030084975063801,-0.012313827872276,0.050760369747877));
res += mul(Get(s2,dx,-dy), float4x4(-0.024498978629708,0.096413388848305,0.006367712747306,-0.029359389096498,-0.005705470684916,0.003212394192815,-0.001988637493923,-0.031693376600742,0.076213814318180,-0.027503212913871,0.005469071213156,-0.018338706344366,0.024394171312451,-0.005634650122374,-0.069025561213493,0.034070152789354));
res += mul(Get(s2,dx,0), float4x4(0.005206583533436,0.000989450956695,-0.033634793013334,0.010891657322645,-0.018318157643080,-0.012063793838024,0.016006980091333,0.038205854594707,0.002003923524171,0.032153520733118,0.071085050702095,-0.001435232697986,0.008156921714544,0.004518959205598,0.072369433939457,0.070118874311447));
res += mul(Get(s2,dx,dy), float4x4(0.013254806399345,-0.004918438382447,0.010748320259154,0.026247479021549,-0.005944965407252,0.025139411911368,0.000493259693030,-0.094565793871880,0.011650386266410,0.000692690082360,-0.015327936969697,0.036696631461382,-0.012670939788222,-0.020077463239431,0.020875899121165,-0.021392401307821));
res += mul(Get(s3,-dx,-dy), float4x4(-0.009578740224242,0.135034844279289,0.012932426296175,0.029144486412406,-0.097280338406563,-0.281562060117722,-0.040879696607590,-0.062305662781000,-0.116869106888771,0.191080927848816,-0.006509034894407,0.033589567989111,-0.024561297148466,0.039392907172441,0.009576735086739,0.092990934848785));
res += mul(Get(s3,-dx,0), float4x4(0.007306539453566,-0.039847973734140,0.005746202077717,-0.148865476250648,-0.014756130985916,0.173366591334343,0.111865907907486,0.223059713840485,0.041538774967194,-0.230478793382645,0.064313560724258,-0.079317621886730,-0.057022508233786,0.032216534018517,-0.009049280546606,0.051795963197947));
res += mul(Get(s3,-dx,dy), float4x4(-0.007191312965006,-0.085426099598408,-0.041026085615158,-0.175473064184189,-0.106850832700729,0.022506387904286,-0.025619056075811,0.059009708464146,0.030980987474322,-0.009166304953396,-0.089207559823990,-0.049948267638683,0.022481555119157,-0.010145707987249,-0.030219117179513,-0.153076305985451));
res += mul(Get(s3,0,-dy), float4x4(0.171053975820541,0.100422210991383,-0.017198603600264,0.011915945447981,0.009941912256181,-0.211816444993019,0.013067997992039,-0.204580053687096,-0.039181288331747,-0.223425760865211,-0.088126540184021,-0.090747192502022,0.076246470212936,0.068105265498161,0.009559181518853,0.052186049520969));
res += mul(Get(s3,0,0), float4x4(-0.030935006216168,-0.019129265099764,0.033638693392277,-0.014884443022311,-0.004343403037637,0.155614539980888,-0.026638230308890,0.067588701844215,-0.223612695932388,0.266231924295425,0.223964825272560,0.342328518629074,0.005922304466367,-0.015219217166305,-0.055950820446014,-0.128464639186859));
res += mul(Get(s3,0,dy), float4x4(-0.022872008383274,-0.060285270214081,-0.033840544521809,-0.027959696948528,-0.081936769187450,0.006918998435140,0.049560867249966,-0.061555713415146,0.092756889760494,-0.159268945455551,-0.101684615015984,0.012953674420714,-0.129602491855621,0.066805139183998,0.022835137322545,0.050208497792482));
res += mul(Get(s3,dx,-dy), float4x4(0.027694420889020,-0.070648893713951,-0.006932689342648,0.059714853763580,-0.144017800688744,0.023133167997003,0.073182649910450,-0.115858949720860,0.143170788884163,0.015202797017992,-0.098284818232059,-0.041801773011684,0.027511883527040,-0.091718487441540,-0.007063630037010,-0.018059926107526));
res += mul(Get(s3,dx,0), float4x4(-0.113926649093628,0.066016905009747,0.042386397719383,0.072835169732571,0.000778804707807,-0.109136871993542,-0.153164267539978,-0.146362408995628,0.069310501217842,-0.026884065940976,0.129877582192421,-0.005410472396761,-0.091283120214939,0.052878163754940,-0.005176317878067,0.042283754795790));
res += mul(Get(s3,dx,dy), float4x4(0.019182240590453,-0.015211884863675,0.007268914487213,0.028913769870996,-0.070668481290340,0.045012969523668,0.064573355019093,-0.021887194365263,-0.013115047477186,0.096790812909603,-0.009217917919159,0.036248967051506,0.000820358283818,-0.062319424003363,0.045955706387758,-0.010839018970728));
res += mul(Get(s4,-dx,-dy), float4x4(0.019691016525030,-0.027412882074714,0.005750597454607,-0.092270366847515,-0.000395216105971,0.057204484939575,0.014196360483766,-0.103771127760410,-0.157968685030937,0.085643902420998,-0.018948193639517,-0.068430468440056,-0.152211248874664,0.085108228027821,-0.042810983955860,-0.207516849040985));
res += mul(Get(s4,-dx,0), float4x4(0.017012907192111,-0.052180387079716,-0.037218030542135,-0.047044903039932,0.041814379394054,-0.078530818223953,-0.052502084523439,-0.142923593521118,0.024161085486412,0.027886848896742,0.047064512968063,0.092567481100559,-0.173073723912239,0.156077295541763,0.199050441384315,0.298553794622421));
res += mul(Get(s4,-dx,dy), float4x4(-0.050005961209536,0.157347068190575,0.057902559638023,0.031098082661629,-0.002854665042832,-0.033155955374241,0.006079827435315,0.020765330642462,0.006194148678333,0.051963217556477,-0.079891033470631,-0.019903913140297,0.007797225378454,-0.068205922842026,-0.009479067288339,0.005933488719165));
res += mul(Get(s4,0,-dy), float4x4(-0.131219133734703,0.034948263317347,0.044049534946680,0.045771751552820,-0.099686749279499,0.064381830394268,-0.005928453523666,-0.053143136203289,-0.043836474418640,-0.275273770093918,-0.036798894405365,-0.004358722362667,-0.069711990654469,-0.222618058323860,-0.065303839743137,-0.017286103218794));
res += mul(Get(s4,0,0), float4x4(-0.007346727419645,-0.088812284171581,-0.049349699169397,0.042569156736135,-0.009738377295434,-0.003224002430215,0.053937803953886,0.008173184469342,0.116482622921467,0.085902832448483,0.002586266025901,-0.052434790879488,0.271658271551132,-0.063031643629074,0.078059226274490,-0.005804393906146));
res += mul(Get(s4,0,dy), float4x4(0.109163656830788,-0.091294243931770,-0.024834904819727,-0.119742013514042,0.035072214901447,-0.031182145699859,-0.076392821967602,-0.101142853498459,-0.020494725555182,-0.064630918204784,-0.068199746310711,-0.040285870432854,-0.076241984963417,0.093751281499863,0.000076263779192,-0.032325047999620));
res += mul(Get(s4,dx,-dy), float4x4(0.002234358806163,0.027070401236415,0.084068700671196,-0.000939766119700,-0.004993643146008,-0.048551570624113,-0.012361443601549,0.027703879401088,-0.037139687687159,-0.003896703943610,0.016522815451026,-0.055627211928368,0.013312167488039,0.054114881902933,-0.009825023822486,0.061070937663317));
res += mul(Get(s4,dx,0), float4x4(-0.010100848041475,0.092465698719025,-0.070780612528324,0.003402336267754,-0.015248049981892,0.084192484617233,0.089386619627476,0.062625370919704,-0.026094086468220,0.086419023573399,-0.014333472587168,0.048214521259069,0.084822461009026,-0.078567072749138,-0.016317052766681,0.013479772023857));
res += mul(Get(s4,dx,dy), float4x4(0.031669430434704,0.025544350966811,-0.011563361622393,0.042058553546667,-0.021545318886638,-0.039828453212976,-0.089889734983444,0.027717167511582,0.058799233287573,-0.050209157168865,-0.050672482699156,-0.041008800268173,0.051558174192905,-0.012639315798879,0.136006936430931,-0.000306267436827));
res += mul(Get(s5,-dx,-dy), float4x4(-0.040514510124922,-0.021206798031926,-0.001619945047423,-0.008021537214518,0.143141508102417,-0.013870651833713,0.014804105274379,-0.199408873915672,-0.285056024789810,0.161818191409111,0.032036595046520,-0.209627464413643,0.120465405285358,-0.197836071252823,-0.075899496674538,-0.133152127265930));
res += mul(Get(s5,-dx,0), float4x4(0.101953804492950,-0.095777273178101,-0.039247069507837,-0.027455018833280,0.128494009375572,-0.259760469198227,-0.032658915966749,-0.239965513348579,-0.181479871273041,-0.255289554595947,-0.057166196405888,-0.499386459589005,-0.001589669496752,0.115502707660198,0.106528714299202,0.026570150628686));
res += mul(Get(s5,-dx,dy), float4x4(0.033302552998066,0.102339036762714,0.019054953008890,-0.061987124383450,0.093643151223660,-0.027335451915860,0.012460547499359,-0.015207187272608,-0.210247099399567,0.030554018914700,0.005253160372376,-0.151654064655304,-0.026834392920136,-0.086213089525700,-0.114954672753811,-0.167025655508041));
res += mul(Get(s5,0,-dy), float4x4(-0.062160618603230,-0.004065935499966,0.022670695558190,-0.027119230479002,-0.138852477073669,0.086702533066273,0.014279910363257,-0.018139827996492,-0.383330732584000,0.195391595363617,-0.021704977378249,-0.043271034955978,0.066030487418175,0.027613956481218,-0.050269749015570,0.068853043019772));
res += mul(Get(s5,0,0), float4x4(-0.015579674392939,0.010518045164645,-0.068181090056896,-0.060078103095293,-0.072627268731594,-0.081708088517189,-0.040840737521648,-0.041541486978531,-0.438285499811172,0.014046089723706,0.010100048966706,-0.127317860722542,-0.122693464159966,0.118938572704792,0.046389419585466,0.228304818272591));
res += mul(Get(s5,0,dy), float4x4(0.055277403444052,-0.033913642168045,0.015341073274612,-0.093970984220505,-0.017703695222735,-0.090040497481823,-0.038691502064466,0.067404791712761,-0.055589124560356,-0.101856991648674,0.006581943016499,-0.111627630889416,-0.070619806647301,-0.134818419814110,-0.016094103455544,-0.034468039870262));
res += mul(Get(s5,dx,-dy), float4x4(-0.038669507950544,-0.054391987621784,0.036184538155794,-0.021921012550592,0.064330287277699,0.099834695458412,-0.025401359423995,0.076088666915894,-0.133515894412994,-0.008556559681892,-0.041240345686674,-0.094584532082081,0.122131928801537,-0.089754328131676,0.011852405965328,-0.060712121427059));
res += mul(Get(s5,dx,0), float4x4(-0.044100545346737,0.086227789521217,-0.100778080523014,-0.015062367543578,0.067833147943020,-0.053066581487656,0.000082505051978,-0.035234738141298,-0.100092925131321,0.136633172631264,0.040709588676691,-0.101022720336914,-0.102694913744926,0.109982274472713,-0.123764164745808,0.072946846485138));
res += mul(Get(s5,dx,dy), float4x4(0.020562632009387,-0.040806416422129,0.041642241179943,0.031992055475712,0.008614337071776,-0.005444865673780,-0.054690185934305,0.059301137924194,-0.033153310418129,-0.061998907476664,0.008031337521970,-0.040379382669926,-0.033690430223942,0.076411217451096,0.057973612099886,0.008625928312540));
res = max(float4(0, 0, 0, 0), res) + float4(0.188378885388374,0.772657036781311,-0.056919571012259,0.000289549352601) * min(float4(0, 0, 0, 0), res);
return res;
}