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
res += mul(Get(s0,-dx,-dy), float4x4(-0.011616591364145,0.039742369204760,-0.012580013833940,-0.162573546171188,0.080336280167103,-0.094203568994999,-0.199831426143646,-0.126153990626335,-0.177893817424774,0.163469508290291,-0.092663466930389,0.061074376106262,0.081981927156448,0.093183815479279,-0.078716352581978,-0.049976672977209));
res += mul(Get(s0,-dx,0), float4x4(-0.098685584962368,-0.129883021116257,-0.037251215428114,0.240152046084404,-0.133310735225677,-0.080754257738590,-0.143892988562584,0.069811798632145,0.092112399637699,0.013285817578435,-0.243885099887848,-0.001725145615637,0.163133829832077,0.059595074504614,-0.091170750558376,-0.001462644664571));
res += mul(Get(s0,-dx,dy), float4x4(-0.161085620522499,-0.004459281917661,0.061297968029976,-0.161798462271690,-0.059741202741861,-0.088722050189972,-0.067980341613293,-0.250137478113174,0.192860305309296,0.006155413575470,-0.108084745705128,-0.104320578277111,0.015933370217681,0.027657032012939,0.095932357013226,-0.081594713032246));
res += mul(Get(s0,0,-dy), float4x4(-0.155478596687317,0.070053078234196,-0.002930743619800,0.050980180501938,0.077973045408726,-0.087897911667824,0.144898712635040,-0.091636426746845,-0.157497093081474,0.009901437908411,0.020258380100131,0.046246655285358,0.073144681751728,0.064540378749371,-0.086900055408478,-0.034562759101391));
res += mul(Get(s0,0,0), float4x4(-0.258842170238495,-0.052936695516109,0.044310279190540,0.050233915448189,0.046237714588642,0.000480430957396,0.093585364520550,-0.149758279323578,-0.052723594009876,-0.094224669039249,0.079802170395851,-0.288345366716385,-0.075776696205139,-0.111484646797180,-0.107904456555843,-0.032939080148935));
res += mul(Get(s0,0,dy), float4x4(0.168089553713799,-0.065495878458023,-0.146600842475891,-0.132487386465073,0.172586917877197,0.019628465175629,-0.217668280005455,0.044967703521252,-0.047722477465868,-0.235282972455025,0.000970901804976,0.108077123761177,-0.075180977582932,-0.059292040765285,0.140056893229485,-0.026854502037168));
res += mul(Get(s0,dx,-dy), float4x4(0.177400991320610,-0.013962890021503,0.079062148928642,0.096441961824894,-0.091819889843464,0.117122605443001,0.057424470782280,0.202346131205559,-0.092563435435295,0.079363718628883,-0.112036474049091,0.087843820452690,-0.128611400723457,0.185979887843132,-0.047198429703712,0.058395583182573));
res += mul(Get(s0,dx,0), float4x4(0.076447978615761,-0.005694593768567,-0.000432000670116,-0.016784615814686,-0.111326217651367,-0.103469662368298,-0.007455619517714,0.111891090869904,-0.128190904855728,-0.247365683317184,-0.055776242166758,-0.232496812939644,0.080344051122665,-0.041105739772320,-0.032851934432983,0.248030215501785));
res += mul(Get(s0,dx,dy), float4x4(0.093182206153870,-0.007101200055331,0.090020045638084,-0.010178199969232,0.109938696026802,-0.107368052005768,0.169857397675514,0.125248715281487,0.010543855838478,0.006778758950531,0.200870886445045,-0.103180743753910,-0.069234952330589,-0.050627108663321,-0.017630618065596,-0.028012571856380));
res += mul(Get(s1,-dx,-dy), float4x4(-0.014671827666461,-0.107070788741112,-0.098678015172482,0.104883641004562,0.060497276484966,-0.071133084595203,-0.077507145702839,0.164802759885788,0.041300944983959,-0.124611414968967,-0.178541973233223,-0.240561231970787,-0.109703376889229,0.052828554064035,-0.065665416419506,-0.032006621360779));
res += mul(Get(s1,-dx,0), float4x4(0.048693347722292,-0.045082535594702,0.235101282596588,-0.244599550962448,-0.035722181200981,0.211281865835190,-0.308851540088654,0.067003205418587,-0.135348632931709,-0.012352834455669,0.092618852853775,-0.144291430711746,0.030930731445551,-0.072751775383949,0.188518539071083,-0.052254792302847));
res += mul(Get(s1,-dx,dy), float4x4(0.038354363292456,0.077683575451374,-0.012164917774498,-0.048640944063663,0.169955447316170,-0.126050710678101,0.058858066797256,0.113718554377556,0.235080480575562,-0.164525672793388,0.062991112470627,-0.062742970883846,-0.139212787151337,-0.169890165328979,-0.023415464907885,0.098099574446678));
res += mul(Get(s1,0,-dy), float4x4(-0.014190293848515,-0.098553344607353,-0.222683608531952,0.010465824045241,0.118835434317589,0.062770329415798,-0.063745997846127,0.108023509383202,0.153191268444061,-0.049478150904179,-0.049308344721794,-0.039924204349518,0.057847827672958,-0.015566448681056,-0.021391125395894,-0.028776422142982));
res += mul(Get(s1,0,0), float4x4(-0.019666897132993,-0.040393814444542,0.046621065586805,0.019115759059787,0.003993772435933,0.130061030387878,-0.004595180042088,-0.102367013692856,-0.061568863689899,0.131539091467857,-0.022033637389541,-0.025743002071977,0.034011907875538,-0.072234958410263,-0.197869241237640,0.199063509702682));
res += mul(Get(s1,0,dy), float4x4(0.165390446782112,-0.055715054273605,-0.047401234507561,-0.095670051872730,0.148777157068253,-0.056127395480871,0.011748837307096,-0.046257589012384,0.198499694466591,0.147733330726624,-0.024513170123100,0.003977499436587,-0.115561813116074,0.198400288820267,0.282889336347580,0.218945592641830));
res += mul(Get(s1,dx,-dy), float4x4(-0.081238940358162,-0.073728524148464,0.134079396724701,-0.007123650982976,0.016657235100865,0.022110547870398,-0.007545875851065,-0.089361861348152,0.110257379710674,0.079396940767765,0.050195440649986,-0.000139570518513,0.040229577571154,-0.042030502110720,-0.168063059449196,0.075395777821541));
res += mul(Get(s1,dx,0), float4x4(-0.019258918240666,0.122525818645954,-0.048202887177467,0.047442175447941,0.080442205071449,0.043826416134834,-0.001750653842464,-0.006979859899729,-0.023662289604545,0.063530333340168,0.070234507322311,-0.049260076135397,-0.147205829620361,0.028595311567187,-0.047422822564840,0.120433636009693));
res += mul(Get(s1,dx,dy), float4x4(-0.220982834696770,-0.035092979669571,-0.202068656682968,-0.118448577821255,-0.084692016243935,0.114163167774677,0.109697461128235,-0.019372787326574,0.086316585540771,-0.081134535372257,0.035797860473394,-0.181259319186211,-0.112740062177181,0.045002415776253,-0.118556581437588,-0.201901167631149));
res += mul(Get(s2,-dx,-dy), float4x4(-0.051326707005501,-0.009525232017040,-0.093792058527470,0.002350630005822,-0.204742372035980,0.012613301165402,-0.108154870569706,0.068705804646015,-0.078278392553329,-0.127171844244003,-0.065474942326546,0.106582738459110,0.127370506525040,-0.043367806822062,0.101344898343086,0.061481520533562));
res += mul(Get(s2,-dx,0), float4x4(0.129969894886017,0.044333726167679,0.152225553989410,0.030897313728929,0.099460534751415,-0.052597586065531,0.001914292573929,0.065318405628204,-0.122877784073353,0.050097204744816,-0.230451256036758,-0.084611602127552,-0.046327125281096,-0.061460718512535,0.009792673401535,0.031488545238972));
res += mul(Get(s2,-dx,dy), float4x4(0.118077330291271,0.114528328180313,-0.086588203907013,-0.082481205463409,0.092989183962345,0.158089280128479,0.001766100758687,0.082418158650398,-0.070352301001549,-0.008422030135989,0.077916190028191,-0.030899507924914,0.015996694564819,-0.041573777794838,0.064387455582619,-0.059168923646212));
res += mul(Get(s2,0,-dy), float4x4(0.152417540550232,-0.105765827000141,-0.151804506778717,0.082599870860577,-0.080300569534302,0.034920550882816,0.104714617133141,0.024284698069096,0.057482942938805,-0.071011312305927,0.055565237998962,0.101520426571369,-0.034345693886280,0.181330502033234,0.105668984353542,-0.077956289052963));
res += mul(Get(s2,0,0), float4x4(-0.048855412751436,0.129407286643982,-0.067721642553806,0.002857573563233,-0.071581542491913,-0.207695320248604,0.157255858182907,-0.081749990582466,-0.097103379666805,-0.500767648220062,-0.063251055777073,-0.016170050948858,0.030403118580580,0.243038415908813,-0.060979876667261,0.066934444010258));
res += mul(Get(s2,0,dy), float4x4(-0.109110794961452,-0.017194138839841,0.121558897197247,-0.070156201720238,0.037004716694355,-0.072356082499027,0.161307215690613,0.136276483535767,0.178097397089005,-0.065190851688385,0.052876926958561,-0.046688865870237,0.121247813105583,0.116717904806137,-0.026254428550601,0.007560447324067));
res += mul(Get(s2,dx,-dy), float4x4(0.032772917300463,0.137958079576492,0.146825015544891,0.237819045782089,0.042804501950741,0.036018069833517,-0.168614625930786,-0.014416243880987,0.229546621441841,0.304250776767731,-0.146561771631241,-0.109740123152733,0.176649495959282,0.085962079465389,-0.126147136092186,0.019377494230866));
res += mul(Get(s2,dx,0), float4x4(-0.056652989238501,-0.197210580110550,-0.068726398050785,0.207875743508339,0.048143412917852,0.109793752431870,0.149387925863266,-0.024267662316561,0.071367502212524,0.212689384818077,0.125629618763924,0.115458838641644,0.115353934466839,-0.080167680978775,0.002403837861493,0.186206728219986));
res += mul(Get(s2,dx,dy), float4x4(-0.272026777267456,0.046873211860657,-0.136803686618805,-0.106157541275024,0.107216440141201,-0.012123993597925,0.002920398488641,0.045660991221666,-0.061888694763184,-0.005274718627334,-0.073509491980076,-0.260289251804352,0.197144627571106,-0.053245820105076,0.044473346322775,-0.046135466545820));
res += mul(Get(s3,-dx,-dy), float4x4(-0.006700164638460,-0.026265569031239,-0.120342262089252,0.117073155939579,0.159662187099457,0.022368084639311,0.023825522512197,-0.005590158980340,-0.048097774386406,-0.177057504653931,-0.081309124827385,0.011031679809093,0.100906871259212,-0.294769316911697,0.059402752667665,0.060161419212818));
res += mul(Get(s3,-dx,0), float4x4(0.289291828870773,0.023580742999911,-0.007877028547227,0.112109400331974,0.029145134612918,-0.000916909601074,-0.030425868928432,0.095489867031574,-0.015861095860600,0.017797306180000,-0.007701428141445,-0.073773182928562,-0.003431359538808,0.143608957529068,-0.039662193506956,0.013507124967873));
res += mul(Get(s3,-dx,dy), float4x4(0.123951666057110,-0.146599426865578,-0.018145671114326,-0.080755144357681,0.092391625046730,-0.093598231673241,0.122886285185814,-0.110818549990654,0.020860806107521,-0.030305573716760,-0.144344002008438,0.056127473711967,0.051332071423531,0.098356254398823,0.020282784476876,-0.187432423233986));
res += mul(Get(s3,0,-dy), float4x4(-0.019440351054072,-0.009803289547563,-0.048811823129654,-0.018803710117936,-0.052764147520065,0.107994496822357,0.001663714530878,-0.171835392713547,-0.017917908728123,-0.130203589797020,-0.002276826649904,-0.018085356801748,0.045864176005125,0.078250974416733,0.010284837335348,0.106977634131908));
res += mul(Get(s3,0,0), float4x4(-0.021570293232799,-0.101202972233295,-0.052834387868643,0.012729027308524,0.086254686117172,0.042383588850498,0.034858614206314,0.156508982181549,0.102301090955734,0.093828067183495,0.048575382679701,-0.055482260882854,-0.289410918951035,0.148013979196548,-0.115992136299610,0.008554186671972));
res += mul(Get(s3,0,dy), float4x4(0.053380224853754,0.126799941062927,0.164713576436043,-0.016366653144360,-0.033132784068584,0.020763019099832,0.046015623956919,-0.115565039217472,-0.061888109892607,0.185452759265900,-0.146672323346138,-0.117823518812656,0.030503477901220,0.080239772796631,-0.104502730071545,0.057803321629763));
res += mul(Get(s3,dx,-dy), float4x4(-0.079285681247711,-0.030838852748275,0.012783711776137,-0.171917289495468,-0.043962527066469,0.140349268913269,-0.157242566347122,0.225847378373146,-0.290085077285767,-0.044163174927235,-0.055653482675552,-0.171052798628807,0.075167611241341,0.144170165061951,0.070094071328640,0.015332216396928));
res += mul(Get(s3,dx,0), float4x4(0.088461175560951,0.037629358470440,-0.085880018770695,-0.000822107424028,-0.284478366374969,0.106612809002399,0.122557707130909,-0.002375864423811,0.144282653927803,-0.119385465979576,0.010132263414562,0.013491057790816,0.070534750819206,0.181732311844826,-0.064917914569378,-0.070791691541672));
res += mul(Get(s3,dx,dy), float4x4(-0.094174571335316,0.022600561380386,-0.007175588048995,-0.095789976418018,0.140406563878059,-0.038802631199360,0.049043297767639,-0.037135783582926,0.045162793248892,0.244629934430122,-0.001729197800159,0.111919879913330,-0.133806437253952,0.105463795363903,0.194313451647758,0.069085873663425));
return max(float4(0,0,0,0), res);
}
