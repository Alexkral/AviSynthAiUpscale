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
float4 res = float4(-0.141153529286385,0.369579762220383,0.124503053724766,0.004592380486429);
res += mul(Get(s0,-dx,-dy), float4x4(-0.020408421754837,0.236376941204071,-0.008904675021768,-0.058818601071835,-0.060252927243710,-0.070926882326603,-0.023491896688938,-0.027835978195071,-0.067370720207691,-0.267309248447418,0.114664591848850,0.003240275429562,0.043212953954935,-0.215214252471924,0.130068346858025,0.019562199711800));
res += mul(Get(s0,-dx,0), float4x4(-0.123872011899948,0.244135037064552,0.088148780167103,-0.145011395215988,0.095836549997330,-0.449562728404999,-0.383078366518021,-0.018607769161463,0.089546687901020,-0.107403039932251,-0.046381294727325,0.018232097849250,0.100918218493462,-0.240350350737572,0.139904752373695,0.051209457218647));
res += mul(Get(s0,-dx,dy), float4x4(-0.075195662677288,0.122979566454887,0.031648028641939,0.000375731789973,0.092065751552582,-0.305981516838074,-0.256057411432266,-0.096392996609211,-0.098685570061207,-0.028663599863648,0.007358964532614,0.069787748157978,-0.052690155804157,0.059845153242350,0.040681008249521,-0.024457035586238));
res += mul(Get(s0,0,-dy), float4x4(0.016105378046632,-0.054605383425951,-0.000770957500208,0.031047986820340,-0.042444821447134,-0.057228252291679,-0.139150187373161,0.033477164804935,-0.023891301825643,-0.265343278646469,-0.086259447038174,-0.026409124955535,0.097540117800236,-0.276699542999268,0.084187276661396,0.066467620432377));
res += mul(Get(s0,0,0), float4x4(0.052417401224375,0.237406954169273,-0.044576644897461,-0.073389157652855,0.123065754771233,-0.455146729946136,-0.297258615493774,0.100846797227859,0.069324567914009,-0.038316920399666,-0.107471011579037,-1.209685206413269,0.163869291543961,-0.044222909957170,0.111614555120468,-0.066610835492611));
res += mul(Get(s0,0,dy), float4x4(-0.053031355142593,-0.018943281844258,0.016668863594532,-0.050216827541590,0.230441853404045,-0.364167153835297,-0.044842578470707,0.170362591743469,-0.122219644486904,0.052094474434853,0.009677167050540,0.294559776782990,-0.028448659926653,0.082730092108250,0.014857749454677,-0.075877383351326));
res += mul(Get(s0,dx,-dy), float4x4(-0.003704496659338,-0.034496977925301,-0.048559829592705,-0.091802872717381,0.074866764247417,0.018760617822409,-0.093685097992420,0.041460853070021,0.028352798894048,-0.024070953950286,0.156306907534599,0.015683438628912,0.102885566651821,-0.313478857278824,-0.013889296911657,-0.001794416573830));
res += mul(Get(s0,dx,0), float4x4(0.119125224649906,0.230932772159576,0.036670032888651,-0.205222189426422,0.139166757464409,-0.204405009746552,-0.401219159364700,0.112985864281654,-0.046367857605219,-0.129685670137405,0.110529571771622,-0.359918922185898,-0.012921740300953,-0.317552000284195,-0.046449579298496,-0.615278959274292));
res += mul(Get(s0,dx,dy), float4x4(0.112412840127945,0.153223708271980,-0.036051563918591,-0.030263554304838,-0.114519916474819,-0.086950466036797,-0.011081083677709,0.035822719335556,-0.069408312439919,0.075887359678745,-0.016658170148730,-0.003258044365793,-0.061488285660744,-0.055175591260195,-0.009974752552807,-0.066938795149326));
res += mul(Get(s1,-dx,-dy), float4x4(-0.051889948546886,0.181666404008865,-0.000266426795861,-0.005779089871794,-0.061798710376024,0.321970105171204,0.213151618838310,-0.159968882799149,0.082996532320976,-0.101699121296406,0.189910829067230,-0.024248315021396,0.017341025173664,0.045199342072010,-0.269327849149704,-0.057180345058441));
res += mul(Get(s1,-dx,0), float4x4(0.039075121283531,-0.167474046349525,-0.092890202999115,-0.061391390860081,0.045813869684935,0.020769925788045,-0.234480515122414,-0.297055482864380,0.135797157883644,0.078283876180649,0.185430020093918,0.047337770462036,-0.007108116522431,-0.226825252175331,-0.141540721058846,0.163927957415581));
res += mul(Get(s1,-dx,dy), float4x4(0.099247664213181,-0.040374986827374,0.054629616439342,-0.192390695214272,0.121394924819469,0.145884245634079,0.023954089730978,-0.137555509805679,0.139965936541557,0.073139734566212,-0.079973980784416,-0.322518408298492,-0.100237555801868,-0.127390727400780,-0.161922618746758,0.091425791382790));
res += mul(Get(s1,0,-dy), float4x4(0.039781291037798,0.029705056920648,-0.283772110939026,0.050528876483440,0.062930576503277,-0.109281726181507,0.242115736007690,-0.132744967937469,0.109482057392597,0.093818977475166,0.009801991283894,-0.062430534511805,0.165584668517113,-0.144595578312874,-0.327816247940063,-0.138008847832680));
res += mul(Get(s1,0,0), float4x4(0.162977263331413,-0.267666578292847,-0.917376995086670,0.209870025515556,-0.084132552146912,-0.331631153821945,-0.127255618572235,-0.740888893604279,0.053575083613396,0.037262555211782,0.249736040830612,0.076116986572742,0.016543539240956,-0.039007168263197,-0.074089400470257,0.200608968734741));
res += mul(Get(s1,0,dy), float4x4(0.105870448052883,-0.112854182720184,-0.157959938049316,-0.315528154373169,-0.172610789537430,-0.114141188561916,0.079286605119705,-0.309844166040421,0.109522379934788,-0.000658002507407,0.182767033576965,0.210063725709915,-0.211606174707413,0.172734662890434,-0.429013073444366,0.283843874931335));
res += mul(Get(s1,dx,-dy), float4x4(0.024038922041655,0.133421942591667,-0.121713407337666,0.094875745475292,0.060786299407482,-0.015069340355694,-0.178097352385521,-0.045404143631458,-0.064084663987160,0.049133531749249,0.009657591581345,-0.036314968019724,-0.027245553210378,0.103779479861259,0.127541795372963,-0.088013842701912));
res += mul(Get(s1,dx,0), float4x4(0.091390535235405,-0.135310575366020,-0.317990452051163,-0.081104300916195,0.239540740847588,-0.060913439840078,-0.266614526510239,-0.426999479532242,0.001678184955381,0.061985779553652,0.095261357724667,0.207202091813087,0.024077346548438,0.162499830126762,-0.226139381527901,0.153888851404190));
res += mul(Get(s1,dx,dy), float4x4(-0.037351343780756,-0.218447014689445,-0.261128991842270,-0.089749760925770,0.065027371048927,0.113014228641987,-0.140247195959091,-0.335346758365631,-0.038516391068697,0.095632210373878,0.185321569442749,0.278170466423035,0.172629237174988,0.287355631589890,-0.052633646875620,0.024274112656713));
res += mul(Get(s2,-dx,-dy), float4x4(0.108964882791042,-0.035272523760796,0.149346470832825,-0.079941913485527,-0.099505387246609,0.264513105154037,0.338898777961731,0.138637870550156,0.055470023304224,0.122289016842842,0.085711374878883,-0.032198119908571,0.077842615544796,-0.136642798781395,0.147371053695679,0.154993429780006));
res += mul(Get(s2,-dx,0), float4x4(0.138389900326729,0.158124983310699,-0.231629580259323,0.101136624813080,0.015181794762611,0.044430840760469,0.075195536017418,0.181732088327408,0.147704839706421,0.017980955541134,0.023656794801354,0.095072425901890,0.098910547792912,0.001889706938528,0.105367876589298,0.291961491107941));
res += mul(Get(s2,-dx,dy), float4x4(0.036504246294498,-0.185321480035782,-0.100859098136425,0.053952243179083,-0.003898355644196,0.373636811971664,0.195218980312347,-0.042870603501797,0.076874919235706,0.196687445044518,0.000294490077067,-0.105523012578487,0.148147642612457,-0.024009848013520,0.233794614672661,0.025322271510959));
res += mul(Get(s2,0,-dy), float4x4(-0.041723761707544,-0.107899986207485,0.377827048301697,-0.060870803892612,-0.059263601899147,0.074227340519428,0.277869910001755,0.152689799666405,0.003950424492359,0.169182613492012,0.176536172628403,-0.061058066785336,0.107592456042767,0.224051788449287,-0.243314772844315,0.077653743326664));
res += mul(Get(s2,0,0), float4x4(0.042672164738178,-0.163444712758064,0.344866007566452,-0.184388473629951,0.221554085612297,0.018787086009979,0.125870868563652,0.113624371588230,0.006788500584662,0.251242697238922,0.229756772518158,0.020969633013010,-0.315747946500778,-0.202608168125153,0.018668472766876,-0.166076615452766));
res += mul(Get(s2,0,dy), float4x4(-0.035531949251890,-0.092962004244328,0.065062597393990,0.100056938827038,0.046370938420296,0.157520204782486,0.176019549369812,-0.248617231845856,0.005705777555704,0.027885258197784,0.180126398801804,0.149531602859497,0.048440098762512,-0.118029579520226,0.082080066204071,-0.340402513742447));
res += mul(Get(s2,dx,-dy), float4x4(-0.063863374292850,0.059352848678827,0.191373899579048,-0.012610421516001,0.029268177226186,0.217985689640045,0.076774746179581,0.011203203350306,0.002881180029362,0.062241446226835,0.054947961121798,0.006266352254897,0.200479626655579,0.045011382550001,0.061608370393515,0.040804013609886));
res += mul(Get(s2,dx,0), float4x4(0.312580287456512,-0.056422572582960,-0.204043045639992,0.002839280758053,0.175527527928352,0.301723808050156,-0.052209705114365,0.149048954248428,-0.082400918006897,-0.099464923143387,0.093684569001198,0.064768575131893,0.093304567039013,0.029726516455412,-0.245317026972771,0.255955517292023));
res += mul(Get(s2,dx,dy), float4x4(0.011922061443329,-0.154330298304558,0.039278872311115,0.128390938043594,0.049610666930676,0.267325609922409,0.057760413736105,-0.215637773275375,-0.040628608316183,-0.058379553258419,-0.011927858926356,0.077312014997005,0.065376490354538,0.076516970992088,-0.036121081560850,0.033905822783709));
res += mul(Get(s3,-dx,-dy), float4x4(0.022533854469657,0.189976513385773,-0.082767538726330,0.034257683902979,0.049331746995449,-0.450791388750076,-0.084505282342434,0.010001499205828,0.063605315983295,0.081846565008163,0.462714195251465,-0.020659573376179,-0.065240606665611,0.061232492327690,0.220800340175629,0.160879626870155));
res += mul(Get(s3,-dx,0), float4x4(0.084283635020256,0.095080047845840,0.121326558291912,-0.018439892679453,-0.076977811753750,-0.547548353672028,0.009378211572766,-0.017631465569139,0.089232191443443,0.057240687310696,0.078115373849869,-0.163905560970306,-0.218553617596626,-0.122799843549728,-0.206815451383591,-0.066274188458920));
res += mul(Get(s3,-dx,dy), float4x4(0.022669518366456,0.023372339084744,0.111318767070770,-1.126223325729370,0.023823548108339,-0.053628198802471,0.087545968592167,-0.323221802711487,0.028469717130065,-0.124426059424877,0.061972461640835,0.094247058033943,-0.206921800971031,-0.005701061803848,-0.270731240510941,-0.117132924497128));
res += mul(Get(s3,0,-dy), float4x4(-0.166535839438438,-0.057729624211788,0.045471105724573,0.035737648606300,0.165684401988983,-0.548975288867950,0.170474648475647,-0.031207585707307,-0.069317504763603,0.131571948528290,-0.218413814902306,-0.032561518251896,0.011289790272713,0.218939781188965,0.230470463633537,0.133180215954781));
res += mul(Get(s3,0,0), float4x4(-0.289189636707306,0.211609885096550,-0.147319391369820,0.138300359249115,0.246074885129929,-1.284684658050537,0.208924800157547,0.112651325762272,-0.679593503475189,0.145603343844414,0.007544441614300,-0.193763285875320,0.092229567468166,0.055937893688679,-0.230115890502930,0.057818274945021));
res += mul(Get(s3,0,dy), float4x4(0.043190412223339,0.039814304560423,-0.017575539648533,0.062847018241882,0.092764697968960,-0.242636427283287,0.020294301211834,-0.962087988853455,0.010924907401204,-0.181724920868874,-0.250690847635269,0.805904328823090,-0.006672721356153,-0.247001603245735,0.004340549930930,-0.297847330570221));
res += mul(Get(s3,dx,-dy), float4x4(0.003692895406857,0.148850664496422,0.047826904803514,0.038406640291214,0.095915757119656,-0.065679669380188,-0.134958043694496,-0.037978447973728,-0.024917446076870,-0.042450785636902,0.015792764723301,0.078167200088501,-0.000717378745321,0.123046554625034,-0.133556753396988,0.111700437963009));
res += mul(Get(s3,dx,0), float4x4(0.052690308541059,0.019675057381392,0.028120167553425,0.062575705349445,0.115148738026619,-0.236057400703430,-0.040567114949226,0.154525116086006,-0.262229889631271,-0.154151067137718,-0.156732648611069,0.267855793237686,-0.070981726050377,-0.070782251656055,-0.209470406174660,-0.093959480524063));
res += mul(Get(s3,dx,dy), float4x4(0.047515787184238,0.154357001185417,-0.123022988438606,0.156845346093178,0.019525445997715,-0.069961883127689,0.051861729472876,-0.377816647291183,0.024958642199636,0.053229939192533,-0.091308638453484,0.282112807035446,-0.187508657574654,-0.039018057286739,-0.005309768021107,0.188127607107162));
res += mul(Get(s4,-dx,-dy), float4x4(0.083932101726532,0.076385378837585,-0.005039683077484,0.001829645130783,0.017191911116242,-0.049200631678104,0.118983015418053,0.078280650079250,0.003566666506231,0.235381260514259,-0.042907357215881,0.109152898192406,-0.049532402306795,0.137797713279724,-0.106108494102955,0.157584905624390));
res += mul(Get(s4,-dx,0), float4x4(0.027994384989142,0.044468127191067,-0.107987679541111,-0.122107259929180,-0.042740225791931,-0.226318478584290,0.177380055189133,0.221346765756607,-0.228948980569839,0.199567124247551,0.331215292215347,0.055412374436855,-0.107942268252373,0.155885115265846,0.233849585056305,0.176150634884834));
res += mul(Get(s4,-dx,dy), float4x4(-0.018883673474193,0.098595574498177,-0.007953280583024,0.063337415456772,-0.061141114681959,-0.105508096516132,-0.121262863278389,-0.097665049135685,0.053565487265587,-0.070363841950893,0.213080853223801,0.353691101074219,-0.025143351405859,0.004171666689217,0.048569858074188,0.313786983489990));
res += mul(Get(s4,0,-dy), float4x4(-0.015562048181891,0.018826186656952,0.102857604622841,0.040934320539236,-0.131001636385918,0.126575887203217,0.088062644004822,-0.050664097070694,-0.089360892772675,0.047623921185732,-0.156122580170631,0.077283762395382,-0.180348575115204,0.131071865558624,0.296108692884445,0.215974852442741));
res += mul(Get(s4,0,0), float4x4(0.573201298713684,-0.383788019418716,0.130778506398201,-0.029380092397332,0.115664944052696,-0.072387330234051,0.305819749832153,0.194060012698174,-0.184462726116180,-0.100379630923271,-0.090358823537827,-0.270472615957260,0.138399973511696,-0.165507659316063,-0.127568379044533,0.157862886786461));
res += mul(Get(s4,0,dy), float4x4(0.008118894882500,0.047499533742666,-0.099125996232033,-0.285750627517700,-0.160302355885506,0.061810325831175,-0.135180115699768,0.145847991108894,-0.148684039711952,0.046673547476530,0.002680224599317,-0.031352572143078,0.022329097613692,-0.049462623894215,-0.025885563343763,-0.339671760797501));
res += mul(Get(s4,dx,-dy), float4x4(0.182690411806107,-0.034268029034138,-0.010752022266388,-0.068258702754974,-0.041119314730167,0.059462767094374,0.128368332982063,0.147083818912506,-0.097781486809254,0.086464822292328,0.024978879839182,-0.045152269303799,-0.064566269516945,0.171139717102051,-0.040202073752880,0.116907566785812));
res += mul(Get(s4,dx,0), float4x4(-0.175335928797722,0.053111173212528,-0.371543884277344,-0.159572854638100,-0.317160218954086,0.072309069335461,-0.124057643115520,-0.010183768346906,-0.087595865130424,-0.131554841995239,0.041530761867762,-0.013102050870657,-0.741164743900299,-0.234501779079437,0.005399360321462,0.058096699416637));
res += mul(Get(s4,dx,dy), float4x4(-0.025796784088016,0.385254502296448,-0.051807135343552,-0.374704241752625,0.145460963249207,0.180357515811920,-0.071264788508415,-0.158224582672119,-0.190723538398743,0.091337747871876,-0.202767729759216,-0.012976432219148,0.075234882533550,-0.033375065773726,-0.298722952604294,0.020416146144271));
res += mul(Get(s5,-dx,-dy), float4x4(0.025974871590734,0.075467199087143,0.060554113239050,0.011668343096972,-0.008208894170821,-0.106535226106644,0.215175107121468,-0.080855205655098,0.052620179951191,-0.260163635015488,0.135954901576042,0.132183909416199,-0.003481728257611,0.212546408176422,0.271319031715393,-0.140672728419304));
res += mul(Get(s5,-dx,0), float4x4(0.057186942547560,-0.294877648353577,-0.132210493087769,0.017207030206919,0.023678069934249,0.258327811956406,0.171888306736946,-0.017545148730278,-0.046882443130016,-0.190261125564575,-0.100641898810863,0.155533552169800,-0.126444071531296,-0.083905823528767,0.340206414461136,-0.189768791198730));
res += mul(Get(s5,-dx,dy), float4x4(-0.034783482551575,-0.064194232225418,-0.182981744408607,-0.250218272209167,0.019124561920762,0.035775680094957,0.162322655320168,-0.022215094417334,0.053942188620567,0.117606185376644,-0.037489384412766,0.292523622512817,0.054098743945360,0.110080100595951,0.190345928072929,-0.484478145837784));
res += mul(Get(s5,0,-dy), float4x4(-0.000902158732060,0.112458601593971,0.046903748065233,-0.026349101215601,0.038803230971098,0.028253307566047,-0.129135787487030,-0.113885484635830,-0.039296656847000,-0.087358996272087,-0.106156855821609,0.275571912527084,-0.025922056287527,-0.143592327833176,-0.004221512936056,0.057083748281002));
res += mul(Get(s5,0,0), float4x4(0.168487071990967,0.156123980879784,-0.248739108443260,0.282525807619095,-0.362384319305420,-0.175778597593307,0.290678709745407,-0.500114083290100,-0.184789553284645,-0.180590659379959,-0.272115558385849,-0.016283659264445,-0.613608479499817,0.006486984435469,-0.284919261932373,-0.077169656753540));
res += mul(Get(s5,0,dy), float4x4(-0.030093276873231,0.070113830268383,-0.237873762845993,-0.862255394458771,0.270404309034348,0.133806079626083,-0.083070978522301,-0.462669819593430,0.001175577868707,-0.012544462457299,-0.046341996639967,0.370013773441315,0.064147986471653,-0.167309254407883,0.008769364096224,0.289701014757156));
res += mul(Get(s5,dx,-dy), float4x4(-0.012992260977626,-0.055468861013651,0.015350535511971,0.005461576394737,0.036822129040956,-0.065360091626644,0.110266365110874,0.025390909984708,0.002846008399501,0.252803593873978,-0.195637941360474,0.186264082789421,-0.195033729076385,0.137748077511787,0.016294589266181,-0.085626490414143));
res += mul(Get(s5,dx,0), float4x4(0.036187164485455,0.007984667085111,-0.000237055122852,-0.000280484062387,-0.242269709706306,0.011473891325295,0.097412288188934,-0.042364720255136,0.103887528181076,0.028844431042671,-0.146847769618034,-0.008726936765015,-0.320628494024277,0.068011239171028,-0.359669983386993,-0.118936143815517));
res += mul(Get(s5,dx,dy), float4x4(-0.017153413966298,-0.121418155729771,0.036139518022537,-0.250997632741928,0.123033195734024,-0.247528165578842,-0.071499221026897,-0.175592750310898,0.032347861677408,0.118223562836647,-0.084865577518940,0.464575767517090,0.102658338844776,-0.133878707885742,-0.072967968881130,0.037522349506617));
res = max(float4(0, 0, 0, 0), res) + float4(0.516228199005127,0.044316079467535,0.164417907595634,-0.054709300398827) * min(float4(0, 0, 0, 0), res);
return res;
}
