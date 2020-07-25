sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += mul(Get(s0,-dx,-dy), float4x4(-0.012417727150023,-0.212999999523163,-0.063711754977703,-0.162715509533882,-0.114332847297192,-0.018666157498956,0.090242035686970,0.045363932847977,-0.057139739394188,0.010109450668097,0.095300383865833,0.194613605737686,-0.093585520982742,0.106176517903805,0.128608062863350,0.035831373184919));
res += mul(Get(s0,-dx,0), float4x4(0.136465445160866,-0.204319387674332,0.183206468820572,-0.183063566684723,-0.032242637127638,-0.108673378825188,-0.295802831649780,0.048548832535744,-0.139506086707115,0.030721804127097,-0.032656684517860,-0.068462394177914,-0.010257611982524,-0.190430432558060,-0.045063890516758,0.137202426791191));
res += mul(Get(s0,-dx,dy), float4x4(0.056179411709309,-0.198778018355370,-0.044926982372999,0.082066982984543,-0.109501600265503,0.121252588927746,-0.133333116769791,-0.088488779962063,-0.008625381626189,-0.003859830554575,-0.080823935568333,0.137633502483368,0.149713546037674,-0.016032144427299,-0.071512326598167,0.118068382143974));
res += mul(Get(s0,0,-dy), float4x4(0.098647296428680,0.091343939304352,-0.074999608099461,-0.069513991475105,-0.077894032001495,-0.003310924163088,0.374172687530518,-0.041423853486776,-0.022677166387439,-0.117697454988956,-0.004843099974096,0.146842837333679,0.141169711947441,0.027231240645051,0.106549277901649,-0.102368503808975));
res += mul(Get(s0,0,0), float4x4(-0.121938437223434,0.040173485875130,-0.050170768052340,0.134821966290474,0.007464072201401,-0.095108248293400,-0.089673943817616,0.077888958156109,0.020192483440042,0.040133159607649,-0.021425159648061,-0.173181623220444,-0.013645897619426,-0.066133297979832,0.010919022373855,-0.047444064170122));
res += mul(Get(s0,0,dy), float4x4(0.138031795620918,-0.076225034892559,0.075558669865131,-0.143573313951492,0.010077457875013,-0.097550749778748,-0.145887374877930,-0.102268926799297,0.106551870703697,-0.109291374683380,0.101784124970436,0.014056058600545,-0.064676471054554,0.082424364984035,-0.039345443248749,0.037280850112438));
res += mul(Get(s0,dx,-dy), float4x4(0.156540736556053,0.159926906228065,-0.142532527446747,-0.063927136361599,-0.038908440619707,-0.094554275274277,0.090222880244255,0.071431376039982,0.066108629107475,-0.115792736411095,-0.007764904759824,0.359132975339890,-0.164637222886086,0.027391895651817,-0.079995907843113,-0.006271115504205));
res += mul(Get(s0,dx,0), float4x4(-0.223197817802429,0.011613301932812,0.067509211599827,0.027815038338304,-0.121689863502979,0.132978960871696,0.102450735867023,0.157025709748268,0.145609885454178,-0.122812889516354,-0.093588359653950,-0.039351005107164,0.072738416492939,-0.016586203128099,-0.160257607698441,0.274423182010651));
res += mul(Get(s0,dx,dy), float4x4(-0.018081203103065,-0.171943843364716,-0.144141539931297,0.056231833994389,0.018266137689352,0.008230238221586,-0.064695961773396,-0.281934678554535,-0.075270101428032,0.080540686845779,-0.018609967082739,0.046665225178003,0.002462723292410,-0.060358766466379,0.016538510099053,0.047424197196960));
res += mul(Get(s1,-dx,-dy), float4x4(-0.127421438694000,0.072973906993866,-0.034222006797791,0.047426674515009,0.009301667101681,-0.091269761323929,0.020758796483278,0.169885084033012,-0.098017774522305,0.116189934313297,0.004968937020749,0.268584430217743,-0.106495440006256,0.057195883244276,0.089653611183167,-0.024886474013329));
res += mul(Get(s1,-dx,0), float4x4(-0.035502117127180,0.090878918766975,0.034556578844786,-0.089640572667122,0.076830983161926,0.210739672183990,-0.098885051906109,0.097887247800827,0.027692118659616,-0.158807069063187,-0.073710218071938,-0.054675582796335,0.005629492923617,0.114436447620392,0.000700773205608,-0.158250182867050));
res += mul(Get(s1,-dx,dy), float4x4(-0.197761923074722,0.050377484411001,-0.157974675297737,-0.141202807426453,0.128901213407516,-0.025523843243718,-0.311072289943695,0.013926660642028,0.034537136554718,-0.002699049422517,0.111698143184185,-0.005061751231551,0.095017239451408,0.001606762991287,-0.025544505566359,-0.312089055776596));
res += mul(Get(s1,0,-dy), float4x4(0.048626966774464,-0.026222072541714,0.143245980143547,0.086271323263645,-0.115908972918987,0.047343533486128,0.057969786226749,-0.126893177628517,0.027988765388727,-0.233641639351845,-0.009856607764959,-0.096403785049915,0.109497278928757,0.174619838595390,0.069658786058426,-0.004995414521545));
res += mul(Get(s1,0,0), float4x4(-0.017341960221529,0.097480699419975,0.051101628690958,-0.020746380090714,0.142204046249390,-0.087285049259663,-0.040447477251291,-0.037099361419678,0.054769795387983,-0.001495107659139,0.127187088131905,-0.202420145273209,-0.010912327095866,-0.088339500129223,0.213217586278915,-0.048605006188154));
res += mul(Get(s1,0,dy), float4x4(0.176157116889954,-0.098291531205177,-0.170607149600983,0.069792434573174,-0.131685361266136,0.029973903670907,-0.064637936651707,0.029104001820087,-0.131612837314606,0.177055701613426,-0.067802891135216,0.089898496866226,-0.201273381710052,-0.216266348958015,0.096287794411182,-0.062326561659575));
res += mul(Get(s1,dx,-dy), float4x4(-0.147513166069984,0.014948185533285,0.114180244505405,-0.089785851538181,-0.115954786539078,0.049997385591269,0.046171061694622,0.130309596657753,0.111869655549526,0.085092984139919,-0.118411481380463,0.023386269807816,-0.118766933679581,-0.080986313521862,0.006710958201438,-0.091061457991600));
res += mul(Get(s1,dx,0), float4x4(0.105026133358479,0.150544330477715,-0.063997291028500,0.097030766308308,-0.072592966258526,-0.000507915159687,-0.076486952602863,-0.105629250407219,0.012553880922496,-0.012003510259092,0.016148669645190,-0.077958285808563,0.023668978363276,-0.021410146728158,-0.061630185693502,-0.189495190978050));
res += mul(Get(s1,dx,dy), float4x4(0.015055079013109,-0.020533571019769,0.032526515424252,-0.196458712220192,0.079730138182640,0.029662204906344,0.072424985468388,0.141832113265991,0.073897406458855,-0.079966120421886,0.088029406964779,-0.026777431368828,0.085992716252804,-0.040809709578753,0.056304514408112,-0.055867273360491));
res += mul(Get(s2,-dx,-dy), float4x4(0.050220254808664,-0.091813907027245,-0.052669167518616,0.017328551039100,0.197385862469673,-0.088712863624096,-0.100376658141613,0.016434570774436,0.063348561525345,-0.054081939160824,-0.040504008531570,-0.077342547476292,-0.094333320856094,-0.000304339046124,0.054204575717449,-0.098684892058372));
res += mul(Get(s2,-dx,0), float4x4(-0.066368326544762,0.144798144698143,0.025470703840256,-0.115138046443462,-0.057214457541704,0.011180099099874,-0.215289071202278,0.213565051555634,0.030347222462296,-0.001223772298545,-0.149444624781609,0.211952537298203,0.082346253097057,0.076257027685642,-0.038410432636738,-0.002189591992646));
res += mul(Get(s2,-dx,dy), float4x4(0.242982044816017,-0.174950212240219,0.083795890212059,0.048918366432190,-0.176255896687508,0.117005176842213,-0.035589724779129,0.084469884634018,0.030052626505494,-0.021917661651969,-0.000375929987058,0.043688263744116,0.152842193841934,-0.051349159330130,-0.104282222688198,-0.057126346975565));
res += mul(Get(s2,0,-dy), float4x4(0.007835416123271,-0.053363651037216,0.099789559841156,-0.029548561200500,0.179551228880882,-0.200690850615501,-0.037911355495453,0.111579135060310,-0.089000053703785,-0.063710600137711,0.021969532594085,-0.005982347764075,0.271957159042358,-0.055176865309477,-0.023700356483459,0.154816046357155));
res += mul(Get(s2,0,0), float4x4(0.093601688742638,-0.104935802519321,0.063562273979187,-0.010895805433393,0.031090145930648,0.194526359438896,0.024929294362664,0.255314618349075,0.112205266952515,0.023587368428707,-0.045917935669422,0.047656025737524,0.060463164001703,-0.036938678473234,0.004462487529963,0.027060279622674));
res += mul(Get(s2,0,dy), float4x4(-0.045124303549528,-0.051312830299139,0.149214282631874,-0.154586613178253,-0.122273996472359,-0.096563659608364,0.033278223127127,0.129439458250999,0.042227175086737,0.034221634268761,0.069551631808281,-0.033491324633360,-0.085489317774773,0.061219219118357,0.045501045882702,0.116317540407181));
res += mul(Get(s2,dx,-dy), float4x4(-0.120714925229549,-0.072172492742538,0.200174093246460,-0.082796074450016,-0.060526143759489,0.070014677941799,-0.073017671704292,0.043726339936256,-0.028560932725668,-0.038197737187147,0.024260843172669,-0.030736075714231,0.022453237324953,-0.087304942309856,-0.012035815976560,-0.017693838104606));
res += mul(Get(s2,dx,0), float4x4(0.074184879660606,0.051801003515720,-0.205475300550461,0.044447306543589,-0.087035968899727,0.111616834998131,-0.088028982281685,0.212583348155022,-0.016682375222445,0.007632341235876,-0.023873921483755,-0.040825448930264,-0.105728030204773,-0.201350942254066,-0.064056240022182,-0.011441463604569));
res += mul(Get(s2,dx,dy), float4x4(0.112356163561344,-0.112518951296806,-0.192289546132088,-0.085239611566067,0.126219168305397,0.141772270202637,0.084277272224426,-0.096265412867069,-0.007487925235182,0.285798519849777,-0.006260985508561,-0.063957542181015,-0.064211837947369,0.005679379682988,0.046159926801920,0.134480476379395));
res += mul(Get(s3,-dx,-dy), float4x4(-0.071324907243252,-0.047300685197115,-0.013018829748034,0.158465623855591,0.195319831371307,-0.102252766489983,-0.021428709849715,-0.058361683040857,-0.130422785878181,0.053231060504913,0.229273542761803,0.079109810292721,-0.163567706942558,-0.036004301160574,-0.007316728122532,0.091420121490955));
res += mul(Get(s3,-dx,0), float4x4(-0.090212047100067,0.030313512310386,0.085828416049480,0.009624843485653,0.006220586597919,0.133185103535652,0.101415842771530,-0.012021734379232,0.093869708478451,-0.142882540822029,0.018884098157287,-0.143318697810173,0.028951505199075,0.104646489024162,-0.032822541892529,-0.121641092002392));
res += mul(Get(s3,-dx,dy), float4x4(0.040985070168972,0.008859154768288,-0.009810190647840,0.180441409349442,-0.019118594005704,0.003549649147317,0.036822661757469,0.197416558861732,-0.229987978935242,0.107287466526031,-0.132935643196106,-0.046073909848928,-0.128734782338142,0.077450826764107,-0.010204389691353,0.045275159180164));
res += mul(Get(s3,0,-dy), float4x4(-0.120203815400600,0.078901350498199,-0.002601994201541,0.051401913166046,0.192130133509636,0.012745178304613,0.201013341546059,-0.218948036432266,-0.048629764467478,-0.065075896680355,0.035719029605389,-0.093512356281281,0.076734572649002,-0.053113557398319,-0.242598980665207,-0.118659712374210));
res += mul(Get(s3,0,0), float4x4(0.072514377534389,0.097288399934769,-0.023926347494125,0.035514377057552,-0.271829873323441,0.027120986953378,0.099484488368034,-0.067043781280518,0.084300898015499,0.087533809244633,-0.042823672294617,0.170790508389473,-0.031899996101856,0.282327115535736,0.038892693817616,-0.075476661324501));
res += mul(Get(s3,0,dy), float4x4(0.082035981118679,-0.143632382154465,-0.099033601582050,0.237205415964127,-0.049805589020252,0.081612914800644,-0.133130952715874,-0.020286126062274,-0.014844429679215,-0.151394560933113,0.061066359281540,0.030168717727065,0.068480283021927,-0.001923487288877,0.114099495112896,0.149694949388504));
res += mul(Get(s3,dx,-dy), float4x4(0.112335696816444,-0.165071815252304,-0.100369229912758,0.166274949908257,0.262446522712708,0.164757385849953,-0.035913906991482,0.016091626137495,0.123595483601093,-0.100261315703392,-0.022977573797107,0.027918359264731,-0.040710236877203,0.042569760233164,-0.083166256546974,-0.081131868064404));
res += mul(Get(s3,dx,0), float4x4(-0.002193195046857,0.054487284272909,-0.104080080986023,0.098301075398922,-0.051341988146305,-0.028486380353570,0.096352525055408,-0.192925244569778,0.044235087931156,0.077321097254753,-0.031599409878254,-0.080732241272926,0.038655076175928,-0.044449482113123,-0.133266910910606,0.079556569457054));
res += mul(Get(s3,dx,dy), float4x4(0.067008838057518,0.033132504671812,0.193294003605843,0.043579630553722,-0.060822281986475,-0.187190085649490,0.031152289360762,0.057545892894268,0.064472541213036,-0.153858974575996,0.037089396268129,0.003152455436066,0.102930866181850,-0.123468704521656,0.085630521178246,0.321426063776016));
return max(float4(0,0,0,0), res);
}
