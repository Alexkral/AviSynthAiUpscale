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
float4 res = float4(0.034941516816616,-0.092945262789726,-0.092702068388462,0.010546840727329);
res += mul(Get(s0,-dx,-dy), float4x4(-0.245873972773552,0.078338041901588,-0.016678247600794,0.004644244909286,-0.032958678901196,-0.052061207592487,-0.011878390796483,-0.009178510867059,0.089502014219761,0.102286428213120,0.019576532766223,-0.048934347927570,0.092743374407291,-0.042427204549313,0.046784423291683,0.034262444823980));
res += mul(Get(s0,-dx,0), float4x4(-0.135925412178040,0.238043174147606,-0.031150477007031,0.086004041135311,0.088484734296799,-0.222744658589363,-0.076615899801254,-0.075983360409737,0.434406667947769,-0.054427005350590,0.086329586803913,0.038435690104961,0.031205970793962,-0.018227897584438,-0.000229476951063,0.083420388400555));
res += mul(Get(s0,-dx,dy), float4x4(0.041884697973728,-0.207715168595314,0.053694024682045,-0.033841632306576,0.254817992448807,-0.068018563091755,0.008846262469888,-0.030256427824497,0.239311143755913,-0.160947486758232,0.022290978580713,-0.014624250121415,0.037810571491718,0.036436792463064,-0.038377806544304,0.008112432435155));
res += mul(Get(s0,0,-dy), float4x4(0.204165503382683,0.114577926695347,0.051828920841217,0.019020378589630,-0.034053016453981,-0.120180241763592,0.190411195158958,-0.076094403862953,0.107736967504025,0.054776906967163,-0.075666829943657,-0.021685292944312,-0.236998051404953,0.119141072034836,-0.002057076431811,-0.039318650960922));
res += mul(Get(s0,0,0), float4x4(0.275416672229767,0.002186562633142,-0.115371219813824,-0.162238150835037,-0.074595086276531,0.064638763666153,-0.273702114820480,0.045861151069403,0.062062151730061,-0.100948639214039,-0.102535583078861,-0.040998872369528,-0.342559248209000,-0.792946100234985,0.047855511307716,-0.122466914355755));
res += mul(Get(s0,0,dy), float4x4(-0.089182212948799,0.217728123068810,-0.065519332885742,0.027322243899107,-0.377714782953262,-0.180316627025604,-0.345686227083206,-0.087591342628002,-0.095143705606461,-0.013249503448606,0.045649003237486,0.013844205066562,-0.012471348047256,-0.014511928893626,-0.215780332684517,-0.043074935674667));
res += mul(Get(s0,dx,-dy), float4x4(0.254321902990341,-0.003529493696988,-0.011959406547248,-0.118249282240868,0.015583155676723,0.162878856062889,0.038660805672407,-0.027730004861951,0.077163353562355,-0.135453760623932,0.076940253376961,-0.044920288026333,0.034844219684601,0.089825101196766,-0.001087984419428,0.090445421636105));
res += mul(Get(s0,dx,0), float4x4(0.284412920475006,-0.036130964756012,-0.108203262090683,0.001727444468997,-0.109463810920715,-0.022753007709980,-0.037040989845991,0.040892571210861,-0.128671392798424,0.199102386832237,0.007084043230861,0.102834291756153,-0.057257093489170,0.198407188057899,-0.024206694215536,0.180509641766548));
res += mul(Get(s0,dx,dy), float4x4(0.090281210839748,0.175540044903755,-0.069827489554882,-0.015599584206939,0.070459306240082,-0.069205611944199,-0.048211023211479,-0.002030402887613,0.061386778950691,0.074248686432838,0.024330263957381,0.018392207100987,-0.047465115785599,-0.041926696896553,0.236333608627319,0.111779652535915));
res += mul(Get(s1,-dx,-dy), float4x4(-0.095168627798557,-0.091309495270252,-0.080669611692429,0.033792506903410,0.094693675637245,-0.021405115723610,0.007066748104990,0.131697252392769,-0.178574830293655,0.091020792722702,0.029118943959475,-0.032604988664389,0.035525996237993,-0.056790415197611,-0.020886883139610,0.018253875896335));
res += mul(Get(s1,-dx,0), float4x4(0.005810822360218,-0.098414435982704,-0.050003223121166,-0.073953106999397,0.126932039856911,-0.252868145704269,-0.022012773901224,-0.129151448607445,0.023742467164993,0.151688888669014,0.160241752862930,-0.020291643217206,0.009416717104614,-0.256627172231674,0.009300017729402,-0.090743087232113));
res += mul(Get(s1,-dx,dy), float4x4(0.002408830448985,-0.011663920246065,0.279856532812119,-0.107567079365253,0.023489376530051,-0.016753284260631,-0.108109228312969,0.010360790416598,-0.031970728188753,0.200505912303925,-0.103719159960747,-0.099055133759975,-0.054973948746920,0.113035671412945,-0.052331164479256,0.003020062576979));
res += mul(Get(s1,0,-dy), float4x4(-0.230104044079781,-0.146991148591042,0.128595307469368,-0.161907613277435,0.094682045280933,-0.139106675982475,0.095927610993385,-0.011774585582316,0.112155996263027,0.146421507000923,-0.075600095093250,0.155510604381561,-0.255827784538269,0.051769021898508,0.027626086026430,0.004396185278893));
res += mul(Get(s1,0,0), float4x4(0.004601310007274,-0.113299392163754,-0.457361012697220,-0.034784704446793,0.208378061652184,-0.165059611201286,-0.182997837662697,-0.021740701049566,0.195393040776253,0.332960516214371,0.138682588934898,0.100193463265896,-0.625211179256439,-0.360712438821793,0.138340294361115,0.051545280963182));
res += mul(Get(s1,0,dy), float4x4(-0.028734819963574,-0.270162791013718,-0.029369868338108,-0.208515107631683,0.186963617801666,-0.205543369054794,-0.193908408284187,-0.027723630890250,-0.024344390258193,0.037616256624460,-0.088020689785480,-0.030532283708453,-0.021701477468014,-0.388144701719284,-0.249771744012833,-0.069412276148796));
res += mul(Get(s1,dx,-dy), float4x4(-0.168489933013916,-0.003872991073877,0.059322994202375,-0.031954888254404,-0.061257224529982,-0.010364750400186,0.076259665191174,0.060292672365904,-0.079300880432129,-0.072901517152786,0.014431030489504,0.008396624587476,-0.211456730961800,0.102590776979923,-0.007122602779418,0.013667200691998));
res += mul(Get(s1,dx,0), float4x4(-0.101790808141232,0.034901238977909,0.064915180206299,0.045413564890623,-0.201035439968109,0.110190749168396,-0.120413780212402,0.155668526887894,-0.265710711479187,0.047556374222040,0.085239253938198,0.074115723371506,-0.308735817670822,0.109843082726002,-0.036509755998850,0.020517494529486));
res += mul(Get(s1,dx,dy), float4x4(0.017952337861061,0.065542183816433,-0.100623011589050,0.016563016921282,-0.062749959528446,-0.342278927564621,-0.002791970735416,-0.171211838722229,-0.022111250087619,0.105968043208122,0.077683307230473,0.063329160213470,-0.054665524512529,-0.236447930335999,0.030552949756384,0.004725649952888));
res += mul(Get(s2,-dx,-dy), float4x4(0.104951493442059,-0.061286307871342,-0.021822886541486,-0.087335728108883,0.137082919478416,0.042777527123690,0.005615133326501,0.039456054568291,-0.265257388353348,-0.034368723630905,0.059870216995478,0.017841074615717,-0.005725618917495,-0.001440264633857,-0.056895144283772,-0.045541688799858));
res += mul(Get(s2,-dx,0), float4x4(-0.057229336351156,-0.049322266131639,0.018384940922260,0.033626955002546,0.057704463601112,-0.011269925162196,0.024449197575450,0.199355527758598,-0.177470386028290,0.064418926835060,-0.161173567175865,0.032033108174801,0.167606562376022,-0.470980197191238,0.089163385331631,-0.183590307831764));
res += mul(Get(s2,-dx,dy), float4x4(0.025861380621791,-0.262352526187897,-0.122249111533165,-0.049964420497417,-0.013008335605264,-0.070403449237347,-0.078113570809364,-0.026550438255072,0.057143159210682,-0.308532893657684,0.135776773095131,-0.055732056498528,-0.014303526841104,0.149795562028885,-0.174976512789726,0.016778897494078));
res += mul(Get(s2,0,-dy), float4x4(-0.146870911121368,-0.095895029604435,0.042503867298365,-0.008570029400289,0.198873490095139,-0.032072547823191,-0.082192949950695,0.020730871707201,0.113053724169731,0.000663694459945,0.025985455140471,0.155396938323975,-0.171871617436409,-0.013360149227083,-0.141761124134064,0.121662802994251));
res += mul(Get(s2,0,0), float4x4(-0.343825131654739,0.172599852085114,0.092759653925896,0.055533770471811,-0.000769613485318,0.114525534212589,0.552831232547760,-0.255965828895569,0.089790396392345,-0.072786040604115,0.059985827654600,-0.181501805782318,-0.424926429986954,-0.083254627883434,-0.148192927241325,-0.004092989955097));
res += mul(Get(s2,0,dy), float4x4(-0.103572472929955,-0.407691329717636,-0.288914829492569,-0.066576108336449,-0.025413021445274,-0.032017800956964,-0.182667344808578,0.012890181504190,-0.037411078810692,0.114748492836952,0.008438133634627,0.081716783344746,0.023429078981280,-0.224976733326912,-0.259210884571075,-0.118954524397850));
res += mul(Get(s2,dx,-dy), float4x4(0.112300582230091,0.020704744383693,0.055608630180359,-0.008671687915921,-0.023351591080427,0.021289266645908,-0.083884201943874,0.119307644665241,-0.151814416050911,-0.035375926643610,-0.005043899640441,0.115866854786873,-0.147428482770920,-0.054587528109550,-0.028624391183257,-0.037050500512123));
res += mul(Get(s2,dx,0), float4x4(0.291641980409622,-0.139875501394272,0.001491167815402,-0.129696428775787,-0.062244869768620,-0.038967490196228,0.145422980189323,-0.005144870840013,-0.043742690235376,-0.047710370272398,0.172148227691650,-0.077506870031357,-0.100418053567410,-0.095418520271778,-0.021359844133258,-0.015817750245333));
res += mul(Get(s2,dx,dy), float4x4(0.107068501412868,-0.006537409964949,-0.106359682977200,-0.069276474416256,-0.035259198397398,0.108510449528694,0.127220049500465,0.030726995319128,0.093809947371483,0.027834512293339,-0.010222364217043,0.220388337969780,0.031824085861444,-0.017307568341494,-0.017207689583302,-0.065557621419430));
res += mul(Get(s3,-dx,-dy), float4x4(0.081605419516563,-0.021443320438266,0.007581846322864,0.042482972145081,0.028936984017491,0.116773135960102,-0.016223575919867,0.021907500922680,-0.136289671063423,0.049967661499977,-0.065168090164661,0.051474660634995,0.162948206067085,0.092768654227257,0.097440898418427,-0.000570756092202));
res += mul(Get(s3,-dx,0), float4x4(-0.028979597613215,-0.115897111594677,0.057360585778952,0.187625065445900,0.011745030991733,0.079148583114147,0.055080916732550,0.045512553304434,0.071586623787880,0.286521434783936,0.064451031386852,0.247611209750175,0.398584038019180,-0.104809962213039,-0.132724583148956,-0.040602978318930));
res += mul(Get(s3,-dx,dy), float4x4(0.036301705986261,0.129909977316856,-0.063319317996502,-0.012766457162797,0.020493078976870,-0.085681259632111,-0.018455691635609,-0.043833762407303,0.041398879140615,-0.325560390949249,0.065226867794991,0.021443566307425,-0.040252659469843,0.266912817955017,-0.089780151844025,0.007681103423238));
res += mul(Get(s3,0,-dy), float4x4(0.076238378882408,-0.031951110810041,-0.082791857421398,0.076780602335930,0.043074809014797,-0.074851408600807,0.000341646693414,-0.025308562442660,0.302734613418579,0.008442679420114,-0.043757643550634,0.182010531425476,-0.206067860126495,-0.043801192194223,0.137486696243286,-0.049257293343544));
res += mul(Get(s3,0,0), float4x4(0.035911444574594,-0.209652841091156,0.024165624752641,-0.592275559902191,-0.708488523960114,0.037774261087179,0.519587039947510,-0.047551482915878,0.387969881296158,-0.111478433012962,0.256113946437836,-0.472335517406464,-0.452960371971130,0.210408806800842,-0.244938910007477,-0.024228580296040));
res += mul(Get(s3,0,dy), float4x4(0.020858481526375,-0.013934478163719,0.320047408342361,0.010915121994913,-0.350697249174118,-0.284769117832184,-0.804033160209656,0.134269669651985,0.009044131264091,0.407230049371719,0.296700328588486,0.340916991233826,-0.135493993759155,-0.066788569092751,-0.256914019584656,-0.098367497324944));
res += mul(Get(s3,dx,-dy), float4x4(-0.178472816944122,0.095425456762314,-0.091507188975811,0.033988002687693,0.061400871723890,-0.019747905433178,-0.010659203864634,-0.005454843863845,0.129881843924522,-0.055500917136669,-0.046751663088799,-0.034670393913984,0.029419275000691,0.137287050485611,0.004066629800946,0.013377696275711));
res += mul(Get(s3,dx,0), float4x4(-0.074194654822350,-0.063260167837143,-0.053234681487083,0.304500550031662,-0.363504767417908,0.011032185517251,0.111391983926296,0.028382891789079,0.172953784465790,0.029609870165586,-0.068495258688927,0.240690335631371,0.139035612344742,-0.053506337106228,-0.032762940973043,-0.123783789575100));
res += mul(Get(s3,dx,dy), float4x4(0.076421208679676,-0.075616411864758,0.130167528986931,0.026404969394207,-0.039184242486954,-0.050578638911247,-0.143187373876572,0.023391393944621,-0.091783769428730,0.075188033282757,0.066517047584057,0.095102757215500,0.083304986357689,0.114936403930187,-0.093732737004757,-0.060457941144705));
res += mul(Get(s4,-dx,-dy), float4x4(0.131684318184853,-0.062793530523777,-0.017472762614489,-0.175217986106873,0.122982405126095,0.029798833653331,-0.075634740293026,0.085277579724789,0.084413543343544,-0.030994430184364,-0.047325335443020,0.065187662839890,0.053841397166252,-0.035558477044106,-0.032146565616131,0.040636673569679));
res += mul(Get(s4,-dx,0), float4x4(0.069274358451366,0.042748060077429,-0.088851228356361,-0.139432311058044,-0.056675549596548,-0.318481564521790,0.194967076182365,-0.029295321553946,-0.002039843006060,-0.320721864700317,0.221801087260246,-0.032227657735348,-0.135384485125542,-0.018816066905856,-0.070907264947891,-0.055886413902044));
res += mul(Get(s4,-dx,dy), float4x4(-0.028026008978486,0.227925091981888,0.007377720903605,0.022509070113301,0.030387584120035,0.017683753743768,0.103244863450527,0.073034144937992,0.049946416169405,-0.167319372296333,0.217849075794220,0.154977440834045,-0.026477681472898,-0.248683914542198,0.056644853204489,0.035103484988213));
res += mul(Get(s4,0,-dy), float4x4(-0.035538814961910,-0.005174660589546,0.042320884764194,-0.556079328060150,-0.204441383481026,0.024368803948164,-0.013492695987225,0.120676569640636,-0.234059169888496,-0.041574101895094,-0.152276992797852,0.313795983791351,-0.142285183072090,-0.096014223992825,0.145460784435272,-0.086054354906082));
res += mul(Get(s4,0,0), float4x4(-0.209278941154480,0.191520273685455,-0.591257035732269,0.553691506385803,-0.169705256819725,0.172808364033699,-0.036260437220335,0.005080109462142,-0.165353566408157,-0.222933620214462,0.382839500904083,-0.081829011440277,-0.392044216394424,0.270037382841110,0.309782207012177,0.014214561320841));
res += mul(Get(s4,0,dy), float4x4(0.089507214725018,-0.094544850289822,-0.082210406661034,-0.459607541561127,0.055203668773174,-0.401221990585327,-0.127893507480621,-0.011708495207131,-0.059628795832396,-0.302083224058151,0.327125430107117,0.139105051755905,0.116050891578197,0.025762820616364,-0.054608050733805,-0.015648936852813));
res += mul(Get(s4,dx,-dy), float4x4(-0.106779903173447,0.018149316310883,0.007313930895180,-0.105101235210896,0.055889017879963,-0.162925586104393,0.077280715107918,-0.039478749036789,0.015652181580663,-0.034726396203041,-0.079525552690029,-0.116957388818264,0.118222653865814,0.189178243279457,-0.026714757084846,-0.032628692686558));
res += mul(Get(s4,dx,0), float4x4(-0.052680466324091,-0.144308865070343,-0.168895795941353,-0.036001350730658,-0.170283958315849,-0.018167953938246,0.042007796466351,0.020412696525455,0.092943057417870,-0.226340696215630,0.050266996026039,-0.000003153865691,0.265142083168030,-0.046984471380711,0.174021556973457,-0.051850814372301));
res += mul(Get(s4,dx,dy), float4x4(0.043661978095770,-0.017220115289092,0.134833529591560,-0.150995269417763,-0.103604197502136,-0.045533202588558,-0.136119142174721,0.032734658569098,-0.030486535280943,-0.102673873305321,0.045973923057318,0.014787950553000,0.013675463385880,0.029475543648005,0.019817920401692,0.027502838522196));
res += mul(Get(s5,-dx,-dy), float4x4(-0.113962784409523,-0.031488291919231,-0.029269302263856,-0.005478093400598,0.178094178438187,0.030060073360801,-0.003447605762631,-0.098911233246326,-0.145928785204887,0.040814545005560,0.043339174240828,0.011583806946874,-0.030982360243797,-0.101509429514408,0.052201587706804,0.073192253708839));
res += mul(Get(s5,-dx,0), float4x4(-0.025641163811088,0.075798302888870,-0.220611348748207,-0.020282512530684,-0.209009096026421,0.217492178082466,0.163011878728867,0.088578432798386,0.097697198390961,-0.268568575382233,-0.086687654256821,0.025047002360225,-0.338945925235748,0.065061777830124,-0.047400508075953,0.063167266547680));
res += mul(Get(s5,-dx,dy), float4x4(-0.092593006789684,-0.188353568315506,0.089836612343788,0.034555874764919,-0.019029676914215,0.103493429720402,0.035777244716883,-0.093704231083393,0.095645040273666,0.100895747542381,-0.478726118803024,-0.062190204858780,-0.018279071897268,-0.049669396132231,-0.134857565164566,0.068388052284718));
res += mul(Get(s5,0,-dy), float4x4(0.021645365282893,0.197349175810814,0.023333072662354,-0.007636856287718,-0.163523167371750,-0.001487209694460,-0.070549882948399,0.019254844635725,0.072189569473267,-0.126538053154945,-0.055870976299047,-0.090441212058067,-0.379506200551987,-0.049901884049177,0.005941927433014,0.135397776961327));
res += mul(Get(s5,0,0), float4x4(0.054773665964603,-0.577973365783691,-0.154624134302139,0.014016893692315,-0.381652027368546,0.184631377458572,-0.005861268378794,-0.311438709497452,-0.042265653610229,-0.156772866845131,-0.289642393589020,-0.044712889939547,0.157606810331345,-0.158462852239609,-0.081768952310085,0.014532147906721));
res += mul(Get(s5,0,dy), float4x4(-0.000143587138155,-0.100230418145657,0.180586308240891,-0.125546842813492,0.010266248136759,0.102302484214306,-0.183136239647865,0.214154973626137,-0.173912346363068,-0.111223876476288,-0.808609664440155,-0.001943470444530,0.075405940413475,-0.054602999240160,-0.253162026405334,-0.027914617210627));
res += mul(Get(s5,dx,-dy), float4x4(0.077296420931816,-0.111400477588177,-0.002557768020779,-0.085747309029102,0.041104178875685,-0.017836770042777,0.021667294204235,0.002434106077999,0.017404859885573,0.100068598985672,-0.016641488298774,0.024170776829123,-0.104798033833504,-0.001209154259413,0.103769533336163,-0.070746183395386));
res += mul(Get(s5,dx,0), float4x4(-0.486924171447754,0.237376153469086,-0.008133185096085,0.114296324551105,0.074519678950310,-0.024233516305685,-0.010767291299999,0.152179434895515,0.086650684475899,-0.055701825767756,-0.048224799335003,0.005394360516220,-0.077529408037663,-0.064891807734966,-0.018757466226816,-0.091554254293442));
res += mul(Get(s5,dx,dy), float4x4(-0.164848744869232,0.057068359106779,-0.064016729593277,-0.007711664307863,0.015993522480130,0.128630593419075,-0.072948522865772,0.039432670921087,-0.020956741645932,0.039475269615650,-0.043517179787159,-0.011597560718656,-0.028500884771347,-0.233077466487885,-0.080478899180889,-0.036973193287849));
res = max(float4(0, 0, 0, 0), res) + float4(-0.016212943941355,0.003097210545093,-0.002494462532923,0.842351615428925) * min(float4(0, 0, 0, 0), res);
return res;
}
