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
res += mul(Get(s0,-dx,-dy), float4x4(-0.094114266335964,-0.345505774021149,-0.214223831892014,0.250638395547867,0.015887407585979,-0.286665707826614,0.205436080694199,-0.229322567582130,0.008787423372269,-0.159275099635124,-0.152841985225677,-0.207707509398460,0.113461636006832,-0.251982927322388,0.100571721792221,-0.287500679492950));
res += mul(Get(s0,-dx,0), float4x4(-0.062563449144363,-0.202575698494911,-0.062083888798952,-0.277556270360947,-0.088051527738571,0.146545410156250,0.102313712239265,0.041184898465872,0.190001636743546,-0.085724152624607,-0.167430326342583,0.102926328778267,-0.151478648185730,-0.087621532380581,-0.128183811903000,0.044378031045198));
res += mul(Get(s0,-dx,dy), float4x4(-0.098528631031513,-0.222129479050636,-0.275549322366714,-0.294659823179245,0.184441775083542,0.001634036423638,0.222521290183067,0.084215588867664,0.333410382270813,0.282597780227661,-0.173702403903008,-0.225389733910561,-0.143028303980827,0.070926122367382,-0.135289117693901,-0.074911437928677));
res += mul(Get(s0,0,-dy), float4x4(-0.101439304649830,-0.013906098902225,-0.168195620179176,-0.173694729804993,0.089757770299911,-0.133563399314880,0.052320919930935,-0.085966631770134,-0.116655059158802,-0.145714640617371,-0.119621500372887,-0.119438089430332,0.238032907247543,-0.131751105189323,0.017791066318750,-0.094978019595146));
res += mul(Get(s0,0,0), float4x4(0.027310054749250,-0.028006101027131,-0.051745280623436,-0.227040931582451,-0.191494002938271,0.007245569024235,0.029637919738889,-0.128189533948898,-0.079318203032017,0.023302040994167,-0.149125680327415,0.035345606505871,0.022419499233365,-0.062454592436552,0.062963560223579,0.037013500928879));
res += mul(Get(s0,0,dy), float4x4(0.092792473733425,0.120129615068436,-0.231572002172470,-0.198566779494286,-0.057767625898123,-0.128063127398491,-0.034518316388130,0.151065900921822,0.133423596620560,0.129887476563454,-0.186339110136032,0.034714095294476,0.041673857718706,0.036925487220287,-0.081344284117222,-0.210598781704903));
res += mul(Get(s0,dx,-dy), float4x4(-0.101261824369431,-0.010542045347393,-0.281673371791840,-0.163702666759491,0.211444601416588,-0.019819889217615,0.099236570298672,0.070335984230042,-0.109635688364506,0.003818666795269,-0.033781949430704,-0.184418678283691,0.520478129386902,-0.063248872756958,-0.103333733975887,0.020323107019067));
res += mul(Get(s0,dx,0), float4x4(-0.022298395633698,-0.065048374235630,-0.185909479856491,-0.146195724606514,0.089086584746838,0.050235874950886,-0.150131255388260,-0.004193594213575,-0.141957119107246,-0.054894372820854,-0.177644476294518,-0.087918743491173,0.171710282564163,0.026737175881863,0.184687241911888,-0.174156591296196));
res += mul(Get(s0,dx,dy), float4x4(-0.064806528389454,0.231649741530418,-0.058887239545584,-0.208820715546608,0.024923242628574,0.193646609783173,-0.299188792705536,-0.028734918683767,-0.193405061960220,0.281211793422699,-0.128844335675240,-0.219213664531708,0.351041764020920,0.053163982927799,0.011907140724361,-0.286862492561340));
res += mul(Get(s1,-dx,-dy), float4x4(0.078419394791126,-0.021702636033297,0.076568178832531,0.176345244050026,-0.122823730111122,-0.202707409858704,-0.042231429368258,0.075152426958084,-0.054636325687170,-0.221783041954041,-0.128349632024765,0.289064943790436,-0.062953479588032,-0.076277323067188,0.152981266379356,0.009268480353057));
res += mul(Get(s1,-dx,0), float4x4(0.232800990343094,0.115099981427193,-0.072132103145123,0.185665369033813,-0.099872283637524,0.318018704652786,0.063941627740860,0.151116907596588,0.113430365920067,-0.050731185823679,-0.286948412656784,-0.034662447869778,-0.090209648013115,-0.068838521838188,0.198223978281021,-0.119920030236244));
res += mul(Get(s1,-dx,dy), float4x4(0.308247029781342,-0.047140080481768,-0.160594686865807,-0.188901513814926,0.000435310415924,-0.040615204721689,0.074199199676514,0.123998887836933,0.019146909937263,0.027022168040276,-0.058095749467611,-0.221601441502571,-0.153868660330772,-0.098248757421970,-0.005596103146672,-0.283173501491547));
res += mul(Get(s1,0,-dy), float4x4(0.205235466361046,0.103253014385700,0.085132420063019,0.000539528729860,-0.214265391230583,-0.089203417301178,-0.066877163946629,0.062563583254814,0.133030578494072,-0.066792994737625,0.018843801692128,0.159649223089218,-0.013892501592636,0.263725578784943,0.310987323522568,0.064948916435242));
res += mul(Get(s1,0,0), float4x4(0.080696620047092,-0.160648792982101,-0.103706926107407,0.092666707932949,-0.153906032443047,0.634941875934601,-0.107604138553143,0.176814630627632,0.001569328480400,0.146739885210991,0.035365611314774,-0.108701087534428,-0.135694235563278,0.133145153522491,0.386584728956223,-0.066381536424160));
res += mul(Get(s1,0,dy), float4x4(0.076296173036098,-0.055853955447674,-0.119224041700363,-0.231254979968071,-0.133509576320648,0.076810613274574,0.037384469062090,0.045157957822084,-0.041758339852095,-0.017107630148530,-0.229396626353264,-0.142187237739563,-0.120090857148170,0.259384602308273,0.181805878877640,-0.083130478858948));
res += mul(Get(s1,dx,-dy), float4x4(0.230872288346291,-0.030538799241185,-0.037935290485620,-0.042364802211523,-0.270006477832794,-0.022184530273080,-0.138788998126984,-0.109153911471367,-0.116476602852345,-0.145795077085495,-0.304173111915588,0.134646892547607,0.280587762594223,0.017527284100652,0.163676112890244,0.036766748875380));
res += mul(Get(s1,dx,0), float4x4(0.010789643041790,-0.112520247697830,-0.246330335736275,0.078100912272930,-0.398428142070770,0.320569455623627,0.065015099942684,0.133382380008698,0.023831443861127,0.116129532456398,-0.088266290724277,-0.203929319977760,0.081633277237415,-0.021195234730840,0.062878981232643,-0.003967983182520));
res += mul(Get(s1,dx,dy), float4x4(0.108834847807884,-0.057054258882999,-0.099538221955299,-0.405072838068008,-0.229847609996796,-0.092161640524864,0.072002962231636,-0.036775618791580,-0.195216745138168,0.059066511690617,-0.108554482460022,-0.125762552022934,0.041993129998446,-0.094706013798714,-0.073755674064159,-0.014547901228070));
res += mul(Get(s2,-dx,-dy), float4x4(-0.142981365323067,-0.469605475664139,-0.061814367771149,0.234231099486351,0.068929888308048,-0.083443820476532,0.251247584819794,-0.199390858411789,0.180261120200157,-0.061632338911295,0.026599718257785,-0.006972598843277,0.273360669612885,-0.011104766279459,0.061290167272091,-0.018582655116916));
res += mul(Get(s2,-dx,0), float4x4(0.241029217839241,-0.221461787819862,0.099926605820656,0.259860515594482,0.013563239946961,-0.206053614616394,0.076286144554615,0.075914673507214,0.115054182708263,-0.139638319611549,-0.062869347631931,0.010079952888191,-0.116301387548447,0.030566526576877,-0.595325052738190,-0.080160148441792));
res += mul(Get(s2,-dx,dy), float4x4(0.092601448297501,-0.017154775559902,0.079946853220463,0.035498052835464,0.015110356733203,-0.063543409109116,0.224407568573952,-0.114723674952984,0.069567158818245,0.080039337277412,0.222744151949883,-0.238310888409615,-0.106911323964596,0.025469658896327,0.033606585115194,-0.083761811256409));
res += mul(Get(s2,0,-dy), float4x4(-0.285842865705490,0.364129841327667,-0.214620158076286,0.138635277748108,-0.035039696842432,-0.126613214612007,0.122143521904945,-0.057201806455851,0.087382413446903,-0.100915960967541,0.054064586758614,0.155181005597115,0.197035223245621,0.026050006970763,0.302618771791458,0.022716451436281));
res += mul(Get(s2,0,0), float4x4(0.110158629715443,0.276147484779358,-0.109870411455631,0.220067083835602,0.053983367979527,-0.082867063581944,0.110050909221172,0.232744216918945,0.022984702140093,-0.166205137968063,0.155201837420464,0.014834833331406,-0.057256791740656,0.016901800408959,0.193965867161751,-0.061966985464096));
res += mul(Get(s2,0,dy), float4x4(0.195655941963196,0.019787026569247,0.010029743425548,-0.037914458662271,-0.022393871098757,-0.103149995207787,0.021019300445914,-0.155470892786980,-0.060951068997383,-0.071396864950657,0.380521237850189,-0.149632662534714,-0.131844639778137,-0.007987074553967,0.266225814819336,-0.005280247423798));
res += mul(Get(s2,dx,-dy), float4x4(-0.185327306389809,-0.129521295428276,-0.333932518959045,0.354849755764008,0.146670415997505,0.195607215166092,0.230004966259003,0.097820878028870,-0.030498465523124,-0.066277824342251,-0.239414125680923,0.030641067773104,0.133360564708710,0.042192719876766,0.247962310910225,0.042067043483257));
res += mul(Get(s2,dx,0), float4x4(-0.000490143720526,0.003117485670373,-0.173139035701752,0.280259877443314,0.038285370916128,0.018338859081268,0.136856779456139,0.376859873533249,-0.233703672885895,0.063484564423561,-0.108104102313519,-0.207221433520317,-0.146502390503883,0.092215955257416,-0.033833846449852,-0.028047099709511));
res += mul(Get(s2,dx,dy), float4x4(0.081521891057491,0.200858190655708,-0.115848980844021,0.362224310636520,-0.013362540863454,-0.105198070406914,0.162406697869301,-0.295460939407349,-0.266818881034851,0.028667543083429,0.160097897052765,-0.297415524721146,-0.126454785466194,0.079700447618961,0.096941530704498,-0.026809073984623));
res += mul(Get(s3,-dx,-dy), float4x4(0.009011001326144,-0.355847537517548,-0.204232424497604,-0.017455231398344,-0.150123417377472,0.065598703920841,-0.003086404642090,0.199926212430000,0.216844394803047,0.221822887659073,0.253324538469315,-0.008471338078380,0.125654160976410,-0.243568360805511,0.045332524925470,-0.190689012408257));
res += mul(Get(s3,-dx,0), float4x4(0.007378732785583,-0.240372866392136,-0.179718151688576,0.126338750123978,-0.115852437913418,-0.058299452066422,-0.024168753996491,0.040162980556488,0.124528288841248,0.388446658849716,-0.043178003281355,-0.070261731743813,0.071012631058693,-0.006431062240154,0.039339214563370,-0.049904573708773));
res += mul(Get(s3,-dx,dy), float4x4(0.062122788280249,-0.175050258636475,-0.075595512986183,-0.010152840986848,-0.119871810078621,-0.108575589954853,0.059607088565826,0.118079088628292,-0.036338567733765,0.036603085696697,-0.124683998525143,0.229786589741707,0.064506188035011,-0.378144949674606,-0.281993627548218,0.176036551594734));
res += mul(Get(s3,0,-dy), float4x4(-0.138535663485527,0.301834106445313,-0.088419049978256,0.096993111073971,-0.145215764641762,-0.042963396757841,-0.083508625626564,0.019012298434973,0.044461175799370,-0.118757702410221,0.272552430629730,0.151932120323181,-0.217315390706062,0.025606203824282,0.046608302742243,-0.165173560380936));
res += mul(Get(s3,0,0), float4x4(0.007832162082195,0.118343085050583,-0.102739587426186,0.003539632307366,-0.035545267164707,-0.018573749810457,0.018401795998216,-0.056840565055609,0.233584210276604,0.067022442817688,0.024386934936047,-0.034426823258400,-0.182232379913330,0.274820923805237,0.101728752255440,-0.183082416653633));
res += mul(Get(s3,0,dy), float4x4(0.180367186665535,0.186156406998634,-0.143320545554161,-0.381694167852402,0.020480230450630,-0.083806954324245,0.045395180583000,0.116483300924301,0.055825822055340,0.057360157370567,0.024650372564793,0.130040988326073,0.107753284275532,0.215290278196335,-0.193027675151825,0.224151626229286));
res += mul(Get(s3,dx,-dy), float4x4(0.021037647500634,-0.075016796588898,0.018509419634938,0.109490208327770,-0.180899217724800,0.052579544484615,-0.083763711154461,0.091539606451988,-0.093082696199417,-0.133612647652626,0.281084924936295,0.071997441351414,-0.084792122244835,-0.175838470458984,-0.111916609108448,-0.215547189116478));
res += mul(Get(s3,dx,0), float4x4(0.121902652084827,-0.025992793962359,0.028975104913116,0.120386183261871,0.004452511202544,0.107413254678249,0.105462476611137,-0.046853594481945,-0.076540529727936,0.063778251409531,0.050689183175564,-0.048217020928860,-0.002591617871076,-0.054219786077738,0.127747431397438,0.009717360138893));
res += mul(Get(s3,dx,dy), float4x4(0.259352684020996,-0.101273156702518,-0.082042001187801,-0.178595989942551,0.015874043107033,0.006423290353268,0.338249653577805,0.259961813688278,-0.018629439175129,-0.046443775296211,0.093618556857109,0.175069183111191,0.491378575563431,-0.159399583935738,-0.082741729915142,0.111099682748318));
return max(float4(0,0,0,0), res);
}
