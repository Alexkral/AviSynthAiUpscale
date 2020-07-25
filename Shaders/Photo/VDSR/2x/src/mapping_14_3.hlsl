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
res += mul(Get(s0,-dx,-dy), float4x4(0.085103198885918,-0.137393862009048,0.023344574496150,-0.024157060310245,0.145372524857521,0.125838488340378,0.009517234750092,0.016261199489236,-0.116818234324455,-0.041951775550842,0.181132644414902,-0.054398983716965,-0.049556400626898,-0.059830050915480,0.153052955865860,0.069328576326370));
res += mul(Get(s0,-dx,0), float4x4(-0.108321547508240,-0.090117752552032,-0.245637580752373,-0.036932181566954,0.035763967782259,-0.106256425380707,0.097521498799324,-0.048750910907984,-0.026421729475260,-0.014367895200849,-0.124211281538010,-0.142227008938789,0.073716014623642,0.032628048211336,0.086657054722309,-0.211885392665863));
res += mul(Get(s0,-dx,dy), float4x4(0.015883665531874,0.022516312077641,-0.053914912045002,-0.005980183370411,-0.054494339972734,0.149581402540207,-0.129733875393867,0.063153237104416,-0.099340215325356,-0.001000504707918,0.009148331359029,0.068716339766979,-0.078321255743504,-0.123400464653969,0.072188235819340,0.062218632549047));
res += mul(Get(s0,0,-dy), float4x4(0.000627774104942,-0.112440600991249,0.021703576669097,0.133166223764420,0.197009116411209,0.058003526180983,-0.052909512072802,0.090695984661579,0.045402653515339,-0.161756545305252,-0.026989147067070,-0.112741351127625,0.027605559676886,-0.042548164725304,-0.081895209848881,-0.057718653231859));
res += mul(Get(s0,0,0), float4x4(-0.005508083850145,-0.033619496971369,0.014398405328393,0.046592522412539,0.100585825741291,-0.017306825146079,-0.056430999189615,0.057567201554775,0.001536306575872,-0.227450922131538,-0.177515491843224,0.025807993486524,0.103040643036366,0.081204473972321,0.019267678260803,0.039525922387838));
res += mul(Get(s0,0,dy), float4x4(-0.049595765769482,-0.110650248825550,0.149978324770927,0.131847783923149,-0.079444117844105,0.073351740837097,-0.087362654507160,0.086443684995174,-0.107770398259163,0.080945245921612,-0.068787835538387,0.068569421768188,0.082790240645409,0.089518666267395,-0.200592368841171,0.068102248013020));
res += mul(Get(s0,dx,-dy), float4x4(0.034969568252563,-0.037813693284988,-0.047015544027090,0.012501058168709,0.101475313305855,-0.202486276626587,-0.153212547302246,-0.171004354953766,0.013490098528564,0.106833465397358,-0.090976662933826,0.041322685778141,-0.052404381334782,-0.021606171503663,0.087320454418659,0.059088628739119));
res += mul(Get(s0,dx,0), float4x4(-0.001151458243839,-0.011070619337261,-0.026438148692250,-0.131292834877968,-0.026635127142072,-0.029052034020424,-0.070332959294319,-0.070240214467049,-0.117827489972115,0.328005194664001,0.148480653762817,0.002680961508304,-0.149053454399109,-0.085150972008705,0.067312985658646,-0.051633048802614));
res += mul(Get(s0,dx,dy), float4x4(0.053957533091307,-0.124588266015053,-0.007717510685325,0.028644656762481,0.009163784794509,0.004473491106182,0.055063586682081,-0.004559175577015,-0.209553226828575,0.107991822063923,0.201613634824753,0.030899297446012,0.000116821160191,-0.022456318140030,0.022624826058745,0.046984072774649));
res += mul(Get(s1,-dx,-dy), float4x4(-0.036993253976107,0.085937052965164,0.083900652825832,0.037913594394922,0.119140096008778,0.057786855846643,0.028636129572988,0.008680911734700,0.077178642153740,0.046256992965937,0.090365849435329,0.080967262387276,0.186899125576019,-0.043879978358746,-0.076137937605381,-0.055632941424847));
res += mul(Get(s1,-dx,0), float4x4(-0.130499258637428,-0.067549817264080,-0.091124221682549,0.130699485540390,0.083020068705082,-0.033193025738001,0.055433735251427,0.042509481310844,0.064660705626011,0.228575065732002,0.018028425052762,0.075825475156307,0.086578421294689,-0.027813967317343,-0.186781421303749,-0.163745701313019));
res += mul(Get(s1,-dx,dy), float4x4(0.023135004565120,-0.046503610908985,-0.048776961863041,-0.112952999770641,-0.088943034410477,0.002140033291653,-0.107724063098431,0.086847819387913,-0.092416532337666,0.042958546429873,-0.145408451557159,-0.009417389519513,-0.002977258060127,0.020507173612714,0.000127071252791,0.030980637297034));
res += mul(Get(s1,0,-dy), float4x4(-0.040635600686073,-0.101272366940975,0.009619249962270,-0.061992019414902,-0.015138268470764,0.129428699612617,0.032023716717958,0.104917630553246,0.169679582118988,0.088786929845810,0.029949512332678,0.025725187733769,-0.163024947047234,-0.051283925771713,0.077187195420265,-0.134722977876663));
res += mul(Get(s1,0,0), float4x4(0.021470107138157,0.032697852700949,-0.040960334241390,0.142871260643005,-0.125581294298172,0.052641365677118,0.052073389291763,-0.008578178472817,-0.061453443020582,0.270472228527069,0.018181506544352,0.041670493781567,0.199653744697571,0.145985931158066,-0.013549016788602,0.232644334435463));
res += mul(Get(s1,0,dy), float4x4(-0.078953698277473,0.071528822183609,-0.185312166810036,-0.108021579682827,0.114293053746223,0.027333494275808,-0.144103139638901,0.034981828182936,-0.004312112461776,0.030732091516256,0.007052394561470,0.079255931079388,0.001266869017854,0.023096324875951,-0.010087395086884,-0.063105136156082));
res += mul(Get(s1,dx,-dy), float4x4(0.016409393399954,-0.006843116600066,-0.041560374200344,-0.037701286375523,0.036911770701408,0.075794517993927,0.003423665417358,-0.193063378334045,0.080283194780350,0.118175536394119,-0.102993279695511,0.238365158438683,-0.078977920114994,-0.119620785117149,-0.036674659699202,-0.243517369031906));
res += mul(Get(s1,dx,0), float4x4(-0.082018889486790,-0.020942600443959,-0.014002102427185,-0.006129713263363,-0.003585784230381,-0.205918326973915,0.054013248533010,0.126154378056526,0.045567627996206,0.101579710841179,-0.085551343858242,0.058122478425503,-0.098341502249241,0.012403956614435,0.074948452413082,-0.017020069062710));
res += mul(Get(s1,dx,dy), float4x4(-0.240798741579056,0.074047312140465,0.214661300182343,-0.124866843223572,0.106185369193554,0.039635732769966,0.171344488859177,0.002496980829164,-0.010612876154482,-0.005415861494839,0.077361524105072,0.087183833122253,0.065106041729450,0.015154530294240,-0.016333270817995,0.226136535406113));
res += mul(Get(s2,-dx,-dy), float4x4(0.181510657072067,0.049126174300909,-0.072700329124928,0.016800832003355,0.095921099185944,-0.052040811628103,-0.059106562286615,-0.098239250481129,0.018952460959554,-0.122382819652557,-0.017282402142882,0.013519271276891,-0.033857442438602,0.044456202536821,-0.013602089136839,0.033567473292351));
res += mul(Get(s2,-dx,0), float4x4(0.013860375620425,-0.001500030746683,0.119576938450336,0.100187450647354,0.092461429536343,-0.045879099518061,0.246435448527336,-0.127956464886665,-0.180173859000206,0.063302196562290,-0.056656241416931,-0.176087111234665,0.144198030233383,0.229189172387123,0.093738086521626,0.031514313071966));
res += mul(Get(s2,-dx,dy), float4x4(0.073256529867649,0.045190453529358,0.233072340488434,-0.069862224161625,-0.117784783244133,0.180346131324768,0.126247614622116,-0.019900519400835,0.015541872940958,-0.053085718303919,0.196225836873055,0.056135807186365,0.003654893487692,-0.101015925407410,-0.023967118933797,0.054516181349754));
res += mul(Get(s2,0,-dy), float4x4(0.040368568152189,-0.084524676203728,0.022863605991006,-0.102880701422691,0.230923518538475,-0.015887366607785,-0.023212078958750,-0.068790175020695,0.152817547321320,-0.087872490286827,-0.025398317724466,-0.132212728261948,-0.068390227854252,0.054364841431379,0.135521769523621,0.162893950939178));
res += mul(Get(s2,0,0), float4x4(0.026017159223557,-0.088145956397057,-0.042863436043262,0.110774360597134,-0.071117170155048,-0.020975572988391,-0.133791610598564,-0.180475562810898,-0.131880193948746,0.041115731000900,-0.067295536398888,0.162649855017662,0.125066310167313,0.168739631772041,0.055378563702106,0.040067151188850));
res += mul(Get(s2,0,dy), float4x4(-0.118049561977386,0.060195963829756,-0.032478965818882,0.098184905946255,-0.161215260624886,0.069631516933441,-0.076841533184052,0.247456297278404,-0.164865165948868,0.124593079090118,-0.003900182666257,0.086159519851208,-0.033571761101484,0.024517823010683,-0.020117007195950,-0.031986817717552));
res += mul(Get(s2,dx,-dy), float4x4(0.034629091620445,-0.007718467153609,-0.087391920387745,-0.006047995761037,0.131155714392662,0.021355617791414,0.058417879045010,0.104118019342422,-0.074714235961437,0.041190899908543,-0.004971048794687,-0.031008500605822,-0.017954252660275,-0.082884036004543,0.075327783823013,0.074908152222633));
res += mul(Get(s2,dx,0), float4x4(-0.086134545505047,-0.051804963499308,-0.009769731201231,0.032043341547251,-0.033649206161499,-0.073010526597500,0.095999144017696,0.060283608734608,-0.137924596667290,0.087201215326786,-0.004881499800831,0.127267226576805,0.050490707159042,0.127140998840332,0.047698836773634,0.094592615962029));
res += mul(Get(s2,dx,dy), float4x4(0.048121195286512,-0.130547001957893,0.001877740374766,-0.097233846783638,-0.128299072384834,0.083307355642319,0.013749028556049,0.057178243994713,0.026480013504624,0.091694302856922,0.046385243535042,-0.110015608370304,-0.065094776451588,-0.176055938005447,0.152614519000053,-0.023615758866072));
res += mul(Get(s3,-dx,-dy), float4x4(-0.091264113783836,-0.268378078937531,0.181374639272690,-0.141480162739754,0.105266511440277,0.018650444224477,0.083704970777035,-0.048246998339891,0.063103944063187,-0.082941889762878,-0.074766039848328,0.093865446746349,0.125935986638069,-0.030513435602188,-0.121295742690563,0.129101932048798));
res += mul(Get(s3,-dx,0), float4x4(-0.041396915912628,-0.062373571097851,0.147035852074623,-0.172307237982750,-0.269748568534851,-0.049832407385111,-0.044428683817387,0.044753059744835,0.022397499531507,-0.030936706811190,-0.116932727396488,0.096272565424442,-0.051502373069525,0.025159375742078,0.033377829939127,0.211325511336327));
res += mul(Get(s3,-dx,dy), float4x4(0.044572710990906,0.150653883814812,0.031748287379742,-0.035557910799980,0.039337661117315,-0.009448288939893,-0.337795346975327,-0.118966147303581,0.034894503653049,0.058732926845551,0.095252871513367,-0.139012202620506,-0.024855628609657,-0.061300341039896,0.080378688871861,-0.142017766833305));
res += mul(Get(s3,0,-dy), float4x4(-0.081591077148914,-0.154769778251648,0.005297682713717,0.042317856103182,-0.094492368400097,-0.109298057854176,0.040177922695875,0.095598392188549,0.092322327196598,-0.178374111652374,0.092547468841076,-0.109266035258770,0.104346171021461,-0.001072406535968,-0.040598139166832,-0.059544268995523));
res += mul(Get(s3,0,0), float4x4(-0.149164974689484,-0.085127055644989,0.169578850269318,0.099038816988468,-0.094661884009838,0.126698762178421,-0.030708748847246,0.038776706904173,-0.079661726951599,-0.028530817478895,0.053824581205845,0.092641718685627,0.146710768342018,0.109926246106625,-0.003983973059803,-0.058513302356005));
res += mul(Get(s3,0,dy), float4x4(-0.096297279000282,-0.016849078238010,0.070495940744877,-0.033022828400135,-0.026904733851552,0.080821469426155,0.138238325715065,-0.053972620517015,-0.015835043042898,0.025836385786533,0.001900754985400,-0.036990854889154,0.068564452230930,0.006639561150223,-0.034681722521782,0.045003041625023));
res += mul(Get(s3,dx,-dy), float4x4(0.054255887866020,0.128327831625938,-0.151095688343048,-0.120830021798611,-0.056459948420525,-0.034471921622753,0.039704050868750,0.100696168839931,0.145306572318077,0.115398406982422,0.160414442420006,0.066198781132698,-0.044675316661596,0.160717844963074,-0.059250179678202,-0.036020919680595));
res += mul(Get(s3,dx,0), float4x4(-0.125683635473251,-0.022756783291698,-0.081979207694530,-0.048523262143135,0.105465106666088,-0.103561371564865,-0.013207646086812,0.152727887034416,-0.009829388000071,-0.174873858690262,-0.041075002402067,0.043639265000820,-0.004832237958908,0.103173449635506,-0.081346578896046,0.001877832226455));
res += mul(Get(s3,dx,dy), float4x4(0.038876801729202,-0.090034507215023,-0.070941455662251,0.050790984183550,0.026665054261684,-0.010044145397842,-0.028025342151523,-0.070202983915806,-0.028963183984160,0.024523647502065,0.028961908072233,0.000190444538021,-0.062294211238623,-0.011393224820495,-0.102366194128990,0.026270553469658));
return max(float4(0,0,0,0), res);
}
