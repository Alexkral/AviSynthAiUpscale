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
res += mul(Get(s0,-dx,-dy), float4x4(0.260507464408875,-0.171862676739693,0.087547369301319,-0.027113087475300,0.050896044820547,-0.042910624295473,0.109709128737450,-0.234484732151031,-0.062766313552856,-0.140967354178429,0.170809164643288,-0.137781247496605,-0.177997171878815,-0.006406472530216,0.043756268918514,0.081050507724285));
res += mul(Get(s0,-dx,0), float4x4(-0.283742159605026,-0.080566689372063,0.508662581443787,-0.151337742805481,-0.010839552618563,0.060557741671801,0.232842251658440,-0.185287013649940,-0.101449057459831,0.099408529698849,-0.042617391794920,-0.085085257887840,0.005944199394435,-0.089636176824570,-0.012974780052900,0.006863634567708));
res += mul(Get(s0,-dx,dy), float4x4(-0.214544475078583,0.077171973884106,0.048987973481417,-0.011842465028167,-0.024127002805471,0.152420967817307,-0.016500711441040,-0.164869338274002,0.025943228974938,0.108961172401905,-0.103809610009193,-0.036993879824877,0.374301046133041,0.076583847403526,0.153039306402206,0.000384597980883));
res += mul(Get(s0,0,-dy), float4x4(0.004660191480070,-0.165666520595551,-0.044270407408476,-0.117960564792156,0.095408432185650,-0.080017127096653,-0.203040733933449,-0.052748166024685,0.283721178770065,-0.116602897644043,0.035084299743176,-0.063602007925510,-0.279562175273895,0.251228243112564,0.126637414097786,-0.094589605927467));
res += mul(Get(s0,0,0), float4x4(0.376073569059372,-0.106144234538078,0.082703180611134,-0.237546756863594,-0.048787970095873,-0.043744441121817,0.079068630933762,-0.060279756784439,0.035992406308651,-0.197356626391411,-0.206075966358185,0.025444364175200,-0.357285559177399,0.248817220330238,0.137259960174561,-0.072858177125454));
res += mul(Get(s0,0,dy), float4x4(0.050812423229218,-0.174347311258316,-0.061375558376312,-0.077907823026180,-0.213743478059769,0.037941206246614,0.007209358736873,-0.064988441765308,-0.557516038417816,0.030997700989246,-0.065601035952568,0.017163753509521,-0.402070850133896,-0.519091844558716,-0.162647902965546,-0.141839295625687));
res += mul(Get(s0,dx,-dy), float4x4(-0.078962415456772,0.218576282262802,0.044852126389742,0.167731508612633,0.208534002304077,-0.001873721601442,-0.015306500717998,0.160243347287178,-0.142920732498169,0.000437702867202,0.058647811412811,-0.077735312283039,-0.281516194343567,-0.061041489243507,0.069370359182358,0.142698571085930));
res += mul(Get(s0,dx,0), float4x4(0.142281010746956,-0.070842504501343,-0.226465106010437,0.073820233345032,0.100677281618118,-0.063065096735954,0.102842897176743,0.168281093239784,0.357816427946091,-0.201967477798462,-0.165392532944679,0.010765179060400,-0.218037709593773,0.622116446495056,-0.122368447482586,0.173272654414177));
res += mul(Get(s0,dx,dy), float4x4(-0.028300249949098,0.007035312242806,0.018022689968348,0.189022406935692,-0.254228681325912,-0.117064334452152,0.038679294288158,0.057274218648672,0.142615169286728,-0.085014410316944,0.072710752487183,-0.014465239830315,-0.173582419753075,-0.072858534753323,-0.467269182205200,-0.050313293933868));
res += mul(Get(s1,-dx,-dy), float4x4(0.142531424760818,-0.239973455667496,-0.160630568861961,-0.065185919404030,0.039813764393330,0.064920239150524,0.094552516937256,0.002041137311608,-0.002281789435074,0.102563023567200,0.282029896974564,-0.023598514497280,0.016392981633544,-0.015041605569422,0.006253397092223,-0.006828277837485));
res += mul(Get(s1,-dx,0), float4x4(-0.027836233377457,-0.370515704154968,-0.186483517289162,-0.121959842741489,0.009773619472980,0.068613618612289,0.040373258292675,0.001666762516834,-0.240524306893349,-0.179574221372604,-0.098601736128330,0.236382663249969,-0.034935802221298,0.003278901800513,0.029645036906004,0.006033799611032));
res += mul(Get(s1,-dx,dy), float4x4(-0.110243946313858,-0.060622099786997,-0.176185846328735,-0.168432816863060,-0.070978529751301,0.012076290324330,-0.040032777935266,0.024961316958070,0.289207816123962,-0.192157626152039,-0.357637941837311,0.105491384863853,-0.103404596447945,-0.043709322810173,-0.023499380797148,0.009546875022352));
res += mul(Get(s1,0,-dy), float4x4(0.027530586346984,-0.130572155117989,-0.299902677536011,0.021045980975032,0.005541634745896,0.074400290846825,0.102864086627960,0.018746653571725,0.174960598349571,0.070346012711525,0.061661362648010,-0.088823676109314,0.072901144623756,-0.045446906238794,-0.026276212185621,0.018986012786627));
res += mul(Get(s1,0,0), float4x4(0.099942877888680,-0.181921452283859,-0.345074236392975,-0.154723167419434,-0.009223135188222,0.117688260972500,0.053166069090366,0.040443673729897,-0.132714286446571,0.286889880895615,-0.046034488826990,0.030913330614567,0.028150815516710,-0.037819825112820,0.002772967563942,0.016591520980000));
res += mul(Get(s1,0,dy), float4x4(0.077448569238186,-0.118183247745037,-0.220940887928009,-0.145176708698273,-0.044853806495667,0.095588222146034,-0.079865038394928,0.058252122253180,-0.162966787815094,-0.102425657212734,-0.178690835833549,0.104162804782391,-0.055076856166124,-0.059649255126715,-0.012188127264380,-0.003699833527207));
res += mul(Get(s1,dx,-dy), float4x4(-0.184608250856400,0.085113264620304,-0.062573567032814,-0.076177880167961,0.013028029352427,-0.118155501782894,0.013582614250481,0.053759347647429,-0.042525034397840,-0.303299844264984,-0.046865936368704,-0.041991259902716,-0.001056374632753,-0.056062165647745,-0.054011072963476,0.020756369456649));
res += mul(Get(s1,dx,0), float4x4(-0.066372565925121,-0.011259672231972,0.065109573304653,-0.200256839394569,0.010537995025516,-0.083770543336868,-0.022685742005706,0.081938348710537,-0.021767960861325,0.127071693539619,0.079888410866261,-0.114679798483849,0.033460728824139,-0.004833573475480,0.030791871249676,0.002634989330545));
res += mul(Get(s1,dx,dy), float4x4(0.047223396599293,-0.112084858119488,0.357343792915344,-0.177428543567657,0.000286913680611,-0.061388671398163,-0.161952003836632,0.063875295221806,-0.122412405908108,0.133692324161530,-0.053421735763550,0.033661901950836,-0.025359749794006,-0.018684932962060,0.064460657536983,0.008318503387272));
res += mul(Get(s2,-dx,-dy), float4x4(0.059090599417686,0.082939028739929,0.073659151792526,0.074766755104065,-0.123950257897377,0.035718549042940,-0.021334867924452,0.034320242702961,-0.006334091071039,0.057597108185291,0.008979000151157,-0.072257034480572,-0.005992724094540,0.024523211643100,-0.101922772824764,0.168321490287781));
res += mul(Get(s2,-dx,0), float4x4(0.029167989268899,0.002150441054255,0.019027803093195,0.023326579481363,-0.002193356631324,0.155275240540504,-0.035948261618614,0.041300032287836,-0.197616249322891,-0.034720297902822,-0.169372901320457,0.065578445792198,0.355716019868851,-0.206044420599937,-0.125441536307335,0.036541871726513));
res += mul(Get(s2,-dx,dy), float4x4(0.048626359552145,0.020314306020737,-0.060948811471462,0.003308703657240,0.080776385962963,-0.010420468635857,-0.166521370410919,0.089335754513741,0.116154469549656,0.044914212077856,-0.252624005079269,0.122978605329990,-0.108814463019371,-0.063303589820862,-0.164984688162804,-0.079070113599300));
res += mul(Get(s2,0,-dy), float4x4(0.154910355806351,-0.033691342920065,0.159069761633873,0.044458337128162,0.061303380876780,-0.000964599545114,-0.230403751134872,0.109639085829258,0.034411340951920,-0.104516439139843,0.038782965391874,-0.052536748349667,-0.142617598176003,0.154197111725807,-0.372326850891113,0.032884519547224));
res += mul(Get(s2,0,0), float4x4(-0.004030519165099,-0.011057268828154,0.052492950111628,0.029709981754422,-0.153968974947929,-0.142651468515396,-0.111592903733253,0.057340126484632,-0.180777654051781,0.077574744820595,-0.093205854296684,0.041503243148327,-0.111164040863514,-0.301823973655701,-0.157960370182991,-0.043190594762564));
res += mul(Get(s2,0,dy), float4x4(-0.261269420385361,0.034160196781158,0.006871391553432,0.023660544306040,-0.209533408284187,0.147821739315987,-0.103529892861843,0.045346010476351,-0.228940337896347,-0.043139159679413,-0.099674887955189,0.041023373603821,0.382511883974075,-0.236004412174225,0.011296212673187,-0.114842087030411));
res += mul(Get(s2,dx,-dy), float4x4(0.068623192608356,0.058886054903269,0.020155606791377,-0.073731049895287,0.053875721991062,-0.032938417047262,-0.054015655070543,-0.024766556918621,-0.036143116652966,-0.310371369123459,-0.009069707244635,0.012644922360778,-0.055616579949856,0.489197134971619,0.071156673133373,0.032351024448872));
res += mul(Get(s2,dx,0), float4x4(0.027100194245577,0.016926012933254,0.020261263474822,-0.061200041323900,0.220303103327751,-0.323106437921524,0.154019132256508,-0.115974627435207,-0.252884775400162,-0.061352059245110,-0.059764120727777,-0.097262561321259,-0.168599963188171,0.035513713955879,0.219172209501266,-0.045779041945934));
res += mul(Get(s2,dx,dy), float4x4(0.080636076629162,0.018017290160060,0.092296399176121,-0.081150270998478,-0.111445412039757,0.071360662579536,0.211013644933701,-0.108264498412609,-0.457208544015884,-0.179234474897385,0.014906531199813,-0.165768474340439,0.050529439002275,-0.067716047167778,0.057613007724285,0.017820645123720));
res += mul(Get(s3,-dx,-dy), float4x4(-0.027111560106277,-0.042246755212545,-0.027778828516603,0.043355211615562,-0.146980211138725,-0.011041593737900,-0.013781092129648,-0.126949757337570,-0.132216960191727,-0.088649690151215,0.264645695686340,-0.185920462012291,0.133423060178757,-0.201272696256638,-0.048706520348787,-0.197444304823875));
res += mul(Get(s3,-dx,0), float4x4(-0.148768752813339,0.063081450760365,-0.059755899012089,0.011068005114794,-0.084228433668613,-0.145174637436867,-0.163397580385208,-0.049256093800068,-0.365925252437592,0.189043641090393,0.615039646625519,-0.083688355982304,-0.138124957680702,0.112206190824509,0.273515909910202,-0.037525679916143));
res += mul(Get(s3,-dx,dy), float4x4(0.027435414493084,0.010057628154755,0.004983895458281,-0.009626216255128,-0.033653374761343,-0.190062046051025,0.060699142515659,-0.045265544205904,0.099986396729946,0.056454963982105,-0.155107930302620,0.089811600744724,0.174312084913254,-0.018267825245857,-0.211986377835274,0.055982355028391));
res += mul(Get(s3,0,-dy), float4x4(-0.046391438692808,-0.100841559469700,-0.226629957556725,0.033909138292074,-0.010131516493857,0.206794947385788,0.126544669270515,-0.128910213708878,0.170581549406052,-0.076584577560425,0.151946172118187,-0.130001232028008,-0.064215607941151,-0.041719052940607,-0.107302896678448,-0.139234095811844));
res += mul(Get(s3,0,0), float4x4(-0.159724712371826,-0.071225464344025,-0.088269524276257,-0.050470147281885,-0.130410134792328,0.047480516135693,0.161070764064789,-0.084658965468407,0.040441516786814,0.100987561047077,0.120180390775204,-0.156360000371933,-0.019997498020530,-0.065105155110359,-0.043571840971708,-0.056054752320051));
res += mul(Get(s3,0,dy), float4x4(-0.001398183638230,-0.143508285284042,0.132029190659523,-0.061123143881559,-0.248898521065712,0.020134110003710,0.086506485939026,-0.056657195091248,-0.051637534052134,-0.045764721930027,-0.243166282773018,-0.118433237075806,-0.088994391262531,-0.037869371473789,-0.193851858377457,0.008683568798006));
res += mul(Get(s3,dx,-dy), float4x4(-0.025898244231939,-0.032790996134281,0.078684829175472,0.005323650315404,-0.053538374602795,-0.011831996031106,-0.004208809230477,0.162890762090683,0.036246508359909,-0.004127417225391,-0.196405723690987,0.240017205476761,-0.021610910072923,-0.048592679202557,-0.031573172658682,-0.156677111983299));
res += mul(Get(s3,dx,0), float4x4(-0.137675896286964,0.020032096654177,0.041606053709984,-0.081444904208183,-0.088474199175835,0.046962555497885,0.097922623157501,0.037685796618462,0.403482437133789,-0.210171297192574,-0.219373226165771,0.379635781049728,0.339659184217453,-0.116130068898201,-0.171490222215652,-0.131422087550163));
res += mul(Get(s3,dx,dy), float4x4(-0.184934780001640,-0.114854127168655,-0.059196546673775,-0.088412314653397,0.041223362088203,0.033164434134960,-0.125002488493919,-0.065487124025822,-0.174410462379456,-0.357581824064255,-0.046002518385649,0.355217456817627,-0.212741255760193,-0.089667223393917,0.020845908671618,-0.025286346673965));
return max(float4(0,0,0,0), res);
}
