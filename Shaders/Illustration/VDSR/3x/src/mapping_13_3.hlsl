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
res += mul(Get(s0,-dx,-dy), float4x4(0.260880351066589,0.211659237742424,0.047568708658218,0.087366066873074,0.012955852784216,0.005234410054982,-0.097097925841808,-0.103531219065189,0.008674866519868,0.029314724728465,0.119357898831367,-0.196649521589279,-0.042629629373550,0.057950209826231,-0.021299533545971,-0.033835634589195));
res += mul(Get(s0,-dx,0), float4x4(-0.103221572935581,0.018952697515488,-0.012793415226042,-0.015222609043121,0.023178258910775,0.024751504883170,0.092064894735813,-0.246090203523636,0.100815467536449,0.032581239938736,0.031359199434519,0.107730776071548,0.055582895874977,0.194456785917282,0.079200103878975,-0.018659647554159));
res += mul(Get(s0,-dx,dy), float4x4(0.059381384402514,-0.013117860071361,0.059365276247263,0.087068028748035,-0.066290207207203,-0.015164900571108,-0.138807415962219,0.144175648689270,-0.056509103626013,0.070951767265797,-0.091274447739124,-0.057246226817369,-0.039030406624079,-0.165668919682503,-0.000990900909528,-0.053328711539507));
res += mul(Get(s0,0,-dy), float4x4(0.043870333582163,0.083259053528309,-0.049429692327976,-0.118295557796955,0.100107923150063,0.077361695468426,-0.153989151120186,-0.071633659303188,0.121123388409615,0.056242037564516,0.003589384024963,-0.264678061008453,-0.124162040650845,-0.040374871343374,-0.191520169377327,0.053353834897280));
res += mul(Get(s0,0,0), float4x4(-0.054800540208817,-0.266176402568817,-0.101070940494537,0.174049288034439,-0.013541559688747,0.045978769659996,-0.022754086181521,0.200649023056030,-0.028845984488726,0.085710704326630,-0.143750131130219,0.051490794867277,-0.094204895198345,-0.001529003027827,0.214151740074158,0.161212339997292));
res += mul(Get(s0,0,dy), float4x4(0.111202865839005,-0.031241372227669,0.071380436420441,0.026857644319534,-0.198852390050888,0.103673793375492,-0.094353176653385,0.327510327100754,-0.197007298469543,-0.051257088780403,0.177452608942986,-0.046361535787582,0.243031322956085,0.081346094608307,0.234037578105927,-0.176277950406075));
res += mul(Get(s0,dx,-dy), float4x4(-0.024935038760304,-0.201517999172211,-0.052983403205872,-0.010124525986612,0.100217759609222,-0.005983076058328,0.026072567328811,-0.002604019595310,-0.152411356568336,-0.027391862124205,-0.026716068387032,0.035530321300030,0.007486160844564,-0.012510983273387,0.143270283937454,0.036049451678991));
res += mul(Get(s0,dx,0), float4x4(-0.093745812773705,-0.271958738565445,0.002021078718826,-0.157063439488411,0.107216730713844,-0.000186087694601,0.065050862729549,0.180678129196167,0.073600709438324,0.051321823149920,-0.109168022871017,-0.051345370709896,0.079428203403950,-0.034180179238319,-0.151771500706673,-0.036291837692261));
res += mul(Get(s0,dx,dy), float4x4(0.035342976450920,0.073833987116814,0.040739115327597,-0.130995631217957,-0.048837307840586,0.070716813206673,-0.086993157863617,0.091287225484848,0.049657832831144,0.196837276220322,-0.035693667829037,0.146271228790283,-0.093317590653896,0.130030348896980,-0.079901605844498,-0.033913332968950));
res += mul(Get(s1,-dx,-dy), float4x4(0.081535346806049,0.100441157817841,0.027274880558252,0.187142491340637,0.209387764334679,0.004511732608080,-0.090708732604980,0.101621389389038,-0.376661956310272,0.171606674790382,0.010641485452652,-0.167445585131645,-0.007839831523597,0.094170898199081,0.021045863628387,0.092402428388596));
res += mul(Get(s1,-dx,0), float4x4(0.067217886447906,-0.068357266485691,-0.112367942929268,-0.058060664683580,0.060593698173761,-0.006218958646059,0.059683516621590,0.200224593281746,-0.080963313579559,0.010573124513030,0.047476958483458,-0.093205817043781,-0.036807388067245,-0.125457361340523,0.105489380657673,0.076119408011436));
res += mul(Get(s1,-dx,dy), float4x4(0.009797344915569,0.049570877104998,0.068400897085667,-0.079844787716866,-0.014994044788182,0.106933958828449,0.223570644855499,0.011492270044982,-0.124171681702137,-0.198271185159683,-0.017117284238338,-0.096534207463264,-0.110602512955666,0.186095908284187,-0.179591715335846,-0.000735256122425));
res += mul(Get(s1,0,-dy), float4x4(-0.207206487655640,0.049929376691580,-0.091447666287422,0.204724922776222,0.147059336304665,-0.071802489459515,0.048866782337427,-0.150779083371162,-0.042440123856068,0.118807211518288,-0.143430873751640,-0.091233037412167,0.051047582179308,0.093238569796085,0.021782556548715,0.201889991760254));
res += mul(Get(s1,0,0), float4x4(-0.139829814434052,0.073754623532295,0.048453114926815,-0.077003471553326,0.018493466079235,0.154977515339851,0.203049391508102,0.099398076534271,0.065815642476082,-0.041382744908333,0.037332966923714,0.104689516127110,0.159262984991074,0.010330035351217,-0.113375447690487,0.267255097627640));
res += mul(Get(s1,0,dy), float4x4(0.013896789401770,-0.139506846666336,0.174492165446281,-0.041667062789202,-0.005662217736244,-0.077284537255764,-0.053033325821161,-0.007154636550695,0.021547384560108,-0.064229533076286,0.180273473262787,0.067031465470791,-0.075379535555840,0.031162062659860,-0.117768876254559,0.179989278316498));
res += mul(Get(s1,dx,-dy), float4x4(0.101613141596317,-0.022992236539721,0.059553548693657,0.195957407355309,-0.038078643381596,0.043891806155443,0.179121479392052,0.032478302717209,0.149373665452003,-0.095240861177444,-0.075197748839855,0.087171450257301,-0.024421675130725,-0.027626659721136,0.025560885667801,-0.113244362175465));
res += mul(Get(s1,dx,0), float4x4(-0.109077170491219,-0.037761259824038,0.091175712645054,-0.034137640148401,-0.014410495758057,0.187825992703438,0.062504060566425,-0.088113553822041,0.170607730746269,-0.038209091871977,-0.073409803211689,0.094124771654606,0.042886860668659,0.006285872310400,-0.030990809202194,-0.079348288476467));
res += mul(Get(s1,dx,dy), float4x4(-0.236462816596031,-0.105894364416599,0.006755948532373,0.104305438697338,-0.123182907700539,-0.222254112362862,0.112518236041069,-0.000033354626794,0.161464169621468,-0.210607111454010,-0.099636130034924,0.113932512700558,-0.063225924968719,0.047561846673489,-0.026647957041860,0.202910080552101));
res += mul(Get(s2,-dx,-dy), float4x4(-0.135324493050575,0.123676165938377,-0.153233960270882,0.069990731775761,-0.031444903463125,0.152738869190216,0.120616130530834,-0.092112012207508,0.059452302753925,-0.154412448406219,-0.011885594576597,0.009342248551548,-0.034752614796162,-0.007805593311787,0.140466511249542,-0.117235854268074));
res += mul(Get(s2,-dx,0), float4x4(-0.050978079438210,0.157493487000465,-0.120212860405445,-0.011290030553937,0.098263375461102,-0.078053273260593,0.019166689366102,-0.183163583278656,-0.056922327727079,-0.252612113952637,-0.001620328170247,0.040457598865032,0.162225201725960,0.110005319118500,0.074201621115208,-0.096285022795200));
res += mul(Get(s2,-dx,dy), float4x4(0.218291059136391,-0.240600734949112,-0.019508995115757,-0.029236854985356,-0.002382218372077,-0.236406341195107,-0.027536598965526,0.133419200778008,-0.321052789688110,0.016528004780412,0.038618285208941,0.131895229220390,-0.004220785573125,-0.073212072253227,0.163703575730324,-0.105111964046955));
res += mul(Get(s2,0,-dy), float4x4(-0.109036460518837,0.017473286017776,-0.051367223262787,0.197300657629967,-0.005046017467976,0.040599092841148,-0.046350352466106,0.026889873668551,0.228799566626549,-0.055990356951952,-0.058608949184418,0.034343957901001,-0.048382222652435,0.013246561400592,-0.012528755702078,-0.101134970784187));
res += mul(Get(s2,0,0), float4x4(0.168812990188599,0.034816067665815,-0.022059746086597,0.165287569165230,0.099919654428959,0.062131330370903,0.002582591725513,-0.098925746977329,0.215148225426674,0.019162204116583,-0.007713422179222,-0.037993524223566,0.103137031197548,-0.067485794425011,-0.035313930362463,-0.152176097035408));
res += mul(Get(s2,0,dy), float4x4(0.271276623010635,-0.247483015060425,0.093254208564758,0.044038385152817,-0.030501650646329,-0.054131098091602,0.077445037662983,-0.018700329586864,0.069388680160046,-0.027053793892264,-0.071724317967892,0.037092607468367,0.147576615214348,0.175133377313614,-0.031505651772022,0.092176623642445));
res += mul(Get(s2,dx,-dy), float4x4(-0.099237352609634,0.016523540019989,0.021042108535767,0.056940406560898,-0.080982476472855,-0.105339191854000,0.190110370516777,0.181001901626587,0.108999840915203,-0.007312067318708,-0.064367257058620,-0.244638144969940,0.018523672595620,-0.140248969197273,-0.093146905303001,-0.073225989937782));
res += mul(Get(s2,dx,0), float4x4(0.082036964595318,-0.056499421596527,-0.034559633582830,0.094195231795311,0.043880335986614,0.156642869114876,0.137593090534210,0.012094190344214,-0.052845411002636,-0.090062998235226,-0.078836016356945,-0.093126565217972,0.186903193593025,-0.130785092711449,-0.192200988531113,-0.060180120170116));
res += mul(Get(s2,dx,dy), float4x4(-0.112724058330059,-0.210438907146454,-0.070521056652069,0.100273407995701,0.129528343677521,-0.196369051933289,0.018698643893003,0.334804147481918,0.073292776942253,0.112716212868690,0.043672900646925,0.050235550850630,0.071401782333851,-0.114686250686646,0.016199180856347,-0.196049243211746));
res += mul(Get(s3,-dx,-dy), float4x4(0.088219188153744,0.024403093382716,-0.043418094515800,-0.015511687844992,0.075343437492847,0.103403106331825,0.056752391159534,-0.007790870498866,-0.031466931104660,0.122279003262520,0.147908806800842,0.083813317120075,0.027908543124795,-0.070887334644794,0.049341313540936,0.113432377576828));
res += mul(Get(s3,-dx,0), float4x4(0.196163058280945,-0.024503881111741,0.002094951225445,0.041229929775000,-0.046310611069202,-0.077783532440662,0.185167834162712,-0.060100410133600,0.129906713962555,-0.075380675494671,-0.230051398277283,-0.001943685114384,0.226474985480309,0.047902911901474,-0.054714389145374,0.021486191079021));
res += mul(Get(s3,-dx,dy), float4x4(0.133632183074951,0.015503173694015,0.118114113807678,-0.066027067601681,-0.153119742870331,-0.221422061324120,-0.138950109481812,0.034344263374805,-0.109372116625309,0.010318390093744,-0.071232743561268,-0.090580441057682,0.036272116005421,0.042435087263584,0.007223806343973,0.027221819385886));
res += mul(Get(s3,0,-dy), float4x4(-0.017852514982224,0.145406216382980,-0.076201401650906,0.076559484004974,0.093855328857899,0.101419426500797,0.051547765731812,-0.123543187975883,0.041195500642061,0.383039295673370,-0.059149272739887,0.151333674788475,0.011566579341888,-0.106762096285820,-0.003039078321308,0.003383920760825));
res += mul(Get(s3,0,0), float4x4(0.091401249170303,-0.167864874005318,-0.092888914048672,0.048129852861166,0.060703005641699,-0.141240119934082,0.073966063559055,-0.028677038848400,-0.058656387031078,-0.140101164579391,-0.030870784074068,-0.101119615137577,-0.016862427815795,0.168285623192787,-0.022712849080563,0.158208638429642));
res += mul(Get(s3,0,dy), float4x4(-0.141866564750671,-0.062069151550531,0.030578836798668,-0.034839801490307,0.071326062083244,-0.178807064890862,-0.071648783981800,-0.007631917949766,-0.079646594822407,0.056582175195217,-0.043743088841438,-0.018661996349692,0.095647089183331,-0.159576758742332,0.256575226783752,0.146102294325829));
res += mul(Get(s3,dx,-dy), float4x4(-0.159243598580360,0.023647073656321,-0.108624689280987,-0.038633316755295,0.070407241582870,0.027494784444571,0.092479437589645,0.012475739233196,-0.179342582821846,0.092195197939873,0.095588423311710,0.125588804483414,-0.001506392611191,0.004814506974071,-0.072626136243343,-0.118506088852882));
res += mul(Get(s3,dx,0), float4x4(-0.092314936220646,-0.007002767175436,-0.199358418583870,0.105965167284012,0.138929665088654,-0.018574984744191,-0.063181288540363,-0.082510799169540,-0.009566880762577,-0.079227969050407,-0.019248055294156,0.079429186880589,-0.113925561308861,-0.077491320669651,0.006147199776024,-0.063278943300247));
res += mul(Get(s3,dx,dy), float4x4(-0.046534840017557,-0.055621244013309,0.047987874597311,0.089280672371387,0.064085140824318,-0.097344018518925,-0.197133913636208,-0.019753823056817,0.179591834545135,0.044911772012711,-0.062651962041855,0.060122027993202,0.014787201769650,0.115980878472328,0.017359161749482,0.024183390662074));
return max(float4(0,0,0,0), res);
}