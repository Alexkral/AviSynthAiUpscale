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
res += mul(Get(s0,-dx,-dy), float4x4(0.059787917882204,0.091075718402863,-0.089235089719296,0.316918551921844,0.264649569988251,-0.004797924775630,0.013625474646688,0.011873501352966,0.036681216210127,0.003909886814654,0.150860354304314,0.149633377790451,0.012810411863029,-0.162378013134003,-0.067671909928322,0.101329952478409));
res += mul(Get(s0,-dx,0), float4x4(0.003654631786048,-0.183095619082451,-0.189704388380051,0.002659075660631,0.104823015630245,-0.093000553548336,0.123880870640278,0.003411557991058,-0.031430479139090,0.167570903897285,-0.030274042859674,-0.087589547038078,-0.109945394098759,-0.001289470936172,-0.092875540256500,-0.203232988715172));
res += mul(Get(s0,-dx,dy), float4x4(0.100675567984581,0.019201658666134,-0.000317032681778,-0.052549820393324,0.180107876658440,-0.230429053306580,-0.102516062557697,-0.023251332342625,0.178718328475952,-0.240876749157906,-0.015918942168355,0.178375795483589,-0.179084822535515,0.036599837243557,-0.163075670599937,-0.077801488339901));
res += mul(Get(s0,0,-dy), float4x4(-0.183795586228371,-0.047321878373623,-0.101064182817936,0.176801785826683,0.104886062443256,0.090509660542011,0.175895065069199,-0.000476256624097,-0.075998038053513,-0.111316554248333,0.013396108523011,0.091270200908184,0.237692207098007,-0.004505393560976,-0.111672349274158,0.070345081388950));
res += mul(Get(s0,0,0), float4x4(0.000810377998278,0.071212112903595,0.080174431204796,-0.051531005650759,-0.028032479807734,-0.036203294992447,0.217987075448036,-0.037996176630259,-0.030187083408237,0.007356829475611,0.016230421140790,0.092724643647671,-0.173966154456139,0.011141275055707,-0.011043826118112,-0.033384501934052));
res += mul(Get(s0,0,dy), float4x4(-0.058605495840311,0.085083737969398,0.016866166144609,0.030804172158241,0.021115139126778,-0.151638090610504,0.079204313457012,-0.007500417064875,-0.192502304911613,0.017868515104055,0.059495307505131,0.140873938798904,-0.041456285864115,0.059013735502958,0.212227091193199,0.207179799675941));
res += mul(Get(s0,dx,-dy), float4x4(0.072417080402374,0.151839569211006,0.029527995735407,-0.140735402703285,0.015977846458554,-0.025207621976733,-0.013262365944684,0.069082401692867,-0.073476001620293,0.179022714495659,-0.219970867037773,0.218720495700836,0.189988642930984,-0.234712317585945,0.011301045306027,-0.078197427093983));
res += mul(Get(s0,dx,0), float4x4(0.034560404717922,0.053936041891575,0.142373710870743,0.201518401503563,-0.003154736245051,-0.225025281310081,-0.068888433277607,-0.041293784976006,0.011602682061493,-0.192363187670708,0.103964366018772,-0.148201331496239,0.218486681580544,-0.009380205534399,0.078333325684071,0.091337256133556));
res += mul(Get(s0,dx,dy), float4x4(0.034478228539228,-0.006031073164195,0.035371083766222,-0.107409052550793,0.344309002161026,0.042007468640804,0.059656210243702,-0.040647622197866,0.065785229206085,0.084205046296120,-0.197456538677216,0.031790673732758,-0.011751546524465,-0.011731138452888,0.302388429641724,-0.251840651035309));
res += mul(Get(s1,-dx,-dy), float4x4(0.166494071483612,-0.011713851243258,-0.097838468849659,0.135048598051071,0.027838246896863,0.127094238996506,0.039281781762838,0.098656728863716,-0.160932630300522,-0.017479367554188,-0.159874349832535,-0.013815608806908,-0.215618818998337,-0.198097333312035,-0.087894208729267,-0.058184709399939));
res += mul(Get(s1,-dx,0), float4x4(0.041641738265753,0.165572375059128,0.206285208463669,0.282038182020187,0.071076542139053,-0.085341699421406,0.052611891180277,0.171369016170502,0.007313693873584,0.039561711251736,0.157152816653252,-0.072144560515881,0.160370156168938,-0.032542757689953,-0.022025855258107,-0.077177368104458));
res += mul(Get(s1,-dx,dy), float4x4(0.006377733778208,0.037248708307743,-0.096375457942486,-0.041763234883547,0.081549093127251,0.096494138240814,0.228275030851364,-0.000720773998182,-0.092664070427418,-0.002826779615134,-0.033687841147184,-0.032435502856970,-0.315849751234055,0.055171545594931,-0.123219922184944,-0.038147259503603));
res += mul(Get(s1,0,-dy), float4x4(0.110979951918125,0.074936233460903,0.032842662185431,0.009981315582991,0.163567349314690,0.141554564237595,-0.047345094382763,-0.120743505656719,0.237778306007385,-0.013917125761509,0.180382519960403,-0.018893286585808,-0.058066058903933,0.215969562530518,-0.037923883646727,-0.013358663767576));
res += mul(Get(s1,0,0), float4x4(-0.157983675599098,-0.013851236552000,0.223473504185677,-0.172420904040337,0.048890262842178,0.034426294267178,-0.083963200449944,0.027915485203266,0.148265659809113,-0.108334571123123,0.199492424726486,0.040169250220060,-0.068058677017689,-0.130849882960320,-0.009140336886048,0.254677563905716));
res += mul(Get(s1,0,dy), float4x4(0.034427519887686,0.020610809326172,0.065959595143795,-0.227357447147369,-0.031419675797224,-0.026411123573780,-0.113124042749405,0.171316325664520,0.028764151036739,0.121215499937534,0.013413051143289,0.012638420797884,0.079136200249195,0.040439542382956,-0.030559826642275,-0.105153962969780));
res += mul(Get(s1,dx,-dy), float4x4(0.084379099309444,0.024320296943188,-0.076086699962616,0.040658373385668,0.191351398825645,0.109659142792225,0.000466943311039,0.069207698106766,-0.023765804246068,0.039420820772648,-0.085259616374969,-0.084652304649353,-0.025592835620046,-0.028622247278690,-0.107518993318081,0.146728098392487));
res += mul(Get(s1,dx,0), float4x4(-0.007414339110255,0.143485650420189,-0.169553279876709,-0.086726963520050,-0.055138040333986,-0.189455687999725,-0.104427158832550,-0.222284674644470,0.069751173257828,-0.166290834546089,-0.095605902373791,-0.249249547719955,-0.034519825130701,-0.026795152574778,0.050253339111805,0.083680815994740));
res += mul(Get(s1,dx,dy), float4x4(-0.001029135892168,-0.021637907251716,-0.093519046902657,0.129338815808296,-0.195568829774857,-0.089152172207832,-0.098945006728172,0.060829699039459,-0.134595468640327,0.090935565531254,0.097431585192680,0.146785914897919,0.124961972236633,0.058121118694544,0.019306639209390,0.039596945047379));
res += mul(Get(s2,-dx,-dy), float4x4(0.220331907272339,0.019413085654378,0.025721618905663,0.064877212047577,-0.063460640609264,0.103717632591724,0.115163467824459,-0.122030310332775,-0.035010330379009,0.057212743908167,0.114935368299484,-0.048405218869448,-0.061407543718815,0.006534088868648,-0.095703184604645,0.007293179631233));
res += mul(Get(s2,-dx,0), float4x4(0.045798081904650,-0.162304922938347,-0.069717280566692,0.148188501596451,0.025046475231647,-0.069878078997135,0.091898761689663,-0.018195334821939,0.114811949431896,-0.048038881272078,0.157849743962288,0.010507813654840,0.025710402056575,-0.111859209835529,-0.224679887294769,-0.163590595126152));
res += mul(Get(s2,-dx,dy), float4x4(-0.325707614421844,0.008826893754303,-0.072065457701683,-0.055924806743860,0.017881384119391,-0.027812952175736,-0.116199180483818,0.119423501193523,-0.134337872266769,-0.004740652628243,0.040196530520916,0.191698819398880,-0.137608751654625,0.320599824190140,0.108358711004257,-0.079367406666279));
res += mul(Get(s2,0,-dy), float4x4(0.151257321238518,-0.028085809201002,0.056298486888409,-0.028845677152276,0.001175861805677,0.073863476514816,-0.110447332262993,-0.020311955362558,-0.131651341915131,0.078864209353924,0.024648079648614,-0.049711089581251,-0.217483863234520,0.005511139519513,0.011295142583549,0.088622480630875));
res += mul(Get(s2,0,0), float4x4(0.205821365118027,0.060685794800520,-0.092395298182964,-0.044013533741236,-0.064721502363682,0.060122780501842,-0.171810910105705,-0.168564647436142,-0.116346709430218,0.111309126019478,0.032219573855400,-0.068349942564964,-0.114942170679569,-0.139776378870010,0.133851960301399,-0.118963383138180));
res += mul(Get(s2,0,dy), float4x4(-0.061086736619473,-0.056059524416924,-0.004528076853603,-0.140917524695396,-0.083376407623291,-0.058062460273504,-0.007579559460282,-0.115403309464455,-0.057116650044918,0.221746936440468,-0.010596003383398,0.263838082551956,0.037485767155886,0.018874496221542,-0.126897037029266,0.111932910978794));
res += mul(Get(s2,dx,-dy), float4x4(-0.351817995309830,0.103077262639999,-0.065183393657207,-0.072447337210178,-0.007569777313620,0.085447847843170,-0.098258681595325,0.177194491028786,0.123252488672733,0.135876268148422,-0.099378138780594,0.153462231159210,0.197739869356155,0.006504429038614,-0.083525702357292,-0.000928789377213));
res += mul(Get(s2,dx,0), float4x4(-0.031959820538759,0.041190814226866,-0.255225092172623,0.018684089183807,-0.095314413309097,0.099687315523624,0.045278169214725,0.034935925155878,0.040694762021303,0.028923958539963,-0.152704685926437,-0.193818494677544,-0.067866586148739,0.191049933433533,0.078467950224876,-0.175322949886322));
res += mul(Get(s2,dx,dy), float4x4(-0.089593507349491,-0.059632513672113,-0.059201490134001,0.014395687729120,-0.066199794411659,-0.029377251863480,-0.117722302675247,0.096986114978790,0.066380009055138,-0.157432660460472,-0.005779201164842,-0.115727931261063,0.026315325871110,-0.153306499123573,-0.102095432579517,0.161776497960091));
res += mul(Get(s3,-dx,-dy), float4x4(-0.001791243557818,-0.082280322909355,0.056899514049292,0.009794808924198,-0.084631085395813,0.059970349073410,0.108435437083244,-0.069264858961105,-0.061762634664774,0.255680471658707,-0.018659545108676,0.009385590441525,-0.057073745876551,0.038891308009624,0.140516608953476,0.054773151874542));
res += mul(Get(s3,-dx,0), float4x4(-0.169170051813126,-0.010272866114974,-0.078167013823986,-0.045440088957548,0.079916790127754,-0.021160714328289,0.066409930586815,0.096075430512428,0.009922032244503,0.170377701520920,0.006313606631011,0.033645134419203,-0.013670425862074,0.058388169854879,0.097966313362122,-0.140359953045845));
res += mul(Get(s3,-dx,dy), float4x4(0.094181798398495,0.034541171044111,0.000437650800450,0.054247580468655,0.170627146959305,0.273100316524506,0.020777301862836,-0.126953348517418,0.087965898215771,0.079759828746319,-0.055547039955854,0.137162700295448,-0.021147239953279,0.038676973432302,-0.053631160408258,0.092465519905090));
res += mul(Get(s3,0,-dy), float4x4(0.102198928594589,-0.044766645878553,-0.032047726213932,0.185220927000046,0.248029127717018,0.170394495129585,0.160419464111328,0.204141452908516,-0.026493504643440,-0.082579880952835,0.138480216264725,0.046403650194407,0.119985930621624,0.136751115322113,0.040778629481792,0.082812324166298));
res += mul(Get(s3,0,0), float4x4(-0.193203195929527,0.065493091940880,0.015522737056017,-0.192698374390602,0.001784990425222,-0.104524575173855,0.096289061009884,0.005943669937551,-0.008651197887957,-0.107565753161907,0.189367145299911,0.077714115381241,-0.023807313293219,-0.111621595919132,-0.036529898643494,0.073592245578766));
res += mul(Get(s3,0,dy), float4x4(-0.132457420229912,-0.035782147198915,-0.200751721858978,0.157352820038795,-0.200199589133263,0.072663061320782,0.104130379855633,-0.005831295624375,0.004958770703524,-0.280558347702026,0.012109033763409,-0.095076687633991,0.100378930568695,-0.174007311463356,0.040497735142708,0.176002085208893));
res += mul(Get(s3,dx,-dy), float4x4(0.281915068626404,-0.131261631846428,0.024015236645937,-0.109697818756104,-0.181061103940010,0.033675864338875,-0.075074642896652,0.216177001595497,0.068476662039757,-0.089967682957649,0.046463556587696,-0.004547098185867,-0.116126574575901,0.136592999100685,-0.015747496858239,-0.243454575538635));
res += mul(Get(s3,dx,0), float4x4(-0.007736719213426,0.121940575540066,0.164903461933136,0.138268187642097,-0.138121068477631,-0.127402320504189,0.179630935192108,0.147687926888466,0.034008298069239,-0.005683708004653,-0.034873433411121,-0.013297721743584,-0.014503608457744,-0.077731460332870,-0.027673130854964,-0.150677740573883));
res += mul(Get(s3,dx,dy), float4x4(-0.193505600094795,-0.051343254745007,0.064024433493614,-0.005496624391526,0.049984339624643,0.043259821832180,-0.129335090517998,-0.015966264531016,0.012152509763837,0.114093631505966,0.008819136768579,-0.051775403320789,-0.144174978137016,-0.163743793964386,-0.083998031914234,0.220799162983894));
return max(float4(0,0,0,0), res);
}
