sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.183068856596947,-0.101167596876621,0.012467947788537,-0.036297526210546);
res += mul(Get(s0,-dx,-dy), float4x4(0.089652366936207,0.107677809894085,-0.088970094919205,0.012957210652530,0.319845467805862,-0.342935204505920,-0.198220506310463,0.215089842677116,0.029914978891611,0.015703544020653,0.139738693833351,0.031863119453192,-0.073967404663563,0.101429320871830,-0.027491822838783,-0.098060145974159));
res += mul(Get(s0,-dx,0), float4x4(0.324270129203796,0.176052391529083,0.019726395606995,0.125203907489777,0.279362142086029,-0.364974051713943,0.081304736435413,0.021868562325835,-0.300695717334747,-0.067403346300125,-0.205861061811447,0.194201678037643,-0.243142008781433,-0.074313633143902,-0.095904991030693,0.236326858401299));
res += mul(Get(s0,-dx,dy), float4x4(-0.104337781667709,0.182865634560585,0.144069045782089,-0.118318587541580,0.145016551017761,-0.156463578343391,0.281169712543488,-0.144611015915871,-0.022027393803000,-0.060682445764542,-0.230012640357018,-0.021353499963880,-0.018961992114782,0.030685927718878,-0.041453048586845,-0.044690720736980));
res += mul(Get(s0,0,-dy), float4x4(-0.055925820022821,-0.160115242004395,0.021166313439608,-0.064046777784824,-0.118968062102795,-0.042504332959652,0.046796824783087,0.131643071770668,0.106991954147816,0.019266499206424,-0.240073218941689,0.062162403017282,0.115962736308575,-0.088772796094418,0.089053124189377,0.039379086345434));
res += mul(Get(s0,0,0), float4x4(-0.048599489033222,-0.806960105895996,0.026138106361032,-0.144640073180199,-0.232701703906059,-0.308052510023117,-0.323885530233383,-0.086469471454620,0.747786581516266,-0.310794085264206,0.290141701698303,-0.232346922159195,0.154752045869827,0.391915380954742,-0.217334762215614,-0.270966649055481));
res += mul(Get(s0,0,dy), float4x4(0.163022518157959,0.132534340023994,-0.269098967313766,0.175092294812202,0.063960239291191,-0.145303264260292,0.027603911235929,-0.342475593090057,0.123490013182163,-0.016425315290689,-0.068577632308006,0.167975783348083,0.218397602438927,-0.000249905424425,0.224190279841423,-0.016437044367194));
res += mul(Get(s0,dx,-dy), float4x4(0.108361132442951,0.146504089236259,-0.140045970678329,0.062768429517746,-0.318802595138550,0.014571191743016,0.226374194025993,0.077389642596245,0.107826434075832,0.053185384720564,-0.205364614725113,0.009550821967423,0.248204529285431,-0.072467163205147,0.033022228628397,-0.097141973674297));
res += mul(Get(s0,dx,0), float4x4(-0.157084122300148,0.186793729662895,0.087082162499428,0.193443804979324,-0.179574489593506,0.187807247042656,-0.026155117899179,0.072452172636986,-0.334910005331039,0.180545926094055,0.262865632772446,-0.051975950598717,0.522812187671661,-0.809558212757111,-0.003438639221713,-0.188219651579857));
res += mul(Get(s0,dx,dy), float4x4(0.136964052915573,-0.059766776859760,0.042762365192175,-0.031264070421457,-0.435659557580948,0.095793060958385,-0.060361199080944,-0.217243343591690,-0.081156179308891,-0.066656902432442,0.261167347431183,-0.094087429344654,0.110635481774807,-0.026351710781455,-0.026997707784176,0.211799889802933));
res += mul(Get(s1,-dx,-dy), float4x4(0.123517282307148,-0.152714416384697,0.006460834760219,-0.024494938552380,-0.063184089958668,0.017589960247278,-0.011497241444886,-0.039521481841803,-0.066908463835716,-0.062072176486254,0.000020101237169,0.052850358188152,0.045961417257786,-0.185802996158600,0.132280111312866,-0.110487096011639));
res += mul(Get(s1,-dx,0), float4x4(0.249048501253128,-0.287503093481064,0.061862424015999,0.014632591046393,-0.099359810352325,0.014532860368490,0.070872649550438,0.014228533022106,-0.058883648365736,0.319877415895462,-0.199027121067047,-0.178681746125221,-0.279932022094727,0.284416615962982,-0.066420763731003,-0.270474106073380));
res += mul(Get(s1,-dx,dy), float4x4(-0.048219483345747,0.023180950433016,0.076515130698681,-0.128822386264801,0.036109615117311,0.017869019880891,0.017859751358628,0.123885951936245,-0.090711638331413,-0.092813372612000,0.052171565592289,0.003842710517347,-0.134160190820694,0.024520989507437,0.061955098062754,0.035367138683796));
res += mul(Get(s1,0,-dy), float4x4(-0.004231523722410,-0.130364909768105,-0.014736084267497,-0.085630893707275,-0.013190527446568,0.006485871970654,-0.152266606688499,-0.267152547836304,0.059327069669962,-0.047564417123795,0.224565908312798,0.080172002315521,0.007684099487960,-0.110901422798634,0.406829059123993,-0.058359105139971));
res += mul(Get(s1,0,0), float4x4(-0.042405024170876,0.048331968486309,-0.408363401889801,0.639689564704895,-0.045772805809975,0.007789353840053,0.660338103771210,-0.059556223452091,-0.014598431997001,-0.186738640069962,0.085673108696938,-0.101568654179573,0.221695557236671,0.013599100522697,0.319740802049637,0.128628417849541));
res += mul(Get(s1,0,dy), float4x4(-0.036962717771530,-0.109375961124897,-0.163621142506599,-0.465151578187943,0.211200177669525,-0.249112024903297,-0.027975531294942,0.241180598735809,-0.074085414409637,-0.100854568183422,-0.203235760331154,0.552663326263428,-0.001854391302913,0.462661057710648,0.053435243666172,0.073074780404568));
res += mul(Get(s1,dx,-dy), float4x4(-0.100198440253735,0.060038115829229,0.020250849425793,0.111629068851471,0.010901784524322,0.048809114843607,0.128507927060127,0.036841474473476,0.016786321997643,0.042244695127010,-0.150441229343414,-0.114430345594883,-0.050444155931473,0.038386981934309,0.164467796683311,-0.007138176355511));
res += mul(Get(s1,dx,0), float4x4(-0.233602270483971,0.206815451383591,0.247053384780884,-0.020449990406632,0.135987058281898,-0.143511697649956,-0.278771072626114,0.031574103981256,-0.072329230606556,0.063260518014431,0.203259885311127,-0.001693480415270,0.011821959167719,-0.217616736888885,0.260403871536255,-0.103762395679951));
res += mul(Get(s1,dx,dy), float4x4(-0.101210370659828,0.055148810148239,-0.028982954099774,-0.260254174470901,-0.296647459268570,0.026356667280197,0.004915561061352,0.262293219566345,-0.095231361687183,0.026533907279372,0.240197896957397,0.169277891516685,0.095847554504871,-0.239002808928490,0.070441618561745,-0.002175084780902));
res += mul(Get(s2,-dx,-dy), float4x4(0.120662882924080,0.005075371824205,-0.001149333082139,-0.068870536983013,0.111042119562626,0.107551507651806,0.015317170880735,0.066524259746075,0.079036019742489,0.293249398469925,-0.264350891113281,-0.155054852366447,-0.061624243855476,-0.038405936211348,0.240635454654694,0.039507776498795));
res += mul(Get(s2,-dx,0), float4x4(0.062724359333515,0.086237184703350,-0.182340562343597,-0.133466839790344,0.321177333593369,0.132245212793350,0.304982274770737,-0.007044133264571,0.233053848147392,0.249421000480652,0.304006636142731,-0.103330135345459,-0.217634677886963,0.116530269384384,-0.142358168959618,-0.168028473854065));
res += mul(Get(s2,-dx,dy), float4x4(-0.054651264101267,0.098420612514019,-0.298666328191757,-0.124608777463436,0.272672206163406,0.073186814785004,0.086470678448677,0.072540186345577,0.003639942733571,0.087643288075924,-0.264546334743500,0.173691004514694,0.010672553442419,-0.027627170085907,0.159015551209450,0.013223638758063));
res += mul(Get(s2,0,-dy), float4x4(0.027337990701199,0.141604572534561,-0.080371513962746,-0.064004421234131,0.008721702732146,0.025333626195788,-0.017790954560041,-0.024390673264861,-0.089111879467964,0.007731305900961,-0.208034560084343,-0.149544894695282,-0.041448395699263,0.061008367687464,-0.094633877277374,0.074727840721607));
res += mul(Get(s2,0,0), float4x4(0.089306518435478,-0.090425588190556,-0.536757647991180,0.138341933488846,-0.863400280475616,0.197965577244759,-0.028798883780837,-0.062141843140125,-0.011930117383599,0.002033432479948,-0.229302659630775,0.200455814599991,0.074023097753525,0.121125526726246,0.378290027379990,-0.450235128402710));
res += mul(Get(s2,0,dy), float4x4(-0.186545297503471,0.041550736874342,-0.069939419627190,-0.218686968088150,-0.180727273225784,0.098254725337029,-0.064226701855659,-0.073628962039948,0.117592141032219,0.056816976517439,-0.175658062100410,0.210092797875404,0.024368839338422,0.005907295271754,-0.028052065521479,0.320209711790085));
res += mul(Get(s2,dx,-dy), float4x4(-0.501326143741608,0.290182977914810,0.075429707765579,0.148174345493317,0.006032909266651,0.039309017360210,0.042475849390030,0.174118667840958,0.095979578793049,0.140927627682686,-0.229720667004585,0.059032805263996,-0.060050975531340,-0.183815568685532,-0.137553349137306,0.031639762222767));
res += mul(Get(s2,dx,0), float4x4(-0.471410036087036,0.247197985649109,0.019938319921494,-0.194694444537163,0.003464379580691,-0.164043545722961,-0.042583834379911,0.009431744925678,0.169563919305801,0.032960012555122,0.086129687726498,0.108764342963696,0.077433615922928,-0.053213186562061,-0.198323249816895,-0.118495248258114));
res += mul(Get(s2,dx,dy), float4x4(-0.155953958630562,0.065091907978058,0.000813513004687,0.026443496346474,0.018310993909836,0.061785131692886,0.189819186925888,0.191306188702583,0.080243453383446,-0.116695091128349,-0.026083910837770,0.055322878062725,-0.148595765233040,0.057472601532936,-0.057006437331438,0.096275426447392));
res = max(float4(0, 0, 0, 0), res) + float4(0.042480960488319,0.491908848285675,-0.195708587765694,0.373985230922699) * min(float4(0, 0, 0, 0), res);
return res;
}
