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
float4 res = float4(-0.0488546341657639,0.0014758075121790,-0.1252122521400452,0.0339744575321674);
res += mul(Get(s0,-dx,-dy), float4x4(0.1227854415774345,-0.3185610771179199,0.0722954347729683,0.0115567157045007,0.0125860190019011,0.0909280702471733,-0.1158575043082237,-0.0883060395717621,0.0161556787788868,-0.2642382085323334,0.1816734820604324,0.0071652834303677,0.0113051868975163,0.0900489240884781,0.2310969531536102,0.0358372814953327));
res += mul(Get(s1,-dx,-dy), float4x4(0.2454211264848709,0.0793482437729836,-0.0391379632055759,0.0031583220697939,0.0367740653455257,-0.0598283596336842,0.2053905576467514,0.0621359571814537,0.1145178601145744,0.0991214215755463,-0.1814022809267044,-0.0250532068312168,-0.1801343858242035,-0.3505544960498810,0.1723116785287857,-0.0416497923433781));
res += mul(Get(s2,-dx,-dy), float4x4(-0.1115394905209541,0.1197280660271645,0.0138960694894195,-0.0232340078800917,-0.0047101005911827,-0.1432693153619766,-0.0513643026351929,0.0763406977057457,-0.1022019758820534,-0.3061516880989075,0.0167762935161591,-0.0117167318239808,0.0493647381663322,0.0576029457151890,0.0930605009198189,-0.0156344994902611));
res += mul(Get(s3,-dx,-dy), float4x4(0.0104347746819258,0.1973157972097397,-0.1866641789674759,0.0749115943908691,0.0939087793231010,-0.1519652456045151,-0.1962320059537888,-0.0296586453914642,0.1307033300399780,0.1652249991893768,0.0529883243143559,0.0837619900703430,0.1025409698486328,-0.0017687558429316,-0.1112028956413269,0.0354147627949715));
res += mul(Get(s4,-dx,-dy), float4x4(-0.1415417492389679,-0.3684920966625214,-0.0988515093922615,0.0383555181324482,0.0234363209456205,0.3495959341526031,0.0079282047227025,-0.0303599219769239,-0.1088087335228920,0.0892919972538948,-0.1530735790729523,0.0105476547032595,-0.0560790076851845,0.1174347326159477,-0.5527826547622681,0.0413261689245701));
res += mul(Get(s5,-dx,-dy), float4x4(0.0586369372904301,-0.0846775248646736,-0.0237918607890606,-0.0560117736458778,0.0170927513390779,0.0516955666244030,-0.2124315947294235,-0.0026277496945113,0.0762222185730934,0.0114659629762173,-0.0384724736213684,-0.0183737184852362,0.0965410545468330,-0.4306996464729309,0.0259699653834105,0.0451121851801872));
res += mul(Get(s0,-dx,0), float4x4(0.0692221298813820,-0.2505334913730621,0.1854467093944550,-0.0813129991292953,-0.0588375404477119,-0.1488667577505112,0.0319747999310493,0.0166210941970348,0.0917084887623787,-0.0051817107014358,-0.0135651510208845,0.0045224181376398,0.0699180662631989,0.0372194945812225,0.1940446346998215,0.0004629009054042));
res += mul(Get(s1,-dx,0), float4x4(0.2633597552776337,-0.2119153887033463,-0.1241925284266472,0.0879857316613197,-0.2464243024587631,0.1415343731641769,-0.0174174476414919,-0.0106988875195384,0.0374507755041122,0.2582397460937500,0.0893317610025406,0.1204076334834099,-0.3351577818393707,-0.4409810304641724,-0.1062999814748764,-0.0202987715601921));
res += mul(Get(s2,-dx,0), float4x4(0.0176721382886171,-0.1206617578864098,-0.0412073396146297,-0.0178355537354946,0.1794563829898834,-0.3258936703205109,0.0416368432343006,0.0507985912263393,-0.1392557770013809,-0.6510155797004700,-0.0068818111903965,0.0117255626246333,-0.0975207164883614,0.0359243042767048,0.0662354677915573,0.0841678828001022));
res += mul(Get(s3,-dx,0), float4x4(-0.0524461679160595,0.0630740001797676,0.0394813753664494,-0.1374091207981110,-0.1032162979245186,-0.3013037443161011,0.0164067242294550,-0.0018977930303663,0.1570318937301636,-0.3992511630058289,0.0162437818944454,-0.0984460636973381,0.2617128491401672,-0.2136110514402390,0.1789859235286713,0.0589005723595619));
res += mul(Get(s4,-dx,0), float4x4(0.2802343368530273,-0.4346137940883636,0.0119237555190921,0.0887931808829308,0.1814963519573212,0.4051847159862518,-0.0591550692915916,0.1024538055062294,0.0199440382421017,-0.1463039070367813,-0.3860801756381989,-0.1931945830583572,0.1594801098108292,0.1641499698162079,0.2866925299167633,0.0932471901178360));
res += mul(Get(s5,-dx,0), float4x4(-0.1800576001405716,0.0685498565435410,0.1175355240702629,0.0985671877861023,-0.0125985536724329,-0.2649413943290710,0.1497656553983688,-0.0921228900551796,0.2192597389221191,0.1790415346622467,0.1769994348287582,0.0042664045467973,0.1656096428632736,-0.3014566898345947,0.2375321686267853,0.0083436360582709));
res += mul(Get(s0,-dx,dy), float4x4(0.0198809560388327,-0.0539541915059090,0.2841062843799591,-0.0655093416571617,-0.0485704205930233,0.0926995649933815,-0.0811981856822968,-0.0040642912499607,-0.0326517410576344,0.1282026618719101,-0.0287229660898447,0.0549336411058903,-0.0049362275749445,0.0816744193434715,0.1454150527715683,0.0788451060652733));
res += mul(Get(s1,-dx,dy), float4x4(-0.0716636255383492,0.0113419443368912,0.0896531045436859,0.0615156851708889,0.1574588268995285,-0.2611719965934753,-0.0631349831819534,-0.1852937340736389,0.0304346755146980,-0.0288506951183081,0.0944876149296761,0.1008759588003159,-0.2319558113813400,-0.1761897653341293,-0.1116396486759186,0.0204314049333334));
res += mul(Get(s2,-dx,dy), float4x4(0.0093559650704265,0.0108833126723766,0.0156682953238487,-0.0030213405843824,-0.0231844317167997,0.1089008972048759,-0.1034506633877754,-0.0079248938709497,-0.0796061381697655,0.0431043244898319,-0.2076347321271896,-0.0112252226099372,0.0669467449188232,0.0718063339591026,-0.1029841527342796,0.0922367349267006));
res += mul(Get(s3,-dx,dy), float4x4(-0.0505389161407948,-0.0114115923643112,-0.1233001872897148,0.1057908311486244,-0.0104320775717497,0.0142412520945072,-0.0113176116719842,0.0585626028478146,-0.0804824605584145,0.0636902898550034,0.0156885478645563,0.0722327977418900,0.1537407636642456,-0.1184373721480370,-0.1969496607780457,-0.0565600693225861));
res += mul(Get(s4,-dx,dy), float4x4(-0.1962013095617294,0.1184832677245140,0.1921174675226212,0.1755002886056900,0.0266526266932487,-0.3681491017341614,0.1019076630473137,-0.0508385337889194,-0.0495373606681824,0.0012243717210367,0.0660333484411240,0.0977246761322021,-0.0237057190388441,0.1056542694568634,-0.1013835296034813,0.1937741190195084));
res += mul(Get(s5,-dx,dy), float4x4(0.1814615428447723,-0.2484559118747711,-0.3050616085529327,-0.0788817554712296,0.0980978980660439,-0.0536273941397667,0.0857461839914322,-0.1374081224203110,-0.0098303034901619,-0.2497458755970001,0.0161381978541613,0.0208275578916073,0.0430524833500385,-0.0942194685339928,-0.1333042383193970,0.0443308837711811));
res += mul(Get(s0,0,-dy), float4x4(0.2280285209417343,-0.1947110146284103,-0.1731811910867691,0.0150619857013226,0.0914488136768341,-0.0209821332246065,-0.1611042916774750,0.0501801036298275,0.2601306736469269,0.1059361919760704,0.1923057883977890,0.0649246945977211,-0.0216443445533514,-0.1305051445960999,-0.0972682535648346,-0.0550293065607548));
res += mul(Get(s1,0,-dy), float4x4(0.0092833293601871,-0.0359373837709427,-0.0576610304415226,-0.0369881093502045,0.0039985887706280,-0.1529522389173508,-0.0160341262817383,-0.0343917086720467,-0.1521000266075134,0.0357082746922970,-0.0245060976594687,0.0304382797330618,0.0777297392487526,-0.3026938140392303,0.1756298691034317,-0.0461148433387280));
res += mul(Get(s2,0,-dy), float4x4(0.2036837488412857,-0.4030901491641998,0.0628313422203064,-0.0685074925422668,0.0498583428561687,0.0050371279940009,-0.0398210138082504,-0.0305937286466360,-0.0169225018471479,-0.1001262068748474,-0.0308880247175694,0.0789186283946037,0.0471842996776104,0.0735631212592125,0.0524170100688934,-0.0497008785605431));
res += mul(Get(s3,0,-dy), float4x4(0.1002921983599663,-0.1701626628637314,-0.0155282132327557,-0.1914126425981522,-0.0315175503492355,0.0613182708621025,-0.0976740419864655,0.0751144140958786,0.1215776279568672,-0.0582737363874912,-0.0856066197156906,0.0108208693563938,-0.0310751255601645,0.0476763918995857,0.0336089842021465,0.0495345182716846));
res += mul(Get(s4,0,-dy), float4x4(0.2045222222805023,-0.0745402351021767,-0.1100229322910309,-0.0980747565627098,-0.0047069527208805,-0.1715723425149918,-0.0005589922657236,-0.0101271830499172,0.1605605185031891,0.1507652401924133,0.4332307279109955,0.0765147209167480,-0.1391685456037521,0.1396023631095886,-0.2308666557073593,-0.0031811699736863));
res += mul(Get(s5,0,-dy), float4x4(0.0912656560540199,-0.0556726492941380,-0.1852186769247055,0.0139098195359111,0.0195553973317146,0.2063959687948227,-0.0562447868287563,0.0270147677510977,-0.0106686605140567,-0.0335049293935299,-0.0085741290822625,-0.0416439063847065,-0.0609454549849033,-0.1546940505504608,-0.0538969449698925,0.0086737908422947));
res += mul(Get(s0,0,0), float4x4(0.3442641794681549,0.0362107269465923,0.0338599197566509,0.1252933591604233,0.4413953721523285,0.0349218659102917,-0.1425700634717941,-0.1842383295297623,0.1344954520463943,0.3162496984004974,0.2083889544010162,0.2410947829484940,0.1741985231637955,0.2056101560592651,-0.2588104009628296,-0.0322058834135532));
res += mul(Get(s1,0,0), float4x4(-0.3806200325489044,0.1644780188798904,0.1750408858060837,0.0117614660412073,0.0130798788741231,0.0876405760645866,-0.2000331282615662,-0.2224089652299881,0.0795849487185478,-0.2417481094598770,-0.0639799311757088,0.0888019874691963,0.1389797329902649,-0.2642842829227448,0.0270878132432699,-0.0367958843708038));
res += mul(Get(s2,0,0), float4x4(0.0599939562380314,-0.2021079659461975,-0.6222844719886780,0.4849803745746613,-0.2065484970808029,0.1571513414382935,-0.0330488793551922,0.2929454743862152,-0.0997937470674515,-0.2156666219234467,-0.1920574009418488,0.0288263019174337,0.0887576565146446,0.1835788786411285,0.0987346693873405,-0.1491197347640991));
res += mul(Get(s3,0,0), float4x4(0.0445243008434772,0.2735221982002258,-0.2283495813608170,-0.2270870208740234,0.0389250628650188,-0.1014155447483063,-0.1459647715091705,-0.1294264197349548,-0.0506486408412457,0.1082069799304008,-0.0848704427480698,-0.1982599943876266,-0.3146443367004395,0.0539522133767605,0.0928544998168945,-0.0266251042485237));
res += mul(Get(s4,0,0), float4x4(-0.1279499530792236,0.0654829815030098,-0.3408915698528290,0.1368504464626312,0.1656194776296616,0.0653665363788605,0.1529686897993088,0.0540728755295277,-0.0140363043174148,0.0034205534029752,-0.1593695133924484,0.1557333171367645,0.0270013064146042,-0.0371736660599709,-0.4406016469001770,0.0876458361744881));
res += mul(Get(s5,0,0), float4x4(-0.3657090663909912,0.3892186284065247,0.2298910319805145,-0.0864270851016045,-0.3238655626773834,0.0910029262304306,-0.0191527623683214,0.1867915838956833,0.0866207927465439,-0.0772754549980164,-0.2088669240474701,0.0384948700666428,-0.1608303487300873,-0.2391348928213120,-0.3070971369743347,0.4672301113605499));
res += mul(Get(s0,0,dy), float4x4(0.0796935781836510,0.2637642025947571,0.0730640962719917,0.0506907813251019,-0.1195403411984444,-0.2986566424369812,-0.0330137498676777,0.0539235211908817,-0.0879655033349991,0.0586542449891567,-0.0451076030731201,0.2091882079839706,-0.1525188237428665,0.0837925300002098,0.1161667481064796,-0.0197380892932415));
res += mul(Get(s1,0,dy), float4x4(0.0858945995569229,0.0270611122250557,-0.0048952731303871,-0.1877442598342896,-0.0479198805987835,0.1003613024950027,-0.0457136631011963,0.1543718278408051,0.1190730333328247,0.1340754181146622,0.0137354042381048,0.1486568301916122,-0.1819494664669037,0.1674355268478394,-0.1249146983027458,0.2271558940410614));
res += mul(Get(s2,0,dy), float4x4(-0.0757169574499130,0.1956531405448914,-0.0787652954459190,-0.0679123178124428,-0.0780147090554237,-0.0239488538354635,-0.0236369986087084,-0.0915068835020065,-0.0304525010287762,0.0888952612876892,-0.3253059387207031,-0.2081521004438400,-0.0533298365771770,-0.0288639720529318,0.0933342054486275,0.1602990776300430));
res += mul(Get(s3,0,dy), float4x4(0.0298379696905613,0.1241830140352249,-0.0732628777623177,-0.0429244600236416,0.0081451646983624,0.2224012166261673,-0.2982219755649567,0.0232915040105581,-0.2206598073244095,0.0388815440237522,-0.1659912914037704,0.0618967078626156,0.0328705981373787,-0.0315248779952526,-0.0649214535951614,-0.0443361401557922));
res += mul(Get(s4,0,dy), float4x4(0.0182861294597387,0.0825694948434830,-0.0216582920402288,0.0300449151545763,-0.0751789733767509,-0.2120275199413300,0.1633322834968567,-0.0640790462493896,-0.0795213282108307,0.1733583211898804,0.2486609965562820,0.0085470704361796,-0.0175752099603415,0.0662180408835411,-0.0742724090814590,-0.0515205115079880));
res += mul(Get(s5,0,dy), float4x4(0.0259771440178156,0.1533732116222382,0.0883868113160133,0.0498940497636795,0.0565459728240967,0.1536990106105804,0.0804842635989189,-0.0034295471850783,-0.0763538852334023,-0.0099882399663329,-0.0344755388796329,0.0395655632019043,-0.0523454584181309,0.0134293679147959,0.1291139125823975,-0.1707802563905716));
res += mul(Get(s0,dx,-dy), float4x4(0.3528558909893036,0.0690304934978485,-0.0510760061442852,-0.0994116440415382,0.0684878900647163,0.0220648441463709,-0.0252956375479698,0.0280495509505272,0.0105142882093787,0.0395740270614624,0.0871124491095543,-0.0705817118287086,0.0275807585567236,0.0306103751063347,0.0354188904166222,0.0069230110384524));
res += mul(Get(s1,dx,-dy), float4x4(-0.1172295883297920,0.0406030826270580,0.0777104496955872,0.0250875595957041,0.0037054470740259,-0.0804995447397232,-0.0599481724202633,0.0507671944797039,-0.0625396147370338,-0.0350125618278980,-0.0365240797400475,0.0718037858605385,-0.1019158661365509,0.0109763313084841,0.0340584926307201,-0.0477422326803207));
res += mul(Get(s2,dx,-dy), float4x4(0.0639762803912163,0.0212399773299694,-0.4205486178398132,-0.2139887809753418,-0.0988914668560028,-0.0443170517683029,0.0192886255681515,0.0416950657963753,-0.0434201136231422,-0.0148740224540234,-0.0898168608546257,0.0519228540360928,0.0253366157412529,0.0323625057935715,-0.0005197388818488,0.0536174066364765));
res += mul(Get(s3,dx,-dy), float4x4(0.0475445613265038,0.1041378155350685,0.0608084239065647,0.0125988833606243,0.0448262542486191,0.0730531513690948,-0.0237948317080736,0.0625346153974533,-0.0036729073617607,-0.0855142921209335,0.2172740846872330,-0.0573348142206669,-0.0750010162591934,0.0056350938975811,0.0631545707583427,0.0140415467321873));
res += mul(Get(s4,dx,-dy), float4x4(-0.1446848511695862,0.0736438632011414,-0.0376909971237183,-0.0629959926009178,0.0730785802006721,-0.0334109403192997,0.0414503067731857,0.0191551987081766,0.0397366695106030,0.0823331400752068,-0.1449798196554184,-0.0595731884241104,-0.0631525218486786,0.0195897761732340,-0.0487705022096634,-0.0269481446594000));
res += mul(Get(s5,dx,-dy), float4x4(0.0572201609611511,0.0840758532285690,0.0096626877784729,0.0148696713149548,-0.0399709232151508,-0.0488163642585278,0.0405764728784561,0.0157174617052078,0.0429039672017097,0.0304413996636868,0.0873520374298096,-0.0090131610631943,0.0241736490279436,0.0607901737093925,-0.1202812194824219,0.0557146668434143));
res += mul(Get(s0,dx,0), float4x4(0.2889815866947174,0.2981199920177460,0.0405663140118122,-0.0364733077585697,-0.1765776127576828,-0.0018264233367518,0.0266904458403587,0.1109443232417107,0.0304921213537455,-0.0194373764097691,-0.0853474512696266,-0.0457298532128334,-0.0524733886122704,-0.0729657560586929,0.0534008033573627,-0.0113256406039000));
res += mul(Get(s1,dx,0), float4x4(-0.0224101878702641,-0.0275827385485172,-0.1854676604270935,-0.0323677733540535,0.0334499441087246,0.0094383470714092,-0.0755035355687141,-0.1052672564983368,0.0375717245042324,-0.0041139372624457,0.1718991398811340,-0.0980304628610611,-0.3364402055740356,-0.0045807906426489,0.0106205912306905,0.0011942167766392));
res += mul(Get(s2,dx,0), float4x4(-0.3934716582298279,0.2924667596817017,-0.3641589581966400,-0.0389231666922569,-0.0766914784908295,0.1251512765884399,0.0335270725190639,0.0409150384366512,-0.1658335179090500,-0.0787814632058144,-0.1230978295207024,-0.0119743542745709,-0.0420855730772018,-0.0418387912213802,0.0427409969270229,0.0254196338355541));
res += mul(Get(s3,dx,0), float4x4(-0.1234610155224800,0.0345077067613602,-0.0517567433416843,-0.0201064161956310,0.0830431357026100,0.0772352442145348,-0.1783424466848373,0.0153922811150551,-0.2004236280918121,-0.0250982828438282,0.1711397767066956,0.1765792667865753,0.0426615960896015,0.0517219826579094,-0.1067345365881920,0.0067907278425992));
res += mul(Get(s4,dx,0), float4x4(-0.0490229092538357,-0.0345773734152317,-0.1219728663563728,-0.1074131727218628,0.0202528294175863,0.2330429553985596,-0.0619996748864651,0.0149561734870076,-0.0421560704708099,-0.1187607049942017,-0.0409987382590771,-0.2432282418012619,0.0152138806879520,0.0418916381895542,0.0011009518057108,0.0372113659977913));
res += mul(Get(s5,dx,0), float4x4(0.1523244529962540,-0.0566522851586342,0.1351398974657059,0.0453598536550999,0.1005841568112373,-0.1409697085618973,-0.1669281274080276,-0.0339997895061970,-0.0390782244503498,0.0099354768171906,-0.0851144194602966,0.0249439328908920,-0.1244849190115929,0.1049738153815269,-0.0315418355166912,0.1009211540222168));
res += mul(Get(s0,dx,dy), float4x4(0.0636578574776649,0.1078336089849472,0.0788701400160789,0.0434400774538517,-0.0283764824271202,-0.1678821295499802,-0.1964707970619202,-0.0254148300737143,0.0505856499075890,-0.0125290080904961,-0.0326494723558426,0.0252254046499729,-0.0363100953400135,0.0210281256586313,0.1562301218509674,-0.0559707954525948));
res += mul(Get(s1,dx,dy), float4x4(0.0968515276908875,0.1203381195664406,-0.1682401746511459,-0.0810979232192039,0.0406849607825279,-0.0807192102074623,0.1556269377470016,-0.0055688219144940,-0.0438569486141205,-0.0208114907145500,0.0101776532828808,-0.0810910910367966,-0.2613490521907806,-0.0097247632220387,-0.2801109850406647,0.0869199037551880));
res += mul(Get(s2,dx,dy), float4x4(0.0933328196406364,-0.1290651112794876,0.1378071755170822,-0.0540668964385986,0.0292465556412935,-0.1619917154312134,-0.0259260050952435,-0.1062855124473572,-0.0782783031463623,0.1674937605857849,-0.1907167285680771,-0.0798985362052917,-0.0124861048534513,0.0015405080048367,0.0306131504476070,0.0410807058215141));
res += mul(Get(s3,dx,dy), float4x4(-0.0459795147180557,-0.0704291015863419,0.0671395808458328,0.0297408718615770,-0.1173351556062698,-0.1272711157798767,0.1008906364440918,-0.0253010001033545,-0.0516995899379253,0.0570237636566162,0.0149069782346487,0.0053132297471166,-0.0609306208789349,0.1379188895225525,0.1867659687995911,-0.0519065111875534));
res += mul(Get(s4,dx,dy), float4x4(0.0000191338094737,-0.0531335696578026,0.1431560665369034,-0.1509020924568176,0.0585636459290981,-0.3029982149600983,0.2080089896917343,0.1202812492847443,0.0204219259321690,-0.1107767671346664,0.0867831557989120,0.0232240054756403,-0.0368680506944656,-0.0140491379424930,0.0545562990009785,-0.0198335628956556));
res += mul(Get(s5,dx,dy), float4x4(0.0466754846274853,-0.0970741957426071,-0.1761471480131149,-0.0096543347463012,-0.0191904436796904,0.0862608253955841,0.0047687808983028,0.0710640847682953,-0.0710866525769234,0.0961463376879692,0.0506217144429684,0.0616249367594719,-0.0111810825765133,0.0199637059122324,0.1703648567199707,-0.0235400106757879));
res = max(float4(0, 0, 0, 0), res) + float4(-0.1045785844326019,-0.2012118399143219,0.2930921316146851,2.4990127086639404) * min(float4(0, 0, 0, 0), res);
return res;
}