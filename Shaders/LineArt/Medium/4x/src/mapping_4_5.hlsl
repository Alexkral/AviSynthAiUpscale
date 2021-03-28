sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
sampler s4 : register(s4);
sampler s5 : register(s5);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.051796481013298,-0.048446219414473,-0.022679058834910,0.090161204338074);
res += mul(Get(s0,-dx,-dy), float4x4(-0.224626675248146,0.047780830413103,-0.105188980698586,-0.102769054472446,0.037329178303480,0.043155211955309,-0.083668291568756,-0.104491710662842,-0.004898805171251,0.214926436543465,-0.042344938963652,-0.005629108753055,0.206847637891769,-0.155572384595871,-0.131816610693932,-0.068321451544762));
res += mul(Get(s0,-dx,0), float4x4(-0.028740886598825,-0.292886853218079,-0.406679928302765,0.121211290359497,0.032720778137445,-0.383966237306595,-0.131996050477028,0.003993990831077,0.076614961028099,-0.013425960205495,-0.043693367391825,0.250541269779205,-0.091851517558098,-0.213841661810875,-0.309175610542297,-0.096786931157112));
res += mul(Get(s0,-dx,dy), float4x4(0.104607470333576,0.071009896695614,-0.144655764102936,-0.033652476966381,-0.123555168509483,0.027167484164238,-0.104260869324207,-0.033951185643673,0.034151829779148,-0.057767234742641,-0.004197367001325,-0.044567029923201,-0.103341713547707,0.039424847811460,0.137667521834373,0.127047061920166));
res += mul(Get(s0,0,-dy), float4x4(0.037620965391397,-0.119042553007603,0.067592583596706,-0.259224981069565,-0.071933843195438,-0.002687674481422,0.220248937606812,-0.073958083987236,0.193078204989433,-0.370215028524399,-0.006733019370586,-0.304889231920242,-0.146735534071922,0.016910716891289,0.063486054539680,0.208255782723427));
res += mul(Get(s0,0,0), float4x4(-0.298621386289597,-0.009629895910621,0.147225707769394,-0.171925649046898,-0.208363488316536,0.124946594238281,0.186990752816200,0.044516000896692,-0.379063487052917,-0.484849929809570,-0.251551419496536,-0.774783551692963,-0.148657679557800,-0.003933412488550,-0.487265437841415,-0.005134438630193));
res += mul(Get(s0,0,dy), float4x4(-0.202630639076233,0.282284915447235,0.027008887380362,0.251435995101929,0.205230012536049,0.131976321339607,0.208060577511787,-0.074203252792358,-0.059038285166025,0.118059292435646,-0.037589598447084,0.051486141979694,0.166834026575089,-0.416960835456848,-0.156992390751839,-0.323097735643387));
res += mul(Get(s0,dx,-dy), float4x4(0.175649195909500,0.188392534852028,0.060578934848309,0.079854406416416,0.031530033797026,-0.019543241709471,-0.155634611845016,0.020771104842424,0.113842412829399,-0.015351129695773,0.052236683666706,-0.081623710691929,-0.083749189972878,-0.116073340177536,-0.024769974872470,-0.089959211647511));
res += mul(Get(s0,dx,0), float4x4(0.075819022953510,-0.017884878441691,-0.089383080601692,0.007440594024956,-0.072939485311508,-0.003815685864538,-0.146848991513252,-0.020507011562586,-0.224570363759995,-0.012044169940054,0.013171860016882,0.000765896635130,-0.130897447466850,0.061447672545910,0.175570458173752,0.091799572110176));
res += mul(Get(s0,dx,dy), float4x4(-0.031282406300306,-0.214218601584435,0.010521367192268,-0.090387053787708,-0.031479921191931,0.007295534014702,-0.123022414743900,0.028724336996675,0.026184316724539,-0.050828218460083,-0.018140951171517,0.029963675886393,-0.234691783785820,0.194930344820023,-0.033496186137199,0.099830582737923));
res += mul(Get(s1,-dx,-dy), float4x4(0.012714008800685,-0.277922481298447,-0.365073919296265,-0.010603660717607,0.050330471247435,0.080999292433262,0.066341213881969,0.022702097892761,-0.029851434752345,-0.106091141700745,0.116927973926067,-0.010821439325809,0.085714668035507,-0.203809365630150,0.253124564886093,-0.013081872835755));
res += mul(Get(s1,-dx,0), float4x4(-0.009201023727655,0.092412866652012,-0.054391339421272,-0.133237078785896,-0.041129142045975,-0.124792560935020,-0.113939367234707,0.014213345013559,0.082563050091267,-0.356234848499298,-0.096684455871582,-0.490596562623978,0.053728349506855,-0.116320490837097,0.062993086874485,0.000788875622675));
res += mul(Get(s1,-dx,dy), float4x4(0.047581113874912,-0.000320776103763,0.069881401956081,0.076476454734802,0.031961299479008,-0.002964130369946,-0.278565913438797,-0.056531962007284,-0.073049828410149,-0.281377583742142,0.025488706305623,0.208837464451790,-0.034294366836548,-0.158316850662231,-0.103021971881390,0.110881291329861));
res += mul(Get(s1,0,-dy), float4x4(-0.347683727741241,-0.194104760885239,-0.061156548559666,-0.130445465445518,-0.034623064100742,0.139615848660469,-0.206511288881302,-0.062640115618706,0.061993632465601,-0.240081205964088,-0.006388966459781,0.064571365714073,-0.190396264195442,-0.063035629689693,-0.225314170122147,-0.352852612733841));
res += mul(Get(s1,0,0), float4x4(0.040309626609087,-0.348958969116211,0.113478876650333,0.002558239735663,0.072167925536633,-0.119256794452667,-0.236375316977501,-0.095446206629276,-0.266492903232574,-0.164853438735008,0.113394983112812,-0.047367203980684,0.000916616234463,-0.292066514492035,0.021373877301812,-0.176817521452904));
res += mul(Get(s1,0,dy), float4x4(-0.221131071448326,0.066621080040932,-0.039053075015545,0.098971366882324,-0.229777827858925,0.141498878598213,-0.052515428513288,0.173865467309952,-0.273498594760895,0.064196527004242,0.150642275810242,-0.023877253755927,-0.338974893093109,-0.087833136320114,0.173474907875061,-0.110103175044060));
res += mul(Get(s1,dx,-dy), float4x4(-0.026470515877008,-0.045436285436153,-0.081355847418308,-0.039658501744270,-0.070073522627354,-0.083932414650917,0.005846081767231,-0.039639875292778,-0.055892493575811,-0.115121752023697,-0.005427088588476,-0.019771093502641,-0.127583444118500,-0.046858403831720,0.204747930169106,-0.008773011155427));
res += mul(Get(s1,dx,0), float4x4(-0.082801468670368,0.091972559690475,-0.182335078716278,-0.041203860193491,-0.024770010262728,0.014105354435742,0.081062212586403,0.030433921143413,-0.145778149366379,0.014287638477981,-0.013076286762953,0.183985039591789,-0.192464247345924,0.064498946070671,0.005982553120703,-0.156984120607376));
res += mul(Get(s1,dx,dy), float4x4(-0.034986115992069,0.039875499904156,-0.113602057099342,0.011507598683238,0.139280825853348,-0.034248191863298,0.039674196392298,0.010438020341098,-0.095804519951344,0.122795753180981,-0.016622574999928,0.034172359853983,-0.050530061125755,-0.038290906697512,-0.010863294824958,0.001895166467875));
res += mul(Get(s2,-dx,-dy), float4x4(0.002536491956562,-0.021635679528117,-0.053497053682804,0.031408198177814,-0.043769493699074,-0.253680944442749,-0.015300601720810,0.133597701787949,0.073066264390945,-0.122655265033245,0.004639573395252,-0.024350373074412,0.028948698192835,-0.196237862110138,0.131853491067886,0.134491652250290));
res += mul(Get(s2,-dx,0), float4x4(-0.009850356727839,-0.156069979071617,-0.095868594944477,0.055875625461340,-0.105901971459389,-0.131328865885735,-0.398700833320618,0.060832668095827,-0.248670399188995,0.035085014998913,0.057068098336458,0.070098347961903,0.002102715196088,0.062084656208754,0.120925620198250,-0.174695774912834));
res += mul(Get(s2,-dx,dy), float4x4(0.015583817847073,-0.018040930852294,-0.003464769572020,0.025343583896756,-0.068425349891186,0.003709224518389,-0.139297723770142,-0.074447251856327,0.163328453898430,-0.128965795040131,0.017255334183574,-0.074834570288658,-0.122880771756172,-0.299043059349060,0.029402134940028,-0.053791955113411));
res += mul(Get(s2,0,-dy), float4x4(-0.042763929814100,-0.033952753990889,-0.139770224690437,0.111177034676075,0.032763071358204,0.016844185069203,0.008239151909947,0.211416244506836,0.206290006637573,-0.014638018794358,-0.014572078362107,0.121771104633808,-0.235009446740150,0.289530038833618,-0.050140064209700,0.098934717476368));
res += mul(Get(s2,0,0), float4x4(0.045579660683870,0.190324425697327,-0.004673546180129,0.498569160699844,0.128127187490463,-0.223814353346825,0.012015485204756,-0.317033976316452,-0.138245731592178,0.234852150082588,-0.238097295165062,-0.158153727650642,0.426460564136505,-0.613749742507935,-0.100443229079247,-0.191404581069946));
res += mul(Get(s2,0,dy), float4x4(0.243972927331924,-0.156401023268700,0.135262876749039,-0.084298454225063,-0.242866098880768,0.013642143458128,-0.020711742341518,0.056641791015863,-0.022023459896445,-0.032464053481817,-0.126944258809090,0.065073207020760,-0.138274148106575,0.093615151941776,0.018372921273112,0.001847335137427));
res += mul(Get(s2,dx,-dy), float4x4(-0.085384085774422,-0.012806667946279,0.028014730662107,0.055070959031582,-0.057284969836473,0.039828680455685,0.006972985807806,0.055075101554394,-0.080762498080730,0.063365809619427,-0.010840769857168,-0.070419088006020,-0.102406956255436,0.093049876391888,-0.034062337130308,-0.027404464781284));
res += mul(Get(s2,dx,0), float4x4(-0.194720461964607,0.002384035848081,-0.052185114473104,0.081575915217400,-0.197025895118713,0.047158457338810,-0.012015691027045,0.171760082244873,0.207445487380028,-0.064597718417645,0.354509413242340,0.023782769218087,-0.195218935608864,-0.012193175032735,0.005100965965539,0.082028105854988));
res += mul(Get(s2,dx,dy), float4x4(-0.111420728266239,0.048887174576521,-0.030458277091384,-0.072319820523262,0.112049117684364,-0.089946843683720,-0.035443242639303,0.084849059581757,-0.088510632514954,0.139864966273308,0.029764184728265,0.028348324820399,0.051718879491091,-0.007776535581797,0.021916957572103,-0.039055462926626));
res += mul(Get(s3,-dx,-dy), float4x4(0.057436052709818,-0.073258951306343,0.098707221448421,0.062612555921078,0.021294826641679,-0.204953148961067,0.085685476660728,-0.103168793022633,-0.029341017827392,0.015422001481056,0.083352647721767,-0.133222311735153,-0.114436529576778,0.052232362329960,-0.031129494309425,0.048888489603996));
res += mul(Get(s3,-dx,0), float4x4(-0.087963223457336,0.147079408168793,0.229526609182358,-0.079720407724380,-0.044856067746878,0.428403139114380,0.297272175550461,-0.241616129875183,-0.013460137881339,0.414168655872345,0.024254266172647,-0.050663847476244,0.046917133033276,0.059455417096615,-0.048256829380989,0.077346496284008));
res += mul(Get(s3,-dx,dy), float4x4(-0.070423372089863,-0.184859290719032,0.128605961799622,0.029968608170748,0.004503506235778,0.007418005727232,0.052443362772465,-0.021631943061948,0.101541519165039,-0.148374199867249,-0.087897039949894,-0.056259188801050,0.204273760318756,-0.274627417325974,0.020336272194982,0.046661715954542));
res += mul(Get(s3,0,-dy), float4x4(-0.053723622113466,-0.023832855746150,0.097931459546089,-0.139410644769669,-0.124970003962517,0.185212522745132,0.020612284541130,0.019885864108801,0.034773841500282,0.031400877982378,0.053490687161684,-0.213477835059166,-0.136862263083458,-0.133748158812523,-0.092624492943287,-0.042858481407166));
res += mul(Get(s3,0,0), float4x4(0.096408531069756,-0.272815674543381,0.122240766882896,0.272328823804855,0.307979345321655,-0.174753129482269,0.078508995473385,-0.499834507703781,0.331503272056580,-0.084234483540058,0.478330969810486,-0.102577313780785,-0.180958434939384,0.112918235361576,-0.057504653930664,0.160814404487610));
res += mul(Get(s3,0,dy), float4x4(-0.104552030563354,0.036360647529364,0.135993987321854,-0.016821801662445,-0.174815595149994,0.112836763262749,-0.125151947140694,-0.001449538278393,-0.352459549903870,0.102935351431370,0.021246196702123,0.045087367296219,-0.115705877542496,-0.256804078817368,-0.265225410461426,-0.084877617657185));
res += mul(Get(s3,dx,-dy), float4x4(0.015571890398860,-0.002371879061684,0.047490783035755,0.091638050973415,0.018322428688407,0.095715448260307,0.029050586745143,-0.055540505796671,0.061113215982914,0.108103603124619,-0.045889493077993,0.033641118556261,0.203284308314323,-0.062339164316654,0.139184430241585,0.075130790472031));
res += mul(Get(s3,dx,0), float4x4(-0.172264888882637,-0.271940112113953,-0.089396588504314,0.056219685822725,-0.142419397830963,0.019457768648863,-0.016524234786630,0.006388268899173,0.042963273823261,0.031557470560074,-0.188665315508842,-0.047017201781273,0.117368564009666,-0.058063823729753,0.175780370831490,0.195861905813217));
res += mul(Get(s3,dx,dy), float4x4(-0.116349682211876,0.035338200628757,0.107464015483856,0.003697237931192,0.201294198632240,0.022813424468040,0.156130656599998,-0.076116479933262,0.134210348129272,-0.025419300422072,-0.069050952792168,-0.037916883826256,-0.060594242066145,0.125221922993660,0.189562559127808,-0.092738501727581));
res += mul(Get(s4,-dx,-dy), float4x4(-0.062442746013403,0.005879888311028,0.012645808048546,0.133635759353638,0.106979213654995,-0.192483320832253,0.136473596096039,-0.134096577763557,0.117377810180187,0.024826288223267,0.056874386966228,0.021196374669671,0.035249225795269,0.070595100522041,-0.040486551821232,-0.010551966726780));
res += mul(Get(s4,-dx,0), float4x4(0.025479622185230,0.112871967256069,-0.185937464237213,0.318615645170212,0.023933013901114,-0.315379053354263,-0.150053113698959,0.004677304998040,-0.072443947196007,-0.033144343644381,0.093642726540565,-0.129661649465561,0.076301313936710,-0.068518817424774,-0.196170300245285,-0.015953393653035));
res += mul(Get(s4,-dx,dy), float4x4(0.001925248885527,-0.053435109555721,-0.053079158067703,0.025039544329047,0.163603171706200,-0.080323524773121,-0.072174474596977,-0.029868885874748,-0.068635009229183,0.060471937060356,0.074566982686520,0.091129094362259,-0.067688412964344,0.024551302194595,-0.133485540747643,0.034279022365808));
res += mul(Get(s4,0,-dy), float4x4(0.132755622267723,0.053619980812073,-0.111713603138924,0.317775428295135,0.122553937137127,0.089191906154156,0.033626150339842,-0.007941030897200,0.220207154750824,-0.169058710336685,0.036191981285810,-0.148335561156273,0.048016477376223,0.265508919954300,-0.130862459540367,0.017808914184570));
res += mul(Get(s4,0,0), float4x4(-0.334437072277069,-0.045797180384398,-0.179287925362587,0.119312472641468,-0.371978551149368,-0.165612652897835,-0.030010038986802,-0.361454784870148,-0.223638579249382,-0.044731356203556,0.351144671440125,0.285115838050842,0.051335308700800,-0.283186465501785,0.042486716061831,-0.184562668204308));
res += mul(Get(s4,0,dy), float4x4(0.154138430953026,0.111590631306171,-0.004233184270561,0.023323995992541,-0.184675723314285,0.010566499084234,0.178008243441582,0.081128865480423,-0.033006947487593,-0.192930325865746,0.111860260367393,0.121821910142899,-0.257063150405884,-0.022894870489836,0.096822030842304,0.011734149418771));
res += mul(Get(s4,dx,-dy), float4x4(0.103611133992672,-0.049906302243471,0.040879447013140,0.073562026023865,-0.016187969595194,-0.005825217813253,-0.051015440374613,-0.123867601156235,0.104967728257179,0.069360814988613,-0.063988752663136,0.006551290396601,0.014997391961515,-0.001353627769276,0.039228722453117,0.150468885898590));
res += mul(Get(s4,dx,0), float4x4(0.041152112185955,0.066544294357300,0.062827892601490,0.189334154129028,0.070826366543770,-0.123050890862942,0.209245935082436,-0.060827329754829,-0.122740410268307,-0.005804393440485,-0.224949672818184,0.043427005410194,-0.121342755854130,0.048346262425184,-0.173747122287750,-0.006995043251663));
res += mul(Get(s4,dx,dy), float4x4(0.050390563905239,0.075161226093769,-0.059793412685394,0.119206756353378,-0.012003652751446,0.151196911931038,0.164892852306366,0.013063040561974,0.018748542293906,-0.033857297152281,-0.168554946780205,0.038459666073322,0.166670754551888,0.025884514674544,-0.078545294702053,-0.059422440826893));
res += mul(Get(s5,-dx,-dy), float4x4(-0.070327170193195,-0.008848305791616,0.032857365906239,0.094302348792553,0.010622687637806,-0.025339836254716,0.016845909878612,-0.016731915995479,0.073052212595940,-0.056847929954529,0.027613971382380,0.074203699827194,0.021364508196712,0.030507899820805,-0.020158052444458,-0.001916416804306));
res += mul(Get(s5,-dx,0), float4x4(0.006700028665364,0.305308610200882,0.204604730010033,0.038832280784845,-0.076700598001480,-0.204355761408806,0.460884302854538,-0.003498742822558,0.005763863679022,0.355349838733673,0.078309372067451,-0.188540339469910,0.041583016514778,-0.095888100564480,-0.396463662385941,-0.027938138693571));
res += mul(Get(s5,-dx,dy), float4x4(0.086434267461300,0.007750342134386,0.034106303006411,0.016969295218587,-0.074148826301098,0.030409401282668,0.143925398588181,-0.078394986689091,0.151256397366524,0.301550209522247,0.019878556951880,0.072769299149513,-0.086325697600842,0.163080126047134,0.052376274019480,-0.082709349691868));
res += mul(Get(s5,0,-dy), float4x4(0.020235290750861,0.144057452678680,-0.275873184204102,0.087107881903648,-0.203255638480186,0.129222735762596,-0.276764839887619,0.092710904777050,0.052759546786547,0.174266993999481,-0.005150089506060,0.134799271821976,0.090737283229828,-0.057555329054594,0.031808793544769,-0.209017693996429));
res += mul(Get(s5,0,0), float4x4(-0.180288076400757,-0.019103970378637,-0.359304428100586,0.426983267068863,-0.004363764543086,-0.215483278036118,-0.293305307626724,0.127712488174438,0.479230970144272,0.153614178299904,-0.206493705511093,-0.062155734747648,-0.624002754688263,-0.177862569689751,0.370968908071518,-0.067157849669456));
res += mul(Get(s5,0,dy), float4x4(0.239293381571770,-0.102667182683945,0.024145023897290,-0.099597461521626,-0.182834163308144,-0.091455124318600,-0.080409057438374,0.049378667026758,0.264683246612549,-0.093182042241096,-0.155878469347954,-0.014023372903466,-0.036045216023922,-0.081231884658337,-0.042253639549017,-0.011689355596900));
res += mul(Get(s5,dx,-dy), float4x4(0.046304147690535,0.003666865872219,0.107659056782722,0.041485942900181,-0.129524856805801,-0.191428333520889,0.025876814499497,-0.098603345453739,0.084934860467911,0.053605940192938,0.022064566612244,0.046940177679062,0.021105149760842,0.060668792575598,0.015511595644057,0.044903006404638));
res += mul(Get(s5,dx,0), float4x4(0.193975508213043,-0.099967487156391,0.105808064341545,0.104092374444008,-0.101124010980129,-0.019714368507266,0.115166664123535,0.060397997498512,0.270413786172867,0.127193287014961,0.051134552806616,0.000104500068119,-0.028802437707782,0.023142842575908,-0.115569874644279,0.011314530856907));
res += mul(Get(s5,dx,dy), float4x4(-0.214753419160843,0.091270633041859,0.098737597465515,-0.007620763499290,-0.046192079782486,0.020157482475042,0.051778379827738,-0.037813898175955,0.032185439020395,-0.003413249738514,0.016257565468550,-0.022499023005366,0.072843737900257,-0.016555577516556,0.028523733839393,-0.063287071883678));
res = max(float4(0, 0, 0, 0), res) + float4(-0.019627239555120,0.006098271347582,0.027015538886189,0.023875176906586) * min(float4(0, 0, 0, 0), res);
return res;
}