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
float4 res = float4(-0.023009613156319,-0.115314409136772,0.064917571842670,0.102903969585896);
res += mul(Get(s0,-dx,-dy), float4x4(-0.130762934684753,-0.109436891973019,-0.242043539881706,-0.127171188592911,-0.011727658100426,-0.017161792144179,-0.020895782858133,0.010260767303407,-0.018382906913757,0.034075081348419,0.018154913559556,0.092094928026199,-0.024067189544439,0.114537462592125,0.019796535372734,-0.127111047506332));
res += mul(Get(s0,-dx,0), float4x4(-0.172694817185402,0.032972976565361,-0.240871608257294,-0.133011981844902,-0.067804217338562,0.021088903769851,-0.172184199094772,-0.013621341437101,0.098817124962807,-0.067596361041069,-0.082413494586945,0.071658194065094,-0.021637283265591,0.059782028198242,-0.018695291131735,-0.070007018744946));
res += mul(Get(s0,-dx,dy), float4x4(-0.004733575973660,-0.012580591253936,-0.007177635561675,-0.055460587143898,-0.139773577451706,-0.040308818221092,-0.239076927304268,0.044926352798939,-0.105511330068111,0.017183579504490,-0.231709122657776,-0.030992139130831,-0.057650536298752,-0.023366276174784,-0.072763808071613,-0.058832362294197));
res += mul(Get(s0,0,-dy), float4x4(0.107905216515064,0.086156755685806,-0.089374624192715,-0.093995891511440,-0.023705253377557,0.107286743819714,-0.046760812401772,0.114767983555794,-0.103802084922791,-0.012641133740544,0.008078263141215,0.335916012525558,0.090185105800629,0.110967241227627,0.047405522316694,0.012520477175713));
res += mul(Get(s0,0,0), float4x4(0.109415292739868,0.052020795643330,-0.376632362604141,-0.116089552640915,0.015956168994308,0.105133339762688,0.044836435467005,0.126857653260231,0.089572809636593,-0.081458963453770,0.028873993083835,-0.433516025543213,0.244531214237213,0.001982190413401,0.167034938931465,0.231130406260490));
res += mul(Get(s0,0,dy), float4x4(0.027882102876902,-0.067346982657909,0.038343984633684,0.119038589298725,0.224246487021446,0.074427597224712,0.116045735776424,0.084863729774952,-0.010397098958492,-0.019519846886396,-0.243513971567154,-0.121755205094814,0.080332860350609,0.027607992291451,0.076588071882725,0.076606348156929));
res += mul(Get(s0,dx,-dy), float4x4(-0.163178771734238,-0.071949057281017,0.140253856778145,-0.019508827477694,0.013946470804513,0.046855092048645,-0.120584771037102,-0.017575711011887,0.115554578602314,-0.116164885461330,-0.079207994043827,0.031448014080524,0.010565546341240,0.062905892729759,0.054663926362991,-0.033292211592197));
res += mul(Get(s0,dx,0), float4x4(-0.171371817588806,-0.188593834638596,0.338779300451279,0.068606711924076,0.066521257162094,0.076149269938469,-0.256536185741425,-0.006746451370418,-0.262398481369019,0.013132290914655,-0.035706747323275,0.048138339072466,0.097129866480827,0.222975268959999,-0.059362363070250,0.047784041613340));
res += mul(Get(s0,dx,dy), float4x4(0.006536088883877,0.054720979183912,0.047369468957186,-0.010175367817283,-0.081996403634548,0.021197794005275,-0.252642810344696,0.065714746713638,-0.243952721357346,0.011803354136646,0.169146686792374,0.032087836414576,0.021242318674922,0.222235038876534,0.084949679672718,0.021087205037475));
res += mul(Get(s1,-dx,-dy), float4x4(-0.118796966969967,-0.021246107295156,-0.201515212655067,0.101709477603436,-0.057608470320702,-0.001824440201744,0.018521897494793,-0.080539025366306,0.051804404705763,-0.024251522496343,-0.177845314145088,-0.235010713338852,0.021254081279039,0.047605734318495,0.065433599054813,-0.065372861921787));
res += mul(Get(s1,-dx,0), float4x4(-0.114528790116310,0.119039118289948,-0.216317921876907,-0.014654528349638,0.090618081390858,0.226205483078957,-0.085560388863087,0.130920663475990,0.000875167257618,-0.009807876311243,0.118998423218727,-0.050977867096663,0.030919855460525,-0.005923358257860,0.085855811834335,-0.010160536505282));
res += mul(Get(s1,-dx,dy), float4x4(0.050170753151178,0.154412478208542,-0.049415290355682,-0.150482967495918,-0.051447894424200,0.039802711457014,-0.078906513750553,0.078198187053204,0.076633676886559,0.011813288554549,0.178574174642563,0.079759098589420,-0.000870972813573,-0.249662369489670,-0.026854516938329,0.118789754807949));
res += mul(Get(s1,0,-dy), float4x4(0.004819609224796,-0.031029073521495,-0.076723918318748,0.166471451520920,-0.151383593678474,-0.088749289512634,-0.007364731747657,-0.036144711077213,0.139264002442360,-0.212020188570023,0.118056386709213,-0.166965901851654,-0.047422692179680,-0.013351295143366,-0.240090027451515,0.077731125056744));
res += mul(Get(s1,0,0), float4x4(-0.037912361323833,0.004062227904797,-0.156937181949615,-0.207443460822105,-0.101572759449482,0.188918143510818,-0.156826511025429,-0.512761414051056,0.000321061757859,-0.004514039959759,-0.213501214981079,-0.033457513898611,0.002828215481713,-0.103421360254288,0.011477492749691,-0.121253818273544));
res += mul(Get(s1,0,dy), float4x4(0.065218433737755,0.051152952015400,-0.116610810160637,-0.153846338391304,-0.118462532758713,0.050027340650558,-0.053861051797867,0.057457085698843,-0.143960431218147,-0.173145473003387,-0.108763240277767,0.035926524549723,0.016156498342752,-0.445739686489105,0.092054098844528,-0.080637760460377));
res += mul(Get(s1,dx,-dy), float4x4(-0.241579234600067,0.054297853261232,-0.050475589931011,0.048368643969297,-0.087071940302849,-0.066778749227524,0.170268818736076,-0.012581900693476,-0.121380202472210,-0.085545487701893,-0.117621712386608,0.045182351022959,-0.084494605660439,-0.038828164339066,0.028263229876757,0.175788134336472));
res += mul(Get(s1,dx,0), float4x4(-0.307720541954041,0.299221187829971,-0.127026408910751,-0.072167657315731,-0.267376810312271,0.004011072218418,0.039467435330153,0.009719861671329,-0.200886219739914,0.099996849894524,0.230964392423630,0.025823093950748,-0.202591881155968,-0.163800001144409,-0.036973956972361,-0.221439272165298));
res += mul(Get(s1,dx,dy), float4x4(-0.229169994592667,0.072495877742767,-0.090097635984421,0.001568307285197,-0.181101143360138,0.100573480129242,0.050679482519627,-0.076880112290382,-0.003026842605323,0.050726328045130,0.115802548825741,-0.099188297986984,-0.095371782779694,-0.448359549045563,-0.126364856958389,0.009391795843840));
res += mul(Get(s2,-dx,-dy), float4x4(-0.078264847397804,0.015371525660157,-0.154649734497070,-0.081840246915817,0.099479719996452,0.105533190071583,0.077615685760975,-0.046727355569601,0.190473154187202,0.142892196774483,0.060338545590639,-0.134497895836830,0.113636814057827,-0.053672872483730,-0.122520796954632,0.158547207713127));
res += mul(Get(s2,-dx,0), float4x4(0.064701385796070,0.100183442234993,0.035139627754688,0.093515455722809,-0.101285077631474,0.012177103199065,-0.001027171267197,-0.005720399320126,0.130128443241119,0.237003266811371,0.106409378349781,-0.039806161075830,-0.047104664146900,0.189869314432144,-0.005223350133747,0.061067678034306));
res += mul(Get(s2,-dx,dy), float4x4(0.150445446372032,0.315486371517181,-0.061919055879116,0.126962736248970,0.109676398336887,-0.258753806352615,-0.037981271743774,0.076721087098122,0.191212922334671,0.040481485426426,0.200616315007210,0.069493114948273,0.002513502724469,0.201037824153900,0.108334563672543,0.028836885467172));
res += mul(Get(s2,0,-dy), float4x4(-0.009009944275022,0.184952110052109,-0.136771619319916,0.168744131922722,0.027071680873632,0.085173130035400,0.110738836228848,-0.019112892448902,0.021117266267538,0.049703441560268,-0.072492636740208,-0.055609360337257,-0.125268161296844,0.088859319686890,0.014737210236490,0.134106457233429));
res += mul(Get(s2,0,0), float4x4(-0.000937168428209,0.069285914301872,-0.185707256197929,-0.032068926841021,0.130953893065453,-0.071714192628860,0.060549866408110,0.105571053922176,-0.053151618689299,0.039053618907928,0.201004952192307,0.253276914358139,-0.025047035887837,0.086075127124786,0.045655969530344,-0.332534521818161));
res += mul(Get(s2,0,dy), float4x4(-0.152365073561668,0.160516604781151,-0.332823008298874,0.019455404952168,0.221086099743843,-0.290086776018143,-0.079168066382408,-0.023781085386872,-0.002508331788704,0.204102218151093,-0.223742842674255,-0.068329855799675,0.116531208157539,-0.087271846830845,0.318299829959869,-0.021282665431499));
res += mul(Get(s2,dx,-dy), float4x4(-0.121914573013783,0.161710724234581,-0.187270268797874,-0.054297365248203,0.017077514901757,0.017343793064356,0.083651237189770,0.052811671048403,0.041569940745831,0.134443014860153,0.029054142534733,0.027454720810056,-0.099503844976425,0.021386019885540,0.235920727252960,0.027821542695165));
res += mul(Get(s2,dx,0), float4x4(-0.009728774428368,0.222620308399200,-0.127432808279991,0.080674588680267,-0.094489745795727,-0.140441149473190,0.111593700945377,0.069252088665962,-0.132447510957718,0.024529475718737,0.135905250906944,0.107126586139202,-0.023581614717841,0.052610993385315,-0.051095236092806,-0.109334215521812));
res += mul(Get(s2,dx,dy), float4x4(0.059336397796869,0.137029156088829,-0.015502229332924,-0.082589156925678,-0.101512268185616,-0.057156700640917,0.080146916210651,-0.029013870283961,-0.371543079614639,0.109569936990738,0.029512880370021,-0.036124542355537,0.353565961122513,0.082802884280682,-0.124279975891113,0.061336196959019));
res += mul(Get(s3,-dx,-dy), float4x4(0.079063743352890,-0.021431069821119,0.116734325885773,-0.030208863317966,-0.044972721487284,-0.037026271224022,-0.042323958128691,-0.188852027058601,0.015562892891467,0.060219418257475,0.059601183980703,-0.020677845925093,-0.023469954729080,-0.052483316510916,-0.056569058448076,-0.055417016148567));
res += mul(Get(s3,-dx,0), float4x4(0.245010420680046,0.094535067677498,0.363284975290298,0.285612523555756,-0.074968129396439,-0.101052299141884,-0.079518221318722,-0.225445851683617,0.000524034956470,0.038574792444706,-0.001225810614415,0.063943527638912,-0.059204142540693,0.026492707431316,-0.017260262742639,0.113646231591702));
res += mul(Get(s3,-dx,dy), float4x4(0.038521803915501,-0.005038971547037,0.142937421798706,0.170062035322189,0.097667314112186,-0.062161263078451,0.037931334227324,0.026964476332068,-0.038697645068169,0.039170317351818,-0.007398683577776,-0.043394390493631,-0.051518332213163,-0.016227615997195,-0.085006646811962,-0.022204112261534));
res += mul(Get(s3,0,-dy), float4x4(-0.113582707941532,-0.049237627536058,0.037887983024120,0.245773196220398,-0.031199382618070,-0.000875246361829,0.026135543361306,-0.009507280774415,0.055943515151739,-0.075441874563694,0.179190739989281,-0.307899087667465,-0.085009202361107,-0.039569903165102,-0.213878303766251,0.217440560460091));
res += mul(Get(s3,0,0), float4x4(-0.254926621913910,0.234515830874443,-0.221871912479401,-0.318036913871765,0.086786456406116,0.012545531615615,0.001871544052847,-0.090668469667435,-0.053159467875957,-0.123578026890755,0.047252163290977,0.122440084815025,-0.093126565217972,-0.018031015992165,-0.169755607843399,-0.264254271984100));
res += mul(Get(s3,0,dy), float4x4(-0.066842697560787,-0.112641863524914,-0.086884938180447,0.035330429673195,0.057498630136251,0.014250918291509,-0.341320097446442,0.028155999258161,0.055233594030142,-0.063747838139534,0.034156072884798,0.044523108750582,0.022277075797319,0.032167602330446,0.194684103131294,-0.203660473227501));
res += mul(Get(s3,dx,-dy), float4x4(0.070298530161381,-0.011653746478260,0.052166707813740,0.108840323984623,0.036215532571077,-0.085365563631058,-0.076045386493206,-0.079463429749012,0.021083610132337,-0.083263337612152,0.117155969142914,0.008230553008616,0.115274414420128,0.048822194337845,0.104296073317528,0.034361537545919));
res += mul(Get(s3,dx,0), float4x4(-0.043836496770382,-0.126290366053581,-0.353574812412262,-0.138767585158348,-0.135474711656570,-0.138588413596153,-0.107675276696682,0.047007769346237,0.012157482095063,-0.001846398692578,-0.075282014906406,0.163576513528824,0.097766742110252,0.110855601727962,-0.043853726238012,-0.065604440867901));
res += mul(Get(s3,dx,dy), float4x4(0.022552773356438,0.053147986531258,0.017633449286222,-0.105660445988178,-0.106368824839592,-0.116226829588413,-0.096425443887711,-0.109645344316959,-0.030322493985295,0.087550945580006,-0.005961112678051,0.029446607455611,0.004577678628266,0.013681826181710,-0.063417337834835,-0.046201687306166));
res += mul(Get(s4,-dx,-dy), float4x4(0.066609568893909,0.044094149023294,-0.024803329259157,-0.030380770564079,-0.037178475409746,-0.134177163243294,0.120745427906513,-0.119041837751865,-0.043453510850668,-0.006778796203434,0.046285279095173,-0.067491039633751,0.058375246822834,-0.055554971098900,-0.052159775048494,0.067594066262245));
res += mul(Get(s4,-dx,0), float4x4(0.058985862880945,0.158411324024200,-0.064765587449074,0.058977633714676,-0.089389078319073,-0.233434513211250,0.181324094533920,0.023781133815646,0.053699027746916,0.112671144306660,0.068656250834465,0.125625401735306,-0.207438170909882,-0.129102721810341,-0.351612687110901,-0.106621623039246));
res += mul(Get(s4,-dx,dy), float4x4(-0.048188269138336,-0.115594483911991,-0.052459809929132,0.040704846382141,-0.033921904861927,-0.017811462283134,-0.092371448874474,-0.059651784598827,0.051396735012531,0.171948596835136,-0.154557794332504,0.120619073510170,-0.001526619889773,0.011557825841010,0.153809890151024,-0.082774870097637));
res += mul(Get(s4,0,-dy), float4x4(-0.005208513233811,0.179085507988930,-0.061064176261425,-0.052927419543266,-0.142693221569061,-0.111064128577709,0.058433845639229,0.022979596629739,-0.079185076057911,-0.073669120669365,-0.008489508181810,0.150477066636086,0.147404521703720,-0.036501485854387,0.063016548752785,0.030552079901099));
res += mul(Get(s4,0,0), float4x4(0.037595272064209,0.302115023136139,-0.202509149909019,-0.185713112354279,-0.212422326207161,-0.111805163323879,0.029482385143638,-0.131585672497749,-0.327059060335159,-0.243616908788681,-0.132493987679482,-0.200372785329819,0.375672012567520,0.353506267070770,-0.291449308395386,-0.310494393110275));
res += mul(Get(s4,0,dy), float4x4(-0.058684494346380,-0.314196854829788,-0.024818338453770,0.009333891794086,0.219188183546066,0.067627325654030,0.066265791654587,-0.087241202592850,0.106408439576626,0.054655760526657,0.292093783617020,-0.163767367601395,0.033110182732344,0.111033394932747,-0.215451776981354,0.065694190561771));
res += mul(Get(s4,dx,-dy), float4x4(-0.060536012053490,-0.166400372982025,0.138433322310448,0.006176631432027,0.159765869379044,0.047072451561689,-0.051866877824068,-0.024984605610371,0.072061777114868,0.015512957237661,-0.070672355592251,0.148884177207947,-0.102596305310726,0.094811476767063,0.017666053026915,0.012816997244954));
res += mul(Get(s4,dx,0), float4x4(-0.141224950551987,-0.040561132133007,0.082619391381741,-0.172403886914253,0.029447136446834,0.182926267385483,-0.452739447355270,-0.156363546848297,-0.277609705924988,-0.071042872965336,0.157243594527245,-0.007718218490481,-0.146529212594032,0.035002838820219,0.272290587425232,0.200317844748497));
res += mul(Get(s4,dx,dy), float4x4(0.082608439028263,0.016086561605334,0.142361819744110,-0.047752499580383,-0.002656400902197,-0.021771177649498,-0.136852324008942,0.033953927457333,-0.061036005616188,-0.126357153058052,0.233473449945450,-0.024938745424151,-0.039159696549177,0.112371303141117,-0.078205041587353,0.109613135457039));
res += mul(Get(s5,-dx,-dy), float4x4(0.041084732860327,-0.098754793405533,0.042252413928509,0.093860641121864,0.042772863060236,0.021191477775574,0.024453422054648,-0.057994563132524,0.140720576047897,-0.105577871203423,0.230921551585197,0.117159068584442,0.082910731434822,0.023260341957211,0.104178540408611,-0.052952360361814));
res += mul(Get(s5,-dx,0), float4x4(-0.031475260853767,-0.433621972799301,-0.083862364292145,-0.135725170373917,0.114885464310646,0.006928313057870,0.204000324010849,0.133008614182472,-0.015355846844614,-0.028853207826614,0.014145378023386,0.054533503949642,0.251666456460953,0.136554241180420,0.311229020357132,0.257405906915665));
res += mul(Get(s5,-dx,dy), float4x4(-0.005775549914688,-0.313803136348724,0.159551069140434,-0.175483897328377,-0.021289905533195,0.094005100429058,0.202503919601440,-0.079875074326992,-0.000311225740006,0.112649545073509,0.081812806427479,0.007899997755885,0.068784616887569,-0.031263280659914,-0.119475871324539,0.111390024423599));
res += mul(Get(s5,0,-dy), float4x4(0.136155247688293,-0.118029572069645,0.134538009762764,-0.069672055542469,-0.136731788516045,0.012272043153644,0.070507131516933,0.104474209249020,0.050752930343151,0.151961714029312,-0.268042922019958,-0.119599096477032,-0.147908627986908,0.099133431911469,-0.114338822662830,0.048871029168367));
res += mul(Get(s5,0,0), float4x4(0.176260754466057,-0.204427257180214,-0.015500485897064,-0.092410229146481,0.010886454954743,-0.198609605431557,-0.042873676866293,0.116051308810711,0.057133942842484,0.088759623467922,-0.197651043534279,0.018492005765438,-0.146740466356277,0.018661510199308,-0.063170775771141,-0.041512642055750));
res += mul(Get(s5,0,dy), float4x4(-0.059127271175385,-0.266000300645828,-0.065138436853886,0.096011891961098,0.111611314117908,0.019076034426689,0.145499438047409,-0.130686476826668,0.010913544334471,0.436943858861923,-0.016685103997588,-0.186520397663116,0.022718610242009,-0.103679783642292,0.021979685872793,-0.043269373476505));
res += mul(Get(s5,dx,-dy), float4x4(-0.151930212974548,-0.121691018342972,0.199700981378555,-0.084782697260380,-0.047583866864443,-0.016441185027361,-0.086142756044865,-0.016858262941241,0.181500047445297,-0.042470104992390,0.252182364463806,-0.090212069451809,-0.013503783382475,-0.068486481904984,-0.086407274007797,-0.069735422730446));
res += mul(Get(s5,dx,0), float4x4(0.075527660548687,-0.099903181195259,0.081241153180599,0.009734489023685,0.038016393780708,-0.031893987208605,0.006839733570814,-0.070125654339790,-0.024153985083103,-0.033960152417421,0.126836329698563,-0.122693657875061,0.118180975317955,-0.028485449030995,-0.139930054545403,0.178549379110336));
res += mul(Get(s5,dx,dy), float4x4(0.016334790736437,0.025642700493336,0.025752950459719,-0.048022545874119,-0.039425056427717,-0.123483300209045,0.035929091274738,-0.040158666670322,-0.099014252424240,0.146223604679108,-0.107123121619225,-0.046216230839491,-0.094912081956863,0.005191341973841,0.051244553178549,0.082171507179737));
res = max(float4(0, 0, 0, 0), res) + float4(-0.200179889798164,-0.004675035364926,0.009253569878638,0.187817171216011) * min(float4(0, 0, 0, 0), res);
return res;
}
