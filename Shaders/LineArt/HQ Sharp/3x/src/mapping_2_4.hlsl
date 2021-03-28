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
float4 res = float4(0.177805453538895,-0.202706038951874,0.222008377313614,0.065826609730721);
res += mul(Get(s0,-dx,-dy), float4x4(-0.193574279546738,0.530407547950745,-0.213766694068909,-0.033159330487251,0.057778708636761,-0.069201178848743,0.034074991941452,0.100064471364021,-0.026993937790394,0.062821879982948,0.018059035763144,0.032198611646891,0.188157796859741,0.057031951844692,0.010614903643727,0.083901152014732));
res += mul(Get(s0,-dx,0), float4x4(-0.057986553758383,-0.256414830684662,-0.061278905719519,0.064410366117954,-0.081600114703178,-0.072175383567810,0.065524883568287,-0.055763997137547,-0.015479757450521,0.102903090417385,-0.161057323217392,0.022765334695578,-0.165680497884750,0.069771572947502,0.112873367965221,-0.165341481566429));
res += mul(Get(s0,-dx,dy), float4x4(0.422677367925644,0.008672670461237,0.230179861187935,-0.017560234293342,-0.044236253947020,0.107985578477383,0.031859893351793,0.048803605139256,-0.099234171211720,-0.052298456430435,-0.065097309648991,0.018831357359886,-0.243260174989700,0.282328248023987,0.056105375289917,-0.014841170981526));
res += mul(Get(s0,0,-dy), float4x4(-0.144893988966942,0.259112149477005,-0.052124064415693,0.060754254460335,-0.000977818621323,-0.160719946026802,0.028530225157738,-0.011312508024275,0.073788121342659,0.083693869411945,-0.062737107276917,0.020175954326987,-0.069047965109348,0.071871988475323,-0.035629201680422,-0.044618681073189));
res += mul(Get(s0,0,0), float4x4(-0.092936471104622,-0.241173624992371,-0.069557085633278,0.151262953877449,0.075052879750729,0.273496478796005,-0.078666269779205,-0.059012465178967,0.197581619024277,0.057487655431032,-0.170599266886711,-0.270677953958511,-0.069816239178181,0.149186030030251,0.028890157118440,-0.536523342132568));
res += mul(Get(s0,0,dy), float4x4(0.085460007190704,0.029647465795279,0.500832855701447,-0.181991621851921,0.034742180258036,-0.029624938964844,-0.013480295427144,-0.035865273326635,0.018589219078422,0.150946423411369,0.227823629975319,-0.001477985060774,0.027075074613094,-0.004533819854259,0.084052383899689,0.027096219360828));
res += mul(Get(s0,dx,-dy), float4x4(0.037000838667154,0.060689896345139,0.034001156687737,0.193936198949814,-0.032946042716503,0.057066746056080,0.036993946880102,0.145992189645767,0.044835928827524,0.075340107083321,0.013323553837836,-0.191282242536545,0.010205152444541,0.002637475961819,-0.050164736807346,-0.047575339674950));
res += mul(Get(s0,dx,0), float4x4(0.010667963884771,0.127652466297150,-0.037218961864710,0.086293913424015,0.049183446913958,0.157454326748848,-0.035881780087948,0.166737794876099,-0.007988947443664,0.064975000917912,-0.124209187924862,0.029403910040855,0.006428754888475,-0.016138868406415,-0.069574475288391,0.050110351294279));
res += mul(Get(s0,dx,dy), float4x4(0.012170877307653,-0.108496606349945,-0.109906502068043,0.038812544196844,-0.086588345468044,-0.028740925714374,-0.097469627857208,0.144314646720886,-0.023222830146551,0.057434361428022,0.126386851072311,-0.082109048962593,-0.015728406608105,-0.026718907058239,0.082398027181625,0.034671004861593));
res += mul(Get(s1,-dx,-dy), float4x4(0.045793950557709,-0.087393507361412,-0.048114232718945,-0.032544437795877,0.019191171973944,0.037123192101717,0.081343851983547,-0.513123393058777,-0.007098131347448,0.072494611144066,0.094436243176460,-0.100226946175098,-0.124601468443871,-0.163552775979042,-0.013578117825091,-0.187786087393761));
res += mul(Get(s1,-dx,0), float4x4(0.054166734218597,0.132830351591110,0.087781861424446,-0.044351339340210,-0.042506173253059,-0.041346408426762,-0.019321488216519,-0.093038454651833,0.156585827469826,-0.067471742630005,0.296442776918411,0.037303667515516,0.221332356333733,0.064274899661541,0.202456831932068,-0.249584153294563));
res += mul(Get(s1,-dx,dy), float4x4(0.034288641065359,0.030705207958817,0.008446451276541,-0.017006101086736,0.271920025348663,-0.112514004111290,0.044345315545797,-0.090631544589996,0.001175257726572,0.046258591115475,0.124905422329903,-0.072354026138783,0.013282449916005,0.100476264953613,0.177824512124062,0.067208208143711));
res += mul(Get(s1,0,-dy), float4x4(-0.054974231868982,0.134534984827042,0.004445453640074,-0.055974956601858,0.086860507726669,0.026328129693866,-0.241992160677910,0.163279503583908,-0.174314707517624,-0.235254138708115,0.009330010041595,-0.237487494945526,0.054239336401224,-0.094311229884624,-0.139804393053055,0.218470305204391));
res += mul(Get(s1,0,0), float4x4(0.049686904996634,-0.146912544965744,-0.047799494117498,-0.191889673471451,0.052719097584486,-0.009750191122293,0.367575883865356,0.331458240747452,0.120871409773827,-0.080692574381828,0.125133216381073,0.266495198011398,0.253052502870560,-0.033101879060268,-0.066047392785549,-0.374693751335144));
res += mul(Get(s1,0,dy), float4x4(-0.043284818530083,0.112348869442940,0.052824798971415,-0.135961294174194,0.235284551978111,0.105550847947598,-0.163597553968430,0.004321801010519,0.023683039471507,0.232639819383621,-0.032487794756889,-0.022405738011003,0.177647858858109,-0.003220654325560,0.013827037066221,0.026081018149853));
res += mul(Get(s1,dx,-dy), float4x4(0.007361547090113,-0.034498870372772,0.040783543139696,-0.121250264346600,-0.112612731754780,-0.030188376083970,-0.030495161190629,0.461781769990921,-0.013427329249680,-0.115883931517601,0.011366971768439,0.247792392969131,0.021068215370178,-0.014293535612524,-0.042369820177555,-0.116816319525242));
res += mul(Get(s1,dx,0), float4x4(-0.016936652362347,-0.074977397918701,0.169510424137115,0.090750791132450,-0.103845417499542,0.140668436884880,-0.054196402430534,-0.041580703109503,0.008540220558643,0.100883781909943,-0.025458503514528,-0.233645051717758,-0.130161046981812,-0.003168164985254,-0.063137151300907,-0.107527732849121));
res += mul(Get(s1,dx,dy), float4x4(0.163801863789558,0.111926347017288,-0.258525371551514,-0.117392718791962,-0.174889996647835,0.391387134790421,0.035226177424192,0.180554285645485,0.001095431158319,-0.004421568941325,0.026720637455583,0.123605400323868,-0.060880385339260,-0.036157894879580,0.002245056210086,-0.250410616397858));
res += mul(Get(s2,-dx,-dy), float4x4(0.128069862723351,0.021540500223637,0.034662526100874,0.037248637527227,-0.063862025737762,0.107713155448437,-0.000634663156234,0.019520901143551,-0.057990159839392,0.071015313267708,-0.062592074275017,-0.133105561137199,-0.028030632063746,-0.038985043764114,-0.060414697974920,0.055801745504141));
res += mul(Get(s2,-dx,0), float4x4(-0.153501421213150,-0.228572562336922,-0.032428279519081,0.010855098254979,-0.076468668878078,-0.043498538434505,0.181329295039177,0.136496633291245,0.021753197535872,-0.031961385160685,-0.071121126413345,-0.034045860171318,0.099705576896667,-0.048669531941414,-0.150796443223953,-0.161920070648193));
res += mul(Get(s2,-dx,dy), float4x4(0.102804273366928,-0.010293405503035,-0.014397182501853,-0.111091002821922,-0.158768668770790,0.120949111878872,-0.048658564686775,-0.096365012228489,0.103150919079781,-0.038136508315802,0.055498454719782,0.190096572041512,0.071421116590500,-0.144827604293823,-0.111317694187164,-0.060290865600109));
res += mul(Get(s2,0,-dy), float4x4(0.131239056587219,0.069808207452297,-0.097715869545937,-0.414708375930786,0.078602284193039,0.176701143383980,-0.027746576815844,0.034463532269001,-0.054745964705944,-0.007280246354640,-0.075945943593979,0.062954977154732,0.057119693607092,0.090159878134727,-0.087068118155003,0.042400546371937));
res += mul(Get(s2,0,0), float4x4(-0.011823180131614,-0.253066658973694,0.102214179933071,0.048059538006783,-0.012610733509064,-0.093188852071762,-0.141392469406128,-0.141175359487534,-0.038010422140360,0.151022255420685,0.093039698898792,0.174421146512032,0.270732820034027,-0.360638499259949,0.088002167642117,-0.145419493317604));
res += mul(Get(s2,0,dy), float4x4(0.054298777133226,0.039590850472450,0.225695893168449,0.102647505700588,0.149894684553146,0.045507349073887,-0.005550690926611,0.023880800232291,-0.136666700243950,0.034805189818144,-0.097205661237240,-0.160441324114799,-0.134515196084976,0.078977249562740,0.017753139138222,-0.113623544573784));
res += mul(Get(s2,dx,-dy), float4x4(-0.034791599959135,-0.096969969570637,-0.014644195325673,-0.233486309647560,-0.002471831161529,-0.234121546149254,0.049734715372324,0.041029211133718,-0.040465731173754,-0.095940425992012,0.030533013865352,-0.134269192814827,-0.022339357063174,-0.081590846180916,0.080044791102409,0.088111020624638));
res += mul(Get(s2,dx,0), float4x4(0.162770316004753,0.021459318697453,0.068685695528984,-0.113928817212582,0.131226539611816,-0.071015834808350,0.087352372705936,0.084594756364822,0.031690660864115,-0.075649283826351,0.142023906111717,-0.320516347885132,0.068078376352787,-0.085304439067841,-0.071662783622742,0.143950119614601));
res += mul(Get(s2,dx,dy), float4x4(0.126339957118034,0.043973986059427,0.021267849951982,0.048833027482033,-0.045381143689156,0.190428853034973,-0.020219225436449,0.041848078370094,0.131928145885468,-0.163255289196968,0.049440041184425,-0.082903720438480,-0.216758519411087,0.107920318841934,-0.010808875784278,-0.254682809114456));
res += mul(Get(s3,-dx,-dy), float4x4(-0.069105982780457,-0.055350929498672,0.015637923032045,0.073322691023350,-0.018832068890333,-0.135378360748291,-0.024683855473995,-0.010312442667782,-0.095982506871223,-0.125517547130585,-0.072040818631649,-0.076443061232567,0.021986450999975,-0.044290535151958,-0.037889644503593,-0.028052328154445));
res += mul(Get(s3,-dx,0), float4x4(-0.086471088230610,-0.088061027228832,0.087392017245293,-0.037458911538124,-0.026866780593991,0.177567765116692,-0.027601398527622,-0.058530628681183,-0.051891464740038,0.048685327172279,0.063023313879967,-0.146276250481606,0.133147060871124,-0.007802378851920,-0.078202210366726,-0.115108698606491));
res += mul(Get(s3,-dx,dy), float4x4(0.071394480764866,-0.068708799779415,0.009701586328447,-0.251353323459625,-0.057289574295282,0.170487567782402,0.040042523294687,-0.003043375909328,0.119487531483173,-0.069657906889915,0.096250370144844,0.009648018516600,-0.050576120615005,-0.092699602246284,-0.135648280382156,-0.013492386788130));
res += mul(Get(s3,0,-dy), float4x4(-0.177912205457687,-0.089148186147213,-0.087928570806980,-0.112605072557926,-0.108091942965984,0.214000090956688,0.059428509324789,0.189859613776207,-0.156736895442009,0.113134332001209,-0.096663251519203,-0.109691895544529,0.060747530311346,-0.046077843755484,0.135980129241943,-0.011747497133911));
res += mul(Get(s3,0,0), float4x4(-0.010042567737401,0.052352383732796,-0.117339603602886,-0.122500546276569,-0.221588090062141,0.286664068698883,-0.045071974396706,0.102793648838997,-0.077289238572121,0.126463010907173,0.106096804141998,0.044958956539631,-0.371007710695267,-0.041904538869858,-0.115601375699043,-0.092654757201672));
res += mul(Get(s3,0,dy), float4x4(0.067378662526608,0.090669989585876,0.042687021195889,-0.042066194117069,-0.042923703789711,0.444228917360306,-0.045032072812319,0.099838681519032,0.130102902650833,0.154336869716644,0.130868971347809,0.038617890328169,0.147990807890892,-0.089800655841827,-0.053284477442503,-0.155975475907326));
res += mul(Get(s3,dx,-dy), float4x4(-0.023461764678359,-0.134200766682625,0.158317863941193,0.230756849050522,-0.058443915098906,0.171143934130669,0.082079187035561,-0.259718239307404,-0.044166550040245,-0.114573128521442,-0.036426216363907,0.058763924986124,0.074964649975300,0.040166657418013,0.061726178973913,-0.178125053644180));
res += mul(Get(s3,dx,0), float4x4(0.104735866189003,-0.168812856078148,0.221817001700401,0.154554501175880,0.004511120729148,0.246526911854744,-0.035615015774965,0.303669959306717,0.034585267305374,-0.102466113865376,-0.046738296747208,0.123977638781071,0.107458412647247,-0.121621251106262,-0.101493567228317,-0.820096194744110));
res += mul(Get(s3,dx,dy), float4x4(-0.045375712215900,0.115218088030815,-0.110063739120960,0.000880512467120,0.011708733625710,0.066196978092194,0.066393904387951,0.174425482749939,0.066709734499454,0.189871251583099,-0.105097204446793,0.295696616172791,0.014073303900659,-0.042016688734293,-0.050746396183968,0.100461259484291));
res += mul(Get(s4,-dx,-dy), float4x4(-0.122591204941273,0.015557805076241,-0.055580034852028,-0.057055566459894,-0.155364260077477,0.249753743410110,0.091655969619751,-0.118297763168812,0.004044495522976,-0.064225815236568,0.005598840769380,0.001542336423881,0.079924888908863,0.261074781417847,-0.028256103396416,0.012559921480715));
res += mul(Get(s4,-dx,0), float4x4(-0.239154726266861,-0.049171570688486,-0.146965250372887,-0.069844327867031,0.049208752810955,-0.079622484743595,0.033811304718256,0.033915806561708,-0.053354863077402,-0.025796361267567,0.069871656596661,0.050939090549946,-0.105953194200993,0.069137021899223,-0.102149389684200,0.015400264412165));
res += mul(Get(s4,-dx,dy), float4x4(-0.013198272325099,0.005263648461550,-0.028431558981538,0.092915281653404,0.046806134283543,-0.168617740273476,0.115749098360538,-0.094289124011993,-0.121049702167511,-0.131371662020683,-0.156285554170609,0.059898100793362,-0.092014990746975,0.078607521951199,-0.207571163773537,0.040988273918629));
res += mul(Get(s4,0,-dy), float4x4(-0.148367211222649,0.152591094374657,0.050684355199337,-0.100399233400822,0.106248199939728,-0.130087658762932,-0.078936100006104,0.173337325453758,-0.056351345032454,0.084580026566982,-0.020536450669169,0.010181772522628,0.050768267363310,0.075769349932671,0.074472658336163,-0.241756916046143));
res += mul(Get(s4,0,0), float4x4(-0.771344900131226,0.041819728910923,-0.020528722554445,0.055005859583616,0.081478178501129,-0.083338022232056,0.046142976731062,0.119715601205826,-0.019201397895813,-0.004958627279848,-0.205853968858719,0.034116901457310,-0.215577855706215,-0.195380747318268,0.097414463758469,-0.082818418741226));
res += mul(Get(s4,0,dy), float4x4(-0.185015231370926,-0.104389630258083,-0.191226437687874,-0.181071400642395,0.181564226746559,0.015873642638326,0.181539505720139,-0.017496785148978,0.214550822973251,0.212562978267670,-1.081997156143188,-0.062426853924990,0.073914781212807,0.070892691612244,0.106406398117542,-0.015316581353545));
res += mul(Get(s4,dx,-dy), float4x4(0.096755102276802,0.119247972965240,0.044529270380735,-0.655514776706696,0.068761199712753,0.150374785065651,-0.017282875254750,0.128847852349281,0.043211854994297,-0.013076352886856,0.002272119745612,0.010216072201729,0.075508244335651,-0.025053892284632,-0.006632461678237,-0.069265864789486));
res += mul(Get(s4,dx,0), float4x4(-0.133997350931168,-0.005649996921420,-0.183153972029686,0.184534415602684,0.148182347416878,-0.076989755034447,0.166352272033691,-0.223164722323418,-0.098912954330444,-0.090914644300938,-0.128669574856758,0.100953087210655,-0.069273784756660,-0.054279785603285,-0.065486192703247,0.102248929440975));
res += mul(Get(s4,dx,dy), float4x4(0.017435537651181,-0.175325483083725,-0.047279674559832,-0.046242952346802,0.117817282676697,-0.178965732455254,0.102727293968201,0.017265707254410,-0.102520026266575,-0.000058600722696,-0.172079607844353,-0.894290745258331,-0.024728398770094,-0.003363620722666,0.016885256394744,-0.004996469244361));
res += mul(Get(s5,-dx,-dy), float4x4(0.072565123438835,-0.109326578676701,0.045426692813635,-0.070083305239677,0.080435596406460,-0.165817230939865,0.021293388679624,-0.066643290221691,-0.196633338928223,0.039045561105013,0.022733367979527,-0.075178772211075,-0.101649977266788,0.064213514328003,-0.111489854753017,0.008579107932746));
res += mul(Get(s5,-dx,0), float4x4(-0.189096316695213,0.122099898755550,0.135973855853081,-0.102364465594292,0.110410712659359,-0.008346520364285,0.030904397368431,0.012966077774763,-0.215170830488205,0.155384406447411,0.051310896873474,-0.080604597926140,-0.244058042764664,0.135420337319374,-0.060190428048372,-0.132621794939041));
res += mul(Get(s5,-dx,dy), float4x4(-0.258470654487610,-0.082133814692497,-0.340618371963501,0.074145309627056,0.041146628558636,-0.094383321702480,0.120649494230747,0.088427670300007,-0.047054246068001,-0.099453240633011,0.304243803024292,-0.017431041225791,0.099683970212936,-0.018508091568947,0.042443841695786,0.007786680012941));
res += mul(Get(s5,0,-dy), float4x4(-0.023480029776692,-0.048970665782690,-0.124763533473015,-0.009826825000346,0.156996056437492,0.121255055069923,0.011234316043556,-0.056102536618710,-0.140371054410934,-0.143194749951363,0.001443619956262,-0.056522555649281,-0.110129043459892,0.169901356101036,-0.135473102331161,0.117742531001568));
res += mul(Get(s5,0,0), float4x4(-0.186325073242188,-0.027053471654654,0.018052132800221,-0.600355327129364,-0.172522976994514,-0.117716982960701,-0.040169287472963,-0.068248592317104,0.003416178049520,-0.306840956211090,-0.169269949197769,-0.004228767473251,0.034781638532877,-0.187463089823723,0.060187377035618,-0.123256675899029));
res += mul(Get(s5,0,dy), float4x4(0.010181934572756,0.104635834693909,-0.059970140457153,0.218075335025787,-0.451695770025253,0.182392850518227,-0.233316764235497,-0.209442466497421,0.456880450248718,-0.419949144124985,-0.235185995697975,-0.184232577681541,0.278266966342926,-0.199454262852669,0.207915559411049,-0.104337356984615));
res += mul(Get(s5,dx,-dy), float4x4(0.058366611599922,0.122270166873932,0.050569966435432,-0.110843591392040,0.097931258380413,-0.206288218498230,0.048179220408201,0.058946494013071,0.024353861808777,0.015732215717435,-0.008051326498389,0.255980014801025,0.015406964346766,0.035122334957123,-0.033143978565931,-0.032045084983110));
res += mul(Get(s5,dx,0), float4x4(0.073259159922600,-0.023498799651861,0.078667111694813,0.143720090389252,-0.079305417835712,-0.089502200484276,0.081932455301285,0.195428997278214,0.138997137546539,-0.160850122570992,-0.081837899982929,0.157221481204033,-0.037157945334911,-0.246201336383820,-0.092232674360275,0.094926968216896));
res += mul(Get(s5,dx,dy), float4x4(-0.022548308596015,-0.098219931125641,-0.014321683906019,0.049948982894421,-0.107060730457306,0.189873158931732,0.025752717629075,0.118782214820385,0.065300770103931,-0.057475119829178,-0.152179628610611,-0.051003418862820,-0.090418539941311,0.099267393350601,-0.025452405214310,-0.113492265343666));
res = max(float4(0, 0, 0, 0), res) + float4(0.044845260679722,-0.061960324645042,0.123001575469971,0.023730210959911) * min(float4(0, 0, 0, 0), res);
return res;
}
