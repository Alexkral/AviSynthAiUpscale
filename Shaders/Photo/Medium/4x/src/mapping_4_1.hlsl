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
float4 res = float4(0.0355863906443119,-0.0621280744671822,-0.0164052769541740,0.0485755503177643);
res += mul(Get(s0,-dx,-dy), float4x4(-0.0651308894157410,-0.0058167264796793,0.0545598939061165,0.0244963355362415,-0.0545582361519337,0.0865033864974976,-0.0632982179522514,-0.0185605064034462,0.0981251373887062,-0.0136710293591022,-0.0460264794528484,-0.0042614107951522,0.2543599009513855,0.0644335672259331,0.0911966636776924,-0.1615158915519714));
res += mul(Get(s1,-dx,-dy), float4x4(0.1015787422657013,-0.0284871533513069,0.0640895515680313,-0.0602124407887459,0.0481987856328487,0.1206697002053261,-0.0098677854984999,0.0683175474405289,-0.1102875173091888,-0.0045362529344857,-0.0575651675462723,-0.0444473251700401,-0.0738399401307106,0.0663869231939316,-0.0079931328073144,0.1136909648776054));
res += mul(Get(s2,-dx,-dy), float4x4(-0.1298502683639526,-0.0368443466722965,0.0244453065097332,-0.0375838615000248,0.0466392263770103,-0.0050302734598517,-0.0052014929242432,0.0699177086353302,-0.0130338463932276,-0.0606107674539089,-0.0007928521954454,0.0704647898674011,-0.0150685990229249,-0.0977333635091782,0.0306392107158899,0.0762036889791489));
res += mul(Get(s3,-dx,-dy), float4x4(0.1676568239927292,0.0579338222742081,-0.0598815754055977,-0.0259867105633020,-0.0158386249095201,0.0507819913327694,-0.1286354660987854,-0.0874596685171127,-0.0688337236642838,-0.1592289656400681,0.1219763159751892,-0.0083372257649899,0.1163712143898010,0.0272928252816200,0.1046570092439651,-0.0349459350109100));
res += mul(Get(s4,-dx,-dy), float4x4(-0.0133382482454181,0.0328854173421860,0.0064989896491170,0.0551137551665306,0.0475616864860058,0.0638416558504105,-0.0273001752793789,-0.0536985956132412,-0.0452978573739529,-0.1266666799783707,0.0217361729592085,-0.0360709950327873,-0.0519052259624004,-0.0163323599845171,-0.0682707503437996,0.0232011433690786));
res += mul(Get(s5,-dx,-dy), float4x4(-0.0102799348533154,0.1181765794754028,0.0839051455259323,-0.0620572306215763,-0.0248036794364452,-0.1378165036439896,0.1152267456054688,0.0163899566978216,-0.0275314729660749,-0.0840421095490456,-0.0065088649280369,-0.0398541763424873,-0.1173741593956947,0.0283630155026913,-0.0006507001817226,-0.0099828345701098));
res += mul(Get(s0,-dx,0), float4x4(-0.0124180773273110,-0.1052374839782715,-0.0174745880067348,-0.0474746860563755,-0.0652250796556473,-0.1083325445652008,0.0298328790813684,-0.0637173280119896,-0.0386278033256531,-0.0188360661268234,0.0606139637529850,0.1117571368813515,-0.0727584362030029,0.0298926867544651,0.1290024369955063,-0.1048830375075340));
res += mul(Get(s1,-dx,0), float4x4(0.1410171836614609,0.1367136389017105,-0.1971901953220367,0.0536838173866272,0.0920608714222908,0.0378362759947777,-0.0741934850811958,-0.0273969396948814,-0.0795349776744843,0.0195382330566645,-0.0191018506884575,0.1227764710783958,-0.0869535431265831,0.0553058721125126,-0.1231907084584236,0.1318935155868530));
res += mul(Get(s2,-dx,0), float4x4(-0.2163483798503876,-0.0323696509003639,-0.0710685700178146,0.0046207192353904,0.1171044781804085,0.1765464693307877,-0.0120344748720527,0.1492710113525391,-0.1880643963813782,0.0448534935712814,-0.0582393966615200,0.0565435327589512,-0.0312775783240795,-0.1806523501873016,-0.0713129565119743,0.2564387321472168));
res += mul(Get(s3,-dx,0), float4x4(0.2612464725971222,0.1402143388986588,0.1050134748220444,-0.1337150037288666,0.1521487236022949,0.0936772823333740,0.0532624833285809,-0.1065762639045715,0.0730998814105988,0.0228592082858086,0.0235514175146818,0.0084281675517559,0.1871254295110703,0.3156816661357880,0.0211386699229479,-0.0654227808117867));
res += mul(Get(s4,-dx,0), float4x4(-0.0318408943712711,-0.0408912524580956,-0.2384469658136368,0.2448869794607162,-0.0722492337226868,0.1305107623338699,0.0787878781557083,0.0745825320482254,-0.2501310408115387,-0.1474313586950302,-0.1422596871852875,0.0563346743583679,0.0056329490616918,-0.2126744985580444,0.1044385209679604,-0.2185397744178772));
res += mul(Get(s5,-dx,0), float4x4(-0.0448418967425823,-0.0820710286498070,0.1137156635522842,-0.1992424577474594,0.0395447239279747,0.1332846879959106,-0.0997564420104027,0.0720715299248695,0.1140336021780968,0.0428497307002544,0.0223409943282604,-0.1299082040786743,-0.1589713990688324,-0.1663027852773666,0.0745496675372124,-0.0091680483892560));
res += mul(Get(s0,-dx,dy), float4x4(-0.1843949854373932,-0.0692000612616539,0.0475700311362743,0.0378174819052219,0.1339513510465622,0.0580981336534023,0.0244846977293491,-0.0914008915424347,-0.2181661725044250,-0.2333628088235855,-0.1206531375646591,0.1147238239645958,-0.1300643384456635,-0.1137561574578285,-0.0000795453961473,0.0626856535673141));
res += mul(Get(s1,-dx,dy), float4x4(0.2615927159786224,0.1810517460107803,0.0969489961862564,-0.0037061357870698,-0.0781492665410042,0.0359843932092190,-0.0482652187347412,-0.0024538966827095,-0.1103988736867905,-0.0303905680775642,-0.0629876852035522,0.0278042666614056,0.0966007858514786,-0.0542570799589157,0.1178471893072128,-0.0231915134936571));
res += mul(Get(s2,-dx,dy), float4x4(-0.0248127989470959,0.0256297513842583,-0.0070110075175762,0.0489538535475731,-0.0971562936902046,-0.0329162068665028,-0.0840665847063065,0.0539188198745251,-0.1086525470018387,-0.0362092629075050,0.0175830405205488,0.0360397174954414,-0.1501460820436478,-0.0600804872810841,-0.1732801049947739,0.1839292794466019));
res += mul(Get(s3,-dx,dy), float4x4(0.1271246224641800,0.0075167920440435,0.0640012323856354,-0.0781721547245979,-0.1520817428827286,-0.0587959401309490,-0.1081436425447464,-0.0383903458714485,0.0444766841828823,-0.0726591423153877,0.0160939414054155,0.0395409390330315,0.0598498173058033,-0.0264118853956461,0.0190447326749563,-0.0582597851753235));
res += mul(Get(s4,-dx,dy), float4x4(0.0089237010106444,-0.0507766380906105,0.0583256445825100,-0.1207216084003448,0.0252325423061848,-0.0869081020355225,-0.1096452921628952,0.1059395447373390,-0.0070756706409156,0.0066194799728692,0.0594272427260876,-0.0261786822229624,0.0359597243368626,0.0371700823307037,0.1635152101516724,-0.0813955664634705));
res += mul(Get(s5,-dx,dy), float4x4(0.0518164001405239,0.0739568322896957,0.0812699645757675,-0.1038008481264114,0.0076015391387045,-0.1130677238106728,0.0004439516051207,-0.0080679636448622,0.1374895125627518,0.0685418322682381,0.0605600140988827,-0.1112919971346855,0.0153699656948447,0.0905984491109848,0.0313582494854927,0.0418158583343029));
res += mul(Get(s0,0,-dy), float4x4(0.0431836172938347,-0.0091194240376353,0.0737583786249161,-0.0475380122661591,-0.1318968683481216,0.0993859469890594,-0.0576321296393871,-0.1080248206853867,-0.0012441839789972,0.0218405481427908,-0.0629825443029404,-0.0026962151750922,-0.0480658710002899,0.0696329250931740,-0.1661535352468491,-0.0515967719256878));
res += mul(Get(s1,0,-dy), float4x4(-0.0222529433667660,0.0340468809008598,0.0485295392572880,0.0053891218267381,-0.1493034213781357,0.1836216598749161,-0.2151507139205933,0.1063477024435997,-0.0029466752894223,-0.2221754938364029,-0.0856183990836143,-0.0007997116772458,-0.1362119466066360,0.0300563815981150,0.0097631746903062,0.0429121144115925));
res += mul(Get(s2,0,-dy), float4x4(-0.0769179239869118,0.0386526361107826,-0.1517999917268753,0.0717636421322823,-0.0684433057904243,-0.0783812105655670,0.1371317505836487,-0.0432483293116093,-0.0187135394662619,-0.0978164523839951,0.0330342166125774,0.0138108711689711,0.0205657258629799,0.2230657637119293,-0.2207089364528656,0.0364764966070652));
res += mul(Get(s3,0,-dy), float4x4(0.1034776270389557,0.2140749841928482,0.1034520566463470,-0.0600413344800472,0.2865093946456909,-0.1940322816371918,-0.0902827158570290,-0.0611462779343128,0.0717465355992317,0.2128765881061554,0.0573692582547665,-0.0276476107537746,-0.0430076979100704,-0.0315953567624092,0.1299298554658890,-0.0236691813915968));
res += mul(Get(s4,0,-dy), float4x4(0.0939638167619705,0.0570104867219925,0.1533643007278442,0.0288905482739210,0.0704250410199165,-0.0726756379008293,0.0592784360051155,0.1067271456122398,-0.0806683823466301,-0.1530769467353821,0.0908164978027344,-0.0643377900123596,-0.0091889649629593,0.0274843405932188,0.0482871271669865,0.0317136310040951));
res += mul(Get(s5,0,-dy), float4x4(-0.2540900707244873,-0.1732643246650696,0.0150948092341423,-0.0484604276716709,0.0611901655793190,0.0290198754519224,-0.0254361480474472,-0.0741644427180290,-0.0097294477745891,-0.0360467992722988,-0.0147903813049197,-0.0287791788578033,-0.0350485071539879,-0.1047509387135506,-0.0301060844212770,-0.0439041368663311));
res += mul(Get(s0,0,0), float4x4(0.0556322038173676,0.3568890988826752,0.1405459940433502,-0.2256786376237869,0.1710145920515060,-0.0841865092515945,0.2880698740482330,-0.1740292459726334,0.1425618380308151,0.0714831501245499,0.0935033261775970,0.1214926987886429,0.0578617528080940,0.2823713123798370,0.1782680302858353,-0.3441072702407837));
res += mul(Get(s1,0,0), float4x4(0.0445493422448635,0.4122972488403320,-0.1414966881275177,0.0775131359696388,-0.1404552608728409,-0.1457174420356750,0.2336058169603348,-0.0451565384864807,0.0131213339045644,-0.1314941644668579,-0.0581347346305847,-0.1418874412775040,-0.1024010777473450,0.1324379444122314,-0.0305738616734743,0.0737154111266136));
res += mul(Get(s2,0,0), float4x4(-0.0847452804446220,-0.4038732349872589,0.3504683077335358,-0.0383383110165596,-0.0192768983542919,0.0823098942637444,-0.0110332760959864,0.0980584397912025,-0.0421188101172447,-0.2724433839321136,0.2100432813167572,-0.2063858211040497,0.0459356680512428,0.1543644666671753,0.0433869510889053,-0.3144213855266571));
res += mul(Get(s3,0,0), float4x4(0.0702821761369705,-0.1731413602828979,-0.1408330202102661,-0.0061007663607597,-0.0194218084216118,-0.1051489040255547,-0.1292778700590134,0.1712768375873566,0.1318246126174927,0.0520969107747078,-0.1858732402324677,0.0079922899603844,-0.0138720208778977,-0.0355026796460152,-0.1567920744419098,0.1963837742805481));
res += mul(Get(s4,0,0), float4x4(-0.1300470381975174,-0.1558709740638733,0.0355124436318874,-0.2046301811933517,0.0438605025410652,-0.1284427046775818,0.0363669171929359,0.1145552620291710,0.1444144248962402,0.1788068860769272,0.1025963798165321,-0.3222564756870270,-0.1142002791166306,0.3139635920524597,0.0756466537714005,0.2649552226066589));
res += mul(Get(s5,0,0), float4x4(-0.3103961646556854,-0.1012281030416489,0.2531311213970184,0.2739397883415222,-0.0743632465600967,-0.0449407994747162,-0.1717545837163925,-0.3564058542251587,0.3942690491676331,0.2594319581985474,-0.1451935172080994,0.1075199395418167,-0.0220881700515747,-0.0067759500816464,0.2205521315336227,-0.0837133154273033));
res += mul(Get(s0,0,dy), float4x4(-0.1038244739174843,-0.0640153810381889,0.1938582658767700,-0.0760973319411278,0.2247946560382843,0.0514630824327469,-0.0212178900837898,-0.0180015210062265,-0.0142882084473968,-0.0369707010686398,0.0933585092425346,0.1055222898721695,0.0871924906969070,0.1898938715457916,0.3954274654388428,-0.2342374771833420));
res += mul(Get(s1,0,dy), float4x4(-0.0654621422290802,-0.0632683411240578,0.6028369665145874,0.0448623970150948,0.0192773770540953,0.0225257053971291,-0.0330549255013466,0.0242680367082357,-0.1020157039165497,-0.0225428119301796,0.1104882583022118,-0.1074121147394180,0.0612717904150486,0.0756093263626099,-0.0110170720145106,0.0180020462721586));
res += mul(Get(s2,0,dy), float4x4(0.0366602353751659,0.0624475888907909,-0.1115694940090179,0.1431312859058380,0.1620171964168549,0.1187857463955879,0.0305701009929180,-0.0741163641214371,0.0504888407886028,-0.0463077686727047,0.0290511976927519,0.0878791511058807,0.0513902828097343,-0.0682507827877998,0.2111404687166214,-0.1132243946194649));
res += mul(Get(s3,0,dy), float4x4(0.1351966410875320,0.1058782786130905,0.0931252241134644,0.0203115344047546,-0.1552614420652390,-0.1005022376775742,0.0804884880781174,-0.0756374299526215,0.0384646952152252,0.0076479017734528,0.0166539512574673,-0.0330223962664604,0.0986605808138847,-0.0117975380271673,0.0127305062487721,0.0938370153307915));
res += mul(Get(s4,0,dy), float4x4(0.1070092543959618,0.0200885403901339,-0.0563894473016262,0.0563704557716846,-0.1457668095827103,-0.1151748746633530,0.0816836655139923,-0.0909416750073433,0.0366786234080791,-0.0364477112889290,-0.1578482985496521,0.0642714798450470,0.1145982667803764,0.0319041125476360,0.0630612298846245,0.2660664021968842));
res += mul(Get(s5,0,dy), float4x4(-0.0717144757509232,0.0958916097879410,0.0316181257367134,0.2650355994701385,-0.0511907078325748,0.0250010862946510,-0.0558769851922989,0.1394340842962265,-0.0389856696128845,-0.1904621720314026,-0.0342610366642475,0.0358927771449089,0.0144658256322145,-0.0134606575593352,0.0036493409425020,-0.0175006166100502));
res += mul(Get(s0,dx,-dy), float4x4(-0.1226665154099464,-0.0248914640396833,0.1077170148491859,-0.1138020977377892,0.0398986414074898,-0.0362014472484589,-0.0383258014917374,-0.0007233460783027,0.0686493739485741,0.0905320197343826,-0.0583256222307682,-0.0041742166504264,0.0139887193217874,0.0629842206835747,-0.0363381318747997,0.0832275375723839));
res += mul(Get(s1,dx,-dy), float4x4(0.0227807927876711,-0.1040644869208336,-0.0339930094778538,-0.0297244936227798,0.1076709553599358,0.0085522281005979,-0.0303603466600180,-0.0317235551774502,-0.0277935117483139,0.1776488572359085,-0.0159768015146255,0.0902586355805397,-0.0274998154491186,-0.0164090730249882,0.0249941386282444,-0.0152801787480712));
res += mul(Get(s2,dx,-dy), float4x4(-0.0319695025682449,-0.0525376312434673,-0.0587654374539852,-0.0215628668665886,-0.0617301650345325,0.0030006822198629,-0.0243523828685284,-0.0558430664241314,0.0429502613842487,0.0202443432062864,-0.0214717127382755,-0.0484292209148407,-0.0105286333709955,-0.0309305321425200,-0.0696443170309067,0.0307545214891434));
res += mul(Get(s3,dx,-dy), float4x4(0.0079309912398458,-0.0454925596714020,0.0374209098517895,-0.1771575361490250,0.0799568146467209,0.0306184440851212,-0.1097128316760063,0.1572820097208023,-0.0179731193929911,-0.1231394931674004,-0.0332695059478283,0.0118137011304498,-0.0271038971841335,0.0438726730644703,0.0692616850137711,-0.0776503533124924));
res += mul(Get(s4,dx,-dy), float4x4(-0.0616095177829266,-0.1074695959687233,0.0666471347212791,-0.1525455713272095,-0.1415694504976273,-0.1695192754268646,0.0442305505275726,-0.0399523563683033,-0.0284679718315601,0.1267344653606415,0.0289063639938831,0.0240129530429840,-0.0516210272908211,0.0351351015269756,0.0182854458689690,-0.0164033584296703));
res += mul(Get(s5,dx,-dy), float4x4(0.0403696410357952,-0.0940284058451653,0.0426919683814049,0.0800139829516411,-0.0454359985888004,0.0133809242397547,-0.0963556692004204,0.0489798039197922,-0.0715195685625076,0.0449248328804970,-0.0868302211165428,-0.0109608834609389,-0.0836271867156029,0.1635013967752457,0.0319030769169331,0.1741830259561539));
res += mul(Get(s0,dx,0), float4x4(-0.0288115460425615,0.0881580039858818,-0.0776569694280624,0.1354973018169403,-0.1534697860479355,-0.0276088323444128,0.0397268384695053,0.0245880223810673,0.0441728048026562,-0.0118495356291533,0.0239988192915916,-0.0048116198740900,0.1835336089134216,0.1861624121665955,-0.0422621816396713,0.2565161883831024));
res += mul(Get(s1,dx,0), float4x4(0.1872199177742004,-0.0117273945361376,-0.0678680837154388,-0.1554407924413681,-0.1346786171197891,0.0006359795806929,0.0227922592312098,-0.0302431005984545,0.1271220147609711,0.1619966924190521,-0.0136099914088845,0.1489434838294983,-0.0893463045358658,0.0254868268966675,0.0358659401535988,-0.0381380356848240));
res += mul(Get(s2,dx,0), float4x4(-0.1955145895481110,0.0284818150103092,0.1473648846149445,0.1174499467015266,-0.1384292393922806,0.0564753152430058,-0.0304307844489813,0.0978068038821220,0.0611932836472988,0.1072296947240829,-0.1072354316711426,0.0520856305956841,-0.0860713720321655,-0.1242792159318924,0.0790998563170433,-0.0203657653182745));
res += mul(Get(s3,dx,0), float4x4(-0.0716660618782043,0.1252721548080444,0.0393209382891655,0.0224310755729675,0.0735665634274483,-0.1985118240118027,-0.0836333408951759,-0.1035642400383949,-0.0461048856377602,-0.0913496017456055,0.1653409302234650,-0.1371257156133652,-0.2500130534172058,0.0761817097663879,0.2965729534626007,-0.1576877087354660));
res += mul(Get(s4,dx,0), float4x4(-0.1380471587181091,0.0023484800476581,-0.0569166615605354,0.0043321182020009,-0.1078705564141273,-0.0650350078940392,0.0591469891369343,0.0715907663106918,0.1952711343765259,0.1501205265522003,-0.1057638898491859,0.1980843842029572,0.0226311925798655,-0.0510111451148987,-0.0091544426977634,0.0615307949483395));
res += mul(Get(s5,dx,0), float4x4(0.1060493364930153,-0.1092581748962402,-0.0412938520312309,0.0370484702289104,0.1711352616548538,0.0696644932031631,-0.1798737198114395,0.2522707581520081,-0.1908328980207443,-0.1420308053493500,0.2277099341154099,0.0852664783596992,0.1905182451009750,0.0726941898465157,0.0356895029544830,0.0891515389084816));
res += mul(Get(s0,dx,dy), float4x4(-0.0877395272254944,-0.0780261829495430,0.1203083917498589,0.1471617519855499,-0.0073803635314107,-0.0804265365004539,-0.0266697648912668,-0.0253270361572504,-0.0623093321919441,-0.0949590131640434,0.0568006224930286,-0.0048710168339312,0.1692365258932114,-0.0053856279700994,0.0247230697423220,0.0268518123775721));
res += mul(Get(s1,dx,dy), float4x4(-0.1227746456861496,-0.0796185508370399,0.0372735075652599,0.0223300755023956,0.0496060401201248,-0.0084792757406831,-0.1076723635196686,0.0248684603720903,-0.0384525582194328,-0.0587308444082737,0.0049746511504054,0.0691794529557228,0.0647505819797516,-0.1206677928566933,-0.0019167371792719,0.0281283333897591));
res += mul(Get(s2,dx,dy), float4x4(-0.0186106245964766,0.0145112378522754,0.0311380550265312,-0.0970050767064095,0.0705270990729332,0.0141017334535718,-0.0478996746242046,0.1009873598814011,0.0249070972204208,0.0821512341499329,-0.0642639026045799,-0.0590902082622051,-0.0369251929223537,0.0512429140508175,0.0797723457217216,-0.0127695510163903));
res += mul(Get(s3,dx,dy), float4x4(0.0952151790261269,0.0290563274174929,-0.0950547233223915,-0.0574950017035007,-0.2026975452899933,-0.0837175995111465,0.0962011665105820,-0.1066850349307060,0.1539915204048157,0.0338608324527740,-0.1452815532684326,0.0040551726706326,0.0441595502197742,0.0608806423842907,0.0329598262906075,-0.0873795077204704));
res += mul(Get(s4,dx,dy), float4x4(0.0440748929977417,0.0103260558098555,-0.0388229079544544,-0.0523280650377274,-0.0728738233447075,-0.0209492035210133,-0.0673009604215622,0.0505708418786526,-0.0265379305928946,-0.0103133441880345,0.0272727385163307,-0.0357256829738617,-0.1062512993812561,0.0044637843966484,0.0051017547957599,-0.1012657582759857));
res += mul(Get(s5,dx,dy), float4x4(0.0708774179220200,0.0184837188571692,0.0017947041196749,-0.0249486733227968,0.1034540608525276,0.0714877247810364,-0.0534178055822849,-0.0366846993565559,-0.0445434637367725,-0.0553286187350750,0.0256818421185017,-0.0293510761111975,-0.0634636506438255,-0.0555241778492928,0.0813572183251381,-0.0396989919245243));
res = max(float4(0, 0, 0, 0), res) + float4(0.8552748560905457,0.4569470286369324,0.2214268594980240,2.5668377876281738) * min(float4(0, 0, 0, 0), res);
return res;
}
