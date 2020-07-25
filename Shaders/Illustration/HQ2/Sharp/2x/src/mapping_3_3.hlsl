sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += mul(Get(s0,-dx,-dy), float4x4(0.042178560048342,-0.006580621469766,-0.034591332077980,0.026031984016299,-0.027246192097664,0.005313897971064,0.001294882968068,0.029409274458885,-0.041569251567125,-0.010029478929937,0.000161657051649,-0.024073293432593,-0.049960050731897,-0.019214008003473,0.005031247157604,-0.000515103805810));
res += mul(Get(s0,-dx,0), float4x4(-0.010037952102721,0.011548561975360,-0.007720943540335,0.012732405215502,-0.005486563779414,0.010166260413826,0.005457106512040,-0.015858573839068,0.011833113618195,-0.013131673447788,0.000113095193228,0.038501247763634,-0.036811169236898,-0.000961413374171,-0.003639041213319,-0.039669297635555));
res += mul(Get(s0,-dx,dy), float4x4(-0.004618569742888,-0.002155772875994,-0.003831920446828,0.004326627589762,-0.004410771187395,-0.012336678802967,0.006645631510764,0.018495341762900,0.085140518844128,-0.029860990121961,-0.024311279878020,-0.015263864770532,0.102949894964695,0.005174795631319,-0.029255675151944,-0.022577140480280));
res += mul(Get(s0,0,-dy), float4x4(0.040384165942669,0.008938631042838,0.012484630569816,0.024954307824373,0.061433561146259,-0.003198267193511,-0.021601770073175,0.038124263286591,-0.011288891546428,-0.031456548720598,0.017053805291653,0.035965666174889,-0.016182847321033,0.007333814166486,0.020679341629148,-0.020347371697426));
res += mul(Get(s0,0,0), float4x4(0.052923217415810,0.031448014080524,-0.018968997523189,0.037498921155930,0.002819102723151,-0.025375900790095,0.010750171728432,0.040886770933867,-0.062576837837696,-0.013620256446302,0.033136431127787,0.093591064214706,-0.047095745801926,-0.011623959988356,0.022028682753444,-0.070882737636566));
res += mul(Get(s0,0,dy), float4x4(0.003550400258973,-0.009307466447353,-0.017620492726564,0.004384791944176,0.026651611551642,0.000427024497185,0.002455607755110,0.048796463757753,0.030122321099043,-0.045365076512098,-0.030386287719011,-0.013118696399033,-0.001033858279698,-0.047412555664778,0.015700822696090,-0.047623295336962));
res += mul(Get(s0,dx,-dy), float4x4(0.002595368074253,0.005037905648351,0.013170980848372,0.011713041923940,0.044475585222244,0.002622606698424,0.003954432439059,0.061047874391079,0.026764366775751,-0.010387846268713,0.003321788972244,0.012703834101558,-0.022572055459023,-0.009203766472638,0.019982537254691,0.060297168791294));
res += mul(Get(s0,dx,0), float4x4(0.047851271927357,0.013124250806868,0.002136726398021,0.016744531691074,0.006669299677014,-0.010020655579865,-0.008728786371648,0.061322730034590,-0.001846304163337,-0.014642620459199,0.007289881352335,0.025352127850056,-0.005076338071376,-0.002775335451588,0.028571957722306,-0.030913829803467));
res += mul(Get(s0,dx,dy), float4x4(0.011909469030797,-0.003474981756881,-0.041311193257570,0.001999592175707,-0.009979447349906,-0.008223931305110,0.001266934210435,0.021347749978304,-0.037618905305862,-0.074419118463993,-0.032158017158508,-0.042955208569765,-0.009823415428400,-0.010069353505969,0.009303254075348,-0.019782990217209));
res += mul(Get(s1,-dx,-dy), float4x4(-0.016860833391547,-0.011150905862451,-0.015143667347729,0.001460329047404,-0.030848534777761,-0.000879953673575,0.005446829367429,0.015725413337350,0.010770254768431,0.009130583144724,0.001486192108132,-0.015421532094479,0.047742769122124,0.015174199827015,-0.014666928909719,-0.026116121560335));
res += mul(Get(s1,-dx,0), float4x4(0.013230063021183,0.014015972614288,-0.008881019428372,0.046160280704498,-0.037353605031967,0.005571704357862,-0.010088650509715,0.054680321365595,0.005493037402630,0.020165642723441,-0.028402714058757,-0.014932846650481,-0.029219396412373,-0.005464503075927,-0.035213991999626,0.039648875594139));
res += mul(Get(s1,-dx,dy), float4x4(0.018840322270989,-0.007382690906525,-0.004415862262249,-0.002449120627716,-0.008123426698148,-0.015441648662090,-0.009183654561639,0.028343779966235,-0.055292427539825,0.023311795666814,0.010410536080599,0.000058197241742,-0.049814753234386,0.017503110691905,0.007217608857900,0.019316108897328));
res += mul(Get(s1,0,-dy), float4x4(-0.000077330609201,-0.002391858724877,0.002701323013753,0.017225809395313,-0.026707541197538,-0.024397540837526,-0.008618318475783,0.103519104421139,-0.004660664126277,-0.025458334013820,-0.013769364915788,-0.033007118850946,0.044204168021679,-0.000664869439788,-0.016226826235652,0.045599389821291));
res += mul(Get(s1,0,0), float4x4(0.006182090844959,-0.004993237089366,-0.019615357741714,0.042741194367409,-0.026150722056627,0.005105647258461,-0.015680704265833,-0.009809446521103,0.018739800900221,0.005885924678296,-0.010277784429491,-0.038649108260870,0.068196155130863,-0.010817476548254,-0.012139928527176,0.077418990433216));
res += mul(Get(s1,0,dy), float4x4(-0.005540056154132,-0.014025193639100,0.018318392336369,-0.001120793167502,-0.010855152271688,-0.046589564532042,-0.023152565583587,-0.044171225279570,-0.067634359002113,0.028735840693116,0.004278637468815,0.001712402096018,-0.032520044595003,-0.012282970361412,0.012202096171677,-0.037302456796169));
res += mul(Get(s1,dx,-dy), float4x4(0.011002643965185,0.013586355373263,-0.025346612557769,0.019380258396268,0.011098228394985,0.008346148766577,0.013186091557145,0.074858479201794,-0.070042826235294,0.003882772754878,0.010965228080750,-0.027776051312685,-0.040463738143444,-0.013035033829510,-0.009305827319622,0.001157052582130));
res += mul(Get(s1,dx,0), float4x4(0.029324056580663,0.001344089396298,-0.012125791050494,-0.008681779727340,0.002428980078548,-0.004009481985122,-0.000986609957181,-0.017446046695113,0.035570971667767,0.016663795337081,0.003867471124977,0.001047365833074,0.038568750023842,0.000990622909740,-0.015362353064120,0.052110988646746));
res += mul(Get(s1,dx,dy), float4x4(0.004746798425913,-0.006847559008747,0.011688233353198,0.000493235071190,-0.022786131128669,-0.007929651997983,-0.009067253209651,0.006965369451791,0.015666449442506,0.060908906161785,-0.027420209720731,0.035100813955069,0.020366393029690,-0.019617695361376,-0.006999248173088,-0.064025551080704));
res += mul(Get(s2,-dx,-dy), float4x4(0.004007274750620,-0.032925430685282,-0.004270805045962,0.025352466851473,0.020999416708946,-0.009331160224974,-0.012732283212245,0.068270564079285,0.010566433891654,0.008304204791784,0.006895248312503,0.028453730046749,0.026509519666433,-0.001112403115258,-0.019867310300469,-0.002208576072007));
res += mul(Get(s2,-dx,0), float4x4(0.074691034853458,-0.004185694735497,-0.019359964877367,0.070207558572292,-0.047764714807272,0.004944373387843,-0.010940408334136,-0.014053410850465,0.024926465004683,0.017968302592635,-0.007027165964246,0.011306845583022,0.022478496655822,-0.022143874317408,0.015726134181023,-0.028807537630200));
res += mul(Get(s2,-dx,dy), float4x4(-0.096888966858387,0.029830232262611,0.002614630619064,-0.048854768276215,-0.044921133667231,0.007568118628114,0.000806738855317,-0.036709737032652,-0.075778700411320,-0.002336186589673,-0.010408096946776,-0.009098715148866,-0.048507496714592,0.000362674210919,-0.009952107444406,-0.006914416793734));
res += mul(Get(s2,0,-dy), float4x4(-0.171894565224648,-0.023473393172026,-0.012631468474865,0.077516809105873,0.002918273443356,-0.026766704395413,0.013284424319863,-0.024148862808943,-0.020338010042906,-0.007725277915597,-0.005714332219213,-0.007756948936731,-0.017808694392443,0.000866274291184,-0.001665471238084,0.034112092107534));
res += mul(Get(s2,0,0), float4x4(0.069064117968082,-0.018491012975574,-0.012384037487209,-0.052393782883883,-0.020659539848566,0.013249269686639,-0.024376247078180,-0.069571308791637,0.035898752510548,0.012334603816271,-0.000202181850909,-0.041971653699875,0.016206134110689,-0.030249044299126,0.015432543121278,-0.017174862325191));
res += mul(Get(s2,0,dy), float4x4(0.065182879567146,0.051461495459080,-0.023927366361022,-0.088369034230709,-0.052124399691820,0.020867155864835,-0.024723364040256,-0.037370286881924,-0.019030280411243,0.026574257761240,-0.024200290441513,-0.031454727053642,0.076256781816483,0.008047380484641,-0.007899190299213,0.039761207997799));
res += mul(Get(s2,dx,-dy), float4x4(-0.021503383293748,-0.033492505550385,-0.019867103546858,-0.063712462782860,-0.035488031804562,-0.051091253757477,-0.010736605152488,-0.058417394757271,-0.042686916887760,-0.034447137266397,-0.022353257983923,-0.058205734938383,0.054447218775749,-0.033088669180870,-0.001352522405796,0.019913027063012));
res += mul(Get(s2,dx,0), float4x4(-0.055972307920456,-0.014312969520688,0.004065673798323,-0.087054200470448,0.030957581475377,0.049914423376322,-0.005467591341585,0.005825053434819,0.035230431705713,-0.001299279392697,0.005033613182604,-0.033487081527710,-0.013961666263640,0.013156051747501,0.009927083738148,-0.011385004036129));
res += mul(Get(s2,dx,dy), float4x4(-0.005554664414376,0.039759967476130,-0.020018344745040,-0.006083551794291,-0.030795849859715,0.043024633079767,-0.024698078632355,-0.004785731900483,0.030589155852795,0.022030750289559,0.003845002502203,0.019421966746449,0.019213488325477,0.005698708351701,0.019735580310225,0.003787937574089));
res += mul(Get(s3,-dx,-dy), float4x4(-0.001858550473116,-0.005229049827904,-0.013581990264356,0.000727648148313,0.060514513403177,0.024349365383387,-0.002640136284754,-0.001348667079583,0.006688983645290,0.001335214124992,0.012227850034833,-0.000167318081367,0.027146967127919,0.013079244643450,0.024037981405854,-0.002831312362105));
res += mul(Get(s3,-dx,0), float4x4(-0.007854598574340,-0.006149301771075,-0.009085997007787,-0.021782200783491,0.031177794560790,0.001043642987497,0.021991021931171,-0.024854589253664,-0.001316846697591,0.010325144976377,0.009436883963645,-0.018201585859060,0.008297870866954,-0.015006167814136,0.010610943660140,-0.027203742414713));
res += mul(Get(s3,-dx,dy), float4x4(-0.011321857571602,0.002543949289247,-0.026682035997510,-0.007542859762907,0.125400006771088,-0.015624959021807,0.015993682667613,-0.033702403306961,-0.014018087647855,-0.024918209761381,-0.004034656099975,-0.008231071755290,-0.023854712024331,0.003418954787776,0.024265196174383,0.017042910680175));
res += mul(Get(s3,0,-dy), float4x4(0.022000191733241,-0.017434017732739,-0.013942863792181,0.019711308181286,0.111720405519009,0.007753883488476,0.006390114780515,0.039089024066925,0.010705650784075,-0.003039144445211,-0.010795608162880,-0.023528136312962,0.002169052837417,0.022908966988325,-0.010751105844975,-0.009954456239939));
res += mul(Get(s3,0,0), float4x4(-0.022698497399688,-0.004120273515582,-0.005434810649604,0.013014005497098,0.003609602339566,-0.004289892036468,0.011042218655348,0.018297465518117,0.008473748341203,-0.001546506537125,-0.014064628630877,0.018931176513433,0.024995302781463,-0.005599736701697,0.003353425068781,0.017128141596913));
res += mul(Get(s3,0,dy), float4x4(-0.054811812937260,-0.004863093141466,-0.012831008993089,0.031567644327879,0.008448102511466,0.003890528343618,-0.004686981905252,0.015109576284885,-0.003085952252150,-0.007325696758926,-0.003420238383114,0.007496279664338,-0.013220792636275,0.017433168366551,0.000708801089786,-0.015825385227799));
res += mul(Get(s3,dx,-dy), float4x4(0.032736271619797,-0.027291201055050,-0.004112408496439,0.022103900089860,0.014289494603872,0.000115657196147,0.015498093329370,-0.029873095452785,-0.029366023838520,-0.029872940853238,-0.017939392477274,-0.002038782462478,0.015240352600813,0.003139843232930,0.006141057237983,0.025281460955739));
res += mul(Get(s3,dx,0), float4x4(-0.024273088201880,-0.003527675522491,0.013792217709124,0.048649452626705,0.126241654157639,0.001016863854602,0.000666636682581,0.015411939471960,0.004772956017405,0.006456321571022,0.004449433181435,0.006132537499070,-0.004839112516493,-0.000634941505268,0.006112211849540,0.015601188875735));
res += mul(Get(s3,dx,dy), float4x4(-0.054553974419832,-0.026230910792947,0.016989979892969,-0.024167969822884,0.083212956786156,-0.005472528748214,0.002272811252624,-0.022983562201262,-0.006267927121371,-0.027377340942621,-0.014271516352892,0.007120965048671,0.012734203599393,-0.017285076901317,-0.004154188092798,0.024462541565299));
return max(float4(0,0,0,0), res);
}