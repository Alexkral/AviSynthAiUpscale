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
float4 res = float4(0.087006084620953,0.009638064540923,-0.131763651967049,0.107311993837357);
res += mul(Get(s0,-dx,-dy), float4x4(-0.071825861930847,0.162859842181206,-0.249851971864700,-0.002145416336134,-0.024029299616814,0.058888625353575,-0.086823545396328,-0.182374253869057,-0.035829551517963,0.026141395792365,-0.060220722109079,0.111611142754555,-0.017598466947675,0.086787745356560,-0.205268800258636,-0.160334631800652));
res += mul(Get(s0,-dx,0), float4x4(-0.102353066205978,-0.065771430730820,-0.031949855387211,-0.038878321647644,0.049203768372536,0.134309127926826,-0.044219881296158,-0.023704197257757,0.250989943742752,-0.090717248618603,0.093895189464092,-0.043774913996458,0.064008839428425,0.020384456962347,0.061341352760792,-0.225441232323647));
res += mul(Get(s0,-dx,dy), float4x4(-0.043648403137922,-0.063111901283264,-0.005901632364839,0.059466738253832,0.236722573637962,0.092451587319374,-0.017282640561461,0.016244713217020,0.159117087721825,0.043292302638292,0.061248481273651,0.049389578402042,0.076149173080921,0.074099421501160,-0.204082548618317,-0.005083391908556));
res += mul(Get(s0,0,-dy), float4x4(-0.162276729941368,0.077175296843052,-0.251232594251633,0.065212555229664,-0.055477533489466,-0.022673381492496,-0.037413060665131,-0.221237376332283,-0.174024909734726,0.120388075709343,-0.109613992273808,-0.074068896472454,-0.027208458632231,0.004811287391931,-0.139276117086411,-0.294511020183563));
res += mul(Get(s0,0,0), float4x4(-0.004260588437319,0.040473587810993,-0.445647984743118,0.366411745548248,0.040274988859892,0.021032968536019,-0.168804183602333,-0.130732387304306,0.007608804386109,-0.092315129935741,-0.309708565473557,-0.023344181478024,0.048936519771814,0.029507493600249,-0.044375013560057,-0.226182922720909));
res += mul(Get(s0,0,dy), float4x4(0.052176047116518,-0.018383666872978,0.263562440872192,-0.061030454933643,-0.101914040744305,0.068283967673779,-0.088424414396286,-0.165335983037949,0.159120142459869,-0.002531923819333,0.204037144780159,0.074850551784039,-0.041974049061537,0.141450151801109,-0.126565873622894,-0.154814407229424));
res += mul(Get(s0,dx,-dy), float4x4(0.125759661197662,0.006515011657029,0.134126022458076,0.047860782593489,-0.085556976497173,0.049605209380388,-0.104834914207458,-0.021808924153447,-0.102818086743355,0.036143697798252,-0.069250486791134,-0.080538794398308,-0.056249368935823,0.055957451462746,-0.030233634635806,-0.005434234626591));
res += mul(Get(s0,dx,0), float4x4(-0.036143369972706,-0.056063372641802,-0.124325856566429,-0.099244810640812,-0.242039799690247,0.260830342769623,-0.111587420105934,-0.035077549517155,-0.069027282297611,-0.071475103497505,-0.082590229809284,-0.076610147953033,-0.074021548032761,0.026717923581600,-0.285688698291779,-0.107885465025902));
res += mul(Get(s0,dx,dy), float4x4(0.079085327684879,-0.043717686086893,0.168432042002678,-0.173716157674789,0.087662726640701,0.065703995525837,0.002605600282550,-0.105756603181362,0.215100362896919,-0.005549197550863,0.015454660169780,-0.032718241214752,-0.039548158645630,0.194520518183708,0.093384020030499,-0.059274766594172));
res += mul(Get(s1,-dx,-dy), float4x4(-0.011455208994448,-0.082100316882133,0.060403715819120,0.137523397803307,-0.012885835953057,0.155498325824738,0.050760451704264,-0.146791338920593,-0.045763235539198,-0.066728994250298,0.037373617291451,0.133563235402107,0.124210298061371,-0.082087434828281,0.119639806449413,0.170128867030144));
res += mul(Get(s1,-dx,0), float4x4(0.065789043903351,-0.057755816727877,0.096230894327164,-0.000419794087065,-0.020305830985308,0.147862270474434,0.116759523749352,-0.065719380974770,0.155705124139786,0.141645118594170,-0.132357493042946,-0.063121713697910,-0.084705792367458,0.112266629934311,-0.039661452174187,0.422162353992462));
res += mul(Get(s1,-dx,dy), float4x4(0.023171316832304,-0.148192614316940,0.074547901749611,0.045791104435921,-0.087460376322269,0.088527701795101,-0.073696777224541,-0.079601325094700,0.009139238856733,0.056713920086622,-0.044480953365564,-0.186950713396072,-0.056486405432224,0.106641240417957,-0.285801082849503,0.056668978184462));
res += mul(Get(s1,0,-dy), float4x4(0.215201705694199,-0.143328860402107,0.038035847246647,0.150912776589394,-0.036158517003059,0.166036739945412,0.215381428599358,-0.049805656075478,0.159369692206383,-0.114319398999214,0.028714036568999,0.108354598283768,-0.056928638368845,0.013562904670835,0.009837116114795,0.220291256904602));
res += mul(Get(s1,0,0), float4x4(0.030426278710365,-0.153801158070564,0.174035936594009,0.109376303851604,0.061355777084827,0.103313446044922,0.161680370569229,-0.127366542816162,-0.044456273317337,-0.284326136112213,-0.017454240471125,0.080748565495014,0.190892964601517,0.063962697982788,-0.172725692391396,0.319308489561081));
res += mul(Get(s1,0,dy), float4x4(0.073791459202766,-0.104241937398911,0.194509059190750,-0.008924488909543,0.085479438304901,-0.148043423891068,0.154803633689880,-0.201644971966743,-0.070493817329407,0.044141277670860,0.053240679204464,0.061037831008434,0.000158036302309,0.084121935069561,0.059867016971111,0.085350036621094));
res += mul(Get(s1,dx,-dy), float4x4(0.099565587937832,-0.163140848278999,0.045150056481361,0.159401819109917,-0.093752123415470,0.175811991095543,-0.009003698825836,-0.050850521773100,0.024583794176579,-0.018378220498562,0.023147424682975,0.028445864096284,0.070457555353642,-0.017562123015523,0.105659544467926,0.082527190446854));
res += mul(Get(s1,dx,0), float4x4(0.121964320540428,-0.298711389303207,-0.075246214866638,0.170955553650856,-0.158699154853821,0.043975837528706,0.128269478678703,-0.281186401844025,-0.163985863327980,0.054518543183804,-0.050958991050720,-0.075251735746861,-0.040055338293314,0.043190658092499,-0.013785325922072,0.028824187815189));
res += mul(Get(s1,dx,dy), float4x4(-0.036606654524803,-0.215660989284515,0.183417484164238,-0.003104999661446,-0.170500531792641,-0.007933179847896,0.004969518631697,0.025121835991740,-0.156174689531326,0.110456451773643,0.108432620763779,-0.091576300561428,0.253821074962616,0.076741233468056,-0.094862356781960,0.090446040034294));
res += mul(Get(s2,-dx,-dy), float4x4(-0.043969877064228,0.038594216108322,0.062652975320816,0.075120627880096,-0.013331470079720,0.090542316436768,-0.048700049519539,-0.218850150704384,-0.158460736274719,0.011594116687775,0.034951396286488,-0.244125470519066,-0.012731636874378,-0.050540793687105,-0.100462771952152,0.128530725836754));
res += mul(Get(s2,-dx,0), float4x4(-0.188148289918900,0.016742575913668,0.140490740537643,0.099022887647152,-0.031934194266796,0.051491368561983,-0.056045502424240,-0.099831618368626,-0.238489270210266,0.082291722297668,-0.004608888644725,-0.138902440667152,0.078434176743031,-0.268600910902023,-0.054343879222870,0.283123493194580));
res += mul(Get(s2,-dx,dy), float4x4(-0.063952095806599,0.110647916793823,0.164485439658165,0.063971169292927,-0.057552937418222,0.081665158271790,-0.136299461126328,-0.098312206566334,-0.006843983661383,0.102649092674255,-0.237999081611633,-0.298546880483627,-0.048863537609577,0.051259614527225,0.238609030842781,0.008056976832449));
res += mul(Get(s2,0,-dy), float4x4(-0.041252024471760,-0.037677165120840,0.070254221558571,0.082569226622581,-0.179735794663429,0.063041068613529,-0.051253054291010,-0.202713474631310,0.043810531497002,-0.074651882052422,0.046823680400848,-0.277754724025726,0.027833694592118,-0.104806251823902,0.164618328213692,0.234606772661209));
res += mul(Get(s2,0,0), float4x4(0.081567220389843,-0.063475333154202,0.121483542025089,0.039217565208673,0.028432084247470,-0.001677150605246,-0.022958151996136,-0.099356867372990,-0.030047290027142,-0.026431677863002,-0.047083251178265,-0.289052546024323,-0.061495672911406,0.122449852526188,0.025801556184888,-0.161579251289368));
res += mul(Get(s2,0,dy), float4x4(0.065266512334347,0.022342218086123,-0.173416823148727,0.055600713938475,-0.081589251756668,-0.023176126182079,-0.146924436092377,-0.089713439345360,0.076448597013950,0.132424905896187,-0.024318898096681,-0.239947989583015,-0.062604561448097,0.055036559700966,-0.019126022234559,0.009819355793297));
res += mul(Get(s2,dx,-dy), float4x4(0.084685392677784,-0.068670012056828,0.101316444575787,0.208242669701576,-0.116301640868187,0.102586381137371,-0.105708435177803,-0.149505227804184,0.155997455120087,0.040907829999924,0.087675757706165,0.017431318759918,-0.008532443083823,0.017158443108201,0.132734119892120,0.048832789063454));
res += mul(Get(s2,dx,0), float4x4(-0.173153877258301,-0.011084754951298,0.041486170142889,0.141268461942673,-0.089288517832756,-0.001481017097831,-0.133093431591988,-0.078367479145527,-0.000650680216495,0.004645331762731,-0.072030231356621,0.143352121114731,-0.024118583649397,-0.033824022859335,-0.006532345432788,0.123707771301270));
res += mul(Get(s2,dx,dy), float4x4(-0.035208795219660,0.080290742218494,-0.010739834047854,0.110035330057144,-0.090956799685955,-0.005794484168291,-0.219023838639259,-0.077557392418385,-0.105393022298813,-0.054770812392235,-0.131344392895699,0.068527974188328,-0.193769723176956,-0.087090089917183,-0.130293875932693,-0.008499926887453));
res += mul(Get(s3,-dx,-dy), float4x4(0.132377237081528,0.105959005653858,-0.083335705101490,-0.139068037271500,-0.020308937877417,-0.026108736172318,0.002987939398736,0.028764773160219,0.014630489051342,0.154239118099213,-0.256201952695847,-0.113937109708786,-0.092086240649223,0.045315682888031,-0.081329405307770,0.338839918375015));
res += mul(Get(s3,-dx,0), float4x4(0.115428738296032,-0.089275136590004,0.057161908596754,-0.144814014434814,0.033839598298073,-0.011503783054650,-0.019540945068002,-0.115367516875267,0.146216645836830,0.013278304599226,-0.030775744467974,-0.015254984609783,0.005935998633504,0.178707748651505,-0.151427537202835,-0.146124765276909));
res += mul(Get(s3,-dx,dy), float4x4(0.142489567399025,0.013777952641249,0.034549314528704,-0.001366362557746,-0.187521755695343,-0.021285278722644,-0.099598966538906,-0.015477386303246,0.121954753994942,-0.008704384788871,0.038862057030201,-0.001170811941847,0.056070186197758,0.033353429287672,0.079629287123680,0.107156626880169));
res += mul(Get(s3,0,-dy), float4x4(-0.098586201667786,0.133813858032227,-0.173011109232903,-0.108326986432076,0.345449209213257,-0.154940322041512,0.015531239099801,0.130327418446541,0.020891115069389,0.020046161487699,0.006943390704691,0.093170255422592,0.009597176685929,-0.036669146269560,0.220822736620903,-0.154431328177452));
res += mul(Get(s3,0,0), float4x4(0.177095830440521,-0.199497655034065,0.152466520667076,-0.150116458535194,-0.086639001965523,-0.009398090653121,0.007700013462454,-0.096950381994247,-0.091503448784351,-0.064440622925758,0.113065868616104,-0.234078451991081,-0.113055698573589,0.010636373423040,-0.115602791309357,0.003367761615664));
res += mul(Get(s3,0,dy), float4x4(-0.016716944053769,-0.053171969950199,0.022652084007859,0.046531956642866,-0.119833409786224,-0.087155036628246,0.265391916036606,0.203986629843712,0.000558725034352,-0.061798475682735,0.008438240736723,-0.056323207914829,0.089242324233055,0.045250941067934,-0.001905914861709,0.145455271005630));
res += mul(Get(s3,dx,-dy), float4x4(-0.172382593154907,0.123112976551056,-0.207293063402176,0.056276571005583,-0.097552843391895,-0.085618272423744,0.020189080387354,-0.011787877418101,-0.149485588073730,0.013963870704174,0.025936163961887,-0.075427740812302,0.045091569423676,-0.120084643363953,-0.030196595937014,0.060166601091623));
res += mul(Get(s3,dx,0), float4x4(0.014651325531304,-0.135044902563095,0.198530048131943,0.001707002171315,0.269413501024246,-0.125302791595459,0.093728661537170,-0.061409596353769,0.296663641929626,-0.198638990521431,0.041135475039482,-0.130507588386536,0.109461680054665,-0.053701154887676,0.061153855174780,0.170130953192711));
res += mul(Get(s3,dx,dy), float4x4(0.007007489446551,0.056972764432430,0.052356567233801,0.099089473485947,0.184384614229202,-0.004530785139650,0.012340481393039,0.011218633502722,-0.011006176471710,-0.008686539717019,-0.053407821804285,0.008336714468896,0.143703296780586,-0.014458863064647,0.103554643690586,-0.006279655732214));
res += mul(Get(s4,-dx,-dy), float4x4(-0.054903637617826,0.049658276140690,0.123098991811275,-0.267715901136398,-0.003836137242615,-0.264907568693161,0.002344884909689,-0.078737467527390,-0.051839474588633,-0.086453743278980,-0.029715042561293,0.068308480083942,-0.126943349838257,0.010792956687510,0.042541075497866,0.090037502348423));
res += mul(Get(s4,-dx,0), float4x4(-0.130234360694885,0.116002738475800,-0.014233431778848,-0.278182476758957,-0.025696512311697,0.216351091861725,0.030493380501866,0.041367743164301,0.006957108620554,-0.195867776870728,-0.197389930486679,0.176866456866264,0.048382069915533,0.044116809964180,0.019089980050921,-0.149080038070679));
res += mul(Get(s4,-dx,dy), float4x4(0.019198775291443,0.046906042844057,-0.039179291576147,-0.359919309616089,-0.125766903162003,0.267743378877640,-0.096553280949593,0.038869693875313,0.076572477817535,-0.138803511857986,0.195059061050415,0.088126055896282,-0.110363386571407,0.015479309484363,-0.008801617659628,0.046239949762821));
res += mul(Get(s4,0,-dy), float4x4(-0.092013321816921,-0.023859402164817,0.101709142327309,-0.284151375293732,0.050462968647480,-0.340038210153580,-0.067664615809917,-0.058540482074022,0.060549207031727,-0.120898760855198,-0.004593905527145,0.119454145431519,0.063922844827175,0.021933607757092,0.098373085260391,0.089218907058239));
res += mul(Get(s4,0,0), float4x4(-0.050256256014109,0.135348126292229,0.224139571189880,-0.370627284049988,-0.062215711921453,0.383249998092651,0.071833670139313,0.080365970730782,-0.020435614511371,0.240658447146416,-0.057088576257229,0.075466267764568,-0.007219981867820,0.091461576521397,-0.005420755129308,-0.004096440039575));
res += mul(Get(s4,0,dy), float4x4(-0.033580247312784,-0.024625008925796,0.017679894343019,-0.084378898143768,-0.109857767820358,0.123775549232960,-0.114440299570560,-0.076409317553043,0.185866802930832,0.043175913393497,-0.095154926180840,-0.047654207795858,-0.032060638070107,-0.107707999646664,0.069162927567959,0.012817339971662));
res += mul(Get(s4,dx,-dy), float4x4(0.103944368660450,-0.040065497159958,0.104641407728195,-0.056538525968790,-0.147760480642319,-0.172746941447258,0.074907466769218,0.100114442408085,-0.095310419797897,-0.039698444306850,0.041968159377575,0.098145037889481,-0.107279516756535,0.054433815181255,0.072825029492378,-0.111500725150108));
res += mul(Get(s4,dx,0), float4x4(0.118816472589970,0.058770243078470,0.026380471885204,-0.147384703159332,0.039184253662825,-0.195946872234344,0.001128726173192,0.008792865090072,0.043240975588560,0.184356063604355,0.220878079533577,-0.073845967650414,0.232463300228119,0.077679000794888,0.146900191903114,-0.128798112273216));
res += mul(Get(s4,dx,dy), float4x4(-0.171241894364357,0.050555005669594,-0.096712708473206,-0.148626968264580,-0.138238623738289,0.061041716486216,-0.045926216989756,-0.086209297180176,-0.039609108120203,0.280978709459305,-0.282588899135590,0.001597773865797,0.119469560682774,-0.001130576943979,0.281781554222107,0.014625185169280));
res += mul(Get(s5,-dx,-dy), float4x4(-0.037252932786942,-0.155525565147400,0.230205848813057,0.086063750088215,-0.182053953409195,0.146882310509682,0.142912223935127,-0.382888317108154,-0.052029062062502,0.008291483856738,0.252236008644104,0.013730039820075,0.074624828994274,0.127781003713608,-0.047106973826885,-0.142537683248520));
res += mul(Get(s5,-dx,0), float4x4(0.155024871230125,-0.354903012514114,0.078908041119576,0.005847543478012,-0.105485253036022,0.059009511023760,-0.102924734354019,-0.225612461566925,0.078501574695110,0.165492147207260,-0.091823853552341,0.000560071493965,-0.094574593007565,0.038341924548149,0.142328605055809,0.153076902031898));
res += mul(Get(s5,-dx,dy), float4x4(-0.070082068443298,-0.167370975017548,0.083921559154987,0.114232175052166,-0.039641994982958,0.113503113389015,0.030732128769159,-0.009175398387015,-0.204348519444466,0.019313596189022,-0.205679953098297,0.042921464890242,-0.119606129825115,0.089010477066040,0.109536737203598,0.035480502992868));
res += mul(Get(s5,0,-dy), float4x4(0.069727092981339,-0.152123510837555,0.109943650662899,-0.045911014080048,-0.113616660237312,-0.009615682065487,0.018052607774734,-0.300478458404541,0.033030588179827,-0.067115932703018,0.363346964120865,-0.008850039914250,-0.002893988043070,0.143117755651474,-0.227535322308540,-0.011569160036743));
res += mul(Get(s5,0,0), float4x4(-0.005928906146437,0.509051501750946,-0.111587047576904,-0.119517765939236,0.019783217459917,-0.056288577616215,0.035407919436693,-0.150873288512230,-0.079704433679581,0.395375251770020,-0.233496740460396,-0.020680960267782,0.097601138055325,0.164188966155052,0.223815947771072,0.028836069628596));
res += mul(Get(s5,0,dy), float4x4(0.014329205267131,0.082214586436749,-0.023031350225210,0.088076539337635,-0.019908409565687,-0.138293176889420,-0.155983194708824,-0.012208217754960,-0.019407261162996,0.107610933482647,-0.226428598165512,-0.078888811171055,-0.113716438412666,0.099518798291683,-0.052425857633352,-0.037426032125950));
res += mul(Get(s5,dx,-dy), float4x4(0.050780918449163,-0.090219393372536,0.035934027284384,0.103090308606625,-0.155038744211197,0.063516445457935,-0.039313614368439,-0.011544232256711,-0.053920216858387,0.000566639588214,0.130829900503159,0.044326853007078,0.004175504203886,0.075715102255344,-0.189054369926453,0.073129482567310));
res += mul(Get(s5,dx,0), float4x4(0.060642618685961,0.100467324256897,-0.287771552801132,0.084132991731167,0.040283627808094,0.058837834745646,-0.136415258049965,0.152464374899864,0.152583539485931,-0.149485170841217,-0.071787334978580,0.190052881836891,0.076713100075722,-0.049518227577209,-0.006819174624979,-0.027598539367318));
res += mul(Get(s5,dx,dy), float4x4(-0.030280286446214,0.075342185795307,-0.117369726300240,-0.115662641823292,-0.029660457745194,0.061517033725977,0.153504788875580,-0.058973044157028,0.082496464252472,-0.124342583119869,-0.300414979457855,0.012485318817198,-0.027032565325499,0.110771797597408,-0.083780042827129,-0.082337826490402));
res += tex2D(s6, tex);
res = max(float4(0, 0, 0, 0), res) + float4(0.901760876178741,0.046652160584927,-0.162732660770416,0.395115613937378) * min(float4(0, 0, 0, 0), res);
return res;
}
