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
res += mul(Get(s0,-dx,-dy), float4x4(0.000053446456150,0.050153598189354,-0.018468182533979,-0.013550131581724,-0.000131822744152,0.065266244113445,0.010574325919151,-0.035233631730080,0.000145890822751,-0.015607221983373,0.019134124740958,0.035562418401241,0.000262909568846,-0.025189818814397,0.015534472651780,0.034114625304937));
res += mul(Get(s0,-dx,0), float4x4(-0.000509506207891,0.014933190308511,-0.003619858995080,0.031718138605356,-0.000105437306047,-0.038236323744059,0.066140815615654,-0.041451420634985,0.000605229055509,0.007753924466670,0.063892737030983,-0.042674180120230,0.000544620270375,0.086451485753059,-0.005937431938946,-0.026574335992336));
res += mul(Get(s0,-dx,dy), float4x4(-0.000449925631983,-0.038873661309481,-0.000731440144591,0.045080222189426,-0.000027752666938,-0.000456970999949,0.003997277934104,-0.017793951556087,0.000338923739037,0.014319384470582,0.046640254557133,0.012219553813338,0.000459735019831,0.049209397286177,-0.024056017398834,-0.044945336878300));
res += mul(Get(s0,0,-dy), float4x4(-0.000057077973906,0.063438162207603,-0.035262279212475,0.005707770120353,0.000062193394115,0.128824502229691,-0.008606396615505,0.023099539801478,0.000510060635861,-0.029109509661794,0.060396626591682,0.036103464663029,0.000051720235206,-0.017123341560364,0.030609250068665,0.056624453514814));
res += mul(Get(s0,0,0), float4x4(-0.000570101721678,-0.029524326324463,-0.002232939470559,0.046698842197657,-0.000247274030698,0.042492996901274,-0.003896346781403,-0.000067165587097,0.000343501160387,0.162191793322563,-0.066823191940784,0.009526527486742,0.000276236620266,0.055383604019880,-0.000441021169536,0.056023418903351));
res += mul(Get(s0,0,dy), float4x4(-0.000345726817613,-0.037015561014414,0.010480483062565,0.007643342483789,-0.000266698625637,-0.012104612775147,0.027761790901423,-0.029083879664540,-0.000320863240631,-0.001106036012061,0.033638976514339,0.030959900468588,0.000577842118219,0.027716139331460,-0.025936979800463,0.029192224144936));
res += mul(Get(s0,dx,-dy), float4x4(-0.000136468850542,0.021711446344852,-0.033862389624119,0.035004012286663,0.000016020281691,-0.007958801463246,0.081295184791088,0.000717478804290,0.000146963386214,-0.015821861103177,0.007679565809667,0.026692153885961,-0.000279814936221,-0.022376613691449,-0.009430184029043,0.045851994305849));
res += mul(Get(s0,dx,0), float4x4(-0.000235470521147,-0.007263350766152,-0.004305173642933,0.008517878130078,-0.000437515758676,-0.002933436306193,0.014711112715304,0.041996989399195,0.000002337095566,-0.020307315513492,0.053367987275124,0.058424223214388,0.000043247000576,0.000275607104413,0.036360599100590,0.041475232690573));
res += mul(Get(s0,dx,dy), float4x4(-0.000023796663299,-0.013908280991018,-0.013901740312576,-0.031870726495981,-0.000279154774034,-0.008111242204905,-0.002802365226671,-0.029816387221217,0.000014429477233,-0.013359214179218,0.014437498524785,0.014628159813583,0.000368953129509,0.021462943404913,-0.018489981070161,0.033165074884892));
res += mul(Get(s1,-dx,-dy), float4x4(0.000284174515400,0.005987130571157,0.010613515973091,0.015854084864259,0.000294111174298,0.006755603477359,-0.015191338956356,-0.058788456022739,0.000032563661080,0.021221173927188,-0.043358765542507,-0.035074818879366,0.000525263429154,-0.028161400929093,-0.010398754850030,0.009093847125769));
res += mul(Get(s1,-dx,0), float4x4(0.000360348552931,0.005935217719525,0.028722561895847,-0.015875104814768,0.000017232694518,-0.020087309181690,0.024374952539802,-0.036640085279942,0.000033622633055,-0.054467391222715,-0.040064938366413,-0.011724542826414,0.000342789775459,0.042377356439829,0.024462262168527,-0.006243083626032));
res += mul(Get(s1,-dx,dy), float4x4(0.000243187110755,-0.008270185440779,0.044815856963396,-0.033133290708065,0.000099718148704,-0.016727771610022,0.037764478474855,-0.017808597534895,-0.000251877412666,-0.013557204045355,-0.046298891305923,-0.006841318681836,0.000505896750838,0.017763426527381,0.013280157931149,-0.025665387511253));
res += mul(Get(s1,0,-dy), float4x4(0.000188934485777,-0.012462591752410,0.037624750286341,0.005122955422848,0.000343938998412,0.030211966484785,-0.037573575973511,-0.020182851701975,-0.000084834813606,0.025388477370143,-0.004962926730514,-0.016217330470681,0.000219711655518,-0.042135644704103,0.004427082836628,0.032133061438799));
res += mul(Get(s1,0,0), float4x4(0.000680818746332,-0.008322928100824,0.044423956423998,-0.003678817534819,-0.000013460319678,0.036550540477037,-0.016676872968674,-0.005419787019491,-0.000129857362481,0.076571263372898,-0.008586630225182,0.006911745294929,0.000236382955336,0.005630927626044,0.061801236122847,0.005538455210626));
res += mul(Get(s1,0,dy), float4x4(-0.000101057587017,0.081958770751953,-0.029496138915420,-0.016019359230995,0.000102591635368,-0.004160703625530,0.050745092332363,0.002660673810169,-0.000094670256658,0.006470690015703,0.005319550633430,0.011780556291342,0.000651479291264,0.025383999571204,0.013236133381724,-0.027525659650564));
res += mul(Get(s1,dx,-dy), float4x4(0.000370361492969,-0.014718114398420,0.012009187601507,0.000392628629925,-0.000027085823604,0.012063545174897,-0.010631902143359,0.025749670341611,0.000073867668107,-0.053486920893192,0.023640697821975,-0.054506622254848,0.000073556533607,-0.019097313284874,-0.015597831457853,-0.006032233126462));
res += mul(Get(s1,dx,0), float4x4(0.000471266102977,0.009430924430490,0.019059194251895,0.009973272681236,-0.000080757083197,-0.007603506091982,0.000182500371011,0.040421959012747,0.000270262651611,-0.083042144775391,0.039605900645256,-0.044745787978172,0.000277664832538,-0.033270042389631,0.044360935688019,-0.027823287993670));
res += mul(Get(s1,dx,dy), float4x4(-0.000200322290766,-0.004381041508168,-0.009739579632878,0.019361702725291,0.000155957866809,-0.012152748182416,0.023275524377823,0.021135119721293,0.000332033669110,-0.047366902232170,0.020493932068348,-0.017279833555222,0.000494264590088,-0.007735628634691,-0.011897531338036,-0.006713100243360));
res += mul(Get(s2,-dx,-dy), float4x4(-0.000251515506534,-0.051834747195244,0.050145722925663,0.069969072937965,-0.000476573361084,-0.037358995527029,-0.013324982486665,0.055098749697208,0.000297505117487,-0.013096443377435,-0.004854128230363,0.028025250881910,-0.000283870671410,0.032045967876911,-0.023765949532390,-0.074007131159306));
res += mul(Get(s2,-dx,0), float4x4(-0.000191797851585,-0.055557083338499,0.099601686000824,0.038269873708487,-0.000404034653911,0.003722599474713,-0.015497132204473,0.030832812190056,0.000276999548078,0.004801458679140,-0.001040645176545,0.021775154396892,-0.000562122440897,0.050877399742603,-0.016615608707070,-0.118020631372929));
res += mul(Get(s2,-dx,dy), float4x4(0.000075991483754,-0.013260852545500,0.029749261215329,0.054532941430807,-0.000397399679059,0.016977684572339,-0.039433311671019,-0.004191773943603,0.000294898520224,-0.013243133202195,-0.036437712609768,-0.031547721475363,-0.000495743995998,0.019214514642954,-0.026541698724031,-0.078381121158600));
res += mul(Get(s2,0,-dy), float4x4(0.000057402347011,-0.013664298690856,0.016150902956724,0.019867965951562,-0.000197916786419,-0.071714870631695,0.014978773891926,0.031656749546528,0.000238352818997,-0.038631144911051,0.051226418465376,0.020656386390328,0.000085193161794,-0.017558161169291,0.013384701684117,-0.023868458345532));
res += mul(Get(s2,0,0), float4x4(0.000193708343431,0.038121812045574,-0.004795079119503,-0.024003596976399,-0.000301337975543,0.067757740616798,-0.024660916998982,-0.039883010089397,0.000920873309951,-0.018794858828187,0.072490036487579,-0.006675359327346,0.000096080671938,0.070466220378876,-0.060515351593494,-0.046802956610918));
res += mul(Get(s2,0,dy), float4x4(0.000232590769883,0.037300780415535,0.039249137043953,-0.016618104651570,-0.000401595694711,-0.010251848027110,-0.042046017944813,-0.027876336127520,0.000697019509971,0.044525574892759,-0.032052610069513,-0.028057903051376,-0.000121287070215,-0.035395905375481,-0.012281719595194,-0.017810072749853));
res += mul(Get(s2,dx,-dy), float4x4(0.000250452023465,-0.009596121497452,-0.002452059416100,0.046926729381084,-0.000076385658758,-0.014405911788344,-0.014009843580425,0.009853465482593,0.000249086588155,0.006965186912566,0.003850541077554,0.050275698304176,-0.000223278257181,0.024218399077654,0.011994948610663,0.036342952400446));
res += mul(Get(s2,dx,0), float4x4(0.000160646115546,0.019444689154625,-0.016828013584018,0.036804489791393,-0.000194070700672,0.027198664844036,-0.027321213856339,-0.029640551656485,0.000544810784049,0.061361342668533,0.027237135916948,0.050308823585510,-0.000379008299205,0.110808357596397,-0.014561583288014,0.071321986615658));
res += mul(Get(s2,dx,dy), float4x4(0.000075446092524,0.018426764756441,-0.004100782331079,0.045215945690870,-0.000383877457352,-0.004145158454776,-0.051114730536938,-0.022020380944014,0.000364972511306,0.042799338698387,-0.017609734088182,0.053482748568058,-0.000325064116623,0.029590517282486,-0.013159333728254,0.031091010197997));
res += mul(Get(s3,-dx,-dy), float4x4(-0.000077000135207,0.021824086084962,-0.035350199788809,0.040868677198887,0.000544793438166,-0.000188063015230,-0.017995405942202,0.021786456927657,-0.000531397643499,0.040746938437223,-0.042429484426975,-0.065541721880436,0.000081514452177,0.031043821945786,0.004627684131265,-0.011934233829379));
res += mul(Get(s3,-dx,0), float4x4(-0.000454611523310,0.000151823624037,0.014004065655172,0.151146680116653,0.000267556286417,0.014665511436760,-0.005358633119613,0.011649177409708,-0.000566023867577,0.041576094925404,-0.033385604619980,-0.071456141769886,-0.000126518018078,0.003818251891062,0.057372886687517,-0.005764644127339));
res += mul(Get(s3,-dx,dy), float4x4(-0.000077996526670,0.026257174089551,-0.097563080489635,0.042346797883511,-0.000583918357734,-0.005170318298042,-0.026271173730493,0.035069592297077,-0.000708651903551,0.028189765289426,-0.023674892261624,-0.046131700277328,0.000059491736465,-0.007506246678531,0.052401166409254,0.041735101491213));
res += mul(Get(s3,0,-dy), float4x4(-0.000192099192645,0.056993536651134,-0.004576671868563,-0.026112696155906,0.000500968424603,0.007264754734933,0.018786460161209,0.031927786767483,-0.000177268506377,0.104592159390450,-0.033753052353859,-0.049548905342817,0.000438545626821,0.040930677205324,-0.018040729686618,-0.011586558073759));
res += mul(Get(s3,0,0), float4x4(0.000105397470179,-0.117775522172451,0.187576696276665,0.001664553419687,0.000346463406458,0.065913654863834,-0.000092113630672,0.013857111334801,-0.000883798871655,0.065237656235695,-0.033020362257957,0.013637256808579,0.000177277528564,0.072375871241093,-0.019827665761113,-0.004359187558293));
res += mul(Get(s3,0,dy), float4x4(0.000622873078100,0.061550401151180,-0.012817760929465,-0.050465460866690,-0.000673077709507,0.005885884165764,-0.004960155114532,0.009379312396049,-0.000958288379479,-0.027518948540092,0.030429998412728,0.002677444601431,0.000015556186554,-0.013048919849098,0.063839770853519,0.025027737021446));
res += mul(Get(s3,dx,-dy), float4x4(0.000600958417635,0.041920524090528,-0.026029588654637,0.015953471884131,0.000169806080521,0.016546079888940,-0.009063662029803,0.006231982726604,-0.000392054935219,0.006650031078607,-0.014849456958473,-0.057473540306091,-0.000079104072938,0.040072221308947,-0.042852539569139,0.012724895961583));
res += mul(Get(s3,dx,0), float4x4(0.000706289021764,0.078389063477516,-0.001834056107327,0.000111849629320,0.000423971534474,-0.010061793960631,0.010376925580204,-0.000072531402111,-0.000993914436549,-0.027092941105366,0.023433327674866,0.002847301308066,-0.000185103723197,-0.000410717184423,-0.024141086265445,0.046736184507608));
res += mul(Get(s3,dx,dy), float4x4(0.000232938546105,0.029898604378104,-0.025065628811717,0.035824641585350,-0.000411952321883,-0.027215460315347,-0.012309324927628,-0.011426622979343,-0.000836741935927,0.006622721906751,0.012830597348511,-0.021394412964582,-0.000253307021922,-0.007342966273427,-0.009598479606211,0.032874550670385));
return max(float4(0,0,0,0), res);
}
