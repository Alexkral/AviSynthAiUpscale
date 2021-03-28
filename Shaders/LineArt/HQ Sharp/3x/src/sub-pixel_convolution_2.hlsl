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
float3 res = float3(-0.000227572672884,0.000763714953791,-0.000788924808148);
res += mul(Get(s0,-dx,-dy), float4x3(-0.002395732328296,0.001530599314719,0.001148876384832,-0.003153776517138,-0.000781371723861,0.000536445062608,-0.005613618064672,0.003043073695153,0.001013101078570,-0.002552638296038,-0.001463646884076,-0.001444446388632));
res += mul(Get(s0,-dx,0), float4x3(0.006432265974581,0.001718124956824,-0.003134978935122,-0.007427553180605,-0.005254403222352,-0.003430019831285,0.008643895387650,0.002968003507704,-0.007602264638990,-0.005915271118283,-0.005160267930478,-0.004489047452807));
res += mul(Get(s0,-dx,dy), float4x3(-0.001531048095785,0.000045194770792,0.005781917832792,-0.000509371166117,-0.002288234420121,-0.005978429224342,0.000235317478655,0.001318313181400,0.004415408708155,0.001179538434371,-0.000127994004288,-0.001920564565808));
res += mul(Get(s0,0,-dy), float4x3(0.004813303705305,0.010827634483576,0.006789343431592,-0.000313299096888,-0.006075028330088,-0.003664430230856,0.021663649007678,0.005286249332130,-0.004288778174669,0.011077801696956,0.005437688436359,0.000032614785596));
res += mul(Get(s0,0,0), float4x3(-0.024200359359384,-0.030996304005384,-0.012277904897928,0.013809728436172,0.023162437602878,0.014896047301590,0.006821574643254,-0.034876000136137,-0.015748189762235,0.014868943952024,0.018805718049407,0.018837075680494));
res += mul(Get(s0,0,dy), float4x3(0.006607382092625,0.008965747430921,-0.000684211845510,-0.002388803754002,-0.004457355942577,0.000625887420028,-0.003660877933726,-0.001694443984888,0.012294925749302,0.000371173489839,0.001800303114578,0.007032049819827));
res += mul(Get(s0,dx,-dy), float4x3(0.003858597949147,-0.001814795890823,-0.003132968908176,-0.002959766658023,-0.002581454580650,-0.001261722529307,0.002592053264380,0.001731589785777,0.001367749413475,0.002432010602206,0.001239127479494,-0.000755020591896));
res += mul(Get(s0,dx,0), float4x3(0.002565573900938,0.005048722960055,0.007691966835409,0.001784528722055,0.002929846756160,-0.000845040311106,-0.011526895686984,-0.000863193301484,0.010916990227997,0.008311871439219,0.008764729835093,0.007790156174451));
res += mul(Get(s0,dx,dy), float4x3(0.001643047435209,0.002619758248329,0.002187736565247,-0.000414010632085,-0.001973211532459,-0.001062299474142,-0.000378598546376,0.001799883204512,0.000428804516559,-0.000425925973104,0.001708361553028,0.003806395921856));
res += mul(Get(s1,-dx,-dy), float4x3(0.002147176768631,-0.000817202497274,-0.000038817743189,0.009609640575945,0.001007004175335,-0.000116005343443,0.000705180747900,-0.000542772817425,-0.001956887776032,-0.003963902126998,0.004310231655836,-0.000139708063216));
res += mul(Get(s1,-dx,0), float4x3(-0.001495342119597,-0.000582519453019,0.003105461364612,-0.009424113668501,-0.002653924282640,0.013137472793460,0.006130917929113,-0.002286191098392,-0.005836630705744,0.006783475168049,-0.000278795050690,-0.006885793525726));
res += mul(Get(s1,-dx,dy), float4x3(0.000090085763077,-0.000282512832200,0.002066612709314,0.000398267293349,0.001654675230384,-0.001619826885872,0.000287492497591,0.001141599612311,0.003419974120334,0.000118865413242,-0.001547074527480,-0.003290753113106));
res += mul(Get(s1,0,-dy), float4x3(-0.004799484740943,-0.001939572626725,-0.000664851162583,0.002998592797667,0.010264954529703,0.002501358045265,-0.015259023755789,-0.002871365984902,0.003339381888509,0.009525193832815,-0.005616113543510,0.000688560074195));
res += mul(Get(s1,0,0), float4x3(-0.037536267191172,0.008346186019480,0.012300535105169,0.009476775303483,-0.025036720559001,-0.028375342488289,0.005361654795706,0.030331004410982,0.004584163893014,0.028662052005529,-0.039968881756067,0.019325274974108));
res += mul(Get(s1,0,dy), float4x3(-0.007351257372648,0.010876149870455,0.017714777961373,-0.004080875311047,-0.002450441941619,0.012223789468408,0.000503574265167,-0.005525260698050,-0.013033360242844,0.000896010373253,-0.008766298182309,0.005447332747281));
res += mul(Get(s1,dx,-dy), float4x3(-0.001101573347114,-0.000949688430410,-0.000452199601568,-0.000965710962191,-0.002076826291159,-0.002315993886441,0.001088216784410,0.000139063922688,0.000434785732068,-0.001925721764565,0.000750665902160,-0.000411372020608));
res += mul(Get(s1,dx,0), float4x3(-0.007753666955978,0.006511349231005,0.003291178960353,-0.001158489380032,0.005574179813266,0.002184492768720,-0.006283073686063,-0.002061459934339,0.003825609572232,-0.003857983974740,-0.001838059164584,0.001717302831821));
res += mul(Get(s1,dx,dy), float4x3(0.002241553971544,0.001487159170210,-0.002626172732562,0.003195799654350,0.003187348134816,-0.001577039365657,-0.002552526304498,-0.001984146190807,-0.000995434005745,0.001772463321686,0.002914659213275,-0.004087603650987));
res += mul(Get(s2,-dx,-dy), float4x3(0.001543672638945,0.000173902910319,-0.001314977300353,-0.001848043291830,-0.000695046910550,0.001995036145672,0.001398548833095,0.001836299081333,0.000864566769451,-0.003915014676750,0.001176206627861,0.003009827341884));
res += mul(Get(s2,-dx,0), float4x3(-0.007294828072190,-0.004978949204087,-0.000000889408284,-0.001019259914756,0.003783779218793,0.002764794975519,-0.013563063926995,-0.011977213434875,-0.005067299120128,-0.003464901354164,-0.005426787771285,-0.007228382863104));
res += mul(Get(s2,-dx,dy), float4x3(0.000609631475527,-0.001211510272697,-0.005306910723448,-0.000267882249318,-0.000308399903588,0.000751379586291,0.000466417870484,-0.001580913318321,-0.007427118718624,0.000434396468336,-0.000695512047969,-0.001479760394432));
res += mul(Get(s2,0,-dy), float4x3(0.013392973691225,0.006229192018509,-0.001435554586351,-0.003041019430384,0.010882282629609,0.002357855904847,0.000026214953323,-0.000103588747152,-0.002953256014735,-0.022013988345861,-0.009962605312467,0.000982025172561));
res += mul(Get(s2,0,0), float4x3(0.000235941959545,0.008903615176678,0.017086166888475,0.016361169517040,0.018742252141237,-0.039536859840155,-0.046276114881039,-0.034700974822044,-0.012009076774120,0.023004241287708,0.005017660092562,-0.017205361276865));
res += mul(Get(s2,0,dy), float4x3(0.001278797863051,0.000026223766326,-0.000462397991214,-0.003395810257643,-0.004052215255797,-0.004899225663394,0.004958434030414,-0.004634920042008,-0.024888755753636,-0.000472131679999,0.003482376690954,0.013037771917880));
res += mul(Get(s2,dx,-dy), float4x3(0.000351833645254,-0.000477836001664,0.000096225194284,0.003340978175402,0.000637366378214,-0.000792700215243,0.002915170276538,0.002088634530082,-0.000160704526934,-0.001122495625168,-0.002929178532213,-0.000814881816041));
res += mul(Get(s2,dx,0), float4x3(0.002521165646613,0.002336458768696,0.001388397300616,0.000665997271426,-0.000610748364124,-0.003875027643517,-0.004875729791820,-0.005255775526166,-0.001076794345863,0.012766418978572,0.014558017253876,0.005888886284083));
res += mul(Get(s2,dx,dy), float4x3(0.000296845450066,0.001300707343034,0.002316126599908,-0.001413937774487,0.000416528753703,0.004489784594625,-0.000716901267879,-0.000464762240881,-0.002392406109720,-0.004818356130272,-0.001343914540485,0.006310716271400));
res += mul(Get(s3,-dx,-dy), float4x3(-0.000860772153828,0.001117444480769,0.001128277042881,0.005865591112524,-0.001720052561723,-0.002033053897321,0.000547942065168,-0.000486469740281,0.000222451664740,0.004292284604162,0.002097452757880,0.000828543386888));
res += mul(Get(s3,-dx,0), float4x3(-0.000191161045223,-0.000105088212877,-0.000324453489156,-0.024041706696153,-0.009471357800066,0.010056553408504,-0.005903713405132,0.002059224760160,0.003533734474331,0.008261014707386,0.008449343033135,0.006065428256989));
res += mul(Get(s3,-dx,dy), float4x3(-0.001121538574807,-0.001880858209915,-0.000197399233002,0.003429358825088,0.009113002568483,-0.002836133586243,0.000912643212359,0.002145511098206,-0.000963304890320,-0.000666600419208,0.000364286563126,0.003242494538426));
res += mul(Get(s3,0,-dy), float4x3(-0.008791781030595,0.003227853681892,0.005277177318931,-0.001595002249815,0.001740518724546,0.001391504192725,0.010740633122623,-0.007315652910620,-0.003538123797625,0.010622842237353,0.004499380011111,0.000381017394830));
res += mul(Get(s3,0,0), float4x3(0.017809363082051,0.018851878121495,-0.016558434814215,0.019889473915100,-0.012581191025674,-0.016575122252107,-0.003144403686747,-0.026135388761759,0.023618020117283,0.013168357312679,0.016304904595017,0.017162328585982));
res += mul(Get(s3,0,dy), float4x3(0.004408418666571,-0.002610867377371,-0.020578259602189,-0.000950613117311,0.003128563286737,0.021172229200602,-0.003063954412937,-0.001813934999518,0.013678078539670,-0.000779153546318,0.001692230813205,0.006240058224648));
res += mul(Get(s3,dx,-dy), float4x3(-0.004163546487689,-0.001156969810836,0.000514471903443,-0.000505675037857,-0.000169126040419,-0.000641549064312,0.003180450992659,0.000477848312585,-0.000237878935877,-0.004140425007790,-0.002210145117715,0.000207534685615));
res += mul(Get(s3,dx,0), float4x3(-0.015541058965027,0.009004417806864,0.006601832341403,-0.000920430407859,0.001697720261291,0.001622751588002,0.006917963735759,-0.002210965845734,-0.007252901326865,-0.004751965869218,-0.005549480672926,-0.006361431907862));
res += mul(Get(s3,dx,dy), float4x3(0.000047550438467,0.005411906633526,0.002893273252994,-0.001642266754061,-0.001177482772619,-0.001472408301197,-0.001450608135201,-0.001388957956806,-0.000091274465376,-0.000235732048168,-0.000600649218541,-0.001671171281487));
res += mul(Get(s4,-dx,-dy), float4x3(0.001810671412386,0.000471581268357,-0.000181528535904,0.000146060148836,0.000829379714560,0.001948542078026,-0.000386526866350,-0.000072136448580,-0.000376732990844,0.003547660307959,0.001614646404050,0.000059786569182));
res += mul(Get(s4,-dx,0), float4x3(0.000540947832633,0.002159366849810,0.001857923227362,-0.001368694589473,-0.007064825389534,-0.001491025090218,-0.001264310558327,-0.002029537688941,-0.001559294760227,0.002692139707506,0.000297152582789,0.002090703463182));
res += mul(Get(s4,-dx,dy), float4x3(0.000341349892551,-0.000031983465306,0.000710811640602,0.003028923645616,0.002418106188998,0.002567142015323,0.001500693731941,0.000270566437393,-0.002452590037137,-0.001288008876145,-0.001972140045837,0.000432184664533));
res += mul(Get(s4,0,-dy), float4x3(0.004310474731028,0.001671638921835,-0.000282680062810,0.001905111828819,-0.004077194724232,-0.002587166847661,0.004868294578046,-0.006101596169174,-0.006711489520967,-0.020781133323908,0.003086292184889,0.007427799515426));
res += mul(Get(s4,0,0), float4x3(0.007696435321122,0.011621376499534,0.013340884819627,-0.034152615815401,0.014070603996515,0.024883903563023,-0.009709416888654,0.009267043322325,0.011372043751180,0.014548799023032,0.013320479542017,-0.016820456832647));
res += mul(Get(s4,0,dy), float4x3(-0.000700857839547,-0.000146881444380,0.000629314570688,0.001354309380986,0.008258814923465,-0.014374261721969,0.010597709566355,0.011183313094079,-0.020010985434055,-0.004142649006099,-0.004328139126301,0.002402821788564));
res += mul(Get(s4,dx,-dy), float4x3(-0.003517762059346,-0.002719916868955,-0.000407073734095,-0.000600702536758,-0.000901433755644,0.001093489350751,0.000864073925186,0.000540191773325,0.000404356833315,0.001257785945199,0.000753778091166,-0.000245088886004));
res += mul(Get(s4,dx,0), float4x3(-0.000747169775423,0.000061136794102,-0.001795735675842,0.013553702272475,0.007441952358931,-0.004808892030269,-0.004439079668373,-0.000237763480982,0.003208382986486,-0.003271909430623,-0.002830252284184,0.000046230998123));
res += mul(Get(s4,dx,dy), float4x3(-0.000646482338198,-0.002198581350967,-0.001367319258861,0.003387058619410,-0.003654431086034,-0.006342764478177,-0.002764107193798,0.003180427243933,0.000458270544186,0.001336761866696,0.000206288474146,-0.001489502727054));
res += mul(Get(s5,-dx,-dy), float4x3(-0.003820624668151,-0.005761672277004,-0.002605087589473,-0.000954597664531,0.000179894821486,0.000378691329388,0.000087085412815,0.001920177368447,0.002100142184645,-0.003432817757130,-0.001701340312138,-0.000140199394082));
res += mul(Get(s5,-dx,0), float4x3(-0.003770039649680,0.001677902182564,0.007223092950881,0.002828925382346,0.003217930672690,0.000278846273432,0.006513522006571,0.004596851300448,0.001714957412332,-0.001735494472086,-0.002556686522439,-0.002878080820665));
res += mul(Get(s5,-dx,dy), float4x3(0.000360102625564,0.000848891504575,-0.000464261538582,0.001334028085694,-0.002015320118517,-0.004595546983182,-0.000611039751675,0.000632529263385,0.003588375868276,0.000579632120207,-0.000372131384211,-0.001842025434598));
res += mul(Get(s5,0,-dy), float4x3(0.016110531985760,-0.009026007726789,-0.008330526761711,-0.002601676154882,0.003481726162136,0.002257751300931,-0.023504160344601,-0.010676709935069,-0.000769325182773,0.018908506259322,0.004736374132335,-0.001025007572025));
res += mul(Get(s5,0,0), float4x3(-0.011442571878433,-0.011493521742523,0.016627216711640,0.031191594898701,-0.000717679562513,-0.017806319519877,-0.009852256625891,-0.024936683475971,-0.037454031407833,-0.004456793889403,0.009127244353294,0.021748986095190));
res += mul(Get(s5,0,dy), float4x3(0.004047249443829,0.004787545185536,-0.002137411385775,0.001520741265267,-0.006505264900625,-0.010218851268291,-0.003732797456905,-0.002613188698888,-0.001459595281631,0.002605545800179,-0.001252717571333,-0.008902037516236));
res += mul(Get(s5,dx,-dy), float4x3(0.001356827677228,-0.001184669788927,-0.001276980037801,0.000255701801507,0.003214156022295,0.002374149160460,-0.001854215632193,0.001195814344101,0.001522061415017,-0.001332859741524,-0.003426245879382,-0.003436528146267));
res += mul(Get(s5,dx,0), float4x3(0.001084663905203,0.001421851222403,0.001234736642800,0.005434157326818,-0.005212860647589,-0.003558072028682,0.001174279139377,-0.001315874280408,-0.003000547643751,-0.004954520147294,-0.003800724167377,-0.003901989199221));
res += mul(Get(s5,dx,dy), float4x3(-0.000869533105288,-0.000446131685749,0.000637950550299,-0.001358903944492,-0.004011274781078,-0.000062088729464,0.001372555736452,0.000947504304349,0.000419452844653,0.000551705888938,-0.001618961454369,-0.005199587903917));
return float4(res, 0);
}