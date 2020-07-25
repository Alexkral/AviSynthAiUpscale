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
float4 res = float4(0.0197552833706141,0.2524483203887939,-0.0118959816172719,-0.0188876520842314);
res += mul(Get(s0,-dx,-dy), float4x4(0.1500432044267654,0.1486661434173584,-0.1145668402314186,-0.2598429322242737,-0.0192860104143620,-0.1162813901901245,-0.0986272469162941,0.1193604022264481,-0.4289155304431915,-0.0123022031039000,0.1279714554548264,0.0345480740070343,-0.0030083784367889,0.2557013630867004,0.3099031448364258,-0.1397781968116760));
res += mul(Get(s1,-dx,-dy), float4x4(0.0389567799866199,-0.2377695739269257,-0.3300395309925079,-0.0490107052028179,0.2735348939895630,-0.0258847493678331,-0.0643247216939926,-0.1612346321344376,0.0664136111736298,-0.2072363495826721,0.0471953190863132,0.2667367756366730,-0.1806844919919968,-0.0327674373984337,0.0585231222212315,-0.0084310863167048));
res += mul(Get(s2,-dx,-dy), float4x4(0.0781201794743538,0.0426784195005894,-0.1234888061881065,-0.1281683743000031,-0.0610353425145149,0.0522263161838055,-0.1009004041552544,-0.0903266891837120,0.2599814534187317,0.0333454348146915,-0.0031481776386499,-0.2434515655040741,0.1973125040531158,0.2098343372344971,0.3302274346351624,0.1029374599456787));
res += mul(Get(s3,-dx,-dy), float4x4(-0.0591131970286369,0.1203696280717850,-0.1725198626518250,0.1408202946186066,0.0941539704799652,0.0837796181440353,-0.0224154908210039,0.1732690185308456,0.0744430720806122,-0.0074672000482678,0.1067332848906517,-0.1863190829753876,-0.0914393737912178,-0.2895877659320831,0.0042019463144243,-0.4901471138000488));
res += mul(Get(s4,-dx,-dy), float4x4(-0.0090527618303895,0.0159750580787659,0.0848169922828674,-0.0056404648348689,0.1636269986629486,0.0542914681136608,0.0481782890856266,0.0713111609220505,0.1721152067184448,-0.0071152825839818,0.0733770132064819,0.0098464349284768,0.0078878048807383,0.0341063812375069,-0.0622576661407948,-0.0289135277271271));
res += mul(Get(s5,-dx,-dy), float4x4(0.0982988849282265,-0.3632286489009857,0.0065840436145663,0.2710018754005432,-0.0280238296836615,-0.1013833582401276,-0.0812601447105408,-0.0151899969205260,0.3171313703060150,0.1473969370126724,0.0901571735739708,0.0366696380078793,0.0310431625694036,0.3511362075805664,-0.3651837706565857,-0.1868886798620224));
res += mul(Get(s0,-dx,0), float4x4(-0.2733742594718933,0.0961453616619110,-0.2570588588714600,-0.1928019672632217,0.0751256346702576,-0.0370002388954163,0.0400198586285114,-0.0166866611689329,0.2190142720937729,-0.2599657773971558,-0.1282025128602982,-0.1160563677549362,0.0737162455916405,0.0572556033730507,-0.0316552445292473,-0.1698830723762512));
res += mul(Get(s1,-dx,0), float4x4(0.0790239945054054,-0.3787851929664612,-0.0623104795813560,0.2629693746566772,0.0392430722713470,0.2498436570167542,0.0631836578249931,0.1617619246244431,-0.1689465939998627,-0.3284120261669159,0.0242010168731213,0.2107951492071152,-0.0057740816846490,-0.3178927600383759,-0.1314708441495895,0.2438935339450836));
res += mul(Get(s2,-dx,0), float4x4(-0.0302737820893526,-0.0716582760214806,-0.2452276200056076,-0.6748517751693726,-0.0090884156525135,-0.0196828395128250,-0.0728196129202843,-0.2368572801351547,0.0153117477893829,-0.0053212838247418,-0.0771444961428642,-0.2755048573017120,-0.2347337603569031,0.2235193848609924,0.5241863727569580,0.0220586042851210));
res += mul(Get(s3,-dx,0), float4x4(0.0164182726293802,-0.0823538303375244,-0.0097173051908612,0.0114602660760283,-0.0753869116306305,-0.1037833988666534,0.0287745911628008,0.0923578143119812,-0.2271886467933655,-0.1647354066371918,0.2383156716823578,-0.3117778301239014,-0.2580746412277222,-0.3225008547306061,0.1234457418322563,-0.7529336214065552));
res += mul(Get(s4,-dx,0), float4x4(-0.1624544858932495,-0.0084165548905730,-0.0787309706211090,-0.2368542999029160,0.2032992392778397,-0.1155087202787399,0.1070767864584923,0.1219029575586319,-0.3360732197761536,-0.0640618875622749,0.3592015504837036,0.0931010916829109,-0.2454833537340164,0.2945674061775208,0.0857046246528625,-0.0392120890319347));
res += mul(Get(s5,-dx,0), float4x4(0.0045140278525651,-0.1913751661777496,0.0528656542301178,0.0826132521033287,0.0413861535489559,-0.0103235673159361,-0.0539585612714291,0.0601274557411671,-0.1474509239196777,0.0752611160278320,-0.3619522154331207,-0.0027309949509799,-0.1138154640793800,-0.3439095616340637,-0.1232559829950333,0.3348017036914825));
res += mul(Get(s0,-dx,dy), float4x4(-0.0684870928525925,-0.2464414834976196,-0.1355961412191391,-0.0018607591046020,0.1014528274536133,0.0365577936172485,-0.0601289421319962,0.1259357929229736,0.0738127604126930,-0.0353576652705669,-0.3049621284008026,0.0399170964956284,-0.0521845743060112,-0.0738691687583923,-0.0278419498354197,0.0607130713760853));
res += mul(Get(s1,-dx,dy), float4x4(-0.0556217990815639,0.0139085073024035,0.0195046998560429,-0.0879502147436142,-0.1232953146100044,-0.0958958342671394,0.1068625301122665,-0.0027115016710013,-0.0111713539808989,-0.0802077576518059,-0.0730361640453339,-0.0675770342350006,-0.1739727109670639,-0.0204875972121954,-0.1101088598370552,-0.1427975445985794));
res += mul(Get(s2,-dx,dy), float4x4(-0.0258210264146328,-0.0081509966403246,-0.1569536775350571,0.0846983417868614,-0.0337488912045956,-0.0083081061020494,-0.0554405227303505,0.1179839968681335,-0.0191753823310137,0.0393184423446655,0.0403796397149563,-0.0529762320220470,-0.0778196081519127,-0.0008960554259829,0.1443812251091003,0.0703176632523537));
res += mul(Get(s3,-dx,dy), float4x4(-0.0128806522116065,-0.0012844944139943,-0.2060280144214630,0.1397258937358856,-0.0571275129914284,0.0757885724306107,0.0095879072323442,-0.0392898581922054,-0.0162958037108183,-0.0418952293694019,0.0989084020256996,-0.1611767560243607,0.0835714489221573,-0.0336851812899113,0.1249539032578468,-0.2150004804134369));
res += mul(Get(s4,-dx,dy), float4x4(-0.0320326797664165,-0.0968823879957199,0.1607284247875214,-0.0228913296014071,0.0774373337626457,0.1539024114608765,0.2210122942924500,0.0230186972767115,0.1304572224617004,0.3078651130199432,-0.0944857373833656,-0.1340796649456024,0.1450093537569046,0.0956151932477951,-0.0344365760684013,0.1763148009777069));
res += mul(Get(s5,-dx,dy), float4x4(0.0042987461201847,-0.1236713379621506,-0.1088375747203827,0.1394600123167038,0.1246425732970238,-0.1688129454851151,-0.0016541822114959,0.0409720093011856,-0.0469056591391563,-0.0831898450851440,-0.0907174721360207,-0.0028474461287260,0.2149964720010757,-0.2672162950038910,-0.2755649983882904,-0.0902801156044006));
res += mul(Get(s0,0,-dy), float4x4(0.0299899186939001,0.1026220545172691,-0.0585226193070412,-0.5192040801048279,0.2998053133487701,-0.0039005388971418,0.0131123745813966,0.0212474372237921,-0.2731865644454956,-0.0026319993194193,-0.0409967489540577,-0.1803696453571320,-0.1173085421323776,0.3522204458713531,0.6177604198455811,-0.3092440962791443));
res += mul(Get(s1,0,-dy), float4x4(0.4259679019451141,-0.2314497381448746,-0.1009931787848473,-0.3152244389057159,0.1802037358283997,0.1936590224504471,-0.0455176271498203,-0.0408968552947044,-0.4893079698085785,-0.3129676282405853,0.3442341387271881,-0.1170940324664116,-0.3585975468158722,0.1333604753017426,0.1503744870424271,0.2013123482465744));
res += mul(Get(s2,0,-dy), float4x4(-0.1022298112511635,-0.2243922352790833,0.1187867820262909,0.1052180081605911,-0.1966320723295212,0.0637318566441536,0.0746566802263260,-0.0152212521061301,0.4124160110950470,-0.1535637825727463,-0.1003790125250816,-0.0104859387502074,0.4552152752876282,0.0826148837804794,0.2724820673465729,0.1135902404785156));
res += mul(Get(s3,0,-dy), float4x4(-0.1269888728857040,-0.0429880172014236,0.1223840788006783,0.2166577875614166,0.1626163274049759,-0.0151468431577086,0.1566733270883560,-0.0964791849255562,-0.0691560208797455,-0.0937959477305412,0.5145764350891113,0.9626908898353577,-0.0198399126529694,-0.3399251997470856,0.0812350735068321,0.0497615374624729));
res += mul(Get(s4,0,-dy), float4x4(0.0382965356111526,-0.0976927801966667,0.0679274871945381,-0.0150709906592965,0.0095127588137984,-0.2089994996786118,0.0859573781490326,0.1697177588939667,0.2348643690347672,0.0866554304957390,-0.0493727847933769,0.0298368837684393,0.0245760045945644,0.0671267211437225,-0.2601464986801147,-0.1215963363647461));
res += mul(Get(s5,0,-dy), float4x4(0.0408163517713547,-0.5168836712837219,-0.0734917595982552,0.1560649573802948,-0.0475633703172207,-0.2314866930246353,-0.0352794155478477,-0.1693977415561676,0.2678427398204803,0.0296776611357927,0.2147441506385803,0.1411383599042892,0.3473640084266663,0.0552012026309967,0.0235010702162981,-0.2223951965570450));
res += mul(Get(s0,0,0), float4x4(-0.2887417674064636,-0.2819637060165405,0.1781808435916901,-1.0238960981369019,0.0634713917970657,-0.3853175938129425,-0.1098418384790421,-0.1065711230039597,0.0176179725676775,-0.4758472144603729,-0.1640118211507797,0.0828571096062660,-0.2584686279296875,-0.3732570409774780,-0.3343352973461151,-0.0851243138313293));
res += mul(Get(s1,0,0), float4x4(0.0384175553917885,0.7885562181472778,0.2741343975067139,-0.2357470989227295,0.6915177106857300,-0.2014679312705994,-0.1640545725822449,0.2631796896457672,0.7395618557929993,1.1990892887115479,-0.9351040720939636,-0.3331550359725952,0.4208807051181793,-0.0331726633012295,-0.0443998612463474,-0.0846498757600784));
res += mul(Get(s2,0,0), float4x4(0.4135693907737732,0.0445421375334263,0.0318914577364922,0.3869574666023254,-0.1348632872104645,-0.1566947251558304,0.0601691529154778,0.0204000547528267,-0.7010157704353333,-0.0895405337214470,0.5668379068374634,0.4651552438735962,-0.4272693693637848,0.2744866609573364,0.0388962067663670,0.4853198826313019));
res += mul(Get(s3,0,0), float4x4(0.2521845102310181,-0.2936915755271912,0.0955497100949287,0.4145674407482147,0.1357748508453369,0.0716019943356514,0.1267126351594925,0.2007049620151520,-0.2059752345085144,-0.0472928360104561,0.1050430312752724,-0.6169983744621277,0.5330017805099487,-0.4037501513957977,0.0316666960716248,-0.4539027512073517));
res += mul(Get(s4,0,0), float4x4(0.1606732010841370,-0.1612379550933838,0.0515086427330971,-0.6321981549263000,0.0588802993297577,-0.3218919932842255,-0.1850823163986206,-0.1875736415386200,-0.8942244052886963,0.0535620227456093,0.4491124451160431,0.2480542659759521,-0.9122466444969177,0.3109064102172852,0.1787986457347870,-0.7981466054916382));
res += mul(Get(s5,0,0), float4x4(0.1420333236455917,-0.1890216320753098,0.0201212763786316,0.1322398483753204,0.2652162611484528,-0.0606735236942768,0.0334186367690563,0.0542177334427834,-0.3046501874923706,0.0912842303514481,0.1842272430658340,-0.2642866671085358,-0.2550226747989655,0.1212472766637802,0.4783565402030945,-0.3407869935035706));
res += mul(Get(s0,0,dy), float4x4(0.0219171326607466,-0.0939399525523186,0.2483274042606354,-0.1434738487005234,-0.0159376971423626,-0.1785302311182022,0.0217103250324726,0.0607427470386028,0.1237118318676949,-0.0521193780004978,-0.0710968300700188,-0.0471503399312496,-0.0163674242794514,0.0332600250840187,-0.0282566323876381,0.1794554442167282));
res += mul(Get(s1,0,dy), float4x4(-0.0531229302287102,-0.4121774137020111,-0.3362737596035004,0.1286520510911942,-0.2732737362384796,0.1417732834815979,0.2969932556152344,0.0889635533094406,-0.0785541683435440,-0.2811526060104370,0.1350752711296082,0.0891588255763054,-0.1322204768657684,0.0522949881851673,0.4221931695938110,-0.4444405436515808));
res += mul(Get(s2,0,dy), float4x4(-0.1329193264245987,-0.1126585677266121,-0.0622275210916996,0.1984376162290573,0.0963211804628372,-0.0366882495582104,0.1709502488374710,0.0804318562150002,0.1843051612377167,-0.1252014935016632,-0.0282538682222366,0.0046726316213608,-0.1272792220115662,0.2580316662788391,-0.1493774354457855,0.2097621858119965));
res += mul(Get(s3,0,dy), float4x4(0.0162340756505728,0.2610586285591125,0.1616077274084091,0.1479097306728363,-0.0186266228556633,-0.1799493283033371,0.1856233626604080,0.1205331981182098,-0.1154143288731575,-0.0632092878222466,-0.0847721248865128,0.0350385159254074,-0.0159963741898537,-0.3253485560417175,0.1365779489278793,0.0759444609284401));
res += mul(Get(s4,0,dy), float4x4(-0.0975800603628159,0.0698492005467415,-0.1219361871480942,-0.4229811728000641,-0.1101930513978004,0.0517887547612190,0.0649879500269890,0.0983208641409874,0.1755414158105850,-0.0765654072165489,-0.2830391824245453,-0.4775848686695099,0.3072367608547211,0.3618804216384888,-0.1437053978443146,-0.1034355461597443));
res += mul(Get(s5,0,dy), float4x4(-0.0069468333385885,-0.3108946979045868,-0.0147174810990691,0.1011194065213203,-0.0202915705740452,0.0138223655521870,-0.0656614452600479,0.0884561613202095,-0.0110971052199602,-0.0092861829325557,-0.0956731066107750,-0.1910262405872345,-0.2972494959831238,0.0162891373038292,-0.1094152331352234,0.0097246514633298));
res += mul(Get(s0,dx,-dy), float4x4(-0.0453596264123917,0.1051450297236443,-0.0275091677904129,-0.0530633330345154,0.0417993441224098,-0.1648751497268677,-0.0672877281904221,0.0252572540193796,0.0211217813193798,0.0011440545786172,0.1295103132724762,0.1007085740566254,0.4745173156261444,0.1477247774600983,-0.2347965240478516,-1.1498529911041260));
res += mul(Get(s1,dx,-dy), float4x4(0.1637285947799683,-0.1301451027393341,-0.1688426434993744,0.0892287418246269,0.1547092199325562,-0.1173468157649040,0.1152626127004623,0.0602387338876724,-0.0471567399799824,0.0066128498874605,-0.0843618735671043,0.0199327133595943,-0.2125678062438965,-0.1621702015399933,0.1145845875144005,0.0555739700794220));
res += mul(Get(s2,dx,-dy), float4x4(0.0107019348070025,0.0701358690857887,0.0887338444590569,-0.1246526241302490,0.0341152064502239,0.0974026918411255,-0.0167990513145924,-0.0159043129533529,0.0113704223185778,0.1546430289745331,-0.0819546505808830,0.2220820486545563,0.0493644811213017,0.2018927633762360,0.1051613241434097,0.1543911099433899));
res += mul(Get(s3,dx,-dy), float4x4(-0.1078906133770943,-0.0611304938793182,0.0205252580344677,0.1503977030515671,-0.0426371507346630,-0.0485574007034302,-0.0005971199716441,-0.0741380676627159,-0.2473898231983185,0.1306944042444229,0.3666246533393860,0.4019155800342560,0.1826533377170563,-0.2747657895088196,0.1619307696819305,-0.0573847442865372));
res += mul(Get(s4,dx,-dy), float4x4(-0.0628959909081459,0.0406046025454998,0.0740312784910202,-0.1042796373367310,-0.1701410710811615,-0.1074713394045830,-0.2047734558582306,0.1048389524221420,-0.0317307673394680,-0.0082938605919480,-0.0593368001282215,0.0115215787664056,0.0245444066822529,0.1884248256683350,-0.1830840259790421,0.0046879863366485));
res += mul(Get(s5,dx,-dy), float4x4(-0.0670935735106468,-0.2249302119016647,-0.2035323828458786,0.0332535244524479,0.0041956682689488,0.0215656701475382,0.0219494067132473,0.0797380283474922,-0.1650535762310028,-0.0196697302162647,-0.1777877807617188,-0.0022872039116919,0.4702806174755096,0.3327512443065643,-0.3069054782390594,0.1626865267753601));
res += mul(Get(s0,dx,0), float4x4(0.0266586355865002,-0.1708698421716690,0.0919544324278831,-0.2151105999946594,0.0096806539222598,-0.2027307003736496,-0.2192140370607376,0.1764940321445465,0.0506110601127148,-0.0890937969088554,0.0563526898622513,0.0285087395459414,-0.4636338055133820,-0.3402335643768311,-0.3677769303321838,0.1878572851419449));
res += mul(Get(s1,dx,0), float4x4(-0.1803223341703415,0.0658942162990570,-0.1439448595046997,0.1166539266705513,0.1540318429470062,0.0151157053187490,0.0512020029127598,-0.0647896230220795,0.0760089755058289,-0.2587547302246094,0.2879206836223602,0.0222616661339998,0.1720389574766159,0.0922600924968719,-0.1339221000671387,0.1832928359508514));
res += mul(Get(s2,dx,0), float4x4(0.0174781400710344,0.1613829135894775,0.0073483265005052,0.0152885317802429,0.0982298627495766,-0.0954416543245316,-0.2397595942020416,-0.0508568659424782,-0.0687538683414459,0.0587767064571381,0.1021514981985092,0.1655836403369904,0.0226359833031893,0.1474412083625793,0.2022892087697983,0.0717699229717255));
res += mul(Get(s3,dx,0), float4x4(0.1106135919690132,-0.2451749593019485,-0.1718942970037460,-0.2009877711534500,0.0634745582938194,-0.0359730422496796,-0.0655630305409431,0.0250459760427475,-0.0173366330564022,-0.0778785571455956,0.1801992952823639,0.1222612857818604,-0.0940078645944595,-0.1129267215728760,-0.0919736325740814,0.2245632261037827));
res += mul(Get(s4,dx,0), float4x4(0.1146642714738846,0.0740945860743523,0.1535597443580627,-0.3294127881526947,-0.0605124048888683,0.2010382562875748,-0.0166333522647619,0.1641207188367844,0.0662795603275299,-0.1242873147130013,-0.0523536615073681,0.1498026102781296,-0.1166605502367020,0.1641034036874771,0.0386476106941700,-0.2555153965950012));
res += mul(Get(s5,dx,0), float4x4(0.0385882928967476,-0.1305667310953140,-0.0441703051328659,0.1162048578262329,0.0634712204337120,0.0714865848422050,0.1309518069028854,0.0212994627654552,0.1317128092050552,-0.1839500069618225,-0.0904289707541466,0.0293564293533564,-0.1339447200298309,-0.2502540051937103,0.8255677819252014,1.5567166805267334));
res += mul(Get(s0,dx,dy), float4x4(0.0310341883450747,-0.0731762945652008,0.0971492007374763,0.0728870108723640,0.0271573644131422,-0.0983085036277771,-0.0351827442646027,-0.1482502371072769,-0.0322658680379391,0.0067342552356422,0.0887583494186401,0.0250303111970425,0.0733697488903999,0.2772664725780487,0.0732822194695473,-0.0208240244537592));
res += mul(Get(s1,dx,dy), float4x4(-0.0108223129063845,0.2499583363533020,0.0330780148506165,0.0356643460690975,0.0785622596740723,-0.0134646156802773,-0.0267610661685467,0.0614677667617798,-0.1208095923066139,0.1241506710648537,-0.0314341001212597,0.0773859918117523,-0.1744993031024933,0.0090067768469453,-0.1679972559213638,-0.1113481372594833));
res += mul(Get(s2,dx,dy), float4x4(0.0340314507484436,0.0454516522586346,0.1992174535989761,-0.0074168886058033,-0.0059217857196927,-0.0439525060355663,-0.0058252126909792,-0.1300478279590607,-0.0675989240407944,0.0118364216759801,-0.0192542523145676,-0.0524513162672520,-0.0071435151621699,0.1067804545164108,-0.0453757196664810,0.3334640264511108));
res += mul(Get(s3,dx,dy), float4x4(0.0526496358215809,-0.0402380861341953,-0.2067347764968872,0.0943098068237305,-0.0082927960902452,0.0071798227727413,-0.0905389636754990,-0.2415442168712616,0.1657880693674088,0.3119988441467285,0.1260515451431274,-0.1061870604753494,-0.0002584027824923,0.1781191676855087,-0.0899051576852798,-0.1500120609998703));
res += mul(Get(s4,dx,dy), float4x4(-0.0560912527143955,0.0678462088108063,0.0391822122037411,-0.1020643115043640,0.0305916313081980,0.0636706650257111,-0.1626104712486267,-0.1271682381629944,0.0364019349217415,0.2028776705265045,-0.0602676086127758,-0.0615346729755402,0.0846568122506142,0.2268994599580765,0.0785392150282860,-0.0206100232899189));
res += mul(Get(s5,dx,dy), float4x4(0.0037254116032273,-0.0051843086257577,-0.0171673130244017,0.0862861648201942,0.0423985160887241,0.2867164015769958,0.1680814921855927,-0.0842732787132263,0.0660247504711151,0.1539352089166641,0.1228553727269173,0.0678171440958977,-0.0769473314285278,0.3667362928390503,0.2266151160001755,0.2228179872035980));
res = max(float4(0, 0, 0, 0), res) + float4(-0.2986733913421631,0.5115529298782349,0.8964806199073792,-0.0294622238725424) * min(float4(0, 0, 0, 0), res);
return res;
}
