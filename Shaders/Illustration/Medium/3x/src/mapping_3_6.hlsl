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
float4 res = float4(-0.0377361550927162,0.0059737605042756,-0.1721421927213669,0.0879988372325897);
res += mul(Get(s0,-dx,-dy), float4x4(-0.0438516922295094,0.0051645431667566,0.0247417241334915,-0.0730205848813057,-0.0352503843605518,0.1085773706436157,0.0670381113886833,-0.0170237999409437,0.0123257618397474,-0.0843351632356644,0.2022214233875275,-0.1266911774873734,0.0894924998283386,-0.0607438199222088,-0.0689593181014061,0.0911705940961838));
res += mul(Get(s1,-dx,-dy), float4x4(-0.1066226810216904,0.0315987579524517,0.1136670485138893,-0.0147006874904037,0.0118780285120010,-0.0250908937305212,0.0787222236394882,0.0527554191648960,0.0078896339982748,-0.1062439382076263,-0.0450268201529980,0.0606870241463184,-0.0722641870379448,0.0162400640547276,-0.2272581011056900,-0.1751140058040619));
res += mul(Get(s2,-dx,-dy), float4x4(-0.1953949630260468,-0.0818465873599052,0.2585994005203247,0.0936490669846535,-0.0749981775879860,-0.1178033500909805,-0.2154020369052887,0.2933792173862457,0.0449035577476025,0.0301547572016716,0.1903192996978760,0.0796151608228683,-0.0625644177198410,-0.0010181885445490,-0.1031603142619133,-0.0655847787857056));
res += mul(Get(s3,-dx,-dy), float4x4(0.1998440176248550,-0.1963823884725571,0.0859477519989014,-0.0690168738365173,0.2845501005649567,-0.0390095375478268,-0.3752800822257996,-0.0402541644871235,-0.0026682852767408,-0.0772975757718086,0.2970594763755798,0.0228410325944424,-0.0034608552232385,-0.0171734020113945,0.0838689133524895,0.0495038442313671));
res += mul(Get(s4,-dx,-dy), float4x4(0.0347481034696102,-0.0240682568401098,0.1531591862440109,0.0550906173884869,0.0610583126544952,0.1278984695672989,0.1114804148674011,-0.0380593687295914,-0.0533416196703911,-0.1316033303737640,-0.0493293069303036,-0.1210255548357964,0.0945516899228096,-0.0303055327385664,-0.0749713554978371,-0.0617141537368298));
res += mul(Get(s5,-dx,-dy), float4x4(-0.0219816528260708,0.0217424891889095,-0.1911513805389404,-0.0357675552368164,0.1669375598430634,0.1125366985797882,0.0607014782726765,0.0808385014533997,-0.0503289252519608,-0.0398949161171913,0.1274012029170990,-0.0461879670619965,-0.0106750559061766,0.0606384575366974,-0.2543544471263885,-0.1824976950883865));
res += mul(Get(s0,-dx,0), float4x4(-0.1071411892771721,-0.0113065494224429,0.0669610723853111,0.0264702066779137,0.1402963846921921,0.1360549628734589,0.1058304980397224,0.0018256518524140,0.1797301620244980,0.0154656386002898,0.0995097234845161,0.1220927536487579,0.1721989810466766,0.0311178453266621,-0.1223262473940849,0.1917040497064590));
res += mul(Get(s1,-dx,0), float4x4(0.1185160875320435,-0.0094254603609443,-0.0763029307126999,-0.2608985006809235,0.3952269554138184,0.0594570524990559,0.1367561221122742,0.0467311032116413,-0.2803740501403809,-0.0306820441037416,0.0675927624106407,-0.0173926949501038,0.0074330037459731,0.0276359692215919,0.1379356086254120,-0.0997017994523048));
res += mul(Get(s2,-dx,0), float4x4(-0.1342478543519974,-0.2882623970508575,0.1994990110397339,0.0107020391151309,0.0731601119041443,0.2787588834762573,-0.2552417218685150,0.2708611488342285,-0.1185560002923012,0.0258162822574377,-0.1428145170211792,-0.0262007750570774,0.0101185636594892,0.0340751111507416,-0.1907065361738205,0.0153896175324917));
res += mul(Get(s3,-dx,0), float4x4(0.2172219455242157,-0.3056958615779877,0.1177903711795807,-0.0314243100583553,-0.0889704078435898,-0.1598053127527237,0.0627970397472382,0.0824998989701271,0.0913870334625244,-0.2423025816679001,0.1471652686595917,-0.1146227568387985,-0.0920147374272346,-0.0594102069735527,0.1951331645250320,0.0661320984363556));
res += mul(Get(s4,-dx,0), float4x4(0.2104479670524597,-0.1503990441560745,-0.1322568506002426,-0.0012395497178659,-0.1155442520976067,-0.1145869195461273,0.0801086500287056,0.3234853446483612,-0.0586484074592590,-0.0396242626011372,-0.1290492415428162,-0.0939540043473244,0.2739167809486389,0.1539301276206970,-0.2096526473760605,0.1816420704126358));
res += mul(Get(s5,-dx,0), float4x4(0.1616752743721008,0.2976529002189636,-0.3274829089641571,0.2820091247558594,-0.0513097010552883,-0.1392534524202347,-0.0769437998533249,-0.0400812327861786,-0.1852836161851883,-0.0568471029400826,0.2025300264358521,0.0173118319362402,-0.1934606581926346,0.0590275526046753,-0.1860661506652832,-0.0196022726595402));
res += mul(Get(s0,-dx,dy), float4x4(-0.1764719635248184,0.1051702052354813,0.0782933682203293,0.0610013715922832,0.3229129016399384,0.0104306330904365,0.0431021451950073,-0.0308477692306042,-0.1252207905054092,-0.0276369452476501,0.0492314286530018,-0.0553877651691437,-0.0280140805989504,0.0450707860291004,0.1475306302309036,-0.0367728956043720));
res += mul(Get(s1,-dx,dy), float4x4(-0.2011780291795731,-0.0786561220884323,0.1339617818593979,-0.1672179102897644,0.2212179452180862,0.0137957679107785,0.0945934504270554,-0.1073749661445618,-0.0767991542816162,-0.0650879591703415,0.0274909101426601,-0.0567645654082298,0.2404265552759171,0.1987616270780563,-0.0522346608340740,-0.0097771668806672));
res += mul(Get(s2,-dx,dy), float4x4(-0.1087447330355644,-0.1057448387145996,-0.0169451851397753,0.0919504389166832,-0.1761488616466522,-0.0872818827629089,-0.0353296138346195,0.1011373996734619,-0.1484953761100769,0.0017963559366763,-0.0754249617457390,-0.0330532118678093,-0.0545865707099438,0.0234476514160633,0.0923794060945511,-0.0953629091382027));
res += mul(Get(s3,-dx,dy), float4x4(0.2185821235179901,-0.1221172660589218,0.0715390890836716,-0.0545872785151005,0.0287358574569225,0.1460633426904678,-0.6497033834457397,0.1842682659626007,-0.0868682786822319,-0.0971269905567169,-0.2282662391662598,0.0296026282012463,-0.1404476314783096,-0.0796934291720390,0.1603314429521561,-0.1402474194765091));
res += mul(Get(s4,-dx,dy), float4x4(-0.1273119896650314,-0.2067139148712158,0.1701842993497849,0.0520997568964958,-0.3745231926441193,-0.1070829033851624,0.3128251731395721,-0.0751394852995872,0.0134056685492396,0.1287213414907455,0.0806320235133171,-0.2877109348773956,0.0285286866128445,0.0221986435353756,-0.1781550198793411,-0.1802843213081360));
res += mul(Get(s5,-dx,dy), float4x4(0.0948167964816093,0.0680109038949013,-0.0076439986005425,0.1099697351455688,0.0596549436450005,0.0942355915904045,0.0931053012609482,0.0434878543019295,-0.2916911840438843,-0.0016317509580404,0.0836719498038292,-0.0416350513696671,0.0338997431099415,0.1037660092115402,0.0402814447879791,-0.0437619313597679));
res += mul(Get(s0,0,-dy), float4x4(0.0380128361284733,-0.1506597399711609,0.0448932237923145,-0.2198523730039597,-0.0026278186123818,0.1485311686992645,-0.0387578569352627,-0.2887291014194489,-0.1164868324995041,0.0744977593421936,-0.0127115892246366,-0.3074626922607422,-0.3485560119152069,-0.0243801753968000,0.0570883154869080,-0.0099493926391006));
res += mul(Get(s1,0,-dy), float4x4(-0.1043864041566849,-0.1620673984289169,0.1649236977100372,0.0044690817594528,0.3516436517238617,0.0840123295783997,-0.1019044071435928,-0.2147135287523270,0.1249504983425140,-0.0006995415897109,-0.1688946485519409,-0.1610458195209503,0.0304070767015219,0.1918099224567413,-0.0741498246788979,-0.2721930742263794));
res += mul(Get(s2,0,-dy), float4x4(-0.1463177204132080,-0.0982140153646469,0.1612708270549774,0.2672051191329956,-0.0265035033226013,0.0273902136832476,-0.2846241593360901,0.2575805485248566,-0.1029653623700142,0.0199036318808794,-0.0579829886555672,-0.2533938884735107,-0.0748436748981476,-0.0871477052569389,-0.0759841874241829,0.0699558332562447));
res += mul(Get(s3,0,-dy), float4x4(0.1887736022472382,-0.0399162173271179,0.3360158503055573,-0.0431511811912060,0.0819897949695587,0.0748130679130554,-0.6773133277893066,-0.3740544319152832,0.0091576380655169,0.0811152756214142,0.2131313830614090,-0.0285596475005150,0.1004087477922440,-0.1093580722808838,0.3641135692596436,0.1075449213385582));
res += mul(Get(s4,0,-dy), float4x4(0.0461566336452961,-0.0413239412009716,-0.0040068365633488,0.0014256307622418,-0.4456619918346405,0.2730762958526611,0.1062762513756752,-0.1373744308948517,-0.1573339849710464,-0.0026447917334735,-0.1409497410058975,-0.0691118761897087,0.2031126916408539,0.0026858618948609,0.1640659719705582,0.0529426261782646));
res += mul(Get(s5,0,-dy), float4x4(0.2502437531948090,-0.0466846041381359,-0.0397324860095978,0.2221620678901672,0.1859207600355148,0.1710776537656784,0.1859569400548935,-0.2801456451416016,-0.1302838772535324,-0.1284506767988205,0.0616038739681244,-0.2866348922252655,0.2711623311042786,-0.0451516397297382,-0.1009750589728355,-0.1780757158994675));
res += mul(Get(s0,0,0), float4x4(-0.5729916095733643,-0.0684116110205650,0.2506785094738007,0.0534455217421055,-0.0215816907584667,-0.4827080368995667,-0.0236806105822325,-0.0807650759816170,-0.0046630213037133,-0.0127513185143471,0.1497996747493744,0.3086206316947937,-0.1688481420278549,0.0794640779495239,-0.0422470234334469,0.1635795384645462));
res += mul(Get(s1,0,0), float4x4(-0.2634045481681824,0.2690221965312958,-0.0418931394815445,-0.5914857387542725,-0.0433341600000858,0.1350090652704239,0.3046461045742035,0.2230859398841858,0.3040236830711365,0.2072458416223526,0.1782066076993942,0.4572483003139496,-0.2255652695894241,-0.0736827030777931,-0.0499702095985413,0.1299425512552261));
res += mul(Get(s2,0,0), float4x4(-0.0902432352304459,-0.1088270321488380,-0.1366885304450989,-0.1121903806924820,-0.1239440590143204,-0.1941822022199631,-0.0441097281873226,0.0206715948879719,-0.1925381422042847,-0.2005832791328430,-0.1366615742444992,0.0688323751091957,-0.1653409749269485,0.0275190379470587,-0.2046131491661072,-0.0930748507380486));
res += mul(Get(s3,0,0), float4x4(0.3410444557666779,-0.1754894405603409,0.1896218359470367,0.0096347611397505,-0.0333207622170448,-0.0002705006045289,-0.6411206126213074,0.3118199110031128,-0.1775771081447601,0.2330605834722519,-0.3145125806331635,0.2681915163993835,0.1180504634976387,0.1700905263423920,0.2187211513519287,0.2461563348770142));
res += mul(Get(s4,0,0), float4x4(0.1593659073114395,0.4912555813789368,-0.7723001837730408,0.4398761093616486,-0.7421845793724060,-0.2180536538362503,-0.1002790331840515,-0.1816502958536148,-0.1199327111244202,-0.0573950968682766,0.0251113250851631,0.1440522223711014,0.2081254571676254,-0.1237585395574570,0.0377497635781765,-0.0960251241922379));
res += mul(Get(s5,0,0), float4x4(0.0591171868145466,0.1410241723060608,0.0409539155662060,-0.0763449445366859,0.1946246773004532,-0.5470877289772034,0.1174840778112411,-1.0897855758666992,0.4461212754249573,0.4859489202499390,-0.0177970658987761,0.3447914421558380,0.1963884681463242,0.0104834977537394,0.5428414344787598,0.1181775555014610));
res += mul(Get(s0,0,dy), float4x4(0.0612609125673771,-0.0953568443655968,0.0906572043895721,0.1259196996688843,0.0423595942556858,0.1651602238416672,0.0037097542081028,0.1863551139831543,-0.0949684977531433,-0.0495277158915997,-0.1176761165261269,-0.0987211912870407,-0.0045933411456645,0.1368045061826706,-0.0487921833992004,0.0459652543067932));
res += mul(Get(s1,0,dy), float4x4(-0.3653962612152100,-0.0889068320393562,0.0777727514505386,-0.1874043345451355,0.1935926973819733,0.0413015373051167,0.0438024215400219,0.2077216804027557,0.0600495524704456,-0.0014689797535539,-0.0780714154243469,-0.1682292222976685,-0.0462825112044811,0.0915422439575195,0.0841183811426163,0.2332768440246582));
res += mul(Get(s2,0,dy), float4x4(-0.0004632844938897,-0.1377330124378204,0.0693815946578979,0.0307387672364712,-0.2086818665266037,0.1093246638774872,-0.1179270520806313,0.1411462426185608,-0.1567936092615128,-0.0059403846971691,0.0272386129945517,-0.1367329955101013,-0.0507652685046196,0.0762644112110138,-0.0672523081302643,-0.0307874344289303));
res += mul(Get(s3,0,dy), float4x4(0.2886955142021179,-0.0631147623062134,-0.0853523984551430,-0.1465712487697601,0.0258222520351410,-0.0508322119712830,-0.1880715489387512,0.1691033244132996,0.0730454176664352,0.0221727769821882,0.2686651647090912,0.1317975968122482,-0.0360930413007736,0.2205542027950287,0.0857774764299393,-0.0101994443684816));
res += mul(Get(s4,0,dy), float4x4(0.0115074161440134,0.0238085612654686,-0.0733496397733688,0.0731480121612549,-0.3204873502254486,0.1556926518678665,-0.0963072031736374,0.1494834870100021,-0.0316076725721359,0.1121401637792587,-0.0908434540033340,0.2215238958597183,0.0388561040163040,-0.0053393370471895,0.0157330259680748,0.0256030671298504));
res += mul(Get(s5,0,dy), float4x4(-0.0366042368113995,0.0323211364448071,-0.1019581407308578,-0.0838334709405899,0.0942763313651085,0.0015778815140948,0.0709919184446335,-0.3531629741191864,-0.1416523158550262,-0.0211061816662550,-0.0357678383588791,-0.1286272406578064,-0.1510780900716782,-0.0544384941458702,0.0374632626771927,-0.2216060906648636));
res += mul(Get(s0,dx,-dy), float4x4(-0.0466303415596485,0.0186875965446234,0.0403522364795208,0.0121575575321913,-0.1047421544790268,0.0064014014787972,0.0542525649070740,-0.0237342398613691,0.0380790121853352,-0.1073184832930565,-0.0679393783211708,-0.1459377259016037,-0.0771012231707573,0.0479539781808853,0.2193540483713150,-0.0109590776264668));
res += mul(Get(s1,dx,-dy), float4x4(-0.1142216697335243,-0.0460266396403313,-0.0464493595063686,-0.0250321421772242,0.1762089580297470,0.2090134918689728,-0.0959472730755806,-0.0312519669532776,0.0029241410084069,0.0946308225393295,0.0787143334746361,-0.2595776617527008,-0.2939113676548004,0.0519169159233570,0.2560743689537048,-0.0234833508729935));
res += mul(Get(s2,dx,-dy), float4x4(-0.0759476646780968,-0.0391290113329887,-0.1753161400556564,0.2452781498432159,-0.0269521083682775,-0.0767873525619507,-0.0137439733371139,0.2396264374256134,-0.0873563438653946,-0.0152199650183320,-0.0027970708906651,-0.0120864724740386,-0.1506966054439545,0.0417788848280907,-0.0732805952429771,-0.1421694159507751));
res += mul(Get(s3,dx,-dy), float4x4(-0.0248019322752953,0.0179701466113329,0.3010433912277222,-0.0017654862022027,0.0144908595830202,0.0947919934988022,-0.4281698465347290,-0.2155807614326477,-0.0643932372331619,0.1509568244218826,0.0649936050176620,0.1649965792894363,-0.0545367449522018,0.0815277919173241,0.0323742292821407,0.1686865389347076));
res += mul(Get(s4,dx,-dy), float4x4(0.0907092019915581,0.0665474310517311,0.0026716568972915,0.0238074343651533,-0.5208098888397217,-0.0088633038103580,0.3816044032573700,0.0531336665153503,-0.0983808338642120,0.0829939320683479,-0.1524986326694489,-0.1464594751596451,0.0413215644657612,-0.0744685828685760,-0.0401740968227386,0.0049156202003360));
res += mul(Get(s5,dx,-dy), float4x4(0.1605336666107178,0.1025955900549889,-0.3010258674621582,0.0163977984338999,0.0860152840614319,0.1334077566862106,-0.0349381379783154,-0.0821722969412804,-0.1850164532661438,-0.0435424558818340,-0.0074461479671299,-0.2185159772634506,0.1199474558234215,0.0263643730431795,-0.0376946814358234,-0.0343629680573940));
res += mul(Get(s0,dx,0), float4x4(-0.0825559347867966,0.0077291917987168,-0.0143716773018241,0.1649941951036453,0.1213141754269600,0.0111220693215728,-0.1438402682542801,0.4050119817256927,-0.0957370251417160,0.1031918302178383,-0.0352304801344872,0.2097373306751251,-0.3903231024742126,0.0082549732178450,0.0635252147912979,0.0987678542733192));
res += mul(Get(s1,dx,0), float4x4(-0.2257358878850937,0.1370781958103180,0.2449357062578201,-0.4436999857425690,0.2722107470035553,-0.0338771417737007,-0.0209763832390308,-0.1739625185728073,0.1922524720430374,-0.0354457870125771,-0.1070809066295624,0.2331125736236572,-0.3100570142269135,-0.0962616056203842,-0.0173568148165941,0.1932569444179535));
res += mul(Get(s2,dx,0), float4x4(-0.0661081820726395,-0.0801986306905746,-0.0137315141037107,0.0606401339173317,0.0042197275906801,-0.0175706874579191,-0.1750216931104660,0.2969739437103271,-0.0723039358854294,-0.0499339662492275,0.0601938478648663,-0.1302719265222549,0.0117939114570618,0.1643666476011276,-0.0004213167994749,-0.0510204881429672));
res += mul(Get(s3,dx,0), float4x4(0.2410194724798203,0.1369685530662537,-0.0347950756549835,-0.2945366799831390,-0.0101622641086578,0.0901748314499855,-0.5082487463951111,0.0095473947003484,0.1204109191894531,-0.0973573103547096,-0.0058187772519886,0.3550025820732117,0.4394279718399048,0.0750269144773483,-0.0700725764036179,0.0583631880581379));
res += mul(Get(s4,dx,0), float4x4(-0.0319889485836029,-0.0267249159514904,-0.1174689680337906,-0.1247159689664841,-0.8546431064605713,0.0846501663327217,0.0938237458467484,0.1482622027397156,-0.0642253309488297,-0.0194752048701048,0.0037427183706313,-0.1831884533166885,0.0303778834640980,-0.0331909321248531,-0.2494214177131653,0.1190842390060425));
res += mul(Get(s5,dx,0), float4x4(-0.1145970746874809,-0.0144900092855096,0.2624475657939911,-0.3149290680885315,0.2773448526859283,-0.0476222373545170,0.0574413649737835,-0.6093497276306152,-0.1045795083045959,-0.1695389747619629,0.1005391925573349,0.3132236897945404,0.1826589554548264,0.0900179743766785,-0.3700492680072784,0.0659383013844490));
res += mul(Get(s0,dx,dy), float4x4(-0.0825332850217819,-0.0579377859830856,0.0319898314774036,-0.0343824476003647,0.0150423618033528,-0.1665809750556946,-0.0316378436982632,0.0949058756232262,-0.0513118766248226,0.0585997402667999,0.0655769184231758,-0.0938121378421783,-0.0126579692587256,0.0128827979788184,-0.1231494098901749,-0.0886860564351082));
res += mul(Get(s1,dx,dy), float4x4(-0.1038544327020645,0.0919492766261101,0.0262846574187279,-0.3556030392646790,0.1510976552963257,-0.0129584865644574,-0.1904359608888626,-0.0950978174805641,-0.0518130324780941,0.0323463715612888,0.0843180418014526,-0.0865946933627129,-0.1314819008111954,-0.0203515086323023,-0.2333728969097137,0.1026060357689857));
res += mul(Get(s2,dx,dy), float4x4(0.0048804413527250,-0.0831061229109764,0.0669346526265144,0.0742506161332130,-0.0536862984299660,-0.0347519144415855,-0.2115904688835144,0.0680285394191742,-0.0717154145240784,0.0265077967196703,-0.1258654445409775,-0.0269919522106647,0.0072028459981084,0.0310479775071144,-0.0532045513391495,-0.0447498671710491));
res += mul(Get(s3,dx,dy), float4x4(0.1819814145565033,-0.0426899753510952,0.2616405189037323,-0.2987255156040192,-0.0143269412219524,0.0993657559156418,-0.2099302411079407,0.1815393418073654,0.2426268309354782,0.0355513989925385,0.1037679761648178,0.0024355156347156,0.0111711174249649,0.1074330955743790,0.1498105227947235,-0.0348027423024178));
res += mul(Get(s4,dx,dy), float4x4(-0.0435930564999580,0.0573279894888401,0.0586800724267960,-0.0197485387325287,-0.2837815284729004,0.0898793190717697,0.1668993532657623,-0.1589745730161667,0.0208087544888258,0.0777259692549706,-0.0452236607670784,0.1229321584105492,0.1847766935825348,0.0270995050668716,-0.0886680930852890,-0.1187678799033165));
res += mul(Get(s5,dx,dy), float4x4(0.2428324222564697,0.0997083783149719,-0.1001500710844994,-0.1595453917980194,0.0851772651076317,0.0451962687075138,-0.0213904380798340,-0.2634215354919434,-0.0783139988780022,-0.0380215160548687,0.0022446524817497,0.0717711225152016,0.0885537788271904,-0.0456743687391281,-0.1393669098615646,-0.1368006318807602));
res = max(float4(0, 0, 0, 0), res) + float4(-0.0273689106106758,1.2004327774047852,-0.0100965062156320,-0.0890213474631310) * min(float4(0, 0, 0, 0), res);
return res;
}
