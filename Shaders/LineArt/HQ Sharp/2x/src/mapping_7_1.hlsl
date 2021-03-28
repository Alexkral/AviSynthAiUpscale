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
float4 res = float4(0.051933303475380,-0.111447915434837,-0.345928668975830,-0.188924044370651);
res += mul(Get(s0,-dx,-dy), float4x4(0.119024746119976,-0.001909769256599,-0.002756384201348,0.100072555243969,-0.084800340235233,-0.098552003502846,-0.084128767251968,-0.031715895980597,-0.009393742308021,0.049965482205153,0.132829979062080,-0.006220253650099,0.097927734255791,0.031661503016949,0.018891530111432,-0.053446140140295));
res += mul(Get(s0,-dx,0), float4x4(0.004422188270837,-0.208948165178299,-0.093831881880760,-0.072688020765781,0.031577005982399,0.077718369662762,-0.046435844153166,0.139787480235100,0.041968729346991,0.085905186831951,-0.094766683876514,0.060454841703176,-0.069665908813477,0.185810819268227,-0.035748109221458,0.006081573665142));
res += mul(Get(s0,-dx,dy), float4x4(-0.000156043592142,-0.036036625504494,-0.025535270571709,-0.075871713459492,0.057017050683498,-0.105391010642052,-0.083253115415573,0.069666758179665,-0.002933511743322,0.048562601208687,0.030581388622522,-0.006011717021465,-0.073483593761921,-0.034978475421667,0.008810875937343,-0.054473239928484));
res += mul(Get(s0,0,-dy), float4x4(0.182524919509888,0.089178368449211,-0.010939268395305,0.098879881203175,-0.145870015025139,-0.022571358829737,-0.082432329654694,-0.112224318087101,0.025868125259876,0.009669249877334,0.099970914423466,-0.164246767759323,0.088666319847107,-0.048547033220530,0.039361875504255,0.009190402925014));
res += mul(Get(s0,0,0), float4x4(0.278317213058472,-0.030099237337708,-0.111726060509682,0.157142773270607,-0.001125926501118,0.066945418715477,0.141714006662369,0.088164195418358,-0.034501884132624,-0.088275618851185,0.271480500698090,-0.270400434732437,-0.020798029378057,-0.020730443298817,0.280567944049835,-0.018643340095878));
res += mul(Get(s0,0,dy), float4x4(0.002441481687129,-0.064478702843189,0.026672257110476,-0.019094424322248,-0.129638493061066,0.071970164775848,-0.038079895079136,0.040727231651545,0.098545953631401,0.096414357423782,0.114063873887062,-0.058342158794403,0.035496905446053,-0.009381286799908,-0.025128938257694,-0.007015316747129));
res += mul(Get(s0,dx,-dy), float4x4(-0.090129256248474,-0.019580217078328,-0.022909663617611,-0.046695560216904,-0.055737908929586,-0.057829480618238,0.026696108281612,-0.078916266560555,0.118383720517159,-0.008253208361566,0.037135034799576,-0.014075007289648,0.076621942222118,-0.026320261880755,0.135636612772942,-0.055977150797844));
res += mul(Get(s0,dx,0), float4x4(-0.165206342935562,-0.162276521325111,-0.119153194129467,-0.210885167121887,-0.217537462711334,0.105673640966415,0.009318765252829,-0.035695448517799,0.194369301199913,0.012276985682547,-0.014601879753172,0.173165678977966,-0.006243122275919,0.079507559537888,-0.013655445538461,-0.002138172276318));
res += mul(Get(s0,dx,dy), float4x4(0.054108362644911,-0.035657245665789,-0.089108228683472,-0.000595122226514,-0.076993785798550,-0.003067424986511,-0.064300924539566,-0.009667947888374,0.068184643983841,-0.001889147562906,0.086778990924358,0.052130270749331,-0.009753627702594,0.052745800465345,-0.000915497541428,-0.003767850808799));
res += mul(Get(s1,-dx,-dy), float4x4(0.057334609329700,-0.054857563227415,0.007525062654167,0.079758636653423,-0.117134213447571,0.139815792441368,0.022173600271344,0.029683949425817,0.027575446292758,-0.084037125110626,-0.002389703877270,-0.015480322763324,0.088039480149746,0.025890739634633,0.073851093649864,0.135779172182083));
res += mul(Get(s1,-dx,0), float4x4(0.119893461465836,0.045559044927359,-0.006247339304537,0.076234750449657,-0.046405684202909,0.034378021955490,-0.049835775047541,-0.128561958670616,0.085664972662926,-0.052428841590881,0.076131366193295,0.035736590623856,0.030024867504835,0.067188307642937,-0.021059656515718,0.009694783017039));
res += mul(Get(s1,-dx,dy), float4x4(-0.007576287258416,-0.051345355808735,0.032134622335434,0.079839095473289,-0.012860670685768,0.135273575782776,-0.016287893056870,-0.117614693939686,-0.013656397350132,-0.064489692449570,0.096338704228401,0.015077152289450,-0.043438725173473,-0.043441105633974,-0.036641329526901,-0.058679670095444));
res += mul(Get(s1,0,-dy), float4x4(-0.078420981764793,0.023771010339260,0.144375622272491,0.079836934804916,-0.163372516632080,0.200018569827080,0.043599020689726,-0.083249568939209,0.033339023590088,-0.016789102926850,0.008412442170084,0.060688722878695,0.238344684243202,-0.017917411401868,0.040822368115187,0.164088070392609));
res += mul(Get(s1,0,0), float4x4(-0.104202382266521,0.102612353861332,0.096408948302269,-0.103803411126137,-0.173596471548080,0.196523144841194,-0.131046578288078,-0.004411442670971,0.129732549190521,-0.053974397480488,-0.142600461840630,-0.068667292594910,-0.004719770979136,0.085070177912712,0.175905212759972,-0.337394118309021));
res += mul(Get(s1,0,dy), float4x4(-0.210690900683403,-0.263991385698318,-0.327898323535919,-0.222116202116013,0.088430143892765,-0.061286911368370,0.107515200972557,-0.021004103124142,-0.114693947136402,0.096173912286758,0.049265403300524,-0.010073370300233,0.022697793319821,0.097559563815594,0.009597665630281,-0.004158904310316));
res += mul(Get(s1,dx,-dy), float4x4(-0.051549442112446,0.022428758442402,0.057719483971596,0.005498621147126,-0.086365632712841,0.077523507177830,0.077765911817551,0.020275484770536,0.003448815783486,0.048045434057713,0.123727343976498,-0.036328695714474,0.097084745764732,0.114188119769096,0.042758330702782,-0.014846317470074));
res += mul(Get(s1,dx,0), float4x4(-0.034021455794573,-0.110821805894375,0.007384260185063,0.009284936822951,-0.046366203576326,0.202245965600014,0.069525837898254,0.281212121248245,-0.033564269542694,-0.099780857563019,0.083066359162331,-0.279624432325363,0.172883912920952,0.070936121046543,-0.097536005079746,0.174739092588425));
res += mul(Get(s1,dx,dy), float4x4(-0.016109490767121,-0.075542226433754,-0.086562007665634,0.070794023573399,-0.140331923961639,0.072226375341415,0.052992962300777,-0.034058757126331,0.218313530087471,0.018367541953921,-0.001562471035868,-0.056032653898001,0.023593991994858,0.105466112494469,-0.006898757070303,-0.030008839443326));
res += mul(Get(s2,-dx,-dy), float4x4(0.075128383934498,-0.086232170462608,0.002147199120373,0.064332731068134,0.200467959046364,-0.057601451873779,0.084066234529018,-0.041753824800253,-0.042876575142145,-0.122202478349209,-0.124999769032001,-0.107293933629990,0.007980772294104,0.038836739957333,-0.148200735449791,-0.015344339422882));
res += mul(Get(s2,-dx,0), float4x4(0.159880056977272,0.111500278115273,-0.085029102861881,0.091982387006283,0.016663622111082,0.172390505671501,0.036452308297157,0.157250702381134,0.099997304379940,0.031390339136124,0.026283048093319,0.021627807989717,0.063395172357559,-0.027478776872158,0.041345871984959,0.000944145605899));
res += mul(Get(s2,-dx,dy), float4x4(0.010366369038820,-0.013944789767265,-0.083461627364159,0.007329419255257,0.023084217682481,-0.003064888529480,-0.034201059490442,0.090011671185493,0.026147082448006,-0.132823973894119,0.030727872624993,-0.011320178397000,0.052772600203753,-0.035018615424633,0.023584693670273,0.041134130209684));
res += mul(Get(s2,0,-dy), float4x4(0.114392861723900,0.035100117325783,0.009761610068381,0.196387544274330,-0.071468420326710,0.109604798257351,0.169443458318710,0.219176784157753,0.052905872464180,-0.034182481467724,0.099843032658100,-0.007187953218818,-0.159473434090614,0.070277638733387,0.063996501266956,0.003880571806803));
res += mul(Get(s2,0,0), float4x4(-0.057663932442665,-0.053757444024086,0.449238657951355,0.196866065263748,0.029221020638943,0.145158514380455,-0.048276435583830,0.299204200506210,0.272085666656494,-0.054428886622190,-0.010376480408013,0.027374800294638,-0.359169036149979,-0.025042045861483,0.105102159082890,-0.004571403376758));
res += mul(Get(s2,0,dy), float4x4(0.010517323389649,-0.013982058502734,-0.132495552301407,-0.018482821062207,-0.019830234348774,0.028186341747642,-0.031935360282660,0.027706602588296,0.014717185869813,-0.115529790520668,0.137616917490959,0.268428862094879,-0.113560348749161,0.017471043393016,-0.009946905076504,-0.046380419284105));
res += mul(Get(s2,dx,-dy), float4x4(-0.058060102164745,-0.071147412061691,-0.057586114853621,0.100663281977177,-0.072380281984806,-0.014681623317301,0.057234786450863,0.052770927548409,-0.131624341011047,0.022763811051846,0.002160815289244,0.012459279038012,-0.077805630862713,-0.039846032857895,0.036808423697948,-0.055059384554625));
res += mul(Get(s2,dx,0), float4x4(-0.398256838321686,-0.031021414324641,0.025329472497106,-0.070262655615807,0.020883107557893,-0.071424812078476,-0.076556801795959,-0.165730550885201,0.191153526306152,-0.066888928413391,0.068315155804157,-0.032584115862846,-0.276245623826981,-0.034184616059065,-0.225567370653152,0.087926991283894));
res += mul(Get(s2,dx,dy), float4x4(-0.080135911703110,-0.051198840141296,0.056325465440750,0.158494859933853,0.078228555619717,-0.016091460362077,-0.126912146806717,-0.112270496785641,-0.088973790407181,-0.001635856227949,-0.025149941444397,-0.232850030064583,-0.041978310793638,-0.014104485511780,0.119547113776207,0.025724280625582));
res += mul(Get(s3,-dx,-dy), float4x4(-0.027585811913013,-0.124645434319973,-0.285880535840988,-0.007529556285590,0.154221877455711,0.021988542750478,0.108396284282207,0.032314669340849,0.042848788201809,-0.163365021348000,0.063278049230576,-0.008791039697826,0.006000689230859,-0.056130263954401,0.093751132488251,-0.081352256238461));
res += mul(Get(s3,-dx,0), float4x4(0.055974550545216,-0.031335212290287,0.054627370089293,0.035325374454260,0.116002127528191,0.068011090159416,0.091518998146057,0.062072709202766,0.134613811969757,0.020833708345890,0.144434109330177,0.089172504842281,0.019380318000913,-0.257540851831436,0.046828038990498,-0.180514782667160));
res += mul(Get(s3,-dx,dy), float4x4(0.060586221516132,0.122358873486519,-0.059824772179127,0.114898331463337,0.011473721824586,0.153638884425163,0.051485110074282,0.159375518560410,0.037755768746138,0.110976591706276,0.017576664686203,0.085030719637871,0.027041804045439,0.034723155200481,-0.006212391424924,-0.032972224056721));
res += mul(Get(s3,0,-dy), float4x4(0.034371156245470,0.076711222529411,0.009516397491097,-0.022486066445708,0.047665849328041,-0.068289123475552,0.052558671683073,0.018447304144502,-0.095425687730312,0.064277678728104,0.056582793593407,-0.060973469167948,0.030782392248511,0.040690734982491,-0.060714796185493,-0.021243413910270));
res += mul(Get(s3,0,0), float4x4(0.097989849746227,-0.070245049893856,-0.033790793269873,0.044248875230551,-0.121461279690266,-0.237538978457451,0.139296025037766,0.037461642175913,-0.282809495925903,-0.215967968106270,-0.080762408673763,-0.063012197613716,-0.013261779211462,-0.193506196141243,-0.247137352824211,-0.509528696537018));
res += mul(Get(s3,0,dy), float4x4(0.034641686826944,-0.044171441346407,-0.025699723511934,0.038779567927122,0.028124220669270,0.059574317187071,0.060580465942621,-0.044541731476784,0.037923809140921,-0.002953692572191,0.032412562519312,-0.037870556116104,0.039751812815666,-0.058613859117031,0.100383102893829,-0.180837258696556));
res += mul(Get(s3,dx,-dy), float4x4(-0.110814094543457,0.017000639811158,-0.053476564586163,-0.120337687432766,-0.018495401367545,-0.072935268282890,0.092662423849106,-0.050190322101116,0.020140578970313,-0.036270242184401,-0.017278151586652,-0.010270864702761,0.034970842301846,0.141155958175659,0.029756406322122,0.111225247383118));
res += mul(Get(s3,dx,0), float4x4(-0.034547962248325,0.037196662276983,-0.030037760734558,0.060953680425882,0.169969066977501,-0.134128734469414,-0.035778842866421,-0.055515520274639,0.105172030627728,-0.037411779165268,-0.120552912354469,0.163571700453758,0.146121278405190,0.091603450477123,0.021344657987356,0.380790829658508));
res += mul(Get(s3,dx,dy), float4x4(-0.012683639302850,-0.003307981649414,-0.021599411964417,0.003085425822064,-0.009138043969870,-0.043076887726784,0.082323230803013,0.020739510655403,0.007587476633489,-0.063610807061195,-0.008917705155909,0.040205799043179,0.032778199762106,-0.071576841175556,0.034615274518728,0.149606451392174));
res += mul(Get(s4,-dx,-dy), float4x4(0.119728751480579,-0.123141296207905,0.051144767552614,0.093473158776760,0.096299722790718,0.034870214760303,0.107741378247738,0.041798539459705,-0.018770666792989,0.119206391274929,-0.184187024831772,-0.091063991189003,-0.047308094799519,0.020970096811652,0.041553340852261,-0.012282027862966));
res += mul(Get(s4,-dx,0), float4x4(0.183431550860405,-0.005474914796650,-0.111959517002106,0.092183396220207,0.143104061484337,0.156088829040527,0.072632595896721,0.059587985277176,-0.065788134932518,-0.091169513761997,0.117561884224415,-0.012520753778517,0.015226283110678,0.088754959404469,0.095547161996365,-0.137037098407745));
res += mul(Get(s4,-dx,dy), float4x4(-0.008030374534428,-0.079288914799690,0.003708578413352,0.209807679057121,-0.000115587783512,0.032256513834000,0.055948968976736,0.054324500262737,0.032424978911877,0.053581103682518,-0.071250408887863,-0.012992060743272,-0.029360787943006,0.008162285201252,-0.062861509621143,-0.018383502960205));
res += mul(Get(s4,0,-dy), float4x4(-0.118639647960663,-0.081306271255016,-0.136242851614952,-0.086292743682861,-0.040948957204819,0.074785061180592,0.001334997708909,-0.081665888428688,0.086625643074512,0.010598778724670,-0.134923815727234,0.000293847173452,0.013539223000407,-0.012860929593444,0.142158314585686,0.082050465047359));
res += mul(Get(s4,0,0), float4x4(-0.242115095257759,-0.058440707623959,0.055760398507118,-0.128994107246399,0.150134876370430,-0.143944099545479,0.010116107761860,-0.350666433572769,-0.021308328956366,0.047483559697866,-0.134494841098785,0.188565701246262,0.074345007538795,-0.104761973023415,0.045349359512329,0.050174538046122));
res += mul(Get(s4,0,dy), float4x4(-0.065751656889915,0.002073492389172,-0.087006106972694,0.028753116726875,-0.088700436055660,0.142576143145561,-0.009558111429214,0.008645760826766,0.019439538940787,-0.047920312732458,0.092821128666401,0.047185339033604,-0.124722614884377,0.084612064063549,-0.213905707001686,-0.117733649909496));
res += mul(Get(s4,dx,-dy), float4x4(0.148539483547211,0.015492131933570,-0.093091838061810,0.064291454851627,0.061154436320066,0.015060075558722,-0.057513091713190,-0.048095881938934,0.061163477599621,-0.074163436889648,-0.040403433144093,-0.084756106138229,-0.078620240092278,0.077705666422844,0.002179812174290,-0.024173555895686));
res += mul(Get(s4,dx,0), float4x4(0.163441300392151,0.030341440811753,-0.047353204339743,0.233441457152367,0.207650199532509,-0.013515049591660,-0.023031903430820,0.147695854306221,-0.014527142979205,0.010273952037096,-0.007028855849057,-0.149195060133934,-0.020546600222588,-0.021005021408200,-0.076556347310543,0.082340434193611));
res += mul(Get(s4,dx,dy), float4x4(0.027528014034033,-0.042911905795336,-0.054136011749506,0.001038567512296,-0.194189608097076,0.043310429900885,0.022776640951633,0.050161361694336,-0.053056426346302,0.027825454249978,0.024440158158541,-0.023640669882298,0.004508320707828,-0.023879330605268,0.040448207408190,0.031795341521502));
res += mul(Get(s5,-dx,-dy), float4x4(0.002317999722436,0.082481622695923,-0.092386804521084,-0.089661270380020,-0.006758254487067,-0.065924055874348,-0.144113525748253,-0.027908956632018,-0.018052374944091,-0.103368535637856,-0.161267533898354,-0.039810929447412,0.090019568800926,0.001928273472004,-0.024629000574350,-0.027837119996548));
res += mul(Get(s5,-dx,0), float4x4(0.014719334430993,-0.002094719093293,0.190004542469978,-0.083260700106621,-0.201574787497520,-0.311882942914963,0.098299220204353,0.076853767037392,-0.154063314199448,-0.133015736937523,-0.026593742892146,-0.122947409749031,0.036443620920181,-0.128352105617523,0.252319902181625,-0.113653577864170));
res += mul(Get(s5,-dx,dy), float4x4(-0.080012969672680,0.069111101329327,0.120970882475376,-0.112606331706047,0.067946270108223,-0.076708339154720,0.059338081628084,0.033494979143143,0.038520615547895,0.026187600567937,-0.044991020113230,-0.024206945672631,0.010483521968126,0.049716722220182,-0.127947092056274,0.062278188765049));
res += mul(Get(s5,0,-dy), float4x4(0.049600943922997,0.025524973869324,0.147458672523499,0.030969724059105,-0.155827835202217,0.098486602306366,0.065517313778400,-0.057109177112579,-0.020389899611473,0.004678401630372,-0.091092675924301,0.127445146441460,0.089958705008030,-0.072936400771141,-0.063225924968719,0.081611484289169));
res += mul(Get(s5,0,0), float4x4(0.017906647175550,-0.010517926886678,0.189845532178879,-0.003257474629208,0.062681019306183,0.070442445576191,-0.202528432011604,0.308474987745285,0.011073209345341,0.011349958367646,-0.264009296894073,-0.153085067868233,0.037764981389046,0.321813106536865,-0.144357651472092,0.145787760615349));
res += mul(Get(s5,0,dy), float4x4(-0.035770505666733,-0.019394032657146,0.130561426281929,-0.148320138454437,-0.027981162071228,-0.063108406960964,0.075512520968914,0.039451885968447,-0.065998695790768,0.001175627345219,0.001448048744351,-0.131981715559959,-0.033635329455137,-0.037447795271873,0.249051660299301,0.141454800963402));
res += mul(Get(s5,dx,-dy), float4x4(-0.000513746927027,-0.054909344762564,0.108937509357929,-0.063816040754318,0.012904096394777,0.026589401066303,-0.050569366663694,-0.088846884667873,-0.071382403373718,0.155180066823959,-0.081762745976448,0.011114858090878,-0.003577434923500,-0.005078471731395,-0.099559776484966,-0.016625266522169));
res += mul(Get(s5,dx,0), float4x4(0.121549174189568,0.090425223112106,0.136668354272842,-0.002001656452194,-0.153266787528992,-0.060317229479551,-0.024596026167274,-0.246660098433495,0.123474821448326,-0.176000699400902,-0.112661741673946,0.052900511771441,-0.000498966313899,-0.008295006118715,0.010780110955238,-0.080332182347775));
res += mul(Get(s5,dx,dy), float4x4(0.113871634006500,0.043246787041426,0.173833504319191,0.146383255720139,-0.040547110140324,0.004399518948048,-0.070874899625778,-0.192149594426155,0.050269983708858,-0.087529651820660,0.011299841105938,0.032410345971584,-0.132988274097443,-0.051924519240856,0.003037754679099,-0.145404741168022));
res = max(float4(0, 0, 0, 0), res) + float4(0.033137112855911,0.007046238519251,0.045447107404470,-0.002284914022312) * min(float4(0, 0, 0, 0), res);
return res;
}