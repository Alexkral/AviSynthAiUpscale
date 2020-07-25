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
res += mul(Get(s0,-dx,-dy), float4x4(0.073061153292656,-0.068121008574963,0.098604857921600,0.001305682002567,-0.007881842553616,-0.044588696211576,0.092468835413456,0.099822103977203,-0.232603222131729,0.143095195293427,0.146279871463776,0.130011633038521,0.016284989193082,0.057598825544119,0.068015642464161,-0.077890165150166));
res += mul(Get(s0,-dx,0), float4x4(0.009781170636415,0.010384902358055,0.031893033534288,0.092915758490562,-0.024823714047670,-0.068983897566795,-0.118232965469360,-0.068872936069965,0.074448421597481,-0.010357396677136,-0.028846316039562,-0.117966167628765,-0.059068307280540,-0.108799912035465,-0.163082584738731,0.002676871605217));
res += mul(Get(s0,-dx,dy), float4x4(-0.125810921192169,0.017211526632309,0.083014585077763,-0.020953496918082,-0.042629517614841,-0.088314644992352,-0.015978796407580,0.101365447044373,-0.044138979166746,-0.081270486116409,0.002559372689575,-0.041386712342501,0.102217078208923,0.010074505582452,-0.161907121539116,-0.005926938261837));
res += mul(Get(s0,0,-dy), float4x4(0.073983073234558,-0.038143705576658,0.049029748886824,0.045126188546419,-0.161297649145126,0.101944148540497,0.002024047309533,-0.073631480336189,-0.112593308091164,-0.093680880963802,-0.025688009336591,0.095315657556057,0.030699279159307,0.045667823404074,0.136019691824913,0.005274845287204));
res += mul(Get(s0,0,0), float4x4(0.015980947762728,-0.095295898616314,-0.065748631954193,0.016605181619525,0.043519198894501,-0.016590729355812,0.010583872906864,0.003085739444941,-0.008166261948645,0.100156933069229,-0.005856303498149,0.006056790240109,-0.106039047241211,0.157605558633804,-0.012495416216552,-0.026048948988318));
res += mul(Get(s0,0,dy), float4x4(-0.067914009094238,0.033340398222208,0.077894233167171,0.103379778563976,-0.172048240900040,-0.147728562355042,0.074755482375622,0.037546399980783,0.020671671256423,-0.029793152585626,0.062224432826042,0.039481561630964,0.052116565406322,0.064352765679359,-0.165010854601860,0.102422483265400));
res += mul(Get(s0,dx,-dy), float4x4(0.032865982502699,0.008041815832257,-0.113889127969742,-0.019013058394194,-0.022575175389647,-0.038778379559517,0.058785747736692,0.071696028113365,-0.035855274647474,0.023960405960679,-0.104607596993446,0.097778290510178,-0.150411441922188,0.084281004965305,-0.141143053770065,-0.078226663172245));
res += mul(Get(s0,dx,0), float4x4(0.063644841313362,-0.027825187891722,0.066643051803112,0.025991098955274,-0.022882800549269,0.084683425724506,0.054527651518583,-0.032828681170940,-0.125232905149460,-0.154465496540070,0.004557680804282,0.210654705762863,-0.088717944920063,-0.026828931644559,-0.007605297025293,0.017056472599506));
res += mul(Get(s0,dx,dy), float4x4(0.182748973369598,-0.049535043537617,0.050180688500404,0.205331251025200,0.070745177567005,-0.047431156039238,0.014493398368359,0.046555202454329,0.100093998014927,-0.036325387656689,-0.071480095386505,-0.115663528442383,0.012659068219364,-0.052532061934471,0.024265881627798,0.088764362037182));
res += mul(Get(s1,-dx,-dy), float4x4(0.034328117966652,0.005381613969803,0.027962099760771,0.031291019171476,0.020779905840755,0.095106557011604,-0.042316645383835,0.009914529509842,0.115936376154423,0.181821793317795,-0.005294425413013,-0.092456459999084,-0.074452407658100,0.015204066410661,-0.026566531509161,-0.144611641764641));
res += mul(Get(s1,-dx,0), float4x4(0.005931021180004,-0.074475057423115,0.089303575456142,-0.051951650530100,0.021115442737937,0.070460438728333,-0.123810201883316,-0.123911567032337,-0.108543559908867,-0.108971133828163,0.060016386210918,0.072470143437386,0.010833963751793,-0.005746075883508,0.144628554582596,-0.022694442421198));
res += mul(Get(s1,-dx,dy), float4x4(-0.161804974079132,0.093933179974556,0.027864100411534,0.010077624581754,-0.064567267894745,0.078240811824799,-0.008779738098383,-0.135408192873001,-0.183588087558746,0.017841255292296,0.055843926966190,0.034088805317879,0.100786894559860,0.169252768158913,0.006291855126619,0.028299758210778));
res += mul(Get(s1,0,-dy), float4x4(0.068343251943588,0.064237207174301,-0.006517768837512,-0.025802986696362,0.076281093060970,0.126722425222397,0.020793518051505,0.014619371853769,0.117618434131145,-0.032666232436895,-0.031045639887452,0.103589765727520,0.002674773568287,0.125410571694374,0.025754459202290,-0.106146924197674));
res += mul(Get(s1,0,0), float4x4(0.106464415788651,0.081728115677834,0.088994652032852,-0.050461865961552,0.071265049278736,0.025379942730069,0.013003487139940,-0.107965506613255,-0.006211682222784,-0.139012217521667,-0.180241629481316,0.045381229370832,-0.180100291967392,-0.011965812183917,-0.078691706061363,0.022739781066775));
res += mul(Get(s1,0,dy), float4x4(0.097663633525372,0.104981616139412,0.172576636075974,0.113605894148350,0.054889246821404,0.100083112716675,-0.092723026871681,-0.032257996499538,0.100093156099319,0.024199731647968,0.024270066991448,0.061250258237123,0.102126620709896,0.031538691371679,-0.053408533334732,-0.016552234068513));
res += mul(Get(s1,dx,-dy), float4x4(-0.048047382384539,-0.006498889997602,0.001630567479879,-0.016551433131099,-0.063391789793968,-0.001105732750148,-0.050159782171249,0.062597520649433,0.078400991857052,0.017401888966560,0.060040824115276,0.091032527387142,-0.001743785105646,0.140723243355751,-0.117433093488216,-0.067408829927444));
res += mul(Get(s1,dx,0), float4x4(-0.032859992235899,-0.046525709331036,-0.020275305956602,-0.048387300223112,-0.112060412764549,0.068230107426643,-0.056846447288990,0.075628861784935,-0.105199903249741,0.136588037014008,-0.065774634480476,-0.035114813596010,-0.040506254881620,-0.004719780292362,0.043506287038326,0.091506563127041));
res += mul(Get(s1,dx,dy), float4x4(-0.085167102515697,0.044806525111198,0.086925767362118,-0.063644975423813,0.054581750184298,-0.115824192762375,0.079955354332924,0.129766345024109,-0.036178227514029,0.030495857819915,-0.009228843264282,-0.048071388155222,-0.177743270993233,0.059063009917736,0.027184737846255,0.080848053097725));
res += mul(Get(s2,-dx,-dy), float4x4(0.024578861892223,-0.057295206934214,-0.058146927505732,0.111524254083633,-0.074547804892063,0.137527540326118,-0.086912132799625,0.025286290794611,0.080528877675533,0.048656497150660,-0.028680099174380,0.079206228256226,-0.006702300626785,-0.021992942318320,0.140412658452988,-0.122064329683781));
res += mul(Get(s2,-dx,0), float4x4(0.011041037738323,0.034353945404291,0.248523920774460,-0.057317577302456,0.075671672821045,0.117972157895565,0.045526657253504,0.006687572225928,0.029181795194745,0.058535676449537,-0.138148173689842,0.058434549719095,0.102806419134140,-0.007124000694603,0.098127864301205,0.156370863318443));
res += mul(Get(s2,-dx,dy), float4x4(0.021276656538248,0.074311271309853,0.080731421709061,0.039080083370209,-0.000711407046765,-0.182093515992165,-0.183693557977676,-0.056105814874172,0.075762242078781,0.039046060293913,-0.028964664787054,-0.033502332866192,-0.044474925845861,-0.001000776886940,-0.015890542417765,-0.179558962583542));
res += mul(Get(s2,0,-dy), float4x4(-0.097740396857262,0.042426679283381,0.038454033434391,0.093599326908588,0.005936817266047,0.034357015043497,0.009727961383760,-0.158205494284630,0.178071156144142,0.048973161727190,-0.047234915196896,-0.055343698710203,-0.024326501414180,0.210072919726372,0.006979150697589,-0.135280206799507));
res += mul(Get(s2,0,0), float4x4(-0.066826954483986,0.126078039407730,0.145815134048462,-0.082624308764935,0.078256167471409,-0.075613357126713,0.036534477025270,-0.076075673103333,0.103476278483868,0.006452149245888,-0.083772443234921,0.079958237707615,-0.019139457494020,-0.102477744221687,0.127389669418335,0.102947711944580));
res += mul(Get(s2,0,dy), float4x4(-0.077833503484726,-0.078149504959583,-0.212007910013199,0.230041041970253,0.056427244096994,-0.024293437600136,-0.003874725429341,-0.049953017383814,-0.093620531260967,-0.013148758560419,0.041956420987844,-0.029553955420852,0.056389335542917,-0.090597860515118,0.150662630796432,0.028043119236827));
res += mul(Get(s2,dx,-dy), float4x4(0.141646876931190,0.050529181957245,-0.041372094303370,0.086436383426189,0.065380588173866,-0.051633782684803,0.030576633289456,0.028120568022132,-0.067773506045341,0.040957704186440,0.003686629235744,-0.075950749218464,0.086861915886402,0.020994961261749,0.092367142438889,-0.036251790821552));
res += mul(Get(s2,dx,0), float4x4(-0.076275348663330,-0.031982041895390,-0.040866576135159,-0.048988193273544,-0.179110005497932,0.132166072726250,-0.064053244888783,0.062435191124678,-0.009752947837114,-0.026977811008692,-0.025430383160710,0.032305676490068,-0.012611051090062,-0.001726067508571,-0.027085371315479,0.000504559371620));
res += mul(Get(s2,dx,dy), float4x4(-0.020453950390220,0.020287450402975,-0.004806388635188,0.082714065909386,0.018354864791036,0.097645007073879,0.044500228017569,-0.058153390884399,-0.052835885435343,-0.041944693773985,-0.049793187528849,0.037110179662704,-0.026607517153025,-0.060333475470543,-0.048744514584541,0.063306592404842));
res += mul(Get(s3,-dx,-dy), float4x4(0.078135401010513,0.019840769469738,0.061124190688133,-0.065191209316254,0.067836247384548,0.036973264068365,-0.109900809824467,0.004188008606434,0.104295305907726,-0.143094241619110,-0.124694548547268,-0.028877668082714,0.072515331208706,-0.075140833854675,0.060684233903885,-0.060552392154932));
res += mul(Get(s3,-dx,0), float4x4(0.061098661273718,0.061533212661743,-0.073836848139763,0.078792035579681,0.147115185856819,0.029351143166423,0.051164343953133,0.007367020007223,0.013608529232442,-0.031764138489962,-0.043210644274950,0.029342081397772,-0.070112377405167,-0.030629640445113,-0.059097200632095,-0.135456010699272));
res += mul(Get(s3,-dx,dy), float4x4(0.040921188890934,-0.096549600362778,-0.089356668293476,0.058499719947577,0.003807732136920,0.106808945536613,0.029630359262228,-0.062372297048569,0.004765400663018,0.087576396763325,-0.058200065046549,0.076464645564556,0.045829214155674,0.050304289907217,0.072553932666779,0.016389282420278));
res += mul(Get(s3,0,-dy), float4x4(0.273595124483109,-0.037597604095936,-0.030330158770084,0.001762198284268,-0.016526522114873,-0.011549942195415,-0.000753650267143,-0.056045968085527,0.116203956305981,0.057800896465778,0.048334445804358,0.074100472033024,0.118735417723656,0.168331295251846,-0.100155569612980,-0.014819680713117));
res += mul(Get(s3,0,0), float4x4(0.002484806347638,-0.107940331101418,0.080348744988441,0.014567345380783,-0.047678481787443,-0.073813691735268,-0.026769505813718,0.057968467473984,-0.147956430912018,0.013553164899349,0.122196249663830,-0.183377936482430,-0.072565197944641,0.078019730746746,0.049465782940388,-0.032728545367718));
res += mul(Get(s3,0,dy), float4x4(0.028343074023724,0.005027810577303,0.014601161703467,-0.049977265298367,-0.038990914821625,-0.001610741717741,-0.036700192838907,0.087939441204071,0.027644002810121,0.145506039261818,0.086519114673138,-0.012497434392571,-0.084392376244068,-0.087869845330715,-0.070267945528030,0.076532728970051));
res += mul(Get(s3,dx,-dy), float4x4(-0.007077014539391,0.014237546361983,0.020317312330008,-0.069144941866398,-0.145008891820908,-0.039273973554373,-0.019225999712944,0.120066121220589,-0.088813133537769,-0.050171267241240,0.088182933628559,-0.086640305817127,-0.003815619042143,-0.031730573624372,-0.086957283318043,0.047030616551638));
res += mul(Get(s3,dx,0), float4x4(0.051426593214273,0.060840703547001,0.094617284834385,-0.035740863531828,-0.005280121229589,0.122617043554783,-0.076234698295593,0.061258029192686,-0.053764767944813,0.021734302863479,0.057249628007412,-0.044026471674442,0.049774639308453,-0.055297069251537,-0.041435956954956,0.029952470213175));
res += mul(Get(s3,dx,dy), float4x4(-0.043979220092297,-0.088368453085423,0.019892336800694,0.087024673819542,-0.073663502931595,0.006497753318399,-0.053705766797066,-0.063903868198395,0.021635636687279,-0.080113463103771,0.045759074389935,0.143195018172264,-0.001929628313519,-0.022782985121012,-0.110694423317909,-0.023437749594450));
return max(float4(0,0,0,0), res);
}
