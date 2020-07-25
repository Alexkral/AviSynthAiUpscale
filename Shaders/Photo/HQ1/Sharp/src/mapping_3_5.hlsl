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
float4 res = float4(-0.0061071882955730,0.0118293967097998,-0.0564647242426872,0.0416699796915054);
res += mul(Get(s0,-dx,-dy), float4x4(-0.1224751994013786,-0.0077173393219709,0.0791542306542397,-0.1073491275310516,-0.0026800790801644,0.0724262297153473,-0.1010663211345673,0.0294742193073034,-0.1951827555894852,-0.1157286837697029,0.2588162720203400,-0.0283983461558819,-0.0425361618399620,-0.2268784791231155,0.0502181574702263,0.0071795717813075));
res += mul(Get(s1,-dx,-dy), float4x4(0.0194000303745270,-0.0700492262840271,-0.0663286596536636,0.1181663274765015,0.0987446159124374,-0.1123016774654388,-0.1356583535671234,0.0771991163492203,0.4211243689060211,-0.0235173944383860,-0.2609403431415558,0.0181681811809540,-0.0074292803183198,0.0578432828187943,0.1780459135770798,-0.0490909665822983));
res += mul(Get(s2,-dx,-dy), float4x4(0.1717186719179153,-0.0141080757603049,0.1101535409688950,-0.0807609632611275,0.2033641934394836,-0.0414006710052490,0.1025716140866280,-0.0663083344697952,0.0469457842409611,0.0546618998050690,-0.0054865907877684,-0.0190162193030119,-0.0343497656285763,-0.0790191963315010,-0.0482155568897724,0.0638678967952728));
res += mul(Get(s3,-dx,-dy), float4x4(0.0236515551805496,-0.0424893535673618,-0.1085191741585732,0.1019402444362640,-0.1050944849848747,-0.0313762016594410,0.0025582211092114,-0.0433218181133270,0.0694042593240738,-0.0283338408917189,0.0185431633144617,-0.0469671227037907,0.1006508097052574,0.0671811401844025,0.1036274731159210,0.0501920133829117));
res += mul(Get(s4,-dx,-dy), float4x4(-0.1004136651754379,-0.0994851440191269,0.0792258605360985,-0.0540005899965763,0.0223361030220985,-0.1375949531793594,-0.1848853528499603,0.0512490123510361,-0.0445299819111824,0.1441010087728500,-0.0116453999653459,0.1322515159845352,-0.1142669618129730,0.0184757150709629,-0.0798525512218475,-0.0090824663639069));
res += mul(Get(s5,-dx,-dy), float4x4(-0.0558611452579498,0.0011400036746636,0.0019666585139930,-0.0445163473486900,-0.0614786967635155,0.0559274554252625,-0.1033514440059662,0.1101063936948776,-0.0346931815147400,0.0325877889990807,0.0169798098504543,-0.0509979538619518,-0.0931065827608109,0.1117367297410965,0.0625923871994019,0.0087532959878445));
res += mul(Get(s0,-dx,0), float4x4(-0.0973959565162659,0.0476041994988918,0.0246670525521040,-0.0570478811860085,0.1552096009254456,0.0557694286108017,-0.0573563203215599,0.0365569889545441,-0.4881620705127716,0.0745968446135521,0.0979069173336029,-0.1971311718225479,-0.1684608906507492,-0.0215750299394131,-0.0553126856684685,-0.0600372925400734));
res += mul(Get(s1,-dx,0), float4x4(0.0382292307913303,-0.0262968856841326,-0.0832452997565269,0.1301891207695007,-0.0472758449614048,0.0534100420773029,0.1125142201781273,-0.0298712365329266,-0.0626436695456505,-0.0365278944373131,0.1177768334746361,0.0419827178120613,-0.0714233741164207,0.1442942023277283,0.0701536536216736,-0.0336581505835056));
res += mul(Get(s2,-dx,0), float4x4(0.0892866700887680,0.2316394448280334,0.1129410266876221,-0.1930562257766724,-0.0673492774367332,0.0551532730460167,0.1605035513639450,0.0146958585828543,-0.0377278365194798,-0.2027103900909424,0.1349548697471619,-0.0558551698923111,-0.1368939131498337,-0.0718552544713020,-0.0760743990540504,0.1011096611618996));
res += mul(Get(s3,-dx,0), float4x4(-0.1553280055522919,-0.1114643663167953,0.1144479066133499,-0.0363786481320858,-0.0992177799344063,-0.0397970005869865,0.0347594060003757,0.0219841673970222,-0.0873260200023651,0.1094982177019119,-0.1458870619535446,-0.0189756322652102,-0.0521505773067474,-0.0289640612900257,-0.0558070056140423,0.1400534808635712));
res += mul(Get(s4,-dx,0), float4x4(0.0612726695835590,-0.0434904582798481,-0.0244993753731251,-0.0660357251763344,0.0984146445989609,0.0780602619051933,0.0564662255346775,0.1042567864060402,-0.1969248652458191,-0.2072295546531677,-0.1791956722736359,-0.1147260740399361,0.0128815528005362,0.0879303589463234,-0.0852750986814499,0.0771931111812592));
res += mul(Get(s5,-dx,0), float4x4(0.1021953225135803,-0.1523924022912979,0.0530846938490868,0.0222778283059597,-0.0462679639458656,-0.0878019109368324,0.0187123175710440,-0.0495600067079067,-0.0110455118119717,-0.1322677731513977,0.0594635717570782,-0.0711727365851402,-0.0617745928466320,0.0112513052299619,-0.1713204085826874,-0.1005112603306770));
res += mul(Get(s0,-dx,dy), float4x4(0.0003820031124633,-0.1405163109302521,0.0135175865143538,-0.0507710985839367,-0.0413363464176655,-0.0607713200151920,-0.0443371608853340,0.0373494550585747,-0.1560772061347961,0.1313890069723129,-0.0285564307123423,-0.0784979239106178,-0.0439146868884563,-0.1199005022644997,-0.1334158927202225,0.0481160394847393));
res += mul(Get(s1,-dx,dy), float4x4(-0.1370634138584137,-0.0092355972155929,-0.0085020493716002,0.1593619138002396,0.0666815042495728,0.0481212362647057,-0.1546264737844467,-0.0031814726535231,-0.1031385883688927,0.0215423721820116,-0.0227988008409739,0.0439050346612930,0.0788509175181389,-0.0737306401133537,0.1364083588123322,-0.0165706183761358));
res += mul(Get(s2,-dx,dy), float4x4(0.2547337412834167,-0.0292436592280865,0.0223175752907991,-0.1330164372920990,0.1557709276676178,0.0404880270361900,0.1112607270479202,-0.1134266108274460,-0.0792909860610962,-0.1711771190166473,0.0524212531745434,-0.0267391502857208,-0.1312072873115540,0.0918373838067055,-0.0193514227867126,-0.0518161468207836));
res += mul(Get(s3,-dx,dy), float4x4(-0.1789344400167465,0.1292321234941483,-0.0609145984053612,0.0914841145277023,-0.0028707904275507,-0.0758752226829529,-0.0623168498277664,-0.0899472087621689,-0.0517421141266823,-0.1501772552728653,-0.0235436893999577,-0.0020498146768659,-0.0742127522826195,0.1293463408946991,0.0511743649840355,0.0110909175127745));
res += mul(Get(s4,-dx,dy), float4x4(0.1668033301830292,-0.1215400323271751,-0.0083186896517873,-0.0540456995368004,-0.0409030839800835,-0.1168598607182503,0.0456691235303879,-0.0442834161221981,-0.2764663398265839,-0.1509002000093460,0.0996673256158829,-0.0308480989187956,0.0620271116495132,0.0683953985571861,-0.0358768291771412,-0.1719821244478226));
res += mul(Get(s5,-dx,dy), float4x4(-0.2151243537664413,-0.0610338523983955,0.0685454308986664,-0.0100581878796220,-0.2853987216949463,0.1136944964528084,0.1092930138111115,0.0349939167499542,-0.0400594621896744,-0.0084323566406965,-0.0341619849205017,-0.0625437945127487,-0.0667485371232033,-0.2505289316177368,-0.2268110215663910,-0.0471510812640190));
res += mul(Get(s0,0,-dy), float4x4(0.0646247789263725,-0.0825593322515488,-0.0445826649665833,0.0442548990249634,0.1128896474838257,0.0889169648289680,-0.1048020347952843,0.1041517928242683,0.0175923500210047,0.0706968903541565,0.2385553270578384,0.0579007267951965,-0.0212715454399586,-0.1570429801940918,0.1464411467313766,-0.2610608935356140));
res += mul(Get(s1,0,-dy), float4x4(-0.0527278147637844,-0.0439327917993069,-0.0392296686768532,0.0523418523371220,-0.1772891432046890,-0.2074450403451920,-0.1271278411149979,0.0485579073429108,0.2357237040996552,0.0195156019181013,-0.0312207248061895,0.2188257426023483,0.1411871612071991,0.0046861441805959,0.0985865443944931,0.0176999289542437));
res += mul(Get(s2,0,-dy), float4x4(0.0905262976884842,-0.1030325889587402,0.3062561452388763,0.2067898958921432,0.0245320871472359,-0.0851394608616829,-0.0092791523784399,0.0165451895445585,0.0291170440614223,0.1399166136980057,0.0138194533064961,0.0683047324419022,0.0041729765944183,-0.0518353544175625,0.0426556430757046,-0.0395582914352417));
res += mul(Get(s3,0,-dy), float4x4(0.0944329723715782,0.0387368649244308,-0.1831100732088089,0.0498793125152588,0.0224517825990915,-0.0155060524120927,0.0398848727345467,0.0069351056590676,-0.0812710598111153,0.0976663604378700,0.1137266010046005,-0.0904853865504265,0.1294580399990082,0.0313040763139725,0.0453129671514034,0.0437802486121655));
res += mul(Get(s4,0,-dy), float4x4(-0.0245816335082054,0.0331908240914345,-0.0366337932646275,0.0656639337539673,0.0264334026724100,-0.1346927136182785,-0.0059740571305156,0.0623481683433056,-0.0211310740560293,0.1036882922053337,0.0272635854780674,-0.0793592408299446,0.0115613099187613,0.0363475270569324,-0.0639773830771446,-0.0262818858027458));
res += mul(Get(s5,0,-dy), float4x4(-0.0417765825986862,0.0656831860542297,-0.0361197069287300,0.0325935967266560,0.0505833774805069,0.1150213107466698,-0.0222917571663857,0.0290131401270628,-0.0552536584436893,0.1477559059858322,-0.0507562160491943,0.1480809450149536,0.0814720690250397,0.0199777390807867,0.1255160123109818,0.2003735601902008));
res += mul(Get(s0,0,0), float4x4(0.1681158393621445,0.2927436232566833,0.0172040835022926,-0.0634223595261574,-0.0255839284509420,-0.2117478549480438,-0.0871205702424049,-0.0643829628825188,0.0869866684079170,0.1035441309213638,0.2548626959323883,-0.0873120874166489,-0.1284091621637344,-0.0339388921856880,0.0019976119510829,-0.0296385977417231));
res += mul(Get(s1,0,0), float4x4(-0.0260955840349197,0.0022738527040929,-0.1568206846714020,0.0761887654662132,0.0811433196067810,-0.1089476272463799,-0.1460599303245544,0.0415897183120251,0.1809078454971313,0.2051331996917725,0.1743711233139038,-0.0020028285216540,0.0841339454054832,-0.0972504690289497,0.2496595382690430,-0.2259313017129898));
res += mul(Get(s2,0,0), float4x4(-0.1006040126085281,-0.1154144331812859,0.0830819159746170,0.2736950814723969,0.1329153776168823,-0.0998400747776031,-0.4463585019111633,-0.2208025455474854,-0.0612884685397148,-0.0976797342300415,0.3009617924690247,-0.0772560387849808,0.2440686374902725,-0.0567509382963181,0.0029829558916390,0.0805813968181610));
res += mul(Get(s3,0,0), float4x4(0.0605999119579792,0.0629382506012917,-0.0540246181190014,-0.0369084477424622,0.0897913873195648,0.0168969780206680,-0.0300505105406046,-0.0631311461329460,-0.0562843047082424,0.0263251606374979,0.2003351002931595,-0.2129703462123871,-0.0729733631014824,-0.1517724245786667,0.1287933140993118,-0.1815006136894226));
res += mul(Get(s4,0,0), float4x4(0.0586650930345058,-0.1109799146652222,-0.0568719580769539,0.1664108335971832,0.1528427153825760,-0.0356335043907166,0.0074122846126556,0.1429235488176346,0.2740573585033417,0.0091681545600295,0.1471064388751984,0.0346016325056553,-0.1185681447386742,0.1011571511626244,0.3060274124145508,-0.0832178071141243));
res += mul(Get(s5,0,0), float4x4(-0.0535856559872627,-0.0955761075019836,0.1179646328091621,0.1111504137516022,-0.1325523406267166,-0.1095958575606346,-0.0014259649906307,-0.0781058073043823,0.1117477864027023,-0.0135227460414171,-0.1928109973669052,-0.0007226972375065,0.0034721440169960,0.0474638864398003,-0.0930405631661415,0.0871132239699364));
res += mul(Get(s0,0,dy), float4x4(-0.2019340693950653,-0.0913385152816772,-0.0171134322881699,-0.0453945510089397,-0.0823935046792030,-0.1282571256160736,0.0890338793396950,-0.0197532381862402,-0.0334081575274467,-0.0188587419688702,0.0774127542972565,0.0315225645899773,0.0156260263174772,-0.0242968760430813,-0.1032812893390656,-0.1047304198145866));
res += mul(Get(s1,0,dy), float4x4(-0.0375981107354164,-0.0722163990139961,0.1403793245553970,0.1980374008417130,0.1783801168203354,0.0724790990352631,-0.0517277233302593,0.0438752621412277,0.1314035356044769,0.2921695113182068,0.0410148203372955,0.0652740001678467,0.1354986876249313,0.2390536814928055,0.0755032598972321,0.1287295222282410));
res += mul(Get(s2,0,dy), float4x4(0.0158566534519196,-0.0769044533371925,-0.1615083664655685,-0.0941362529993057,0.3016065657138824,-0.1445305943489075,-0.0430902875959873,-0.0190108474344015,-0.0293785538524389,0.0716817677021027,-0.0254516359418631,-0.0809828564524651,0.0832779109477997,0.2083581686019897,0.0489417202770710,-0.0170209016650915));
res += mul(Get(s3,0,dy), float4x4(-0.0166067238897085,-0.0037974091246724,0.0227886736392975,0.0533101446926594,0.2423697412014008,-0.0550717897713184,0.0038420616183430,-0.0592393241822720,-0.1569320261478424,0.0917456224560738,0.0062103094533086,0.0136400824412704,0.1873311549425125,0.0376704409718513,-0.1163739636540413,-0.1706400364637375));
res += mul(Get(s4,0,dy), float4x4(-0.0868019908666611,-0.0273150578141212,0.2038263529539108,-0.0407043211162090,0.0694127678871155,-0.0357955433428288,0.0250255335122347,0.0652726441621780,-0.0792203024029732,0.0534873157739639,-0.1549961566925049,-0.0627917721867561,-0.2095392048358917,-0.0347819663584232,-0.0865113586187363,-0.0915766805410385));
res += mul(Get(s5,0,dy), float4x4(-0.0883620604872704,-0.0138322357088327,0.2498904764652252,-0.1815875172615051,0.2200919389724731,0.0917496234178543,0.0665242522954941,-0.1261617988348007,0.0671571120619774,-0.2494206577539444,-0.0717910975217819,-0.0152673805132508,0.1577361822128296,-0.2555097341537476,0.0080802068114281,0.0402305983006954));
res += mul(Get(s0,dx,-dy), float4x4(-0.1871493905782700,-0.0273699350655079,-0.0777710750699043,-0.0217634607106447,0.0092358719557524,0.0806390345096588,0.1258653104305267,0.0291492547839880,0.1088005229830742,-0.0131386825814843,0.1072934791445732,0.0348992682993412,0.2467800378799438,0.0001520223886473,0.0581278428435326,-0.0514295920729637));
res += mul(Get(s1,dx,-dy), float4x4(0.0198997557163239,-0.0203940272331238,-0.0893484130501747,0.0134314540773630,-0.0160497352480888,-0.0758463665843010,-0.0539492554962635,-0.0038239266723394,0.0006550672696903,-0.1583727896213531,-0.2309631854295731,-0.1676913946866989,-0.0269643682986498,0.1227634400129318,0.2766331732273102,0.0180313549935818));
res += mul(Get(s2,dx,-dy), float4x4(-0.2401352524757385,0.0105793531984091,0.1417447626590729,0.0278441812843084,0.0409565269947052,0.0975039452314377,-0.1145411431789398,-0.0733851343393326,-0.0804090648889542,0.1483534127473831,0.1635149121284485,-0.1491568535566330,-0.0499310828745365,0.0317304581403732,-0.0501528680324554,0.0922796130180359));
res += mul(Get(s3,dx,-dy), float4x4(-0.0201307162642479,-0.0637884661555290,0.0509934276342392,-0.0123577024787664,-0.0363378971815109,0.1099857911467552,-0.0405919514596462,-0.0731860920786858,0.0907984450459480,0.0761736780405045,-0.0334888286888599,0.0572583116590977,-0.0137817002832890,0.0077369664795697,0.0508519932627678,0.0324980579316616));
res += mul(Get(s4,dx,-dy), float4x4(-0.0492101944983006,0.0747133120894432,0.0115402601659298,-0.0308246426284313,0.0717025995254517,-0.1221184879541397,-0.0571361519396305,0.0220921915024519,0.1097219362854958,0.0502415746450424,0.2778728604316711,0.0429620705544949,0.0286717656999826,0.0205746907740831,-0.0548885799944401,-0.0435158088803291));
res += mul(Get(s5,dx,-dy), float4x4(0.0226487219333649,0.0661460012197495,-0.0349497608840466,0.0092032598331571,0.0095100877806544,0.0724161118268967,-0.0309759508818388,-0.1054145842790604,0.0046630357392132,0.1126089468598366,0.0916217342019081,0.0008548153564334,-0.0041802483610809,-0.0062353941611946,0.0939899012446404,0.0817557647824287));
res += mul(Get(s0,dx,0), float4x4(-0.0896153301000595,0.0919942781329155,0.1072442680597305,0.0710599943995476,0.0066330931149423,-0.1442890614271164,0.3201627731323242,0.0618413053452969,0.0366660170257092,-0.2193233817815781,0.2169752120971680,0.1198036298155785,-0.0505562052130699,0.0189569275826216,0.1734896302223206,-0.2480564415454865));
res += mul(Get(s1,dx,0), float4x4(0.0037507282104343,-0.0495736561715603,-0.0046170367859304,0.0368202775716782,-0.0580586977303028,0.1536107808351517,-0.0534331314265728,-0.1016341373324394,-0.1503600776195526,0.0521688759326935,0.1002495065331459,0.5359753370285034,-0.1227872297167778,-0.1015528738498688,0.3214449882507324,-0.0288772564381361));
res += mul(Get(s2,dx,0), float4x4(-0.1534839719533920,0.1145364418625832,0.0705764293670654,-0.0498513430356979,-0.1116015538573265,0.2457400411367416,0.0371498763561249,-0.1049339398741722,0.0942458510398865,0.1377266943454742,0.2158568352460861,0.0298782810568810,-0.2283312380313873,0.1743898689746857,0.0293376557528973,-0.0211148951202631));
res += mul(Get(s3,dx,0), float4x4(0.0706116259098053,0.0308071617037058,0.1067994460463524,-0.0043037561699748,-0.0410522669553757,-0.0449464879930019,-0.0531257167458534,0.0252973791211843,0.0523655861616135,-0.0063309599645436,0.0431088320910931,0.0193641707301140,-0.0014852687017992,0.1408050507307053,0.0081439604982734,0.0495810173451900));
res += mul(Get(s4,dx,0), float4x4(-0.1229253858327866,-0.0611405782401562,0.1932300925254822,0.0115331551060081,-0.0447777323424816,-0.1458135247230530,0.0883229821920395,0.0036533800885081,0.1010332703590393,-0.0672630295157433,0.1280486732721329,0.1476870626211166,0.1698781996965408,-0.0423920378088951,-0.0705039501190186,0.0523630902171135));
res += mul(Get(s5,dx,0), float4x4(0.0268086902797222,-0.2168688178062439,-0.2161829918622971,0.0860282927751541,0.0939704775810242,-0.1106594204902649,0.0433275401592255,-0.0869510695338249,-0.0548470951616764,0.1190327033400536,0.1432908475399017,-0.1078921481966972,0.0087826428934932,-0.1093302741646767,-0.0692838802933693,0.1324768364429474));
res += mul(Get(s0,dx,dy), float4x4(0.0434791706502438,-0.1025308072566986,0.0102276504039764,0.0846922099590302,-0.0549365691840649,-0.0381766073405743,-0.0412107594311237,0.0274000894278288,0.0580442063510418,0.0913766250014305,-0.0401518568396568,-0.0559552274644375,0.0354083664715290,0.1521310061216354,0.1190656721591949,-0.2966721951961517));
res += mul(Get(s1,dx,dy), float4x4(0.0127065535634756,-0.0438760407269001,0.0933960005640984,0.0220949221402407,0.0196071956306696,0.0906545147299767,0.0850713551044464,-0.1151369512081146,-0.0327292904257774,0.1099325492978096,0.0611397176980972,-0.0068379794247448,-0.1095115542411804,0.1158331707119942,0.0053773876279593,0.0041307928040624));
res += mul(Get(s2,dx,dy), float4x4(0.0987429469823837,0.0825547352433205,-0.1562156081199646,0.1114973947405815,-0.0811478272080421,0.1363443434238434,0.2352645397186279,-0.0624093860387802,0.0324997454881668,-0.1132484003901482,-0.0701759830117226,0.0610414259135723,-0.0809532627463341,0.2040041685104370,0.0787610337138176,0.1109142825007439));
res += mul(Get(s3,dx,dy), float4x4(0.1833580434322357,0.1264315843582153,-0.1026298180222511,-0.0916541591286659,-0.0486121624708176,0.1065010949969292,0.0098478356376290,-0.0452744178473949,0.0905283838510513,0.0324508659541607,0.0529142022132874,0.0785341113805771,-0.1205593869090080,-0.0491112172603607,0.0500364303588867,0.0718052461743355));
res += mul(Get(s4,dx,dy), float4x4(-0.0965511947870255,0.0896327495574951,0.1184946745634079,-0.0714925527572632,-0.0882567316293716,-0.0251020845025778,-0.0695207715034485,-0.1757179349660873,0.0996745750308037,-0.0687864795327187,-0.0744587928056717,0.1039100512862206,0.0919648036360741,0.0990971997380257,-0.1582173258066177,-0.0244092587381601));
res += mul(Get(s5,dx,dy), float4x4(0.2054904997348785,0.0785767808556557,-0.3137168884277344,0.1496388614177704,-0.0458297021687031,0.0241266191005707,0.2081706523895264,-0.0196463316679001,0.0851320624351501,-0.0832296162843704,0.0664260312914848,0.0175750125199556,-0.0208588242530823,-0.0029822271317244,-0.0626697987318039,-0.0296314060688019));
res = max(float4(0, 0, 0, 0), res) + float4(-0.2751993834972382,0.4890094697475433,0.1456041783094406,1.9173488616943359) * min(float4(0, 0, 0, 0), res);
return res;
}
