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
res += mul(Get(s0,-dx,-dy), float4x4(-0.074566408991814,-0.007225441280752,-0.071988277137280,0.066237822175026,-0.093759946525097,0.022851223126054,-0.163881808519363,-0.103070162236691,-0.103691227734089,-0.070058256387711,-0.136919513344765,0.065419390797615,-0.171629026532173,0.000454531604191,-0.041095435619354,0.040752559900284));
res += mul(Get(s0,-dx,0), float4x4(-0.079224519431591,0.048789463937283,0.098208256065845,0.170824140310287,-0.101629726588726,-0.078416824340820,-0.294963091611862,-0.066670544445515,-0.124261945486069,-0.083633922040462,-0.071783021092415,0.021414006128907,-0.013930479064584,0.112944819033146,0.096636615693569,-0.144470512866974));
res += mul(Get(s0,-dx,dy), float4x4(-0.029253097251058,-0.093268044292927,0.348201334476471,-0.139111250638962,-0.173174694180489,-0.103666670620441,-0.094815582036972,-0.134429246187210,0.058388940989971,-0.057056233286858,-0.272816449403763,-0.140240207314491,0.171853199601173,0.117807082831860,0.166533008217812,-0.104860179126263));
res += mul(Get(s0,0,-dy), float4x4(0.020500758662820,-0.112761072814465,0.210044518113136,-0.162308141589165,-0.050109747797251,-0.051096942275763,-0.129668980836868,-0.052016552537680,0.200662955641747,-0.237051486968994,-0.011881420388818,0.160559028387070,-0.047884218394756,0.090448722243309,-0.061962038278580,0.205675125122070));
res += mul(Get(s0,0,0), float4x4(-0.135064616799355,0.043167203664780,0.025984717532992,0.315884143114090,-0.054728183895350,-0.036643471568823,-0.048913296312094,-0.031395282596350,-0.043965201824903,-0.079327091574669,0.075916469097137,0.065566323697567,-0.042345318943262,0.047789242118597,0.138731956481934,0.079538285732269));
res += mul(Get(s0,0,dy), float4x4(-0.022707216441631,-0.017370453104377,0.147723540663719,-0.142824530601501,-0.100957997143269,-0.053500033915043,-0.039781503379345,-0.063110776245594,-0.073081076145172,0.081146389245987,-0.158770844340324,-0.449649721384048,0.006202940829098,0.018142817541957,0.192769736051559,0.018289614468813));
res += mul(Get(s0,dx,-dy), float4x4(0.057388342916965,-0.077451430261135,-0.286680847406387,-0.092864833772182,-0.022404041141272,-0.015468306839466,0.065531797707081,-0.000585235538892,0.075633913278580,-0.132986769080162,-0.185349419713020,0.576335072517395,-0.091665491461754,0.052244067192078,-0.093616545200348,0.372955441474915));
res += mul(Get(s0,dx,0), float4x4(-0.165068492293358,-0.107090331614017,-0.080847963690758,0.241536572575569,-0.022155705839396,-0.039718512445688,0.108877792954445,-0.041075553745031,-0.132915839552879,0.025382051244378,-0.009980838745832,0.663696825504303,-0.001816673902795,-0.122402995824814,0.090505093336105,0.154366001486778));
res += mul(Get(s0,dx,dy), float4x4(-0.020705038681626,-0.159126982092857,0.136312201619148,-0.146812275052071,-0.076536834239960,-0.032594472169876,0.124974258244038,-0.088376797735691,-0.058314099907875,0.381839573383331,-0.088885158300400,0.253518491983414,0.008926146663725,-0.026762453839183,0.051403906196356,0.084888726472855));
res += mul(Get(s1,-dx,-dy), float4x4(0.714066922664642,-0.218827262520790,0.094969779253006,-0.042925126850605,-0.028435820713639,-0.095651835203171,-0.367149233818054,-0.078361295163631,0.143720537424088,-0.001772489398718,0.099334448575974,0.017909929156303,0.057790607213974,-0.015717120841146,0.031596235930920,-0.004074631724507));
res += mul(Get(s1,-dx,0), float4x4(0.139764264225960,0.092315338551998,0.107408158481121,-0.138774126768112,0.009890132583678,-0.069678485393524,-0.297231316566467,-0.016018999740481,0.060319721698761,-0.077633105218410,0.171499595046043,-0.080065660178661,-0.075720250606537,-0.078559778630733,-0.003005166072398,0.055299852043390));
res += mul(Get(s1,-dx,dy), float4x4(0.029880238696933,0.106856234371662,0.380496084690094,-0.048998888581991,0.173247218132019,-0.018549578264356,0.054489918053150,-0.044979549944401,0.007566663436592,-0.057338904589415,0.269335836172104,-0.313315570354462,-0.075148373842239,-0.043759010732174,-0.164737865328789,-0.224405020475388));
res += mul(Get(s1,0,-dy), float4x4(0.054180644452572,-0.118237994611263,0.030314326286316,0.119769617915154,-0.019465195015073,-0.094645790755749,-0.337751746177673,-0.120811559259892,-0.147251203656197,0.140759855508804,0.110670603811741,0.154999211430550,0.139142811298370,-0.095323994755745,-0.102281630039215,-0.062959820032120));
res += mul(Get(s1,0,0), float4x4(-0.022628476843238,0.063581705093384,0.093991495668888,0.228108346462250,-0.004478226881474,-0.100116930902004,-0.218031719326973,-0.090717904269695,-0.169904693961143,0.046032253652811,-0.133828803896904,0.103840291500092,0.046265088021755,-0.093431673943996,0.130540877580643,-0.095366083085537));
res += mul(Get(s1,0,dy), float4x4(-0.192368641495705,0.497366368770599,0.210942372679710,0.075077578425407,0.044842146337032,-0.107220701873302,0.148317068815231,-0.026982234790921,-0.059938427060843,-0.038193494081497,-0.017623350024223,-0.137556344270706,-0.137994021177292,-0.047518577426672,0.085284262895584,-0.373768925666809));
res += mul(Get(s1,dx,-dy), float4x4(-0.086735144257545,-0.194631025195122,0.069257333874702,-0.125570252537727,-0.015606180764735,-0.093987263739109,-0.132621854543686,-0.150134608149529,0.118738152086735,0.128118664026260,0.024399030953646,-0.048205673694611,-0.030426101759076,-0.057306986302137,0.188073068857193,0.137486934661865));
res += mul(Get(s1,dx,0), float4x4(-0.038751881569624,-0.234214574098587,0.126260355114937,0.070185057818890,-0.023893898352981,-0.054947897791862,-0.053634013980627,-0.135792851448059,0.082871481776237,0.080590918660164,0.046272784471512,-0.132139056921005,-0.119783751666546,-0.049373723566532,0.169537186622620,0.137711346149445));
res += mul(Get(s1,dx,dy), float4x4(0.077714115381241,0.299874275922775,0.080526418983936,-0.009732336737216,-0.005338461138308,-0.058523792773485,0.156108498573303,-0.056432854384184,-0.017077844589949,-0.141888573765755,0.160001903772354,-0.047035586088896,-0.163852959871292,-0.086778149008751,0.017236100509763,0.270795106887817));
res += mul(Get(s2,-dx,-dy), float4x4(0.268630057573318,-0.055327165871859,0.099674344062805,-0.001149594201706,-0.170373141765594,-0.083685383200645,-0.082324258983135,-0.070383101701736,0.261524975299835,0.028324156999588,-0.108670763671398,0.060660809278488,-0.169384315609932,0.220097735524178,-0.016244947910309,-0.096751347184181));
res += mul(Get(s2,-dx,0), float4x4(0.080626167356968,-0.071808062493801,0.186900913715363,-0.033343020826578,0.133645877242088,0.022258762270212,-0.015095535665751,-0.067483961582184,0.156029492616653,-0.184895917773247,0.035668060183525,0.118647605180740,-0.056904416531324,-0.274888187646866,0.016154503449798,-0.095501847565174));
res += mul(Get(s2,-dx,dy), float4x4(0.075283661484718,-0.222963050007820,0.148465216159821,-0.142526626586914,-0.025977449491620,-0.040201939642429,-0.032999366521835,0.061750203371048,0.102399960160255,-0.157019749283791,0.118613123893738,0.021327888593078,-0.091633245348930,-0.224993214011192,-0.104255668818951,-0.071672156453133));
res += mul(Get(s2,0,-dy), float4x4(0.168601527810097,-0.044908564537764,0.085006028413773,-0.098566792905331,0.064470499753952,0.180584415793419,-0.101739153265953,-0.000984717509709,0.180197402834892,0.086880862712860,0.087533250451088,0.032478954643011,-0.089223012328148,0.244682580232620,0.108871355652809,0.054960839450359));
res += mul(Get(s2,0,0), float4x4(0.039321754127741,0.002568580675870,0.128600433468819,-0.051168024539948,-0.064355969429016,0.543342828750610,-0.012146006338298,-0.053941391408443,-0.083099134266376,-0.002649905160069,0.092866294085979,-0.140862509608269,0.051594115793705,0.178790688514709,0.065172903239727,0.023506691679358));
res += mul(Get(s2,0,dy), float4x4(0.133893549442291,-0.124207071959972,0.137675315141678,-0.063362821936607,-0.076450042426586,-0.069065570831299,0.044480036944151,0.058156397193670,-0.022436514496803,-0.110707901418209,-0.000704319798388,-0.150371849536896,0.048162788152695,0.072169713675976,-0.032584890723228,-0.010772215202451));
res += mul(Get(s2,dx,-dy), float4x4(-0.091970041394234,-0.105404213070869,-0.062592402100563,-0.078259222209454,-0.041360806673765,-0.123929582536221,-0.129759341478348,0.187167555093765,0.140516608953476,0.390446007251740,-0.077450066804886,0.086975537240505,-0.128513470292091,-0.081977099180222,0.158080592751503,-0.056387245655060));
res += mul(Get(s2,dx,0), float4x4(-0.039167094975710,-0.091691881418228,0.153300672769547,-0.090538136661053,-0.016661083325744,0.095729045569897,-0.004638131707907,-0.031678374856710,0.040725801140070,0.053020663559437,0.028682028874755,0.060536306351423,-0.001596098183654,-0.122998602688313,0.086459465324879,-0.067960835993290));
res += mul(Get(s2,dx,dy), float4x4(0.006131475791335,-0.146547466516495,0.266868680715561,-0.057148814201355,-0.133139267563820,-0.208858609199524,-0.001271906890906,-0.062163449823856,-0.087184168398380,0.307220757007599,0.093115329742432,-0.104844659566879,0.000621113285888,-0.011831130832434,-0.109837405383587,-0.159168139100075));
res += mul(Get(s3,-dx,-dy), float4x4(0.100031748414040,-0.002807784127071,0.058545559644699,-0.049738202244043,-0.158325552940369,-0.161470681428909,-0.215913385152817,-0.094297058880329,-0.015824347734451,0.001781552215107,-0.387940853834152,-0.054063998162746,0.032061494886875,0.047639716416597,-0.057723589241505,0.088148862123489));
res += mul(Get(s3,-dx,0), float4x4(0.089992254972458,-0.047455575317144,0.506419062614441,-0.080254167318344,-0.071378596127033,-0.158473953604698,-0.107174701988697,-0.178951323032379,-0.001748069538735,-0.043749213218689,-0.062239654362202,-0.058933772146702,0.301884055137634,-0.018980432301760,-0.138168975710869,-0.106993481516838));
res += mul(Get(s3,-dx,dy), float4x4(0.155345842242241,0.179161369800568,0.087786465883255,-0.189924091100693,0.019857497885823,-0.185223191976547,-0.093397177755833,-0.024029374122620,-0.124455727636814,-0.093869902193546,-0.436355561017990,-0.098567947745323,0.175269886851311,0.062253154814243,-0.102265067398548,0.212200894951820));
res += mul(Get(s3,0,-dy), float4x4(0.055324062705040,-0.079823151230812,0.066547974944115,-0.034101665019989,-0.116856567561626,-0.111555971205235,-0.133089587092400,-0.057496432214975,-0.033679038286209,0.010580520145595,-0.235592231154442,-0.062657810747623,-0.204297363758087,-0.019648272544146,0.008222317323089,0.073543168604374));
res += mul(Get(s3,0,0), float4x4(-0.104730941355228,-0.073990531265736,0.216326817870140,0.083680793642998,-0.081233665347099,-0.120199851691723,-0.056677933782339,-0.130473256111145,-0.042375732213259,-0.051714401692152,0.323555380105972,-0.060147970914841,-0.117082931101322,-0.125822335481644,-0.043356940150261,-0.068860657513142));
res += mul(Get(s3,0,dy), float4x4(-0.034435622394085,0.029790112748742,-0.055913284420967,-0.093723230063915,0.032976821064949,-0.080358311533928,-0.165677636861801,-0.079127438366413,-0.099718160927296,-0.096887998282909,-0.486693620681763,-0.118532083928585,-0.066559828817844,-0.003315655747429,0.014661671593785,0.013342590071261));
res += mul(Get(s3,dx,-dy), float4x4(0.014101663604379,-0.119597807526588,0.083839014172554,-0.049689806997776,-0.072532832622528,0.008214444853365,-0.041038237512112,0.091702349483967,-0.061418704688549,0.178220421075821,-0.284609258174896,-0.085184179246426,-0.222015038132668,0.272708535194397,-0.228197395801544,0.462727189064026));
res += mul(Get(s3,dx,0), float4x4(-0.132302343845367,-0.122592613101006,0.333201467990875,0.010237114503980,-0.024630522355437,-0.118071958422661,-0.052614651620388,-0.037135519087315,0.003923882264644,0.019376998767257,0.068274058401585,-0.043323773890734,-0.107158489525318,0.197784483432770,-0.152708724141121,-0.263413578271866));
res += mul(Get(s3,dx,dy), float4x4(-0.212218061089516,-0.165475010871887,0.091845639050007,-0.216965317726135,0.018990015611053,-0.124325618147850,0.066538095474243,-0.040295574814081,-0.105576358735561,-0.029988523572683,-0.359595686197281,-0.165158256888390,0.002159557305276,0.444045037031174,0.138345122337341,0.034914880990982));
return max(float4(0,0,0,0), res);
}
