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
res += mul(Get(s0,-dx,-dy), float4x4(0.002417883137241,-0.018247891217470,0.005572275258601,0.003373556071892,0.020167736336589,0.013895002193749,-0.002364331157878,-0.001610219129361,-0.004368038382381,0.004471864085644,0.006999249570072,-0.002281714463606,0.004823731258512,0.017662940546870,-0.003994826227427,0.012345660477877));
res += mul(Get(s0,-dx,0), float4x4(-0.000266645452939,0.008387425914407,-0.008822022005916,-0.014864726923406,0.003461116459221,0.010625927709043,-0.002733127446845,0.002295959275216,0.004401267506182,0.003011089051142,-0.001101403497159,0.001724829198793,-0.000377948512323,0.064857907593250,0.000935960793868,0.004726987797767));
res += mul(Get(s0,-dx,dy), float4x4(0.003812688402832,0.001979702385142,-0.003383242525160,-0.007421005982906,-0.000972953857854,0.011669910512865,-0.004729329608381,0.004902038257569,0.006974442861974,0.018280621618032,-0.003710100194439,0.005869533400983,-0.002328398870304,-0.003853535279632,0.000346318207448,0.012077494524419));
res += mul(Get(s0,0,-dy), float4x4(-0.004869933705777,-0.026048967614770,0.007359857205302,0.013406128622591,0.062811478972435,-0.073546499013901,-0.002835197839886,-0.017429580911994,0.000475788721815,-0.012559007853270,0.002305113011971,0.002450986299664,0.016598865389824,-0.013943200930953,-0.001722273998894,-0.002470067935064));
res += mul(Get(s0,0,0), float4x4(-0.005925109144300,0.014933773316443,-0.002899380633608,0.007860080339015,0.070030070841312,-0.066186331212521,-0.003868246916682,-0.012840901501477,0.007740786299109,-0.003082299605012,0.004024412482977,0.001280410797335,0.027696756646037,-0.056498348712921,0.000424359110184,0.009385474957526));
res += mul(Get(s0,0,dy), float4x4(-0.004968159832060,-0.002342266729102,-0.002525834599510,0.000595819088630,0.060579117387533,-0.030949430540204,-0.003035373520106,-0.011322359554470,0.002468729158863,0.022551164031029,-0.001509765512310,0.006909821182489,0.008829396218061,0.024524761363864,0.010217808187008,0.007901570759714));
res += mul(Get(s0,dx,-dy), float4x4(0.007256752811372,0.007267274893820,-0.004768166691065,0.003312129760161,0.033504977822304,0.026216331869364,-0.009786470793188,-0.055070802569389,-0.000948889937717,-0.008714449591935,0.003855457995087,-0.004533269908279,0.007428154814988,0.024556772783399,-0.000629256130196,-0.022578064352274));
res += mul(Get(s0,dx,0), float4x4(-0.001044270233251,-0.012974755838513,0.011684827506542,0.010918690823019,0.029023820534348,0.016594106331468,-0.014440638944507,-0.074853695929050,-0.000571465003304,0.000177074049134,0.000897074933164,-0.000396494171582,0.014325862750411,-0.026425559073687,0.007540791761130,-0.037288658320904));
res += mul(Get(s0,dx,dy), float4x4(0.000183123192983,-0.003879755036905,0.004129087086767,-0.002194627653807,0.019218565896153,-0.030611338093877,-0.003442817367613,-0.055530246347189,0.004158092197031,0.029565285891294,-0.001151795382611,-0.003661565715447,0.011102689430118,-0.010518892668188,-0.003395795356482,-0.023400116711855));
res += mul(Get(s1,-dx,-dy), float4x4(-0.006831634789705,0.029922120273113,-0.005208828952163,-0.013639053329825,-0.002361177932471,0.021061532199383,0.041303075850010,0.003595550544560,-0.003049306338653,0.199884325265884,-0.066853165626526,-0.011463343165815,0.053645215928555,0.217526212334633,0.004161025397480,0.109174408018589));
res += mul(Get(s1,-dx,0), float4x4(-0.004123049322516,0.021990649402142,-0.014572264626622,-0.019079355522990,0.014818928204477,-0.043902087956667,0.017714124172926,0.005058129318058,-0.012879516929388,-0.131086856126785,-0.024250637739897,0.021793844178319,-0.023886514827609,0.045458834618330,0.061214417219162,0.133047983050346));
res += mul(Get(s1,-dx,dy), float4x4(-0.008898658677936,-0.016475595533848,-0.004224857315421,-0.001513733994216,0.089822120964527,0.013087695464492,-0.013274019584060,-0.029836179688573,-0.007815586403012,0.005764050409198,0.020884215831757,-0.007930311374366,-0.019012970849872,-0.173975974321365,0.092517867684364,0.064654789865017));
res += mul(Get(s1,0,-dy), float4x4(-0.005922875367105,-0.008471355773509,0.022609028965235,0.028240062296391,-0.000439226510935,-0.036917287856340,0.022705018520355,-0.004313498269767,0.014753791503608,-0.149672567844391,-0.086737692356110,0.078531466424465,0.001646335935220,-0.217313796281815,-0.025829643011093,0.243985533714294));
res += mul(Get(s1,0,0), float4x4(0.006428695749491,-0.005731424316764,0.013954915106297,0.052781723439693,0.004160452168435,-0.031678054481745,0.025221250951290,0.017400391399860,0.030189346522093,-0.085860505700111,-0.027984954416752,0.140344947576523,-0.047968257218599,0.135498866438866,-0.009077687747777,0.100974500179291));
res += mul(Get(s1,0,dy), float4x4(0.000961166864727,0.023012720048428,0.021517155691981,0.045855477452278,0.061199393123388,0.098612859845161,-0.023268615826964,-0.013781094923615,0.054078601300716,0.266212224960327,-0.040893133729696,0.002976797055453,-0.016117677092552,-0.039057884365320,-0.009234702214599,-0.037797313183546));
res += mul(Get(s1,dx,-dy), float4x4(-0.001998669933528,-0.009181304834783,0.018729768693447,0.003529149107635,0.008075611665845,-0.011831560172141,0.009134631603956,-0.001462671905756,0.043975442647934,0.080822780728340,-0.087730690836906,-0.090560287237167,0.010364506393671,0.073673814535141,0.013631326146424,-0.009075214155018));
res += mul(Get(s1,dx,0), float4x4(0.004159859847277,0.005915348883718,0.030447341501713,0.000296885526041,0.005939730908722,-0.048183821141720,0.036543603986502,0.018316213041544,0.018648784607649,0.152540922164917,-0.049306668341160,-0.075585618615150,-0.015587782487273,0.060750953853130,0.091912291944027,-0.220926821231842));
res += mul(Get(s1,dx,dy), float4x4(-0.005539108533412,-0.017543524503708,0.023016441613436,-0.008948042988777,0.046274643391371,0.064009554684162,-0.004505330696702,0.010613772086799,0.058244138956070,-0.259633481502533,-0.055568460375071,-0.049079570919275,-0.038766782730818,-0.020345585420728,0.082248695194721,-0.145307168364525));
res += mul(Get(s2,-dx,-dy), float4x4(-0.004825491458178,0.036400202661753,0.002111275214702,0.035097945481539,0.007079022936523,-0.001708932803012,-0.002202196745202,0.007575396448374,-0.060068935155869,-0.192648053169250,-0.047338545322418,0.344048619270325,0.002989082131535,0.001385482493788,0.036758106201887,0.021821465343237));
res += mul(Get(s2,-dx,0), float4x4(0.005045061465353,-0.040895722806454,0.007331492379308,0.029544556513429,0.004071096424013,-0.022179136052728,0.007544129155576,0.006436693947762,-0.182620212435722,-0.064919620752335,0.129119679331779,0.282130122184753,-0.006090483162552,-0.082746744155884,0.041589885950089,0.013340348377824));
res += mul(Get(s2,-dx,dy), float4x4(-0.001935641397722,-0.007681245449930,0.014927836135030,0.039964020252228,-0.004657031968236,0.001929763238877,-0.007292527239770,0.019337715581059,-0.034214902669191,0.141734048724174,0.021198309957981,0.055075936019421,0.034228462725878,-0.002560504246503,-0.012066818773746,-0.001520208432339));
res += mul(Get(s2,0,-dy), float4x4(0.013302613981068,-0.111603237688541,0.006992719136178,0.005179558880627,0.008884730748832,0.003056028392166,0.004024813417345,-0.008876256644726,-0.021102104336023,0.301981419324875,-0.095169179141521,0.051112174987793,0.011269478127360,-0.004172791726887,0.032106228172779,-0.007636842783540));
res += mul(Get(s2,0,0), float4x4(-0.006493383087218,0.056172411888838,0.000298897677567,0.013898129574955,0.002001847140491,-0.074103578925133,-0.000882374297362,0.027718504890800,-0.142735213041306,0.734652876853943,0.059111494570971,-0.365963101387024,-0.001403199159540,-0.094322986900806,0.034807093441486,0.009600972756743));
res += mul(Get(s2,0,dy), float4x4(-0.002473383443430,0.030745185911655,0.021354565396905,-0.007033373694867,0.002490463899449,0.027781611308455,-0.000270743563306,0.011464904993773,-0.068862207233906,-0.461163252592087,0.146502926945686,-0.316518008708954,0.027712052688003,-0.000663669081405,-0.006992144975811,-0.007575779687613));
res += mul(Get(s2,dx,-dy), float4x4(0.018741568550467,-0.026772916316986,0.005677604582161,-0.002982044592500,0.009821391664445,-0.040592689067125,0.002228573895991,0.015048881061375,0.098919048905373,-0.092569097876549,-0.146844685077667,-0.029169682413340,0.025644930079579,0.027041103690863,0.001134360209107,0.000605937908404));
res += mul(Get(s2,dx,0), float4x4(0.016270587220788,0.018212823197246,-0.001537746866234,0.000782487564720,0.000515694089700,0.020831191912293,0.004186938982457,0.016542857512832,0.059053592383862,0.151539310812950,-0.129358440637589,-0.141732260584831,0.011569092050195,-0.127732411026955,0.023404944688082,0.009995791129768));
res += mul(Get(s2,dx,dy), float4x4(0.005781723186374,0.148703411221504,0.005448186770082,-0.018320396542549,-0.002474037697539,0.096531674265862,0.009106866084039,-0.006937593221664,0.023088335990906,0.013410098850727,-0.024495106190443,-0.017426505684853,0.018242852762341,0.018440242856741,-0.004434855189174,-0.000595169374719));
res += mul(Get(s3,-dx,-dy), float4x4(-0.007950914092362,0.055962026119232,-0.013120017945766,-0.021788604557514,0.034727849066257,0.016104958951473,0.006062713917345,0.003988502081484,-0.002758358139545,0.108848579227924,0.007331630215049,0.005129870027304,0.035509515553713,-0.012987479567528,-0.001223060186021,0.039248518645763));
res += mul(Get(s3,-dx,0), float4x4(-0.004746204242110,0.047465600073338,-0.020011257380247,-0.044819995760918,0.011590718291700,-0.059089887887239,0.002395871561021,0.017944077029824,-0.005414516199380,0.004751303698868,-0.007011645939201,-0.001959871267900,0.003809479065239,0.004726851359010,0.008369266055524,0.014385489746928));
res += mul(Get(s3,-dx,dy), float4x4(-0.001315314555541,-0.060987688601017,-0.017021013423800,-0.024335643276572,-0.000537370331585,0.039482202380896,-0.006231558043510,0.000638899102341,0.008752776309848,0.038261048495770,0.004522711038589,0.010166944935918,-0.003678880631924,0.033381860703230,0.009063573554158,0.017097130417824));
res += mul(Get(s3,0,-dy), float4x4(-0.003219169331715,-0.024528006091714,0.042768955230713,0.062908329069614,0.024087032303214,0.038343776017427,0.006796912290156,0.009737837128341,0.041989531368017,-0.124182201921940,-0.000355252559530,-0.000731000152882,0.034895647317171,-0.050027932971716,-0.000067941262387,0.025311624631286));
res += mul(Get(s3,0,0), float4x4(-0.003294006222859,-0.019320862367749,0.039473842829466,0.118096791207790,0.005669623147696,-0.064926348626614,0.000057869856391,0.041255313903093,0.041920792311430,0.029741024598479,-0.001540928613394,0.007568005006760,0.029207771643996,-0.125437393784523,-0.007670421153307,-0.003574619535357));
res += mul(Get(s3,0,dy), float4x4(-0.004603391978890,0.049231402575970,0.028254617005587,0.104186125099659,-0.008808010257781,0.066407501697540,0.003906950354576,0.012029952369630,0.036105621606112,-0.033965207636356,0.007730229292065,-0.007180886808783,-0.002790169324726,0.183150708675385,0.010295929387212,-0.007030286360532));
res += mul(Get(s3,dx,-dy), float4x4(-0.005488678347319,-0.016102666035295,0.041975632309914,0.016415512189269,0.021379048004746,0.000588796043303,0.001744356472045,0.052037868648767,0.040831323713064,-0.002610489958897,-0.003422770882025,-0.062487006187439,0.015004271641374,-0.028215033933520,-0.003781676292419,0.044485565274954));
res += mul(Get(s3,dx,0), float4x4(-0.000714346650057,-0.019197024405003,0.058383435010910,0.004807353951037,0.011238567531109,0.034016575664282,0.001314053079113,0.014459691010416,0.034182887524366,0.045352533459663,0.001613335334696,-0.074694074690342,0.038387022912502,-0.109727583825588,0.008170811459422,-0.012833719141781));
res += mul(Get(s3,dx,dy), float4x4(0.003873861627653,-0.046134989708662,0.061300266534090,-0.008761168457568,-0.002620854880661,0.047758188098669,-0.004262071102858,0.004048922099173,0.027046306058764,-0.029665261507034,-0.006014577578753,-0.048164416104555,0.003754270495847,0.108856052160263,-0.015993982553482,-0.007498762570322));
return max(float4(0,0,0,0), res);
}
