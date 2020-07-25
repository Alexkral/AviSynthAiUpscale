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
float4 res = float4(-0.2214773595333099,-0.0354318544268608,0.0640082061290741,-0.0873057097196579);
res += mul(Get(s0,-dx,-dy), float4x4(0.0104985563084483,0.0459146350622177,-0.1007074937224388,0.6786112785339355,0.0114305363968015,0.0472534038126469,0.0126121509820223,0.4003472030162811,0.0230530872941017,-0.2179622650146484,-0.0291875582188368,-0.5195486545562744,-0.2520344257354736,0.0431929081678391,0.1018700376152992,-0.2443276196718216));
res += mul(Get(s1,-dx,-dy), float4x4(-0.0679258480668068,-0.0470356605947018,-0.0306050814688206,0.2837402522563934,0.0560503117740154,-0.0638933181762695,-0.0238730255514383,0.8091127872467041,0.0268034171313047,-0.1052688062191010,0.0543795824050903,0.1571009308099747,0.0122727537527680,0.0760466083884239,-0.0795380547642708,0.0011456814827397));
res += mul(Get(s2,-dx,-dy), float4x4(-0.2264154851436615,-0.1008280068635941,-0.0968279391527176,-0.3688963651657104,-0.0241988189518452,0.3209922909736633,-0.0087448759004474,0.0137863755226135,-0.2620950341224670,0.1217002272605896,0.0614450126886368,-0.5153579711914062,-0.0506055578589439,-0.1664257794618607,0.0627418756484985,0.3436226844787598));
res += mul(Get(s3,-dx,-dy), float4x4(0.1594915837049484,0.1377159208059311,0.0196569617837667,-0.0948456004261971,0.0148538239300251,0.0750958546996117,-0.0461346618831158,0.5189976692199707,-0.0016705157468095,-0.0624657981097698,-0.1630857437849045,-0.0281560737639666,0.0738271623849869,-0.1417347490787506,-0.1297015547752380,-0.6209145188331604));
res += mul(Get(s4,-dx,-dy), float4x4(0.0246593039482832,-0.0014415738405660,-0.0481757335364819,0.4873179793357849,-0.0203256718814373,0.0825942680239677,0.0154075492173433,0.0137398242950439,-0.0753622278571129,-0.0821964070200920,0.1110060438513756,-0.3644785583019257,-0.0434728711843491,0.0813251584768295,-0.0515565685927868,-0.1553280353546143));
res += mul(Get(s5,-dx,-dy), float4x4(-0.1461961567401886,0.0899368748068810,0.0368806198239326,0.1499029994010925,0.0557583756744862,0.0411266237497330,0.0327312536537647,0.2013762146234512,0.0439712889492512,-0.0245363917201757,-0.0728396475315094,0.2197162508964539,0.0232044328004122,-0.0223611555993557,-0.0828807726502419,0.1610787510871887));
res += mul(Get(s0,-dx,0), float4x4(-0.3004563152790070,0.0235295724123716,-0.0226411148905754,-0.0903604924678802,0.0255984049290419,-0.2976984381675720,0.3300406634807587,-0.1281293779611588,-0.0158204399049282,-0.0394158922135830,-0.0138743789866567,0.4987792372703552,0.3386128842830658,0.2038197219371796,-0.0131557490676641,0.0947569236159325));
res += mul(Get(s1,-dx,0), float4x4(-0.0369455665349960,0.0968144610524178,0.0436868034303188,-0.1228855624794960,0.1561045497655869,-0.2930734157562256,-0.0201750677078962,-0.0314745754003525,-0.1505322456359863,-0.2610400617122650,0.0087196854874492,-0.2189019918441772,-0.0617761649191380,0.0170973055064678,-0.0601873025298119,-0.0000413230955019));
res += mul(Get(s2,-dx,0), float4x4(0.0828970745205879,0.3155977129936218,-0.0748458579182625,0.0643682181835175,0.2786481082439423,0.2940221726894379,-0.1642006486654282,0.2272710353136063,-0.0788022875785828,0.0407909341156483,-0.3747707605361938,0.0752294361591339,0.0997893884778023,0.0531551130115986,0.0053029763512313,-0.0315811634063721));
res += mul(Get(s3,-dx,0), float4x4(0.1149213612079620,-0.0252674836665392,-0.1103714555501938,0.1805449426174164,0.0141020510345697,0.0907930359244347,0.1920273303985596,0.0225551724433899,-0.2096678316593170,0.1908353716135025,-0.0925152525305748,-0.1775047034025192,-0.0673073977231979,0.2349932193756104,0.1720584034919739,0.0428995825350285));
res += mul(Get(s4,-dx,0), float4x4(-0.0428050197660923,0.1093665882945061,0.0437933616340160,-0.2794262170791626,0.3224650621414185,-0.0585119426250458,0.1153674572706223,0.1850812882184982,0.2189861834049225,-0.1154224500060081,-0.0828007236123085,0.2284419387578964,-0.2420052587985992,-0.0311943069100380,-0.1712369769811630,-0.2489853203296661));
res += mul(Get(s5,-dx,0), float4x4(0.1681651622056961,0.0760341733694077,0.0563979037106037,-0.1012041419744492,0.1197138875722885,-0.1786462068557739,0.0568890795111656,0.0480451993644238,0.1187255382537842,0.0353024005889893,-0.0258353669196367,0.0365884378552437,-0.1482252180576324,0.3805112838745117,-0.1054326221346855,-0.0120815094560385));
res += mul(Get(s0,-dx,dy), float4x4(-0.0196030382066965,0.1504975259304047,0.1023610010743141,-0.1413525938987732,0.1912053227424622,0.0393696650862694,-0.1364412009716034,0.1707510501146317,0.0508125610649586,0.1148109212517738,0.0661054626107216,0.0201615039259195,-0.0445591807365417,0.0649381503462791,-0.0352561250329018,0.0807620361447334));
res += mul(Get(s1,-dx,dy), float4x4(-0.0240336377173662,0.2752394378185272,-0.1493885666131973,-0.2141867876052856,-0.0047060921788216,0.1315103471279144,0.0681335180997849,0.1555600166320801,0.1607123166322708,-0.0668041259050369,0.0705452635884285,0.2093670666217804,0.0523847974836826,-0.0340821854770184,0.0397444851696491,0.0158788431435823));
res += mul(Get(s2,-dx,dy), float4x4(0.0395432189106941,0.0668439865112305,-0.0811604335904121,0.2273464053869247,0.0596887022256851,-0.1518237441778183,0.0192096531391144,0.0361490212380886,0.0377112068235874,0.0011986307799816,-0.0378076285123825,-0.1288046240806580,0.0041357134468853,0.1385235488414764,-0.0263764970004559,-0.0286726336926222));
res += mul(Get(s3,-dx,dy), float4x4(-0.1306877881288528,0.0138204358518124,0.0633756890892982,-0.1308839917182922,-0.0656927451491356,0.0470673479139805,0.0159408785402775,-0.0325544662773609,0.1153197512030602,0.0574657022953033,0.0432781726121902,-0.0131316725164652,-0.1287793666124344,0.1006216108798981,0.0327573865652084,-0.1525173336267471));
res += mul(Get(s4,-dx,dy), float4x4(0.0143055636435747,-0.3683820366859436,0.0370637066662312,0.0499294549226761,-0.0728868246078491,-0.1316731274127960,-0.0889572054147720,-0.0723601877689362,-0.0364801138639450,0.1862276494503021,-0.0353334322571754,-0.1423266381025314,0.1847222149372101,-0.0771431326866150,0.1825175732374191,-0.0058872047811747));
res += mul(Get(s5,-dx,dy), float4x4(-0.1244413480162621,-0.2547098696231842,-0.0268497932702303,-0.0955240353941917,-0.1138877272605896,0.1085064262151718,-0.0224277209490538,-0.0098662432283163,-0.1271617561578751,-0.0945912152528763,0.0278818886727095,-0.0898548290133476,0.1836080551147461,0.1426282674074173,0.1520451009273529,0.0769864842295647));
res += mul(Get(s0,0,-dy), float4x4(-0.0927182286977768,-0.2377827316522598,0.1122442260384560,-0.1527811586856842,0.1236375719308853,0.0450054407119751,0.1619718372821808,-0.2236719876527786,0.0230141133069992,0.0414560474455357,0.0119592901319265,-0.4353534281253815,0.0008899226086214,-0.0457772649824619,-0.1265090554952621,-0.3198804259300232));
res += mul(Get(s1,0,-dy), float4x4(-0.2479158043861389,0.1213118880987167,0.1122663766145706,-0.1240301877260208,0.0314686819911003,0.1967630237340927,0.1365450173616409,0.8942480683326721,-0.1934053897857666,0.0678295344114304,-0.0882441997528076,-0.1181312352418900,-0.2466166764497757,-0.1258364021778107,0.1538827568292618,-0.5223328471183777));
res += mul(Get(s2,0,-dy), float4x4(0.1351078003644943,-0.1641274541616440,0.2542963325977325,0.2071513682603836,-0.0320154577493668,-0.0466796569526196,-0.0276265051215887,0.2747424840927124,0.0147513998672366,0.1444698870182037,-0.0753891915082932,0.0755019411444664,0.2935162782669067,0.1308264881372452,-0.1236713826656342,0.8109850883483887));
res += mul(Get(s3,0,-dy), float4x4(-0.2361371815204620,0.0909068286418915,-0.0024182288907468,0.0230811201035976,-0.3562238216400146,0.0268747899681330,0.2537064552307129,-0.7493611574172974,0.2956844568252563,0.1381745040416718,-0.2016305625438690,0.7291411161422729,0.1268606036901474,-0.0961462110280991,0.1408614069223404,-0.8478488922119141));
res += mul(Get(s4,0,-dy), float4x4(0.2753152549266815,0.2767021358013153,-0.2921651601791382,0.8669195175170898,-0.0561830215156078,-0.2168336659669876,0.1059609279036522,-0.3664225935935974,-0.0976695716381073,0.0676424428820610,-0.0289579723030329,-0.2810574471950531,0.0218131057918072,-0.4295270740985870,0.0546145737171173,0.4621550738811493));
res += mul(Get(s5,0,-dy), float4x4(0.0203185174614191,0.1469563394784927,0.1138324216008186,-0.1794736683368683,0.1474636197090149,-0.1002025157213211,0.0636372268199921,-0.4608819484710693,-0.1375746428966522,-0.1751783192157745,0.0267485342919827,-0.2047251164913177,-0.2608163654804230,-0.0544833838939667,0.0640216469764709,-0.0522182993590832));
res += mul(Get(s0,0,0), float4x4(0.3818236589431763,0.0074828909710050,-0.3096743226051331,0.1578397452831268,0.0650867298245430,0.3366335332393646,0.1085038334131241,0.1344028115272522,0.1984089910984039,0.1981523185968399,0.2777779996395111,0.4423567652702332,0.0589632913470268,0.0807649865746498,0.0213750731199980,-0.0062188548035920));
res += mul(Get(s1,0,0), float4x4(0.7975841760635376,0.0870966389775276,-0.3551204204559326,-0.0133116673678160,0.1098051071166992,-0.0840500667691231,-0.0417614206671715,-0.0918383300304413,-0.4886072278022766,0.4341032207012177,-0.2747036218643188,-0.2143652588129044,-0.6041537523269653,0.1769962757825851,-0.3134086430072784,0.0693574696779251));
res += mul(Get(s2,0,0), float4x4(0.1355446875095367,-0.5268180966377258,-0.1864134222269058,0.0055967932567000,-0.1173342317342758,0.0453092195093632,-0.4573198854923248,0.1050916835665703,-0.1345628052949905,0.1144484132528305,0.1048714593052864,0.0826444104313850,0.0906528010964394,-0.4999504685401917,0.4678446650505066,-0.2164253592491150));
res += mul(Get(s3,0,0), float4x4(-0.0198598466813564,-0.2314382344484329,-0.0258119404315948,0.2287602722644806,0.4828881919384003,0.1560099124908447,-1.1390175819396973,0.0688255131244659,-0.2538223564624786,-0.1655661314725876,0.5700560808181763,-0.1837506294250488,0.2150500416755676,-0.2364862412214279,-0.1685813814401627,0.2015660107135773));
res += mul(Get(s4,0,0), float4x4(-0.0792468115687370,-0.4707454442977905,0.4126801192760468,-0.0073421699926257,-0.1772877424955368,0.6356457471847534,-0.3458557128906250,-0.0474520027637482,0.4949631094932556,0.2216902375221252,-0.0457050316035748,0.3101487457752228,0.0989945009350777,0.1395765393972397,0.0573884584009647,0.0051502236165106));
res += mul(Get(s5,0,0), float4x4(-0.5392842888832092,-0.4030137360095978,0.5027069449424744,-0.6188111901283264,-0.3784214854240417,-0.3648545742034912,0.2905653417110443,0.0393044948577881,-0.2875466942787170,0.0352779775857925,-0.0011687978403643,0.1303096115589142,0.3668811917304993,0.0105299483984709,-0.2928106784820557,0.2632032632827759));
res += mul(Get(s0,0,dy), float4x4(-0.0327641218900681,-0.0918171852827072,0.0539439655840397,-0.0135396542027593,-0.1293372660875320,-0.0536307767033577,0.1812683343887329,-0.0960052460432053,-0.0993567854166031,0.1055733859539032,0.0871590450406075,0.0876707211136818,-0.0912032052874565,-0.0961075425148010,0.0700916871428490,0.1117817386984825));
res += mul(Get(s1,0,dy), float4x4(0.1500817239284515,0.1444296538829803,0.5580268502235413,-0.0412046872079372,0.0524892918765545,-0.0679414495825768,0.1004378721117973,0.1316001266241074,-0.3723200559616089,0.0282687116414309,-0.2252433001995087,0.1340052038431168,-0.0003473983670119,0.0065926867537200,0.0333458706736565,0.1946119219064713));
res += mul(Get(s2,0,dy), float4x4(-0.3231236040592194,0.0904450789093971,0.1521767824888229,0.0730240345001221,-0.1373944133520126,-0.3174363076686859,0.2039504200220108,-0.0587218329310417,-0.0782105475664139,-0.0240708868950605,0.0245741754770279,0.0224628765136003,-0.1589432954788208,0.0538229383528233,0.0519202090799809,0.1613733321428299));
res += mul(Get(s3,0,dy), float4x4(0.1687339693307877,-0.0474924892187119,-0.0213019996881485,0.2522178292274475,0.0444234497845173,0.1465046554803848,0.1809087991714478,-0.0555959641933441,-0.0812937244772911,0.1318231225013733,-0.1982784271240234,-0.3088847994804382,-0.0604884810745716,0.0807740166783333,0.0863365754485130,-0.0420695841312408));
res += mul(Get(s4,0,dy), float4x4(0.1080663502216339,-0.3335926830768585,0.0032272958196700,0.0570287518203259,0.0800636857748032,-0.2250842005014420,-0.0405368506908417,0.1143743991851807,-0.0942611470818520,0.2740716636180878,0.2164022475481033,0.1733210831880569,0.0972930341959000,0.0460744500160217,0.0907713025808334,0.1262110769748688));
res += mul(Get(s5,0,dy), float4x4(0.0469935871660709,0.0461251214146614,-0.4041056334972382,0.2210562080144882,-0.1693439334630966,-0.1218814849853516,0.1062601357698441,0.0728729218244553,0.1503738760948181,-0.0798093155026436,-0.0207258425652981,0.2133640497922897,0.0258897859603167,0.1372074335813522,0.0033792564645410,-0.3511162698268890));
res += mul(Get(s0,dx,-dy), float4x4(0.0852360427379608,-0.1612924635410309,-0.0379505008459091,0.0895193144679070,0.0947953835129738,-0.0091264108195901,0.0805259793996811,0.0406031459569931,0.0622844919562340,0.0544233992695808,-0.0489202737808228,-0.8404518961906433,0.1406705975532532,-0.2650353014469147,0.1285202056169510,-0.5100163221359253));
res += mul(Get(s1,dx,-dy), float4x4(-0.0100376280024648,-0.0097318887710571,-0.1461697369813919,0.0759422704577446,-0.0005813073948957,0.0052285478450358,0.0049167880788445,0.3503691852092743,-0.0085688941180706,0.2095825821161270,-0.0773172974586487,-0.0146939437836409,0.0506531633436680,-0.0836587026715279,0.0385840013623238,-0.4926394224166870));
res += mul(Get(s2,dx,-dy), float4x4(-0.0925607606768608,-0.0554502196609974,0.0079759536311030,0.3164232969284058,0.0116297965869308,-0.0288191456347704,0.1045378893613815,0.1979148238897324,-0.0410396493971348,0.0369229130446911,0.0503611937165260,0.0398133099079132,-0.1013948768377304,0.1869187355041504,-0.0303578376770020,0.7752822637557983));
res += mul(Get(s3,dx,-dy), float4x4(0.1210010349750519,-0.0093292370438576,0.0009654434979893,0.2798533141613007,0.0697292611002922,-0.3010319471359253,-0.0684896335005760,0.0620695725083351,-0.0351571030914783,0.2063251584768295,0.0415311045944691,0.4501922130584717,-0.0499126389622688,-0.1969605088233948,0.0556319877505302,-1.0288159847259521));
res += mul(Get(s4,dx,-dy), float4x4(-0.1762324571609497,-0.0179791767150164,-0.0983358100056648,-0.0369059480726719,-0.1008358448743820,0.0184559747576714,0.0159274563193321,0.0608263127505779,0.0380490757524967,-0.1177154034376144,-0.1264428943395615,-0.4713335335254669,-0.1429124623537064,-0.0789833217859268,-0.0132339149713516,0.3408603370189667));
res += mul(Get(s5,dx,-dy), float4x4(0.0382485203444958,0.0619859397411346,-0.0194928385317326,0.0594782531261444,0.0690066069364548,0.2935376167297363,0.0047065606340766,-0.2954929769039154,-0.0103307273238897,-0.1150136217474937,-0.0080144535750151,0.1378744095563889,0.0727671161293983,-0.1934767961502075,0.0990604385733604,0.1728959828615189));
res += mul(Get(s0,dx,0), float4x4(0.0206585023552179,0.0631242468953133,-0.0157478936016560,0.0284311771392822,0.1955697387456894,-0.1168609783053398,0.0097458874806762,0.1927557587623596,0.0968324467539787,-0.2459503412246704,-0.0241380166262388,0.1178842708468437,0.0685420781373978,0.1258363574743271,-0.1190647706389427,0.0844878479838371));
res += mul(Get(s1,dx,0), float4x4(-0.0338482260704041,-0.2020774781703949,0.0812986940145493,-0.0591320246458054,0.0341426841914654,-0.1547093093395233,0.0479186624288559,-0.0630665570497513,-0.0814181715250015,0.0531973801553249,-0.0992694422602654,-0.0933281183242798,-0.2752661406993866,-0.1141318529844284,-0.1534517407417297,-0.0757381543517113));
res += mul(Get(s2,dx,0), float4x4(-0.0685595944523811,-0.0265080090612173,0.0333744361996651,-0.1317344307899475,0.2163522988557816,0.0991203263401985,0.0116747459396720,0.2336252033710480,0.0660109892487526,-0.1257534027099609,0.0086818058043718,-0.2323552072048187,0.1755669414997101,-0.0105027817189693,-0.0696560740470886,0.0247884280979633));
res += mul(Get(s3,dx,0), float4x4(0.0422314777970314,-0.6620979905128479,0.1365391314029694,-0.0300725083798170,-0.0338513478636742,-0.2524872422218323,0.2433667927980423,-0.0315189249813557,-0.1152776852250099,-0.0324136987328529,0.0413103438913822,-0.1428817063570023,-0.0438967905938625,0.2723855376243591,0.1098804473876953,0.4720350205898285));
res += mul(Get(s4,dx,0), float4x4(-0.1201098486781120,-0.1042259112000465,0.0999949946999550,-0.1560902744531631,0.0438335500657558,-0.0280316751450300,-0.2008102685213089,-0.0407266281545162,-0.0051337452605367,0.1404734402894974,-0.0048491265624762,0.0832552909851074,0.2030747830867767,-0.0591518506407738,-0.0231922511011362,-0.0470451228320599));
res += mul(Get(s5,dx,0), float4x4(0.0763906911015511,-0.0718439444899559,0.0787665247917175,-0.1367689967155457,-0.0626718327403069,0.1399554610252380,0.0932170227169991,0.0561441108584404,-0.0903713628649712,-0.0740316733717918,0.0581289269030094,-0.1793986260890961,-0.1765929609537125,-0.1773847937583923,-0.0187554489821196,-0.1126793548464775));
res += mul(Get(s0,dx,dy), float4x4(-0.0242577083408833,0.0740757212042809,0.0496758259832859,0.1613786369562149,0.0004450688720681,0.0919309481978416,0.1157257184386253,0.1830888390541077,-0.1730160117149353,0.1363252699375153,-0.1316801309585571,-0.2912657260894775,-0.1013928949832916,0.0678045153617859,-0.1292401254177094,0.2607043087482452));
res += mul(Get(s1,dx,dy), float4x4(-0.1324643641710281,0.0236069615930319,-0.1514571160078049,-0.2009495198726654,0.0982818156480789,0.0811900198459625,-0.0576786063611507,0.0069874003529549,0.1350571364164352,-0.0587589405477047,0.0459600798785686,0.1088330522179604,0.0214295443147421,-0.1341884136199951,-0.1115665435791016,-0.2270082831382751));
res += mul(Get(s2,dx,dy), float4x4(0.1590285301208496,-0.0090222824364901,-0.0348008126020432,-0.0505137331783772,0.1703717261552811,-0.0465828254818916,0.0590711124241352,-0.0049420935101807,0.0276570115238428,-0.1062995716929436,0.0209463592618704,0.0113535141572356,0.0443146787583828,-0.0721865370869637,-0.0440765991806984,-0.0546146333217621));
res += mul(Get(s3,dx,dy), float4x4(-0.0999506935477257,0.0977042540907860,-0.0964127406477928,-0.2436216324567795,0.0727640092372894,0.0585158132016659,0.0562263503670692,0.0548591613769531,-0.0532119646668434,-0.0603279247879982,0.0756283923983574,0.2757660150527954,-0.0147878648713231,0.0460763573646545,-0.0866837054491043,0.0895781889557838));
res += mul(Get(s4,dx,dy), float4x4(0.2717501223087311,0.1762754917144775,-0.0300190001726151,-0.1238919571042061,-0.0871967002749443,0.0303890574723482,0.1778315156698227,0.2028909623622894,-0.0090814512223005,0.2549083828926086,0.1597360372543335,-0.0582348629832268,-0.0694725215435028,0.2138191759586334,-0.0266369208693504,0.0275134500116110));
res += mul(Get(s5,dx,dy), float4x4(-0.0613345950841904,0.0000285099231405,-0.0136086512356997,-0.0612746924161911,0.1372003555297852,-0.0159859098494053,0.0303228832781315,-0.0795479416847229,0.0714157000184059,-0.0686043128371239,-0.0596953518688679,-0.1462664157152176,-0.0221100859344006,-0.0101310657337308,0.0381441302597523,-0.1483404785394669));
res = max(float4(0, 0, 0, 0), res) + float4(-0.0196009203791618,0.9125483036041260,-0.6908390522003174,0.0016486739041284) * min(float4(0, 0, 0, 0), res);
return res;
}
