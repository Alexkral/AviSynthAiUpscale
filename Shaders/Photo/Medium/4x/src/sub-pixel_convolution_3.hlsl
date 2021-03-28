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
float4 res = float4(-0.000328424095642,-0.000822907837573,-0.000294346915325,0.000264262256678);
res += mul(Get(s0,-dx,-dy), float4x4(-0.014741234481335,-0.012416945770383,-0.007728868164122,-0.001985893584788,0.006121854763478,-0.007495344616473,-0.010747126303613,-0.003159520681947,0.000021388548703,-0.000564265938010,-0.000282062275801,-0.001537440111861,0.004021181724966,0.000166394645930,-0.001604582648724,-0.002197382273152));
res += mul(Get(s0,-dx,0), float4x4(-0.007350500207394,-0.011739471927285,-0.015763072296977,-0.016787685453892,0.001349592697807,-0.001885511563160,-0.003365331795067,0.005502676125616,-0.001651447266340,0.007475300692022,0.007844777777791,0.002792104613036,-0.005455121863633,0.008527141064405,0.017674725502729,0.013327687978745));
res += mul(Get(s0,-dx,dy), float4x4(0.000558122817893,-0.001219026511535,-0.003065276425332,-0.004079904872924,0.004385921172798,0.007946340367198,0.006308577954769,0.001168048125692,0.004044853616506,0.003020631382242,-0.003519332036376,-0.008309462107718,-0.006446416955441,-0.007877235300839,-0.005918550305068,-0.005274415016174));
res += mul(Get(s0,0,-dy), float4x4(-0.005838766228408,-0.005754524376243,-0.004313292913139,-0.003994486760348,-0.027295650914311,0.000037320092815,0.011621916666627,0.007503077853471,-0.012115817517042,0.001650418969803,0.010828826576471,0.007064596284181,-0.038173642009497,-0.009816150180995,0.003444546135142,0.001620550756343));
res += mul(Get(s0,0,0), float4x4(0.032231967896223,0.027690039947629,0.014308600686491,0.001784009858966,-0.010429340414703,0.053523629903793,0.041162997484207,-0.020293215289712,0.054350644350052,-0.001478054095060,-0.025213368237019,-0.015792448073626,0.034380000084639,0.052119612693787,0.000257557840087,-0.050336830317974));
res += mul(Get(s0,0,dy), float4x4(0.001679091481492,0.006128381006420,0.011933786794543,0.023075817152858,-0.000644682440907,-0.001963169546798,-0.013049099594355,-0.032061696052551,0.013414657674730,-0.012106045149267,-0.040406286716461,0.021233575418591,-0.001612108433619,0.000056229026086,-0.006628214847296,-0.003081975039095));
res += mul(Get(s0,dx,-dy), float4x4(0.003261355450377,0.001847348175943,0.002490543294698,0.001807634369470,0.007537656463683,-0.001864807447419,-0.003752760356292,-0.002192565472797,-0.002730051288381,0.001567730796523,0.003970438614488,0.001058237859979,-0.009574968367815,-0.001022651442327,0.002112186281011,0.001507006236352));
res += mul(Get(s0,dx,0), float4x4(0.004243347328156,0.008491177111864,0.007790941279382,0.005386549979448,-0.009049698710442,-0.008577473461628,0.005789338145405,0.015569519251585,0.007341433782130,-0.008357660844922,-0.006221436895430,-0.001287423772737,0.012875758111477,0.008340483531356,-0.009368957951665,-0.018775923177600));
res += mul(Get(s0,dx,dy), float4x4(-0.002358430298045,-0.003826892701909,-0.004329084418714,-0.000503437069710,0.000340649246937,-0.003881880082190,-0.002003171015531,0.000360421312507,-0.004880281630903,-0.009431218728423,-0.003532987087965,0.012742167338729,0.001032491796650,0.001418220810592,0.000878312392160,0.004634233657271));
res += mul(Get(s1,-dx,-dy), float4x4(-0.002524774521589,0.000737740541808,0.002041155472398,0.001290037063882,-0.007456354331225,-0.000245014816755,0.004744555801153,0.004137671552598,0.001274236477911,0.000375907635316,-0.000258799467701,-0.000023236132620,-0.003832003101707,-0.003711271798238,0.000045916589443,0.003731591161340));
res += mul(Get(s1,-dx,0), float4x4(0.002443552482873,-0.002352285664529,-0.005712505429983,-0.004885761067271,0.004282813053578,0.001089623197913,-0.000468148529762,-0.004044068977237,0.001437166589312,0.003043622011319,0.003771081566811,0.002474496839568,0.002967901062220,0.001356653636321,0.000706077262294,0.001714723883197));
res += mul(Get(s1,-dx,dy), float4x4(-0.006727372296154,-0.006124943494797,-0.001807652297430,0.002925916342065,-0.001257675001398,-0.003841558238491,-0.003113992512226,0.003373958403245,-0.000676856026985,-0.001049189013429,-0.000922715116758,-0.000089881526947,0.003308482468128,0.002650510286912,-0.002491087885574,-0.003357912879437));
res += mul(Get(s1,0,-dy), float4x4(0.007932154461741,0.003590970300138,-0.000440387957497,-0.001072401064448,0.014754256233573,0.011550459079444,-0.003157204948366,-0.001627037767321,-0.011339690536261,-0.011218982748687,-0.008502088487148,-0.002345485612750,-0.058025091886520,-0.004237446002662,0.023806145414710,0.008853306993842));
res += mul(Get(s1,0,0), float4x4(-0.013297868892550,-0.016390712931752,-0.004311828408390,0.009261857718229,0.017164997756481,0.071531675755978,-0.030895832926035,-0.052160035818815,-0.011654385365546,-0.007244631648064,-0.007928585633636,-0.013383726589382,-0.034116897732019,-0.011538701131940,0.059235714375973,0.000233409213251));
res += mul(Get(s1,0,dy), float4x4(0.012488794513047,0.017725078389049,0.010378571227193,-0.005105426069349,0.000313182332320,0.013351572677493,-0.000287951086648,-0.047370992600918,0.000650597619824,-0.001721922424622,-0.005077151115984,-0.007893391884863,0.001752748619765,-0.001269480562769,0.001783637795597,0.006963391788304));
res += mul(Get(s1,dx,-dy), float4x4(0.009685043245554,0.000904684362467,-0.005722935311496,-0.005458686035126,-0.002031671116129,0.000136155314976,0.002022326225415,0.003652783110738,-0.006174039095640,-0.003435968654230,-0.002961567835882,-0.002536260057241,-0.010632332414389,-0.003160657826811,0.002515736036003,0.002174891065806));
res += mul(Get(s1,dx,0), float4x4(-0.014313959516585,-0.003226308850572,0.007700012531132,0.011805296875536,0.006103021092713,0.009984176605940,0.000911743496545,-0.004064323380589,-0.017209623008966,-0.020335948094726,-0.018128143623471,-0.011775137856603,-0.007476724684238,0.001047319965437,0.012672170996666,0.000846179551445));
res += mul(Get(s1,dx,dy), float4x4(0.005650320090353,0.004292505793273,-0.003145861206576,-0.010748183354735,0.002274108584970,0.001000164076686,-0.003016819013283,-0.004227303899825,0.003214771859348,0.002392185851932,-0.002988985273987,-0.009449211880565,0.001227814005688,0.002373827854171,0.002247330266982,-0.002265133429319));
res += mul(Get(s2,-dx,-dy), float4x4(-0.002691894071177,0.000705046812072,0.000649322057143,0.003042413387448,0.000512956641614,-0.005847690626979,-0.008279806934297,-0.006010744255036,0.008376147598028,0.007286301348358,0.007242021616548,0.001613204600289,-0.016664240509272,-0.005414965562522,-0.002701806137338,-0.004210626240820));
res += mul(Get(s2,-dx,0), float4x4(-0.000417080271291,0.002968223299831,-0.009045759215951,-0.012932474724948,0.014388410374522,0.009614641778171,0.001392870326526,-0.000774709274992,0.003121995599940,0.007319387048483,0.009895692579448,0.010523524135351,0.008253591135144,0.017674406990409,0.012991696596146,-0.010971434414387));
res += mul(Get(s2,-dx,dy), float4x4(0.001405725488439,0.005916752852499,0.002367047592998,-0.006748897489160,0.002758084563538,0.004622438456863,0.005285463295877,0.009929720312357,-0.004737425595522,-0.005916620139033,-0.006412683520466,-0.004695031791925,-0.003607922466472,-0.007360776420683,-0.004324197303504,0.003162626875564));
res += mul(Get(s2,0,-dy), float4x4(0.041415683925152,0.003519331570715,-0.013409728184342,-0.007365536410362,0.004917115904391,0.002437547547743,0.000979205127805,0.002334647579119,0.016653031110764,0.010852210223675,0.001244617975317,-0.002937549026683,0.032040562480688,-0.014631498605013,-0.018904818221927,-0.010799824260175));
res += mul(Get(s2,0,0), float4x4(0.001313580549322,-0.040622916072607,-0.036232240498066,0.026668082922697,-0.003696122439578,-0.046056587249041,-0.038333222270012,-0.005830380599946,-0.058759402483702,-0.054981153458357,-0.015644764527678,0.012879475019872,-0.026017405092716,-0.042643539607525,0.016761783510447,0.070389740169048));
res += mul(Get(s2,0,dy), float4x4(-0.001826344174333,-0.000104092810943,0.006899781525135,0.014383167959750,-0.003821192774922,0.002812774619088,0.024919003248215,0.031446382403374,0.010017967782915,0.012523497454822,0.008706565015018,-0.018600691109896,0.002163768280298,0.004890764132142,0.006482761818916,0.002105016494170));
res += mul(Get(s2,dx,-dy), float4x4(-0.003654719330370,0.002440354553983,0.009088096208870,0.006634163204581,0.002711106557399,0.003056439571083,0.004444752354175,0.005743375513703,-0.008102641440928,-0.000795345462393,0.003900114679709,0.004548704251647,-0.002210308099166,0.004220434464514,0.005165225360543,0.003209729446098));
res += mul(Get(s2,dx,0), float4x4(0.000448095437605,0.004134621471167,0.005456831771880,-0.002683546161279,-0.021497465670109,-0.016235403716564,-0.002628648420796,0.002936924807727,0.002167546423152,-0.011485741473734,-0.016275485977530,-0.011863803490996,0.004460098687559,0.006927830167115,-0.003747839713469,-0.007722353097051));
res += mul(Get(s2,dx,dy), float4x4(-0.002752514788881,-0.003077569184825,-0.001842655357905,-0.000891633622814,0.000572618853766,-0.000236347608734,-0.001013095490634,-0.009203028865159,0.007701310329139,0.009512218646705,0.006860064342618,0.006554476451129,-0.001671528676525,0.002117943018675,-0.001908272039145,-0.006923273671418));
res += mul(Get(s3,-dx,-dy), float4x4(0.003498684382066,0.003473243908957,-0.002381470985711,-0.006566226482391,0.017745906487107,0.009456326253712,0.004403204191476,0.000509772449732,-0.007495813071728,-0.001193810487166,0.003488079877570,0.004523226991296,0.002494907006621,-0.000007765028386,-0.003169893752784,-0.004564503207803));
res += mul(Get(s3,-dx,0), float4x4(-0.005131720099598,-0.002910063369200,0.004189424216747,0.006010481622070,0.023564994335175,0.028367495164275,0.028019348159432,0.025101149454713,-0.009695317596197,-0.012706580571830,-0.013348281383514,-0.012690712697804,0.001317461370490,0.001964326482266,0.003043763805181,0.001686330186203));
res += mul(Get(s3,-dx,dy), float4x4(0.002090790541843,0.001877357019112,0.000249444361543,-0.001845837570727,0.000142857214087,0.001668257871643,0.004749969113618,0.012678939849138,-0.000335190445185,-0.001509662717581,-0.001840046257712,-0.004762529395521,-0.000168973303516,-0.000260444387095,0.001228977343999,0.001690401695669));
res += mul(Get(s3,0,-dy), float4x4(0.052665039896965,-0.025848180055618,-0.034147754311562,-0.000872192962561,0.024887677282095,0.012786401435733,0.004211640451103,0.000523733207956,0.030175380408764,0.014000711962581,0.004482692573220,0.001962183974683,-0.022173549979925,0.008498864248395,0.019577804952860,0.013557926751673));
res += mul(Get(s3,0,0), float4x4(-0.012673003599048,-0.021507602185011,-0.015102714300156,0.047085307538509,0.027645550668240,0.039620298892260,0.045552849769592,0.041682045906782,0.003551586996764,0.023643901571631,0.042866270989180,0.045098558068275,0.026625959202647,0.015299657359719,-0.017276743426919,-0.040672931820154));
res += mul(Get(s3,0,dy), float4x4(0.002937688492239,0.007966980338097,0.004006181377918,-0.009680975228548,0.002342938212678,0.001874146400951,0.004642704036087,0.012347840704024,0.002786368830130,0.000095438765129,-0.002224367111921,-0.003001115750521,-0.011268449947238,-0.012154649011791,-0.000769817910623,0.018739530816674));
res += mul(Get(s3,dx,-dy), float4x4(0.010162733495235,-0.003277697833255,-0.009108085185289,-0.006391302216798,-0.000321276747854,-0.000355883035809,-0.000544466485735,0.000100637276773,-0.002785232849419,-0.003736792132258,-0.001999445259571,-0.001163982087746,-0.003902530064806,-0.001655776984990,0.000853974546771,0.001005706493743));
res += mul(Get(s3,dx,0), float4x4(-0.006632070057094,-0.009824719280005,-0.001114461687393,0.013545110821724,-0.003226609667763,-0.003488028654829,-0.002355164615437,-0.001444927765988,0.008438055403531,0.008356129750609,0.006766174919903,0.001247859327123,-0.001543196733110,-0.000614784250502,0.000947773514781,-0.001302320160903));
res += mul(Get(s3,dx,dy), float4x4(0.001522517297417,0.001509375870228,-0.000285765971057,-0.002329415641725,-0.001454482553527,-0.001442114356905,-0.002240604953840,-0.003221222432330,-0.002835575724021,-0.002212678315118,-0.000560287153348,0.004135280847549,0.000585608824622,-0.000033322070522,0.000669268250931,0.001019019866362));
res += mul(Get(s4,-dx,-dy), float4x4(-0.008408108726144,-0.006850948557258,-0.004939304199070,-0.002966671716422,-0.006204338278621,0.003213687334210,0.010390586219728,0.008427968248725,0.001328057842329,0.002227789722383,0.003743901615962,0.003228001762182,0.010665781795979,0.006430876441300,0.003121199319139,0.001260162447579));
res += mul(Get(s4,-dx,0), float4x4(-0.009000063873827,-0.008480444550514,-0.008918997831643,-0.009333619847894,0.015633830800653,0.002559440908954,-0.010191205888987,-0.010896177031100,-0.001266526058316,-0.001874959329143,-0.001284005003981,-0.000078883509559,0.012899572029710,0.016485735774040,0.017053846269846,0.015024049207568));
res += mul(Get(s4,-dx,dy), float4x4(-0.004145857878029,-0.006682128645480,-0.008442902937531,-0.009686754085124,0.004847004543990,0.001963829854503,-0.004981388803571,0.006005581002682,0.001964098308235,0.001654650899582,0.000316208170261,-0.000134917761898,0.001794200972654,0.002611905336380,0.004432325717062,0.008709897287190));
res += mul(Get(s4,0,-dy), float4x4(0.006765977945179,-0.005805918946862,-0.010947971604764,-0.008379847742617,-0.007222861517221,-0.012036632746458,-0.007651347201318,-0.004814167506993,-0.011184610426426,-0.005559561774135,-0.001768810325302,0.000689752807375,0.003965693525970,0.004717750474811,0.001327502191998,-0.000727700185962));
res += mul(Get(s4,0,0), float4x4(0.025775052607059,0.038008570671082,0.037551824003458,0.024681320413947,-0.061938792467117,-0.013624945655465,0.054052401334047,0.033690698444843,-0.010917913168669,-0.018002081662416,-0.018515849485993,-0.014936942607164,-0.031241402029991,-0.029558669775724,-0.020528836175799,-0.007631017360836));
res += mul(Get(s4,0,dy), float4x4(-0.001826594234444,-0.003990854136646,-0.002330933231860,0.007802236359566,0.006935675162822,0.014163054525852,0.014261908829212,-0.022563293576241,0.000955011753831,0.002673037350178,0.003017084440216,-0.002276331651956,0.002279786393046,-0.000855611287989,-0.008083757013083,-0.018903471529484));
res += mul(Get(s4,dx,-dy), float4x4(-0.002553371479735,-0.006228071637452,-0.006954124663025,-0.004561829846352,0.012100517749786,0.011498466134071,-0.006385662127286,-0.009139602072537,-0.030841955915093,-0.021612644195557,-0.010570353828371,-0.003374288091436,0.004783762618899,0.001753635588102,-0.000682374229655,-0.002125498140231));
res += mul(Get(s4,dx,0), float4x4(-0.001256828778423,0.004124453291297,0.005130532197654,0.001049911836162,0.013670339249074,0.006882252637297,-0.012475946918130,-0.010153567418456,-0.011209962889552,-0.018283126875758,-0.027701655402780,-0.036067150533199,0.001325815333985,0.003264297731221,0.005306009203196,0.006306950934231));
res += mul(Get(s4,dx,dy), float4x4(0.000576729013119,-0.002016975311562,-0.005003279075027,-0.004389065317810,-0.001730125746690,-0.001572627807036,-0.000951605674345,0.004019841086119,-0.003681242465973,-0.004253749735653,-0.003413714701310,-0.002292670775205,0.001572320354171,0.002101264661178,0.002184507669881,0.002235313411802));
res += mul(Get(s5,-dx,-dy), float4x4(0.006967507302761,0.000672471767757,-0.003990351688117,-0.004170017316937,-0.002476096851751,-0.002182719996199,-0.001891094841994,-0.001394187100232,0.000609178794548,0.002388931345195,0.008523595519364,0.007568074855953,0.001181264058687,0.001000905060209,0.001186373876408,0.001912960200571));
res += mul(Get(s5,-dx,0), float4x4(-0.014288693666458,-0.009088160470128,0.004953181371093,0.012440967373550,-0.004041109234095,-0.003601105185226,-0.003134157042950,-0.002650384558365,-0.007307026069611,-0.010244554840028,-0.004906681831926,0.003658459987491,0.004745524842292,-0.000003886246304,-0.003050887025893,-0.002314897254109));
res += mul(Get(s5,-dx,dy), float4x4(0.001375735853799,0.003363877069205,0.001591678941622,-0.007276774384081,0.000660874531604,0.000100258723251,-0.000755023444071,-0.001522994250990,0.003001023316756,0.001391212106682,-0.001722994493321,-0.003962449729443,-0.010925392620265,-0.003410064149648,0.008371141739190,0.010612023994327));
res += mul(Get(s5,0,-dy), float4x4(-0.000980935757980,-0.002466104459018,-0.007736995816231,-0.009121084585786,0.003223966341466,0.004019623622298,0.004987898748368,0.005719057749957,0.008369684219360,0.015574995428324,0.001301516662352,-0.004356001038104,-0.000733309658244,0.004709523636848,0.004582818131894,0.003064340911806));
res += mul(Get(s5,0,0), float4x4(-0.049594622105360,-0.021852457895875,0.040905773639679,0.026359742507339,0.003134089056402,0.000789584533777,-0.000610462215263,-0.000873772136401,0.048883210867643,0.004189009312540,-0.053132280707359,-0.039005089551210,0.024121131747961,-0.023646047338843,-0.019344767555594,-0.005453699268401));
res += mul(Get(s5,0,dy), float4x4(0.005315620917827,0.010071459226310,0.019075702875853,-0.000210106620216,0.002175035420805,0.004440642427653,0.004352978896350,0.003621226409450,-0.012117088772357,-0.012900290079415,0.000514659681357,0.031599346548319,-0.011059678159654,-0.037462037056684,-0.001043364522047,0.059358965605497));
res += mul(Get(s5,dx,-dy), float4x4(0.004066302906722,-0.001996718812734,-0.002796006388962,-0.000829646596685,-0.036532361060381,-0.023049445822835,-0.012572206556797,-0.005866211839020,-0.001056375214830,-0.001630816492252,-0.004331000614911,-0.005132380407304,-0.003015191061422,-0.001146682421677,0.001210284885019,0.002419411903247));
res += mul(Get(s5,dx,0), float4x4(-0.009123551659286,0.004824587609619,0.007760078180581,0.006836993154138,-0.016294183209538,-0.030006229877472,-0.039759498089552,-0.042009122669697,-0.005182925611734,0.004905944224447,0.008199416100979,0.003134955186397,0.009044419042766,0.007299741730094,-0.004018932115287,-0.008625780232251));
res += mul(Get(s5,dx,dy), float4x4(0.003824603511021,0.008631983771920,0.001876585418358,-0.014059827663004,-0.003182603046298,-0.001700234948657,-0.002647067420185,-0.007915494032204,0.000059742127632,0.003402712289244,0.006339035462588,-0.001873491681181,0.001630491809919,-0.001523237908259,-0.008064959198236,-0.003259834367782));
return res;
}