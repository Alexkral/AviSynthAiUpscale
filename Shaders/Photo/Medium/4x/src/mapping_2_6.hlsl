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
float4 res = float4(-0.0633523985743523,0.0235859975218773,0.0213987547904253,0.0041779186576605);
res += mul(Get(s0,-dx,-dy), float4x4(-0.0930435732007027,0.1871163696050644,-0.0036769681610167,0.1062622964382172,0.0259249173104763,-0.0653431415557861,0.0711146742105484,0.0103304861113429,0.0581273436546326,0.0232519581913948,-0.0918829590082169,0.0564359389245510,-0.1419616639614105,-0.0089701954275370,0.0458260364830494,0.0238487888127565));
res += mul(Get(s1,-dx,-dy), float4x4(-0.0544262081384659,-0.0096308905631304,-0.0257795415818691,0.0808559060096741,-0.1197466328740120,0.1059066951274872,-0.0052388529293239,0.1008342057466507,0.0080691725015640,-0.0223785191774368,0.0046272086910903,0.0442922227084637,-0.0238820035010576,0.0326350107789040,-0.0245367269963026,0.1267235279083252));
res += mul(Get(s2,-dx,-dy), float4x4(-0.0080788619816303,-0.0587767064571381,-0.0248285029083490,-0.1088605895638466,0.0774683654308319,-0.0904657095670700,-0.0754869580268860,0.0148975094780326,0.0637986138463020,0.0282808560878038,-0.0112217441201210,0.0368511565029621,0.0275551080703735,0.0160479731857777,0.0137355532497168,0.1420924514532089));
res += mul(Get(s3,-dx,-dy), float4x4(-0.1468714773654938,0.0455936715006828,0.0299251955002546,-0.0971440374851227,0.1005019843578339,-0.0261114072054625,0.0105264596641064,-0.0048202755860984,-0.2279700040817261,0.0946077033877373,0.0051072244532406,0.0766958296298981,0.0217162854969501,0.0042948671616614,0.0062007838860154,0.0552127063274384));
res += mul(Get(s4,-dx,-dy), float4x4(-0.1478759646415710,0.0866932347416878,0.1552550643682480,-0.3227872848510742,-0.1194985136389732,-0.0412420667707920,-0.0475759506225586,0.0333669260144234,-0.0716418474912643,0.0072626890614629,-0.0379728525876999,0.0538080148398876,-0.1620107889175415,-0.0945278778672218,-0.0762963294982910,0.0060591688379645));
res += mul(Get(s5,-dx,-dy), float4x4(-0.0431061685085297,-0.0655244439840317,0.0104342652484775,0.0793108046054840,0.0399214662611485,-0.0949577912688255,0.0459396801888943,-0.0645523443818092,0.0881292670965195,-0.0658141449093819,0.0963363423943520,-0.0032299640588462,0.0816440060734749,0.0609233938157558,0.0680487528443336,-0.0508689396083355));
res += mul(Get(s0,-dx,0), float4x4(-0.1449783891439438,0.0305708497762680,0.0464548431336880,0.0471510477364063,0.1115537732839584,-0.1490441560745239,0.0065699564293027,0.0412747338414192,0.2072533518075943,-0.1589451581239700,-0.2168865352869034,-0.0904827862977982,0.0229766350239515,0.1200010478496552,-0.0848334878683090,0.2497716099023819));
res += mul(Get(s1,-dx,0), float4x4(-0.0440257713198662,-0.4187050759792328,-0.1385508775711060,-0.1260347962379456,0.0568016134202480,0.0390720665454865,-0.0080248499289155,-0.0439032018184662,0.0758284479379654,0.1339523047208786,-0.1028575450181961,-0.1911128312349319,0.2155639827251434,0.0431392826139927,-0.0378533340990543,0.0196242723613977));
res += mul(Get(s2,-dx,0), float4x4(-0.0192921366542578,0.0689480975270271,-0.0019718639086932,-0.0069149192422628,-0.1033442690968513,-0.1005496755242348,-0.0623919665813446,0.1138682141900063,-0.0261521879583597,0.0099948178976774,-0.0475703179836273,0.0184706412255764,0.0386285372078419,-0.0850901305675507,-0.0629059895873070,-0.0534705221652985));
res += mul(Get(s3,-dx,0), float4x4(0.1124257072806358,-0.0325527861714363,0.1741821318864822,0.0535346455872059,0.0001573756162543,-0.1805568486452103,0.0908896252512932,-0.0536985993385315,0.1581723988056183,0.0325833261013031,0.0292460545897484,-0.0016535308677703,-0.0778770446777344,-0.1437054276466370,-0.0293912291526794,0.1545970439910889));
res += mul(Get(s4,-dx,0), float4x4(0.1984228491783142,-0.1776424646377563,-0.4382604956626892,-0.0190856400877237,-0.1113502755761147,0.4139780998229980,-0.1284952610731125,0.1067362204194069,0.0773306488990784,-0.1058779284358025,-0.0435285791754723,0.0756841301918030,0.0363417975604534,-0.4317471981048584,-0.0176561884582043,0.2512777149677277));
res += mul(Get(s5,-dx,0), float4x4(0.1675633043050766,0.0219644401222467,0.0406679324805737,-0.2021516561508179,0.0667137205600739,0.1823969483375549,0.0838362202048302,0.0452970564365387,-0.0142894200980663,-0.1807238757610321,0.1334684640169144,0.1328927278518677,0.0819526761770248,-0.0771785750985146,0.0634943917393684,0.1619731634855270));
res += mul(Get(s0,-dx,dy), float4x4(-0.0443293079733849,-0.0155011070892215,-0.0778615847229958,-0.1238778904080391,0.0905534476041794,-0.0242255553603172,0.0689209327101707,-0.0570324324071407,-0.0488200224936008,0.0101202949881554,-0.0651127696037292,-0.0232720542699099,-0.1975511163473129,-0.0225492287427187,-0.1232917085289955,-0.0752480253577232));
res += mul(Get(s1,-dx,dy), float4x4(0.1328256279230118,-0.0473782122135162,0.0477434024214745,-0.1280563026666641,0.0979823619127274,0.0743987262248993,0.0350710637867451,0.0694288685917854,0.2077953964471817,-0.0394857339560986,0.1987954080104828,-0.1015683338046074,0.0025749430060387,0.1431668698787689,0.0340977162122726,-0.0312008205801249));
res += mul(Get(s2,-dx,dy), float4x4(-0.0367934852838516,0.0837433934211731,-0.0397744849324226,-0.0008907571318559,-0.0604770146310329,0.0270102154463530,-0.0653049349784851,0.0000895433404366,-0.0153485555201769,-0.2541384100914001,-0.0428202897310257,-0.0241132192313671,-0.0059028421528637,-0.0706875100731850,0.0327354297041893,0.1338686794042587));
res += mul(Get(s3,-dx,dy), float4x4(0.0892389342188835,-0.0215048268437386,-0.0436286441981792,-0.0728640928864479,0.0625028759241104,0.0162515826523304,-0.1227987781167030,-0.0642411485314369,-0.1293848454952240,-0.0531012155115604,-0.0336386375129223,-0.0524704791605473,0.0499953515827656,-0.2075172811746597,-0.0351549498736858,0.0353806652128696));
res += mul(Get(s4,-dx,dy), float4x4(-0.0027671603020281,-0.1065573841333389,0.2035361975431442,-0.2766235768795013,0.1547459661960602,-0.1382784694433212,0.0971536338329315,-0.1270625144243240,-0.1579711586236954,-0.1122092455625534,-0.0019264852162451,0.0022715660743415,-0.0617078244686127,-0.4842857420444489,0.0105102360248566,-0.0505155175924301));
res += mul(Get(s5,-dx,dy), float4x4(-0.1039491742849350,-0.0351594612002373,-0.0719528645277023,-0.0294252950698137,-0.0451799035072327,0.0050456351600587,-0.1128187924623489,0.0216759815812111,-0.1931807547807693,-0.0203792825341225,-0.0401279814541340,-0.0066939205862582,-0.0087698074057698,-0.0458950288593769,0.0591762252151966,0.0627716854214668));
res += mul(Get(s0,0,-dy), float4x4(-0.0282960832118988,-0.0721256434917450,-0.1305540651082993,0.0842524096369743,-0.0597589686512947,0.1407915651798248,-0.0393650569021702,0.0724433884024620,0.2929260134696960,0.1389416456222534,0.0901381149888039,0.3372227549552917,0.0736546590924263,0.0025729369372129,-0.0504332892596722,0.0184291023761034));
res += mul(Get(s1,0,-dy), float4x4(-0.0323190651834011,0.0218208134174347,-0.0238565523177385,0.0855693891644478,0.0856403708457947,-0.1086581125855446,0.0204236023128033,0.1044860631227493,0.0872358158230782,-0.0366674587130547,-0.0030078508425504,0.1055361703038216,0.0309441033750772,-0.0378087945282459,-0.0367449745535851,0.0639055147767067));
res += mul(Get(s2,0,-dy), float4x4(-0.0412295348942280,-0.1606070250272751,0.1195839494466782,0.1994258463382721,-0.1288313418626785,0.0365014448761940,0.0670813992619514,0.0083495099097490,0.0781695023179054,0.0093270326033235,0.0405514426529408,-0.0834964364767075,0.1905620247125626,0.0560503378510475,0.0266203209757805,-0.1036628037691116));
res += mul(Get(s3,0,-dy), float4x4(-0.2081293612718582,-0.0181629490107298,0.0140284514054656,0.0087068649008870,0.1642077267169952,0.0762983486056328,0.0674874484539032,0.0213794969022274,-0.2414386570453644,-0.0257999263703823,0.0352536216378212,-0.0671031028032303,0.1167326569557190,0.0237395167350769,-0.0134077258408070,0.0000829048658488));
res += mul(Get(s4,0,-dy), float4x4(0.1517336964607239,-0.0374449305236340,0.0364552773535252,-0.1466045826673508,-0.0765420570969582,0.0203277003020048,0.0294102784246206,-0.0723806768655777,0.1892631500959396,0.2737157046794891,0.0591952428221703,0.0420744158327579,0.1166942790150642,-0.1082609146833420,-0.0072549744509161,-0.0892293900251389));
res += mul(Get(s5,0,-dy), float4x4(-0.0673428401350975,-0.0454103648662567,-0.0372212752699852,0.1122799962759018,-0.0908240228891373,0.0292168147861958,0.0302491635084152,-0.0387760140001774,0.0696489214897156,0.0791709274053574,-0.0380408540368080,0.0207659900188446,0.3228400349617004,-0.0508418008685112,0.0412584878504276,-0.1489860564470291));
res += mul(Get(s0,0,0), float4x4(-0.1149605587124825,-0.3151418864727020,0.0470789559185505,0.0269466154277325,0.1163673475384712,-0.0693490132689476,-0.1378283053636551,0.0214572176337242,0.4529879987239838,0.1959889829158783,0.3724915087223053,0.0372994206845760,0.0966192856431007,-0.0085148941725492,0.0741954371333122,-0.0900643095374107));
res += mul(Get(s1,0,0), float4x4(0.0075357188470662,0.4575552046298981,0.2964757382869720,-0.3274165689945221,-0.3346121013164520,-0.2747360169887543,-0.1570121943950653,0.1386354267597198,0.1049196794629097,-0.0777995586395264,0.1463804990053177,0.1395170390605927,0.3177459537982941,-0.0073125944472849,0.0183734185993671,-0.0058359256945550));
res += mul(Get(s2,0,0), float4x4(0.1935176402330399,-0.4104955792427063,-0.0288466475903988,0.2677916884422302,0.1567147076129913,0.0199584010988474,0.0571180321276188,-0.1446985751390457,0.1879770308732986,0.0768652707338333,0.1301631778478622,0.1320611089468002,-0.1180964559316635,0.0727431476116180,0.0209983009845018,-0.0647723898291588));
res += mul(Get(s3,0,0), float4x4(0.1740215271711349,-0.1260814368724823,-0.3007035553455353,0.0570070594549179,-0.1311457902193069,0.1877158433198929,0.0218572970479727,-0.0507784523069859,0.2148114293813705,0.1709499061107635,0.0804560780525208,-0.0518053844571114,-0.1264723241329193,0.1915771514177322,0.1252373158931732,-0.0422280058264732));
res += mul(Get(s4,0,0), float4x4(-0.2196002900600433,0.1918768286705017,0.1172930896282196,0.1009809449315071,-0.2361578196287155,0.0210849791765213,0.1184671819210052,-0.2561911642551422,-0.3265829086303711,-0.1698939651250839,-0.2939519882202148,0.3697141110897064,-0.1682002842426300,0.0967940092086792,-0.0121591193601489,0.1892402172088623));
res += mul(Get(s5,0,0), float4x4(-0.1055667251348495,-0.0433150902390480,0.0335468836128712,0.1050644367933273,-0.0132134109735489,-0.0395033732056618,-0.1280441135168076,-0.0741938576102257,0.0760418623685837,-0.1285513937473297,-0.1994046866893768,0.0127477273344994,-0.3292748630046844,0.1564181894063950,0.3041591048240662,-0.0104915387928486));
res += mul(Get(s0,0,dy), float4x4(-0.0871664583683014,-0.1516039967536926,-0.0046369992196560,0.0253646131604910,-0.0510533228516579,-0.1176184713840485,-0.0107412356883287,-0.0358249396085739,0.0160973779857159,0.0639344677329063,0.1731029450893402,0.0410394854843616,-0.1128320991992950,-0.0071506197564304,0.1240887790918350,-0.1688025742769241));
res += mul(Get(s1,0,dy), float4x4(-0.0821228772401810,-0.0380067825317383,-0.2271992713212967,0.0832865834236145,0.0961978211998940,-0.0270733609795570,0.1710416674613953,-0.0005164007889107,-0.0495829656720161,-0.1585478782653809,0.0192381944507360,-0.1078817769885063,0.1143873631954193,0.0008780837524682,0.1722721904516220,0.1608680337667465));
res += mul(Get(s2,0,dy), float4x4(-0.0283745136111975,-0.0631017461419106,0.0337135381996632,0.0439317151904106,-0.0290882587432861,-0.0852882340550423,0.2237657904624939,0.1638548672199249,0.3068847358226776,-0.0340476445853710,0.2802882492542267,-0.0280661769211292,0.1047137230634689,-0.0166784506291151,0.1041468381881714,0.0393007434904575));
res += mul(Get(s3,0,dy), float4x4(-0.0580131970345974,-0.0173127837479115,0.1301857829093933,0.0169910639524460,-0.0346747487783432,-0.0444162897765636,-0.0221528485417366,0.0120067941024899,-0.0464871153235435,-0.0460291206836700,0.1068828776478767,0.0184499975293875,-0.2614502012729645,0.1752078682184219,-0.2138622403144836,-0.0496239028871059));
res += mul(Get(s4,0,dy), float4x4(0.0161830242723227,0.0154126649722457,-0.0205220673233271,-0.0412184111773968,0.6483365893363953,-0.0402561202645302,-0.2579569220542908,-0.6895667910575867,0.0487300269305706,-0.0595607832074165,0.1101573780179024,-0.1106422841548920,-0.0446058958768845,-0.0059480168856680,-0.0652660429477692,-0.0450744032859802));
res += mul(Get(s5,0,dy), float4x4(0.2055731713771820,-0.1679606139659882,0.1745477467775345,-0.1842103302478790,0.0518501959741116,0.0934902057051659,0.1468448936939240,-0.1728440672159195,-0.0525325573980808,-0.0450677908957005,-0.0393780693411827,0.0240746010094881,-0.0394397825002670,0.1760474890470505,-0.1431102156639099,-0.1998552381992340));
res += mul(Get(s0,dx,-dy), float4x4(-0.1589124351739883,0.0441237166523933,-0.0313119776546955,0.0567926317453384,0.0862197205424309,-0.0217989366501570,0.0842915177345276,0.0786902010440826,0.1015160530805588,0.0208995454013348,0.0935556516051292,-0.1012673676013947,-0.0690499469637871,-0.0248505882918835,-0.0326963886618614,-0.1234346330165863));
res += mul(Get(s1,dx,-dy), float4x4(-0.0021197248715907,-0.0234890766441822,0.0660653263330460,0.0755873471498489,-0.0583843924105167,0.0319311209022999,-0.0445657223463058,-0.0910949781537056,-0.0222653634846210,-0.0330154895782471,-0.0167293380945921,0.1651998162269592,-0.1927064955234528,-0.0193386748433113,-0.0252662319689989,0.0027013011276722));
res += mul(Get(s2,dx,-dy), float4x4(0.1162310019135475,-0.2059723138809204,-0.0201243162155151,-0.0357587300240993,-0.0622420646250248,0.1212105602025986,0.0430205352604389,-0.0544091463088989,-0.0422263219952583,0.0671425983309746,0.0207233279943466,0.0140083245933056,0.0425488501787186,-0.0127983195707202,0.0466725379228592,0.0189742147922516));
res += mul(Get(s3,dx,-dy), float4x4(-0.1055026352405548,0.0555292442440987,-0.0311090704053640,-0.0690190941095352,0.0047437436878681,-0.0013274688972160,-0.0198201108723879,0.0950160548090935,0.0825342684984207,0.0697812512516975,-0.0214836038649082,-0.1652286648750305,-0.0355350412428379,-0.0074717612005770,0.0164682865142822,-0.0301113389432430));
res += mul(Get(s4,dx,-dy), float4x4(-0.1108634248375893,0.0427286848425865,0.0105225956067443,0.1536599695682526,-0.0215221475809813,-0.1356055587530136,-0.0472906380891800,-0.1370430588722229,0.0064177578315139,-0.2063323408365250,-0.0025492256972939,-0.0722870901226997,-0.0014400252839550,0.0270619895309210,0.0150226457044482,-0.0521127581596375));
res += mul(Get(s5,dx,-dy), float4x4(0.0652421414852142,0.1150818914175034,-0.0120305623859167,-0.0161172710359097,0.1652377843856812,-0.0704922080039978,-0.0166688561439514,0.0270806085318327,0.0609328038990498,0.0382867604494095,-0.0261024963110685,-0.0025988568086177,-0.0865209773182869,-0.0100091127678752,0.0520453788340092,0.0164546631276608));
res += mul(Get(s0,dx,0), float4x4(-0.0889995396137238,0.0790286883711815,-0.0327596180140972,0.0669747814536095,-0.0326735451817513,-0.0044176769442856,0.0978537127375603,-0.0109026264399290,0.0296797715127468,0.0051173735409975,0.3531731963157654,-0.0579185858368874,-0.0225173179060221,0.0889137908816338,-0.0525939650833607,0.0523470565676689));
res += mul(Get(s1,dx,0), float4x4(0.0770206227898598,-0.0423026308417320,0.0408891066908836,0.1051115021109581,0.0637267082929611,0.0938548520207405,-0.0654894933104515,-0.1440569460391998,0.0702487826347351,0.2077263295650482,0.0615704990923405,-0.1245588883757591,0.1016151458024979,-0.0285714212805033,-0.0652868747711182,-0.0617230609059334));
res += mul(Get(s2,dx,0), float4x4(-0.1216112077236176,0.1537058651447296,-0.2327527850866318,-0.2460677176713943,0.2340070009231567,-0.0117251807823777,-0.0873801633715630,-0.0258879978209734,0.0601126700639725,0.0138284852728248,0.0394365377724171,-0.0326758064329624,-0.0819447487592697,-0.0837431028485298,-0.0062900665216148,-0.0140794757753611));
res += mul(Get(s3,dx,0), float4x4(0.1059384718537331,0.1137753799557686,0.0060392357409000,-0.1312204301357269,-0.1298975497484207,0.1837475001811981,-0.0100345164537430,0.0479268729686737,0.1733264178037643,-0.1345662325620651,-0.1272222250699997,0.0026124257128686,0.0287253223359585,0.0508161298930645,-0.0369824022054672,0.0049519711174071));
res += mul(Get(s4,dx,0), float4x4(-0.0049950452521443,-0.1886292397975922,-0.0889661312103271,-0.0358825959265232,-0.1293080747127533,-0.0823329687118530,-0.0514880195260048,-0.0818619653582573,0.0814358294010162,0.0920156463980675,-0.0164269674569368,-0.0121244080364704,-0.1544245332479477,-0.0371969565749168,-0.0408346690237522,-0.0306511186063290));
res += mul(Get(s5,dx,0), float4x4(-0.1386921554803848,0.1344864815473557,0.0920334681868553,0.1173989325761795,0.0342086441814899,-0.0351254045963287,-0.0267217420041561,-0.0265140440315008,-0.0802574008703232,0.2084290832281113,-0.0725662037730217,-0.1498836278915405,0.1180081069469452,0.0042621209286153,-0.1273980587720871,-0.1107828393578529));
res += mul(Get(s0,dx,dy), float4x4(-0.1497778892517090,-0.0128622641786933,-0.0494056157767773,-0.0844214186072350,-0.0048615159466863,0.0473838001489639,-0.1389149129390717,0.0120423948392272,-0.0128370188176632,0.0054830913431942,0.1936352550983429,0.0370277054607868,0.0397779867053032,0.0014580074930564,0.0396690815687180,-0.0149513212963939));
res += mul(Get(s1,dx,dy), float4x4(0.0552519187331200,0.0012658317573369,0.0840694904327393,-0.0313073135912418,0.0482985489070415,0.0373446568846703,-0.0657859817147255,0.0048789475113153,0.0846845209598541,0.0297971889376640,-0.1184122338891029,-0.1127835586667061,-0.0292250066995621,-0.1338199079036713,0.0583008378744125,-0.0126627255231142));
res += mul(Get(s2,dx,dy), float4x4(-0.2799773514270782,0.0721700340509415,0.0071891359984875,0.0706598162651062,-0.1154420077800751,-0.0324699096381664,-0.0589242316782475,0.1020802184939384,0.2261377274990082,0.0386239551007748,0.1537794470787048,-0.0954921320080757,0.0397089980542660,-0.0436005331575871,0.0582302063703537,-0.0358767397701740));
res += mul(Get(s3,dx,dy), float4x4(0.0588137358427048,-0.1144194602966309,-0.0600028932094574,-0.0407132171094418,-0.1179805025458336,0.0433475337922573,-0.1473245173692703,-0.0658975765109062,0.0884982421994209,-0.0816665589809418,-0.0434008911252022,0.0576716102659702,0.0665629282593727,-0.0309439189732075,-0.0713743641972542,-0.0939852967858315));
res += mul(Get(s4,dx,dy), float4x4(0.0004665589658543,-0.0294096097350121,0.0171883516013622,0.0728670135140419,0.2221081554889679,-0.0623381882905960,0.4162698090076447,0.1342829316854477,-0.1805573552846909,0.0661752671003342,0.0474181696772575,0.0687787979841232,-0.0732004493474960,-0.0294333212077618,-0.0240057259798050,-0.0037655832711607));
res += mul(Get(s5,dx,dy), float4x4(0.0249322578310966,-0.0242182966321707,-0.2337452769279480,0.1072122827172279,0.1166951879858971,0.0250476542860270,-0.0775840356945992,0.0330335646867752,-0.1575920283794403,0.0749759972095490,-0.0491168648004532,-0.1295155584812164,0.0687191933393478,-0.0008674245909788,-0.0367089994251728,0.0466303341090679));
res = max(float4(0, 0, 0, 0), res) + float4(-0.1796172410249710,-0.0784858465194702,-0.8755412697792053,1.3009152412414551) * min(float4(0, 0, 0, 0), res);
return res;
}
