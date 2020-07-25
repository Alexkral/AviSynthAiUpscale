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
float4 res = float4(-0.0018966472707689,0.0462351255118847,0.1053046658635139,0.0081824297085404);
res += mul(Get(s0,-dx,-dy), float4x4(-0.1139705777168274,-0.0927586629986763,-0.1690351068973541,-0.0740906223654747,-0.2153670638799667,-0.0177572388201952,-0.0524196699261665,-0.0168974585831165,-0.0949976444244385,-0.0922350957989693,-0.1172406673431396,0.0005293752183206,0.0720309168100357,0.0909456238150597,0.0854059308767319,-0.0128451790660620));
res += mul(Get(s1,-dx,-dy), float4x4(0.0397748835384846,-0.0519172027707100,0.0134043199941516,-0.0264119207859039,-0.0709196105599403,-0.0482737496495247,0.0937046036124229,-0.0652936473488808,0.1269623339176178,0.0004928048001602,0.0059757819399238,-0.0270061865448952,0.0923352241516113,-0.0661969184875488,0.0243494939059019,-0.0386514626443386));
res += mul(Get(s2,-dx,-dy), float4x4(-0.0119819426909089,0.0921818166971207,0.1228375807404518,0.0524407513439655,-0.1596651822328568,-0.0491183027625084,-0.0269781667739153,0.1041612625122070,-0.0860584378242493,0.0699043050408363,0.0717110782861710,-0.0237105581909418,-0.0003669744182844,0.0226478520780802,0.1200587823987007,0.0024245867971331));
res += mul(Get(s3,-dx,-dy), float4x4(0.2705309689044952,-0.2182212471961975,-0.0026388198602945,-0.0248365793377161,-0.2328239232301712,0.1700593531131744,0.0105772726237774,0.1390599012374878,-0.1421563178300858,-0.0302301011979580,-0.2346512824296951,0.0301684718579054,-0.3071252703666687,-0.1643828302621841,-0.3851938843727112,-0.0739291608333588));
res += mul(Get(s4,-dx,-dy), float4x4(-0.2101512700319290,0.0287831760942936,0.2576397657394409,0.0156578496098518,-0.0854596048593521,-0.0713129863142967,-0.0084551842883229,-0.0239142794162035,-0.0194916669279337,0.1202855184674263,0.1563418805599213,-0.0363590121269226,0.0409361906349659,-0.1367744207382202,-0.1307120025157928,-0.0435662716627121));
res += mul(Get(s5,-dx,-dy), float4x4(0.1538845002651215,0.0672808364033699,-0.0442373789846897,-0.0091656325384974,-0.1686057895421982,-0.0262660644948483,-0.0987955331802368,-0.0304525494575500,-0.0786348879337311,0.0344339981675148,0.0216928403824568,0.0849290937185287,0.0217740908265114,0.0896972939372063,0.0968116894364357,-0.0431098751723766));
res += mul(Get(s0,-dx,0), float4x4(-0.2043418139219284,-0.1924160271883011,-0.3645151555538177,0.1494933068752289,0.0264394953846931,0.0409150458872318,-0.2181726098060608,0.2194874286651611,-0.1475355476140976,-0.0317506678402424,-0.0937140956521034,0.0579472444951534,-0.0975902825593948,0.1548375934362411,-0.0279644206166267,0.1234559044241905));
res += mul(Get(s1,-dx,0), float4x4(-0.0454877726733685,-0.0749544650316238,0.0253514554351568,0.1649417579174042,0.3406618833541870,-0.0313931629061699,0.0531763806939125,0.1673293858766556,-0.0402055308222771,0.0187311097979546,0.0431978255510330,-0.0068328436464071,-0.0100849838927388,-0.0389898046851158,-0.0601435191929340,-0.0548079758882523));
res += mul(Get(s2,-dx,0), float4x4(0.1448971033096313,0.1428283154964447,0.2131548672914505,0.3310757279396057,-0.1492301374673843,-0.0690713301301003,-0.1312815994024277,0.0485615506768227,-0.2922933697700500,-0.0925057083368301,-0.1273397803306580,-0.0610104836523533,0.0007134884945117,-0.0840218886733055,0.2296946495771408,-0.0541677288711071));
res += mul(Get(s3,-dx,0), float4x4(0.0165289565920830,0.1509679406881332,0.1309645771980286,0.2119828313589096,0.0099126454442739,-0.0457276776432991,0.0586827248334885,-0.0512452758848667,-0.1661399155855179,-0.0819785594940186,-0.1272406876087189,0.0595505796372890,0.1579641699790955,-0.1263768672943115,0.0014255788410082,0.1733057498931885));
res += mul(Get(s4,-dx,0), float4x4(-0.0380422063171864,0.1196095645427704,-0.0685336589813232,-0.1043922230601311,0.0137335788458586,0.0057470016181469,0.0805860236287117,-0.0282244104892015,-0.1490622162818909,-0.1060626134276390,0.0724293515086174,0.0570134855806828,-0.1084034889936447,-0.0095346858724952,0.1023236885666847,-0.0942442044615746));
res += mul(Get(s5,-dx,0), float4x4(-0.2992628812789917,0.0714253857731819,0.1589639782905579,-0.1445166319608688,-0.2262592464685440,0.0076397843658924,-0.1411539316177368,-0.0500254966318607,-0.0568243749439716,-0.1130619570612907,-0.0805715918540955,0.2126984894275665,-0.3687139153480530,0.0339625403285027,-0.1459262818098068,0.1853598803281784));
res += mul(Get(s0,-dx,dy), float4x4(-0.0763228386640549,0.0643342733383179,0.0371212549507618,0.0150740956887603,0.1610675156116486,-0.0621931813657284,0.0050305644981563,0.0472508147358894,0.0728087574243546,0.0400613807141781,0.0356315709650517,0.0656012892723083,0.0108165470883250,-0.0171028282493353,-0.0825550854206085,0.0235484931617975));
res += mul(Get(s1,-dx,dy), float4x4(-0.0880802646279335,-0.0366492681205273,-0.0408434718847275,0.0194315351545811,0.0896454900503159,0.0358463265001774,0.0910133346915245,0.0927798300981522,-0.1220712661743164,-0.0413494221866131,-0.0066877603530884,-0.0179691016674042,-0.1247135251760483,-0.0045588896609843,0.0597672462463379,0.0202041696757078));
res += mul(Get(s2,-dx,dy), float4x4(-0.2486442178487778,0.0522739849984646,-0.0894936025142670,0.0545027740299702,-0.0968462601304054,0.0318998247385025,0.0698434188961983,0.0417218916118145,-0.0552479512989521,-0.0909826904535294,0.0828995481133461,-0.2296595573425293,-0.0664204731583595,-0.0634399354457855,-0.0375157445669174,-0.0502228923141956));
res += mul(Get(s3,-dx,dy), float4x4(-0.1544325947761536,0.1530404239892960,0.2900333106517792,0.0641705170273781,0.2191999107599258,0.0481350421905518,0.0385877378284931,0.1513559669256210,-0.1400581300258636,0.0284387581050396,-0.0161317661404610,0.0604332610964775,-0.1253570020198822,0.0489284284412861,-0.0801045596599579,-0.0472689718008041));
res += mul(Get(s4,-dx,dy), float4x4(-0.0907434001564980,-0.1353697478771210,0.0166940707713366,-0.2168094068765640,-0.0596963129937649,0.0156003311276436,0.0309751983731985,0.0120233008638024,-0.1057726740837097,0.0303228255361319,0.1307530403137207,0.0362689122557640,0.1473221629858017,0.0456428937613964,-0.0995760262012482,0.0579359903931618));
res += mul(Get(s5,-dx,dy), float4x4(0.3306305706501007,0.0898965448141098,0.0234855841845274,0.0041755805723369,-0.0814245343208313,-0.0490294694900513,-0.1017192453145981,-0.0309936087578535,-0.1111705973744392,-0.0965764150023460,-0.0045609869994223,0.0076528117060661,-0.2302049100399017,0.0091611873358488,-0.0442291460931301,0.1228481531143188));
res += mul(Get(s0,0,-dy), float4x4(0.0079168723896146,0.0108613707125187,-0.1520869880914688,-0.1632316112518311,-0.0760634616017342,0.1023129448294640,0.0584235526621342,0.0851414278149605,0.0088926497846842,-0.0653620064258575,-0.0958359539508820,0.0868141129612923,0.1608921587467194,-0.0531757213175297,0.0510683804750443,0.0308671928942204));
res += mul(Get(s1,0,-dy), float4x4(-0.0475690625607967,-0.0123712243512273,-0.1393705457448959,-0.1302408725023270,0.0685596093535423,0.1720788627862930,0.0561753995716572,-0.0387781113386154,0.0143189653754234,0.0540131367743015,0.0107405781745911,0.1223836392164230,-0.0528654977679253,0.0436416789889336,-0.0639873743057251,0.0880287513136864));
res += mul(Get(s2,0,-dy), float4x4(-0.2572416961193085,-0.0274762604385614,-0.0372926704585552,0.0351788140833378,-0.0416629165410995,-0.0291035845875740,0.1197896003723145,-0.0621976517140865,-0.2658585309982300,0.2979356646537781,0.0426732264459133,-0.0364898853003979,0.0066678905859590,0.1232126504182816,-0.0685137510299683,-0.1370608806610107));
res += mul(Get(s3,0,-dy), float4x4(0.0292862690985203,0.0646025165915489,0.0186523087322712,0.1024410128593445,-0.2685004472732544,-0.1669007986783981,0.3179343938827515,0.2078587859869003,0.1425067931413651,0.0982361957430840,0.0825908333063126,0.0339513495564461,0.0170633401721716,0.3101707994937897,0.0254764519631863,-0.1166975721716881));
res += mul(Get(s4,0,-dy), float4x4(-0.4043629467487335,0.1534690111875534,-0.0627867653965950,-0.2043967545032501,0.0353090465068817,0.0322545506060123,0.0336344204843044,-0.1489150673151016,-0.3003491461277008,0.1289954334497452,-0.0872388407588005,-0.2074525356292725,0.0156933553516865,-0.0364772789180279,0.0959949344396591,-0.1314067542552948));
res += mul(Get(s5,0,-dy), float4x4(0.4064675271511078,-0.2295144349336624,0.0363804437220097,0.0333717800676823,-0.0929262414574623,0.0857301428914070,-0.4330109655857086,-0.1532678604125977,-0.1948250681161880,0.0563478618860245,-0.0304160825908184,-0.0126607986167073,0.0305753089487553,-0.1316561400890350,-0.0482128001749516,-0.0188975892961025));
res += mul(Get(s0,0,0), float4x4(-0.2063451558351517,0.0509818419814110,-0.0445319674909115,0.2355182170867920,0.1136447936296463,-0.1051612272858620,0.0638347938656807,-0.1512013971805573,-0.2571513652801514,-0.2157948017120361,-0.4643843472003937,-0.0312747061252594,0.0246114432811737,0.1161205619573593,0.0099508119747043,0.0752833113074303));
res += mul(Get(s1,0,0), float4x4(0.0021222066134214,-0.0103300893679261,0.1549087166786194,-0.0762905403971672,-0.1226584166288376,0.0744085088372231,-0.0698489770293236,0.1930807530879974,-0.6604287624359131,0.0339810624718666,-0.2087365537881851,-0.1600468754768372,0.1040797829627991,-0.1614605337381363,-0.0794060528278351,0.0130566870793700));
res += mul(Get(s2,0,0), float4x4(0.1309860497713089,-0.0199846606701612,-0.3160925507545471,0.1933360248804092,-0.0085186418145895,0.2585333287715912,0.3199505209922791,0.0654524490237236,0.0848260521888733,-0.2537751495838165,0.0824261009693146,0.3512885272502899,0.0790472701191902,-0.3771694004535675,0.1192743331193924,0.0203094538301229));
res += mul(Get(s3,0,0), float4x4(0.4245633780956268,-0.2820616364479065,-0.2120133340358734,-0.2481368035078049,0.2688318789005280,-0.1797266006469727,0.0158717390149832,-0.1252080202102661,0.0147460913285613,0.1319990903139114,0.0292952787131071,0.2688836157321930,0.0380166582763195,0.0555224418640137,-0.0316198319196701,-0.0927182435989380));
res += mul(Get(s4,0,0), float4x4(-0.2917411923408508,-0.2270967513322830,-0.1700650602579117,-0.0967625975608826,0.3179783523082733,0.0637770071625710,0.0052893231622875,-0.2212637662887573,-0.1170100495219231,0.0831407085061073,-0.2386656552553177,-0.1548537164926529,0.1680991351604462,-0.0935388654470444,-0.1837228238582611,-0.2755073904991150));
res += mul(Get(s5,0,0), float4x4(-0.0572487600147724,-0.0454584211111069,0.0075943986885250,-0.1224604621529579,-0.3555046319961548,-0.1090931445360184,-0.4177157282829285,0.0913963094353676,-0.0971782356500626,0.1048579961061478,-0.0569428391754627,0.1035526692867279,-0.1260607838630676,0.2859294712543488,0.4346801936626434,0.1449435353279114));
res += mul(Get(s0,0,dy), float4x4(0.0141683137044311,-0.1606732904911041,-0.1395197212696075,-0.1836812496185303,0.2383431494235992,0.0146436877548695,0.1957619935274124,0.1752009838819504,0.0730658397078514,-0.0441403090953827,-0.0563249699771404,0.0094581730663776,-0.1777417808771133,0.1603409647941589,-0.0620993599295616,0.1466524600982666));
res += mul(Get(s1,0,dy), float4x4(0.0060687311924994,0.0806285962462425,-0.0510054044425488,-0.0800836384296417,-0.1718564331531525,-0.1761839836835861,-0.1717606633901596,-0.0674565806984901,-0.3410769999027252,0.2032564431428909,-0.0260401405394077,-0.0392647422850132,0.0425198748707771,0.0233384165912867,-0.0077393036335707,0.1249190941452980));
res += mul(Get(s2,0,dy), float4x4(-0.2260672748088837,0.0369422547519207,0.0316354595124722,-0.1994463503360748,0.0833055153489113,-0.0996926426887512,-0.0192536059767008,-0.0612275786697865,0.1899323761463165,-0.0467984639108181,-0.1109348312020302,-0.0873469561338425,0.0284139104187489,-0.0435545369982719,0.1281690299510956,0.0468470975756645));
res += mul(Get(s3,0,dy), float4x4(0.0988257154822350,0.1066877767443657,-0.0573120154440403,-0.0437111780047417,0.1346691101789474,0.0056639071553946,0.0699852928519249,0.1953476965427399,-0.2043426930904388,0.0321073569357395,-0.0453148223459721,0.0726525112986565,-0.1014639884233475,0.0225078575313091,-0.1459830701351166,-0.0974470749497414));
res += mul(Get(s4,0,dy), float4x4(0.0540305003523827,0.1474564671516418,0.0265149362385273,-0.0060137175023556,-0.1249188482761383,0.0429660603404045,0.0134130148217082,-0.1071355119347572,0.0492549464106560,0.0563274547457695,0.2620393335819244,0.1490915119647980,0.0364002473652363,0.0198630876839161,0.1604031324386597,0.1059370487928391));
res += mul(Get(s5,0,dy), float4x4(0.1332782804965973,-0.0894130021333694,0.0482248216867447,0.1948843002319336,-0.1959602385759354,0.0586950406432152,-0.0591349564492702,-0.0313164480030537,-0.2349699288606644,0.0709776207804680,-0.0145823303610086,-0.1548942178487778,0.0519515685737133,0.0878313034772873,0.0188896674662828,0.0606693401932716));
res += mul(Get(s0,dx,-dy), float4x4(0.0267243720591068,0.2106655985116959,0.0090040657669306,-0.0648484081029892,-0.0925436466932297,0.0042646685615182,0.0578975193202496,0.1082766801118851,0.2426915317773819,-0.1003116071224213,-0.0788109079003334,-0.0689091831445694,0.0454463176429272,-0.0865026861429214,-0.0174537524580956,0.1978407055139542));
res += mul(Get(s1,dx,-dy), float4x4(0.0250175390392542,0.0185668896883726,-0.0853578671813011,-0.0270163435488939,-0.0223542526364326,-0.0153566244989634,0.0489298179745674,-0.0519539602100849,0.1702435463666916,-0.0982154384255409,-0.0335452780127525,-0.0092020044103265,0.2178176045417786,0.0285116657614708,-0.0009203444351442,0.0164585039019585));
res += mul(Get(s2,dx,-dy), float4x4(-0.0413184948265553,0.1101942658424377,-0.0525001399219036,-0.0095846373587847,-0.0118352249264717,0.0442720092833042,-0.0549928061664104,-0.0102461036294699,0.0130005050450563,0.2510759830474854,-0.1126665696501732,-0.3034369647502899,0.0347717851400375,-0.0536194145679474,0.0391235351562500,-0.0927000641822815));
res += mul(Get(s3,dx,-dy), float4x4(0.0182692557573318,-0.0171317216008902,0.0191035047173500,-0.0050187078304589,0.1622773855924606,-0.1992537528276443,-0.0418643429875374,-0.1329308599233627,-0.0625174194574356,0.1164116933941841,0.1247244179248810,0.0873008817434311,-0.0625742226839066,-0.0743575468659401,-0.1089942008256912,-0.0746834948658943));
res += mul(Get(s4,dx,-dy), float4x4(0.0886698290705681,0.0789187178015709,0.0826883763074875,-0.0943552479147911,-0.0716090500354767,0.1127981841564178,0.0842416360974312,-0.0669250786304474,-0.1914087980985641,0.1254516094923019,-0.1220087409019470,-0.1898531913757324,-0.0530596598982811,0.0315993763506413,0.0759382769465446,0.0636463463306427));
res += mul(Get(s5,dx,-dy), float4x4(-0.0594568364322186,-0.1338452994823456,-0.0184653867036104,0.0224793311208487,-0.0619523525238037,0.0815394371747971,0.0372076742351055,0.0865730121731758,0.0336006283760071,0.0819547846913338,0.0549275018274784,0.0741880387067795,0.1644066423177719,-0.0552326850593090,0.0015545233618468,-0.0773622021079063));
res += mul(Get(s0,dx,0), float4x4(-0.0132415806874633,0.0125295659527183,-0.0247298981994390,-0.1665863543748856,0.1082707419991493,-0.0540627650916576,0.0372105576097965,-0.0531887635588646,0.1090424358844757,-0.1519453972578049,-0.1114069819450378,-0.0931890457868576,-0.0499012395739555,-0.0479493923485279,-0.1751468926668167,0.0002170427906094));
res += mul(Get(s1,dx,0), float4x4(-0.0214385427534580,0.0182253308594227,0.0908115133643150,-0.0120699843391776,-0.0855421721935272,0.1648043394088745,0.0221967063844204,0.0272237099707127,-0.6507920622825623,0.0276657510548830,0.1489427983760834,-0.0153807839378715,-0.1272646784782410,0.0815558806061745,0.0510766133666039,0.1894734352827072));
res += mul(Get(s2,dx,0), float4x4(-0.2166581898927689,0.0078021264635026,-0.0295402426272631,0.1211723312735558,0.1784002780914307,-0.0922518968582153,-0.1099583208560944,-0.0632710531353951,-0.1447503417730331,0.0752898603677750,0.0541666857898235,0.1362782269716263,-0.0206583421677351,0.1049075201153755,0.0006316577200778,-0.1077817603945732));
res += mul(Get(s3,dx,0), float4x4(-0.0744537487626076,0.1487396359443665,0.0546909160912037,0.1166218593716621,0.1829252392053604,0.0810780301690102,0.0168735850602388,0.0466358512639999,0.0367818884551525,-0.0618390254676342,0.0397238023579121,-0.1104999855160713,-0.0941647440195084,-0.0410196892917156,-0.0187700167298317,-0.0439987294375896));
res += mul(Get(s4,dx,0), float4x4(0.0751628577709198,0.4107267856597900,0.0748530700802803,0.0422988645732403,-0.0793065950274467,0.0409453473985195,-0.1388336271047592,-0.1977415233850479,-0.1168730556964874,0.0474454984068871,0.1568039804697037,-0.0259327124804258,0.0178639516234398,0.0126529177650809,0.0134882964193821,0.0676142573356628));
res += mul(Get(s5,dx,0), float4x4(0.1346097290515900,-0.0797310322523117,-0.0714149400591850,-0.1790303587913513,-0.2782633900642395,0.3087781965732574,0.2005513012409210,0.1998456269502640,0.0608443580567837,-0.0983593538403511,-0.1578243523836136,-0.0597626864910126,0.1193001121282578,-0.0124953137710690,-0.0305170230567455,-0.0731271356344223));
res += mul(Get(s0,dx,dy), float4x4(-0.0416324064135551,-0.0051828753203154,0.0363818183541298,0.0478570759296417,0.1470578163862228,-0.0123403212055564,0.0121375545859337,-0.0160638187080622,0.2523739635944366,-0.0913149937987328,0.0608139671385288,0.0046992562711239,-0.0490006469190121,0.1284768432378769,0.0116660222411156,-0.0344923771917820));
res += mul(Get(s1,dx,dy), float4x4(-0.0568782091140747,-0.0083568599075079,0.0602890029549599,0.0395857393741608,-0.0615437775850296,0.1762575656175613,0.1030465662479401,-0.0387981086969376,-0.3695119023323059,0.0874104797840118,0.1433904170989990,0.3030542731285095,-0.0230600479990244,-0.0046762726269662,-0.0430694483220577,0.0571365728974342));
res += mul(Get(s2,dx,dy), float4x4(-0.0128244981169701,0.0503891706466675,-0.0957540571689606,0.1041469648480415,0.0282253418117762,-0.0094044506549835,-0.0121176894754171,0.0222082696855068,0.1057692989706993,0.0071204239502549,0.0912502557039261,-0.0359724573791027,-0.0185663942247629,0.0039580711163580,-0.0696908980607986,0.0325426608324051));
res += mul(Get(s3,dx,dy), float4x4(-0.0302410349249840,0.0983328670263290,0.0460193008184433,0.0107062980532646,0.0643314272165298,0.0229401476681232,-0.0805734992027283,0.0010491182329133,0.0129378447309136,0.1452962607145309,0.1891568154096603,0.0896414369344711,0.0765637382864952,0.0311160441488028,0.0798612534999847,-0.0316333733499050));
res += mul(Get(s4,dx,dy), float4x4(-0.1361427456140518,0.1946551203727722,0.0573564842343330,-0.0637069419026375,-0.1721832901239395,0.1750287115573883,0.0316954143345356,-0.1096170321106911,0.1198712885379791,0.0464941114187241,0.0098469937220216,-0.0948399379849434,0.0325438566505909,-0.0143735352903605,-0.0477739721536636,-0.0903421714901924));
res += mul(Get(s5,dx,dy), float4x4(0.0903502181172371,-0.0630821809172630,0.0344475768506527,-0.0753457099199295,-0.0519267395138741,-0.0846960023045540,-0.0569824911653996,-0.0341474153101444,-0.0391914770007133,0.0179216768592596,-0.0245402716100216,0.0544237792491913,0.1082103848457336,-0.0501338057219982,-0.0037520895712078,-0.0371291972696781));
res = max(float4(0, 0, 0, 0), res) + float4(0.0361920967698097,1.3715931177139282,-0.1186781674623489,1.9793025255203247) * min(float4(0, 0, 0, 0), res);
return res;
}
