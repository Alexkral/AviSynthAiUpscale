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
float4 res = float4(0.288014173507690,-0.169390559196472,-0.223456993699074,0.060598395764828);
res += mul(Get(s0,-dx,-dy), float4x4(0.026668418198824,-0.091204494237900,-0.196116030216217,0.016590794548392,0.064815931022167,-0.085460849106312,-0.100909709930420,0.300308763980865,0.033883951604366,-0.024954188615084,0.073695600032806,0.146818011999130,-0.037841562181711,-0.045093335211277,0.062524989247322,-0.067041955888271));
res += mul(Get(s0,-dx,0), float4x4(0.031432103365660,-0.109228916466236,-0.095996469259262,0.133865103125572,0.047078490257263,-0.025660604238510,0.028441971167922,0.144340336322784,-0.128517836332321,-0.053246051073074,0.128031268715858,-0.088220149278641,-0.056833148002625,-0.032211355865002,-0.013169341720641,0.499616771936417));
res += mul(Get(s0,-dx,dy), float4x4(-0.128372028470039,0.051503889262676,-0.228203698992729,0.164194121956825,0.028865484520793,-0.035739146173000,0.005486823152751,-0.184238165616989,0.078940376639366,-0.235211566090584,0.090325668454170,0.188678801059723,0.104361914098263,0.016064910218120,-0.092771664261818,0.265918314456940));
res += mul(Get(s0,0,-dy), float4x4(0.069124571979046,-0.031610034406185,-0.024350829422474,0.102461606264114,0.024073757231236,0.152930885553360,-0.011583346873522,-0.144748076796532,-0.012542904354632,-0.172210156917572,-0.091426014900208,0.103638537228107,-0.082824096083641,0.151752948760986,0.157174006104469,-0.293010532855988));
res += mul(Get(s0,0,0), float4x4(-0.348237186670303,0.015339324250817,-0.055763278156519,-0.202578663825989,-0.191001847386360,0.067351281642914,0.279496550559998,-0.311107993125916,-0.237259313464165,-0.226661637425423,-0.084201358258724,-0.054842062294483,-0.200007513165474,0.050295673310757,-0.049097791314125,-0.531079232692719));
res += mul(Get(s0,0,dy), float4x4(-0.032454822212458,0.017851676791906,-0.022927533835173,0.019005199894309,0.041959054768085,0.045923504978418,0.038699734956026,-0.158326953649521,-0.157787218689919,0.135412082076073,-0.075290866196156,-0.023836523294449,-0.081027247011662,0.109447598457336,0.164495766162872,-0.207968920469284));
res += mul(Get(s0,dx,-dy), float4x4(0.061972629278898,-0.165248006582260,0.007894071750343,0.352751702070236,-0.016912478953600,0.001977580599487,0.067406505346298,0.505072236061096,0.071161508560181,-0.079508379101753,0.071725457906723,0.212891921401024,-0.048756100237370,0.110386721789837,0.043307647109032,-0.185294911265373));
res += mul(Get(s0,dx,0), float4x4(0.103124715387821,-0.078993119299412,0.065273143351078,0.041890349239111,-0.016292650252581,-0.187679916620255,0.043720528483391,0.050519354641438,0.233573436737061,-0.102596729993820,-0.141318976879120,0.151927620172501,0.081865191459656,-0.181889653205872,0.193127825856209,-0.156934112310410));
res += mul(Get(s0,dx,dy), float4x4(0.047758657485247,0.162892177700996,0.165969148278236,0.059791795909405,-0.060639027506113,0.059114113450050,-0.003704677801579,-0.137588962912560,0.084804303944111,0.177995547652245,-0.110920794308186,0.014920187182724,-0.094011828303337,0.006387542001903,0.030478945001960,0.020632823929191));
res += mul(Get(s1,-dx,-dy), float4x4(-0.004684634506702,-0.135255098342896,-0.025819187983871,0.028275856748223,-0.023625388741493,0.061720430850983,-0.049541939049959,0.128485053777695,0.006827424280345,0.001486155670136,0.043836522847414,-0.022871414199471,0.126027464866638,-0.036583434790373,0.005138950888067,-0.210344374179840));
res += mul(Get(s1,-dx,0), float4x4(0.038312602788210,0.000379495555535,-0.200132176280022,-0.242005869746208,0.187794610857964,-0.064946733415127,0.008076732046902,-0.048313636332750,0.162347361445427,-0.048078812658787,-0.098593287169933,0.252714365720749,0.073223367333412,0.098722375929356,0.063096597790718,-0.330559641122818));
res += mul(Get(s1,-dx,dy), float4x4(-0.091661863029003,-0.048962339758873,-0.017494857311249,-0.119714163243771,0.181967467069626,0.109631024301052,0.068527676165104,0.166881322860718,0.255107194185257,0.016561008989811,-0.091475501656532,0.191203057765961,0.069011792540550,0.118484832346439,0.108903326094151,-0.136232614517212));
res += mul(Get(s1,0,-dy), float4x4(-0.021979024633765,-0.012774894014001,0.143834769725800,0.028708880767226,-0.142529875040054,0.020658295601606,0.139379784464836,-0.170938238501549,-0.049261257052422,0.062545187771320,-0.214773356914520,0.207439377903938,-0.015873486176133,-0.321201562881470,0.079159833490849,-0.086007155478001));
res += mul(Get(s1,0,0), float4x4(0.202936321496964,-0.250916868448257,-0.472816258668900,-0.243186175823212,0.278963595628738,0.342096626758575,-0.066889226436615,0.228209510445595,0.216113612055779,0.039216864854097,-0.302292257547379,0.088240332901478,-0.051863100379705,-0.051841869950294,0.408017784357071,-0.030795756727457));
res += mul(Get(s1,0,dy), float4x4(0.111945413053036,-0.176646441221237,0.224504768848419,-0.042864710092545,0.255606323480606,0.020396983250976,0.028874350711703,0.197192221879959,0.202570110559464,0.055803008377552,-0.122703470289707,-0.001152394223027,0.090099051594734,-0.192410722374916,0.008655591867864,-0.040738120675087));
res += mul(Get(s1,dx,-dy), float4x4(0.078703522682190,0.037927601486444,-0.035064071416855,-0.041023015975952,0.055649302899837,0.027649048715830,-0.005993505008519,0.037214942276478,-0.116363659501076,-0.026131499558687,0.033822823315859,-0.177742555737495,0.182785019278526,-0.028999643400311,-0.106923803687096,-0.188624247908592));
res += mul(Get(s1,dx,0), float4x4(0.029027549549937,-0.159729182720184,-0.223638802766800,-0.099199764430523,0.106007471680641,0.190619915723801,-0.039412841200829,0.083832360804081,-0.001046813093126,-0.104158073663712,-0.026340615004301,-0.106056995689869,-0.010477879084647,0.208478614687920,-0.050454575568438,-0.417812436819077));
res += mul(Get(s1,dx,dy), float4x4(-0.132262080907822,0.016340833157301,-0.007967021316290,-0.024732783436775,0.051792673766613,-0.022611657157540,0.084888525307178,0.059944819658995,0.036734454333782,-0.260249167680740,-0.067493163049221,0.090278096497059,-0.148869052529335,0.039588510990143,0.010059795342386,-0.280954271554947));
res += mul(Get(s2,-dx,-dy), float4x4(0.169752240180969,-0.139016985893250,0.077122405171394,0.032886452972889,-0.001746136695147,-0.047654397785664,-0.131445258855820,-0.134273603558540,-0.076596125960350,-0.051668874919415,0.005090261809528,-0.204250618815422,-0.006567636039108,0.101951174438000,-0.129135727882385,-0.117707237601280));
res += mul(Get(s2,-dx,0), float4x4(-0.038630362600088,-0.057606033980846,0.143110558390617,0.001777571393177,0.075159184634686,-0.017061730846763,-0.106350138783455,-0.137897804379463,0.047988697886467,0.078299693763256,0.268782466650009,-0.021612178534269,-0.088141016662121,0.142387688159943,-0.158930495381355,-0.024852475151420));
res += mul(Get(s2,-dx,dy), float4x4(-0.005810062866658,-0.060705639421940,0.091951422393322,-0.003957995679229,-0.147989556193352,0.031796075403690,-0.086591601371765,-0.163401335477829,0.090379722416401,0.028745980933309,-0.127761289477348,-0.010536857880652,0.127438381314278,0.051891993731260,0.025815611705184,-0.001265248865820));
res += mul(Get(s2,0,-dy), float4x4(0.105632700026035,-0.180089339613914,-0.072365418076515,0.183248162269592,-0.043611258268356,0.031080147251487,0.039927367120981,0.189345017075539,-0.045045934617519,-0.001039764145389,0.113280609250069,0.223157197237015,-0.038372877985239,0.075580939650536,0.066173143684864,0.311314493417740));
res += mul(Get(s2,0,0), float4x4(-0.096588961780071,0.185405448079109,0.281403988599777,0.062570415437222,0.027326822280884,0.150887101888657,0.185324206948280,-0.046797368675470,0.278726756572723,0.310401022434235,0.146583318710327,-0.058420017361641,-0.055674936622381,-0.103140614926815,-0.152625426650047,0.251237392425537));
res += mul(Get(s2,0,dy), float4x4(-0.119580812752247,0.143160834908485,0.082229472696781,-0.114224575459957,-0.067652650177479,0.099398128688335,-0.079113796353340,0.004644426982850,0.290947079658508,-0.094909615814686,-0.035470053553581,-0.391500115394592,0.547096610069275,-0.038433544337749,-0.107140563428402,-0.289742290973663));
res += mul(Get(s2,dx,-dy), float4x4(0.114018410444260,-0.073505617678165,-0.051192786544561,-0.131670400500298,0.035152971744537,-0.022174566984177,-0.020721813663840,-0.359876573085785,0.072680987417698,0.023730698972940,-0.004516342189163,0.034100372344255,-0.045787706971169,0.042787868529558,-0.070256724953651,-0.148681476712227));
res += mul(Get(s2,dx,0), float4x4(-0.040790513157845,0.290093362331390,-0.191226944327354,-0.000959376338869,0.176339477300644,0.182971820235252,0.102927684783936,-0.109938398003578,-0.137216240167618,0.224829211831093,-0.028852418065071,0.075037717819214,-0.023490579798818,-0.176862910389900,0.136294752359390,0.090595409274101));
res += mul(Get(s2,dx,dy), float4x4(-0.065619945526123,0.189583659172058,-0.025845369324088,0.160081669688225,0.082345195114613,0.084303997457027,0.007114351261407,-0.143455430865288,-0.061434932053089,-0.103642709553242,0.048867639154196,0.003995359875262,0.146462485194206,-0.064315512776375,-0.009530246257782,0.203213095664978));
res += mul(Get(s3,-dx,-dy), float4x4(-0.068230561912060,0.174750626087189,-0.032890252768993,-0.117033347487450,0.100169286131859,0.101400651037693,0.002812686609104,-0.239615514874458,0.037869162857533,0.004320720676333,-0.038871023803949,-0.005696763750166,0.019304087385535,-0.015347241424024,0.079894453287125,0.184552863240242));
res += mul(Get(s3,-dx,0), float4x4(0.176396653056145,0.129562407732010,-0.409089624881744,0.001247551874258,0.066661685705185,0.098295398056507,0.055939845740795,0.004775923211128,0.165728688240051,-0.002129547996446,0.039099574089050,0.192660272121429,-0.034015480428934,0.033906131982803,-0.077001541852951,-0.665664732456207));
res += mul(Get(s3,-dx,dy), float4x4(0.010690725408494,0.111502416431904,0.007705374155194,0.240640982985497,0.023424396291375,-0.103038124740124,0.003256187075749,-0.114486336708069,-0.030913803726435,-0.026715163141489,0.057316944003105,0.204749688506126,-0.019800383597612,-0.003027191618457,0.093476153910160,-0.272670805454254));
res += mul(Get(s3,0,-dy), float4x4(0.053403716534376,0.010667459107935,0.189947113394737,-0.012965307570994,0.122912600636482,-0.126890137791634,-0.054602425545454,-0.068131960928440,0.075412586331367,-0.044444896280766,-0.049247451126575,0.149023681879044,-0.067498564720154,0.032573550939560,-0.022834770381451,0.025640716776252));
res += mul(Get(s3,0,0), float4x4(0.012525401078165,0.225750043988228,0.181107386946678,-0.244060367345810,0.256916135549545,-0.024848988279700,-0.327198833227158,-0.155435785651207,0.014552934095263,-0.205073416233063,0.213650688529015,0.440216183662415,-0.116939790546894,-0.219445139169693,0.167514041066170,0.000999473151751));
res += mul(Get(s3,0,dy), float4x4(-0.081758439540863,0.163535743951797,0.112334325909615,-0.117639839649200,-0.212774395942688,-0.045279596000910,-0.049100812524557,-0.064906328916550,0.049341216683388,-0.057024158537388,0.235295102000237,0.147950172424316,-0.054788801819086,-0.074602313339710,-0.009433549828827,0.283829867839813));
res += mul(Get(s3,dx,-dy), float4x4(0.038947265595198,-0.001775992102921,-0.006480904761702,0.106041833758354,0.069533929228783,-0.135480493307114,-0.007368587423116,-0.093298353254795,-0.037842929363251,0.017437746748328,-0.044590834528208,-0.063725158572197,-0.011581039987504,0.112955227494240,0.057877361774445,-0.022441152483225));
res += mul(Get(s3,dx,0), float4x4(0.051653556525707,-0.085678555071354,-0.135169625282288,-0.155530348420143,-0.150537520647049,0.093574874103069,-0.019776429980993,0.037231896072626,0.083792082965374,0.193568095564842,-0.066894568502903,-0.242846518754959,0.268854767084122,-0.084113009274006,0.071730218827724,0.190406307578087));
res += mul(Get(s3,dx,dy), float4x4(-0.029699379578233,0.029631078243256,0.009052346460521,-0.019346296787262,0.185223653912544,-0.430242121219635,-0.121753066778183,0.134963437914848,0.005602853838354,0.186804756522179,0.104059457778931,0.136478871107101,0.041733637452126,0.173120737075806,0.020084859803319,0.127494350075722));
res += mul(Get(s4,-dx,-dy), float4x4(-0.064302161335945,-0.028809757903218,-0.036703981459141,-0.311963856220245,0.024477744475007,-0.191815346479416,-0.022801185026765,-0.111313723027706,0.030432179570198,0.075100198388100,-0.022308317944407,-0.007230958435684,-0.011657689698040,0.080086514353752,-0.120257943868637,0.090332932770252));
res += mul(Get(s4,-dx,0), float4x4(-0.159928649663925,0.034012310206890,-0.020878776907921,-0.116718083620071,-0.134144455194473,-0.373694092035294,0.113258093595505,-0.039560262113810,-0.021428469568491,0.029887648299336,-0.012863257899880,0.068708755075932,0.110213302075863,0.070047721266747,-0.175148248672485,-0.233912050724030));
res += mul(Get(s4,-dx,dy), float4x4(0.008100904524326,0.089298799633980,-0.085120469331741,0.193584159016609,0.087545566260815,-0.119018889963627,0.054206497967243,0.100967958569527,-0.148034527897835,-0.031568806618452,-0.034412294626236,0.122307665646076,-0.019859910011292,0.085285395383835,-0.037159081548452,0.045512638986111));
res += mul(Get(s4,0,-dy), float4x4(-0.121982112526894,-0.051927689462900,0.237015679478645,0.035246964544058,-0.085157036781311,-0.346547901630402,0.123946867883205,0.209554895758629,-0.056772693991661,0.232006609439850,0.055670376867056,-0.005958934780210,-0.132858723402023,0.192637026309967,0.130230113863945,0.014366207644343));
res += mul(Get(s4,0,0), float4x4(-0.579079091548920,-0.017223753035069,0.221323311328888,-0.146490260958672,0.217694863677025,-0.030263470485806,-0.238549932837486,-0.447255611419678,0.111901439726353,0.107885979115963,-0.013901445083320,0.088493987917900,0.213625788688660,0.036073446273804,0.181450590491295,-0.036639455705881));
res += mul(Get(s4,0,dy), float4x4(-0.132222369313240,0.095461636781693,-0.025594875216484,-0.082472145557404,0.280769228935242,0.031794909387827,0.071148827672005,-0.191409885883331,-0.322806477546692,-0.001299850759096,0.255024403333664,0.149581745266914,-0.357954651117325,-0.019941763952374,0.108983404934406,-0.263307571411133));
res += mul(Get(s4,dx,-dy), float4x4(-0.058149382472038,-0.096221908926964,0.033305477350950,-0.403704702854156,-0.008311907760799,-0.143466114997864,-0.019776221364737,-0.095509991049767,-0.000770787126385,0.090486966073513,0.059995274990797,-0.111256860196590,-0.041340660303831,-0.081002630293369,-0.093660287559032,-0.051924645900726));
res += mul(Get(s4,dx,0), float4x4(-0.154127612709999,-0.035369966179132,0.074798189103603,-0.362887769937515,0.019723542034626,-0.012529280036688,0.000807655334938,-0.378171652555466,-0.144542455673218,-0.045551929622889,0.056648638099432,-0.369104415178299,0.203420594334602,0.303724229335785,0.114148721098900,-0.652468323707581));
res += mul(Get(s4,dx,dy), float4x4(-0.034179460257292,0.052476536482573,0.006778439041227,-0.010083558969200,0.013901293277740,-0.113166905939579,0.244569122791290,0.002709864173084,-0.064554415643215,0.136192262172699,0.012018616311252,0.125380262732506,-0.012251943349838,0.000862350105308,0.192714750766754,-0.210854858160019));
res += mul(Get(s5,-dx,-dy), float4x4(-0.089737862348557,-0.060120869427919,0.069592908024788,-0.031813036650419,-0.068502366542816,-0.071443885564804,-0.259260743856430,-0.060944352298975,0.060531735420227,-0.066242285072803,-0.273716628551483,0.228116512298584,0.098914809525013,-0.088233642280102,-0.244323208928108,0.139074623584747));
res += mul(Get(s5,-dx,0), float4x4(0.036620121449232,0.113430030643940,0.130271688103676,-0.269216150045395,0.009564245119691,-0.183138966560364,0.039364077150822,-0.010172470472753,0.103789575397968,0.042455535382032,-0.063260748982430,0.252609521150589,0.124691478908062,-0.074117250740528,-0.086724571883678,-0.030642507597804));
res += mul(Get(s5,-dx,dy), float4x4(-0.137493595480919,-0.075465694069862,-0.085724078118801,-0.371554762125015,0.056674838066101,-0.087585091590881,-0.169698461890221,0.217046394944191,0.062797158956528,0.050310615450144,-0.031553156673908,-0.024479903280735,0.152602285146713,-0.021244080737233,-0.079358108341694,0.069403238594532));
res += mul(Get(s5,0,-dy), float4x4(-0.022732919082046,0.042458456009626,0.092149965465069,-0.254545718431473,0.037779621779919,0.062593102455139,0.035323861986399,0.055722888559103,-0.011086944490671,-0.005107136908919,0.024655696004629,-0.219807058572769,0.000088492648501,0.280017733573914,-0.032068893313408,-0.204637542366982));
res += mul(Get(s5,0,0), float4x4(-0.216043591499329,0.186701640486717,-0.034714806824923,-0.141875892877579,0.162358283996582,0.445796132087708,-0.235711976885796,-0.090597480535507,-0.080597370862961,0.123880766332150,-0.197075694799423,-0.187754631042480,0.054268896579742,0.237574025988579,0.013993894681334,0.219481542706490));
res += mul(Get(s5,0,dy), float4x4(-0.092287741601467,-0.072485953569412,-0.040982812643051,0.065810039639473,0.293923646211624,0.299733221530914,-0.105505041778088,-0.282687097787857,0.091419048607349,-0.066664159297943,0.077396005392075,-0.087244287133217,-0.096070706844330,0.115154065191746,0.098353601992130,0.286717057228088));
res += mul(Get(s5,dx,-dy), float4x4(-0.006637506186962,-0.116550609469414,-0.025147235020995,-0.279541015625000,0.027155155315995,0.034196395426989,-0.062705591320992,0.236629500985146,-0.106971845030785,-0.050419107079506,-0.108220197260380,-0.388638585805893,-0.023812225088477,0.014525569044054,-0.038914490491152,0.398093611001968));
res += mul(Get(s5,dx,0), float4x4(-0.012670617550611,-0.190208151936531,-0.141553208231926,-0.056420616805553,0.058038130402565,-0.125780344009399,0.035305213183165,-0.001110532321036,-0.092620693147182,-0.263076514005661,-0.001113842125051,-0.066227093338966,0.191013395786285,-0.321598291397095,-0.123576186597347,0.096283100545406));
res += mul(Get(s5,dx,dy), float4x4(-0.040785428136587,-0.008469404652715,-0.114456683397293,-0.180680245161057,0.134516045451164,-0.033677224069834,-0.048627953976393,-0.179402917623520,0.089145608246326,-0.023572962731123,-0.029277961701155,-0.437324017286301,0.157060906291008,0.099142864346504,-0.025858704000711,-0.296248316764832));
res = max(float4(0, 0, 0, 0), res) + float4(0.209383949637413,0.059242613613605,0.482399821281433,-0.026620369404554) * min(float4(0, 0, 0, 0), res);
return res;
}
