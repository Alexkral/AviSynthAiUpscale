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
float4 res = float4(0.0216146521270275,-0.0198562182486057,-0.0683913826942444,-0.0603125691413879);
res += mul(Get(s0,-dx,-dy), float4x4(-0.0043255388736725,0.0814939886331558,-0.0977331101894379,0.0906483009457588,0.0932487994432449,-0.0978493094444275,0.0286145210266113,-0.0174165032804012,0.0303383618593216,0.0285672917962074,0.2198281884193420,0.0480519011616707,0.1162529960274696,-0.0149230146780610,0.0329273715615273,0.0562000125646591));
res += mul(Get(s1,-dx,-dy), float4x4(-0.1725134551525116,0.0015634847804904,-0.0489587895572186,-0.0085580069571733,0.1282085180282593,0.0189558882266283,-0.1338149756193161,0.0354792773723602,0.0715438053011894,-0.0571365430951118,-0.0540401786565781,0.0551319047808647,-0.0468972139060497,-0.0550688281655312,-0.0577769428491592,0.0397843122482300));
res += mul(Get(s2,-dx,-dy), float4x4(-0.1111229807138443,-0.0691017732024193,-0.2853336036205292,-0.0183367617428303,-0.0510241948068142,-0.1610718071460724,0.1619041711091995,0.0170259959995747,-0.0741676539182663,0.0161888953298330,-0.2092091888189316,0.0790431052446365,-0.0643538907170296,-0.0680746436119080,-0.0607781969010830,0.0842053517699242));
res += mul(Get(s3,-dx,-dy), float4x4(-0.0221532937139273,-0.0811155736446381,-0.2051019519567490,-0.1906880140304565,0.0609469637274742,-0.0224975068122149,-0.1376094520092010,0.0214819349348545,-0.0876276344060898,-0.1671107113361359,0.0400545895099640,0.0105982609093189,0.0732945278286934,0.0120222894474864,0.2685821056365967,-0.0466143339872360));
res += mul(Get(s4,-dx,-dy), float4x4(0.0417693369090557,0.0648731812834740,-0.0545225739479065,-0.0229967366904020,0.0621152557432652,-0.0830201134085655,0.0374814905226231,-0.1264881640672684,-0.0145633108913898,0.3141368925571442,-0.1420366764068604,0.0175297800451517,-0.1335047781467438,0.1221352443099022,0.0020584736485034,0.0388500317931175));
res += mul(Get(s5,-dx,-dy), float4x4(-0.0485087819397449,-0.0826053470373154,-0.2033271193504333,0.0231384448707104,0.1877309232950211,-0.0735688954591751,0.0412354394793510,0.0203378703445196,0.0555059313774109,-0.1708386540412903,0.1152599081397057,-0.0861836746335030,0.0658669918775558,0.0235802028328180,0.0636239573359489,-0.0165420994162560));
res += mul(Get(s0,-dx,0), float4x4(0.0185291264206171,-0.0838085711002350,0.2774621248245239,-0.1694218367338181,0.2067303508520126,0.0436826497316360,0.1633728742599487,0.0419897660613060,0.2614111304283142,0.1148552149534225,-0.0278656613081694,-0.0518582426011562,-0.0909998416900635,-0.1466052234172821,0.0768161788582802,0.0691537782549858));
res += mul(Get(s1,-dx,0), float4x4(0.1638040989637375,0.0003063984331675,-0.0086684897542000,-0.0321307145059109,0.0435909479856491,-0.0975349098443985,-0.0103966109454632,-0.0896612256765366,0.0427646413445473,-0.1159562468528748,-0.0134531129151583,-0.0606506951153278,-0.1182996854186058,0.2002094686031342,-0.1127945035696030,0.0213695298880339));
res += mul(Get(s2,-dx,0), float4x4(-0.0735989287495613,-0.0066654942929745,-0.0203083492815495,0.0078729931265116,-0.2599220573902130,0.2202719002962112,-0.0628449171781540,0.0156737808138132,-0.3058398962020874,0.1293849200010300,-0.0186976268887520,-0.1286245733499527,0.0392737276852131,-0.4007300734519958,-0.1573453247547150,-0.0337073057889938));
res += mul(Get(s3,-dx,0), float4x4(-0.0438846573233604,0.2601117789745331,0.1182106882333755,0.2969848215579987,0.1814256310462952,-0.0240132510662079,-0.0643131434917450,-0.0533301010727882,-0.1374666243791580,-0.1891890019178391,0.0146453808993101,-0.1977113187313080,0.1924070268869400,-0.0760028883814812,-0.0742028653621674,0.0702936798334122));
res += mul(Get(s4,-dx,0), float4x4(0.3225878179073334,0.0026651476509869,-0.2139800488948822,0.1564897149801254,0.1660129874944687,-0.0787172392010689,-0.1860511153936386,0.1214600205421448,-0.1680084019899368,0.1658934801816940,0.0813712403178215,0.0843756422400475,0.1056036278605461,0.2572803497314453,0.2505293488502502,-0.0993583798408508));
res += mul(Get(s5,-dx,0), float4x4(0.0154213383793831,-0.0356637537479401,-0.0025775344111025,0.0933835059404373,0.1051591038703918,0.2348491996526718,-0.0130560658872128,-0.0802971348166466,0.0635114312171936,0.1342370659112930,-0.0960057675838470,0.0655585974454880,-0.1914323419332504,-0.0721947401762009,0.0204856097698212,-0.1727466583251953));
res += mul(Get(s0,-dx,dy), float4x4(0.0969787538051605,-0.1326083540916443,-0.1766827106475830,0.0134648922830820,0.1560622900724411,-0.1287538111209869,-0.0829603374004364,0.0311349797993898,0.0023982578422874,-0.2192582935094833,-0.1358366608619690,-0.0713408291339874,0.0340237729251385,-0.0825334191322327,-0.1793979704380035,0.0985021069645882));
res += mul(Get(s1,-dx,dy), float4x4(-0.2124369740486145,0.0639269202947617,-0.3535718917846680,0.0070402170531452,0.0619190409779549,0.0841756761074066,-0.0614518336951733,-0.0012356374645606,0.1919545680284500,-0.1700631082057953,-0.0713794156908989,0.0747479274868965,0.0766048729419708,0.0490560270845890,0.0144665371626616,0.0383208431303501));
res += mul(Get(s2,-dx,dy), float4x4(-0.0947802662849426,0.0831313505768776,-0.0503562428057194,-0.1145681813359261,-0.1187147423624992,0.0531569048762321,-0.2214093804359436,-0.0660055950284004,0.0677958056330681,0.2746573090553284,0.1407915949821472,0.0617750808596611,0.0787830278277397,-0.0173140540719032,0.0632127076387405,0.1276004612445831));
res += mul(Get(s3,-dx,dy), float4x4(0.0401240959763527,0.0705081447958946,-0.2489581406116486,0.0007801551255397,0.1066356077790260,-0.1169660165905952,-0.1036915928125381,0.0133605413138866,-0.0281617306172848,-0.0292961448431015,-0.0918667986989021,0.0847298502922058,0.1717725098133087,-0.0916705280542374,0.0857716277241707,-0.0893341600894928));
res += mul(Get(s4,-dx,dy), float4x4(0.0740194469690323,-0.0615477152168751,-0.1013441160321236,0.0561760775744915,0.0772939026355743,-0.0344395712018013,0.0162344966083765,0.0601917617022991,-0.0185183081775904,-0.0907569378614426,-0.3129960000514984,-0.0209553744643927,0.0559909567236900,-0.1291989237070084,-0.1294162124395370,-0.0267289355397224));
res += mul(Get(s5,-dx,dy), float4x4(-0.0608190260827541,-0.1721847206354141,-0.0229179766029119,0.1029736474156380,0.0728934556245804,-0.0507169179618359,-0.0779247581958771,-0.1604605764150620,-0.0656262636184692,0.0257391016930342,-0.1237071156501770,0.0108361579477787,-0.0720010325312614,0.0405318737030029,-0.0045991959050298,-0.0148139027878642));
res += mul(Get(s0,0,-dy), float4x4(0.3284498155117035,-0.0194575991481543,0.1423148810863495,-0.2425080239772797,0.2704365551471710,-0.0587655305862427,-0.0596510767936707,0.0365378223359585,-0.1733081191778183,-0.1260116994380951,-0.0152386752888560,0.0669977143406868,-0.1523628830909729,0.0895359292626381,0.3352392911911011,0.0985110402107239));
res += mul(Get(s1,0,-dy), float4x4(0.4693076908588409,0.0880288928747177,0.2134917527437210,0.0623875148594379,-0.0256022233515978,-0.1261354833841324,-0.1062972620129585,-0.1003191620111465,-0.0862184166908264,0.0293701849877834,-0.0614227168262005,-0.0400881171226501,0.0869121029973030,0.1564124375581741,0.0366869010031223,-0.0672341361641884));
res += mul(Get(s2,0,-dy), float4x4(0.3178178966045380,-0.2404285222291946,-0.1368793845176697,0.2111875265836716,-0.0765537172555923,-0.2457670420408249,-0.2470445483922958,0.1843021363019943,0.0254107899963856,-0.0149705307558179,0.0688234940171242,0.1838282942771912,-0.1414866596460342,0.0055864993482828,-0.2090593576431274,-0.2894870936870575));
res += mul(Get(s3,0,-dy), float4x4(-0.0105485972017050,-0.1157783195376396,0.2692944705486298,-0.1108730062842369,0.3812831044197083,-0.1909147948026657,0.0655523538589478,-0.1932493448257446,-0.1932904273271561,0.1684374958276749,-0.1802280098199844,-0.0817208662629128,0.0992070958018303,-0.0194726772606373,0.0486439429223537,-0.1990068852901459));
res += mul(Get(s4,0,-dy), float4x4(-0.3061740994453430,0.1296635866165161,-0.1633366048336029,-0.0869561359286308,0.1617274880409241,-0.0596357397735119,-0.1090567857027054,-0.0919772237539291,-0.0015678521012887,0.0996803343296051,0.2400660812854767,0.2071494758129120,0.1070544794201851,0.1760137975215912,-0.0394885241985321,0.1046881750226021));
res += mul(Get(s5,0,-dy), float4x4(0.0959979519248009,0.0101273804903030,-0.2055729478597641,-0.0500266328454018,-0.0798776075243950,-0.0717464834451675,-0.3092330098152161,-0.1213137134909630,-0.0947968438267708,0.1963625401258469,-0.0606615319848061,-0.0704903379082680,0.1009979024529457,-0.0753758400678635,0.1954477578401566,0.0375459343194962));
res += mul(Get(s0,0,0), float4x4(-0.2997005283832550,0.3018575608730316,0.0595420189201832,0.5872629284858704,0.1761469990015030,-0.0148958442732692,-0.0928177982568741,0.1094763353466988,0.2271074503660202,-0.4813834726810455,0.0271044094115496,0.2236144989728928,0.1884512752294540,-0.7375417351722717,-0.3509782552719116,-0.9178223609924316));
res += mul(Get(s1,0,0), float4x4(-0.3995321989059448,0.4815132915973663,-0.0692245662212372,0.0048118354752660,0.0711125135421753,-0.1057349517941475,-0.1446246802806854,-0.0853035673499107,-0.1488478481769562,-0.1758338809013367,0.0828199237585068,-0.1194446012377739,-0.1361863017082214,0.5011796355247498,0.2862512171268463,-0.2190360426902771));
res += mul(Get(s2,0,0), float4x4(-0.3729550838470459,0.1430134773254395,0.3057766258716583,-0.3115406334400177,-0.4280145168304443,-0.1678670197725296,-0.0393321327865124,-0.7672792673110962,-0.1398500204086304,0.1173313334584236,0.1058383136987686,-0.1984466910362244,0.7329739332199097,-0.2863256633281708,0.3694925308227539,-0.2848360538482666));
res += mul(Get(s3,0,0), float4x4(0.1914566308259964,-0.5521494746208191,-0.1191455125808716,0.0246563237160444,-1.4135495424270630,1.0820994377136230,-0.0300209298729897,0.5459116697311401,0.7942613363265991,-0.2036782950162888,0.7877931594848633,0.3243246376514435,-0.1014160439372063,0.7263935804367065,-0.1690955013036728,0.2151347398757935));
res += mul(Get(s4,0,0), float4x4(0.6033024787902832,-0.2830343842506409,0.7357428669929504,0.2327213138341904,-0.4378189146518707,-0.1336153596639633,-0.4941389560699463,-0.3668678104877472,-0.2288042306900024,0.1700653433799744,0.3989427387714386,-0.0338813588023186,0.1146450862288475,-0.1947909295558929,-0.5020452141761780,0.6625518798828125));
res += mul(Get(s5,0,0), float4x4(0.3005210459232330,-0.1269787997007370,-0.0357736088335514,-0.6573884487152100,0.2393514364957809,-0.3636481165885925,0.0541043356060982,-0.6420299410820007,-0.2485697865486145,-0.0880615636706352,-0.1385006904602051,0.1443121731281281,-0.5555557012557983,0.3708190917968750,0.2535626590251923,0.5922164320945740));
res += mul(Get(s0,0,dy), float4x4(0.0096358340233564,-0.0005396227934398,0.1074337363243103,0.2597652375698090,0.2601111531257629,-0.1127311065793037,0.2024805396795273,-0.0635920241475105,0.1086345836520195,-0.0465250760316849,-0.1329811960458755,0.0027432488277555,0.1506542563438416,0.4886705875396729,0.2931497395038605,0.1946261227130890));
res += mul(Get(s1,0,dy), float4x4(0.2851758301258087,-0.2150643020868301,0.3614901900291443,-0.0142709305509925,0.1384361386299133,-0.0406834743916988,-0.0053833420388401,-0.1510812193155289,-0.4842146337032318,-0.1600389480590820,-0.3438048958778381,-0.2175154685974121,-0.1876616626977921,-0.1328712254762650,-0.0279077365994453,-0.0185570921748877));
res += mul(Get(s2,0,dy), float4x4(0.0386141650378704,-0.0649876669049263,0.0372313372790813,0.1052064225077629,0.4276968240737915,0.0521802268922329,0.0241368915885687,0.0093813547864556,0.0581306889653206,-0.1220894157886505,0.2347989380359650,0.0292275585234165,0.0611098073422909,0.0827361643314362,0.0133088268339634,0.1150550097227097));
res += mul(Get(s3,0,dy), float4x4(-0.1368403583765030,0.2595826387405396,0.0214247647672892,0.2778371572494507,0.2696295976638794,0.2585975527763367,-0.0859510302543640,0.0090014087036252,-0.0575494393706322,0.2052040398120880,-0.1605509221553802,-0.1366293728351593,-0.0737818926572800,-0.0740020647644997,0.0975538045167923,0.0303992759436369));
res += mul(Get(s4,0,dy), float4x4(-0.3602050244808197,0.1375416815280914,0.0823058113455772,-0.1019989401102066,0.2455589324235916,0.4889625310897827,0.2080331742763519,0.2061318010091782,0.3475621342658997,-0.1126137822866440,0.0927036032080650,-0.0231291130185127,0.0847228169441223,0.0192123595625162,0.2886158227920532,-0.0697579681873322));
res += mul(Get(s5,0,dy), float4x4(-0.4487415552139282,-0.2727204263210297,0.0131577020511031,0.0132629424333572,0.1366533190011978,-0.0490161590278149,0.1157179027795792,0.0075466167181730,0.0643005669116974,0.2459139972925186,-0.1656573414802551,-0.0270734932273626,0.3232714831829071,0.0394353941082954,-0.1899393498897552,-0.1317054778337479));
res += mul(Get(s0,dx,-dy), float4x4(-0.0626507028937340,-0.0257335752248764,-0.0741446018218994,0.0926070138812065,0.0037730587646365,-0.0257931668311357,0.0753600299358368,0.0788762867450714,-0.0984548181295395,0.0305795297026634,0.0824209451675415,-0.1599972695112228,0.1664054244756699,0.1984521299600601,-0.1539909243583679,0.3067473471164703));
res += mul(Get(s1,dx,-dy), float4x4(-0.1908242851495743,0.1283900886774063,-0.0099981967359781,0.1660637110471725,0.0624334178864956,0.0550772212445736,0.0405509211122990,-0.0410278141498566,-0.1389229148626328,0.0808133929967880,-0.0369894616305828,0.1100928485393524,0.1015718206763268,-0.0526581369340420,-0.0293734315782785,-0.1903771013021469));
res += mul(Get(s2,dx,-dy), float4x4(0.0275262799113989,0.0261993855237961,0.1055064499378204,-0.1257666945457458,0.0795396491885185,0.0758598521351814,0.1697750985622406,-0.0453165434300900,0.0336926467716694,-0.0209788344800472,-0.0061830445192754,0.0649732798337936,-0.0357345826923847,0.0263639781624079,0.0252792946994305,0.0361481234431267));
res += mul(Get(s3,dx,-dy), float4x4(-0.0668902844190598,0.1460548341274261,-0.0827342718839645,-0.0502338930964470,0.0579643175005913,-0.0885552242398262,0.0537536069750786,-0.2225805670022964,-0.2096370756626129,0.1732002198696136,-0.1381745785474777,-0.0005469993920997,0.0518511608242989,-0.0419321022927761,-0.0015140720643103,0.0706517994403839));
res += mul(Get(s4,dx,-dy), float4x4(-0.2165167778730392,0.0059307240881026,-0.0039232606068254,0.0047667147591710,-0.2134427428245544,-0.1467066854238510,0.0955023169517517,-0.1734879463911057,0.2220246493816376,0.0102692963555455,0.1194093674421310,-0.0620865188539028,0.0612943135201931,-0.1041297018527985,0.0736669600009918,-0.0489137582480907));
res += mul(Get(s5,dx,-dy), float4x4(0.0497121252119541,-0.1360959410667419,-0.0486210361123085,0.0246572494506836,-0.0124092707410455,0.0012659726198763,-0.0289467982947826,0.0079861236736178,0.0460600666701794,-0.0410823561251163,-0.1965991258621216,-0.1402684748172760,0.0966050550341606,-0.0737417638301849,0.0222557354718447,-0.1296388059854507));
res += mul(Get(s0,dx,0), float4x4(-0.1011512726545334,-0.0180328749120235,0.0166603699326515,-0.3898922801017761,-0.0625234842300415,-0.0550774782896042,0.1128437370061874,0.0339832529425621,0.1070781871676445,-0.0602671690285206,-0.0940134227275848,0.1607998311519623,-0.2766575515270233,0.1063439100980759,0.0351279191672802,0.1659414321184158));
res += mul(Get(s1,dx,0), float4x4(0.1290618032217026,-0.1356786638498306,-0.0881828293204308,-0.3266052603721619,0.0457191504538059,0.0092959152534604,0.1257889568805695,-0.1232326775789261,-0.0770391896367073,0.0800337642431259,-0.0715760290622711,0.0090451547876000,-0.0349979512393475,0.0513760782778263,-0.0317813456058502,-0.1802532523870468));
res += mul(Get(s2,dx,0), float4x4(0.1849886029958725,-0.0571656711399555,-0.1146190539002419,0.2265066951513290,0.2151488065719604,-0.1871768087148666,0.1229270175099373,0.1967651247978210,-0.0009620516211726,-0.0388158932328224,-0.1719982028007507,-0.0367460548877716,-0.0970554798841476,-0.0125972134992480,-0.0235588699579239,-0.0353900641202927));
res += mul(Get(s3,dx,0), float4x4(0.1189319342374802,-0.0366485565900803,0.2947514057159424,-0.0286478605121374,0.1978889554738998,-0.2590189278125763,0.0275588054209948,-0.1686829328536987,-0.0511809736490250,-0.0379006117582321,0.0100299753248692,-0.0676485002040863,-0.1512818634510040,-0.0610751919448376,0.0602495148777962,-0.1450346410274506));
res += mul(Get(s4,dx,0), float4x4(-0.1699942797422409,0.1895934939384460,-0.0624105110764503,-0.3189277350902557,-0.1650877147912979,-0.0663841068744659,0.2101629674434662,0.3760448694229126,0.1818608045578003,-0.1175036653876305,0.0111265182495117,-0.0860820338129997,-0.1128153502941132,0.0210602413862944,-0.0603289604187012,0.2794948518276215));
res += mul(Get(s5,dx,0), float4x4(0.1499119848012924,-0.0182419084012508,0.0097803669050336,0.3360692858695984,0.0913063958287239,-0.0884850323200226,0.2317802459001541,-0.0406614653766155,0.1511777788400650,0.1039252206683159,0.0952323228120804,0.1231880262494087,0.1162974536418915,0.0845986381173134,-0.0784916579723358,-0.0798341035842896));
res += mul(Get(s0,dx,dy), float4x4(0.0228760205209255,0.0167386624962091,-0.1792060732841492,-0.2076651901006699,0.0710785090923309,0.0441338047385216,-0.0838193669915199,0.0401799939572811,-0.0284792836755514,-0.0895295441150665,-0.1223309561610222,-0.0139954546466470,-0.1190855950117111,0.0010313382372260,-0.0704152882099152,-0.0746968314051628));
res += mul(Get(s1,dx,dy), float4x4(-0.0372225157916546,0.1422182172536850,0.1324573010206223,0.0317698605358601,-0.0256475154310465,0.0923913419246674,0.0099631678313017,0.0202313121408224,-0.0468041263520718,-0.0839763283729553,0.1133380085229874,0.1376382261514664,-0.0021898669656366,-0.2056184411048889,-0.0627136602997780,-0.1382470577955246));
res += mul(Get(s2,dx,dy), float4x4(0.0547421984374523,-0.0355586782097816,0.1338756531476974,0.0365267954766750,0.0575333312153816,0.0748911350965500,-0.0624306835234165,0.0249766875058413,0.0309790298342705,0.0515160039067268,-0.1451608836650848,-0.1611863970756531,-0.1172697916626930,0.0269203111529350,0.0196003820747137,0.0905517637729645));
res += mul(Get(s3,dx,dy), float4x4(-0.0816995278000832,-0.0624510236084461,0.0355423428118229,-0.0871753543615341,0.0003091689432040,0.0220230016857386,-0.0410143658518791,0.0241274237632751,-0.0009748992160894,-0.2452993094921112,-0.0488050878047943,0.0397039204835892,-0.0329523794353008,-0.3686119616031647,0.0035476114135236,0.0823000818490982));
res += mul(Get(s4,dx,dy), float4x4(0.0726092383265495,-0.0650871917605400,-0.0592838115990162,0.0352870188653469,-0.0553785376250744,0.1574629545211792,-0.1356925815343857,-0.1058955341577530,0.0472255907952785,-0.0721579268574715,-0.0048510571941733,-0.1772223711013794,-0.0864311531186104,0.1942306309938431,0.0326387435197830,-0.1782065927982330));
res += mul(Get(s5,dx,dy), float4x4(-0.0062189977616072,-0.2088165730237961,-0.0669365599751472,0.0650886371731758,-0.0431067012250423,0.0098500931635499,0.0531704612076283,-0.0894589275121689,0.0087278792634606,0.0831866115331650,0.0172292478382587,0.0259783547371626,0.1173808425664902,-0.0340414717793465,0.1178424060344696,0.0097439186647534));
res = max(float4(0, 0, 0, 0), res) + float4(-0.6890895962715149,0.9648580551147461,0.9815209507942200,-0.7994273900985718) * min(float4(0, 0, 0, 0), res);
return res;
}