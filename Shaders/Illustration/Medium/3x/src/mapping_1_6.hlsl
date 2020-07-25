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
float4 res = float4(-0.0445742122828960,-0.0258701294660568,-0.0923485383391380,-1.0791923999786377);
res += mul(Get(s0,-dx,-dy), float4x4(-0.0399812608957291,0.0935731381177902,-0.2174253016710281,0.3248437941074371,-0.0499331243336201,0.1594952195882797,-0.0961632728576660,-0.1862580478191376,-0.2142352759838104,0.0169359631836414,0.0813207253813744,-0.0649663582444191,-0.0339777320623398,-0.0143728274852037,-0.0307166930288076,-0.1488062143325806));
res += mul(Get(s1,-dx,-dy), float4x4(-0.1224629059433937,-0.0097742173820734,-0.1614959239959717,0.0271081794053316,-0.1569204330444336,0.2194128781557083,-0.2198316156864166,0.1412129402160645,-0.0320265963673592,0.1445538997650146,0.0330465324223042,-0.2408039420843124,0.0163518097251654,-0.0015288571594283,0.0880328714847565,-0.0184286609292030));
res += mul(Get(s2,-dx,-dy), float4x4(0.2612595856189728,0.0271183773875237,0.1764822751283646,-0.0081773325800896,-0.0527734346687794,-0.2748901546001434,-0.1223819777369499,0.0301359258592129,0.1177471727132797,0.1801404803991318,-0.0575422830879688,-0.0909527763724327,0.0891363471746445,-0.2228007912635803,-0.3417587876319885,0.0102029889822006));
res += mul(Get(s3,-dx,-dy), float4x4(0.0798899680376053,-0.0642044469714165,-0.1395183652639389,0.1784647554159164,0.1371952593326569,-0.0655389875173569,0.0826504901051521,0.0957535430788994,-0.0021468396298587,0.0820271074771881,0.2125409692525864,0.0737340897321701,-0.0188281610608101,0.3333815038204193,0.1652239561080933,0.2750726342201233));
res += mul(Get(s4,-dx,-dy), float4x4(0.0748733505606651,0.0453071705996990,-0.0192252527922392,-0.0710625872015953,0.1234950199723244,0.1308845281600952,0.2268387228250504,0.0579844191670418,-0.0026387337129563,0.1901380121707916,0.1984053552150726,0.0342620760202408,0.0570061132311821,-0.0114877633750439,-0.2565918862819672,-0.0513413175940514));
res += mul(Get(s5,-dx,-dy), float4x4(0.2563700079917908,0.0808071047067642,0.1315986067056656,-0.0858158692717552,0.0106740659102798,-0.1032235473394394,-0.0151576111093163,0.1943715214729309,-0.0938503667712212,0.0040886239148676,-0.0118175670504570,0.0873757600784302,-0.0177698154002428,0.1924770623445511,-0.1082762405276299,0.1858752369880676));
res += mul(Get(s0,-dx,0), float4x4(-0.1439974606037140,-0.0989567041397095,0.2273348122835159,0.7576138377189636,0.3131596446037292,-0.1383935064077377,0.2240580618381500,-0.0952575132250786,0.0687240585684776,-0.1239618137478828,0.0551269836723804,0.2102441191673279,-0.1732116043567657,-0.0960494577884674,-0.2597666382789612,0.2693274021148682));
res += mul(Get(s1,-dx,0), float4x4(-0.1416677534580231,-0.0870869383215904,-0.5503654479980469,0.1148653551936150,-0.0178246106952429,0.1509144306182861,0.3667849898338318,-0.3708363771438599,0.1445191502571106,-0.0966676399111748,0.2863790094852448,0.2393184453248978,0.0853547900915146,0.0093048037961125,0.0348220691084862,0.5379718542098999));
res += mul(Get(s2,-dx,0), float4x4(-0.0771792680025101,0.0121759679168463,0.2561923563480377,-0.6379537582397461,-0.0369734764099121,-0.0278175454586744,-0.1384685039520264,-0.1017598733305931,-0.0841047465801239,-0.0357439666986465,0.0182226691395044,0.2323154807090759,-0.3003244400024414,0.2320155352354050,0.0303158704191446,0.9299393296241760));
res += mul(Get(s3,-dx,0), float4x4(-0.2447159737348557,0.4214739799499512,-0.0118546420708299,-0.0337138697504997,-0.1857511103153229,0.0268073081970215,0.5284953117370605,-0.4455093443393707,-0.1546034365892410,-0.0528316348791122,-0.0337414890527725,0.7047030329704285,0.1462256163358688,-0.1122888699173927,0.0500973202288151,0.5336307883262634));
res += mul(Get(s4,-dx,0), float4x4(0.0231594983488321,-0.0386198982596397,-0.1301343142986298,-0.3060718178749084,-0.1926370263099670,0.0688906311988831,-0.0502741634845734,-0.0534185357391834,-0.2509604990482330,-0.2432610541582108,-0.2319016605615616,-0.0063212262466550,-0.1891946345567703,0.1670907139778137,-0.3538356423377991,-0.2637932896614075));
res += mul(Get(s5,-dx,0), float4x4(-0.3103110790252686,0.0977488234639168,-0.1626639217138290,0.4165589511394501,0.1638228297233582,0.1839815080165863,0.0537227690219879,0.1521203517913818,0.1595222204923630,-0.1279418319463730,-0.1595539450645447,-0.2125066667795181,-0.0065860445611179,-0.1126029342412949,0.4160969257354736,-0.4930165112018585));
res += mul(Get(s0,-dx,dy), float4x4(0.1912049353122711,-0.1259312927722931,-0.1081885471940041,0.3949577808380127,-0.2087313532829285,-0.1855085939168930,0.0209774579852819,0.0322642475366592,0.3291497528553009,0.3603888452053070,0.1254591941833496,-0.2829266190528870,0.2712505161762238,-0.0039335056208074,-0.2318220287561417,0.0713824182748795));
res += mul(Get(s1,-dx,dy), float4x4(-0.0838031321763992,-0.0903642922639847,-0.1996006071567535,-0.0128509048372507,0.1599172949790955,-0.0803892239928246,0.2676646113395691,-0.0193064324557781,-0.1466772556304932,-0.2801313400268555,-0.1379949599504471,0.1771726757287979,-0.1472078114748001,0.0406286343932152,0.0056178770028055,-0.1168131306767464));
res += mul(Get(s2,-dx,dy), float4x4(0.0379972383379936,-0.1398153454065323,0.1094038337469101,0.1075814440846443,-0.0330242514610291,-0.1088093742728233,-0.3046330511569977,0.1207460314035416,0.0369279161095619,-0.0814486816525459,-0.1773359775543213,-0.1890702545642853,-0.0752967000007629,0.1231557652354240,-0.2606481611728668,0.0757376030087471));
res += mul(Get(s3,-dx,dy), float4x4(0.1535506993532181,-0.1181210651993752,-0.0940983146429062,0.0731432363390923,0.1682434231042862,0.1217044517397881,-0.0374139919877052,0.0939946174621582,0.2655847370624542,-0.1065383255481720,-0.1768607646226883,0.0244733281433582,-0.0454921163618565,0.0790212824940681,0.0271023754030466,0.0010676297824830));
res += mul(Get(s4,-dx,dy), float4x4(0.1734870523214340,-0.0035027756821364,-0.1174009218811989,-0.1606724411249161,0.0037383262533695,0.0292874667793512,0.0323013402521610,0.2157806158065796,-0.1327299028635025,-0.1538477838039398,-0.1732816100120544,0.2299168854951859,-0.2008061558008194,-0.0516621582210064,-0.0698840692639351,0.1541625112295151));
res += mul(Get(s5,-dx,dy), float4x4(0.0600910782814026,-0.0335205979645252,-0.2415919005870819,-0.0068736514076591,-0.0531004406511784,0.2314489334821701,0.2155691087245941,0.0591046996414661,-0.1298761516809464,0.0171019155532122,-0.0946728661656380,0.1300271749496460,0.1570579558610916,-0.0262631867080927,0.1145203262567520,0.0904617533087730));
res += mul(Get(s0,0,-dy), float4x4(-0.0469476692378521,0.1185557693243027,-0.2458828091621399,0.1210502460598946,0.1080405563116074,0.1106411591172218,-0.1927158832550049,0.0306944958865643,-0.1284023821353912,-0.0153835862874985,0.0091117313131690,-0.0770253837108612,0.1151591986417770,-0.3674809634685516,0.0016100560314953,0.0238477755337954));
res += mul(Get(s1,0,-dy), float4x4(0.2370645254850388,-0.2224596291780472,0.1481389403343201,0.0529155433177948,-0.1305536627769470,0.0939209908246994,-0.0386661067605019,0.0132271628826857,-0.1163053885102272,-0.1155273765325546,0.1012672632932663,0.0389944091439247,0.1217994689941406,-0.0415360443294048,0.3165148496627808,-0.1806861311197281));
res += mul(Get(s2,0,-dy), float4x4(0.0983204022049904,-0.2061799764633179,-0.0027431100606918,0.0337876603007317,-0.0410174578428268,-0.1657360494136810,0.1913873702287674,-0.0119633637368679,0.0924768373370171,0.1356384307146072,-0.1376077383756638,0.1139145791530609,0.2542980015277863,-0.2508379518985748,-0.0684259012341499,-0.0494231358170509));
res += mul(Get(s3,0,-dy), float4x4(-0.2102626562118530,-0.3593371510505676,0.2191931158304214,-0.0259383171796799,0.0106198312714696,-0.0896397829055786,-0.1254478394985199,0.2020206451416016,-0.2294335812330246,0.1347227990627289,-0.3061176240444183,0.1763237863779068,0.1306649744510651,0.1240057721734047,-0.2823702394962311,0.0181135293096304));
res += mul(Get(s4,0,-dy), float4x4(-0.1654491126537323,0.0053811878897250,-0.3680748045444489,-0.1117722392082214,-0.0300517715513706,-0.0886515974998474,-0.2491656690835953,0.0984165966510773,0.3007239699363708,-0.0867123976349831,-0.0583146363496780,-0.0239106900990009,0.2235422730445862,0.0490854158997536,-0.1825983077287674,-0.3203117251396179));
res += mul(Get(s5,0,-dy), float4x4(0.1599956303834915,0.0431595444679260,-0.0613180398941040,-0.0553600415587425,-0.1724832504987717,0.3406594097614288,-0.5173502564430237,0.0763523653149605,-0.0040239910595119,0.0230202730745077,-0.1747632622718811,0.1042348295450211,0.1310710459947586,-0.1117242798209190,-0.2015526443719864,-0.1507558673620224));
res += mul(Get(s0,0,0), float4x4(-0.2345085591077805,0.4375931918621063,-0.0745644643902779,0.7814010381698608,-0.0634656250476837,0.2640199661254883,0.0182244535535574,0.0133454529568553,0.2040578722953796,-0.1199856325984001,0.1537403315305710,0.3599582016468048,-0.0783599615097046,0.4496483802795410,0.2967457175254822,-0.0638456046581268));
res += mul(Get(s1,0,0), float4x4(0.1161828860640526,0.0798902362585068,1.0649659633636475,0.2411120682954788,0.0663673579692841,0.3835752308368683,0.0705365687608719,0.2967880070209503,-0.3728244304656982,0.0937282592058182,-0.5263107419013977,-0.1265319436788559,-0.0175509378314018,0.1856375634670258,0.0608033314347267,0.3773610293865204));
res += mul(Get(s2,0,0), float4x4(-0.4573087096214294,0.0969191342592239,0.3934015929698944,-0.1454988867044449,-0.1894905567169189,0.4650617539882660,0.7015234827995300,0.0342286601662636,-0.1470118016004562,0.0667718872427940,0.1003061383962631,0.1309608966112137,0.3327662646770477,-0.2015843987464905,-0.2454999983310699,0.3467104136943817));
res += mul(Get(s3,0,0), float4x4(0.3302036225795746,0.2493193596601486,-0.1660277098417282,0.0062177116051316,-0.1138781234622002,-0.6417252421379089,-0.2875205278396606,-0.0782874897122383,-0.3111931979656219,-0.2694592773914337,0.1040369123220444,0.4891400635242462,0.0715679377317429,-0.2457890808582306,-0.1135877147316933,0.2149012088775635));
res += mul(Get(s4,0,0), float4x4(0.5875720381736755,-0.0718444138765335,0.4941911995410919,-0.2955203950405121,0.4465261697769165,0.0211163833737373,0.3230117857456207,-0.1633712053298950,0.3957591950893402,0.1042581796646118,-0.0883141681551933,-0.4038281738758087,-0.2016325443983078,0.3297996222972870,0.5474793314933777,0.1150396838784218));
res += mul(Get(s5,0,0), float4x4(-0.1315819770097733,-0.0606760345399380,0.2641168832778931,0.0724324136972427,0.0058127292431891,-0.9940074682235718,0.2892492711544037,-0.3938224315643311,0.1984266340732574,0.1073916181921959,0.4084566235542297,0.1586430519819260,-0.0127963824197650,-0.3102946579456329,-0.4295162260532379,0.2156909257173538));
res += mul(Get(s0,0,dy), float4x4(0.0423306971788406,-0.2122382074594498,0.1970673203468323,0.2259613573551178,-0.0201677661389112,0.0247299559414387,-0.1726072132587433,0.0220486037433147,-0.3715132176876068,-0.1814344376325607,0.0896111354231834,0.1378073096275330,-0.3217039108276367,0.0520493760704994,-0.1182171255350113,-0.2912918329238892));
res += mul(Get(s1,0,dy), float4x4(-0.3495515286922455,-0.0615702308714390,-0.0596040375530720,-0.2636266946792603,0.1396559178829193,-0.0908151417970657,0.3804796636104584,-0.1467486619949341,0.2632307112216949,0.2551858127117157,0.1049255728721619,-0.1848624497652054,0.1875819116830826,-0.0088417576625943,0.0229746699333191,0.0232998337596655));
res += mul(Get(s2,0,dy), float4x4(0.1300700157880783,0.1625484079122543,-0.4896232187747955,0.2215934544801712,0.0925597548484802,-0.0453295558691025,0.0917326286435127,-0.0648798793554306,0.1579171121120453,-0.3966660797595978,0.1270615458488464,-0.0324856415390968,-0.1504353135824203,0.0411920137703419,-0.0536595433950424,0.0440814644098282));
res += mul(Get(s3,0,dy), float4x4(-0.0743111968040466,-0.0659469440579414,0.1442275196313858,0.0491995215415955,0.1556227952241898,-0.0147397825494409,-0.0358676053583622,0.1083616241812706,0.0280824210494757,0.0760079994797707,0.1781407892704010,0.0057702958583832,-0.1016458645462990,-0.1498525589704514,0.0104359593242407,-0.0105000277981162));
res += mul(Get(s4,0,dy), float4x4(0.0669206678867340,-0.0142316333949566,-0.1808047443628311,0.0766382813453674,-0.1326580196619034,0.1370353549718857,-0.0044679217971861,-0.0433658733963966,-0.2344536185264587,0.1621852368116379,0.2285566180944443,0.0953268110752106,0.2917336523532867,-0.2250546962022781,0.1024458110332489,-0.2267550975084305));
res += mul(Get(s5,0,dy), float4x4(-0.2175128459930420,-0.0909574031829834,-0.0127004869282246,0.0352948978543282,-0.1744462698698044,0.1396999210119247,0.1589762270450592,-0.0930354818701744,-0.0106764826923609,-0.3132555782794952,0.1643589735031128,0.0878314524888992,-0.4488781988620758,0.1341145485639572,0.1135889440774918,0.0249298326671124));
res += mul(Get(s0,dx,-dy), float4x4(-0.0278083402663469,-0.1043298989534378,-0.0953022763133049,-0.0468986704945564,0.2351128607988358,-0.1755803078413010,0.0008803400560282,0.0681223496794701,0.0189700573682785,-0.0092518869787455,0.1041465029120445,0.0843514427542686,-0.0095739951357245,0.0270160827785730,-0.1274170428514481,0.1401455551385880));
res += mul(Get(s1,dx,-dy), float4x4(0.0644136369228363,-0.1910660415887833,-0.1017958596348763,-0.1330563277006149,0.1856599748134613,-0.3015518784523010,0.0000647967826808,0.0392373465001583,0.1529618054628372,-0.0160038899630308,0.0823417305946350,0.0826950892806053,-0.0675498694181442,-0.0080331675708294,0.0818615853786469,-0.0983306989073753));
res += mul(Get(s2,dx,-dy), float4x4(-0.1172178238630295,0.0048099001869559,-0.0548938810825348,0.0834776386618614,0.3548531234264374,0.0689758583903313,0.0381359793245792,0.0791461467742920,-0.3552416563034058,-0.1564730107784271,0.2961892485618591,-0.0026801552157849,-0.0082848099991679,-0.0972559601068497,0.0557634904980659,0.0820830240845680));
res += mul(Get(s3,dx,-dy), float4x4(0.2313026487827301,-0.2042539715766907,0.0975383967161179,0.0178146194666624,-0.1083511784672737,0.1154648214578629,-0.0545610636472702,0.0262434147298336,0.0703897774219513,0.1602129042148590,0.2043540030717850,0.0960500910878181,0.1585497856140137,-0.0331675633788109,0.0058795511722565,-0.0552672557532787));
res += mul(Get(s4,dx,-dy), float4x4(0.0112710492685437,-0.1002016812562943,0.0724921971559525,0.0154906874522567,-0.1706898808479309,-0.0192548576742411,-0.0774924457073212,0.1011614277958870,-0.1095908656716347,-0.0554279759526253,0.1539793759584427,0.0373163782060146,-0.0578703507781029,-0.0047591947950423,0.1967510133981705,0.0967219695448875));
res += mul(Get(s5,dx,-dy), float4x4(-0.1624858379364014,0.0706569403409958,-0.0466097556054592,-0.0873997509479523,0.1210321635007858,0.2451236844062805,0.0735060721635818,-0.0533045530319214,0.1515336483716965,0.0079602468758821,0.2805240154266357,0.0503668412566185,0.0555593259632587,0.1459306180477142,0.2171859145164490,0.1119407936930656));
res += mul(Get(s0,dx,0), float4x4(-0.0055686016567051,-0.0378725975751877,-0.0869143381714821,0.1601191908121109,-0.3857928216457367,-0.1703261286020279,0.2615642547607422,-0.1838119029998779,0.1343525648117065,0.0038736714050174,0.1341724097728729,-0.1806838810443878,0.1052142903208733,-0.0398970581591129,-0.0002511594793759,-0.1328497976064682));
res += mul(Get(s1,dx,0), float4x4(-0.1036581173539162,0.1148555129766464,0.2354163825511932,0.0065182801336050,-0.3096130788326263,-0.0989852696657181,0.2563493251800537,0.1418119668960571,0.0750351324677467,-0.2460940033197403,0.2557747662067413,0.0061853267252445,0.1101239919662476,0.0919767171144485,0.0197269618511200,0.1569263488054276));
res += mul(Get(s2,dx,0), float4x4(-0.2501335144042969,0.2573896646499634,0.1230104044079781,0.1649272143840790,-0.1482086777687073,-0.0411543734371662,0.0123424651101232,-0.0474847145378590,0.0737203285098076,0.0308563001453876,-0.2384069412946701,0.0508965700864792,0.0618002675473690,0.2221080660820007,0.1346648186445236,0.2678088843822479));
res += mul(Get(s3,dx,0), float4x4(-0.0880295336246490,-0.1246521919965744,-0.0452004782855511,-0.1764175444841385,0.0089964903891087,0.3249515295028687,0.2046217769384384,-0.0080359987914562,0.0743564367294312,-0.1691018342971802,-0.2339950054883957,0.0493349917232990,-0.1501716971397400,-0.0566314794123173,-0.1846612840890884,-0.0456722080707550));
res += mul(Get(s4,dx,0), float4x4(-0.2787759602069855,-0.0932061970233917,0.2161740958690643,-0.0625351220369339,0.2513564527034760,-0.1721883863210678,0.0258065480738878,-0.0833969190716743,0.1283862441778183,0.2980006933212280,-0.2032112777233124,-0.0050493050366640,0.2270940989255905,0.0216319467872381,-0.0948472544550896,-0.0279046837240458));
res += mul(Get(s5,dx,0), float4x4(-0.2103425115346909,-0.1285991072654724,0.2125546485185623,0.1449540555477142,-0.0460340455174446,0.0814192965626717,-0.0232895370572805,-0.0119475079700351,-0.0228279847651720,0.3451823592185974,-0.0048088305629790,-0.0706124678254128,0.1490144282579422,0.0059284120798111,-0.1826374083757401,0.1561843454837799));
res += mul(Get(s0,dx,dy), float4x4(-0.1558543741703033,0.1606547385454178,0.0748318880796432,-0.0605180412530899,0.1182176098227501,0.2544264197349548,0.0314152203500271,0.0813372805714607,-0.1065942719578743,0.0435329563915730,0.1726369857788086,0.0887433141469955,0.0511561669409275,-0.0119453584775329,-0.1692796051502228,0.0358330048620701));
res += mul(Get(s1,dx,dy), float4x4(0.1772124469280243,0.3865199685096741,-0.0328036844730377,0.0288279931992292,-0.0318474620580673,-0.2279772758483887,0.0570644550025463,0.0740916505455971,0.0616212934255600,0.2027930766344070,0.0857119560241699,-0.0125864278525114,-0.1080831289291382,-0.1117971614003181,-0.1130516603589058,-0.0581749938428402));
res += mul(Get(s2,dx,dy), float4x4(0.3445785045623779,-0.0380594283342361,-0.1509841680526733,-0.0685101225972176,0.1031959727406502,0.1448939740657806,0.0059932698495686,0.1084472760558128,0.0619106926023960,0.2153593003749847,-0.0646715238690376,0.1473718583583832,-0.1364930421113968,-0.0601952411234379,0.1504563242197037,-0.0171505827456713));
res += mul(Get(s3,dx,dy), float4x4(-0.1261808276176453,0.2296573668718338,-0.2620048224925995,-0.1427998542785645,0.0167859867215157,-0.0209660902619362,-0.0765377804636955,0.1550887823104858,0.1006846129894257,-0.0332637168467045,0.0457777418196201,-0.0831638202071190,0.0092471707612276,-0.0496251657605171,-0.0518234185874462,-0.0764880999922752));
res += mul(Get(s4,dx,dy), float4x4(-0.1258528232574463,0.2098333388566971,0.1299513131380081,-0.0587517246603966,-0.3543352186679840,-0.0734331086277962,0.0079651195555925,0.0216905977576971,-0.1156794354319572,-0.2472648918628693,-0.0192277263849974,-0.0918039306998253,-0.3284203410148621,-0.0556156150996685,0.1305845081806183,0.0446435660123825));
res += mul(Get(s5,dx,dy), float4x4(0.6143537759780884,-0.0045125032775104,-0.2933660149574280,-0.1186432689428329,0.2163110375404358,-0.1644711792469025,0.0867012068629265,0.0925543606281281,-0.2185368388891220,-0.0082401661202312,0.0493572168052197,-0.0240163188427687,-0.0827796533703804,0.0663711652159691,0.0615254528820515,0.0099131809547544));
res = max(float4(0, 0, 0, 0), res) + float4(-0.5252864360809326,-0.8228511214256287,0.7928659319877625,0.0054407645948231) * min(float4(0, 0, 0, 0), res);
return res;
}
