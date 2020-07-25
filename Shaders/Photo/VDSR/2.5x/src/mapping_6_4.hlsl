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
res += mul(Get(s0,-dx,-dy), float4x4(0.059663899242878,-0.116540707647800,0.100913092494011,0.067427247762680,0.188450723886490,0.036491177976131,0.041700620204210,-0.101285114884377,0.002016596263275,-0.076114840805531,0.054787360131741,-0.130577638745308,-0.139386609196663,-0.068445444107056,-0.012527024373412,0.038356848061085));
res += mul(Get(s0,-dx,0), float4x4(0.077851533889771,0.072731122374535,0.138533800840378,0.198235750198364,0.050951525568962,-0.142727330327034,-0.043618574738503,-0.080624811351299,0.165314689278603,-0.017368398606777,0.139419272542000,0.176521167159081,0.041792809963226,-0.057427987456322,0.029936540871859,-0.014944568276405));
res += mul(Get(s0,-dx,dy), float4x4(-0.151364117860794,-0.126636967062950,-0.054175417870283,-0.058782525360584,0.063222922384739,-0.074441224336624,-0.239492401480675,-0.085644021630287,0.124924167990685,-0.054651316255331,0.319277137517929,0.000408860942116,0.159784942865372,-0.048844110220671,-0.110178291797638,-0.114109262824059));
res += mul(Get(s0,0,-dy), float4x4(-0.095209576189518,0.154349103569984,0.085009634494781,-0.103755876421928,-0.055484101176262,-0.063224911689758,-0.139764681458473,-0.108307570219040,0.006294146180153,-0.071574032306671,0.240545734763145,-0.031743858009577,-0.011349048465490,0.021507706493139,0.036642435938120,-0.188826143741608));
res += mul(Get(s0,0,0), float4x4(0.065488174557686,-0.169263631105423,0.041334085166454,-0.142236590385437,0.182648092508316,0.114750392735004,-0.087954074144363,-0.021034657955170,0.056739900261164,0.002950477413833,-0.060574639588594,-0.070164903998375,0.061729237437248,0.016240209341049,-0.070306427776814,0.174596890807152));
res += mul(Get(s0,0,dy), float4x4(-0.097672864794731,-0.137147039175034,-0.051061570644379,0.096404969692230,0.014058476313949,0.002838576212525,0.112984098494053,-0.049573373049498,-0.045905023813248,-0.260420024394989,-0.164150685071945,-0.081206135451794,-0.078033953905106,0.086548119783401,0.006988995242864,-0.025953290984035));
res += mul(Get(s0,dx,-dy), float4x4(0.127084627747536,0.029832812026143,0.013205623254180,0.029491901397705,0.040176261216402,-0.014245109632611,0.215061366558075,0.095835052430630,-0.041759453713894,-0.221325322985649,0.096548125147820,-0.082688510417938,-0.134966164827347,-0.036906644701958,-0.131968528032303,-0.023514585569501));
res += mul(Get(s0,dx,0), float4x4(0.060213215649128,-0.164134681224823,-0.052981089800596,0.063836574554443,-0.024901831522584,0.008215976879001,0.006129184737802,-0.068752773106098,-0.125791221857071,-0.035086080431938,-0.114702582359314,-0.071631141006947,0.076737187802792,0.117513373494148,0.031711675226688,-0.129102274775505));
res += mul(Get(s0,dx,dy), float4x4(0.124558761715889,-0.262524098157883,-0.094516426324844,-0.049249384552240,-0.143163561820984,-0.221506193280220,-0.168294340372086,0.063327535986900,0.077110998332500,-0.181892916560173,0.146346762776375,0.099301367998123,0.070570543408394,0.084266401827335,-0.142198264598846,0.053667001426220));
res += mul(Get(s1,-dx,-dy), float4x4(0.016893675550818,0.018839737400413,0.023063626140356,-0.098894506692886,-0.009179902262986,-0.021097699180245,-0.105739079415798,0.272868245840073,0.136848375201225,-0.007198752369732,0.073640815913677,0.063479006290436,-0.363346606492996,0.008178742602468,-0.052467718720436,-0.110443942248821));
res += mul(Get(s1,-dx,0), float4x4(0.028501329943538,0.191778048872948,-0.056884068995714,0.087275184690952,-0.073759786784649,-0.027517100796103,0.236504226922989,0.100954100489616,0.186782181262970,0.034846175462008,0.034200936555862,0.118173904716969,-0.036415781825781,-0.004631199408323,0.122682467103004,-0.004767111502588));
res += mul(Get(s1,-dx,dy), float4x4(0.039072554558516,-0.020524334162474,-0.084882177412510,-0.250966042280197,-0.077033482491970,-0.053696684539318,0.119111128151417,-0.082384943962097,0.014484525658190,-0.120509706437588,-0.134205669164658,0.178848534822464,-0.070071503520012,-0.105558566749096,0.006324053741992,-0.153240576386452));
res += mul(Get(s1,0,-dy), float4x4(-0.043617434799671,0.049855977296829,-0.172132402658463,0.036995634436607,0.079310558736324,-0.095712549984455,0.089141689240932,0.041098982095718,-0.191462710499763,0.020182512700558,-0.023010406643152,-0.032731574028730,0.012748021632433,0.063226960599422,-0.157454252243042,0.017884418368340));
res += mul(Get(s1,0,0), float4x4(0.087398901581764,0.005099434871227,-0.007886840030551,0.019216949120164,-0.087682783603668,-0.159936472773552,-0.074267633259296,0.044713310897350,0.078430987894535,-0.005191656295210,0.077984206378460,-0.095394596457481,0.087018705904484,0.064405493438244,0.029137143865228,0.050395976752043));
res += mul(Get(s1,0,dy), float4x4(0.134758070111275,0.128472909331322,-0.086356505751610,0.053324200212955,0.021684316918254,-0.169818609952927,-0.073829881846905,-0.258109748363495,0.094039298593998,0.083416372537613,-0.036195855587721,-0.002776745939627,-0.089447163045406,0.099394075572491,-0.165906608104706,0.056994386017323));
res += mul(Get(s1,dx,-dy), float4x4(-0.002490827115253,-0.135461747646332,-0.106571011245251,-0.041097506880760,-0.021900646388531,0.072872802615166,0.050958268344402,-0.036773931235075,0.025475997477770,-0.069610841572285,0.030141135677695,-0.007991700433195,-0.189525276422501,-0.011377347633243,0.044870067387819,0.081470750272274));
res += mul(Get(s1,dx,0), float4x4(0.210735261440277,-0.095178090035915,0.052424691617489,-0.253406047821045,0.005084568168968,-0.216898500919342,0.058523643761873,-0.213901624083519,0.012487566098571,0.182681143283844,0.072143152356148,-0.043982826173306,0.074123315513134,0.096830330789089,0.085109896957874,0.038039512932301));
res += mul(Get(s1,dx,dy), float4x4(-0.010841023176908,-0.038595858961344,0.100837729871273,-0.102100834250450,-0.027747906744480,0.031829085201025,0.040777370333672,0.120739832520485,-0.057363249361515,0.106928005814552,-0.075542941689491,-0.043388124555349,-0.112065754830837,-0.062313396483660,0.013230429962277,0.081992909312248));
res += mul(Get(s2,-dx,-dy), float4x4(0.081287831068039,-0.166345357894897,-0.036629974842072,-0.004164246376604,0.105403050780296,-0.005500580649823,-0.059737712144852,0.052228294312954,0.020402815192938,0.114639423787594,-0.066811010241508,-0.038274273276329,-0.006426340434700,-0.136314690113068,0.033273350447416,0.050173267722130));
res += mul(Get(s2,-dx,0), float4x4(0.084738142788410,-0.106671422719955,-0.064728386700153,-0.039988245815039,0.075130455195904,-0.033893674612045,0.093770898878574,-0.034880556166172,-0.073114201426506,-0.121759757399559,-0.046520784497261,-0.081731952726841,-0.162576287984848,-0.170917347073555,0.118175730109215,0.157715111970901));
res += mul(Get(s2,-dx,dy), float4x4(-0.120849028229713,0.154051721096039,-0.049257360398769,0.143499106168747,0.042022973299026,-0.057543169707060,0.030995598062873,0.070328734815121,0.021810214966536,0.058434329926968,0.109409697353840,0.118253082036972,-0.147865191102028,0.131098672747612,-0.029540197923779,0.014069958589971));
res += mul(Get(s2,0,-dy), float4x4(0.159593522548676,0.065455161035061,-0.013171579688787,-0.192140623927116,-0.074335545301437,-0.046418216079473,-0.113632984459400,0.066289991140366,-0.023518979549408,-0.107825621962547,0.043302938342094,0.073864869773388,0.011594229377806,0.108343198895454,-0.050554968416691,-0.018385156989098));
res += mul(Get(s2,0,0), float4x4(-0.045256089419127,-0.130236774682999,0.152752548456192,-0.115387663245201,-0.170576870441437,-0.012454091571271,-0.115017503499985,0.248984009027481,-0.075533941388130,-0.108044810593128,-0.085123606026173,0.082397133111954,-0.000138003044412,0.112029664218426,0.207412287592888,0.070608027279377));
res += mul(Get(s2,0,dy), float4x4(-0.109240710735321,-0.025886489078403,0.061386369168758,-0.083994008600712,-0.052065879106522,-0.212866216897964,-0.077896557748318,-0.146974340081215,-0.040225319564342,-0.043595265597105,0.050021301954985,0.013830856420100,-0.116944536566734,0.040658254176378,-0.177505388855934,-0.036195769906044));
res += mul(Get(s2,dx,-dy), float4x4(0.019561843946576,0.035966586321592,-0.002705755876377,0.060437567532063,0.127621456980705,0.089853748679161,0.094602793455124,-0.055891554802656,-0.161886602640152,-0.151219308376312,0.000610983406659,-0.186902925372124,0.162213280797005,-0.007007421460003,-0.114649504423141,-0.077437475323677));
res += mul(Get(s2,dx,0), float4x4(-0.168666601181030,-0.028007198125124,0.131854280829430,-0.144577339291573,0.062795311212540,-0.017392303794622,0.062094196677208,0.102236256003380,0.028717301785946,-0.122407354414463,-0.048154801130295,0.217253908514977,0.132421880960464,0.131738215684891,0.077947676181793,-0.234449863433838));
res += mul(Get(s2,dx,dy), float4x4(0.027124201878905,0.162527948617935,0.002487479243428,-0.005229323636740,-0.047579169273376,0.171808809041977,0.005660788621753,-0.015759635716677,0.037513330578804,0.005744612775743,0.085186772048473,-0.086197353899479,0.069086782634258,0.157652556896210,0.129060193896294,-0.023213222622871));
res += mul(Get(s3,-dx,-dy), float4x4(-0.015215448103845,-0.054183959960938,-0.116030871868134,0.016193285584450,0.103783890604973,0.086154341697693,-0.021587133407593,-0.161963313817978,-0.073452211916447,-0.047856360673904,0.011972538195550,0.048374291509390,0.140851363539696,0.032395035028458,0.135765954852104,-0.023158054798841));
res += mul(Get(s3,-dx,0), float4x4(-0.034333337098360,0.211994200944901,0.087992213666439,0.158104017376900,-0.054425593465567,0.059068121016026,0.072847776114941,-0.102010369300842,-0.035471323877573,-0.048910319805145,-0.204074889421463,0.034611314535141,0.061177734285593,0.035435829311609,-0.100019522011280,-0.118257269263268));
res += mul(Get(s3,-dx,dy), float4x4(0.239867731928825,-0.174152627587318,0.085729531943798,0.072653383016586,0.035015966743231,-0.157535642385483,-0.116950839757919,0.021895248442888,0.016908437013626,0.028907069936395,-0.105315834283829,-0.174188405275345,-0.195262357592583,-0.081073731184006,-0.015662811696529,-0.026372019201517));
res += mul(Get(s3,0,-dy), float4x4(-0.094800591468811,-0.166573762893677,0.138603746891022,0.107700183987617,0.027708759531379,0.050294004380703,-0.041325777769089,-0.091224968433380,0.131894662976265,-0.027708435431123,-0.010180544108152,-0.098932653665543,-0.072577856481075,0.056487467139959,-0.064277097582817,0.079615101218224));
res += mul(Get(s3,0,0), float4x4(0.090992130339146,-0.061386603862047,0.080955959856510,-0.023110225796700,0.071977511048317,0.102034516632557,-0.053593669086695,-0.036054752767086,0.052924402058125,-0.095943361520767,-0.097643569111824,-0.076639674603939,-0.184252068400383,0.127476841211319,0.132596746087074,-0.009790155105293));
res += mul(Get(s3,0,dy), float4x4(0.062292624264956,-0.055836088955402,0.038770142942667,0.145447999238968,0.117151550948620,-0.102294638752937,-0.080381356179714,0.113367252051830,0.109033249318600,-0.154841899871826,-0.190751090645790,-0.300981193780899,0.205977141857147,-0.159998834133148,0.143436834216118,-0.134485915303230));
res += mul(Get(s3,dx,-dy), float4x4(0.069554530084133,0.052451558411121,-0.090885207056999,0.094994269311428,0.102160088717937,-0.064773008227348,0.299680024385452,-0.086850717663765,0.030377179384232,-0.167180046439171,-0.047323767095804,-0.131762638688087,-0.038759350776672,0.037870939821005,-0.087029255926609,0.309251725673676));
res += mul(Get(s3,dx,0), float4x4(-0.017316779121757,0.073121219873428,0.131638988852501,-0.037075985223055,0.085747562348843,0.098820529878139,0.018177866935730,-0.032686952501535,0.026520192623138,0.181272551417351,-0.011807608418167,-0.093342952430248,0.002830824116245,0.015759458765388,0.034780174493790,0.020910888910294));
res += mul(Get(s3,dx,dy), float4x4(0.185320705175400,-0.077806502580643,0.074200257658958,0.009248193353415,0.128194198012352,0.236887201666832,-0.094359196722507,-0.134819686412811,0.060298211872578,0.019373618066311,-0.086651630699635,0.036500439047813,-0.171848624944687,0.029660485684872,-0.084190100431442,0.153322324156761));
return max(float4(0,0,0,0), res);
}