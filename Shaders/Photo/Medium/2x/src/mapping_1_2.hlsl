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
float4 res = float4(-0.2144005596637726,-0.0450454205274582,0.0604243203997612,-0.0931063294410706);
res += mul(Get(s0,-dx,-dy), float4x4(0.0517626591026783,0.0736718177795410,-0.0729176029562950,0.6555452346801758,0.0057100346311927,0.0549826994538307,-0.0025940113700926,0.4095044434070587,0.0312516428530216,-0.2158602178096771,-0.0371841639280319,-0.5247190594673157,-0.2839198708534241,0.0475294627249241,0.1068145558238029,-0.2535163462162018));
res += mul(Get(s1,-dx,-dy), float4x4(-0.0847595632076263,-0.0659374073147774,-0.0267038308084011,0.2951371669769287,0.0499335303902626,-0.0655943378806114,-0.0199957638978958,0.8024962544441223,0.0263770874589682,-0.0952804535627365,0.0595007985830307,0.1763679236173630,0.0101454937830567,0.0816697776317596,-0.0822530016303062,0.0119653372094035));
res += mul(Get(s2,-dx,-dy), float4x4(-0.1840246170759201,-0.1236481592059135,-0.0918456763029099,-0.3298883140087128,-0.0779830589890480,0.3335623145103455,0.0213418509811163,0.0225992556661367,-0.2794012129306793,0.1032922714948654,0.0529131889343262,-0.5187786817550659,-0.0697479173541069,-0.1445121914148331,0.0641541928052902,0.3488518893718719));
res += mul(Get(s3,-dx,-dy), float4x4(0.1324906796216965,0.1475025862455368,0.0162411481142044,-0.0928950160741806,0.0145630165934563,0.0776964724063873,-0.0438777804374695,0.5272662043571472,-0.0010500993812457,-0.0476112514734268,-0.1618039458990097,-0.0220218300819397,0.0839888378977776,-0.1515376269817352,-0.1375734061002731,-0.6338642835617065));
res += mul(Get(s4,-dx,-dy), float4x4(0.0236747916787863,0.0023105952423066,-0.0787355899810791,0.4970936179161072,-0.0089315166696906,0.0761742442846298,0.0298281777650118,0.0036475164815784,-0.0612039305269718,-0.0993625074625015,0.1045293360948563,-0.3570782244205475,-0.0414082370698452,0.0973343253135681,-0.0448873862624168,-0.1551849544048309));
res += mul(Get(s5,-dx,-dy), float4x4(-0.1883534640073776,0.0895194262266159,0.0277780294418335,0.1832157522439957,0.0510689094662666,0.0530371703207493,0.0287339240312576,0.2108871191740036,0.0392014980316162,-0.0132521810010076,-0.0861025899648666,0.2280452251434326,0.0173672791570425,-0.0317200012505054,-0.0864364281296730,0.1728660166263580));
res += mul(Get(s0,-dx,0), float4x4(-0.2761651277542114,0.0203553941100836,-0.0060930703766644,-0.1118166819214821,0.0235873460769653,-0.2970033884048462,0.3247945010662079,-0.1208222135901451,-0.0079950606450438,-0.0428328923881054,-0.0168490018695593,0.5047160983085632,0.3486997783184052,0.2062533348798752,0.0006423375452869,0.1351651549339294));
res += mul(Get(s1,-dx,0), float4x4(-0.0331684052944183,0.1042990982532501,0.0522374846041203,-0.1038060411810875,0.1476955264806747,-0.2907183468341827,-0.0156531091779470,-0.0413352064788342,-0.1551514118909836,-0.2462155669927597,0.0202805995941162,-0.2140852212905884,-0.0610413812100887,0.0208324380218983,-0.0590060316026211,0.0025071115233004));
res += mul(Get(s2,-dx,0), float4x4(0.1148741096258163,0.3157465457916260,-0.0663886815309525,0.0461253188550472,0.2709872126579285,0.2862819433212280,-0.1594541072845459,0.2364944666624069,-0.0804563015699387,0.0238577257841825,-0.4010685980319977,0.0770098865032196,0.0876017436385155,0.0677072629332542,0.0046634334139526,-0.0299193020910025));
res += mul(Get(s3,-dx,0), float4x4(0.1108549311757088,-0.0549685508012772,-0.1186513975262642,0.1951781362295151,0.0000443426688435,0.0930917933583260,0.2021203786134720,0.0367968454957008,-0.2266756445169449,0.1929720342159271,-0.0870760679244995,-0.2023515701293945,-0.0620787627995014,0.2368574142456055,0.1648903340101242,0.0390701740980148));
res += mul(Get(s4,-dx,0), float4x4(-0.0750814974308014,0.1273687630891800,0.0256821680814028,-0.2883189022541046,0.3121703267097473,-0.0455721914768219,0.1270104646682739,0.1989347040653229,0.2102831453084946,-0.1269980520009995,-0.0847950056195259,0.2174133807420731,-0.2511961162090302,-0.0200821254402399,-0.1671918183565140,-0.2346444875001907));
res += mul(Get(s5,-dx,0), float4x4(0.1523530036211014,0.0606676489114761,0.0547849908471107,-0.0911821126937866,0.1246098428964615,-0.1778348833322525,0.0561874657869339,0.0553546398878098,0.1180543676018715,0.0437965728342533,-0.0368870906531811,0.0397058688104153,-0.1541645973920822,0.3762843012809753,-0.1041035652160645,-0.0150987068191171));
res += mul(Get(s0,-dx,dy), float4x4(-0.0121507132425904,0.1495526880025864,0.1155119836330414,-0.1807612627744675,0.1909973472356796,0.0423419699072838,-0.1404037028551102,0.1701523065567017,0.0556352436542511,0.0968057364225388,0.0555840879678726,0.0225363764911890,-0.0660678222775459,0.0671537742018700,-0.0086339293047786,0.0821495875716209));
res += mul(Get(s1,-dx,dy), float4x4(0.0113232498988509,0.2695778906345367,-0.1199747249484062,-0.2113496959209442,-0.0088194003328681,0.1355077922344208,0.0710699260234833,0.1463701725006104,0.1594549417495728,-0.0486463531851768,0.0652839243412018,0.2199698239564896,0.0557658039033413,-0.0214624814689159,0.0465522222220898,0.0246192011982203));
res += mul(Get(s2,-dx,dy), float4x4(0.0393267087638378,0.0601102225482464,-0.0641589909791946,0.1872571557760239,0.0553456246852875,-0.1610331833362579,0.0281806737184525,0.0477794930338860,0.0436224341392517,-0.0043532387353480,-0.0547312125563622,-0.1417281180620193,0.0080766417086124,0.1386540681123734,-0.0323964655399323,-0.0279032140970230));
res += mul(Get(s3,-dx,dy), float4x4(-0.1525339484214783,0.0158714838325977,0.0536925755441189,-0.1109205037355423,-0.1159260943531990,0.0480807200074196,0.0282753501087427,-0.0295167993754148,0.1271062791347504,0.0486732199788094,0.0327561423182487,-0.0447512939572334,-0.1200131550431252,0.1000160574913025,0.0347595475614071,-0.1512909978628159));
res += mul(Get(s4,-dx,dy), float4x4(0.0104038938879967,-0.3507739305496216,0.0085170371457934,0.0902067422866821,-0.0844609960913658,-0.1434718370437622,-0.0834495946764946,-0.0979666635394096,-0.0203373879194260,0.1739896088838577,-0.0418753065168858,-0.1565337479114532,0.1804748624563217,-0.0729073509573936,0.1789197027683258,-0.0055776908993721));
res += mul(Get(s5,-dx,dy), float4x4(-0.1705996394157410,-0.2465094923973083,-0.0241013690829277,-0.0733629092574120,-0.1137847378849983,0.1150396019220352,-0.0202218070626259,-0.0085633844137192,-0.1268843412399292,-0.0875350013375282,0.0137219913303852,-0.0882309600710869,0.1839750707149506,0.1354100108146667,0.1521174758672714,0.0778363943099976));
res += mul(Get(s0,0,-dy), float4x4(-0.1082753017544746,-0.2443954944610596,0.1066286191344261,-0.1422051787376404,0.1231341063976288,0.0492668747901917,0.1697371155023575,-0.2148981243371964,0.0365478768944740,0.0399283282458782,0.0048212339170277,-0.4545264840126038,0.0159023273736238,-0.0436213612556458,-0.1184626817703247,-0.2952232956886292));
res += mul(Get(s1,0,-dy), float4x4(-0.2859156429767609,0.1104429885745049,0.1264883130788803,-0.1638233512639999,0.0238729715347290,0.1945706009864807,0.1405625045299530,0.8876447081565857,-0.1874683201313019,0.0674654394388199,-0.0796497911214828,-0.0986379534006119,-0.2414929568767548,-0.1207749098539352,0.1575089097023010,-0.5088471770286560));
res += mul(Get(s2,0,-dy), float4x4(0.0855647027492523,-0.1546179503202438,0.2504187226295471,0.1887758076190948,-0.0578484162688255,-0.0407329611480236,-0.0221138317137957,0.2589515745639801,0.0177899971604347,0.1532458662986755,-0.0310915969312191,0.0802798867225647,0.2939572334289551,0.1372319757938385,-0.1174806281924248,0.8097946047782898));
res += mul(Get(s3,0,-dy), float4x4(-0.2151931673288345,0.0843110308051109,-0.0063403216190636,0.0053640492260456,-0.3812396824359894,0.0151507854461670,0.2839767336845398,-0.7686475515365601,0.3055765926837921,0.1465494185686111,-0.1991819441318512,0.7438362240791321,0.1218674331903458,-0.0870264694094658,0.1266197115182877,-0.8545554876327515));
res += mul(Get(s4,0,-dy), float4x4(0.2648348808288574,0.2810769379138947,-0.3008662462234497,0.8463498950004578,-0.0414612777531147,-0.2180791646242142,0.1042821407318115,-0.3795653283596039,-0.1122801080346107,0.0624684393405914,-0.0323731340467930,-0.2764966189861298,0.0292925834655762,-0.4213924109935760,0.0613491199910641,0.4606604874134064));
res += mul(Get(s5,0,-dy), float4x4(0.0565843731164932,0.1515657454729080,0.1176596432924271,-0.1723347455263138,0.1559793502092361,-0.0948491245508194,0.0624998211860657,-0.4522509276866913,-0.1353451013565063,-0.1693606376647949,0.0198341459035873,-0.1921097338199615,-0.2879505157470703,-0.0719951838254929,0.0679904296994209,-0.0567822679877281));
res += mul(Get(s0,0,0), float4x4(0.3833912014961243,0.0106257293373346,-0.2953764498233795,0.1634079813957214,0.0704356580972672,0.3320001959800720,0.1145540028810501,0.1439863294363022,0.2155681997537613,0.1991651207208633,0.2755564153194427,0.4392850100994110,0.0660469233989716,0.0802581906318665,0.0360064059495926,-0.0083571476861835));
res += mul(Get(s1,0,0), float4x4(0.8170375227928162,0.0828126668930054,-0.3654940724372864,0.0171023365110159,0.1013873144984245,-0.0845183283090591,-0.0377106815576553,-0.1032925844192505,-0.4884178042411804,0.4420779347419739,-0.2665247619152069,-0.2048254460096359,-0.6003803610801697,0.1784509718418121,-0.3102907240390778,0.0780419856309891));
res += mul(Get(s2,0,0), float4x4(0.1938573569059372,-0.5126046538352966,-0.1919411718845367,0.0222056210041046,-0.1134196370840073,0.0358811244368553,-0.4484765231609344,0.1000772640109062,-0.1657177060842514,0.1106108054518700,0.0898193046450615,0.0793643370270729,0.0946849361062050,-0.4967747926712036,0.4825876653194427,-0.2095951437950134));
res += mul(Get(s3,0,0), float4x4(-0.0080853290855885,-0.2482847124338150,-0.0213241111487150,0.2058059424161911,0.4869298040866852,0.1641209870576859,-1.1478899717330933,0.0848292037844658,-0.2428608685731888,-0.1536688357591629,0.5822658538818359,-0.1786818653345108,0.2112815380096436,-0.2277538776397705,-0.1838106513023376,0.1994530409574509));
res += mul(Get(s4,0,0), float4x4(-0.0949635878205299,-0.4653462171554565,0.4141915440559387,-0.0360822007060051,-0.1679339706897736,0.6379951238632202,-0.3510576784610748,-0.0381704866886139,0.5066808462142944,0.2130489498376846,-0.0411191061139107,0.3204113841056824,0.0891470462083817,0.1555807292461395,0.0640784353017807,-0.0021379783283919));
res += mul(Get(s5,0,0), float4x4(-0.5398447513580322,-0.4012164473533630,0.4953234493732452,-0.6383033990859985,-0.3699873089790344,-0.3632813692092896,0.2919766008853912,0.0488624125719070,-0.2837947309017181,0.0364341437816620,-0.0067419302649796,0.1401630640029907,0.3832595944404602,0.0025388759095222,-0.2891339957714081,0.2781460881233215));
res += mul(Get(s0,0,dy), float4x4(-0.0426555722951889,-0.0898716002702713,0.0694431290030479,-0.0416544973850250,-0.1258934289216995,-0.0603169798851013,0.1832510083913803,-0.0910133048892021,-0.0882144793868065,0.0934710055589676,0.0842317268252373,0.0865279436111450,-0.0944717302918434,-0.0907940641045570,0.0858779922127724,0.1243523359298706));
res += mul(Get(s1,0,dy), float4x4(0.1209426596760750,0.1507189422845840,0.5939500927925110,-0.0602212399244308,0.0468511544167995,-0.0654763728380203,0.1038507819175720,0.1215457618236542,-0.3671848475933075,0.0326744839549065,-0.2330344021320343,0.1415829509496689,0.0026679383590817,0.0074274609796703,0.0363039001822472,0.1983478218317032));
res += mul(Get(s2,0,dy), float4x4(-0.3044024705886841,0.1227335780858994,0.1377635300159454,0.0549626722931862,-0.1066266000270844,-0.3158180415630341,0.2189854532480240,-0.0648181885480881,-0.0944499671459198,-0.0119333947077394,0.0032994777429849,0.0205228328704834,-0.1471977531909943,0.0481326393783092,0.0623819418251514,0.1627573966979980));
res += mul(Get(s3,0,dy), float4x4(0.1903760135173798,-0.0523749403655529,-0.0208456330001354,0.2379898428916931,0.0634010508656502,0.1442963182926178,0.2048574090003967,-0.0496984273195267,-0.0692330598831177,0.1224208995699883,-0.2084068953990936,-0.3191529810428619,-0.0664473921060562,0.0908781215548515,0.0773035213351250,-0.0477451123297215));
res += mul(Get(s4,0,dy), float4x4(0.1230891495943069,-0.3261605799198151,0.0009519601590000,0.0529663413763046,0.0994112417101860,-0.2266400903463364,-0.0471545383334160,0.1165426224470139,-0.1091756746172905,0.2562087476253510,0.2178801000118256,0.1650019586086273,0.0981926694512367,0.0609644651412964,0.0982402116060257,0.1294035166501999));
res += mul(Get(s5,0,dy), float4x4(0.0623420104384422,0.0533215999603271,-0.4172805249691010,0.2272086143493652,-0.1593489795923233,-0.1196262240409851,0.1046807095408440,0.0804525613784790,0.1540017873048782,-0.0807744711637497,-0.0316705107688904,0.2192910015583038,0.0121582951396704,0.1394443064928055,0.0144120976328850,-0.3595708012580872));
res += mul(Get(s0,dx,-dy), float4x4(0.0596071518957615,-0.1367448270320892,-0.0150269465520978,0.0497443042695522,0.0816739723086357,-0.0190741252154112,0.0778614804148674,0.0387906655669212,0.0615821518003941,0.0604412592947483,-0.0601744726300240,-0.8533566594123840,0.1269409805536270,-0.2730422616004944,0.1367708742618561,-0.4934423267841339));
res += mul(Get(s1,dx,-dy), float4x4(-0.0149539038538933,-0.0041914382018149,-0.1417990028858185,0.0743499994277954,-0.0047291922383010,0.0062545128166676,0.0050645517185330,0.3464250564575195,-0.0217456873506308,0.2403929531574249,-0.0724912434816360,0.0023243164177984,0.0544758252799511,-0.0772229060530663,0.0365358702838421,-0.4797701537609100));
res += mul(Get(s2,dx,-dy), float4x4(-0.0483169741928577,-0.0555153712630272,0.0425048694014549,0.2764122486114502,0.0450147241353989,-0.0058571589179337,0.1193340420722961,0.2097115069627762,-0.0387098640203476,0.0423300489783287,0.0462496615946293,0.0202513616532087,-0.1011452898383141,0.1917768418788910,-0.0355495773255825,0.7820444703102112));
res += mul(Get(s3,dx,-dy), float4x4(0.1191529408097267,-0.0031944017391652,0.0018431252101436,0.2633109986782074,0.0456136427819729,-0.2809477150440216,-0.0648737549781799,0.0628297328948975,-0.0289039611816406,0.2075700014829636,0.0229938887059689,0.4479183554649353,-0.0336098074913025,-0.1816260963678360,0.0469142943620682,-1.0336846113204956));
res += mul(Get(s4,dx,-dy), float4x4(-0.1683659106492996,-0.0384796299040318,-0.0939314290881157,-0.0443621613085270,-0.1159008294343948,0.0156281739473343,0.0248469784855843,0.0642762631177902,0.0485186316072941,-0.1266283988952637,-0.1283560246229172,-0.4891359508037567,-0.1754893660545349,-0.0704904645681381,-0.0150032350793481,0.3364858031272888));
res += mul(Get(s5,dx,-dy), float4x4(0.0308102164417505,0.0476820729672909,-0.0246134474873543,0.0752527937293053,0.0760053619742393,0.3022370636463165,-0.0084797786548734,-0.2824313938617706,-0.0163115989416838,-0.1197266802191734,-0.0115537168458104,0.1402410566806793,0.0777401849627495,-0.1821626722812653,0.0999309793114662,0.1944369524717331));
res += mul(Get(s0,dx,0), float4x4(0.0595608502626419,0.0470857098698616,0.0061196032911539,0.0171048380434513,0.1938762217760086,-0.1302924156188965,0.0134496949613094,0.1953468173742294,0.0993269681930542,-0.2490938901901245,-0.0339750684797764,0.1198053508996964,0.0438758172094822,0.1400383114814758,-0.1230973750352859,0.1108221709728241));
res += mul(Get(s1,dx,0), float4x4(-0.0237202271819115,-0.2107038050889969,0.0807821527123451,-0.0378931760787964,0.0278161019086838,-0.1512481123209000,0.0505455285310745,-0.0713376924395561,-0.0912449583411217,0.0729740113019943,-0.1000216528773308,-0.0894058942794800,-0.2721225321292877,-0.1065933555364609,-0.1503522098064423,-0.0689273104071617));
res += mul(Get(s2,dx,0), float4x4(-0.0847395882010460,-0.0198555532842875,0.0450661890208721,-0.1388338208198547,0.2286005765199661,0.1198474019765854,0.0408803820610046,0.2611075937747955,0.0548974722623825,-0.1370420306921005,0.0012857192195952,-0.2323998510837555,0.1688408553600311,-0.0074489945545793,-0.0670015737414360,0.0322294794023037));
res += mul(Get(s3,dx,0), float4x4(0.0360169224441051,-0.6708850264549255,0.1531034857034683,-0.0367401577532291,-0.0331169217824936,-0.2693812847137451,0.2358868718147278,-0.0343531332910061,-0.1054451689124107,-0.0183902848511934,0.0525481030344963,-0.1538941711187363,-0.0363393947482109,0.2897527813911438,0.1019631773233414,0.4706678390502930));
res += mul(Get(s4,dx,0), float4x4(-0.1448490023612976,-0.1182936802506447,0.1017772480845451,-0.1697404533624649,0.0444067530333996,-0.0260102897882462,-0.1884976476430893,-0.0253528505563736,0.0141340186819434,0.1306666880846024,0.0060364124365151,0.0852611064910889,0.2120501697063446,-0.0591042302548885,-0.0200336575508118,-0.0515654869377613));
res += mul(Get(s5,dx,0), float4x4(0.0499328561127186,-0.0713993906974792,0.0787013620138168,-0.1353211551904678,-0.0539776347577572,0.1516943871974945,0.0867311209440231,0.0692984163761139,-0.0987426489591599,-0.0821503326296806,0.0538015179336071,-0.1781056225299835,-0.1786769926548004,-0.1844963282346725,-0.0161707475781441,-0.1036776006221771));
res += mul(Get(s0,dx,dy), float4x4(-0.0416186191141605,0.0855387970805168,0.0616804659366608,0.1379324346780777,0.0012770497705787,0.0779436901211739,0.1154967322945595,0.1823203861713409,-0.1707533150911331,0.1478222608566284,-0.1315864026546478,-0.2905457615852356,-0.1234157755970955,0.0913249626755714,-0.1249970868229866,0.2589137256145477));
res += mul(Get(s1,dx,dy), float4x4(-0.1422721743583679,0.0224778372794390,-0.1605628877878189,-0.2202861160039902,0.0965100079774857,0.0854746922850609,-0.0573831647634506,-0.0029550974722952,0.1305185705423355,-0.0274472720921040,0.0414200201630592,0.1196015924215317,0.0229424815624952,-0.1317368745803833,-0.1116513013839722,-0.2242337018251419));
res += mul(Get(s2,dx,dy), float4x4(0.1634228080511093,-0.0076378141529858,-0.0305403862148523,-0.0795115455985069,0.1734361499547958,-0.0316559635102749,0.0656306520104408,0.0300416275858879,0.0535592213273048,-0.1378238052129745,-0.0045527489855886,0.0502543672919273,0.0493847951292992,-0.0636714398860931,-0.0468166284263134,-0.0553486756980419));
res += mul(Get(s3,dx,dy), float4x4(-0.1011256799101830,0.1033692061901093,-0.0964275896549225,-0.2486983537673950,0.0180872827768326,0.0562533438205719,0.0712508484721184,0.0551011264324188,-0.0515627413988113,-0.0416133590042591,0.0652335584163666,0.2620905637741089,-0.0097520900890231,0.0562618151307106,-0.0972601473331451,0.0900264605879784));
res += mul(Get(s4,dx,dy), float4x4(0.2754369080066681,0.1532128751277924,-0.0349475629627705,-0.1291174739599228,-0.0917492955923080,0.0344815850257874,0.1961402595043182,0.1998004168272018,0.0036249810364097,0.2568298280239105,0.1592784076929092,-0.0644596964120865,-0.0714806392788887,0.2249076664447784,-0.0143646923825145,0.0312532894313335));
res += mul(Get(s5,dx,dy), float4x4(-0.0771098211407661,-0.0099626649171114,-0.0170862898230553,-0.0466641858220100,0.1449331492185593,-0.0087184933945537,0.0233008749783039,-0.0771091133356094,0.0657486319541931,-0.0703207924962044,-0.0712935999035835,-0.1473830044269562,-0.0235223826020956,-0.0003361855633557,0.0403604283928871,-0.1539901047945023));
res = max(float4(0, 0, 0, 0), res) + float4(-0.0089084804058075,0.8784350156784058,-0.6995941996574402,-0.0023329136893153) * min(float4(0, 0, 0, 0), res);
return res;
}
