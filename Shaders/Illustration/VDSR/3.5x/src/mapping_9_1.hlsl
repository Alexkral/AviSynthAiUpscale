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
res += mul(Get(s0,-dx,-dy), float4x4(0.111627556383610,-0.404039084911346,0.261345028877258,-0.095282822847366,0.003796353703365,0.012724481523037,0.202858641743660,0.148902401328087,-0.045336600393057,-0.011602067388594,-0.073356032371521,-0.112459994852543,-0.100287534296513,-0.082959592342377,-0.107971489429474,-0.114160358905792));
res += mul(Get(s0,-dx,0), float4x4(0.125250250101089,-0.085881493985653,0.436085700988770,-0.130686104297638,0.170281603932381,0.059323836117983,0.401299893856049,0.101006194949150,0.071218430995941,-0.191363438963890,-0.216555222868919,-0.109497562050819,-0.063223131000996,0.062283545732498,0.144853532314301,-0.099732197821140));
res += mul(Get(s0,-dx,dy), float4x4(-0.036541972309351,-0.147328287363052,0.436284214258194,-0.011541107669473,0.004351074807346,-0.140159338712692,0.317479312419891,0.028125628829002,0.271367758512497,-0.389455407857895,-0.100184828042984,0.185616970062256,-0.037793595343828,0.222495660185814,0.049851510673761,-0.027930490672588));
res += mul(Get(s0,0,-dy), float4x4(0.267368555068970,-0.094130463898182,0.248667091131210,0.031456433236599,-0.110623687505722,0.195270806550980,0.036039855331182,0.242255017161369,-0.034672208130360,0.193352624773979,-0.021707942709327,-0.086880177259445,-0.117321170866489,-0.001105231815018,0.046827472746372,0.040386516600847));
res += mul(Get(s0,0,0), float4x4(0.247791349887848,0.023869741708040,-0.018781632184982,-0.038446787744761,0.019336523488164,0.161765888333321,-0.076850585639477,0.219215810298920,0.070155471563339,0.456700026988983,0.069018140435219,-0.082842059433460,-0.045377608388662,0.079145818948746,0.043010458350182,-0.023518359288573));
res += mul(Get(s0,0,dy), float4x4(-0.169045731425285,-0.152926251292229,-0.061968944966793,-0.014993997290730,-0.032056968659163,0.096309520304203,0.245239645242691,0.139964118599892,-0.047165613621473,0.123395569622517,-0.028455410152674,-0.094963863492012,0.071105010807514,0.312211483716965,-0.035634290426970,0.013923550024629));
res += mul(Get(s0,dx,-dy), float4x4(-0.020285459235311,0.165234237909317,0.156380429863930,0.091592334210873,-0.080842457711697,-0.072929821908474,0.065104842185974,0.264886856079102,0.061006128787994,-0.133493423461914,0.100596807897091,-0.009526153095067,-0.158328831195831,-0.172473445534706,-0.032117567956448,-0.033809158951044));
res += mul(Get(s0,dx,0), float4x4(0.029278043657541,0.003497237106785,-0.127986595034599,0.049089834094048,0.074123620986938,0.149305835366249,0.021462310105562,0.010432853363454,-0.032049715518951,0.140873581171036,0.088761933147907,-0.022221283987164,-0.130525469779968,-0.073393017053604,0.105269610881805,-0.141248568892479));
res += mul(Get(s0,dx,dy), float4x4(0.123890988528728,-0.111762642860413,-0.116326838731766,-0.087412662804127,0.038768216967583,0.058681648224592,-0.046952806413174,0.098023764789104,0.088635332882404,-0.026756245642900,0.037020593881607,0.094964332878590,-0.003477775724605,0.121568314731121,-0.006757038179785,0.019021894782782));
res += mul(Get(s1,-dx,-dy), float4x4(0.105008304119110,-0.132862597703934,0.005722073372453,-0.043385978788137,-0.006576141808182,-0.108434908092022,0.177755698561668,-0.132104769349098,0.097657851874828,-0.175073876976967,-0.220735341310501,-0.128303959965706,0.055114500224590,-0.002742903772742,-0.123593859374523,0.036543089896441));
res += mul(Get(s1,-dx,0), float4x4(0.010435569100082,-0.072843410074711,-0.122549720108509,-0.047980032861233,-0.050190765410662,-0.066697418689728,0.300430655479431,0.107152685523033,-0.114768624305725,0.031803246587515,-0.091841563582420,-0.086535394191742,-0.005443223752081,-0.097407981753349,0.032903417944908,-0.094748191535473));
res += mul(Get(s1,-dx,dy), float4x4(0.267531782388687,-0.083883099257946,-0.029084105044603,0.158353805541992,-0.025178670883179,0.313867330551147,0.114456512033939,0.421593844890594,-0.093286439776421,-0.084218271076679,-0.087213344871998,0.038860894739628,-0.091925777494907,-0.022056898102164,-0.044134996831417,-0.065939694643021));
res += mul(Get(s1,0,-dy), float4x4(0.016755074262619,-0.016265418380499,0.042874876409769,0.145359262824059,-0.059974700212479,-0.096012592315674,-0.201115742325783,-0.105523847043514,-0.028882797807455,-0.169125452637672,-0.016410270705819,-0.140618965029716,0.053888518363237,0.029447298496962,-0.085346564650536,-0.083479687571526));
res += mul(Get(s1,0,0), float4x4(-0.036138914525509,0.252346485853195,-0.045404817909002,0.003187871538103,-0.047922633588314,-0.036752630025148,0.020349849015474,0.176973909139633,-0.075642347335815,-0.144069984555244,0.080772690474987,-0.109841562807560,0.031479835510254,-0.062379851937294,0.105502285063267,-0.174286767840385));
res += mul(Get(s1,0,dy), float4x4(-0.087998911738396,0.056249607354403,-0.155313640832901,0.114265926182270,0.014926522970200,-0.056578580290079,-0.117629259824753,0.208688333630562,0.026218092069030,-0.251165777444839,-0.029218915849924,-0.065267622470856,-0.165328100323677,-0.175403714179993,0.270013332366943,-0.052293468266726));
res += mul(Get(s1,dx,-dy), float4x4(0.003538158023730,-0.048416845500469,0.107144966721535,-0.003835964249447,-0.165585935115814,-0.132070660591125,-0.207235202193260,0.134579122066498,-0.185133844614029,-0.033965174108744,-0.049059528857470,-0.011156385764480,0.040695149451494,0.059034626930952,-0.137191280722618,-0.090446807444096));
res += mul(Get(s1,dx,0), float4x4(-0.140087693929672,0.247775360941887,0.039246771484613,-0.009932022541761,-0.028654655441642,-0.166454032063484,-0.056603312492371,0.159771457314491,0.031480707228184,-0.115221112966537,0.036625288426876,-0.121165387332439,0.094611518085003,0.047881506383419,-0.109456256031990,-0.102559760212898));
res += mul(Get(s1,dx,dy), float4x4(-0.218258872628212,0.039106953889132,-0.048942781984806,0.181326374411583,0.037247393280268,-0.091507650911808,-0.087256707251072,0.294387280941010,0.179289519786835,-0.155365735292435,-0.040425568819046,-0.093259036540985,0.139277189970016,-0.302097856998444,0.138474613428116,-0.063218332827091));
res += mul(Get(s2,-dx,-dy), float4x4(0.099624291062355,-0.081659115850925,-0.096586458384991,-0.046985059976578,-0.003770987968892,-0.232245162129402,-0.127614468336105,0.135124057531357,0.045541916042566,0.004434320610017,-0.021420886740088,-0.029092378914356,-0.130473494529724,0.241175070405006,-0.136805221438408,-0.121473424136639));
res += mul(Get(s2,-dx,0), float4x4(0.108484573662281,-0.030935995280743,-0.279550880193710,0.074510447680950,-0.017962250858545,-0.150833085179329,-0.197117745876312,0.125436067581177,-0.017707798629999,0.059724081307650,-0.088777206838131,-0.102078489959240,-0.115816652774811,0.036563273519278,-0.227481052279472,-0.105112552642822));
res += mul(Get(s2,-dx,dy), float4x4(0.059659548103809,0.137791648507118,-0.062084134668112,0.117068313062191,-0.113873258233070,0.136222362518311,-0.185536667704582,-0.132565543055534,0.110365755856037,-0.000503940391354,-0.220656931400299,-0.006123452913016,0.361648648977280,-0.132749304175377,-0.129826799035072,-0.026621257886291));
res += mul(Get(s2,0,-dy), float4x4(0.205212205648422,0.075725890696049,-0.001217084005475,-0.212545901536942,-0.055899310857058,-0.093196786940098,0.204576686024666,0.063583530485630,-0.084669969975948,-0.024325110018253,-0.080921955406666,0.030250718817115,-0.022971548140049,0.281583726406097,-0.000172630330781,-0.146266728639603));
res += mul(Get(s2,0,0), float4x4(0.050714567303658,0.022688323631883,-0.054668147116899,-0.013520540669560,-0.063127145171165,-0.020291740074754,0.196274638175964,-0.026566559448838,0.050645660609007,-0.065821364521980,-0.084821708500385,-0.012612986378372,-0.107850097119808,0.024837763980031,-0.133829891681671,-0.061178985983133));
res += mul(Get(s2,0,dy), float4x4(-0.025303546339273,0.055210072547197,0.017677048221231,-0.070220082998276,-0.102119393646717,0.332224667072296,0.035316091030836,-0.035716082900763,0.115194693207741,0.079346396028996,-0.087690308690071,0.050683099776506,0.072199858725071,0.021545367315412,0.053365733474493,0.075070090591908));
res += mul(Get(s2,dx,-dy), float4x4(-0.176786944270134,0.106586702167988,-0.147172868251801,0.208562418818474,-0.096873916685581,-0.011744892224669,0.044773131608963,0.132932394742966,-0.133997678756714,0.151306509971619,-0.080223791301250,0.026427414268255,-0.142741009593010,0.111455276608467,0.113762542605400,-0.160999402403831));
res += mul(Get(s2,dx,0), float4x4(-0.038380689918995,0.105657786130905,-0.238588392734528,0.417589545249939,-0.079907231032848,-0.075047776103020,0.120243921875954,-0.024954654276371,-0.064190432429314,0.011319589801133,0.036115303635597,-0.023618984967470,-0.011641525663435,-0.008938099257648,-0.072201438248158,0.013676781207323));
res += mul(Get(s2,dx,dy), float4x4(-0.103909596800804,-0.025874791666865,0.131165742874146,-0.002611600561067,-0.033056620508432,0.195519596338272,-0.119267329573631,0.120548419654369,-0.011170275509357,0.134914651513100,-0.006759544368833,0.120531313121319,-0.060812957584858,0.293844848871231,0.063272453844547,0.071554593741894));
res += mul(Get(s3,-dx,-dy), float4x4(0.121716253459454,-0.150021895766258,0.030689960345626,-0.102728083729744,0.205918580293655,0.014663237147033,-0.218030795454979,-0.107381433248520,-0.086855523288250,0.112614095211029,-0.056442163884640,-0.055855013430119,-0.103803798556328,0.153943464159966,-0.186525866389275,0.137380197644234));
res += mul(Get(s3,-dx,0), float4x4(-0.099612236022949,-0.173503369092941,-0.039056818932295,-0.046960428357124,-0.011333325877786,0.016778504475951,0.131895706057549,0.176531821489334,0.033090610057116,0.049082443118095,-0.019128737971187,-0.098960541188717,-0.121169231832027,0.030127139762044,-0.022890845313668,-0.014084810391068));
res += mul(Get(s3,-dx,dy), float4x4(-0.104829654097557,-0.034265372902155,-0.031187381595373,-0.044509418308735,0.021812025457621,0.095646835863590,-0.031803525984287,-0.069329634308815,0.335197955369949,-0.016515193507075,0.066291615366936,0.028393171727657,-0.105129577219486,-0.213708519935608,0.515225350856781,-0.030008040368557));
res += mul(Get(s3,0,-dy), float4x4(0.127846091985703,-0.103439249098301,-0.011393829248846,-0.139432623982430,0.067630909383297,-0.037609871476889,-0.159966170787811,-0.223608732223511,0.215677082538605,0.193987935781479,0.002908110851422,-0.067486070096493,-0.059269107878208,0.133031070232391,0.015786159783602,0.042497694492340));
res += mul(Get(s3,0,0), float4x4(-0.026734348386526,0.145739033818245,0.024096885696054,-0.015444335527718,-0.061681304126978,0.161756545305252,0.145516559481621,0.131736874580383,0.103728935122490,-0.020126681774855,-0.073392480611801,-0.075874894857407,-0.095953769981861,0.231221273541451,-0.123535454273224,0.070118077099323));
res += mul(Get(s3,0,dy), float4x4(-0.040842857211828,-0.065022230148315,-0.077743619680405,-0.047824770212173,-0.026513710618019,0.082072116434574,0.010552442632616,-0.043732006102800,0.112034611403942,0.213964477181435,0.091191239655018,0.098799355328083,-0.135865539312363,-0.125619530677795,0.314899802207947,-0.024958128109574));
res += mul(Get(s3,dx,-dy), float4x4(-0.033564738929272,-0.112554498016834,-0.072136841714382,-0.138593569397926,-0.098307900130749,-0.016328314319253,0.270869553089142,0.005575451068580,0.535721600055695,-0.038203462958336,0.008728349581361,-0.009831085801125,-0.129601299762726,-0.082461349666119,0.148755922913551,-0.114971980452538));
res += mul(Get(s3,dx,0), float4x4(-0.079100988805294,-0.011021674610674,-0.019842145964503,-0.078377626836300,-0.073304466903210,-0.028805328533053,0.212324559688568,0.306262910366058,0.470305591821671,-0.147373974323273,0.038839899003506,0.126727566123009,-0.097840361297131,0.042340256273746,-0.066727556288242,0.011442609131336));
res += mul(Get(s3,dx,dy), float4x4(0.084864877164364,-0.108512744307518,-0.243212580680847,-0.179943725466728,-0.125910833477974,-0.011839043349028,0.153945088386536,-0.006498711649328,-0.059122320264578,0.089258342981339,0.064066380262375,0.153135806322098,-0.175070866942406,-0.073628865182400,0.121391490101814,0.135030597448349));
return max(float4(0,0,0,0), res);
}
