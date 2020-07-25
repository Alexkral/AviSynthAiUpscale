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
res += mul(Get(s0,-dx,-dy), float4x4(-0.018223190680146,-0.002238969085738,-0.027549272403121,-0.004961329977959,0.001642517163418,0.009949860163033,0.000515640771482,-0.011326793581247,0.003197066718712,-0.019542459398508,0.036958493292332,0.008370286785066,0.002238205168396,-0.024934465065598,-0.053168971091509,0.001585881691426));
res += mul(Get(s0,-dx,0), float4x4(-0.020636936649680,-0.022997831925750,0.048376224935055,0.042118445038795,0.003701320849359,-0.007432654965669,0.004808497615159,-0.004080142360181,-0.020963896065950,-0.049010202288628,0.015439729206264,0.054329708218575,-0.037939868867397,0.002543988637626,-0.095203258097172,0.068657390773296));
res += mul(Get(s0,-dx,dy), float4x4(-0.013728355057538,-0.012421122752130,-0.045248910784721,0.067945547401905,-0.000034595213947,-0.004715318325907,0.002839913591743,-0.000006681309515,-0.015493198297918,-0.007536784745753,0.028285507112741,0.023092504590750,-0.006959652993828,-0.013405689969659,0.123826876282692,0.037838581949472));
res += mul(Get(s0,0,-dy), float4x4(-0.006319117266685,0.005483198910952,-0.022443164139986,-0.050690352916718,-0.006041214801371,0.003903587581590,-0.002002293244004,0.004261528141797,-0.010956460610032,0.024816961959004,0.034703712910414,-0.051853526383638,-0.018208820372820,0.003762379055843,-0.061386555433273,-0.014433636330068));
res += mul(Get(s0,0,0), float4x4(0.004496316425502,0.065022006630898,-0.042408078908920,-0.049625013023615,0.004724963102490,-0.004436748102307,0.004164949059486,0.007285760249943,-0.022929158061743,-0.025788335129619,0.028942616656423,-0.040381051599979,0.022127691656351,-0.004556233994663,-0.086923591792583,-0.046936396509409));
res += mul(Get(s0,0,dy), float4x4(-0.013838475570083,0.037924569100142,-0.077792398631573,-0.024481073021889,0.000509566278197,0.005488753784448,-0.007314278744161,-0.002001580549404,-0.010268511250615,-0.027243133634329,0.002102156868204,-0.025297623127699,0.033978279680014,-0.048600330948830,0.168349102139473,-0.058988697826862));
res += mul(Get(s0,dx,-dy), float4x4(-0.006770535837859,-0.011935668997467,-0.031883995980024,-0.008720685727894,-0.003371678292751,0.004201319068670,-0.007608859334141,0.008655777201056,-0.016475094482303,-0.004411264322698,0.041806969791651,-0.012113142758608,-0.008074515499175,0.033885549753904,-0.002561130095273,0.018958970904350));
res += mul(Get(s0,dx,0), float4x4(-0.002849904121831,0.054425623267889,-0.020786574110389,-0.009461218491197,-0.007125153206289,-0.001830564462580,-0.001161977648735,-0.006263167131692,-0.015288221649826,-0.006047436501831,-0.067727066576481,-0.053371671587229,0.005860936827958,-0.005439998582006,-0.019223487004638,-0.039950724691153));
res += mul(Get(s0,dx,dy), float4x4(0.001138167572208,0.023874070495367,-0.071954995393753,0.009787398390472,-0.002193397143856,-0.004179503768682,-0.004038540180773,-0.009106410667300,-0.007963951677084,-0.044851314276457,-0.010169547982514,0.004221646115184,-0.053298652172089,0.000805330637377,0.119232267141342,0.002306550741196));
res += mul(Get(s1,-dx,-dy), float4x4(0.009940540418029,0.022476091980934,0.051546502858400,0.016478098928928,0.002233068225905,-0.004638930317014,0.001916290144436,-0.004194685257971,0.043055873364210,-0.054955977946520,-0.083845615386963,-0.000252446450759,-0.004213604610413,-0.009389107115567,-0.002239899942651,0.001174005912617));
res += mul(Get(s1,-dx,0), float4x4(-0.027565071359277,0.010592248290777,-0.026962101459503,0.068466350436211,0.003666965989396,-0.000564968620893,-0.004550483077765,0.004773858003318,-0.028916085138917,-0.022922609001398,-0.022308057174087,0.065788321197033,-0.008826796896756,0.003756092628464,0.003464368171990,-0.004188518505543));
res += mul(Get(s1,-dx,dy), float4x4(0.003197427373379,0.001047704834491,-0.003112534992397,0.014120521955192,0.004066424444318,0.004423862788826,-0.004264813382179,0.000206575816264,-0.061338733881712,-0.015983181074262,-0.000607882626355,0.040571250021458,0.004828094504774,-0.007313019596040,-0.002481842413545,0.005074883811176));
res += mul(Get(s1,0,-dy), float4x4(0.034538190811872,0.042998921126127,0.037508420646191,-0.001774385105819,0.000318798702210,0.003800243604928,-0.003474709112197,-0.002897534519434,0.061709698289633,-0.030528126284480,0.063318423926830,0.009938522242010,-0.004044314846396,0.002273583319038,-0.008038395084441,-0.004815576132387));
res += mul(Get(s1,0,0), float4x4(0.016625763848424,0.035442396998405,0.024834120646119,-0.017160976305604,-0.002230264013633,0.001856444287114,0.005713599734008,0.004343499429524,0.024947084486485,0.114131212234497,0.064878322184086,0.160456597805023,-0.007584433536977,-0.003345188219100,-0.005719179753214,0.002458612900227));
res += mul(Get(s1,0,dy), float4x4(0.010635101236403,-0.009447799995542,0.129810899496078,-0.001659955480136,0.004616806749254,0.003201294923201,-0.008378456346691,0.003427772782743,-0.008945127949119,-0.030212728306651,0.071017973124981,0.136659100651741,0.003868304891512,0.009189987555146,-0.008918598294258,0.007640575058758));
res += mul(Get(s1,dx,-dy), float4x4(0.001254473463632,-0.000649802619591,0.014773827977479,0.006357711739838,0.009119188413024,-0.007745719514787,0.001309154671617,-0.000789568119217,-0.037137094885111,-0.019421644508839,-0.165776118636131,-0.151119545102119,-0.000775724474806,0.001490792026743,-0.003602273995057,0.001809180714190));
res += mul(Get(s1,dx,0), float4x4(0.012567534111440,0.005375192034990,0.006270949263126,-0.052652332931757,-0.000451995409094,-0.005648841150105,-0.009650928899646,0.001664854586124,-0.006685032974929,0.116114631295204,-0.175927013158798,-0.109516948461533,0.000030737988709,0.005615393165499,0.003502443898469,-0.004719567485154));
res += mul(Get(s1,dx,dy), float4x4(0.006702500395477,0.008122661150992,0.013682258315384,-0.015673559159040,0.005470157135278,0.003754062112421,-0.004511505365372,-0.000890472321771,0.044673446565866,-0.115243069827557,0.227385252714157,-0.107666760683060,0.002493872540072,-0.000000895697667,-0.005503544118255,-0.000662973907311));
res += mul(Get(s2,-dx,-dy), float4x4(-0.016801208257675,-0.027028387412429,-0.026764392852783,-0.025993131101131,0.000573979283217,0.000998793751933,0.009213878773153,0.008532944135368,0.010867975652218,-0.007132879458368,-0.045925594866276,-0.007952637039125,0.002664955565706,-0.027070373296738,-0.009643845260143,-0.025664905086160));
res += mul(Get(s2,-dx,0), float4x4(-0.016337081789970,-0.013515387661755,-0.002172015374526,-0.026602616533637,-0.005357002839446,0.057187218219042,-0.034713141620159,0.000739706738386,-0.016736906021833,0.020525794476271,-0.019206367433071,-0.005167928524315,-0.004096153192222,0.018546411767602,0.000393068563426,0.011337078176439));
res += mul(Get(s2,-dx,dy), float4x4(-0.001804532716051,-0.010837663896382,0.031328406184912,-0.015055520460010,0.002194802742451,-0.029622042551637,-0.018385009840131,-0.037719771265984,-0.014297545887530,-0.014597252942622,0.051582887768745,0.004575029015541,-0.008097971789539,-0.018056491389871,0.028526717796922,-0.032064560800791));
res += mul(Get(s2,0,-dy), float4x4(-0.016135971993208,-0.018606485798955,-0.037979602813721,-0.031772620975971,-0.012529339641333,0.027444507926702,-0.001371997059323,-0.015181615017354,-0.003343380754814,-0.033378828316927,0.032687310129404,-0.015439582988620,-0.021277857944369,0.015816463157535,-0.000966670690104,-0.031559504568577));
res += mul(Get(s2,0,0), float4x4(-0.005573703907430,-0.020951850339770,-0.006490747909993,-0.025061281397939,0.027075558900833,0.024415923282504,0.026125390082598,-0.018273733556271,-0.007779825013131,-0.024245901033282,0.011863666586578,-0.001524052582681,0.027361577376723,-0.002102305646986,0.018017994239926,-0.021202102303505));
res += mul(Get(s2,0,dy), float4x4(0.007498680148274,-0.000810871191788,0.011067334562540,-0.016114691272378,0.044183045625687,-0.031361266970634,0.020522618666291,-0.029975092038512,-0.014190171845257,-0.018828073516488,0.027719916775823,-0.007938705384731,0.028590314090252,-0.009965200908482,0.030586726963520,-0.020436536520720));
res += mul(Get(s2,dx,-dy), float4x4(0.011807733215392,0.023191029205918,0.010450716130435,0.010912917554379,-0.023802762851119,0.066517144441605,0.006227913778275,0.019297063350677,-0.007031143177301,0.027502030134201,-0.001107457093894,-0.013017846271396,0.041422028094530,-0.021192906424403,-0.010736692696810,-0.014569575898349));
res += mul(Get(s2,dx,0), float4x4(0.004432628396899,0.008809231221676,0.016523510217667,-0.014583922922611,0.019585408270359,0.020596770569682,0.013735889457166,-0.020439494401217,0.009512112475932,-0.016876198351383,-0.005826377309859,-0.026241805404425,0.032998457551003,-0.009366235695779,0.031594082713127,-0.029344175010920));
res += mul(Get(s2,dx,dy), float4x4(-0.000700512551703,0.003633186221123,-0.013497849926353,-0.006665824446827,0.009404428303242,0.022160761058331,0.014118108898401,-0.014870142564178,0.011600379832089,0.001780363847502,-0.000486075616209,-0.014483665116131,0.003296633251011,0.006881945300847,-0.063311375677586,-0.032899539917707));
res += mul(Get(s3,-dx,-dy), float4x4(-0.021180015057325,-0.018499702215195,-0.031921993941069,0.006897652521729,-0.010237558744848,0.005374117754400,-0.022857250645757,0.007321200333536,0.007063062861562,-0.006222463212907,-0.002124120015651,-0.002338497200981,-0.004234942607582,-0.005750249139965,0.000821083667688,0.005350181367248));
res += mul(Get(s3,-dx,0), float4x4(-0.020063219591975,-0.016510324552655,-0.000354766874807,-0.018243456259370,-0.015610551461577,-0.006479567848146,-0.050467010587454,0.004950055386871,-0.020530449226499,-0.015315420925617,-0.033771075308323,0.147079855203629,-0.010360846295953,-0.015374873764813,0.005694931373000,-0.002715832088143));
res += mul(Get(s3,-dx,dy), float4x4(-0.017157986760139,0.017719835042953,-0.010348281823099,0.001712470315397,-0.003208546666428,-0.015834920108318,0.039620440453291,-0.009866535663605,-0.006985789630562,-0.005267560482025,-0.053452067077160,0.048812385648489,0.002871684031561,0.004493653308600,0.000432077591540,-0.006275610066950));
res += mul(Get(s3,0,-dy), float4x4(-0.029084760695696,-0.016198866069317,-0.026815414428711,-0.040249016135931,0.001726597198285,-0.010372675023973,-0.000655325187836,0.002262940164655,0.003969699144363,0.036521207541227,-0.050139494240284,-0.073694117367268,-0.006269057281315,0.013977792114019,-0.007125788368285,-0.001211071619764));
res += mul(Get(s3,0,0), float4x4(-0.032311175018549,0.015431042760611,-0.000884839857463,-0.005977877415717,0.019225863739848,-0.002046143636107,0.010896367952228,-0.024251174181700,0.026474382728338,0.140826776623726,-0.060708217322826,-0.013626232743263,0.004821393638849,-0.000951313937549,0.005193547811359,-0.003154229139909));
res += mul(Get(s3,0,dy), float4x4(-0.006878652144223,0.013886526226997,-0.024274226278067,-0.003372143255547,0.013963949866593,-0.014936792664230,0.066188208758831,-0.003963092807680,0.055674955248833,-0.046409383416176,0.100397720932961,-0.032133020460606,-0.005890184082091,0.008664799854159,-0.003465756308287,-0.007884582504630));
res += mul(Get(s3,dx,-dy), float4x4(-0.004771986510605,0.004270107951015,-0.003158190287650,0.008143975399435,-0.002388765569776,0.010279796086252,-0.016006037592888,0.007496023550630,0.024156609550118,-0.015198782086372,-0.001950565958396,-0.012541187927127,-0.006436122115701,-0.004380252677947,0.000003666184966,0.003647125093266));
res += mul(Get(s3,dx,0), float4x4(-0.002910196082667,-0.010102646425366,0.008141607977450,0.004771884065121,-0.004178143106401,0.003730976721272,-0.020440138876438,-0.011072484776378,0.048949472606182,0.019045976921916,0.000867397233378,0.000526231073309,-0.000097555814136,0.005779740866274,0.002999644028023,-0.005620551761240));
res += mul(Get(s3,dx,dy), float4x4(0.003026673570275,0.008987363427877,-0.022265283390880,-0.002163641387597,-0.008522135205567,-0.002294517122209,0.031597252935171,0.011993657797575,0.047753386199474,-0.009610835462809,0.008126640692353,-0.039540909230709,-0.004865561146289,-0.002457137219608,0.000554554513656,-0.002265306189656));
return max(float4(0,0,0,0), res);
}
