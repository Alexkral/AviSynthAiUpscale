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
res += mul(Get(s0,-dx,-dy), float4x4(0.127698913216591,-0.047116260975599,-0.124063618481159,0.072873339056969,-0.003894714638591,0.050852581858635,-0.054188344627619,0.076262757182121,0.082950964570045,0.038964416831732,-0.230659693479538,0.176625669002533,-0.305142998695374,-0.085335828363895,0.001419467153028,-0.150831952691078));
res += mul(Get(s0,-dx,0), float4x4(-0.093143314123154,0.064015813171864,0.112915612757206,-0.022118618711829,-0.110531307756901,-0.221132025122643,0.146741792559624,0.059449385851622,-0.130373075604439,0.045506130903959,-0.117314957082272,0.064429871737957,-0.130725175142288,-0.183036416769028,0.074461176991463,0.026676665991545));
res += mul(Get(s0,-dx,dy), float4x4(-0.065017901360989,-0.056278202682734,0.237911432981491,-0.051599606871605,0.003301801625639,-0.061267822980881,-0.067379385232925,-0.044575132429600,0.031054517254233,0.068721838295460,-0.212777346372604,0.097131431102753,-0.037586536258459,-0.010070884600282,0.372292280197144,0.209972500801086));
res += mul(Get(s0,0,-dy), float4x4(-0.066984347999096,0.032166492193937,0.065029501914978,-0.070698320865631,-0.148197770118713,0.040758609771729,0.065973803400993,-0.051103379577398,0.022321972995996,0.078198388218880,-0.135967358946800,-0.057524874806404,0.019505530595779,-0.115367203950882,0.235986843705177,-0.099720172584057));
res += mul(Get(s0,0,0), float4x4(-0.166273176670074,-0.044337421655655,0.079670935869217,0.219548255205154,-0.083931542932987,-0.067640654742718,0.121453732252121,0.095900043845177,0.065845258533955,-0.104754522442818,-0.116473406553268,-0.008618423715234,-0.009720440022647,0.073127679526806,0.011606210842729,-0.213079303503036));
res += mul(Get(s0,0,dy), float4x4(-0.163121953606606,0.030931826680899,-0.179065734148026,0.024947501718998,-0.122557274997234,0.159574702382088,-0.056436061859131,0.057080514729023,-0.102180786430836,0.079178564250469,0.211257666349411,-0.113793954253197,-0.098959922790527,-0.098684556782246,0.077713370323181,-0.006196860689670));
res += mul(Get(s0,dx,-dy), float4x4(-0.122316017746925,-0.170387730002403,-0.136055320501328,-0.122993633151054,-0.079957269132137,0.018933858722448,0.163699954748154,-0.129544466733932,-0.021662415936589,-0.016327608376741,-0.161077991127968,-0.008503152988851,0.059505689889193,0.063771039247513,0.126621291041374,-0.014659134671092));
res += mul(Get(s0,dx,0), float4x4(0.178106769919395,0.141253396868706,0.147219568490982,0.064303219318390,0.103028498589993,0.194379732012749,-0.184941232204437,0.039761696010828,0.149606570601463,0.080475710332394,-0.067052699625492,0.012021891772747,0.080513156950474,0.127131640911102,-0.041274566203356,-0.164691045880318));
res += mul(Get(s0,dx,dy), float4x4(-0.073858112096786,0.154295966029167,0.076004914939404,-0.138970643281937,0.013790293596685,0.053525146096945,-0.145365327596664,-0.067221134901047,-0.089556552469730,-0.041176147758961,0.129928156733513,-0.072457171976566,-0.078202866017818,-0.092293433845043,-0.045940946787596,-0.109224751591682));
res += mul(Get(s1,-dx,-dy), float4x4(-0.000903392967302,-0.012489049695432,0.046370055526495,-0.180006280541420,0.020111978054047,-0.058174047619104,0.031124399974942,0.144599586725235,-0.055886834859848,0.031405135989189,0.050613276660442,-0.061707783490419,0.120526120066643,0.011911220848560,-0.153735846281052,-0.138009548187256));
res += mul(Get(s1,-dx,0), float4x4(0.019052335992455,0.066830113530159,0.047665346413851,0.174599006772041,-0.005433341488242,0.109115362167358,0.203067600727081,-0.087748326361179,-0.036402367055416,0.122596509754658,0.128867343068123,-0.054772846400738,-0.106768518686295,0.164392232894897,0.007373989559710,0.072426803410053));
res += mul(Get(s1,-dx,dy), float4x4(-0.038370203226805,-0.148067042231560,-0.000471702980576,0.091809622943401,-0.083926051855087,-0.044418439269066,0.192083925008774,-0.034977555274963,0.025380577892065,0.181565523147583,0.016636995598674,-0.079263709485531,0.106760032474995,-0.192945569753647,-0.089564196765423,0.053613744676113));
res += mul(Get(s1,0,-dy), float4x4(-0.094088561832905,0.000240193840000,-0.085463158786297,0.027919778600335,-0.112853005528450,-0.071913465857506,-0.108650065958500,0.042607177048922,-0.082237787544727,0.114279992878437,0.064803905785084,0.035186268389225,0.000592012307607,0.078693971037865,0.026658296585083,0.087470673024654));
res += mul(Get(s1,0,0), float4x4(-0.139823734760284,0.027779174968600,0.113082058727741,0.142064869403839,0.009127636440098,-0.115910753607750,-0.056825816631317,0.016701843589544,-0.033200282603502,0.139720037579536,0.079540543258190,-0.118040904402733,-0.104314759373665,0.031537111848593,0.132483646273613,0.162152573466301));
res += mul(Get(s1,0,dy), float4x4(0.127512365579605,-0.012295252643526,0.079072445631027,0.072380788624287,0.095195032656193,0.089590184390545,-0.035613510757685,-0.035350501537323,-0.169942051172256,-0.369597405195236,-0.018505405634642,0.037706695497036,0.027726938948035,0.066870152950287,-0.131410598754883,0.017107103019953));
res += mul(Get(s1,dx,-dy), float4x4(0.066599808633327,0.054431006312370,0.338114023208618,-0.188283398747444,0.035436734557152,-0.024086559191346,-0.059714172035456,-0.305621922016144,-0.016939125955105,-0.086274325847626,0.064838998019695,-0.161040514707565,0.006527608726174,0.038341108709574,-0.113098077476025,-0.054463855922222));
res += mul(Get(s1,dx,0), float4x4(-0.001043423893861,-0.137905642390251,0.118211239576340,-0.213613197207451,-0.031481150537729,0.209867164492607,-0.186733007431030,0.018098283559084,-0.029322100803256,-0.050676606595516,-0.028915269300342,-0.242492794990540,0.106813803315163,0.005163390189409,0.048762872815132,0.063760355114937));
res += mul(Get(s1,dx,dy), float4x4(-0.202082887291908,0.179752483963966,0.005848858505487,-0.159214392304420,0.030854931101203,-0.046257946640253,-0.184311762452126,0.073188945651054,-0.016111841425300,-0.174089297652245,0.037686336785555,-0.170539975166321,0.066845931112766,-0.072447322309017,-0.276382684707642,0.203043460845947));
res += mul(Get(s2,-dx,-dy), float4x4(-0.107000142335892,-0.133941635489464,0.031502071768045,-0.194418668746948,0.164597913622856,0.045847855508327,-0.014676178805530,-0.145727932453156,0.016531890258193,-0.109340824186802,-0.018837429583073,0.105465628206730,-0.066405542194843,0.158278673887253,-0.070953369140625,-0.061449635773897));
res += mul(Get(s2,-dx,0), float4x4(0.135802984237671,0.048601113259792,-0.097715683281422,-0.149247422814369,-0.105570055544376,-0.250148743391037,0.042114023119211,0.010504879988730,-0.202907398343086,0.081933423876762,0.058351811021566,0.187608525156975,-0.054647434502840,0.113954432308674,0.052956517785788,0.138448014855385));
res += mul(Get(s2,-dx,dy), float4x4(-0.240099340677261,0.055385839194059,-0.222474098205566,0.072654329240322,-0.178654477000237,-0.048069141805172,-0.079365551471710,0.019365036860108,-0.059677846729755,-0.001889854785986,-0.240946382284164,0.013284442014992,-0.090519167482853,0.121678404510021,-0.117914281785488,-0.095977723598480));
res += mul(Get(s2,0,-dy), float4x4(-0.015146497637033,-0.315460920333862,0.083827368915081,0.007631698157638,0.148961633443832,0.229689583182335,-0.029676275327802,0.014991539530456,0.169619992375374,0.122918471693993,0.232473626732826,0.297830194234848,0.143598720431328,-0.028349651023746,-0.114368215203285,0.019959265366197));
res += mul(Get(s2,0,0), float4x4(-0.044966340065002,-0.080797880887985,0.044910233467817,0.088975518941879,-0.213557496666908,-0.068458139896393,0.123287215828896,0.055774234235287,-0.086230382323265,-0.197301015257835,-0.071939073503017,0.079922579228878,0.144125431776047,0.007227715104818,0.017878053709865,-0.017128439620137));
res += mul(Get(s2,0,dy), float4x4(-0.078329019248486,0.154063940048218,0.031497199088335,0.166599944233894,0.194245666265488,0.027862569317222,-0.012331570498645,-0.064183734357357,0.040165662765503,0.015804916620255,-0.024335641413927,0.006355750374496,0.195438817143440,-0.033389333635569,0.089876674115658,-0.073077246546745));
res += mul(Get(s2,dx,-dy), float4x4(-0.034288421273232,0.070435479283333,-0.087536357343197,0.026027726009488,0.235813692212105,0.080536536872387,-0.014791493304074,0.270704001188278,0.026168484240770,0.190833941102028,0.127394691109657,-0.223140925168991,0.022011876106262,0.177921161055565,-0.218703761696815,0.034754529595375));
res += mul(Get(s2,dx,0), float4x4(-0.281415671110153,-0.126492917537689,-0.060629870742559,0.089330524206161,0.101884461939335,-0.063629433512688,-0.102933831512928,-0.098666749894619,-0.028730656951666,0.071622028946877,0.200723767280579,0.067504756152630,-0.053301505744457,-0.162010446190834,-0.265676379203796,0.064434111118317));
res += mul(Get(s2,dx,dy), float4x4(0.039600782096386,-0.123612836003304,-0.130386859178543,-0.124538280069828,-0.238604843616486,-0.139743238687515,-0.198781922459602,-0.012519403360784,0.037754878401756,-0.028997011482716,0.191642969846725,-0.027448887005448,-0.140574455261230,-0.001131728640758,-0.054154440760612,-0.004544208757579));
res += mul(Get(s3,-dx,-dy), float4x4(0.136644631624222,0.012247112579644,0.370518922805786,0.116035588085651,0.018108014017344,-0.054130017757416,0.109776057302952,-0.142464756965637,-0.034297559410334,-0.156778767704964,0.076976515352726,0.090546302497387,0.101715669035912,0.089532300829887,0.007868385873735,-0.058506060391665));
res += mul(Get(s3,-dx,0), float4x4(0.002796803368255,0.046820662915707,-0.033385477960110,0.164560809731483,-0.040418360382318,-0.014279092662036,-0.018083672970533,-0.026643399149179,0.063942939043045,-0.110547065734863,0.021931866183877,-0.179094314575195,0.025443177670240,0.106591120362282,-0.084782540798187,0.117157138884068));
res += mul(Get(s3,-dx,dy), float4x4(-0.094041705131531,0.012012513354421,-0.024973193183541,-0.090082317590714,0.044232308864594,-0.238390356302261,0.034662805497646,0.182299539446831,-0.299159198999405,-0.059712130576372,-0.013926033861935,0.107262946665287,0.017362996935844,-0.086922027170658,0.039982289075851,-0.049093004316092));
res += mul(Get(s3,0,-dy), float4x4(0.065323129296303,0.230558142066002,-0.016003724187613,-0.071549750864506,0.107042297720909,0.131540536880493,0.016905097290874,0.066524371504784,-0.199701115489006,0.035489380359650,-0.118041068315506,0.059633590281010,-0.103433601558208,0.059315647929907,-0.139989882707596,0.171970233321190));
res += mul(Get(s3,0,0), float4x4(-0.052308913320303,0.115435369312763,-0.074475571513176,-0.037963420152664,-0.162109628319740,0.091341115534306,0.038710203021765,0.065865248441696,-0.042517334222794,0.026478881016374,-0.025016231462359,0.075299277901649,0.109496057033539,-0.128961294889450,-0.290923207998276,0.099152088165283));
res += mul(Get(s3,0,dy), float4x4(0.006675262469798,0.088258355855942,-0.006418447941542,-0.051507696509361,-0.069259911775589,0.068354152143002,0.098665393888950,0.127052500844002,-0.056574411690235,-0.200249314308167,0.104308210313320,-0.040166679769754,0.120877869427204,0.073606058955193,-0.119277305901051,-0.104562520980835));
res += mul(Get(s3,dx,-dy), float4x4(0.085357666015625,0.390271216630936,0.006702942773700,-0.011797559447587,-0.018831377848983,-0.002303743502125,0.114806905388832,-0.141092211008072,-0.152364850044250,-0.011115748435259,-0.110289104282856,-0.010429004207253,-0.119976826012135,0.144473224878311,-0.162380173802376,-0.010501589626074));
res += mul(Get(s3,dx,0), float4x4(0.000869615760166,-0.004022133536637,-0.271865665912628,0.137047350406647,0.075963497161865,0.071622781455517,-0.078799635171890,0.000634870957583,-0.021661942824721,-0.096104778349400,-0.037723835557699,-0.039424985647202,-0.046533513814211,0.157462328672409,-0.030601521953940,0.063377782702446));
res += mul(Get(s3,dx,dy), float4x4(-0.164291858673096,-0.048413518816233,0.024739943444729,-0.000408940861234,-0.018196253105998,-0.153079956769943,0.036007139831781,-0.152535051107407,0.067041069269180,-0.183873578906059,-0.023144140839577,0.176042407751083,0.190016537904739,0.053491160273552,-0.192648634314537,-0.097917348146439));
return max(float4(0,0,0,0), res);
}
