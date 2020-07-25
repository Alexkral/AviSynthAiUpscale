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
res += mul(Get(s0,-dx,-dy), float4x4(-0.010775446891785,0.083470582962036,-0.049893520772457,0.085120975971222,0.021955430507660,-0.009582781232893,-0.008435625582933,-0.021746858954430,0.102109044790268,-0.009204627946019,-0.012028193101287,0.123200342059135,0.003039164235815,-0.085971519351006,-0.043533671647310,0.127382650971413));
res += mul(Get(s0,-dx,0), float4x4(0.056219495832920,-0.071246914565563,-0.001375798368827,0.037875507026911,-0.051253132522106,0.058475431054831,0.008969293907285,-0.108140259981155,0.002287709619850,0.091408781707287,0.089353837072849,-0.059033162891865,0.065681293606758,0.070310890674591,0.008793006651103,0.105262324213982));
res += mul(Get(s0,-dx,dy), float4x4(-0.055020634084940,-0.021652763709426,-0.005666546989232,0.122610904276371,0.071832388639450,-0.033324368298054,0.025000203400850,-0.013517030514777,-0.031564928591251,-0.054059814661741,-0.130178585648537,0.056846562772989,-0.085995756089687,0.085775017738342,-0.030443925410509,-0.114146791398525));
res += mul(Get(s0,0,-dy), float4x4(-0.021361403167248,0.062570787966251,-0.013178901746869,-0.104492388665676,-0.004299532156438,-0.076739937067032,-0.052204929292202,0.058461468666792,-0.044363774359226,-0.068883612751961,-0.006868436466902,-0.042166765779257,-0.029073780402541,-0.142901271581650,0.036901134997606,-0.078894048929214));
res += mul(Get(s0,0,0), float4x4(0.029346177354455,0.153689995408058,0.167524367570877,0.019077114760876,0.094196483492851,0.054485272616148,0.003106604795903,0.001702741486952,0.019712645560503,0.220260530710220,0.196192428469658,0.087417587637901,-0.069845311343670,0.066607221961021,0.010804266668856,-0.000477561465232));
res += mul(Get(s0,0,dy), float4x4(0.067497976124287,0.086517922580242,-0.034842472523451,-0.034172523766756,0.149257957935333,0.016949651762843,0.154621422290802,0.032458662986755,-0.025287846103311,-0.070951201021671,-0.042604107409716,0.005557519383729,0.005780325736851,0.039187442511320,-0.027534171938896,-0.028346898034215));
res += mul(Get(s0,dx,-dy), float4x4(0.052872959524393,0.032406348735094,-0.004849002230912,-0.022155538201332,0.012579906731844,0.093430958688259,0.027947451919317,0.015016945078969,0.030338741838932,0.088455773890018,-0.110785864293575,-0.079981736838818,-0.039539728313684,0.024785140529275,-0.010813693515956,0.013771528378129));
res += mul(Get(s0,dx,0), float4x4(0.134082019329071,-0.023518376052380,-0.033394224941730,0.048583835363388,0.076488673686981,-0.041458308696747,0.075604170560837,-0.064676664769650,0.015111770480871,0.002834770129994,0.100781634449959,0.062577769160271,-0.034389562904835,0.087173514068127,-0.100293487310410,-0.156830668449402));
res += mul(Get(s0,dx,dy), float4x4(-0.040332995355129,0.014432032592595,-0.006755374372005,0.083694040775299,0.052900210022926,-0.076265916228294,-0.046536296606064,0.083693645894527,0.025142181664705,-0.028580943122506,-0.084620721638203,-0.040467999875546,-0.005952025763690,-0.118585959076881,-0.121749408543110,0.001299587544054));
res += mul(Get(s1,-dx,-dy), float4x4(0.034435227513313,0.074176922440529,0.070199489593506,-0.095487080514431,-0.045421902090311,0.024057798087597,-0.064570240676403,0.012532115913928,0.116358853876591,-0.002444209763780,0.029348881915212,0.026222387328744,-0.014466281048954,-0.025393856689334,-0.062260858714581,0.064193397760391));
res += mul(Get(s1,-dx,0), float4x4(0.036920614540577,-0.048544142395258,-0.121567793190479,-0.072327360510826,-0.027230266481638,-0.015622902661562,-0.124821767210960,0.067590311169624,0.219103723764420,0.089269354939461,-0.079806402325630,0.118424296379089,-0.074425630271435,-0.067162267863750,-0.090337827801704,-0.022783929482102));
res += mul(Get(s1,-dx,dy), float4x4(-0.035895291715860,-0.052965864539146,-0.033097501844168,-0.051468044519424,-0.098178528249264,-0.015320140868425,-0.049987901002169,0.047566976398230,0.028076156973839,0.057499207556248,-0.082754693925381,0.012442254461348,0.042910609394312,0.080489911139011,-0.059477426111698,0.122829444706440));
res += mul(Get(s1,0,-dy), float4x4(-0.173782840371132,-0.059248298406601,0.106605522334576,0.153683707118034,-0.049417369067669,-0.004897392354906,-0.010838589631021,-0.002032667165622,0.152986258268356,0.066215269267559,0.071832075715065,0.052902515977621,-0.126595005393028,-0.094304867088795,0.100915096700191,0.007943479344249));
res += mul(Get(s1,0,0), float4x4(-0.037000339478254,0.015693744644523,-0.138753741979599,-0.042184203863144,0.044189892709255,0.048774559050798,-0.023077037185431,-0.071858674287796,-0.016791658475995,-0.026824569329619,0.080554127693176,0.104761615395546,-0.123016461730003,-0.036576308310032,-0.056424230337143,-0.080066137015820));
res += mul(Get(s1,0,dy), float4x4(0.036256879568100,-0.017196742817760,0.009384617209435,0.079684548079967,-0.146854162216187,-0.041152156889439,-0.012019786983728,-0.059246722608805,-0.012241449207067,-0.003894192399457,-0.041331321001053,-0.060402989387512,0.016771551221609,-0.117008037865162,-0.060202717781067,0.025148252025247));
res += mul(Get(s1,dx,-dy), float4x4(-0.104048617184162,0.023985086008906,0.060072954744101,-0.062541261315346,0.012281592004001,-0.001639771508053,0.081644728779793,0.022301383316517,-0.086300224065781,0.024863621219993,0.027493691071868,-0.121002741158009,0.120704583823681,-0.150438800454140,0.091084480285645,-0.060952078551054));
res += mul(Get(s1,dx,0), float4x4(-0.041347403079271,-0.054262440651655,0.111274249851704,-0.004224275704473,-0.023499980568886,-0.013384250923991,0.045819301158190,-0.072176255285740,0.127474561333656,0.017260869964957,-0.031689878553152,-0.133353114128113,0.082440868020058,-0.026339258998632,-0.054066520184278,-0.120191007852554));
res += mul(Get(s1,dx,dy), float4x4(0.098094418644905,0.104352399706841,-0.005616480484605,0.098779253661633,0.047877430915833,0.152626365423203,-0.043266214430332,-0.078696541488171,-0.067385405302048,-0.084804691374302,-0.030390884727240,-0.058028481900692,0.006151066627353,0.002399043645710,0.009632952511311,-0.091494761407375));
res += mul(Get(s2,-dx,-dy), float4x4(-0.049012113362551,0.009464342147112,-0.056257840245962,0.104781776666641,0.033875402063131,0.028603084385395,-0.001468187896535,-0.004479591734707,0.083554670214653,-0.065038405358791,0.016441145911813,-0.021333713084459,-0.124499842524529,-0.054796651005745,0.028232309967279,0.012606021016836));
res += mul(Get(s2,-dx,0), float4x4(0.069182768464088,0.075129576027393,-0.014848424121737,0.057939309626818,-0.062883950769901,-0.000879992498085,0.044331774115562,0.027986312285066,-0.025699710473418,-0.042837675660849,0.049555279314518,-0.052594248205423,0.046841457486153,-0.069949083030224,0.131688758730888,0.014141515828669));
res += mul(Get(s2,-dx,dy), float4x4(0.027419215068221,0.022120174020529,0.003631065366790,0.032666504383087,0.024294300004840,-0.028337888419628,-0.089945659041405,0.018935866653919,0.034124922007322,0.030444122850895,0.108206480741501,0.123273715376854,-0.066583111882210,0.054644256830215,0.063344962894917,0.003827783279121));
res += mul(Get(s2,0,-dy), float4x4(-0.018447594717145,0.138454958796501,0.048940721899271,-0.043722961097956,0.034830760210752,-0.023506311699748,0.037478886544704,0.062122523784637,-0.023758709430695,0.048184946179390,-0.012149869464338,-0.050826881080866,0.022759422659874,-0.113604329526424,0.003894799621776,-0.006312081124634));
res += mul(Get(s2,0,0), float4x4(-0.013246985152364,0.155330702662468,-0.022018434479833,-0.203846096992493,-0.045461911708117,0.018289716914296,0.088951744139194,0.099368236958981,-0.001627999823540,0.039131313562393,-0.044822670519352,0.186866402626038,-0.105038039386272,-0.045839760452509,0.017036685720086,0.051874466240406));
res += mul(Get(s2,0,dy), float4x4(0.001487964065745,0.185285285115242,-0.072260446846485,-0.093861885368824,0.005427544470876,0.016394810751081,-0.034612778574228,0.103942461311817,-0.127252802252769,-0.053072892129421,0.004870451986790,0.008627011440694,-0.143016323447227,0.000665815721732,-0.007526253815740,0.066432245075703));
res += mul(Get(s2,dx,-dy), float4x4(0.057006135582924,0.032886482775211,-0.022800574079156,-0.004050475079566,0.055174373090267,-0.002215773332864,-0.001615896588191,-0.054042607545853,-0.067607775330544,-0.030982114374638,-0.104244299232960,-0.051127884536982,0.006485202349722,0.049927487969398,0.047293186187744,-0.118426121771336));
res += mul(Get(s2,dx,0), float4x4(0.125786215066910,-0.014150421135128,0.066190890967846,0.003436921862885,-0.076460316777229,0.124355010688305,-0.041708678007126,-0.068258412182331,-0.006488019600511,-0.079126209020615,-0.061036355793476,-0.038762826472521,-0.047260869294405,0.045537821948528,-0.004729865118861,-0.102988913655281));
res += mul(Get(s2,dx,dy), float4x4(-0.011413553729653,0.086566559970379,0.123409271240234,0.053480770438910,-0.037184640765190,-0.024239782243967,0.098511420190334,-0.063989199697971,-0.047219306230545,-0.023537836968899,0.009449466131628,-0.054556176066399,-0.002350870752707,0.002472704043612,-0.060625087469816,-0.051602683961391));
res += mul(Get(s3,-dx,-dy), float4x4(-0.034003742039204,0.162945479154587,0.012656822800636,-0.043681457638741,-0.033096354454756,0.055948417633772,0.115821212530136,-0.038415443152189,0.135448783636093,-0.080781579017639,-0.059934042394161,0.063082009553909,0.030258081853390,0.116040840744972,0.152263686060905,0.096566900610924));
res += mul(Get(s3,-dx,0), float4x4(-0.012043904513121,-0.029465854167938,-0.006203811150044,-0.064613476395607,0.108867377042770,0.031694438308477,-0.125739246606827,-0.024140806868672,0.016499379649758,-0.007305738516152,0.022081393748522,-0.038431026041508,-0.021346865221858,-0.103062279522419,0.092435359954834,0.014807363040745));
res += mul(Get(s3,-dx,dy), float4x4(0.035287152975798,0.071692638099194,-0.068337418138981,-0.121370300650597,-0.010184035636485,0.097487881779671,-0.029194533824921,-0.050478968769312,-0.037744939327240,0.064014077186584,-0.096116513013840,0.032340440899134,0.061518423259258,0.010866068303585,-0.105478681623936,-0.036486893892288));
res += mul(Get(s3,0,-dy), float4x4(0.031509488821030,-0.116583071649075,-0.045844204723835,-0.019308304414153,0.045723520219326,0.052028514444828,0.052387025207281,-0.024853790178895,-0.022997286170721,0.078811034560204,-0.098881304264069,0.003579843323678,0.020716527476907,0.076493650674820,0.033655263483524,-0.013829845003784));
res += mul(Get(s3,0,0), float4x4(-0.056736718863249,0.031580228358507,-0.018860388547182,0.019938737154007,0.010728130117059,0.165929526090622,0.104945108294487,-0.012481374666095,0.100136920809746,-0.038492374122143,0.035823799669743,0.025336133316159,-0.030554447323084,-0.005042306147516,-0.125781342387199,-0.069399937987328));
res += mul(Get(s3,0,dy), float4x4(0.084898799657822,0.043157372623682,-0.073718965053558,0.001029899227433,0.038993690162897,0.092080250382423,-0.065997235476971,-0.072504475712776,-0.076355598866940,0.072927504777908,-0.114699497818947,0.094852320849895,0.008840978145599,0.099918618798256,-0.081159010529518,-0.019584953784943));
res += mul(Get(s3,dx,-dy), float4x4(-0.035957705229521,0.039236836135387,0.014947589486837,-0.003376323264092,0.005842163227499,-0.083201929926872,-0.038561489433050,0.114583738148212,-0.009304177947342,0.037136692553759,-0.024357404559851,-0.037403494119644,-0.147799387574196,0.112561345100403,0.100874908268452,0.021258573979139));
res += mul(Get(s3,dx,0), float4x4(-0.058610405772924,-0.016765324398875,0.009969193488359,0.009497170336545,-0.023853501304984,-0.093538731336594,0.112079516053200,0.083735346794128,-0.054119471460581,-0.008165743201971,0.078009001910686,0.058297116309404,-0.163299322128296,0.119656160473824,0.040733251720667,-0.145505011081696));
res += mul(Get(s3,dx,dy), float4x4(0.018059033900499,0.046943936496973,-0.060550484806299,-0.081910736858845,-0.006330081261694,-0.030748503282666,0.022300850600004,0.085856311023235,-0.100656054913998,0.032711595296860,-0.057329922914505,0.028657604008913,-0.000606829824392,0.035638470202684,0.089835211634636,-0.069924563169479));
return max(float4(0,0,0,0), res);
}