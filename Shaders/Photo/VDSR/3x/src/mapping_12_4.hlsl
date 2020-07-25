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
res += mul(Get(s0,-dx,-dy), float4x4(0.080474406480789,-0.077119417488575,-0.157552301883698,0.158388718962669,-0.097820423543453,0.062630169093609,0.107420824468136,-0.085198625922203,0.000176221743459,-0.125615566968918,0.018326591700315,-0.025985756888986,0.054991245269775,0.091392681002617,0.051956910640001,-0.062884025275707));
res += mul(Get(s0,-dx,0), float4x4(-0.027124285697937,0.074804455041885,-0.095837794244289,0.014886208809912,-0.112234994769096,0.006318897474557,0.134331941604614,0.319033622741699,0.089581601321697,-0.044192660599947,0.031609918922186,-0.086597688496113,0.034233678132296,0.008078900165856,-0.157493069767952,0.243140414357185));
res += mul(Get(s0,-dx,dy), float4x4(-0.020409397780895,0.069116450846195,-0.039179347455502,-0.140784427523613,0.199627771973610,0.029645353555679,0.011062504723668,0.003303016535938,0.057469822466373,0.007837397977710,0.115563444793224,-0.021394029259682,-0.036214385181665,-0.087710805237293,0.227495104074478,0.121719196438789));
res += mul(Get(s0,0,-dy), float4x4(-0.042787984013557,0.065009810030460,0.018557928502560,0.147296622395515,0.020756633952260,0.095292918384075,-0.041222572326660,0.091356091201305,0.084739156067371,-0.017045628279448,0.075403310358524,-0.159805014729500,-0.104701049625874,-0.148263230919838,0.017591577023268,-0.243979439139366));
res += mul(Get(s0,0,0), float4x4(0.153409749269485,0.005217208992690,0.138525351881981,-0.060652781277895,-0.050335764884949,-0.101555608212948,-0.146720662713051,0.066233009099960,-0.115414001047611,0.114026322960854,0.019560620188713,-0.121160909533501,-0.148142650723457,0.068358317017555,-0.207978069782257,-0.160180240869522));
res += mul(Get(s0,0,dy), float4x4(-0.107034988701344,-0.050578635185957,0.223704561591148,0.011667366139591,0.205293223261833,-0.073199965059757,0.035669695585966,-0.099643155932426,0.082749716937542,0.205130964517593,0.110466003417969,-0.008265813812613,-0.033114902675152,-0.055649630725384,0.018738595768809,0.156078711152077));
res += mul(Get(s0,dx,-dy), float4x4(0.063993513584137,-0.073814138770103,-0.135295093059540,0.207830056548119,-0.162036240100861,-0.156566366553307,0.181225806474686,0.014377913437784,0.024025527760386,-0.200561299920082,0.058954291045666,0.074216686189175,0.159943029284477,0.302495002746582,-0.086758844554424,0.100396722555161));
res += mul(Get(s0,dx,0), float4x4(-0.061540152877569,0.116721585392952,-0.129161626100540,-0.007701425347477,-0.118239425122738,0.037992496043444,0.030503600835800,0.086535736918449,-0.009632280096412,-0.016689661890268,-0.093397177755833,-0.124105170369148,0.131980404257774,-0.190413326025009,0.021805930882692,-0.011535427533090));
res += mul(Get(s0,dx,dy), float4x4(0.089487530291080,0.051967058330774,-0.001208290224895,0.020204279571772,-0.180626675486565,0.031306546181440,0.213924154639244,-0.141344949603081,0.064831040799618,0.005744494032115,0.017288399860263,0.012249861843884,-0.077397130429745,-0.138742357492447,-0.068777531385422,0.180971294641495));
res += mul(Get(s1,-dx,-dy), float4x4(-0.120007522404194,-0.048219524323940,-0.009411034174263,-0.121152527630329,0.046171590685844,0.182538494467735,0.037221774458885,-0.036651097238064,0.286872744560242,0.131538078188896,0.068013571202755,0.054075658321381,0.149033695459366,-0.076273195445538,-0.053203031420708,-0.078540340065956));
res += mul(Get(s1,-dx,0), float4x4(-0.070844881236553,0.079370260238647,-0.105674028396606,-0.035109251737595,0.127651691436768,-0.100149571895599,0.071656435728073,0.060505352914333,0.100114278495312,0.027035389095545,-0.064049676060677,-0.111347362399101,0.113025024533272,0.005119867157191,0.040389869362116,0.098347626626492));
res += mul(Get(s1,-dx,dy), float4x4(0.040559083223343,0.009816315025091,0.128613620996475,-0.085183836519718,0.108656316995621,-0.139617517590523,0.083702653646469,0.136356577277184,-0.036269761621952,-0.172799989581108,-0.045257396996021,-0.105566091835499,-0.024795735254884,0.015255909413099,-0.021003289148211,-0.135758146643639));
res += mul(Get(s1,0,-dy), float4x4(-0.074408337473869,-0.073700040578842,0.026238050311804,-0.057241778820753,-0.030766891315579,-0.200219556689262,-0.027282316237688,0.094594925642014,-0.050578434020281,0.061168540269136,0.018829388543963,0.005757995415479,0.140645429491997,0.107797361910343,0.087864801287651,0.007105478551239));
res += mul(Get(s1,0,0), float4x4(-0.095869109034538,0.134563416242599,0.006084056571126,0.013067388907075,-0.030753143131733,0.068317711353302,0.079825855791569,0.021916845813394,0.000214169122046,0.083262622356415,-0.122047312557697,0.066095881164074,-0.038150854408741,-0.094349548220634,0.010725941509008,-0.011035770177841));
res += mul(Get(s1,0,dy), float4x4(0.155013412237167,0.067056372761726,-0.031758036464453,-0.031068224459887,0.095769718289375,0.105779565870762,0.004834090825170,0.095246307551861,-0.230833172798157,-0.183320149779320,-0.030009916052222,0.113796807825565,-0.136927023530006,-0.026463428512216,0.067705847322941,-0.062748163938522));
res += mul(Get(s1,dx,-dy), float4x4(0.006675153970718,-0.057829651981592,-0.060109313577414,0.094899341464043,-0.011847769841552,-0.044839762151241,0.047887019813061,0.046801198273897,-0.202470496296883,0.144679769873619,-0.096449069678783,-0.030409149825573,0.090783230960369,-0.030882148072124,-0.138765305280685,-0.063643231987953));
res += mul(Get(s1,dx,0), float4x4(-0.105539977550507,0.125794738531113,-0.085627757012844,0.091343350708485,0.158572211861610,-0.088341280817986,0.054766379296780,0.011590337380767,-0.002140218624845,-0.137809872627258,0.195099562406540,-0.219665229320526,-0.061539851129055,0.032629739493132,0.072895340621471,0.224726542830467));
res += mul(Get(s1,dx,dy), float4x4(-0.052250936627388,0.031634964048862,0.122847251594067,0.074245288968086,0.199294820427895,0.012599056586623,-0.220018953084946,0.040718790143728,-0.069084331393242,0.028628621250391,-0.187919929623604,-0.129390552639961,0.239337652921677,-0.076447196304798,-0.176980689167976,-0.055085770785809));
res += mul(Get(s2,-dx,-dy), float4x4(0.000693520123605,-0.055387206375599,0.125747144222260,-0.115890204906464,0.033893797546625,0.055494651198387,0.055420227348804,0.015688316896558,0.059732157737017,0.008340392261744,0.019523622468114,0.084515549242496,0.084016010165215,0.007212982047349,0.014360184781253,-0.154614582657814));
res += mul(Get(s2,-dx,0), float4x4(-0.001061686431058,-0.166853323578835,0.016920391470194,-0.197195589542389,0.084605038166046,-0.248937919735909,0.062868528068066,-0.148618370294571,0.114024333655834,0.026972291991115,0.021669169887900,0.143515363335609,0.066794782876968,-0.104299679398537,-0.013285747729242,-0.159820243716240));
res += mul(Get(s2,-dx,dy), float4x4(0.066311269998550,-0.106302261352539,0.010345390997827,0.108790047466755,-0.079457104206085,0.145860105752945,0.122662425041199,0.192542582750320,0.170648068189621,-0.081284008920193,-0.076462887227535,0.123146332800388,-0.089025922119617,-0.084300518035889,-0.062601119279861,-0.022863294929266));
res += mul(Get(s2,0,-dy), float4x4(0.004166018683463,0.036213345825672,0.024190962314606,0.146795615553856,-0.031772021204233,-0.202278196811676,-0.001759684644639,0.090884424746037,0.038547284901142,0.013082153163850,0.102654464542866,-0.111064277589321,0.093675240874290,-0.177510797977448,-0.052793275564909,0.031821601092815));
res += mul(Get(s2,0,0), float4x4(0.019901258870959,-0.063605234026909,-0.003344995668158,0.001761199091561,-0.040173161774874,-0.083305232226849,-0.143970966339111,0.071357719600201,0.202184990048409,0.209922313690186,-0.063927181065083,0.204471305012703,-0.192629143595695,-0.055304758250713,-0.007812483236194,0.037227068096399));
res += mul(Get(s2,0,dy), float4x4(0.030752923339605,-0.072698041796684,0.041042149066925,0.102121889591217,0.002144900849089,0.115524657070637,0.082613758742809,-0.031887445598841,0.003851762739941,-0.134985312819481,-0.119970545172691,0.009093163534999,-0.047361548990011,-0.078429937362671,0.033309169113636,-0.037979826331139));
res += mul(Get(s2,dx,-dy), float4x4(0.012329009361565,0.001954173436388,-0.008423716761172,0.248379081487656,-0.115196861326694,-0.002343774307519,0.074771173298359,0.007779491133988,-0.137270018458366,-0.127486169338226,0.052415154874325,0.085388258099556,0.001858637202531,0.137531906366348,-0.015884807333350,-0.046034827828407));
res += mul(Get(s2,dx,0), float4x4(-0.087619952857494,-0.179113581776619,-0.032876599580050,0.085451126098633,-0.015692146494985,-0.100880280137062,-0.125822216272354,-0.075686313211918,-0.135906621813774,0.029896853491664,-0.201772168278694,-0.020362373441458,0.122610807418823,-0.173392653465271,-0.079353362321854,-0.062319952994585));
res += mul(Get(s2,dx,dy), float4x4(-0.098196476697922,-0.097351908683777,0.006228161975741,-0.088121905922890,-0.131345808506012,0.037028692662716,0.048890106379986,0.220420449972153,-0.023505169898272,0.160503447055817,-0.158118560910225,0.040154464542866,-0.025212893262506,-0.052150771021843,-0.140648528933525,-0.062955476343632));
res += mul(Get(s3,-dx,-dy), float4x4(-0.034771349281073,-0.021173629909754,0.050528291612864,-0.007163313217461,-0.050815299153328,-0.033407554030418,-0.022567950189114,0.031481537967920,-0.008107604458928,0.288057118654251,0.087038964033127,0.119514457881451,0.002407275373116,-0.038340009748936,-0.052893873304129,0.044558253139257));
res += mul(Get(s3,-dx,0), float4x4(0.047113832086325,-0.016519010066986,-0.204065740108490,0.216273635625839,0.189786002039909,-0.038451571017504,-0.053735416382551,-0.097927831113338,0.062783062458038,0.112022258341312,0.162334799766541,0.075897842645645,-0.130798101425171,0.043547239154577,0.149694576859474,-0.074481241405010));
res += mul(Get(s3,-dx,dy), float4x4(0.121968671679497,0.013608492910862,-0.049550931900740,0.220730811357498,-0.129843145608902,0.087510854005814,0.190717294812202,0.248648449778557,-0.112092785537243,0.029859103262424,0.075373560190201,-0.022328475490212,0.099399864673615,-0.136749118566513,-0.035467520356178,0.018398769199848));
res += mul(Get(s3,0,-dy), float4x4(0.030700895935297,-0.107277058064938,0.015228372067213,-0.165321499109268,0.010723968036473,-0.125802397727966,-0.062498312443495,-0.094579033553600,0.232990980148315,-0.043324582278728,0.118627965450287,-0.046510782092810,0.050195146352053,-0.057727508246899,-0.065497986972332,0.057367462664843));
res += mul(Get(s3,0,0), float4x4(0.049824103713036,-0.000016062711438,-0.011028907261789,-0.077144704759121,0.071488238871098,0.130595952272415,0.007115536835045,-0.165968492627144,0.090356156229973,0.083528131246567,-0.096209295094013,-0.073758617043495,-0.006401834078133,0.157270178198814,-0.035028122365475,-0.077361494302750));
res += mul(Get(s3,0,dy), float4x4(0.007367473095655,-0.093296200037003,-0.073947295546532,0.099817022681236,-0.111642882227898,-0.049997158348560,0.064009532332420,-0.025489600375295,-0.067362248897552,0.062690839171410,0.052077073603868,-0.096541628241539,0.004701063036919,-0.108618490397930,0.020598672330379,0.026278190314770));
res += mul(Get(s3,dx,-dy), float4x4(0.068593941628933,-0.044070765376091,-0.016979420557618,-0.042265672236681,0.225005835294724,0.093352153897285,-0.047153942286968,0.082918539643288,-0.004974220413715,-0.090892717242241,-0.048520807176828,-0.023423951119184,-0.100162863731384,0.009128512814641,0.057790130376816,0.021863278001547));
res += mul(Get(s3,dx,0), float4x4(-0.317262470722198,-0.055307507514954,0.076210297644138,0.025597982108593,-0.012359002605081,-0.038306921720505,0.110691085457802,0.085558213293552,0.024272141978145,0.132410496473312,0.160379186272621,-0.087408930063248,-0.008971645496786,0.012535003013909,0.048680704087019,0.084932051599026));
res += mul(Get(s3,dx,dy), float4x4(0.210647851228714,-0.155248209834099,-0.058338314294815,0.063473924994469,-0.094915390014648,-0.045718010514975,-0.020155049860477,0.059519771486521,-0.056468866765499,0.116874508559704,-0.036409262567759,0.012750599533319,-0.168495312333107,0.003875404829159,0.090616293251514,0.017522677779198));
return max(float4(0,0,0,0), res);
}