sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
sampler s4 : register(s4);
sampler s5 : register(s5);
sampler s6 : register(s6);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.206180021166801,0.006096399389207,-0.085803471505642,-0.096999086439610);
res += mul(Get(s0,-dx,-dy), float4x4(0.101389080286026,0.179194554686546,0.041548393666744,0.085632883012295,-0.140717729926109,0.037636846303940,-0.022267213091254,-0.257239401340485,-0.047514747828245,0.017234973609447,-0.029579224064946,0.084917418658733,-0.173255860805511,0.012922711670399,0.057554323226213,-0.220947280526161));
res += mul(Get(s0,-dx,0), float4x4(-0.085669428110123,0.092806063592434,0.074603796005249,0.123517893254757,0.109825611114502,0.086802318692207,0.186223313212395,-0.192124187946320,0.012699225917459,0.116044566035271,0.026390764862299,0.080952435731888,-0.001358116627671,-0.065912030637264,-0.115048132836819,-0.186844840645790));
res += mul(Get(s0,-dx,dy), float4x4(-0.133706495165825,0.108718886971474,-0.082553625106812,0.034443397074938,-0.064279101788998,-0.198943421244621,-0.143279641866684,-0.040893774479628,0.132755875587463,0.185544386506081,-0.051484789699316,-0.102753527462482,-0.054264951497316,-0.006661798339337,0.031926237046719,-0.017976833507419));
res += mul(Get(s0,0,-dy), float4x4(-0.019773313775659,0.033305004239082,0.061508432030678,0.082498006522655,-0.031226886436343,0.003967095166445,-0.190698847174644,0.074563473463058,-0.141367554664612,0.007991514168680,-0.134941369295120,0.058366313576698,-0.031043998897076,-0.037524785846472,-0.155402570962906,-0.098870895802975));
res += mul(Get(s0,0,0), float4x4(0.036265656352043,0.154504776000977,0.135496288537979,0.030856529250741,0.058536227792501,-0.086220934987068,-0.037524003535509,-0.073842495679855,0.157475978136063,-0.164662674069405,-0.105511747300625,-0.038159646093845,-0.128477036952972,-0.012886726297438,0.157620325684547,-0.170260012149811));
res += mul(Get(s0,0,dy), float4x4(-0.009586604312062,-0.011374625377357,0.073059447109699,0.040981691330671,0.010262383148074,-0.146642223000526,-0.107732333242893,-0.033274091780186,0.293894559144974,-0.029759876430035,0.127846881747246,-0.025609849020839,0.025581346824765,-0.021909741684794,-0.079214163124561,-0.118118762969971));
res += mul(Get(s0,dx,-dy), float4x4(0.236727178096771,0.031474731862545,0.114441923797131,0.066776148974895,0.149614632129669,0.117587283253670,0.042335122823715,0.080921933054924,-0.124368801712990,0.280883431434631,-0.104047395288944,0.129094943404198,-0.003038285998628,-0.020750448107719,-0.098664030432701,0.073034368455410));
res += mul(Get(s0,dx,0), float4x4(0.154374822974205,0.172942772507668,0.046243075281382,0.272473067045212,0.069861218333244,-0.151100039482117,-0.197600722312927,0.135278642177582,0.151093080639839,-0.061126526445150,-0.127600520849228,-0.061906881630421,0.165473848581314,-0.189317598938942,0.150317996740341,0.041215855628252));
res += mul(Get(s0,dx,dy), float4x4(0.076854422688484,0.044231835752726,0.026833457872272,0.134844481945038,0.048821352422237,0.011987809091806,0.001598858740181,-0.005795606877655,-0.162815555930138,0.135569781064987,-0.153658151626587,0.182085141539574,0.075019337236881,-0.016104727983475,0.014747643843293,0.057834021747112));
res += mul(Get(s1,-dx,-dy), float4x4(0.040706314146519,0.131016284227371,-0.085211761295795,0.111244283616543,0.001773738535121,0.130947470664978,0.115970514714718,0.021508200094104,0.173055693507195,0.013080512173474,-0.010065753012896,-0.036780759692192,-0.121121853590012,-0.022831385955215,-0.090033188462257,-0.045136090368032));
res += mul(Get(s1,-dx,0), float4x4(0.044101130217314,-0.042577285319567,0.014593866653740,0.038541231304407,0.055246490985155,0.205576464533806,0.132852435112000,-0.036730021238327,0.121425129473209,0.015101082623005,-0.150890454649925,0.067326009273529,-0.006221172865480,0.000392747722799,-0.216064363718033,-0.001026910846122));
res += mul(Get(s1,-dx,dy), float4x4(-0.034994058310986,-0.097527667880058,0.030152937397361,-0.167680010199547,0.048975486308336,-0.029426360502839,-0.074091896414757,0.145055204629898,0.049520343542099,-0.020861640572548,0.027993397787213,0.009469654411077,-0.144669562578201,0.054791361093521,-0.050133284181356,-0.109578944742680));
res += mul(Get(s1,0,-dy), float4x4(-0.081019237637520,0.096308283507824,0.145148456096649,-0.209590882062912,0.082239300012589,0.073925912380219,0.078241482377052,0.054400246590376,-0.055361878126860,-0.085111908614635,-0.018444241955876,0.041271466761827,-0.121262595057487,-0.088826961815357,-0.140898734331131,-0.047234486788511));
res += mul(Get(s1,0,0), float4x4(-0.147302091121674,0.089866034686565,0.243061065673828,-0.109620437026024,-0.110596083104610,0.005653345026076,-0.055916082113981,0.202825054526329,-0.047710917890072,-0.040217138826847,0.003326943842694,0.241763249039650,-0.068383067846298,-0.018447767943144,-0.189788818359375,-0.293564826250076));
res += mul(Get(s1,0,dy), float4x4(-0.048691019415855,-0.030130075290799,0.066191859543324,-0.002574998652562,-0.007981709204614,0.052221380174160,0.081536568701267,0.145660281181335,0.007002346683294,0.008051032200456,-0.019998138770461,0.079999953508377,-0.189255416393280,0.057739838957787,-0.234358161687851,0.205192700028419));
res += mul(Get(s1,dx,-dy), float4x4(0.055119547992945,0.139130175113678,0.079052262008190,-0.237806528806686,0.073414333164692,0.070106938481331,-0.037761870771646,0.010850180871785,-0.032880369573832,-0.036621563136578,-0.177635386586189,0.055321883410215,-0.083492547273636,-0.019694356247783,-0.131839409470558,-0.165946453809738));
res += mul(Get(s1,dx,0), float4x4(0.022202262654901,0.074441611766815,-0.109931237995625,-0.008567065000534,0.030131345614791,0.109968781471252,0.019097918644547,0.170573040843010,-0.040518663823605,0.091236189007759,-0.132168129086494,-0.031986530870199,-0.103268072009087,0.080948643386364,-0.270512461662292,-0.257712125778198));
res += mul(Get(s1,dx,dy), float4x4(-0.003373623825610,0.057082232087851,-0.002049727365375,0.007271227426827,-0.043069329112768,0.066105760633945,0.084208957850933,0.000181696173968,0.097544282674789,0.020613167434931,0.013826404698193,0.044141359627247,-0.116032168269157,0.016408266499639,-0.125431388616562,-0.141210645437241));
res += mul(Get(s2,-dx,-dy), float4x4(-0.024385444819927,-0.024038700386882,-0.039144959300756,-0.157805487513542,-0.014790725894272,0.002220456255600,-0.032596889883280,0.119478166103363,-0.045296553522348,0.067649953067303,-0.000986958970316,-0.129263937473297,0.202713891863823,0.047193489968777,0.090835019946098,0.174691796302795));
res += mul(Get(s2,-dx,0), float4x4(0.119489967823029,0.046942085027695,0.004987066611648,0.273318886756897,0.123309738934040,0.200830444693565,0.087116718292236,0.146241873502731,-0.064785040915012,-0.026710389181972,0.034651748836040,-0.143312484025955,0.148006066679955,-0.033590760082006,0.231923729181290,-0.240470796823502));
res += mul(Get(s2,-dx,dy), float4x4(0.048479594290257,0.108615167438984,0.179153650999069,0.088103286921978,0.107511140406132,0.242105796933174,0.105711124837399,0.097771428525448,-0.199239835143089,0.099104367196560,-0.113174147903919,-0.335039019584656,0.205710962414742,0.091777175664902,0.137529909610748,0.249755099415779));
res += mul(Get(s2,0,-dy), float4x4(-0.041205320507288,-0.121844947338104,0.046913098543882,0.053745523095131,-0.095437787473202,0.100557804107666,0.165848419070244,-0.062801532447338,-0.083330236375332,0.013783296570182,-0.095234289765358,-0.028144476935267,0.281614184379578,0.167104050517082,0.054303154349327,0.219989627599716));
res += mul(Get(s2,0,0), float4x4(-0.019926434382796,-0.023901380598545,0.171655878424644,0.146286413073540,0.006820435635746,0.200842916965485,-0.026754846796393,-0.050764683634043,-0.216420039534569,-0.145674914121628,-0.163414970040321,-0.060618884861469,0.108390405774117,0.043461564928293,0.100403152406216,0.078992448747158));
res += mul(Get(s2,0,dy), float4x4(0.107188858091831,0.002232403028756,0.009783712215722,0.058026388287544,0.093759283423424,0.339386463165283,0.105403281748295,0.054440390318632,-0.379849731922150,-0.029556738212705,0.188103005290031,-0.279065370559692,0.205102130770683,0.050989981740713,0.185224309563637,0.289068073034286));
res += mul(Get(s2,dx,-dy), float4x4(-0.033270433545113,0.098189309239388,-0.054863456636667,-0.154784321784973,-0.198410049080849,0.103335373103619,0.023976143449545,-0.041825596243143,0.021721795201302,-0.053665123879910,-0.070703923702240,-0.072005994617939,0.232485532760620,0.153007313609123,0.186868980526924,0.135198995471001));
res += mul(Get(s2,dx,0), float4x4(0.051496226340532,0.042715497314930,-0.247445717453957,-0.047563303261995,-0.084941446781158,0.187237828969955,0.116840168833733,0.070965431630611,-0.032882027328014,0.033672809600830,-0.081971332430840,-0.110197052359581,0.078527316451073,-0.009873180650175,0.163260996341705,0.263987302780151));
res += mul(Get(s2,dx,dy), float4x4(-0.065856173634529,0.028521837666631,-0.021267311647534,-0.042018160223961,0.088722378015518,0.109719328582287,0.137458875775337,-0.078671649098396,-0.118074066936970,-0.055540256202221,-0.219777747988701,-0.225094452500343,0.168934360146523,-0.055310860276222,0.212505504488945,0.273366004228592));
res += mul(Get(s3,-dx,-dy), float4x4(0.086408592760563,-0.063084252178669,-0.054467514157295,-0.130664438009262,0.038402907550335,-0.230713218450546,-0.285892665386200,-0.055954687297344,-0.008215954527259,0.089144721627235,0.042441066354513,-0.038063809275627,-0.006628629751503,0.013033218681812,0.117102183401585,0.105092838406563));
res += mul(Get(s3,-dx,0), float4x4(0.013927244581282,-0.052604250609875,-0.012929366901517,0.091504611074924,0.221912115812302,0.091689132153988,0.214381128549576,-0.088766388595104,-0.115398406982422,0.018114166334271,-0.084628246724606,-0.059265255928040,0.119162417948246,0.061152875423431,-0.056871511042118,0.182004794478416));
res += mul(Get(s3,-dx,dy), float4x4(-0.015838578343391,-0.224491372704506,-0.089978322386742,0.097350582480431,-0.017019173130393,-0.006246407981962,-0.013766263611615,-0.106136091053486,-0.022198496386409,0.069656781852245,0.293661743402481,-0.345543295145035,0.151701211929321,0.009123877622187,-0.155917689204216,0.135010376572609));
res += mul(Get(s3,0,-dy), float4x4(-0.013567134737968,-0.176810309290886,0.009060121141374,0.054062023758888,0.084217689931393,0.193168923258781,-0.119148239493370,-0.088251225650311,-0.037739515304565,-0.016487073153257,0.009168369695544,0.062518775463104,-0.039313379675150,-0.019619176164269,0.109351806342602,0.018867924809456));
res += mul(Get(s3,0,0), float4x4(0.137464389204979,-0.242554932832718,-0.011347282677889,-0.050657328218222,0.127935513854027,-0.206137984991074,0.106575094163418,-0.023149723187089,-0.075104288756847,0.312439173460007,-0.097432076931000,-0.251197338104248,0.028280295431614,-0.019400371238589,0.055460169911385,-0.283952325582504));
res += mul(Get(s3,0,dy), float4x4(0.015181900002062,-0.239030778408051,-0.090506628155708,0.052695229649544,0.012853561900556,0.054615434259176,-0.056684799492359,-0.002044938970357,-0.063124589622021,0.024336859583855,0.030872410163283,0.079306356608868,0.105216011404991,0.157109543681145,-0.106475442647934,-0.051253158599138));
res += mul(Get(s3,dx,-dy), float4x4(0.143975168466568,-0.154347032308578,-0.035006567835808,-0.053717732429504,-0.105096429586411,0.057143244892359,-0.181639477610588,0.057166542857885,-0.123961411416531,0.025077892467380,-0.056920971721411,0.076091632246971,-0.070114746689796,0.007904181256890,-0.004309441894293,-0.072156541049480));
res += mul(Get(s3,dx,0), float4x4(-0.060964569449425,-0.227154344320297,-0.051259458065033,-0.086111769080162,0.045182727277279,-0.027724968269467,-0.039646707475185,-0.035539459437132,-0.235168889164925,-0.321428000926971,-0.029659451916814,0.200208559632301,-0.005353468470275,-0.015347407199442,-0.109271943569183,-0.109186820685863));
res += mul(Get(s3,dx,dy), float4x4(0.001507789129391,-0.290604025125504,-0.013666080310941,0.002161406213418,0.014155462384224,0.078250773251057,0.032659791409969,-0.023597706109285,0.182663768529892,-0.077481731772423,0.130667373538017,0.060321439057589,-0.046800784766674,0.032381765544415,-0.048804063349962,-0.018808614462614));
res += mul(Get(s4,-dx,-dy), float4x4(-0.084789961576462,0.040083847939968,0.003738756757230,0.016157222911716,0.108956851065159,0.032072857022285,0.096263736486435,0.071698389947414,0.130454868078232,0.203689858317375,0.095796860754490,-0.150613352656364,-0.068108744919300,-0.132887065410614,0.103956006467342,-0.011888552457094));
res += mul(Get(s4,-dx,0), float4x4(0.048792082816362,-0.033511172980070,0.020645070821047,-0.046338863670826,0.041485778987408,0.110771760344505,0.063973270356655,0.019844766706228,0.020503645762801,0.138623923063278,-0.122887723147869,0.200404644012451,-0.061812594532967,-0.065876953303814,0.305671215057373,-0.169994935393333));
res += mul(Get(s4,-dx,dy), float4x4(-0.011862466111779,-0.038205537945032,-0.053296547383070,-0.049829047173262,0.149457454681396,0.077713824808598,-0.002938497811556,0.127902477979660,-0.153488636016846,0.210471674799919,-0.064773805439472,-0.076911903917789,0.135446965694427,-0.077936552464962,0.019582353532314,-0.074285283684731));
res += mul(Get(s4,0,-dy), float4x4(-0.059845056384802,0.204944506287575,0.099539317190647,-0.285552322864532,0.048163291066885,-0.024287199601531,0.120855323970318,0.061713881790638,0.132479995489120,-0.050978656858206,-0.091570928692818,0.060926910489798,-0.152217164635658,-0.134357184171677,-0.029200173914433,0.022391295060515));
res += mul(Get(s4,0,0), float4x4(-0.129203036427498,-0.048480901867151,0.044769890606403,-0.091584339737892,-0.043350141495466,0.084107704460621,0.036020550876856,0.161118805408478,-0.009320492856205,0.238426446914673,-0.021279368549585,-0.029658988118172,-0.083319164812565,-0.305037945508957,-0.179895892739296,-0.072204232215881));
res += mul(Get(s4,0,dy), float4x4(0.128005266189575,0.048671614378691,0.008157009258866,-0.077232927083969,0.116949245333672,-0.012233643792570,0.014145883731544,0.029327236115932,0.054615531116724,-0.065149210393429,-0.075302153825760,-0.036934591829777,0.017782775685191,-0.072283685207367,-0.006634807214141,-0.385232001543045));
res += mul(Get(s4,dx,-dy), float4x4(-0.093723990023136,-0.007934097200632,-0.152047380805016,0.049723494797945,0.107794128358364,0.048043347895145,0.026258278638124,0.137148305773735,0.097272187471390,-0.053187027573586,0.133994683623314,0.024310817942023,-0.067376561462879,-0.111946515738964,-0.065821550786495,0.036174599081278));
res += mul(Get(s4,dx,0), float4x4(-0.149298161268234,0.011726802214980,-0.146985620260239,0.020769475027919,0.017795048654079,0.007261994760484,0.013449092395604,0.050487410277128,0.075244925916195,-0.112722173333168,0.086671158671379,0.058662086725235,0.061148781329393,0.128292500972748,-0.149365678429604,-0.122413530945778));
res += mul(Get(s4,dx,dy), float4x4(0.042400937527418,-0.055143587291241,0.032729305326939,0.050047673285007,-0.023137835785747,0.031763426959515,0.056887131184340,-0.139757096767426,-0.049177322536707,-0.011767550371587,0.037357546389103,-0.006150736939162,-0.102447271347046,-0.057349730283022,-0.138916984200478,0.044722005724907));
res += mul(Get(s5,-dx,-dy), float4x4(0.059406388550997,-0.083906561136246,-0.254464358091354,0.099650353193283,-0.185870110988617,-0.108801603317261,0.061212059110403,-0.050633303821087,0.052477013319731,-0.053083445876837,-0.131486758589745,-0.038330551236868,0.229029446840286,-0.044731803238392,0.013589458540082,0.316810905933380));
res += mul(Get(s5,-dx,0), float4x4(0.057674590498209,0.016008963808417,-0.079979591071606,-0.176389425992966,-0.282573878765106,-0.105789721012115,-0.035551626235247,-0.061368189752102,-0.125642031431198,-0.126313969492912,-0.223368421196938,0.100242428481579,0.177398756146431,0.014775921590626,-0.045571807771921,0.269730359315872));
res += mul(Get(s5,-dx,dy), float4x4(-0.020349508151412,-0.080034211277962,0.019510366022587,-0.074335031211376,-0.257855147123337,-0.110049121081829,0.197238087654114,-0.050624746829271,-0.011156405322254,-0.039701517671347,0.067536860704422,0.115082740783691,0.241751357913017,-0.172126621007919,-0.015863221138716,0.080788314342499));
res += mul(Get(s5,0,-dy), float4x4(0.194922178983688,0.116462901234627,-0.091719485819340,-0.033760067075491,-0.175825282931328,-0.035351406782866,-0.128213033080101,0.005954767111689,0.025390051305294,0.120902091264725,0.065680265426636,0.010575586929917,0.240800708532333,-0.085925050079823,-0.047969389706850,0.112124115228653));
res += mul(Get(s5,0,0), float4x4(0.103024914860725,0.079380594193935,-0.195385470986366,0.103011801838875,-0.241487979888916,-0.081996634602547,0.055795665830374,-0.073971115052700,0.032859742641449,0.040162641555071,0.372545748949051,-0.069398939609528,0.178838625550270,-0.082904979586601,0.014681884087622,-0.055351890623569));
res += mul(Get(s5,0,dy), float4x4(0.058262422680855,-0.194842666387558,-0.039409834891558,0.137550756335258,-0.293000310659409,-0.057384967803955,-0.021206606179476,-0.019795970991254,0.028421616181731,-0.100079141557217,0.150486156344414,-0.234048351645470,0.114027455449104,-0.195809200406075,0.110931925475597,-0.112849466502666));
res += mul(Get(s5,dx,-dy), float4x4(0.041631743311882,0.162966400384903,-0.010431390255690,0.092476695775986,-0.188774093985558,0.078092448413372,-0.030158774927258,0.038886476308107,-0.078968554735184,0.069136738777161,0.039493873715401,0.053517211228609,0.197098463773727,0.000909873167984,0.017487777397037,-0.069441474974155));
res += mul(Get(s5,dx,0), float4x4(-0.069360569119453,0.252665132284164,0.055820707231760,0.064985841512680,-0.124322488903999,0.055522598326206,-0.125564306974411,-0.038473792374134,-0.075908258557320,0.066309809684753,-0.016466708853841,0.119243279099464,0.073935732245445,-0.206007450819016,0.109503023326397,0.078198559582233));
res += mul(Get(s5,dx,dy), float4x4(-0.117142841219902,-0.151817709207535,-0.023872841149569,0.198436945676804,-0.096759699285030,0.096652865409851,-0.029861673712730,0.049775101244450,0.092597901821136,-0.101997733116150,-0.026268986985087,0.076053485274315,-0.023377327248454,-0.216373175382614,0.077639400959015,0.031445801258087));
res += tex2D(s6, tex);
res = max(float4(0, 0, 0, 0), res) + float4(0.811995327472687,0.463717877864838,0.258293718099594,0.094248279929161) * min(float4(0, 0, 0, 0), res);
return res;
}