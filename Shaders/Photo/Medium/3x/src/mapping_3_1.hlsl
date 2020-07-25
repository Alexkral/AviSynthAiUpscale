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
float4 res = float4(0.0036207947414368,0.0865045264363289,0.1026382446289062,0.0724713802337646);
res += mul(Get(s0,-dx,-dy), float4x4(-0.0240301117300987,0.0243260357528925,0.0578095652163029,-0.0309811905026436,-0.0701510831713676,-0.1250808537006378,-0.1485598683357239,0.0083107296377420,-0.0131061598658562,0.1136978492140770,0.0929255038499832,0.0096081811934710,-0.0113347796723247,-0.0383843109011650,-0.0332672484219074,0.0290148351341486));
res += mul(Get(s1,-dx,-dy), float4x4(0.1066017299890518,-0.0668326020240784,0.3854883313179016,0.0757486373186111,-0.1072641387581825,-0.0555358938872814,0.0938436314463615,0.0679040700197220,-0.0188358295708895,-0.0902261435985565,0.0494248010218143,-0.0854270905256271,0.1093154400587082,-0.0074066529050469,-0.3348219394683838,-0.0318758152425289));
res += mul(Get(s2,-dx,-dy), float4x4(0.1907356977462769,-0.2067279666662216,-0.0283571388572454,-0.0659626647830009,0.0513660646975040,-0.0957177206873894,-0.1077400296926498,-0.0457724928855896,0.1547727286815643,-0.0547188520431519,-0.0417290143668652,-0.0188746303319931,-0.1310482770204544,0.0741413682699203,-0.0014561829157174,0.0013809398515150));
res += mul(Get(s3,-dx,-dy), float4x4(0.0349757410585880,0.1551071703433990,-0.0963856950402260,0.0178773943334818,0.3525612354278564,-0.1425331085920334,-0.0127802398055792,-0.1001789197325706,-0.0410532318055630,0.0718680471181870,0.1251515150070190,0.1731509715318680,0.0128360800445080,-0.0344995968043804,-0.0455674231052399,0.0530327036976814));
res += mul(Get(s4,-dx,-dy), float4x4(-0.1093399524688721,0.0035636122338474,0.3155224621295929,0.0297684762626886,-0.1754562705755234,0.1323222219944000,-0.2233527302742004,0.0371581353247166,-0.0100838700309396,-0.1384195536375046,0.0617378354072571,-0.0577725470066071,-0.1825290620326996,0.1605681926012039,-0.2800155580043793,0.1415562331676483));
res += mul(Get(s5,-dx,-dy), float4x4(-0.1011951640248299,0.0845609605312347,0.0068440008908510,-0.1233792155981064,-0.0272727850824594,-0.2180123031139374,0.1206947416067123,-0.1158215031027794,-0.0255175773054361,-0.0011747764656320,-0.1347657293081284,0.1254421919584274,-0.3075691163539886,0.1596838235855103,-0.4452143013477325,-0.2042610496282578));
res += mul(Get(s0,-dx,0), float4x4(0.1883862912654877,0.0334758795797825,-0.1946939080953598,-0.0521281138062477,0.1419375687837601,-0.0218873918056488,-0.0321795083582401,0.0247012842446566,0.2025755494832993,-0.2581881880760193,-0.0570445805788040,-0.0152643918991089,0.1696571409702301,0.0500809699296951,-0.0658568665385246,0.0411685109138489));
res += mul(Get(s1,-dx,0), float4x4(-0.2306467592716217,0.1150622889399529,0.6020172238349915,-0.1605678647756577,-0.0149752469733357,-0.1972455233335495,-0.0162407606840134,-0.1144874170422554,-0.2008303999900818,-0.0038831837009639,-0.0374259911477566,-0.0941707938909531,-0.1134556308388710,-0.1233016699552536,0.0967586711049080,0.0596408285200596));
res += mul(Get(s2,-dx,0), float4x4(0.0518861189484596,-0.0916567072272301,-0.1612765341997147,0.0842782407999039,0.0942964553833008,-0.0356477238237858,-0.0762720406055450,-0.1302805095911026,0.1578540056943893,-0.1673827916383743,-0.2895993888378143,0.0920871645212173,0.1401884406805038,-0.1473834961652756,0.0831879153847694,-0.0623300522565842));
res += mul(Get(s3,-dx,0), float4x4(0.0891890525817871,-0.0277007576078176,-0.0988524779677391,-0.1695505678653717,0.0324145071208477,-0.1443578898906708,0.2493464648723602,-0.0267030913382769,-0.0993788167834282,0.1004254221916199,-0.1563937067985535,0.1383959949016571,0.2689325213432312,-0.0151100913062692,0.1153399571776390,0.1252716034650803));
res += mul(Get(s4,-dx,0), float4x4(0.2371635288000107,-0.3547720611095428,0.4099158048629761,-0.0185413770377636,-0.1916417777538300,0.3037140071392059,0.0338140837848186,-0.2928754985332489,-0.1742622703313828,0.1608886569738388,0.1905557811260223,0.0145699903368950,-0.0830312147736549,-0.2140952348709106,-0.0507984124124050,-0.0068953260779381));
res += mul(Get(s5,-dx,0), float4x4(0.0365812480449677,0.1215011104941368,0.0268089957535267,-0.1237619519233704,0.0581389181315899,-0.3666798770427704,0.0907702967524529,-0.1938108205795288,0.2903157770633698,-0.0686313733458519,0.0125409523025155,0.0608886890113354,0.1930921077728271,0.0821899548172951,-0.1807045638561249,0.0936495587229729));
res += mul(Get(s0,-dx,dy), float4x4(0.0536085590720177,0.0649042502045631,-0.0844437330961227,-0.0167990215122700,0.0134279932826757,0.0710126310586929,0.0483502671122551,0.1064956039190292,-0.0423117913305759,0.1033927723765373,-0.0092220650985837,-0.0577707216143608,-0.0691672489047050,0.0090087866410613,0.0677435249090195,0.0059685409069061));
res += mul(Get(s1,-dx,dy), float4x4(0.0037400885485113,-0.7350734472274780,-0.3460423350334167,0.0335813276469707,0.0222650542855263,0.0095292069017887,0.1063889190554619,0.0449067503213882,-0.0531825087964535,0.0155555978417397,0.0268519595265388,-0.0630362555384636,-0.0091894464567304,-0.1381285935640335,-0.2394847720861435,0.0401605293154716));
res += mul(Get(s2,-dx,dy), float4x4(0.1644655764102936,-0.4077794551849365,-0.1112272664904594,0.0293432790786028,-0.0752490833401680,0.0113046420738101,0.0003561767225619,-0.0810109600424767,-0.0781330913305283,0.0829844251275063,0.0287455283105373,0.0974138379096985,-0.1037360578775406,-0.0413630828261375,-0.1008177623152733,0.0243987366557121));
res += mul(Get(s3,-dx,dy), float4x4(-0.0814290940761566,0.0696579664945602,-0.0120649104937911,0.0410001799464226,0.0634995028376579,-0.3275758624076843,-0.2884291112422943,0.0604228563606739,-0.0838058441877365,0.1523260027170181,0.0824888795614243,-0.0208892114460468,-0.2226569503545761,0.0416949614882469,0.0374889187514782,-0.0489283837378025));
res += mul(Get(s4,-dx,dy), float4x4(0.2071357071399689,-0.1072669029235840,-0.1495662778615952,0.0651913583278656,-0.0712167620658875,0.1405366510152817,-0.0383799634873867,-0.1772432029247284,-0.1959528774023056,0.0000156511978275,-0.0098467571660876,0.0089200483635068,0.0479337200522423,0.2431510537862778,0.0318578742444515,-0.0524400547146797));
res += mul(Get(s5,-dx,dy), float4x4(-0.0353047773241997,-0.0214017238467932,-0.0224102716892958,0.1105434820055962,0.0358183197677135,-0.1511244624853134,-0.0388956852257252,-0.0625891536474228,-0.2200665473937988,0.0972615182399750,0.0046968911774457,0.0113666746765375,0.0615588538348675,-0.1515772193670273,0.0282072126865387,0.1123916804790497));
res += mul(Get(s0,0,-dy), float4x4(0.1178017333149910,-0.0202913805842400,-0.0610038600862026,0.0109994336962700,0.1031263023614883,-0.1052758619189262,-0.1485374122858047,0.0065745781175792,0.0029318311717361,0.1954308748245239,-0.0201273858547211,-0.0919227749109268,0.0080932369455695,-0.0268547609448433,-0.1834614872932434,-0.0751648023724556));
res += mul(Get(s1,0,-dy), float4x4(-0.0418386906385422,0.2040996998548508,-0.1223375201225281,-0.1279686242341995,0.0611274130642414,0.0795866325497627,-0.1916527003049850,-0.0717971846461296,-0.4385015666484833,-0.0262109898030758,-0.1597817391157150,-0.0610809810459614,-0.0181233193725348,0.0458079054951668,-0.0012890255311504,0.0014242839533836));
res += mul(Get(s2,0,-dy), float4x4(0.0097641693428159,-0.0970616340637207,0.0590488351881504,0.0729513615369797,0.0119894500821829,-0.1342377811670303,-0.0805739834904671,-0.0861817747354507,-0.1625723987817764,-0.2014580667018890,0.1448247879743576,-0.0543934814631939,-0.0630410686135292,-0.2769418954849243,-0.1159994080662727,0.0815258324146271));
res += mul(Get(s3,0,-dy), float4x4(0.0370184034109116,0.0077267689630389,0.1074965149164200,0.0495325550436974,0.2654577493667603,0.0468031577765942,0.5546425580978394,-0.0566030554473400,0.2435696572065353,-0.0620189495384693,-0.4294238984584808,-0.0824827402830124,0.1904859691858292,-0.0164958313107491,-0.0299778115004301,-0.0083600720390677));
res += mul(Get(s4,0,-dy), float4x4(0.1688005477190018,0.1491441577672958,0.1421429216861725,0.0329635590314865,-0.0461460091173649,0.2245709449052811,-0.3749739825725555,-0.1103439256548882,0.0794099494814873,-0.1023023575544357,-0.1209734827280045,-0.2447323799133301,0.0514297522604465,-0.1487168222665787,-0.3583061993122101,0.0380073599517345));
res += mul(Get(s5,0,-dy), float4x4(-0.0006369671900757,-0.1052420288324356,0.0743347704410553,-0.1684142500162125,0.0456813313066959,-0.1063153371214867,0.1188344582915306,0.1158801540732384,0.2384902834892273,0.0492745488882065,0.1097408607602119,0.0747997835278511,0.0708127170801163,0.1157598420977592,-0.4042596817016602,0.0571036711335182));
res += mul(Get(s0,0,0), float4x4(-0.3942161202430725,-0.0715157017111778,0.1394185423851013,0.2119371443986893,-0.3580554723739624,0.1112123131752014,0.0434019081294537,-0.3549577295780182,-0.0805123448371887,0.2390964627265930,0.0203337464481592,-0.0121736573055387,0.0078140646219254,0.0360583141446114,0.2600821852684021,0.4091462194919586));
res += mul(Get(s1,0,0), float4x4(0.2246762812137604,0.1893775612115860,1.0322303771972656,-0.0056025451049209,-0.0568901263177395,-0.3574594259262085,-0.2556652128696442,0.3070453405380249,0.7153080105781555,0.1140676811337471,-0.2476730048656464,-0.1318707466125488,0.2920309305191040,-0.0517257973551750,-0.0715918615460396,-0.2912938594818115));
res += mul(Get(s2,0,0), float4x4(0.1839483976364136,-0.4288621246814728,-0.1711160540580750,0.1879892647266388,-0.1068696528673172,0.0749628320336342,-0.0536801815032959,0.1755612194538116,-0.0593560822308064,-0.1243646591901779,-0.1269529610872269,0.1341426968574524,-0.1478546559810638,0.0327576398849487,0.1343283057212830,0.1181608736515045));
res += mul(Get(s3,0,0), float4x4(-0.0109523748978972,0.0206464603543282,-0.1039680540561676,-0.5966538786888123,-0.1127497032284737,0.2468655705451965,0.0676442906260490,-0.1309781521558762,0.1446422785520554,0.5535399317741394,-0.2299941778182983,0.1031473502516747,0.2484855204820633,0.3308306336402893,0.2493111342191696,-0.0551269575953484));
res += mul(Get(s4,0,0), float4x4(0.1403544396162033,-0.0573579519987106,0.3050297796726227,-0.0447698421776295,-0.2065543383359909,0.2063690871000290,0.3022489249706268,-0.3124535083770752,-0.1254224777221680,-0.1433304846286774,0.1188366115093231,0.4334217011928558,0.1884824037551880,-0.0834901034832001,0.1471545547246933,-0.2572628855705261));
res += mul(Get(s5,0,0), float4x4(-0.1788100600242615,0.1494656950235367,-0.0381215773522854,-0.3710662126541138,0.1047245115041733,-0.7677543759346008,0.2762217521667480,0.1407399773597717,-0.1444522589445114,0.3345732092857361,0.4322940409183502,0.1634533852338791,0.1010634377598763,0.0535997077822685,-0.2851064503192902,0.0500896871089935));
res += mul(Get(s0,0,dy), float4x4(0.0143582466989756,0.1994048207998276,0.0356973595917225,0.0719827190041542,-0.1050269007682800,0.0546227432787418,-0.0455752424895763,-0.0956454351544380,0.2689369618892670,-0.2087486684322357,-0.1044209375977516,-0.0461669377982616,-0.1153757348656654,0.0609379112720490,-0.1367876082658768,-0.0399441458284855));
res += mul(Get(s1,0,dy), float4x4(-0.0935547277331352,-0.0648307949304581,-0.2629862129688263,-0.1581788659095764,-0.2239998877048492,-0.0428013354539871,0.2692613303661346,0.0790779367089272,-0.2059506624937057,0.0661720037460327,0.1805178076028824,-0.0032692288514227,-0.4563392400741577,-0.2434774190187454,-0.0028175849001855,-0.0532186478376389));
res += mul(Get(s2,0,dy), float4x4(0.1945937722921371,-0.2074071466922760,0.0489120371639729,-0.0655825957655907,0.1529654562473297,-0.3114639818668365,0.1161690056324005,-0.1237659379839897,0.0356605872511864,-0.3137097060680389,0.0271684862673283,-0.1663960814476013,-0.0648455470800400,-0.0217608176171780,-0.0055312216281891,0.0081294961273670));
res += mul(Get(s3,0,dy), float4x4(-0.0337083488702774,0.0240896120667458,-0.1269996017217636,0.1464655250310898,0.5014243125915527,0.0857917517423630,-0.0517393462359905,-0.0099006798118353,-0.4403435587882996,0.1771563589572906,0.1513418704271317,-0.2549709379673004,-0.3285920619964600,0.0616561956703663,0.1338704079389572,0.0201784856617451));
res += mul(Get(s4,0,dy), float4x4(0.0861421152949333,-0.3128298521041870,0.0170439183712006,0.0180929750204086,0.0037640486843884,0.4457018375396729,-0.1827504783868790,-0.0072348793037236,0.2601860463619232,0.2245111018419266,0.0478438474237919,-0.1226900070905685,0.0347879342734814,0.1155946627259254,-0.0284484904259443,-0.0696502327919006));
res += mul(Get(s5,0,dy), float4x4(-0.0630981102585793,0.1916882097721100,0.0109661538153887,-0.0744316205382347,0.3754743635654449,-0.4273490607738495,0.0231735557317734,0.0116069121286273,-0.1801873892545700,0.0792957767844200,-0.0656585022807121,-0.0708409026265144,-0.0305106546729803,-0.0071879448369145,0.0109075075015426,0.0654874444007874));
res += mul(Get(s0,dx,-dy), float4x4(-0.0758842527866364,-0.0304524898529053,-0.0029313554987311,0.2244770228862762,0.1337998211383820,-0.0057994695380330,-0.0386580154299736,-0.0284618921577930,-0.0065566161647439,0.0537171661853790,-0.1022748947143555,0.1253947764635086,0.0683635026216507,-0.0125611117109656,-0.1789937317371368,-0.0565985888242722));
res += mul(Get(s1,dx,-dy), float4x4(-0.0417636483907700,-0.1052746102213860,0.0454194545745850,0.0566541403532028,0.0478940531611443,0.0196842588484287,0.0827262327075005,-0.1121872216463089,-0.0366045236587524,0.1031084582209587,-0.0144271422177553,-0.0483867228031158,-0.1853580921888351,-0.1266408413648605,-0.0129564348608255,0.1064970940351486));
res += mul(Get(s2,dx,-dy), float4x4(0.0859459564089775,-0.0896499678492546,-0.1473264396190643,0.1544945836067200,0.0846543163061142,-0.0290661621838808,-0.2231165617704391,0.0928572043776512,0.2350032031536102,-0.1565913259983063,0.0292887501418591,-0.1738718450069427,0.1112165004014969,-0.1282925903797150,0.2698969542980194,-0.1325692385435104));
res += mul(Get(s3,dx,-dy), float4x4(-0.0708780065178871,-0.0154862375929952,0.0837255492806435,-0.1063097268342972,0.1930900514125824,0.1244257986545563,0.2943159341812134,-0.2091640532016754,0.1435098946094513,0.1538427323102951,0.0562944263219833,-0.1227533370256424,-0.0255575478076935,0.0213723611086607,0.0695538520812988,0.1100420206785202));
res += mul(Get(s4,dx,-dy), float4x4(0.0744494199752808,0.1957691311836243,0.2155470252037048,-0.0039761955849826,0.0220350436866283,-0.0023234938271344,-0.1613349169492722,-0.1285572052001953,-0.0079770525917411,0.1114598065614700,-0.1418214440345764,-0.1209695637226105,0.0018555128481239,-0.0290500037372112,0.1715274006128311,-0.1081783547997475));
res += mul(Get(s5,dx,-dy), float4x4(-0.0019781896844506,0.1435455083847046,0.0649391710758209,0.0911772698163986,-0.0553616881370544,0.1034143567085266,0.0178724490106106,0.1191280037164688,-0.0075123230926692,-0.1080408170819283,0.2065181732177734,-0.0159221775829792,-0.0553468354046345,0.2233288139104843,-0.1558644175529480,0.0820297449827194));
res += mul(Get(s0,dx,0), float4x4(-0.0193366874009371,0.0684088021516800,-0.1343459337949753,0.0476656928658485,0.0147968744859099,-0.0775098577141762,-0.1429325193166733,0.0163129996508360,0.0669000521302223,-0.1917216032743454,0.0515139810740948,-0.1195643544197083,0.0824972614645958,0.0440163910388947,0.1421529799699783,-0.0371914170682430));
res += mul(Get(s1,dx,0), float4x4(-0.1732879281044006,0.0647843107581139,0.0365208722651005,0.1002093255519867,-0.0509168244898319,0.0106144854798913,-0.0941110402345657,-0.0115249054506421,0.1410826146602631,0.0865082517266273,-0.0664455741643906,-0.0167442206293344,-0.0821889042854309,-0.2055556327104568,0.0569159984588623,0.4054372906684875));
res += mul(Get(s2,dx,0), float4x4(0.2723104059696198,-0.2475260496139526,-0.1947181522846222,0.2210393249988556,0.0774435102939606,-0.1006877347826958,0.0471697524189949,0.2070909142494202,0.0293116904795170,0.1156268268823624,0.0530592240393162,-0.2948774099349976,-0.0870226547122002,0.0602917298674583,-0.0164419747889042,0.0228828638792038));
res += mul(Get(s3,dx,0), float4x4(-0.0130625814199448,-0.1986792534589767,0.0051350966095924,0.0329130142927170,0.0543714426457882,-0.1217077821493149,0.0443516634404659,-0.1115348860621452,-0.2092024087905884,-0.0123322596773505,0.1933092623949051,0.1818953454494476,0.0693718194961548,-0.1976668536663055,-0.0697323083877563,0.1436635553836823));
res += mul(Get(s4,dx,0), float4x4(0.0599897131323814,0.1106882095336914,0.0190681051462889,0.0108869131654501,-0.2117021530866623,0.1716878116130829,0.0646434053778648,-0.0892509594559669,0.1618713140487671,-0.1363380998373032,0.0347993597388268,0.0304979644715786,-0.0026392152067274,0.0025352574884892,0.0567810721695423,-0.0394653566181660));
res += mul(Get(s5,dx,0), float4x4(-0.0025064111687243,-0.2998564541339874,0.0226398948580027,0.1947007775306702,0.0682775676250458,-0.0718980804085732,-0.0390150956809521,-0.1113006472587585,-0.2144999057054520,0.1586655378341675,0.2560597956180573,-0.0150104779750109,0.0347552075982094,0.0024066166952252,0.0055793216452003,0.1097476780414581));
res += mul(Get(s0,dx,dy), float4x4(0.2301708161830902,0.1914548277854919,0.1775979399681091,-0.1066095381975174,-0.1348216235637665,0.0235114824026823,0.0574510954320431,-0.0852193012833595,-0.2289059907197952,-0.0123622789978981,-0.1270559877157211,0.0263579059392214,-0.1503112018108368,0.0791306793689728,-0.0492173656821251,0.0393996685743332));
res += mul(Get(s1,dx,dy), float4x4(0.1220010295510292,-0.0743814334273338,0.0124727757647634,0.0665093436837196,0.0936332195997238,-0.1019410043954849,-0.0325194336473942,-0.0912531167268753,-0.0956717729568481,0.0449728593230247,0.0135572459548712,-0.0116333691403270,-0.0237891115248203,-0.0584873482584953,0.0601183250546455,0.0003185340901837));
res += mul(Get(s2,dx,dy), float4x4(0.1532406657934189,-0.0084008956328034,-0.0934643596410751,0.0720042213797569,0.0395601242780685,0.2438072860240936,0.0894045457243919,0.0043829530477524,0.1122936606407166,-0.1316545158624649,-0.1527546942234039,0.0332603901624680,0.0668450295925140,-0.1865936815738678,-0.0221520513296127,-0.0814179778099060));
res += mul(Get(s3,dx,dy), float4x4(-0.0647663772106171,-0.0551224499940872,0.1624395251274109,-0.0055782855488360,-0.3661941885948181,-0.1456866711378098,-0.3159533739089966,0.0489157587289810,0.2083115279674530,-0.0658909380435944,0.0882831737399101,0.0003229394496884,0.0963500663638115,0.0859752371907234,0.1213084086775780,-0.1409359872341156));
res += mul(Get(s4,dx,dy), float4x4(-0.1772895753383636,-0.2310108244419098,-0.0001282743905904,0.0702294781804085,-0.2664399743080139,0.2055079638957977,-0.2288122624158859,-0.0023192404769361,-0.0065270224586129,0.0262195542454720,0.0553017482161522,0.1116021573543549,-0.1235087290406227,-0.1564604640007019,0.0140521153807640,-0.0262731648981571));
res += mul(Get(s5,dx,dy), float4x4(0.0537169203162193,0.0604078397154808,0.1246586441993713,0.0051227398216724,-0.0975997224450111,-0.2173059582710266,-0.0399109646677971,-0.0153318783268332,-0.0338978357613087,-0.0970969274640083,0.0033669311087579,0.0080718789249659,-0.1005687639117241,0.0308864172548056,0.0130261275917292,0.0363021902740002));
res = max(float4(0, 0, 0, 0), res) + float4(0.0265477281063795,-0.0080041810870171,0.2460782229900360,1.0052121877670288) * min(float4(0, 0, 0, 0), res);
return res;
}