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
float4 res = float4(0.070461571216583,-0.108242712914944,-0.117704689502716,0.000208042867598);
res += mul(Get(s0,-dx,-dy), float4x4(0.101117178797722,-0.142576232552528,0.041789244860411,-0.018700454384089,-0.056146416813135,0.114069595932961,0.116815492510796,0.026077860966325,-0.061112709343433,-0.050586625933647,-0.034130230545998,0.011320628225803,0.135483786463737,-0.072356589138508,-0.115813486278057,-0.000646624830551));
res += mul(Get(s0,-dx,0), float4x4(-0.065090894699097,-0.171332433819771,-0.005130935460329,0.066522128880024,0.281270772218704,-0.056473195552826,-0.007464613299817,0.108935505151749,0.026322713121772,0.067253306508064,0.042653638869524,-0.054576326161623,-0.105806916952133,0.058771621435881,-0.029778692871332,0.049508329480886));
res += mul(Get(s0,-dx,dy), float4x4(-0.087529964745045,-0.016766237094998,-0.085599072277546,-0.000736393965781,0.068307444453239,0.010032936930656,0.018346536904573,0.037958845496178,0.032993093132973,-0.119393438100815,0.017035191878676,-0.001900244387798,0.034756086766720,-0.238270953297615,0.301637113094330,-0.107676379382610));
res += mul(Get(s0,0,-dy), float4x4(-0.183748900890350,-0.034583173692226,-0.048333015292883,0.116810478270054,-0.020771337673068,0.031554453074932,0.124996200203896,-0.042917061597109,0.124179005622864,0.037833377718925,-0.260028421878815,-0.035144373774529,-0.080886550247669,-0.000086735148216,0.012542832642794,0.040294874459505));
res += mul(Get(s0,0,0), float4x4(-0.091930508613586,-0.093842558562756,-0.006999332923442,-0.100941613316536,0.125965386629105,-0.035083647817373,0.109158821403980,-0.029165929183364,0.034932903945446,0.088873945176601,0.240116238594055,0.106713779270649,-0.072085104882717,-0.033743038773537,-0.053094062954187,-0.119311667978764));
res += mul(Get(s0,0,dy), float4x4(0.032710671424866,-0.095866240561008,-0.060528397560120,0.033026251941919,-0.000483135430841,-0.003558707656339,0.103010691702366,0.036925360560417,0.044865224510431,0.112917959690094,0.256799936294556,0.189651340246201,0.090266689658165,-0.097811996936798,-0.094211965799332,-0.091101042926311));
res += mul(Get(s0,dx,-dy), float4x4(-0.093910276889801,0.013084012083709,0.019074726849794,0.007010133937001,-0.003838026663288,0.095963805913925,0.055826138705015,0.008328360505402,0.109315857291222,-0.121370740234852,-0.144139379262924,0.005473584402353,-0.177157878875732,-0.096760153770447,0.205656364560127,0.045060921460390));
res += mul(Get(s0,dx,0), float4x4(0.015051942318678,-0.054243858903646,-0.066242039203644,0.080284819006920,0.073195978999138,-0.009584160521626,0.122512750327587,-0.010493174195290,-0.023611167445779,0.032935973256826,0.001154830912128,0.206526532769203,0.049505446106195,0.017105823382735,0.078329205513000,-0.165323466062546));
res += mul(Get(s0,dx,dy), float4x4(0.121476106345654,-0.106065943837166,0.061371508985758,-0.166428387165070,0.015004183165729,0.054402146488428,0.017460644245148,0.005279791075736,-0.003603339660913,0.017731161788106,-0.055137969553471,-0.009299633093178,0.156843408942223,0.045420631766319,-0.156434267759323,-0.072601959109306));
res += mul(Get(s1,-dx,-dy), float4x4(0.059902623295784,-0.172146245837212,-0.002916714409366,-0.039412252604961,-0.053510367870331,0.209063500165939,0.041065763682127,-0.070626802742481,-0.237789273262024,0.124748036265373,0.141559183597565,-0.021181162446737,0.009160540066659,0.011019047349691,-0.035754099488258,0.021432185545564));
res += mul(Get(s1,-dx,0), float4x4(0.067786999046803,-0.017367701977491,0.078317195177078,0.042286369949579,-0.137172982096672,0.332027375698090,-0.048048019409180,0.018754681572318,0.070611596107483,0.088041409850121,0.025442978367209,-0.030810836702585,-0.046063020825386,0.044656250625849,-0.053446736186743,0.034673139452934));
res += mul(Get(s1,-dx,dy), float4x4(-0.084804996848106,-0.103454172611237,0.009338659234345,0.060900237411261,-0.066309794783592,0.161938786506653,-0.074164204299450,0.099497929215431,0.071983896195889,0.172590777277946,0.009805772453547,-0.080092206597328,0.005382255651057,-0.046973548829556,0.004580507054925,0.003412672085688));
res += mul(Get(s1,0,-dy), float4x4(0.036156076937914,0.064799316227436,0.006996962707490,-0.056865327060223,-0.113259658217430,0.003445710288361,0.010878078639507,0.079473301768303,-0.326779961585999,0.029587306082249,0.161658272147179,0.007808745838702,-0.026044387370348,0.015518180094659,-0.063900247216225,0.014995939098299));
res += mul(Get(s1,0,0), float4x4(0.056273460388184,0.174662977457047,0.013721521012485,-0.024081913754344,-0.144739270210266,0.250097572803497,0.079372778534889,0.210278406739235,0.160613626241684,0.006120869424194,-0.088024824857712,0.002369745401666,-0.079349383711815,-0.050083458423615,-0.067716695368290,0.078225873410702));
res += mul(Get(s1,0,dy), float4x4(-0.017144815996289,-0.163006290793419,0.026954732835293,0.132876694202423,-0.109434016048908,0.293031275272369,0.031019952148199,0.017234766855836,0.032090663909912,-0.027039235457778,-0.056587111204863,-0.149576961994171,-0.057404521852732,-0.067403331398964,-0.020752159878612,0.089627020061016));
res += mul(Get(s1,dx,-dy), float4x4(-0.016121763736010,-0.064811788499355,0.023794196546078,-0.000959440541919,-0.248491734266281,0.250722646713257,0.020687762647867,0.159088253974915,-0.145335525274277,0.275923997163773,0.001650076243095,0.089180760085583,-0.015027318149805,-0.002893978962675,-0.048687618225813,0.026049779728055));
res += mul(Get(s1,dx,0), float4x4(0.041801299899817,0.016626084223390,0.042339518666267,-0.007190057076514,-0.126836121082306,0.244500830769539,-0.059235043823719,0.107260093092918,0.029564945027232,-0.160666853189468,-0.182809218764305,-0.018452083691955,-0.007304479833692,-0.085950545966625,-0.043702188879251,0.021885249763727));
res += mul(Get(s1,dx,dy), float4x4(-0.000730817555450,-0.012490465305746,0.010150143876672,-0.008094222284853,-0.071985192596912,0.139937222003937,0.021459365263581,0.185117989778519,0.031402070075274,0.049273174256086,-0.003074449254200,0.069938905537128,-0.010608053766191,-0.004729163367301,-0.030243575572968,0.056630730628967));
res += mul(Get(s2,-dx,-dy), float4x4(0.047823362052441,0.214216351509094,0.115650311112404,-0.019003512337804,-0.027750376611948,-0.108710616827011,-0.072882339358330,0.029755884781480,-0.128294765949249,0.065087281167507,-0.077720001339912,0.068334758281708,0.158757567405701,0.227995857596397,0.090975880622864,-0.068518631160259));
res += mul(Get(s2,-dx,0), float4x4(-0.200925096869469,0.000335450778948,0.086057402193546,0.309373587369919,-0.221710190176964,-0.241629838943481,-0.023749515414238,0.032706167548895,0.105391874909401,-0.057390477508307,-0.138183906674385,0.014952252618968,0.164933070540428,0.169520929455757,-0.047623872756958,-0.019789038226008));
res += mul(Get(s2,-dx,dy), float4x4(0.288790225982666,-0.256135731935501,0.015457412227988,0.032331794500351,-0.054483510553837,0.010268061421812,0.156015709042549,0.031270440667868,0.141852721571922,-0.036735512316227,-0.026746200397611,0.140545994043350,0.075016297399998,0.025501037016511,0.075507134199142,0.013152868486941));
res += mul(Get(s2,0,-dy), float4x4(0.141271129250526,-0.048939723521471,0.014669300056994,0.075208023190498,-0.090832419693470,-0.033656492829323,-0.022686472162604,0.001065939781256,0.081128515303135,-0.019785474985838,0.021497560665011,0.014982685446739,-0.041762463748455,-0.044148735702038,0.038020972162485,-0.044525898993015));
res += mul(Get(s2,0,0), float4x4(-0.027166027575731,0.020834116265178,0.014540793374181,0.113056756556034,-0.328786313533783,0.013346422463655,0.004003349691629,0.006911886390299,0.108847334980965,0.029906390234828,0.001180064631626,0.073524087667465,0.063453733921051,-0.064802229404449,-0.005533101037145,0.016082849353552));
res += mul(Get(s2,0,dy), float4x4(-0.116783246397972,-0.136991724371910,-0.153754338622093,0.049666129052639,-0.066402338445187,-0.158893018960953,0.103560835123062,-0.042919103056192,0.215328544378281,-0.092910155653954,0.062938317656517,-0.110729843378067,-0.290833562612534,0.134944409132004,0.058280546218157,0.009124838747084));
res += mul(Get(s2,dx,-dy), float4x4(0.050556600093842,-0.035554070025682,0.022823337465525,0.133589312434196,-0.194476544857025,-0.055706799030304,0.020674521103501,0.042668499052525,-0.089058622717857,-0.065676920115948,0.073183804750443,-0.029985373839736,0.114359267055988,-0.057982914149761,-0.044781215488911,-0.097784228622913));
res += mul(Get(s2,dx,0), float4x4(0.087461188435555,0.217131748795509,-0.019062893465161,0.081781767308712,-0.070136815309525,0.102294653654099,-0.016561983153224,-0.055050946772099,0.118275284767151,0.043373763561249,0.039326317608356,-0.065405048429966,0.144696652889252,-0.145257696509361,-0.094509571790695,0.138871133327484));
res += mul(Get(s2,dx,dy), float4x4(0.077828116714954,0.009207638911903,-0.024961313232780,0.163285180926323,-0.205181777477264,-0.127207562327385,-0.035365927964449,-0.025149710476398,0.058814611285925,0.020608657971025,0.066560797393322,-0.062250997871161,-0.042846217751503,0.213702812790871,0.051068976521492,0.036085069179535));
res += mul(Get(s3,-dx,-dy), float4x4(0.051703471690416,0.017690086737275,-0.017662489786744,-0.006652556359768,0.006453396752477,-0.026338486000896,0.066996335983276,-0.012258326634765,0.036224402487278,0.061714749783278,0.007208668626845,-0.181262060999870,-0.096596807241440,-0.008555727079511,-0.062159739434719,-0.052435845136642));
res += mul(Get(s3,-dx,0), float4x4(-0.008998353965580,0.017212897539139,0.211743921041489,-0.131706118583679,-0.148384317755699,0.056808862835169,-0.052695531398058,-0.031307499855757,0.036930959671736,-0.203913435339928,0.042733177542686,-0.159543454647064,0.099555760622025,0.025383422151208,-0.145905330777168,-0.038107573986053));
res += mul(Get(s3,-dx,dy), float4x4(-0.058917157351971,0.045936871320009,0.036607600748539,-0.001864838530309,-0.052665401250124,0.199997305870056,-0.060239236801863,-0.010312282480299,0.037165641784668,-0.028656460344791,-0.030020041391253,-0.152165845036507,0.009896986186504,-0.054044745862484,0.033148590475321,0.060300514101982));
res += mul(Get(s3,0,-dy), float4x4(0.107251502573490,0.001147154602222,-0.241626590490341,0.050520941615105,0.023003056645393,0.259314358234406,-0.031618367880583,-0.222934395074844,-0.122222505509853,-0.188845351338387,0.122895896434784,-0.214972883462906,-0.104690127074718,-0.080043502151966,-0.075054593384266,-0.113214358687401));
res += mul(Get(s3,0,0), float4x4(0.130192086100578,0.072139732539654,-0.024315517395735,-0.028786525130272,-0.253413170576096,-0.066659644246101,-0.128869906067848,-0.073658354580402,-0.069907359778881,-0.244891822338104,0.244035020470619,-0.061048615723848,-0.083580709993839,-0.247782304883003,0.404117435216904,-0.010678648017347));
res += mul(Get(s3,0,dy), float4x4(-0.044795919209719,-0.144255712628365,-0.062409486621618,-0.058708883821964,0.015562293119729,-0.169736146926880,0.088994495570660,0.042284790426493,0.014829824678600,-0.127092346549034,0.074895836412907,-0.127991244196892,-0.048091087490320,-0.002535749459639,0.133758872747421,0.191565856337547));
res += mul(Get(s3,dx,-dy), float4x4(-0.066776931285858,-0.092721514403820,-0.141549110412598,0.119948752224445,0.224155128002167,0.153878912329674,0.031161556020379,-0.099275156855583,0.062398653477430,-0.198213025927544,0.060928180813789,-0.092554226517677,0.027379896491766,0.020267089828849,-0.064673312008381,-0.021754767745733));
res += mul(Get(s3,dx,0), float4x4(-0.037441011518240,-0.122361920773983,-0.222876384854317,0.097666844725609,-0.117233805358410,0.340028882026672,-0.067485570907593,-0.037691708654165,-0.058872606605291,-0.053563229739666,0.011345902457833,-0.061611715704203,-0.128353044390678,0.056660957634449,0.032392747700214,0.069031484425068));
res += mul(Get(s3,dx,dy), float4x4(-0.031518876552582,0.119036965072155,0.122465774416924,0.088582664728165,0.093998409807682,-0.155112102627754,-0.031956613063812,-0.017359182238579,0.094099394977093,0.025130705907941,-0.022938197478652,-0.116236396133900,-0.081738896667957,0.030014773830771,-0.098091572523117,0.209059461951256));
res += mul(Get(s4,-dx,-dy), float4x4(0.106081247329712,0.033102661371231,-0.033367671072483,-0.027124147862196,0.071434557437897,0.095802672207355,0.020491069182754,-0.080788604915142,0.082108542323112,0.284311980009079,-0.111929975450039,-0.052324563264847,0.237627655267715,-0.355851501226425,0.320985078811646,0.170733809471130));
res += mul(Get(s4,-dx,0), float4x4(-0.191301837563515,0.065141066908836,0.066591069102287,-0.071931593120098,0.186563104391098,-0.052677795290947,-0.033485248684883,-0.228321790695190,-0.020431382581592,0.045499291270971,0.041236504912376,0.014222413301468,0.152226686477661,-0.058463439345360,0.146523401141167,0.124013543128967));
res += mul(Get(s4,-dx,dy), float4x4(-0.179923832416534,0.210469603538513,0.012210747227073,0.076828047633171,0.178780168294907,-0.157338201999664,-0.014157661236823,-0.008711764588952,-0.257566034793854,0.339804023504257,0.027115156874061,0.018483852967620,0.169468924403191,-0.072161771357059,0.073928922414780,0.089886315166950));
res += mul(Get(s4,0,-dy), float4x4(-0.201977327466011,0.033908784389496,-0.007866987027228,-0.028941756114364,0.089560702443123,0.190529823303223,-0.176892325282097,-0.009257231839001,0.034854844212532,0.274114876985550,0.065518558025360,0.061415769159794,0.226190403103828,0.108748175203800,0.147746846079826,0.112372905015945));
res += mul(Get(s4,0,0), float4x4(0.047649528831244,0.082201972603798,0.063412033021450,0.001793617266230,0.159173592925072,0.202400609850883,-0.047335851937532,0.097113810479641,0.120802171528339,0.204773649573326,-0.052931912243366,0.064169868826866,0.020003048703074,0.026538545265794,0.155212566256523,0.021246993914247));
res += mul(Get(s4,0,dy), float4x4(-0.097253620624542,0.007335419766605,0.098586775362492,0.155770003795624,0.096702791750431,0.020458176732063,0.099061690270901,0.000050427388487,0.079934924840927,0.179528743028641,-0.027258371934295,-0.011957044713199,0.182710722088814,0.168323308229446,0.082106813788414,-0.082405209541321));
res += mul(Get(s4,dx,-dy), float4x4(0.004419045988470,0.068624384701252,-0.008281564339995,-0.080488972365856,-0.125713363289833,0.009875469841063,-0.057370301336050,0.103591866791248,-0.023788832128048,0.181766077876091,0.012286917306483,0.008867008611560,0.146811082959175,0.123790673911572,0.171348348259926,-0.051723103970289));
res += mul(Get(s4,dx,0), float4x4(0.295406043529510,-0.035179689526558,0.242315784096718,0.049131009727716,-0.152214989066124,0.064818173646927,0.071743592619896,-0.040588822215796,0.118717081844807,0.280151873826981,0.046303570270538,-0.027652775868773,-0.000952427566517,0.048772882670164,0.195760309696198,-0.009334607049823));
res += mul(Get(s4,dx,dy), float4x4(0.124339707195759,0.056172940880060,-0.065491430461407,0.017593054100871,0.081508137285709,0.017849775031209,0.162250295281410,-0.026830255985260,-0.093457534909248,0.204869329929352,0.060888469219208,0.043840676546097,0.023593939840794,0.082528874278069,0.219329208135605,-0.298783153295517));
res += mul(Get(s5,-dx,-dy), float4x4(0.051652338355780,0.045782994478941,-0.199313625693321,0.018237354233861,0.133596837520599,0.028644127771258,-0.186373949050903,0.090934678912163,-0.063994280993938,-0.202692463994026,0.121946118772030,-0.083652704954147,-0.039890553802252,0.094781778752804,0.128432974219322,-0.041705563664436));
res += mul(Get(s5,-dx,0), float4x4(0.102517887949944,0.025405982509255,-0.183963507413864,0.090614669024944,-0.087193734943867,0.293332338333130,-0.237884908914566,0.039329782128334,-0.079848028719425,-0.332435876131058,0.145250052213669,0.023155480623245,-0.115864984691143,-0.003509109141305,0.038279909640551,-0.064097762107849));
res += mul(Get(s5,-dx,dy), float4x4(0.078090026974678,0.043925926089287,-0.195764973759651,0.005101698450744,-0.122278772294521,0.091795265674591,-0.011025521904230,0.038951467722654,0.071150459349155,-0.226239025592804,-0.017907897010446,-0.033621143549681,0.092554464936256,0.032191462814808,-0.015637589618564,-0.113603174686432));
res += mul(Get(s5,0,-dy), float4x4(-0.000918209087104,0.028937714174390,-0.246913015842438,0.066711828112602,0.058213807642460,0.100205719470978,0.011814926750958,0.164220914244652,-0.041722681373358,-0.080816008150578,0.091812752187252,-0.211261525750160,0.066576458513737,0.135944724082947,0.109562464058399,-0.118808947503567));
res += mul(Get(s5,0,0), float4x4(-0.037595551460981,0.025460099801421,-0.222492665052414,0.063767716288567,0.104230456054211,0.088688686490059,-0.079229295253754,0.112387254834175,0.177089720964432,0.001305990503170,0.026000922545791,0.001845891703852,-0.038213960826397,0.067512840032578,0.167471125721931,0.036575660109520));
res += mul(Get(s5,0,dy), float4x4(0.041576609015465,-0.037394162267447,-0.162245094776154,0.025700606405735,-0.088492497801781,0.194625452160835,-0.078516729176044,0.151668146252632,0.051879070699215,-0.081855088472366,0.140263989567757,-0.019153418019414,-0.086778357625008,-0.046858549118042,-0.053173169493675,-0.112773388624191));
res += mul(Get(s5,dx,-dy), float4x4(0.037639599293470,-0.011329432949424,-0.220215260982513,0.044084072113037,0.008092924021184,0.148782417178154,0.082906462252140,-0.050736542791128,0.134844228625298,-0.121873579919338,0.050961349159479,-0.126792624592781,-0.065493345260620,-0.066440977156162,0.036476708948612,-0.034836277365685));
res += mul(Get(s5,dx,0), float4x4(-0.014041854068637,-0.011763519607484,-0.057952184230089,-0.025380762293935,0.268288433551788,-0.017808362841606,0.045782890170813,-0.051149193197489,0.055109355598688,-0.316588848829269,0.108964584767818,-0.022425480186939,-0.013823858462274,0.008204440586269,0.046552378684282,-0.021601606160402));
res += mul(Get(s5,dx,dy), float4x4(0.025536928325891,0.057978689670563,-0.054145526140928,-0.017377881333232,0.047802813351154,-0.001424209447578,-0.003192713716999,0.215995416045189,0.209184631705284,-0.203015640377998,0.077390082180500,-0.057636748999357,-0.078180976212025,-0.021191002801061,0.005449849180877,-0.318659394979477));
res += tex2D(s6, tex);
res = max(float4(0, 0, 0, 0), res) + float4(0.694455385208130,0.059300478547812,0.115755982697010,0.954933106899261) * min(float4(0, 0, 0, 0), res);
return res;
}