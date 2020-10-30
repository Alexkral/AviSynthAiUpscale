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
res += mul(Get(s0,-dx,-dy), float4x4(0.042923565953970,-0.048048209398985,0.084530308842659,-0.050722394138575,-0.073479577898979,-0.068137757480145,-0.082657679915428,-0.051519419997931,-0.047879882156849,-0.054887399077415,-0.028392391279340,-0.083375774323940,0.028869094327092,-0.018155189231038,-0.046924151480198,0.032661698758602));
res += mul(Get(s0,-dx,0), float4x4(0.065222211182117,0.113717585802078,0.046656358987093,-0.050048209726810,-0.074342407286167,0.050367727875710,0.025867195799947,-0.022814365103841,0.065354801714420,0.238416358828545,-0.052796423435211,-0.066970862448215,0.013839847408235,0.025390287861228,-0.063373886048794,0.020775718614459));
res += mul(Get(s0,-dx,dy), float4x4(-0.049269229173660,0.067473992705345,0.082778617739677,0.064823545515537,-0.099216967821121,0.030738325789571,-0.088030382990837,0.023025544360280,0.035823155194521,-0.005999779328704,-0.122769407927990,0.034805230796337,-0.002037118421867,0.084592014551163,-0.035109434276819,-0.004233495332301));
res += mul(Get(s0,0,-dy), float4x4(0.175437450408936,-0.065951451659203,-0.037562467157841,0.095187388360500,0.046162582933903,0.020257873460650,-0.027484390884638,-0.031239159405231,-0.032718140631914,-0.069265216588974,-0.087157934904099,-0.103756524622440,0.104548498988152,-0.069844014942646,-0.008081312291324,0.040095716714859));
res += mul(Get(s0,0,0), float4x4(0.018802855163813,0.054030254483223,0.037074267864227,0.135927945375443,-0.002975492738187,0.078371651470661,0.013157916255295,-0.080832891166210,-0.118906825780869,-0.050209134817123,0.144735604524612,0.229179859161377,-0.027426034212112,-0.100637324154377,-0.008948489092290,0.081765137612820));
res += mul(Get(s0,0,dy), float4x4(0.017649754881859,-0.017391011118889,0.072260372340679,0.125906482338905,-0.104943245649338,0.019826106727123,-0.066703982651234,-0.017595939338207,-0.001159007078968,0.052560649812222,-0.070457130670547,-0.001844572485425,-0.043544434010983,0.064798071980476,0.000484292511828,-0.008544155396521));
res += mul(Get(s0,dx,-dy), float4x4(0.085901215672493,-0.034071460366249,0.128011435270309,0.011466538533568,-0.044763445854187,0.043737035244703,-0.047803703695536,0.054169412702322,-0.035354215651751,0.014678781852126,0.079768873751163,0.012413011863828,0.120517805218697,0.146305963397026,0.011328457854688,-0.036982569843531));
res += mul(Get(s0,dx,0), float4x4(0.043555077165365,-0.037891700863838,-0.036518111824989,0.003650457365438,-0.015008062124252,-0.031592939049006,0.004798628855497,0.058494444936514,0.202859312295914,0.052729383111000,0.175847813487053,-0.068894065916538,0.055747911334038,-0.022675858810544,-0.005129367578775,-0.023543175309896));
res += mul(Get(s0,dx,dy), float4x4(-0.071703791618347,-0.043651726096869,0.112739577889442,-0.047963391989470,-0.166078507900238,-0.066056631505489,-0.014149841852486,-0.078765355050564,-0.060457509011030,0.058259274810553,-0.111341394484043,0.087498620152473,0.032989867031574,0.050350654870272,0.034435413777828,-0.073784179985523));
res += mul(Get(s1,-dx,-dy), float4x4(0.036473654210567,0.031680464744568,-0.053518738597631,-0.061060853302479,0.026581097394228,0.051143016666174,-0.010233771055937,0.043102104216814,-0.003866607556120,-0.069475322961807,0.068390458822250,-0.109666146337986,-0.006625417619944,0.012592167593539,-0.040614582598209,-0.091255746781826));
res += mul(Get(s1,-dx,0), float4x4(-0.013553450815380,0.002541654976085,-0.061662741005421,-0.020525328814983,-0.006232388783246,0.120926998555660,0.004718443378806,0.101888805627823,0.032360687851906,-0.037307016551495,0.007570595014840,-0.085306249558926,-0.081840820610523,0.103367425501347,0.018106261268258,-0.049364574253559));
res += mul(Get(s1,-dx,dy), float4x4(0.077171511948109,-0.044967278838158,-0.054488345980644,0.027947705239058,-0.009538031183183,-0.011104570701718,0.023462628945708,0.025704095140100,-0.006503882352263,0.053888794034719,-0.022601347416639,0.008939125575125,-0.001097946660593,0.007011508103460,0.005439765285701,0.011698792688549));
res += mul(Get(s1,0,-dy), float4x4(0.048061128705740,-0.031495567411184,0.059879817068577,-0.118560306727886,0.000169376638951,0.012859536334872,-0.049896683543921,0.072220601141453,0.013755846768618,0.022980704903603,0.014902045950294,-0.061747647821903,0.059779170900583,-0.060817878693342,-0.023655734956264,-0.017352797091007));
res += mul(Get(s1,0,0), float4x4(0.107952862977982,-0.008351326920092,0.030584393069148,0.034820351749659,0.006316434126347,-0.174617886543274,0.050995755940676,0.414710164070129,-0.011492259800434,0.092931888997555,0.011687104590237,-0.055241238325834,0.287975162267685,0.070227272808552,-0.050763990730047,-0.034950938075781));
res += mul(Get(s1,0,dy), float4x4(0.080505885183811,-0.006107061635703,-0.003985079471022,0.116206727921963,-0.053202781826258,-0.061102565377951,-0.030232558026910,-0.127777799963951,0.081592589616776,0.031988371163607,-0.048716481775045,0.027482734993100,0.053693447262049,-0.018677804619074,-0.109902583062649,0.033887468278408));
res += mul(Get(s1,dx,-dy), float4x4(0.062137298285961,-0.039456784725189,-0.050709761679173,-0.029738973826170,0.059065971523523,-0.038524378091097,0.035778477787971,0.011684446595609,0.005449701566249,-0.031740106642246,0.084944561123848,-0.030987350270152,0.074198864400387,-0.114704310894012,-0.064447082579136,-0.060762718319893));
res += mul(Get(s1,dx,0), float4x4(-0.007343114819378,-0.011912610381842,0.032107599079609,0.022127144038677,0.031576633453369,-0.054907284677029,-0.079878136515617,-0.014351606369019,-0.039638482034206,-0.021746397018433,0.042295839637518,0.003599296556786,0.106475725769997,-0.090970948338509,-0.026119425892830,0.042088758200407));
res += mul(Get(s1,dx,dy), float4x4(-0.000058067118516,-0.028150200843811,0.015865020453930,-0.057576764374971,0.053922194987535,-0.079772219061852,0.002657369943336,0.005502504296601,0.040136758238077,-0.022362222895026,-0.072612203657627,-0.013331007212400,0.087336346507072,-0.028433015570045,-0.002481585601345,-0.016996890306473));
res += mul(Get(s2,-dx,-dy), float4x4(-0.016301486641169,-0.043581455945969,-0.043523605912924,0.011341702193022,0.009233119897544,0.031191932037473,0.025967765599489,0.155144438147545,-0.012144581414759,0.049819219857454,-0.000401874538511,-0.088222123682499,0.036481644958258,-0.037836946547031,-0.070438705384731,0.023836202919483));
res += mul(Get(s2,-dx,0), float4x4(-0.004357005469501,-0.008549151942134,-0.045686986297369,-0.051721055060625,-0.044967114925385,0.044520083814859,0.139311507344246,0.102208942174911,-0.063753873109818,-0.018258873373270,0.008631370030344,-0.117362156510353,-0.025037456303835,-0.000184903154150,-0.046790834516287,-0.019726024940610));
res += mul(Get(s2,-dx,dy), float4x4(-0.008351399563253,0.027564721181989,-0.066293098032475,-0.005851018708199,0.076585330069065,0.029103880748153,0.035806786268950,0.019551726058125,-0.018320741131902,-0.072182655334473,-0.078876122832298,-0.033963195979595,0.003779005259275,0.051240913569927,-0.064216211438179,0.006951458752155));
res += mul(Get(s2,0,-dy), float4x4(0.097274571657181,-0.043573468923569,0.058847881853580,0.112842984497547,-0.007882038131356,0.076937228441238,-0.044377729296684,0.093414351344109,-0.001694705686532,0.068693436682224,0.078603275120258,0.105458498001099,0.034116618335247,-0.045516032725573,0.004383889026940,0.022330632433295));
res += mul(Get(s2,0,0), float4x4(-0.053348269313574,0.030300593003631,0.044187963008881,-0.041039533913136,0.001185945118777,0.055075608193874,0.051528308540583,0.075111255049706,0.146721467375755,0.013226338662207,0.006497806403786,-0.023526728153229,0.001880195573904,0.067559890449047,0.003728735027835,-0.032040994614363));
res += mul(Get(s2,0,dy), float4x4(0.046435240656137,-0.046474285423756,0.017597327008843,-0.004597138613462,0.069304928183556,-0.019823195412755,-0.051276128739119,-0.041658133268356,-0.034687031060457,0.028334138914943,0.096828229725361,0.017540505155921,-0.063741929829121,0.004848029930145,-0.013707405887544,0.031650293618441));
res += mul(Get(s2,dx,-dy), float4x4(-0.043760493397713,-0.009086778387427,-0.049360867589712,0.065755844116211,-0.084847345948219,0.039248637855053,-0.008773584850132,0.047590091824532,0.093304127454758,0.103135116398335,0.054053358733654,0.060611408203840,0.037763703614473,0.054726693779230,0.029812244698405,0.059086892753839));
res += mul(Get(s2,dx,0), float4x4(-0.085586570203304,0.020746512338519,0.085776396095753,-0.011146935634315,0.153765901923180,-0.021850688382983,0.015247493982315,-0.047966968268156,0.053197570145130,0.070933602750301,-0.035042323172092,0.013276414014399,0.009972948580980,0.128364637494087,0.044747620820999,0.105473048985004));
res += mul(Get(s2,dx,dy), float4x4(-0.066813006997108,-0.022453207522631,0.043189179152250,-0.015743289142847,-0.002996492898092,-0.047865211963654,-0.069590926170349,-0.042404156178236,0.010141211561859,0.057373460382223,0.000716278795153,-0.008204758167267,-0.051320184022188,-0.034708924591541,0.023310933262110,0.044831275939941));
res += mul(Get(s3,-dx,-dy), float4x4(0.000459638889879,0.010269697755575,0.050590079277754,-0.145511835813522,0.014104625210166,-0.019314385950565,0.029273061081767,0.012190905399621,0.048246543854475,0.015062765218318,0.013573995791376,-0.028035867959261,-0.076988637447357,-0.016968457028270,-0.097594857215881,0.039297312498093));
res += mul(Get(s3,-dx,0), float4x4(0.069108881056309,-0.132959663867950,-0.008450215682387,-0.187940567731857,0.037680666893721,-0.030989320948720,0.039089288562536,0.096325203776360,-0.015359249897301,-0.040873024612665,0.025456981733441,0.161499008536339,-0.067536868155003,0.045119088143110,0.013826734386384,-0.009709108620882));
res += mul(Get(s3,-dx,dy), float4x4(0.004264994524419,0.038693953305483,-0.031742528080940,-0.068783588707447,0.070796512067318,-0.011816487647593,0.016441181302071,0.001629242324270,-0.022075748071074,0.034169152379036,-0.021216319873929,0.082637794315815,0.008907545357943,-0.018420681357384,0.043907284736633,-0.009088988415897));
res += mul(Get(s3,0,-dy), float4x4(0.025311850011349,-0.000056337401475,0.088688746094704,-0.047549728304148,-0.047660835087299,0.058807004243135,-0.033662114292383,-0.025165401399136,-0.008938391692936,0.066480241715908,0.014848319813609,-0.043938949704170,-0.016025887802243,-0.022956943139434,-0.081256881356239,0.042350817471743));
res += mul(Get(s3,0,0), float4x4(0.064275421202183,0.355470150709152,-0.043126083910465,-0.082729145884514,0.056137483566999,-0.000896445242688,0.054186008870602,-0.001941773691215,-0.027567837387323,-0.006904906593263,0.037179287523031,-0.069152191281319,-0.058200713247061,-0.037851423025131,0.041326384991407,-0.009216737002134));
res += mul(Get(s3,0,dy), float4x4(0.043810959905386,-0.053220286965370,-0.038518812507391,0.015855839475989,0.053008541464806,-0.027052331715822,0.039707235991955,-0.016137223690748,0.034380458295345,0.044825166463852,0.004600205458701,-0.022657666355371,0.066172972321510,-0.067062854766846,-0.049631439149380,-0.085989221930504));
res += mul(Get(s3,dx,-dy), float4x4(-0.135794445872307,0.015870250761509,0.010138314217329,0.042420141398907,0.021187903359532,-0.045835070312023,-0.018877686932683,-0.022112675011158,-0.062316961586475,0.111244879662991,0.002769679762423,0.038164481520653,-0.073656454682350,-0.068273127079010,-0.062822036445141,0.020295789465308));
res += mul(Get(s3,dx,0), float4x4(-0.113057158887386,-0.035738717764616,0.104499645531178,-0.089996889233589,0.017700001597404,0.002355078235269,0.038388699293137,0.038218613713980,-0.130676209926605,0.067132055759430,0.071503058075905,0.062334079295397,0.121786899864674,0.100804664194584,0.060703396797180,-0.095762066543102));
res += mul(Get(s3,dx,dy), float4x4(-0.114551670849323,0.054804474115372,0.233839526772499,0.059098593890667,-0.024680303409696,0.011571650393307,-0.082331217825413,0.040288031101227,-0.074953965842724,0.018009703606367,0.099593780934811,0.085961811244488,0.023322192952037,-0.119605749845505,0.099637985229492,0.010263641364872));
return max(float4(0,0,0,0), res);
}
