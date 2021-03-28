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
float4 res = float4(0.289083212614059,0.168211668729782,-0.094587139785290,-0.153645515441895);
res += mul(Get(s0,-dx,-dy), float4x4(-0.281644105911255,0.114621922373772,-0.013707118108869,-0.159290567040443,-0.144153803586960,-0.143788456916809,0.104990161955357,0.282112002372742,0.081388294696808,0.119351543486118,-0.043171472847462,0.032388482242823,0.053109429776669,-0.505190849304199,0.061902824789286,0.035371992737055));
res += mul(Get(s0,-dx,0), float4x4(-0.457009375095367,0.155475422739983,-0.203826129436493,-0.359740465879440,-0.284501284360886,-0.270644634962082,0.032595023512840,0.010543446987867,-0.029560888186097,0.035571966320276,0.234582901000977,0.103135287761688,0.137876600027084,-0.478682339191437,-0.040469590574503,-0.159404769539833));
res += mul(Get(s0,-dx,dy), float4x4(-0.085972778499126,0.200173303484917,-0.413475155830383,-0.156419098377228,-0.353463917970657,-0.234046429395676,-0.029493419453502,0.006624302826822,0.170948371291161,-0.033532485365868,-0.029812872409821,-0.017754064872861,0.136632546782494,-0.495759934186935,0.017788615077734,0.043966583907604));
res += mul(Get(s0,0,-dy), float4x4(-0.622276842594147,0.259498119354248,-0.058868862688541,0.020513560622931,-0.046706702560186,-0.086860083043575,0.036150280386209,0.239370033144951,0.040646880865097,0.131844207644463,-0.019356779754162,0.248454883694649,0.191743105649948,-0.663535833358765,0.065657876431942,0.005143533460796));
res += mul(Get(s0,0,0), float4x4(-0.751633524894714,0.076268449425697,0.156063005328178,-0.003873922396451,-0.383080720901489,-0.279335200786591,0.066347360610962,0.270259678363800,-0.020726149901748,0.064401246607304,0.148070365190506,-0.032504033297300,0.217099964618683,-1.408097624778748,0.005923457443714,0.271522551774979));
res += mul(Get(s0,0,dy), float4x4(-0.240991741418839,0.025258511304855,0.483689010143280,0.165875121951103,-0.154735594987869,-0.227497011423111,0.209002003073692,-0.006947371643037,0.264676153659821,-0.067557580769062,0.136718630790710,0.033803906291723,0.192031458020210,-0.757118880748749,-0.089080467820168,0.025241933763027));
res += mul(Get(s0,dx,-dy), float4x4(-0.206229910254478,0.084511101245880,0.042624723166227,0.520011603832245,0.119425997138023,-0.039051014930010,0.017535444349051,0.156273648142815,0.322181522846222,0.148349419236183,0.004373198375106,-0.002320494037122,0.266169160604477,-0.562024414539337,0.067347235977650,0.057427473366261));
res += mul(Get(s0,dx,0), float4x4(-0.620213985443115,0.125406205654144,-0.204048648476601,0.245591536164284,-0.077684648334980,-0.199734270572662,0.096401453018188,0.320424795150757,0.041873294860125,0.123015560209751,0.147021859884262,-0.540321111679077,0.435811698436737,-0.756691694259644,0.093626402318478,-0.234089627861977));
res += mul(Get(s0,dx,dy), float4x4(-0.595760405063629,0.249329969286919,-0.345624804496765,0.028985328972340,-0.202910661697388,0.010350334458053,0.097009107470512,-0.056326732039452,-0.001801957027055,-0.031419061124325,0.292392939329147,-0.055153798311949,0.119877643883228,-0.637514412403107,0.024943871423602,-0.050082106143236));
res += mul(Get(s1,-dx,-dy), float4x4(0.033448409289122,0.063791297376156,0.086354561150074,-0.122232608497143,-0.226639002561569,-0.002161108190194,0.048226434737444,-0.062341336160898,0.086032480001450,-0.026318175718188,-0.074238173663616,-0.014971972443163,-0.060084618628025,-0.008625468239188,0.278140664100647,0.068034194409847));
res += mul(Get(s1,-dx,0), float4x4(0.064848631620407,-0.236950606107712,0.170282930135727,-0.200261875987053,0.320893347263336,-0.335493564605713,-0.348379313945770,-0.287217020988464,0.232074260711670,-0.169400960206985,-0.153627991676331,-0.204044610261917,0.059162996709347,0.232158184051514,-0.157070115208626,-0.148429080843925));
res += mul(Get(s1,-dx,dy), float4x4(0.131445422768593,-0.127493456006050,0.142109811306000,-0.189915791153908,-0.172521516680717,0.036683056503534,-0.015216214582324,0.037983212620020,0.180348262190819,0.106954552233219,-0.249366089701653,-0.198669910430908,0.056800551712513,0.327740997076035,0.141977965831757,-0.276878505945206));
res += mul(Get(s1,0,-dy), float4x4(-0.030138362199068,-0.284157246351242,0.311515241861343,0.145399793982506,-0.249867305159569,-0.006245646160096,0.114856012165546,0.096793137490749,0.113687068223953,0.048201881349087,-0.199271857738495,0.290305972099304,0.329367995262146,-0.033751599490643,0.024879015982151,0.102185979485512));
res += mul(Get(s1,0,0), float4x4(0.083410285413265,-0.254764199256897,0.397238969802856,-0.185367539525032,0.116152130067348,-0.077933192253113,-0.053109362721443,-0.030317857861519,-0.166729405522346,0.114110454916954,0.014428660273552,0.005292103625834,-0.013671616092324,-0.006295568775386,0.266883492469788,-0.265606999397278));
res += mul(Get(s1,0,dy), float4x4(0.141550645232201,-0.129697218537331,-0.035649031400681,-0.115897528827190,-0.433575928211212,0.049493420869112,-0.254453778266907,-0.129834979772568,-0.125915527343750,0.073052830994129,-0.121057756245136,-0.035184737294912,-0.152753219008446,0.326443344354630,-0.126940503716469,-0.165730446577072));
res += mul(Get(s1,dx,-dy), float4x4(0.112527735531330,0.029506562277675,-0.001976325875148,-0.164651975035667,0.160346522927284,-0.187464207410812,-0.053563173860312,0.310321331024170,-0.151977285742760,0.092144340276718,0.092157766222954,-0.051051404327154,-0.045315101742744,-0.028719775378704,-0.021179221570492,0.045293383300304));
res += mul(Get(s1,dx,0), float4x4(0.141813144087791,0.157049417495728,0.127095639705658,0.057902015745640,-0.379499077796936,0.242371499538422,0.378961116075516,-0.065392591059208,0.010485142469406,-0.049796830862761,0.176946133375168,0.331337243318558,-0.127546846866608,0.050068583339453,0.212645605206490,-0.297034472227097));
res += mul(Get(s1,dx,dy), float4x4(0.144064888358116,-0.087738789618015,0.120462529361248,-0.121671266853809,-0.130030244588852,0.155215620994568,0.000524972623680,0.201156884431839,0.027243850752711,-0.082467310130596,0.142819061875343,0.104391321539879,0.085724018514156,-0.044104170054197,0.055044136941433,-0.001849618274719));
res += mul(Get(s2,-dx,-dy), float4x4(-0.256087809801102,-0.116816326975822,-0.036691155284643,-0.293324261903763,-0.007050623651594,-0.140612229704857,-0.019680730998516,0.036943405866623,-0.724679231643677,0.331057131290436,-0.359651833772659,0.007617567665875,0.181842789053917,-0.075501337647438,0.284540951251984,-0.179150283336639));
res += mul(Get(s2,-dx,0), float4x4(-0.093938075006008,0.121109582483768,-0.263067781925201,-0.332598149776459,0.159796848893166,-0.440446883440018,0.105280697345734,-0.083628609776497,-0.451534777879715,0.300248324871063,-0.312188297510147,-0.009338975884020,0.380255252122879,-0.529070973396301,0.085766851902008,0.001164909452200));
res += mul(Get(s2,-dx,dy), float4x4(0.007442074362189,-0.125781998038292,0.278024613857269,-0.138712912797928,0.162853613495827,-0.025247666984797,-0.132130876183510,-0.109719723463058,-0.024186206981540,0.094330132007599,-0.137426644563675,-0.070081561803818,0.104948170483112,-0.310288280248642,-0.181593537330627,-0.035639341920614));
res += mul(Get(s2,0,-dy), float4x4(-0.139912009239197,-0.167794138193130,0.028851076960564,-0.150897264480591,-0.274015158414841,0.096415281295776,-0.140588447451591,0.001834844122641,-0.598642170429230,0.303453505039215,-0.082735136151314,0.203823000192642,-0.071945957839489,0.011499208398163,-0.029889896512032,-0.232881918549538));
res += mul(Get(s2,0,0), float4x4(-0.006183730904013,-0.024005033075809,-0.168287470936775,-0.357964456081390,-0.138439327478409,-0.371426880359650,-0.384079337120056,-0.084038250148296,-0.546890854835510,0.442225962877274,-0.134764239192009,0.129903852939606,0.120136119425297,0.261210203170776,0.194667309522629,0.765571475028992));
res += mul(Get(s2,0,dy), float4x4(-0.140983387827873,0.005234573036432,0.057435896247625,0.058054927736521,0.109358884394169,-0.285316914319992,0.023023715242743,-0.050072185695171,-0.354934841394424,0.049657065421343,-0.274282753467560,-0.061520297080278,0.137918248772621,-0.207645133137703,0.245494574308395,0.098205208778381));
res += mul(Get(s2,dx,-dy), float4x4(-0.157441496849060,-0.187985494732857,-0.098204270005226,-0.235455885529518,-0.221246019005775,0.070710383355618,-0.067742951214314,-0.196049213409424,0.117249533534050,0.168017774820328,-0.254470735788345,0.122066780924797,-0.033273559063673,-0.073575928807259,0.030578397214413,0.089348979294300));
res += mul(Get(s2,dx,0), float4x4(-0.029498759657145,-0.039112500846386,-0.081767767667770,0.351002424955368,0.125866070389748,-0.100115641951561,0.224288806319237,0.109170399606228,-0.217482909560204,0.383630275726318,-0.023106981068850,-0.048812296241522,-0.033946260809898,0.107983715832233,0.280902743339539,-0.185949802398682));
res += mul(Get(s2,dx,dy), float4x4(-0.146644964814186,-0.169097885489464,-0.011157772503793,0.060486353933811,0.113898001611233,-0.056876819580793,0.078351110219955,-0.048355426639318,-0.069467552006245,0.233213365077972,0.019157221540809,-0.015313680283725,0.174020275473595,0.228453129529953,0.105081945657730,-0.071128040552139));
res += mul(Get(s3,-dx,-dy), float4x4(-0.292995989322662,0.179638683795929,0.315928518772125,0.083869025111198,0.112968377768993,0.092618651688099,0.059918247163296,-0.076594017446041,-0.062167573720217,0.179777100682259,0.210818633437157,0.011225863359869,0.021872382611036,0.080731496214867,-0.070347629487514,-0.012397351674736));
res += mul(Get(s3,-dx,0), float4x4(0.238950759172440,-0.076079986989498,-0.308248728513718,-0.386810928583145,-0.250272065401077,0.245746299624443,0.323088049888611,0.058491226285696,0.260794669389725,0.325615972280502,-0.091365844011307,-0.057422198355198,0.058860607445240,0.125814750790596,-0.082617186009884,0.198658272624016));
res += mul(Get(s3,-dx,dy), float4x4(0.167247608304024,-0.044206526130438,-0.212409168481827,0.051539011299610,-0.040479160845280,-0.285849511623383,0.108113937079906,0.189071089029312,0.051770277321339,0.077821291983128,0.268029689788818,-0.261581152677536,0.129135087132454,-0.179461508989334,-0.095403566956520,0.005919558461756));
res += mul(Get(s3,0,-dy), float4x4(0.068336009979248,-0.024712849408388,-0.189498722553253,0.443128526210785,0.125301063060760,0.009287551976740,0.042206671088934,-0.013365204446018,-0.038848564028740,0.294057041406631,-0.017759373411536,0.237151205539703,-0.052466310560703,-0.131966903805733,0.154962912201881,0.011752720922232));
res += mul(Get(s3,0,0), float4x4(-0.151230737566948,-0.057881463319063,0.215516656637192,-0.163917675614357,0.125817000865936,0.039913605898619,-0.240380391478539,0.000877611571923,-0.388441503047943,-0.027735831215978,-0.107383914291859,0.073584347963333,0.248931333422661,-0.622046172618866,-0.219957783818245,-0.370930969715118));
res += mul(Get(s3,0,dy), float4x4(0.076567038893700,0.343735247850418,0.103764474391937,0.302018642425537,-0.033909931778908,-0.293555736541748,-0.093086339533329,0.080314412713051,0.067106954753399,-0.037546198815107,0.239151448011398,0.057169776409864,0.048631329089403,-0.077177353203297,0.234863936901093,-0.277446448802948));
res += mul(Get(s3,dx,-dy), float4x4(0.153146460652351,-0.156952545046806,-0.162764742970467,0.099908694624901,0.028572006151080,-0.044265698641539,-0.020954094827175,-0.011254741810262,-0.023286059498787,-0.122816450893879,-0.246042937040329,0.067758835852146,0.090124741196632,0.034216169267893,-0.099636733531952,-0.063614249229431));
res += mul(Get(s3,dx,0), float4x4(0.091289214789867,-0.090971812605858,0.052703309804201,-0.076828226447105,0.016247401013970,-0.013680293224752,-0.070681579411030,-0.039996188133955,-0.124921172857285,-0.045898638665676,-0.254739910364151,-0.101803198456764,0.175445094704628,0.035623308271170,0.099565207958221,-0.095480032265186));
res += mul(Get(s3,dx,dy), float4x4(-0.235216841101646,0.072110265493393,0.072250477969646,-0.187767431139946,0.028146075084805,-0.043805178254843,-0.083472892642021,-0.038306470960379,0.014850744046271,0.389236211776733,0.271565556526184,0.140757635235786,0.067564480006695,-0.109460592269897,0.056050341576338,0.171437561511993));
res += mul(Get(s4,-dx,-dy), float4x4(-0.080823272466660,-0.132293939590454,0.236401423811913,-0.068392664194107,-0.145756497979164,0.183135002851486,-0.084932245314121,-0.034472014755011,0.073976188898087,-0.059316929429770,-0.037743918597698,-0.165076315402985,-0.013528238981962,0.262309491634369,-0.037118457257748,0.154070243239403));
res += mul(Get(s4,-dx,0), float4x4(0.172244027256966,-0.145037695765495,0.184391394257545,0.194350361824036,-0.008742250502110,0.178991794586182,-0.040644470602274,0.017500873655081,-0.118886187672615,0.259236365556717,-0.200616106390953,-0.019617633894086,0.107896909117699,0.124814972281456,0.243862137198448,0.110437549650669));
res += mul(Get(s4,-dx,dy), float4x4(-0.007286846637726,-0.060240417718887,-0.170470014214516,0.155474379658699,0.081150010228157,0.023071477189660,0.232122898101807,0.077933773398399,-0.066959381103516,-0.002699724165723,0.268185913562775,-0.030065182596445,0.028980758041143,0.265173703432083,0.146303266286850,-0.214911490678787));
res += mul(Get(s4,0,-dy), float4x4(0.418301224708557,0.076462544500828,-0.408784896135330,-0.053279038518667,0.023253090679646,0.027810830622911,0.200763463973999,0.137052625417709,0.198098361492157,0.114779695868492,0.164668038487434,-0.493649452924728,0.049628753215075,-0.038235634565353,0.002164280740544,0.371757268905640));
res += mul(Get(s4,0,0), float4x4(0.033506397157907,0.368146032094955,-0.295427352190018,-0.339959889650345,-0.020172132179141,-0.195792615413666,-0.192907527089119,-0.138938128948212,-0.006368597969413,-0.016064360737801,-0.260562419891357,0.109517320990562,-0.123759657144547,0.135411366820335,0.137111395597458,-0.057375822216272));
res += mul(Get(s4,0,dy), float4x4(-0.052029840648174,-0.014025236479938,0.314775168895721,-0.142540678381920,-0.052720449864864,0.002308582887053,-0.180795401334763,-0.264677792787552,-0.353821337223053,-0.081719130277634,0.118273645639420,-0.168971180915833,-0.162566393613815,-0.288434863090515,0.060475222766399,0.022219249978662));
res += mul(Get(s4,dx,-dy), float4x4(-0.202973887324333,-0.326422423124313,0.309233158826828,-0.064878121018410,0.232365116477013,0.167817488312721,-0.105042487382889,-0.148333162069321,-0.067380912601948,-0.027978338301182,0.136183694005013,0.196719199419022,0.027741741389036,-0.106236994266510,0.142050415277481,0.156190067529678));
res += mul(Get(s4,dx,0), float4x4(-0.165569707751274,-0.039231088012457,-0.157014667987823,-0.027087809517980,-0.009545137174428,-0.002389473607764,-0.125648975372314,-0.426455616950989,0.039162430912256,-0.179736480116844,-0.268437743186951,-0.193421229720116,-0.058813240379095,0.035150773823261,-0.272096157073975,-0.099009864032269));
res += mul(Get(s4,dx,dy), float4x4(-0.026732582598925,0.006984949111938,-0.056360628455877,0.108430057764053,-0.020196143537760,-0.171813622117043,-0.057468432933092,-0.422333955764771,-0.168247520923615,-0.006694325711578,-0.195951864123344,-0.072964772582054,0.018052589148283,-0.027489067986608,-0.020821489393711,-0.016653286293149));
res += mul(Get(s5,-dx,-dy), float4x4(0.006265590898693,0.214299350976944,0.315060496330261,-0.093653164803982,-0.002152226399630,-0.151630446314812,-0.257502436637878,-0.693735957145691,0.152328729629517,0.203324243426323,0.057751152664423,0.079284362494946,-0.206694483757019,0.027961155399680,0.076865628361702,-0.123249351978302));
res += mul(Get(s5,-dx,0), float4x4(0.008721453137696,0.148139119148254,-0.221210464835167,-0.004893837030977,0.059883933514357,-0.099547065794468,-0.056731533259153,0.062106955796480,-0.632494330406189,0.149860173463821,0.068516455590725,0.059659432619810,-0.215142637491226,-0.024620698764920,0.023565404117107,-0.009505451656878));
res += mul(Get(s5,-dx,dy), float4x4(-0.075183160603046,-0.154324024915695,0.126953199505806,0.222856014966965,0.183679565787315,0.062559828162193,-0.142267987132072,0.092646688222885,-0.073202624917030,0.231519639492035,-0.394001573324203,0.086985096335411,-0.250293701887131,0.147897213697433,0.162639170885086,-0.162609085440636));
res += mul(Get(s5,0,-dy), float4x4(0.041986696422100,-0.038223680108786,0.153223052620888,0.449240446090698,0.098558247089386,-0.399300158023834,-0.324147582054138,-0.440422862768173,-0.375086992979050,0.165882661938667,-0.269491732120514,-0.102163411676884,-0.323232859373093,-0.017792182043195,-0.146235197782516,0.141308814287186));
res += mul(Get(s5,0,0), float4x4(-0.090083055198193,0.197053685784340,0.179924950003624,-0.176461860537529,0.112440623342991,0.119906462728977,-0.247080430388451,0.276274740695953,-1.052766919136047,-0.064356781542301,-0.140696808695793,0.022217759862542,0.111681506037712,0.128053456544876,-0.359201669692993,-0.172086030244827));
res += mul(Get(s5,0,dy), float4x4(-0.031227847561240,-0.135716781020164,-0.221823513507843,0.063955195248127,0.259220093488693,0.010498627088964,0.381935238838196,0.225316137075424,0.161214441061020,0.161660686135292,0.067964956164360,0.123345933854580,-0.416473597288132,0.403904676437378,-0.254591822624207,-0.059772804379463));
res += mul(Get(s5,dx,-dy), float4x4(0.122246056795120,-0.051426772028208,-0.304996848106384,-0.037412032485008,-0.035213597118855,0.272023379802704,0.246754229068756,-0.185643643140793,-0.147516831755638,0.167963311076164,0.032245341688395,0.158488705754280,-0.162811785936356,0.085677355527878,-0.259751349687576,-0.246200665831566));
res += mul(Get(s5,dx,0), float4x4(0.046710673719645,0.091092526912689,0.104996658861637,-0.136709004640579,0.035387452691793,0.141955256462097,0.195230364799500,0.195240557193756,0.194616183638573,-0.062323242425919,-0.063510686159134,-0.133666589856148,-0.470518350601196,0.033938180655241,-0.065973967313766,-0.056473433971405));
res += mul(Get(s5,dx,dy), float4x4(0.013311726041138,0.106848724186420,0.190428003668785,0.113151676952839,-0.039794657379389,0.067001797258854,0.107035413384438,0.076981432735920,-0.161476671695709,-0.039237279444933,-0.078457295894623,0.040891394019127,-0.080324210226536,0.196422651410103,0.169472143054008,0.015895524993539));
res = max(float4(0, 0, 0, 0), res) + float4(-0.023747425526381,0.016061846166849,-0.280093699693680,0.244436711072922) * min(float4(0, 0, 0, 0), res);
return res;
}