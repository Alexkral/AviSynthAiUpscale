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
float4 res = float4(-0.121763586997986,0.095122069120407,0.557818531990051,0.151024177670479);
res += mul(Get(s0,-dx,-dy), float4x4(-0.014304907992482,-0.306386172771454,-0.078378386795521,0.049484495073557,0.027865385636687,-0.099725842475891,0.017459960654378,0.057708479464054,0.028804954141378,0.060058724135160,0.005936551373452,-0.121581561863422,-0.017934294417500,-0.192909359931946,0.046674493700266,-0.160575434565544));
res += mul(Get(s0,-dx,0), float4x4(-0.018925242125988,-0.092435143887997,-0.152070865035057,-0.039224386215210,0.007774480152875,-0.011763090267777,-0.127821534872055,0.095370359718800,-0.044799439609051,-0.118339829146862,-0.130802571773529,-0.330720305442810,-0.031841363757849,-0.049090743064880,0.055468741804361,0.079661972820759));
res += mul(Get(s0,-dx,dy), float4x4(0.035776522010565,-0.133317977190018,-0.257416665554047,-0.400311231613159,-0.140931606292725,0.083560042083263,-0.011591475456953,0.040481131523848,-0.034841731190681,-0.268193006515503,-0.225330471992493,-0.613936126232147,-0.179754734039307,-0.023030329495668,0.029748238623142,0.323087215423584));
res += mul(Get(s0,0,-dy), float4x4(-0.345979720354080,-0.133390098810196,-0.201519951224327,0.093064531683922,0.089579708874226,-0.232460513710976,0.062134470790625,-0.085469633340836,-0.036453206092119,-0.170433074235916,-0.095987640321255,-0.115512959659100,-0.094251796603203,0.273570895195007,0.045222733169794,-0.040810201317072));
res += mul(Get(s0,0,0), float4x4(0.138139814138412,-0.128809109330177,-0.168258517980576,-0.450143396854401,-0.311421692371368,0.220449537038803,0.002753633074462,-0.183346673846245,-0.164100334048271,-0.147558480501175,-0.381124883890152,-0.235417068004608,-0.115701749920845,0.080824092030525,-0.322489172220230,0.012551359832287));
res += mul(Get(s0,0,dy), float4x4(-0.029106285423040,-0.122921846807003,-0.028292393311858,-0.024151802062988,-0.015910612419248,-0.051271595060825,0.004533925559372,0.006933316588402,0.044609200209379,-0.675578236579895,-0.528996050357819,-0.001009936910123,0.146279782056808,0.046706359833479,-0.099029794335365,-0.071879312396049));
res += mul(Get(s0,dx,-dy), float4x4(-0.215629458427429,-0.073655888438225,-0.192423522472382,0.108105756342411,-0.001720720320009,-0.020436072722077,0.201005578041077,0.020034987479448,0.009461402893066,0.049225039780140,-0.050021212548018,0.079233899712563,-0.201076671481133,0.126210138201714,0.063313759863377,-0.029202351346612));
res += mul(Get(s0,dx,0), float4x4(0.038728360086679,0.056137178093195,0.024220101535320,0.106407746672630,-0.074915766716003,-0.076262481510639,-0.052607823163271,-0.013967284001410,-0.143924310803413,0.045687407255173,-0.073769979178905,0.006339625455439,0.058310981839895,-0.214884847402573,-0.153311386704445,0.020320860669017));
res += mul(Get(s0,dx,dy), float4x4(0.034733977168798,0.023868108168244,0.111893810331821,0.059485938400030,0.156994298100471,0.006063258741051,-0.082659788429737,0.133634328842163,0.095881767570972,-0.083635702729225,-0.105115212500095,0.230416566133499,-0.105848282575607,0.028001107275486,0.034798536449671,-0.179246425628662));
res += mul(Get(s1,-dx,-dy), float4x4(-0.118029229342937,-0.038297343999147,-0.175157144665718,-0.197665899991989,-0.059458523988724,0.170337259769440,0.081966035068035,-0.286457240581512,0.057665869593620,0.111114166676998,0.125166490674019,0.179866790771484,0.068788908421993,0.075461588799953,-0.030035233125091,0.118699476122856));
res += mul(Get(s1,-dx,0), float4x4(-0.092625834047794,0.022448904812336,-0.214706182479858,-0.227755159139633,-0.112723641097546,0.082949511706829,0.114442221820354,0.073164045810699,-0.169348150491714,-0.072431623935699,-0.038094181567430,-0.075682155787945,-0.011493301950395,-0.198123171925545,0.268157333135605,0.036392062902451));
res += mul(Get(s1,-dx,dy), float4x4(-0.021807193756104,0.039394322782755,0.018044319003820,0.120907217264175,-0.105544663965702,-0.053115990012884,-0.181567683815956,0.250088691711426,0.045252043753862,0.045886192470789,0.095891371369362,-0.140533059835434,-0.028495131060481,-0.016131900250912,0.164701417088509,-0.180446997284889));
res += mul(Get(s1,0,-dy), float4x4(0.187981531023979,0.162255883216858,-0.179507777094841,-0.122645795345306,-0.095330253243446,0.189022749662399,-0.025101071223617,0.046123668551445,0.023737810552120,-0.207161277532578,0.118404015898705,0.070339396595955,-0.245389074087143,0.017413377761841,-0.002508461708203,0.099345229566097));
res += mul(Get(s1,0,0), float4x4(0.040351063013077,-0.064964152872562,-0.223956793546677,-0.121861755847931,-0.206893384456635,-0.212955623865128,-0.233514204621315,0.444997251033783,0.177921816706657,-0.017223766073585,-0.324452012777328,-0.056598037481308,-0.118011258542538,0.047588981688023,-0.165408939123154,-0.435587555170059));
res += mul(Get(s1,0,dy), float4x4(0.093298770487309,0.032074458897114,0.001579837175086,0.058993596583605,0.008942455984652,0.176018506288528,0.287648499011993,0.050353005528450,0.052826635539532,0.004411772359163,-0.109123706817627,-0.048441883176565,0.131703838706017,-0.067855916917324,-0.102590970695019,0.033590488135815));
res += mul(Get(s1,dx,-dy), float4x4(0.004255771636963,0.154560118913651,-0.143998175859451,-0.143375724554062,0.052832085639238,0.021294066682458,-0.048361074179411,0.030663732439280,-0.042125318199396,-0.123462304472923,0.047818131744862,0.164077088236809,0.113922670483589,-0.066851548850536,0.011629493907094,0.013102066703141));
res += mul(Get(s1,dx,0), float4x4(-0.027673333883286,0.090393595397472,-0.226850092411041,0.036363150924444,0.155504778027534,0.139418765902519,-0.096632279455662,-0.164621591567993,-0.095564335584641,-0.071412406861782,-0.000887383706868,-0.026263641193509,0.154804974794388,-0.174787551164627,0.074182495474815,-0.068704992532730));
res += mul(Get(s1,dx,dy), float4x4(-0.072836555540562,0.068416886031628,0.019006283953786,0.054129559546709,0.170820206403732,0.227783367037773,0.213075667619705,0.107378840446472,0.125774264335632,0.049059227108955,0.131054520606995,-0.309870451688766,-0.067005112767220,-0.035900965332985,-0.060026682913303,-0.184925511479378));
res += mul(Get(s2,-dx,-dy), float4x4(0.068419151008129,-0.009039031341672,-0.036481603980064,-0.177442356944084,-0.158967629075050,0.007692704442888,-0.072529233992100,0.307514846324921,0.051159691065550,-0.044499345123768,0.054583519697189,-0.011205188930035,0.091439664363861,-0.105074271559715,0.057282477617264,-0.085034228861332));
res += mul(Get(s2,-dx,0), float4x4(0.021314959973097,-0.091568015515804,-0.063094340264797,-0.051598303020000,0.204627037048340,0.229176953434944,-0.134772419929504,-0.041035413742065,0.055680740624666,0.018301844596863,-0.061057515442371,-0.051395002752542,0.125988781452179,-0.083724714815617,0.150088399648666,-0.017753465101123));
res += mul(Get(s2,-dx,dy), float4x4(0.088028810918331,-0.044413581490517,-0.123713068664074,0.073073171079159,-0.086567535996437,0.022791031748056,-0.103132806718349,-0.260195195674896,0.005857217591256,0.103678643703461,-0.020678611472249,-0.303258866071701,-0.052755605429411,-0.131055980920792,-0.016363263130188,0.110258199274540));
res += mul(Get(s2,0,-dy), float4x4(0.056699004024267,0.029487624764442,0.017697203904390,-0.084490373730659,0.196676373481750,-0.144276857376099,-0.143566519021988,0.001578116440214,0.035556100308895,0.169187411665916,-0.066502913832664,0.155284255743027,-0.009404163807631,-0.245243087410927,-0.003896648995578,0.000615048338659));
res += mul(Get(s2,0,0), float4x4(0.061119340360165,0.190765157341957,-0.446125864982605,0.095155358314514,0.487685978412628,0.080629087984562,0.219063580036163,-0.061867017298937,-0.034148234874010,0.027533307671547,-0.093510583043098,0.204253569245338,0.120934359729290,-0.228484898805618,-0.192645981907845,-0.069673106074333));
res += mul(Get(s2,0,dy), float4x4(0.020247185602784,0.054471474140882,-0.015525679104030,0.182010293006897,-0.054379411041737,0.080184549093246,0.046338152140379,-0.006703316234052,0.187452927231789,-0.001399714732543,0.143643885850906,0.012810884974897,-0.323473155498505,-0.126356273889542,-0.063931435346603,-0.112542986869812));
res += mul(Get(s2,dx,-dy), float4x4(-0.038056973367929,-0.041546486318111,-0.036866780370474,-0.002036188030615,-0.051973961293697,0.151968568563461,-0.180246993899345,-0.008602421730757,0.019545666873455,0.004137600772083,-0.032452274113894,0.099989540874958,-0.004479510709643,0.068614616990089,-0.263191133737564,-0.054243039339781));
res += mul(Get(s2,dx,0), float4x4(0.069882303476334,-0.048422336578369,-0.146878898143768,-0.120354793965816,0.115205243229866,0.153617441654205,0.237048298120499,-0.142357379198074,0.023431735113263,0.014875590801239,-0.049924854189157,0.103068567812443,0.070496641099453,-0.005827489309013,-0.002787996781990,-0.006736129987985));
res += mul(Get(s2,dx,dy), float4x4(-0.017114009708166,-0.126741781830788,-0.126803964376450,0.097734533250332,-0.219667702913284,0.164258047938347,0.068603128194809,-0.208992093801498,0.051704343408346,0.070798411965370,0.112595736980438,0.056170854717493,-0.203868463635445,0.014590813778341,0.063872247934341,0.213858827948570));
res += mul(Get(s3,-dx,-dy), float4x4(0.191058054566383,0.019654089584947,-0.050810199230909,-0.124200001358986,-0.088055446743965,-0.084444180130959,0.002210844540969,-0.255697309970856,-0.036087289452553,0.143294408917427,0.138928323984146,0.044493146240711,-0.029862174764276,-0.212187647819519,0.191765293478966,-0.064337901771069));
res += mul(Get(s3,-dx,0), float4x4(0.213032990694046,0.010867782868445,-0.121198952198029,0.009446404874325,0.177115887403488,0.058192078024149,-0.116185747087002,-0.137760266661644,-0.268728554248810,-0.177020967006683,0.001268049585633,-0.380289942026138,-0.050986554473639,0.026646662503481,-0.128919020295143,0.208931058645248));
res += mul(Get(s3,-dx,dy), float4x4(0.041015744209290,0.171413168311119,0.213067501783371,0.090598307549953,0.028085602447391,0.048052605241537,0.051627729088068,-0.045542914420366,0.030414240434766,-0.117738559842110,-0.084196530282497,-0.240423858165741,0.176851466298103,-0.094640225172043,-0.035386689007282,-0.115159645676613));
res += mul(Get(s3,0,-dy), float4x4(0.166150465607643,0.112566165626049,-0.300781726837158,-0.090026482939720,-0.249123156070709,-0.124801658093929,-0.063900679349899,0.046757288277149,-0.138734772801399,0.172979325056076,0.138348206877708,0.084268867969513,-0.155622348189354,-0.068336993455887,-0.117744281888008,-0.062965348362923));
res += mul(Get(s3,0,0), float4x4(-0.201813817024231,-0.153629571199417,0.005080922972411,0.042159147560596,-0.057982105761766,0.019882893189788,-0.161402270197868,-0.443812549114227,-0.432371467351913,-0.452010095119476,-0.147971332073212,0.179437503218651,0.036927979439497,-0.088399663567543,0.073750019073486,-0.180171951651573));
res += mul(Get(s3,0,dy), float4x4(0.101031452417374,0.038016363978386,0.025567429140210,0.172082245349884,0.050126750022173,-0.113343186676502,-0.114428304135799,0.234317705035210,-0.142116501927376,-0.244691669940948,-0.075854770839214,0.373385041952133,-0.015115384012461,-0.282912850379944,-0.074720807373524,-0.165119603276253));
res += mul(Get(s3,dx,-dy), float4x4(0.246972367167473,-0.021145867183805,-0.095550633966923,0.091846249997616,0.238852187991142,0.057125031948090,-0.006434932816774,-0.041991505771875,0.011634239926934,0.047548066824675,-0.108497574925423,0.021111702546477,-0.040288366377354,-0.100605897605419,0.173756763339043,-0.026305612176657));
res += mul(Get(s3,dx,0), float4x4(-0.020079292356968,0.079165168106556,0.223817303776741,-0.306897073984146,-0.133763089776039,0.096584051847458,-0.046676594763994,0.160354673862457,-0.204980626702309,0.194442033767700,-0.085810676217079,-0.165624991059303,0.297413855791092,-0.171787753701210,-0.059838239103556,-0.172768667340279));
res += mul(Get(s3,dx,dy), float4x4(0.033493459224701,-0.017175195738673,0.157086208462715,-0.238626405596733,0.132050976157188,-0.053639546036720,0.032018918544054,0.171383127570152,0.142837330698967,0.054666742682457,-0.011660007759929,-0.190418779850006,0.104689836502075,-0.188885316252708,-0.014095172286034,-0.144689038395882));
res += mul(Get(s4,-dx,-dy), float4x4(-0.143956765532494,0.047561474144459,-0.042009662836790,-0.051534391939640,0.223165348172188,0.023750269785523,-0.167226850986481,-0.013796896673739,0.162548542022705,-0.176008418202400,-0.032115101814270,-0.286837309598923,0.102885037660599,0.087729007005692,-0.055891621857882,0.088901445269585));
res += mul(Get(s4,-dx,0), float4x4(0.109783828258514,-0.093614503741264,-0.273897737264633,-0.177498772740364,-0.012733626179397,0.045187499374151,0.131301641464233,0.151875823736191,0.091182433068752,-0.107226379215717,0.031609781086445,-0.219196528196335,-0.127285748720169,0.067288286983967,-0.049251962453127,0.066686816513538));
res += mul(Get(s4,-dx,dy), float4x4(0.065093234181404,0.111948788166046,0.180012851953506,-0.225061058998108,-0.040514167398214,0.083892285823822,-0.046033058315516,-0.097096830606461,-0.076888546347618,0.035690233111382,0.077247880399227,-0.059229627251625,-0.074601978063583,0.034474626183510,-0.138205915689468,-0.219112113118172));
res += mul(Get(s4,0,-dy), float4x4(-0.166404321789742,0.107822991907597,0.106114968657494,-0.047405336052179,0.016990773379803,0.127438604831696,0.054881073534489,0.022885557264090,-0.175200685858727,-0.156460836529732,-0.167010322213173,-0.293566435575485,0.007378720678389,0.049839857965708,0.034954007714987,0.070572085678577));
res += mul(Get(s4,0,0), float4x4(0.102455742657185,-0.142006203532219,0.237213760614395,-0.105524666607380,0.089053682982922,0.132993057370186,-0.141000404953957,-0.273757219314575,0.021620562300086,-0.074501752853394,0.090625800192356,0.092661462724209,0.000723230768926,0.208775997161865,-0.067761734127998,0.122431725263596));
res += mul(Get(s4,0,dy), float4x4(0.196554273366928,0.080435298383236,0.238689035177231,-0.075755573809147,-0.144100204110146,0.097779102623463,-0.044849812984467,-0.415627181529999,-0.071618460118771,0.123897120356560,0.031127989292145,0.011154484003782,0.130626767873764,0.047445900738239,0.205891296267509,0.521343111991882));
res += mul(Get(s4,dx,-dy), float4x4(-0.100376486778259,-0.022569334134459,-0.028858816251159,0.301978707313538,0.144637286663055,-0.113088153302670,0.050546750426292,0.182236865162849,0.006277271546423,0.003338370705023,-0.022688588127494,-0.141658395528793,0.102941200137138,-0.076198875904083,0.114258505403996,-0.142463535070419));
res += mul(Get(s4,dx,0), float4x4(0.176104649901390,-0.194327369332314,0.030745295807719,0.145082905888557,-0.127329990267754,0.200228944420815,-0.095029376447201,0.072453916072845,0.286485493183136,-0.128063097596169,0.106970988214016,-0.177942767739296,0.050598893314600,0.070645704865456,-0.071974486112595,0.056337352842093));
res += mul(Get(s4,dx,dy), float4x4(0.097921945154667,-0.067214429378510,-0.041870575398207,-0.176110580563545,-0.021181177347898,0.023914355784655,-0.168083742260933,0.126119703054428,-0.032391659915447,0.012443847954273,0.116790607571602,0.012591449543834,0.037540607154369,0.023154459893703,-0.008618548512459,-0.206094995141029));
res += mul(Get(s5,-dx,-dy), float4x4(-0.064304582774639,-0.062285330146551,0.122395820915699,-0.042534355074167,-0.001086506526917,0.062851354479790,0.028042022138834,-0.116616733372211,0.081632710993290,-0.098061025142670,-0.051374670118093,-0.119688533246517,0.115579910576344,-0.033019691705704,0.022000046446919,-0.054202750325203));
res += mul(Get(s5,-dx,0), float4x4(-0.171498566865921,-0.063830710947514,-0.024206003174186,0.111785225570202,0.061070054769516,-0.181346073746681,0.046322513371706,-0.144319534301758,-0.024840492755175,0.093324325978756,0.072970665991306,0.122587308287621,0.127786427736282,0.163826689124107,-0.078534275293350,-0.123300515115261));
res += mul(Get(s5,-dx,dy), float4x4(0.097576215863228,0.170831575989723,-0.027295649051666,0.013768859207630,0.244073539972305,0.081601031124592,0.003842591773719,0.076408490538597,-0.073754370212555,-0.060282200574875,0.027971671894193,0.179998666048050,0.271511048078537,-0.087295651435852,0.339662164449692,0.324722021818161));
res += mul(Get(s5,0,-dy), float4x4(0.013285358436406,0.035718549042940,0.062610357999802,-0.105865113437176,0.060009632259607,0.084958776831627,0.017399420961738,0.074239753186703,-0.012676947750151,0.051811657845974,-0.151879966259003,-0.073268726468086,-0.015311079099774,-0.129416778683662,0.076534442603588,0.125002920627594));
res += mul(Get(s5,0,0), float4x4(0.169221445918083,0.048097334802151,0.249421179294586,0.230431303381920,-0.280943602323532,-0.250907450914383,-0.143387869000435,-0.263545364141464,0.012954672798514,-0.080285340547562,-0.029862493276596,-0.167439788579941,-0.294940292835236,0.340682327747345,0.158789470791817,0.089913465082645));
res += mul(Get(s5,0,dy), float4x4(-0.030320797115564,-0.201382383704185,0.068181253969669,0.153556481003761,0.014654358848929,0.013852572999895,-0.254341721534729,-0.105981580913067,0.046443916857243,0.085700720548630,0.008358824998140,-0.330114126205444,0.027646638453007,0.171217992901802,-0.014517698436975,0.080186940729618));
res += mul(Get(s5,dx,-dy), float4x4(0.004729263484478,0.136541172862053,0.094771131873131,0.034764908254147,0.060425139963627,0.018213102594018,0.061625402420759,0.220426082611084,0.065622411668301,0.068769149482250,-0.013454112224281,-0.038566704839468,0.075860880315304,-0.054170578718185,0.085726216435432,0.078765362501144));
res += mul(Get(s5,dx,0), float4x4(0.111505910754204,-0.032338209450245,-0.030756203457713,-0.108533583581448,-0.030359990894794,-0.100898131728172,0.010281368158758,0.053126089274883,-0.044019687920809,0.170522481203079,0.220022156834602,-0.052272930741310,-0.036513410508633,0.068500362336636,0.150039941072464,0.286119252443314));
res += mul(Get(s5,dx,dy), float4x4(-0.029564693570137,-0.074107386171818,-0.008843186311424,-0.126848787069321,0.096560232341290,0.032920740544796,-0.062014099210501,0.368639677762985,-0.077226512134075,0.020158013328910,0.026818182319403,0.114438474178314,0.017398780211806,0.059628400951624,0.141482189297676,-0.191380709409714));
res = max(float4(0, 0, 0, 0), res) + float4(0.204201504588127,0.206896170973778,0.201188355684280,0.010797359049320) * min(float4(0, 0, 0, 0), res);
return res;
}