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
res += mul(Get(s0,-dx,-dy), float4x4(-0.118333198130131,0.008396524935961,0.030407901853323,0.076268598437309,0.056771129369736,-0.267478972673416,0.070384323596954,-0.042092226445675,-0.061197225004435,-0.030009377747774,0.068453975021839,0.096253477036953,-0.154917493462563,-0.096037067472935,-0.128426671028137,-0.018921770155430));
res += mul(Get(s0,-dx,0), float4x4(-0.070924729108810,-0.001914665219374,-0.125184416770935,0.150447547435760,0.114511162042618,0.012736041098833,-0.003086585551500,-0.021557280793786,-0.053906146436930,-0.128709733486176,-0.133616566658020,-0.151694253087044,-0.078997023403645,-0.041072830557823,-0.068352729082108,-0.102444015443325));
res += mul(Get(s0,-dx,dy), float4x4(0.050988648086786,-0.102626010775566,-0.018849400803447,-0.056361209601164,0.005400083959103,0.083926007151604,0.092858403921127,0.177873387932777,0.004286829847842,-0.234784692525864,0.218695312738419,0.035320863127708,-0.377272248268127,-0.011505919508636,0.124208554625511,-0.071256361901760));
res += mul(Get(s0,0,-dy), float4x4(-0.079352542757988,0.004974401090294,-0.046310331672430,0.001862785196863,-0.025376914069057,0.020758291706443,0.015432608313859,-0.075991809368134,-0.028882488608360,-0.120431080460548,-0.012937637977302,-0.161829158663750,-0.032194171100855,0.065058320760727,-0.100550398230553,0.062286347150803));
res += mul(Get(s0,0,0), float4x4(0.168620422482491,0.000006489495263,-0.028393473476171,0.067174024879932,0.127868607640266,0.147531136870384,-0.037001479417086,0.198099419474602,0.118420682847500,-0.084136858582497,0.113204002380371,0.054327882826328,0.053920149803162,-0.124345041811466,-0.016259130090475,-0.115303792059422));
res += mul(Get(s0,0,dy), float4x4(0.054045267403126,0.157049298286438,-0.074887797236443,-0.125080421566963,0.087004333734512,0.068571574985981,-0.025014165788889,0.058933932334185,-0.008926912210882,0.059625778347254,0.313762247562408,-0.139827251434326,0.057273294776678,-0.066500931978226,-0.048312608152628,0.043419536203146));
res += mul(Get(s0,dx,-dy), float4x4(-0.020577922463417,-0.199452966451645,-0.053190778940916,-0.014388990588486,0.162815555930138,-0.221727997064590,0.045221567153931,-0.175643399357796,0.215062022209167,0.070241786539555,-0.084790617227554,-0.014025779440999,-0.142107665538788,-0.076976180076599,-0.008953353390098,-0.011394681409001));
res += mul(Get(s0,dx,0), float4x4(-0.105842858552933,0.061262331902981,0.026023657992482,-0.098055467009544,-0.075622633099556,-0.128727942705154,-0.237859904766083,-0.014188669621944,0.022361282259226,0.155490100383759,0.008319316431880,0.139908760786057,-0.228780597448349,-0.001559408265166,0.206676423549652,0.025308344513178));
res += mul(Get(s0,dx,dy), float4x4(-0.009878403507173,0.106076397001743,0.046575352549553,-0.065663285553455,-0.218491256237030,0.193931326270103,0.159055680036545,0.034538380801678,0.050158146768808,0.090357132256031,-0.324691534042358,-0.005700767971575,-0.027489326894283,0.182003408670425,-0.089703179895878,0.088153161108494));
res += mul(Get(s1,-dx,-dy), float4x4(-0.052170675247908,0.048689857125282,-0.106573246419430,0.035444531589746,0.113033659756184,-0.154146745800972,0.085741810500622,0.138020932674408,-0.116177335381508,0.108553878962994,-0.178587049245834,-0.050122458487749,-0.080525845289230,-0.084203563630581,-0.116170667111874,-0.055628355592489));
res += mul(Get(s1,-dx,0), float4x4(-0.148107498884201,-0.054459549486637,-0.064199462532997,0.049167972058058,-0.080630816519260,0.085520774126053,0.012899235822260,-0.184236854314804,0.038068696856499,0.238183766603470,-0.140417307615280,0.216788902878761,-0.088262990117073,0.068389818072319,-0.037085574120283,-0.035748578608036));
res += mul(Get(s1,-dx,dy), float4x4(0.074579358100891,0.040697611868382,-0.074665628373623,0.054285552352667,-0.080918677151203,-0.098689757287502,0.091403998434544,-0.141318351030350,-0.027594823390245,0.149646580219269,-0.116205811500549,-0.141554549336433,-0.261016994714737,-0.170160129666328,0.008920244872570,0.168697953224182));
res += mul(Get(s1,0,-dy), float4x4(-0.132464855909348,-0.057375773787498,-0.078533962368965,0.018594803288579,-0.007954964414239,0.015207079239190,0.004389106761664,0.093720458447933,-0.075172588229179,0.002277600811794,-0.032632704824209,0.144771307706833,0.072756081819534,-0.125447407364845,0.012836654670537,0.104187771677971));
res += mul(Get(s1,0,0), float4x4(-0.006805434823036,-0.067279040813446,0.223440825939178,-0.238032579421997,-0.088036932051182,0.003529456444085,-0.063877247273922,0.111684203147888,0.019002275541425,0.039597019553185,0.005257905460894,0.049408122897148,0.046730272471905,-0.067026048898697,0.086113743484020,-0.079628825187683));
res += mul(Get(s1,0,dy), float4x4(-0.003822499653324,0.094327896833420,-0.009911051951349,0.003222396830097,0.024653770029545,-0.045040868222713,0.164369821548462,-0.016491614282131,-0.014673900790513,0.079043954610825,0.050429582595825,-0.033239174634218,0.092638738453388,-0.143519461154938,-0.162145406007767,-0.180851906538010));
res += mul(Get(s1,dx,-dy), float4x4(-0.265706121921539,0.243578746914864,0.011155197396874,-0.095085360109806,-0.116393879055977,0.037753015756607,-0.011868284083903,0.012193601578474,0.169790685176849,0.086820229887962,0.195859760046005,0.003199645550922,0.343720674514771,-0.071656003594398,0.001592310145497,-0.067845351994038));
res += mul(Get(s1,dx,0), float4x4(0.049260526895523,0.030960194766521,-0.085181705653667,0.041121963411570,-0.054888159036636,-0.026825278997421,0.256320863962173,-0.081442110240459,0.001249418128282,0.037997018545866,0.057972531765699,0.142181187868118,0.149943292140961,-0.103387035429478,-0.209349021315575,-0.232327789068222));
res += mul(Get(s1,dx,dy), float4x4(0.194202989339828,-0.001563906786032,-0.066589511930943,-0.035080991685390,-0.200132936239243,0.166277483105659,0.092599183320999,0.007748418487608,0.062960892915726,0.192653983831406,-0.002975302748382,-0.055101718753576,-0.058676134794950,0.006088215857744,0.108501024544239,-0.143549248576164));
res += mul(Get(s2,-dx,-dy), float4x4(0.116749495267868,-0.017528632655740,0.280779302120209,0.058586549013853,-0.057275440543890,0.012030819430947,0.076889857649803,0.216612413525581,0.130509987473488,-0.144993171095848,-0.109371215105057,0.055989038199186,-0.192421585321426,0.104238204658031,-0.210037261247635,-0.085644438862801));
res += mul(Get(s2,-dx,0), float4x4(0.010737210512161,-0.189680218696594,0.102873995900154,-0.074065811932087,0.005557129625231,0.126739189028740,0.011751734651625,0.029079118743539,0.080545350909233,0.036616887897253,-0.096883155405521,-0.016492635011673,-0.028923032805324,0.021580548956990,-0.069169804453850,0.011892621405423));
res += mul(Get(s2,-dx,dy), float4x4(-0.012063642032444,0.123835436999798,-0.138826712965965,0.128016307950020,0.017621275037527,-0.110207915306091,-0.275870889425278,0.123157240450382,0.032314296811819,0.010071993805468,0.060126025229692,0.019836721941829,-0.192794591188431,-0.152399405837059,-0.142775580286980,0.049555558711290));
res += mul(Get(s2,0,-dy), float4x4(-0.056991640478373,0.005047630984336,0.022404627874494,0.074038721621037,-0.115632057189941,-0.258107841014862,0.072300732135773,0.163252443075180,0.037800535559654,0.100178778171539,0.006968122441322,-0.109858937561512,0.033441290259361,0.147377997636795,0.126240745186806,0.104182735085487));
res += mul(Get(s2,0,0), float4x4(0.095809780061245,0.055423349142075,-0.041815411299467,-0.043619554489851,-0.041583213955164,-0.278020858764648,0.059028327465057,0.072622716426849,0.050161488354206,-0.066684707999229,-0.044367916882038,-0.085911720991135,-0.040452767163515,-0.006846590898931,0.058344725519419,0.002489474369213));
res += mul(Get(s2,0,dy), float4x4(0.042270738631487,-0.142771348357201,-0.138459563255310,0.022141862660646,0.169157385826111,-0.099158488214016,-0.165300667285919,0.021778251975775,0.219832196831703,0.184906572103500,-0.106988415122032,-0.076518468558788,-0.053504973649979,0.003342431504279,-0.094976320862770,-0.175110623240471));
res += mul(Get(s2,dx,-dy), float4x4(-0.095985062420368,-0.038685776293278,-0.102095283567905,0.116479896008968,0.108494937419891,0.126955762505531,-0.052531957626343,-0.122768506407738,0.158565208315849,-0.031264670193195,-0.051973491907120,0.010433109477162,-0.127727895975113,0.027845986187458,-0.062203850597143,0.116261377930641));
res += mul(Get(s2,dx,0), float4x4(0.091965869069099,0.088099814951420,-0.218166589736938,0.017496654763818,0.156333759427071,-0.064260303974152,0.071725465357304,0.168239161372185,-0.043360557407141,-0.211756452918053,-0.103146024048328,-0.044088974595070,-0.126503482460976,-0.060687694698572,0.007816143333912,0.029660725966096));
res += mul(Get(s2,dx,dy), float4x4(0.112194217741489,-0.136724233627319,-0.063732042908669,-0.108550295233727,-0.100886292755604,-0.053402017802000,-0.098476171493530,0.228374540805817,0.087078794836998,-0.015074077993631,0.135269388556480,0.106361940503120,-0.168520212173462,-0.040495432913303,-0.011732362210751,-0.029035808518529));
res += mul(Get(s3,-dx,-dy), float4x4(-0.076839923858643,-0.072210088372231,-0.318745493888855,-0.010994095355272,0.169060781598091,0.189964801073074,-0.001579749048688,0.027251405641437,-0.043301392346621,0.100439831614494,-0.142059937119484,0.051169585436583,0.105565518140793,-0.080789528787136,0.094568930566311,0.147444903850555));
res += mul(Get(s3,-dx,0), float4x4(0.191599950194359,0.117965623736382,-0.234024852514267,0.049400053918362,0.095686584711075,0.138001725077629,-0.055446121841669,-0.079537235200405,-0.067091628909111,0.096760779619217,0.141274243593216,0.238140746951103,0.065805122256279,0.093278683722019,0.030582392588258,0.009024487808347));
res += mul(Get(s3,-dx,dy), float4x4(0.067802496254444,0.016098067164421,-0.079257912933826,0.199395179748535,0.172780901193619,0.074178017675877,-0.022381607443094,-0.091991484165192,-0.000700856791809,0.121506810188293,-0.083480186760426,0.073759593069553,-0.056164793670177,0.035902269184589,-0.011696156114340,0.115926660597324));
res += mul(Get(s3,0,-dy), float4x4(-0.118660338222980,0.089553505182266,0.107074037194252,-0.024943787604570,-0.029806377366185,0.017426580190659,-0.120502203702927,-0.209199383854866,0.001123180962168,0.071717873215675,-0.012835402972996,0.118289001286030,0.070485204458237,-0.014822497032583,0.168126240372658,-0.011968635953963));
res += mul(Get(s3,0,0), float4x4(0.117063067853451,0.082202099263668,0.046301688998938,-0.173231363296509,0.010146740823984,-0.027817314490676,-0.012786046601832,0.057847592979670,0.105159483850002,0.128516227006912,-0.142673999071121,0.078359566628933,-0.061090420931578,-0.065529562532902,0.128891065716743,0.179963812232018));
res += mul(Get(s3,0,dy), float4x4(0.114863120019436,0.052023455500603,-0.118107460439205,-0.110984660685062,0.050373703241348,-0.091404043138027,-0.081292517483234,0.035556126385927,0.031079050153494,-0.207458406686783,0.215313807129860,0.071418762207031,0.036538757383823,-0.070719540119171,0.029741466045380,0.189890176057816));
res += mul(Get(s3,dx,-dy), float4x4(0.039614409208298,-0.046148996800184,-0.007122694514692,-0.115407161414623,0.002046856330708,-0.112194888293743,-0.143666148185730,-0.087044104933739,0.132396310567856,-0.000631530827377,0.196289405226707,0.206896513700485,-0.048540439456701,-0.005985334049910,0.022423157468438,-0.079982332885265));
res += mul(Get(s3,dx,0), float4x4(-0.089318655431271,-0.110053583979607,-0.105802074074745,-0.123081907629967,0.057739283889532,-0.115538358688354,0.084478259086609,-0.034447070211172,-0.063148215413094,-0.296946108341217,-0.021235087886453,-0.196919679641724,0.055873617529869,0.017279967665672,-0.025828840211034,-0.065451472997665));
res += mul(Get(s3,dx,dy), float4x4(0.147425204515457,0.107457175850868,-0.135579258203506,-0.045389130711555,0.048663530498743,0.002263597911224,0.000075388808909,-0.070470824837685,0.036259867250919,0.126253843307495,-0.075751930475235,-0.065990395843983,-0.238477244973183,-0.041389413177967,0.065932542085648,-0.070607088506222));
return max(float4(0,0,0,0), res);
}
