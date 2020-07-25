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
float4 res = float4(-0.0573669783771038,-0.0909777730703354,0.0668480247259140,-0.0735671818256378);
res += mul(Get(s0,-dx,-dy), float4x4(-0.0710659995675087,0.0192650388926268,-0.0102325649932027,0.0499008148908615,-0.0204473324120045,-0.0690476745367050,-0.2120447605848312,0.0243654269725084,-0.0925112590193748,-0.1290648132562637,-0.0344423204660416,-0.0033278684131801,0.1623944491147995,-0.0571254007518291,0.1666570603847504,0.0346292331814766));
res += mul(Get(s1,-dx,-dy), float4x4(0.0979514718055725,-0.1253850013017654,-0.0278050824999809,-0.0510730631649494,0.2485386580228806,-0.1860090643167496,0.0067009059712291,-0.1422021836042404,0.1003166288137436,-0.0655145198106766,-0.2006467878818512,0.0401635430753231,0.1456751823425293,-0.0890701860189438,0.0420232787728310,0.0295897666364908));
res += mul(Get(s2,-dx,-dy), float4x4(0.0438369922339916,0.1258469969034195,-0.0552477650344372,-0.0049072215333581,-0.0184922982007265,-0.0159106645733118,0.0803733542561531,-0.0778470262885094,0.0299479551613331,-0.0357461981475353,-0.2848726212978363,0.1316430568695068,0.1941890120506287,-0.8023195862770081,-0.5044481158256531,0.1351939439773560));
res += mul(Get(s3,-dx,-dy), float4x4(0.0291165579110384,0.0867817550897598,0.0830437988042831,0.1105913594365120,0.1708578169345856,0.0758451968431473,0.0231330059468746,-0.0694393441081047,-0.3817304968833923,-0.1342356204986572,-0.0996565744280815,0.1259846985340118,-0.0359197556972504,-0.1192053258419037,-0.2641847133636475,0.0077433851547539));
res += mul(Get(s4,-dx,-dy), float4x4(-0.0231450889259577,-0.1102462336421013,-0.0997845530509949,0.1415665894746780,-0.1807821094989777,-0.1772505640983582,-0.3886529207229614,0.2471131235361099,-0.0016328836791217,-0.2867657542228699,-0.0952776521444321,-0.0790947526693344,0.1049606725573540,0.1359758377075195,0.0266668498516083,0.0660733878612518));
res += mul(Get(s5,-dx,-dy), float4x4(0.0323634445667267,-0.1044091954827309,0.0027450318448246,0.0179044846445322,-0.3778672516345978,0.1437184959650040,-0.1904250383377075,-0.1342898607254028,0.0138274468481541,-0.0309126097708941,-0.0370992608368397,0.0096514252945781,-0.0225657951086760,0.1297215521335602,0.1502675712108612,-0.1639812439680099));
res += mul(Get(s0,-dx,0), float4x4(-0.0094346785917878,0.1187683567404747,0.1853389441967010,0.0046857623383403,-0.0378473699092865,0.0262999664992094,-0.2467290759086609,-0.0133815323933959,0.1486907303333282,-0.2103298604488373,0.0114353243261576,-0.0599132291972637,-0.0687389448285103,0.1188409700989723,0.0897486135363579,0.0886804908514023));
res += mul(Get(s1,-dx,0), float4x4(0.1149948090314865,0.1769813001155853,0.0280102286487818,-0.1358355283737183,0.0287981647998095,0.0961391255259514,0.1016062796115875,-0.0461717247962952,0.1069761365652084,0.1980985999107361,-0.0144978221505880,0.0501231402158737,-0.0028006425127387,0.2596344053745270,0.0648542121052742,-0.1027151197195053));
res += mul(Get(s2,-dx,0), float4x4(0.1442685723304749,0.1806036382913589,-0.2236491739749908,0.1298354417085648,-0.2224697321653366,0.2842389345169067,0.0349556468427181,-0.0803671330213547,0.0968373641371727,-0.3597484529018402,-0.3285996913909912,-0.0015591551782563,-0.0813385024666786,0.0009935838170350,-0.2115754187107086,0.0898662582039833));
res += mul(Get(s3,-dx,0), float4x4(0.1001452580094337,-0.0767608806490898,0.1438125669956207,0.0395521484315395,0.0256544500589371,-0.2305035740137100,0.1954572796821594,-0.2070225477218628,-0.0360641181468964,0.0990510210394859,-0.1971565186977386,0.1625902205705643,-0.1318826675415039,-0.2422914206981659,0.0180910192430019,-0.0093385968357325));
res += mul(Get(s4,-dx,0), float4x4(0.0419925935566425,0.1144871711730957,-0.2215888798236847,0.2020543217658997,0.1789345294237137,-0.4614147245883942,-0.4066770076751709,0.0316652953624725,-0.0651273652911186,-0.1383795142173767,-0.1746090054512024,-0.0504360795021057,0.2541123032569885,0.1865927726030350,-0.1745246052742004,-0.0407637953758240));
res += mul(Get(s5,-dx,0), float4x4(-0.0089232921600342,-0.0555502958595753,-0.1795607507228851,0.0954152271151543,-0.1704593449831009,-0.0451658852398396,-0.3141146302223206,0.0392539128661156,-0.2067568600177765,0.0118219079449773,0.1650767028331757,0.1090009510517120,-0.1645108312368393,-0.2534958422183990,0.2034006863832474,-0.1368272006511688));
res += mul(Get(s0,-dx,dy), float4x4(-0.0955185592174530,0.2321359962224960,0.2538193464279175,0.0451647676527500,-0.0505079738795757,0.0627027079463005,0.0296765845268965,0.0330271385610104,-0.0414374172687531,-0.0595306493341923,0.1123193651437759,-0.0851405113935471,0.0193106625229120,-0.0332878343760967,-0.1698557883501053,0.0562870204448700));
res += mul(Get(s1,-dx,dy), float4x4(0.0219638235867023,-0.1666496098041534,-0.1236643567681313,-0.0654212981462479,0.0133039103820920,0.1258891224861145,0.1081060543656349,0.0018852949142456,0.0642291009426117,-0.0293606501072645,-0.0687913373112679,-0.2466098219156265,0.0108219375833869,-0.2218599915504456,0.0695278346538544,0.0477892495691776));
res += mul(Get(s2,-dx,dy), float4x4(0.1040194407105446,0.0840345472097397,-0.1702354550361633,0.1449013799428940,-0.0166883524507284,0.2784354686737061,0.0683854743838310,-0.1000940874218941,-0.0523246973752975,0.0131697496399283,0.0180997513234615,0.0442814677953720,0.2018641382455826,-0.1769945174455643,0.4837553501129150,-0.1152524650096893));
res += mul(Get(s3,-dx,dy), float4x4(-0.0227340124547482,-0.0278919860720634,-0.0065989657305181,-0.0382531657814980,0.0046777431853116,-0.1995536834001541,-0.0898038893938065,-0.1402040868997574,0.1656205207109451,-0.1251721978187561,0.0131614366546273,0.0696720033884048,0.0788593292236328,0.0299535114318132,-0.1587935537099838,-0.0559787899255753));
res += mul(Get(s4,-dx,dy), float4x4(0.0337833203375340,0.1018903404474258,-0.2508429884910583,0.0902869030833244,-0.0935327410697937,-0.1356909871101379,0.1005082800984383,0.0878937616944313,0.0532552562654018,0.0164873730391264,0.0414033122360706,0.0011693030828610,0.1544329822063446,0.1212788596749306,-0.0032809406984597,0.0891012251377106));
res += mul(Get(s5,-dx,dy), float4x4(0.0240432210266590,-0.0012178608449176,-0.1485940217971802,0.1303805708885193,-0.1475678980350494,0.1036289483308792,-0.0580787025392056,-0.0402052775025368,-0.1334718167781830,0.0226667467504740,-0.0001374122366542,-0.0631631165742874,-0.0638857930898666,-0.2708756625652313,0.1962739974260330,0.0645165368914604));
res += mul(Get(s0,0,-dy), float4x4(0.0754025802016258,-0.0144022442400455,0.0119574759155512,-0.0567039847373962,-0.1846906393766403,-0.1549561470746994,-0.0003548469103407,-0.0633524060249329,0.0647261366248131,-0.0587966255843639,0.2017157375812531,0.0595921725034714,0.0828999206423759,0.0657517090439796,-0.2123725861310959,0.1166520491242409));
res += mul(Get(s1,0,-dy), float4x4(0.1084857359528542,0.0366173833608627,0.0871750861406326,-0.0300250444561243,0.2442071437835693,0.3126179873943329,0.1434734165668488,0.0189083125442266,-0.0630777403712273,0.1013816893100739,0.5041313767433167,-0.1839036196470261,-0.0375354848802090,-0.0251395199447870,-0.2255039215087891,0.0124418865889311));
res += mul(Get(s2,0,-dy), float4x4(0.1096259504556656,0.1307417899370193,-0.0309483371675014,0.0571954175829887,0.0526077300310135,-0.1465254575014114,-0.2329890578985214,0.2110971808433533,0.1492073684930801,0.1827407628297806,-0.0152861243113875,-0.3489490747451782,0.0377734228968620,1.6330171823501587,0.0816421136260033,-0.4253253042697906));
res += mul(Get(s3,0,-dy), float4x4(-0.0587114468216896,0.1843202710151672,-0.0878722891211510,0.0669968798756599,-0.0194419678300619,0.3237776160240173,-0.1600798815488815,-0.0733020007610321,0.0712788924574852,0.0302535928785801,-0.2922385632991791,-0.1697560399770737,-0.2113372236490250,-0.1008198112249374,0.0233875680714846,-0.0690547078847885));
res += mul(Get(s4,0,-dy), float4x4(-0.0240284223109484,0.0971308350563049,-0.2889944612979889,0.2870904505252838,0.1208700388669968,-0.4696305990219116,0.2652131021022797,-0.3055919706821442,-0.1199710965156555,-0.4245420694351196,-0.0660972818732262,0.0458099655807018,0.2588999867439270,0.0283549837768078,-0.3244147002696991,-0.0553162135183811));
res += mul(Get(s5,0,-dy), float4x4(-0.0298502109944820,-0.0756006985902786,0.1347614526748657,0.0317927524447441,-0.1288153082132339,-0.1549831479787827,0.1361909955739975,-0.3105809092521667,-0.0422838479280472,0.1634472757577896,0.0540461465716362,0.1391245126724243,0.1410495489835739,-0.0828683450818062,0.1523545682430267,-0.1466519385576248));
res += mul(Get(s0,0,0), float4x4(0.1258476078510284,-0.9803174138069153,0.1001820936799049,-0.0664018690586090,-0.1109077632427216,-0.8389696478843689,-0.1904899030923843,0.1288279443979263,0.3473845124244690,0.4772961437702179,-0.1166658997535706,-0.1424425244331360,-0.1755336225032806,0.1678514927625656,0.2156387120485306,0.0711297541856766));
res += mul(Get(s1,0,0), float4x4(0.2280602902173996,0.4171535074710846,-0.0115402862429619,0.1743261516094208,0.1386407166719437,0.0827443078160286,0.2280862331390381,0.0846301168203354,-0.3929292559623718,0.1748471260070801,-0.3297643661499023,0.2890236675739288,0.0877749696373940,0.1512618362903595,0.2570349276065826,0.1108205392956734));
res += mul(Get(s2,0,0), float4x4(-0.0485306642949581,0.0073376684449613,0.0501672849059105,0.0567574091255665,-0.5189893841743469,-0.7425474524497986,-0.3387844860553741,0.7176182866096497,0.5452692508697510,-0.2258392721414566,0.0740764886140823,-0.3492099642753601,0.0930003300309181,1.0812928676605225,0.4993404150009155,0.0458412915468216));
res += mul(Get(s3,0,0), float4x4(-0.0080292345955968,0.0620303191244602,-0.1910763680934906,-0.1349904537200928,0.1457637846469879,-0.1916744410991669,-0.2729272842407227,-0.3104828596115112,0.2500723004341125,0.1411506831645966,0.7908143997192383,-0.1199774518609047,-0.1600194573402405,-0.4702755212783813,0.3326956629753113,-0.4273127317428589));
res += mul(Get(s4,0,0), float4x4(-0.0638155639171600,0.4111358821392059,-0.6294621229171753,0.1462826877832413,0.0214389897882938,0.3513155877590179,0.0344769842922688,0.1634370088577271,-0.1779638677835464,0.6810716986656189,-0.0830379053950310,-0.0499526672065258,0.2572676241397858,-0.0550240725278854,-0.1990529596805573,0.0973442271351814));
res += mul(Get(s5,0,0), float4x4(-0.0191585589200258,0.6200781464576721,-0.2658419013023376,0.1463640481233597,-0.0156025439500809,-0.1233455091714859,0.1447523981332779,0.3397502601146698,0.0701361596584320,0.1066780686378479,-0.6587954163551331,-0.0342160463333130,-0.4306707978248596,-0.9764931201934814,0.2220393568277359,0.0338913165032864));
res += mul(Get(s0,0,dy), float4x4(0.1494743973016739,-0.6974800825119019,0.1581568568944931,0.0328107327222824,0.0209909323602915,-0.0368436798453331,0.0235515758395195,-0.0504915155470371,-0.2335623353719711,0.0601011216640472,0.1280280500650406,-0.0069173085503280,-0.0098844533786178,0.0754498913884163,-0.0605719685554504,0.1252559423446655));
res += mul(Get(s1,0,dy), float4x4(0.1490598767995834,0.1608427464962006,-0.2640390694141388,-0.2702853679656982,0.0379671044647694,0.0931240022182465,0.1016648858785629,0.0351448506116867,0.1057632938027382,-0.2296681553125381,0.1876296252012253,0.0507904514670372,-0.0798460841178894,0.1418741047382355,-0.0707883834838867,-0.0470619499683380));
res += mul(Get(s2,0,dy), float4x4(0.1507841646671295,0.3743513226509094,0.0547073371708393,0.1242935881018639,0.0840277522802353,0.2789922058582306,-0.1452417671680450,0.1144703328609467,-0.2814251184463501,0.4207861721515656,-0.1055853813886642,0.1504145711660385,-0.0889044180512428,-0.2588155567646027,-0.0701944679021835,-0.1869793683290482));
res += mul(Get(s3,0,dy), float4x4(-0.0057162013836205,0.2107311189174652,-0.0421744883060455,-0.0859805867075920,0.2973028123378754,-0.1128391548991203,0.1954549252986908,-0.2649888396263123,-0.1148939356207848,-0.4510292410850525,-0.1241462677717209,0.1797092109918594,-0.2062981426715851,-0.0692799910902977,0.0632250234484673,-0.0327122658491135));
res += mul(Get(s4,0,dy), float4x4(-0.0248697753995657,-0.0041200611740351,-0.2988017201423645,0.1899806559085846,0.2091779857873917,0.3809022009372711,-0.2340414971113205,-0.0964783206582069,-0.0915145948529243,0.0720673874020576,0.2648052871227264,-0.0347029939293861,0.1716374605894089,-0.1914318203926086,0.0120390374213457,0.0663535967469215));
res += mul(Get(s5,0,dy), float4x4(-0.1369986534118652,-0.1129479110240936,-0.2661000788211823,-0.1234484389424324,-0.2300802916288376,-0.0818719938397408,0.0923900455236435,0.0300248805433512,-0.0388407036662102,0.1645244508981705,-0.1785198450088501,-0.0334068462252617,0.1042694523930550,-0.1601456254720688,0.0338966362178326,0.0349810831248760));
res += mul(Get(s0,dx,-dy), float4x4(-0.1647902280092239,-0.0123611846938729,-0.0740959867835045,-0.1222522854804993,-0.5585540533065796,-0.2896233499050140,0.0869010463356972,-0.0557216517627239,-0.0095627214759588,-0.1722438782453537,-0.1127790585160255,0.0851063951849937,0.3393095433712006,-0.1440553516149521,0.0314134359359741,-0.0756694599986076));
res += mul(Get(s1,dx,-dy), float4x4(0.0141711747273803,0.0102801322937012,0.0953549146652222,0.3374482393264771,0.1141571477055550,-0.0385764501988888,0.0405557863414288,-0.1018116325139999,-0.1728479862213135,0.0297170858830214,-0.2025060802698135,0.0201466064900160,-0.2483635991811752,0.0379297211766243,0.2356591671705246,0.0091948118060827));
res += mul(Get(s2,dx,-dy), float4x4(-0.0693433284759521,0.1315473020076752,-0.1172192320227623,-0.0277935825288296,0.1971485763788223,0.0098592396825552,0.1683314293622971,-0.2389987409114838,-0.2107612341642380,-0.1709315627813339,0.0453219674527645,-0.0202174242585897,-0.3096161782741547,0.3377192318439484,0.5845344066619873,1.2049053907394409));
res += mul(Get(s3,dx,-dy), float4x4(0.2327280193567276,0.0359427407383919,0.0328630805015564,0.0590308085083961,-0.2486798763275146,0.0271431710571051,0.0172119252383709,0.2438924759626389,-0.1954444199800491,0.0539576709270477,0.1536801755428314,0.0288508627563715,0.2557653486728668,0.0491033010184765,-0.0855370163917542,0.0265778992325068));
res += mul(Get(s4,dx,-dy), float4x4(-0.0944753140211105,0.2972180843353271,-0.1823317408561707,0.3346912860870361,0.0236657690256834,-0.1281701773405075,0.0385055094957352,0.0406881384551525,-0.1491536647081375,-0.3783101439476013,0.0592571347951889,-0.1067863702774048,0.1711007654666901,0.2265556305646896,-0.1359823048114777,-0.1819452494382858));
res += mul(Get(s5,dx,-dy), float4x4(-0.0805564895272255,-0.0870444700121880,0.0081565212458372,0.0431722067296505,-0.1313848346471786,0.0947632044553757,-0.1363149136304855,0.0100454399362206,0.0791219100356102,0.0885579660534859,-0.1059660613536835,-0.0228912327438593,-0.0832683295011520,-0.1229380816221237,0.0805230885744095,-0.3342066109180450));
res += mul(Get(s0,dx,0), float4x4(-0.2866947650909424,-0.1769648045301437,0.1012316867709160,-0.3654689788818359,-0.5070767402648926,-0.1674622595310211,-0.0221509449183941,-0.3528502583503723,-0.9613757133483887,-0.0050624082796276,0.0584060922265053,0.1815922707319260,-0.8364031910896301,0.1026402786374092,0.1363302171230316,-0.0092467190697789));
res += mul(Get(s1,dx,0), float4x4(0.1454794108867645,0.4059103131294250,0.0337716005742550,0.4728797972202301,-0.0742423683404922,0.0849587097764015,-0.1445559114217758,0.0216434299945831,0.3947950601577759,-0.3073665499687195,0.1489022672176361,0.1364048570394516,0.2114164680242538,-0.2822889983654022,-0.1020629703998566,0.1302128881216049));
res += mul(Get(s2,dx,0), float4x4(0.1025852859020233,0.2294040173292160,0.0016343181487173,0.0710657536983490,0.3862994909286499,-0.0896219387650490,-0.0521502271294594,-0.1915302723646164,-0.0229095891118050,0.0624462477862835,0.2601666152477264,0.0711572691798210,-0.3152990639209747,-0.0542870871722698,0.4471252262592316,0.2282081544399261));
res += mul(Get(s3,dx,0), float4x4(0.0918620899319649,-0.0205327291041613,0.0480866059660912,0.2941569089889526,-0.1728791445493698,0.2251041680574417,0.0943311825394630,-0.1735566854476929,-0.0970375388860703,0.3157056570053101,-0.2525337040424347,-0.6534143686294556,0.0016602599062026,0.2916459739208221,0.0190349761396646,0.1090937405824661));
res += mul(Get(s4,dx,0), float4x4(-0.1416353285312653,0.2603788077831268,-0.2947345376014709,0.5603110194206238,-0.2085379064083099,0.2259881347417831,-0.0064023975282907,-0.1586997359991074,-1.2944345474243164,0.0179159212857485,0.2614204287528992,0.2136583775281906,-0.0487115904688835,-0.1810826808214188,0.1428692340850830,-0.6763330698013306));
res += mul(Get(s5,dx,0), float4x4(-0.1391822844743729,0.2705242633819580,-0.0062222792766988,0.2549461424350739,-0.0700227543711662,-0.0385676473379135,-0.2767638564109802,-0.1865085661411285,-0.4145691692829132,-0.2910167872905731,-0.4576700925827026,0.4049234092235565,-0.4995677471160889,-0.4283595979213715,0.0629378035664558,-0.6050580739974976));
res += mul(Get(s0,dx,dy), float4x4(-0.7011463046073914,-0.0295332279056311,0.0574519820511341,0.1247702687978745,-0.1183278486132622,0.1121044829487801,0.0658747702836990,0.0333605110645294,0.0305046457797289,-0.1541436612606049,0.0118096536025405,-0.0138998553156853,-0.1977889537811279,0.0604316331446171,0.1883008033037186,-0.0518688783049583));
res += mul(Get(s1,dx,dy), float4x4(-0.1310709863901138,-0.0402606166899204,0.1592256575822830,-0.0150266680866480,0.1528419256210327,0.0965314507484436,-0.2081359475851059,0.0474732331931591,-0.1084391623735428,0.0232869964092970,0.1689452081918716,-0.1115295961499214,-0.0644335448741913,-0.0486116893589497,0.1278909742832184,0.0621032044291496));
res += mul(Get(s2,dx,dy), float4x4(0.0580283105373383,0.1938406378030777,0.1304506808519363,0.1860986351966858,-0.0139772193506360,0.0923116803169250,0.0183619353920221,-0.0582238845527172,-0.2135133743286133,0.0345354825258255,0.0366964116692543,0.0221081860363483,0.4226962029933929,0.0019785545300692,0.0841931700706482,0.0169881042093039));
res += mul(Get(s3,dx,dy), float4x4(-0.0865100622177124,0.1452816873788834,-0.1799550950527191,-0.0941393747925758,-0.0772593021392822,0.0656871497631073,0.0179213304072618,0.2031263560056686,0.4736422300338745,0.1556993871927261,-0.2036320567131042,0.2139866799116135,0.3683483302593231,0.1596987396478653,-0.0085212411358953,0.0402040034532547));
res += mul(Get(s4,dx,dy), float4x4(0.1208530366420746,0.1147723123431206,-0.2992423772811890,0.1481440663337708,-0.4607565701007843,-0.0881043896079063,-0.0808721482753754,0.2481824904680252,0.1312373131513596,-0.2366696745157242,0.0453562475740910,-0.0528462529182434,-0.0072559318505228,0.1697591245174408,0.0249695144593716,-0.0283928066492081));
res += mul(Get(s5,dx,dy), float4x4(0.0095397504046559,0.3392468690872192,0.0042453194037080,0.2348383069038391,-0.0729489997029305,-0.0056480215862393,0.0087278634309769,0.0872801765799522,0.1683804094791412,-0.1506342738866806,0.0141588440164924,-0.1788153201341629,-0.2626062631607056,-0.1680281758308411,0.1224780753254890,-0.1820860058069229));
res = max(float4(0, 0, 0, 0), res) + float4(-0.0415205582976341,-0.0052772024646401,0.4698294699192047,-0.0938083603978157) * min(float4(0, 0, 0, 0), res);
return res;
}
