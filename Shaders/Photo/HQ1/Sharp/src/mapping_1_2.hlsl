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
float4 res = float4(0.0000914653282962,0.0047652777284384,-0.0141539089381695,0.0315002426505089);
res += mul(Get(s0,-dx,-dy), float4x4(-0.0981764197349548,0.0759407728910446,0.1875496506690979,-0.1275652796030045,0.0364608988165855,-0.4587449729442596,0.0188500434160233,0.1932203471660614,-0.0381373502314091,0.0257495548576117,-0.1820853650569916,0.1519835442304611,-0.0382008031010628,0.2324547171592712,-0.1132206171751022,-0.0229443367570639));
res += mul(Get(s1,-dx,-dy), float4x4(0.0653517916798592,-0.0613698549568653,-0.1178301870822906,0.1092169359326363,-0.0042092590592802,0.0744200572371483,-0.0072981626726687,-0.1106148511171341,0.0227300040423870,-0.1706266403198242,-0.1555581986904144,-0.0370819345116615,0.0681183487176895,0.1167090684175491,-0.2175329923629761,0.0403339676558971));
res += mul(Get(s2,-dx,-dy), float4x4(0.0471296273171902,0.0955813601613045,0.0175439585000277,0.1162437126040459,-0.0131971295922995,0.1451672911643982,-0.1654548048973083,-0.0678026899695396,0.0110753430053592,-0.1636349707841873,0.1500725895166397,0.0817516371607780,0.0013050260022283,-0.1734894365072250,-0.0438399016857147,-0.2320926487445831));
res += mul(Get(s3,-dx,-dy), float4x4(0.0496960021555424,0.0255011077970266,0.1061167046427727,-0.1680449247360229,-0.0813363939523697,0.0520465373992920,-0.0657519847154617,0.0997790619730949,-0.1095059961080551,-0.0267544966191053,-0.0023889320436865,-0.0237424727529287,-0.0231679882854223,-0.0252974014729261,0.0960078537464142,0.0497555769979954));
res += mul(Get(s4,-dx,-dy), float4x4(0.0500528588891029,-0.1404023021459579,0.0062540587969124,-0.4581926465034485,0.1949515491724014,0.3534322082996368,0.0580049343407154,0.2721654474735260,-0.1198663935065269,-0.0590468123555183,0.1238187626004219,0.1173697561025620,0.0737947076559067,0.0398117303848267,-0.1123724430799484,0.0248465016484261));
res += mul(Get(s5,-dx,-dy), float4x4(-0.1292806714773178,-0.3934847712516785,-0.2920774221420288,-0.1057239323854446,-0.0670879632234573,-0.0161805264651775,-0.0661366656422615,-0.0633946657180786,0.0132840787991881,-0.0817480161786079,-0.2552076578140259,-0.2014821469783783,-0.0452420376241207,-0.0316212326288223,-0.0204504393041134,-0.1397708803415298));
res += mul(Get(s0,-dx,0), float4x4(-0.0819376781582832,-0.3098561465740204,0.0030017807148397,-0.2797696888446808,0.3214361071586609,-0.3197414278984070,0.1904082149267197,-0.0273988209664822,0.1556737273931503,-0.0213461872190237,0.2371550500392914,-0.0084888143464923,0.0940017998218536,0.1221529394388199,-0.1888506412506104,-0.2117972522974014));
res += mul(Get(s1,-dx,0), float4x4(-0.0711256861686707,-0.0600040778517723,0.0271866563707590,0.0547296963632107,-0.0365443825721741,-0.2021332085132599,0.1071083322167397,-0.1220571249723434,-0.0093099856749177,-0.0562335737049580,0.2041535526514053,-0.0452329069375992,0.0872971490025520,0.1288359612226486,-0.0958390384912491,0.1298349201679230));
res += mul(Get(s2,-dx,0), float4x4(0.0020637060515583,0.1929221153259277,-0.2185905724763870,-0.0927603617310524,0.0554482899606228,-0.0127457184717059,0.1482282578945160,0.0498785227537155,0.1101682186126709,0.3482204973697662,-0.0869908630847931,0.0452922843396664,-0.0494262129068375,0.0893801674246788,-0.1691710054874420,-0.1860242187976837));
res += mul(Get(s3,-dx,0), float4x4(-0.2570951879024506,0.0263169482350349,-0.1241134479641914,-0.0103380111977458,0.0620981343090534,-0.0126004777848721,-0.1923622488975525,0.0314039066433907,-0.0884926170110703,-0.0286148954182863,0.1167155057191849,-0.0704490765929222,0.1577825844287872,0.1124594956636429,-0.2948526442050934,-0.1553460806608200));
res += mul(Get(s4,-dx,0), float4x4(0.0627466887235641,0.0892402157187462,0.0225403383374214,0.0339600108563900,-0.1324229538440704,-0.4292864203453064,-0.0657473206520081,-0.1096974313259125,-0.0253569856286049,-0.1471650302410126,-0.3507114052772522,0.2876141965389252,0.0907664746046066,-0.0364465229213238,-0.1199191808700562,-0.1402429193258286));
res += mul(Get(s5,-dx,0), float4x4(-0.0830391198396683,0.2245931327342987,-0.0668845474720001,0.1303993165493011,-0.0047760722227395,0.1302455067634583,0.0256421696394682,0.0462834946811199,-0.1796358972787857,0.1647094041109085,0.2685804665088654,0.0598241910338402,0.0149703063070774,-0.0217222198843956,0.1186200231313705,-0.1832683980464935));
res += mul(Get(s0,-dx,dy), float4x4(0.0291889384388924,0.0164022259414196,-0.0443132705986500,-0.2213607579469681,0.1467564105987549,-0.0988485738635063,-0.2552112042903900,0.0486955940723419,-0.1000768691301346,-0.0004881795612164,0.0044538541696966,-0.0258782822638750,-0.1280729621648788,0.2179441154003143,0.0088521866127849,0.1200744584202766));
res += mul(Get(s1,-dx,dy), float4x4(0.0843935161828995,0.0480393059551716,-0.0051010595634580,-0.0784234628081322,0.0982176288962364,0.0839562937617302,-0.0517697446048260,-0.0962643995881081,-0.1568674594163895,0.0292449053376913,-0.1550206393003464,0.0120239928364754,-0.0537523292005062,-0.3321191966533661,0.2328014373779297,-0.0187915451824665));
res += mul(Get(s2,-dx,dy), float4x4(0.1870503425598145,-0.3489170670509338,0.0578961893916130,0.1812363564968109,0.0839555040001869,0.3238280117511749,-0.0333038792014122,0.1130164414644241,-0.1481176763772964,-0.2427888959646225,0.1933810561895370,0.0941027775406837,0.0111168362200260,0.2015090733766556,0.0321037434041500,-0.1497492194175720));
res += mul(Get(s3,-dx,dy), float4x4(0.2101115584373474,0.1663059145212173,-0.0675526708364487,0.0087515413761139,0.0455189161002636,-0.0683794096112251,-0.2468598037958145,0.0267565399408340,-0.0287054702639580,-0.0466389767825603,0.2349218279123306,0.0020192309748381,-0.1220476701855659,-0.0566360130906105,0.0362464673817158,0.0343615934252739));
res += mul(Get(s4,-dx,dy), float4x4(0.0049429303035140,-0.0360368527472019,0.0969325676560402,0.2084389477968216,-0.0196343418210745,0.1833001077175140,-0.1220088303089142,0.1308182775974274,0.1574521958827972,-0.0526985600590706,0.0161337144672871,-0.1367287784814835,-0.0141797577962279,0.1480025649070740,0.0566427297890186,0.0067964247427881));
res += mul(Get(s5,-dx,dy), float4x4(0.0995607301592827,-0.0534476637840271,0.1194925010204315,0.1149773150682449,0.0324058197438717,0.0716705843806267,-0.0894085913896561,0.0486212372779846,-0.1486888229846954,0.0580248758196831,-0.2195779532194138,0.3429143428802490,0.0152683025225997,0.0767074897885323,0.1289254873991013,-0.0050527052953839));
res += mul(Get(s0,0,-dy), float4x4(-0.0058178142644465,0.0879200994968414,-0.0179646555334330,0.0528407469391823,-0.1395124644041061,0.3283573389053345,-0.0583310052752495,0.0936771035194397,-0.1463838815689087,-0.1852993965148926,0.1172942742705345,0.1854369193315506,-0.0039051300846040,-0.4860418140888214,-0.2390344589948654,-0.0749685019254684));
res += mul(Get(s1,0,-dy), float4x4(-0.0123555324971676,0.0392245352268219,-0.1552378237247467,-0.0911908894777298,-0.0023697088472545,-0.0124977873638272,-0.0300633311271667,0.1384362578392029,-0.0101862037554383,-0.1338137239217758,0.0909800678491592,0.0943787917494774,0.0348020605742931,-0.0584150031208992,-0.0021327619906515,-0.3319917321205139));
res += mul(Get(s2,0,-dy), float4x4(0.1209231540560722,-0.3383326828479767,-0.0704937800765038,-0.2127321809530258,-0.0735527202486992,0.1113699823617935,0.1374771296977997,0.0165620539337397,0.0367712415754795,0.0344526208937168,0.0573937408626080,-0.0637580901384354,0.1432589292526245,-0.0576251894235611,-0.1651621013879776,-0.0862172916531563));
res += mul(Get(s3,0,-dy), float4x4(-0.0072537288069725,-0.0173273980617523,0.1275147497653961,0.2138525694608688,0.0603464171290398,-0.1314333826303482,0.0867117717862129,-0.3094875514507294,-0.0425006039440632,0.0325319059193134,-0.1605934351682663,0.2145693749189377,-0.0888914763927460,0.0390852726995945,0.1906264126300812,-0.0071231694892049));
res += mul(Get(s4,0,-dy), float4x4(-0.0072446381673217,0.0355438962578773,-0.1113808378577232,0.3363910913467407,-0.0251216869801283,-0.0299222543835640,0.0312972106039524,-0.2905701696872711,-0.0688668936491013,0.0977333188056946,0.1742641180753708,0.0856775715947151,-0.0995238572359085,0.1016310453414917,0.0666196271777153,0.1473980695009232));
res += mul(Get(s5,0,-dy), float4x4(-0.0805888995528221,-0.3285221159458160,0.2692437469959259,-0.1280121207237244,0.1801174730062485,-0.1158689036965370,0.0824132710695267,0.1822605133056641,-0.1219293624162674,0.2942063808441162,0.1305381059646606,0.0765704885125160,0.0309425406157970,-0.0879054367542267,-0.1155582442879677,0.0497028753161430));
res += mul(Get(s0,0,0), float4x4(0.0631318837404251,0.1933254748582840,-0.1539716720581055,0.1538200080394745,-0.2508857250213623,0.1428775042295456,0.0071426006034017,0.2317402064800262,-0.1924279332160950,-0.0307208634912968,0.1267125010490417,-0.0880042091012001,0.0500247403979301,-0.1819186806678772,0.0515634492039680,-0.0118967564776540));
res += mul(Get(s1,0,0), float4x4(0.0357575118541718,-0.0411564670503139,-0.0206779800355434,0.1441147178411484,-0.0766177475452423,-0.0294318143278360,0.0502637326717377,-0.0733206346631050,0.0977601781487465,0.0564369782805443,-0.1548110395669937,0.1373507976531982,0.1234419047832489,-0.1555466502904892,-0.2964726388454437,-0.0245306733995676));
res += mul(Get(s2,0,0), float4x4(-0.0514030829071999,0.5322698950767517,0.0463396161794662,-0.0730672553181648,0.0810756087303162,-0.3057413995265961,0.0411173030734062,-0.2416497170925140,-0.1440919637680054,0.1857049465179443,0.0151139721274376,-0.3051792383193970,0.2084262073040009,0.1401920914649963,-0.1000881195068359,0.2509499490261078));
res += mul(Get(s3,0,0), float4x4(0.0356056950986385,-0.2501674592494965,0.1136238127946854,0.0645031258463860,-0.0943275094032288,-0.1415211707353592,-0.1239908561110497,-0.2414932548999786,0.0422334410250187,-0.2816990017890930,0.1458199620246887,0.1336835473775864,0.0151078207418323,-0.1217160671949387,-0.0291439685970545,0.0646227002143860));
res += mul(Get(s4,0,0), float4x4(0.0681557804346085,-0.2122057676315308,0.0348463542759418,0.1603660285472870,-0.3426620364189148,-0.3813290297985077,-0.0470656715333462,-0.1065609231591225,-0.1223208457231522,-0.0249309204518795,0.1660324782133102,-0.5777172446250916,0.0562169551849365,-0.1965048909187317,0.0847377926111221,0.2501162290573120));
res += mul(Get(s5,0,0), float4x4(0.1302803307771683,0.0113542033359408,-0.1067597791552544,-0.1776132434606552,0.1939989328384399,-0.0594022311270237,0.0646406561136246,-0.0347305200994015,0.0479199625551701,-0.1486625969409943,-0.1709332317113876,-0.1214478164911270,0.1054478809237480,-0.1315502375364304,-0.0730104967951775,0.0548988319933414));
res += mul(Get(s0,0,dy), float4x4(-0.1496187895536423,-0.0439941398799419,0.2061632871627808,0.1618653833866119,0.0332627370953560,-0.0611016526818275,0.0849187895655632,-0.1167217493057251,-0.0022598160430789,-0.1017933785915375,0.0581149533390999,0.0121908569708467,0.1733035594224930,0.1268961876630783,-0.1677164733409882,0.0846046581864357));
res += mul(Get(s1,0,dy), float4x4(-0.1042074859142303,-0.0792155116796494,-0.0162322781980038,-0.1540886312723160,0.0743670910596848,-0.1017099618911743,-0.1693453937768936,0.1460978239774704,0.0143925491720438,-0.1695688366889954,0.1018914431333542,0.0921976566314697,-0.0726849511265755,0.1240617334842682,0.0185256656259298,0.0812280476093292));
res += mul(Get(s2,0,dy), float4x4(-0.3114433586597443,-0.0092937825247645,0.0753466710448265,0.2504970729351044,-0.0056525906547904,-0.0386876463890076,0.0990581512451172,0.0249467473477125,0.0804845839738846,0.1061866134405136,-0.0457350835204124,0.0800869092345238,-0.0424937568604946,-0.0648458376526833,0.1037856563925743,0.1181133389472961));
res += mul(Get(s3,0,dy), float4x4(-0.0301822870969772,-0.0564182400703430,0.1727006584405899,-0.2833730876445770,-0.0623874180018902,0.2088371217250824,-0.1497939378023148,-0.1693640351295471,-0.0422625765204430,-0.0849829614162445,0.0841245055198669,0.1554539203643799,0.0876109153032303,0.1376547664403915,-0.0091328844428062,-0.0179878752678633));
res += mul(Get(s4,0,dy), float4x4(-0.2442357391119003,0.1586050391197205,0.1385812014341354,-0.0152320694178343,0.0094460910186172,0.0492543727159500,-0.1393129229545593,0.0709316357970238,-0.0328473076224327,0.1908256262540817,0.2433646023273468,-0.0467748902738094,0.1745411753654480,-0.2008116245269775,0.2403636872768402,0.0323463678359985));
res += mul(Get(s5,0,dy), float4x4(-0.0885063856840134,0.5128529071807861,0.0855544880032539,0.1340838968753815,0.1369658559560776,-0.0935002118349075,0.0268896967172623,0.0590836256742477,0.2254979610443115,0.0412961132824421,-0.0004369891830720,0.2778430581092834,0.0443425774574280,-0.0707460194826126,-0.0470338948071003,0.0498631559312344));
res += mul(Get(s0,dx,-dy), float4x4(0.0089508816599846,0.1342855691909790,0.1307836920022964,0.1240018457174301,-0.1107053011655807,-0.0689785555005074,-0.0115584926679730,-0.0614987909793854,0.1139277890324593,0.0411102697253227,-0.0123802423477173,0.0151636702939868,-0.1349187642335892,-0.2763966321945190,0.1144167929887772,0.0547285526990891));
res += mul(Get(s1,dx,-dy), float4x4(0.0598477646708488,-0.0163450576364994,-0.0983081907033920,-0.1124482527375221,-0.0435968562960625,0.0938657373189926,0.1030596718192101,0.1299134790897369,0.1522590368986130,0.1993419677019119,0.0124206887558103,-0.1709541827440262,0.0152781298384070,0.2519333660602570,0.0724948942661285,-0.0008246903889813));
res += mul(Get(s2,dx,-dy), float4x4(-0.0594986341893673,-0.1601396352052689,0.0498136356472969,0.0059014782309532,-0.1686562895774841,0.0956854447722435,-0.1575778126716614,-0.0030676890164614,-0.0541898682713509,0.0391320474445820,0.0983070880174637,0.0299086850136518,0.1140346527099609,-0.1867077648639679,-0.0694743469357491,-0.0443163067102432));
res += mul(Get(s3,dx,-dy), float4x4(-0.1116376072168350,0.2371737957000732,-0.0348175130784512,-0.0868861302733421,-0.0370519943535328,0.0862505733966827,-0.0183805115520954,0.0150235397741199,0.0528655275702477,-0.0583992972970009,-0.0723148435354233,-0.0663644149899483,0.0232918728142977,-0.0074799852445722,0.0965780392289162,0.0033618288580328));
res += mul(Get(s4,dx,-dy), float4x4(-0.0431108139455318,-0.1431128829717636,-0.0466812886297703,-0.1665173023939133,0.0460015758872032,-0.1422673463821411,0.0596758276224136,-0.0303077325224876,0.1367115825414658,0.1164438053965569,-0.0523413605988026,-0.0081508876755834,-0.0664504617452621,-0.0906250476837158,-0.1866014599800110,-0.0816969797015190));
res += mul(Get(s5,dx,-dy), float4x4(-0.0435811690986156,0.1576161533594131,0.1150596812367439,0.0058091427199543,0.0766302421689034,0.0587997213006020,0.0664838775992393,-0.1042503714561462,0.0648695528507233,-0.0578497461974621,0.1085843890905380,-0.2084103375673294,-0.1109511852264404,-0.0499510355293751,0.0399396568536758,-0.0082629583775997));
res += mul(Get(s0,dx,0), float4x4(0.1331910938024521,0.0973584800958633,0.1570615768432617,0.0744885206222534,0.0561224594712257,0.1354761719703674,0.0427576713263988,-0.1452115029096603,-0.1464586108922958,0.0890057832002640,0.0097996704280376,-0.0753139778971672,0.0529535487294197,0.0655410513281822,0.0871642827987671,0.0489378049969673));
res += mul(Get(s1,dx,0), float4x4(0.1254888921976089,0.1306115239858627,-0.0115423584356904,0.1567542850971222,-0.0130630554631352,0.0302162598818541,-0.1498060822486877,-0.0384528376162052,0.0300332885235548,0.1536475867033005,0.1331318616867065,-0.1091917902231216,-0.1155051812529564,-0.1933648586273193,0.0145391570404172,0.1644274294376373));
res += mul(Get(s2,dx,0), float4x4(0.1366114616394043,-0.3421905338764191,0.0322239659726620,-0.1575617194175720,0.0203657913953066,-0.2167553752660751,-0.0563103593885899,-0.1578305512666702,0.1236062273383141,-0.2620902359485626,0.0453643575310707,0.1385919004678726,-0.0693152323365211,-0.2376290559768677,-0.0203711930662394,-0.0108353346586227));
res += mul(Get(s3,dx,0), float4x4(-0.0189579557627439,-0.0746387168765068,-0.0480476394295692,0.2504424154758453,0.0999447703361511,0.1185410469770432,0.1069246008992195,0.1225933209061623,-0.0860823094844818,0.4034100770950317,0.0930169597268105,-0.0849016308784485,0.0085792904719710,-0.0076448475010693,0.0442906916141510,0.0192201659083366));
res += mul(Get(s4,dx,0), float4x4(-0.0113025233149529,0.1463566124439240,-0.1242917254567146,-0.0476760454475880,0.1760172992944717,0.1665793359279633,0.0230697654187679,0.1529371440410614,-0.0273864995688200,-0.3682153820991516,-0.1065597906708717,0.1510560512542725,-0.1321458518505096,0.3279117643833160,0.1188454702496529,0.0084199588745832));
res += mul(Get(s5,dx,0), float4x4(0.2068433016538620,-0.2841718196868896,0.0544841662049294,-0.1811975985765457,-0.0280623547732830,-0.0421104356646538,0.1383639276027679,-0.0379567481577396,-0.0152491964399815,0.0870904847979546,0.0391067154705524,-0.0871475189924240,0.0464002303779125,-0.0052195573225617,-0.0913690254092216,-0.0554039701819420));
res += mul(Get(s0,dx,dy), float4x4(0.1296166181564331,-0.2483346909284592,-0.2262403517961502,0.0303827263414860,0.0167983435094357,0.3175419569015503,0.0363860242068768,-0.0724214389920235,-0.0346752665936947,0.3586560785770416,0.3521305024623871,0.0626422092318535,0.0386509969830513,0.1999414265155792,0.1865754872560501,-0.0668408423662186));
res += mul(Get(s1,dx,dy), float4x4(0.0149909835308790,0.0612698346376419,0.0948449671268463,-0.1097019910812378,-0.0283227320760489,-0.0126435756683350,-0.0243538189679384,0.1344992965459824,0.0239254049956799,0.0576053671538830,-0.0462376922369003,-0.0390782430768013,-0.0473657958209515,0.1151534765958786,0.2164936065673828,-0.0113796275109053));
res += mul(Get(s2,dx,dy), float4x4(-0.0038011572323740,0.3809248805046082,-0.0184216275811195,-0.0315980836749077,0.0491382032632828,-0.1255985349416733,-0.0872237756848335,0.0366470552980900,0.0023861492518336,0.1134258583188057,0.1330674588680267,-0.0700197443366051,0.0403589829802513,0.3273872435092926,0.0510487519204617,0.1464615464210510));
res += mul(Get(s3,dx,dy), float4x4(0.1281754225492477,-0.0796704292297363,-0.1433090716600418,0.1231024786829948,-0.0267036557197571,0.0033375567290932,0.0594637468457222,0.0168493930250406,-0.0257953386753798,0.2270779460668564,0.0343600399792194,0.0079104080796242,-0.0892928168177605,-0.0899430885910988,-0.0220474209636450,0.0450890511274338));
res += mul(Get(s4,dx,dy), float4x4(0.0085764247924089,0.0871050581336021,-0.1508465409278870,-0.0304679460823536,0.1094101294875145,0.2526364922523499,0.1306817531585693,-0.0916413143277168,0.1576290875673294,0.2255071997642517,-0.0091190971434116,-0.0067331837490201,0.0163929164409637,-0.0907130315899849,0.0056970273144543,-0.0114810215309262));
res += mul(Get(s5,dx,dy), float4x4(0.0913724303245544,0.0806012377142906,0.1487561166286469,-0.0121655296534300,-0.0838886275887489,0.1432296782732010,-0.0447147674858570,-0.0286250580102205,0.0823246240615845,-0.3640246093273163,-0.1636559218168259,-0.1238319426774979,-0.0891443416476250,0.1156040057539940,-0.0306938122957945,0.1047185212373734));
res = max(float4(0, 0, 0, 0), res) + float4(-0.6906636953353882,-0.6283714175224304,0.7631281018257141,-0.3539657294750214) * min(float4(0, 0, 0, 0), res);
return res;
}
