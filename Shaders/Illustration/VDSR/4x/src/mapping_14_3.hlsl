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
res += mul(Get(s0,-dx,-dy), float4x4(0.141885310411453,-0.275475919246674,0.012062357738614,-0.069950722157955,-0.002466602018103,0.111383125185966,-0.016290225088596,0.076370686292648,-0.074080750346184,0.036951526999474,-0.098069027066231,0.031873822212219,-0.065204538404942,0.649737358093262,0.140181511640549,0.281934380531311));
res += mul(Get(s0,-dx,0), float4x4(-0.104344792664051,-0.083589062094688,0.092291690409184,-0.125471681356430,0.090606220066547,0.169800683856010,0.055475257337093,-0.097586907446384,0.063160933554173,0.317149430513382,-0.036279361695051,0.058760866522789,-0.045926582068205,0.026790255680680,-0.050016645342112,0.028655538335443));
res += mul(Get(s0,-dx,dy), float4x4(-0.108662046492100,-0.142685055732727,0.052348699420691,0.029309287667274,0.109085932374001,0.231279924511909,-0.119882628321648,-0.053145486861467,0.006097318138927,0.252082735300064,0.117607168853283,-0.084850661456585,-0.020054459571838,-0.240045338869095,-0.026897301897407,0.138313218951225));
res += mul(Get(s0,0,-dy), float4x4(-0.045396018773317,-0.353079259395599,0.023001441732049,-0.134255185723305,-0.009142471477389,0.427688151597977,0.030134184285998,0.244677886366844,-0.012926497496665,-0.320021152496338,-0.151545315980911,-0.243783548474312,0.041227303445339,0.496266275644302,0.222979143261909,0.231943681836128));
res += mul(Get(s0,0,0), float4x4(0.071663618087769,0.134149730205536,-0.056434828788042,-0.148910477757454,0.010702452622354,0.379267930984497,0.132373899221420,0.058916166424751,-0.045011170208454,0.020412337034941,0.027629965916276,-0.030945548787713,-0.042219288647175,-0.309287548065186,0.005471345968544,0.082222551107407));
res += mul(Get(s0,0,dy), float4x4(-0.051202718168497,-0.053214147686958,-0.086830832064152,-0.131939336657524,0.136892095208168,0.188983663916588,0.074883952736855,0.012549959123135,0.041116870939732,0.274117618799210,0.254785031080246,-0.028802435845137,-0.102875933051109,-0.179442271590233,-0.111057780683041,-0.265683472156525));
res += mul(Get(s0,dx,-dy), float4x4(0.140817359089851,-0.241668656468391,-0.030081432312727,-0.367507070302963,-0.085335649549961,0.038489554077387,0.044375631958246,0.197670429944992,-0.046651434153318,-0.241414278745651,-0.155386447906494,-0.066462621092796,0.025308154523373,0.353558927774429,0.321224153041840,0.136752694845200));
res += mul(Get(s0,dx,0), float4x4(0.046894062310457,-0.183235079050064,-0.100064232945442,-0.077383875846863,-0.090392403304577,0.307695090770721,0.121437519788742,0.084179513156414,-0.070238098502159,0.182355150580406,-0.140573129057884,0.078276090323925,-0.026645001024008,-0.214003413915634,0.038364764302969,-0.236919581890106));
res += mul(Get(s0,dx,dy), float4x4(0.085982233285904,-0.153684809803963,-0.340961724519730,-0.067704290151596,0.086775839328766,-0.041137412190437,0.111647196114063,-0.020547315478325,-0.079610057175159,0.158221632242203,0.156911060214043,0.042905542999506,-0.075431220233440,-0.185578420758247,0.026373360306025,-0.163113132119179));
res += mul(Get(s1,-dx,-dy), float4x4(0.018894642591476,0.277016460895538,0.068238779902458,0.087583556771278,-0.037970885634422,0.477336615324020,0.005370247643441,0.060678381472826,0.046191725879908,0.511984109878540,0.168106183409691,0.247469961643219,-0.067268751561642,-0.405790448188782,0.016946079209447,0.017001207917929));
res += mul(Get(s1,-dx,0), float4x4(0.097824506461620,0.367141097784042,0.031087243929505,0.121609255671501,0.001962279668078,0.245500341057777,0.039130613207817,0.076242104172707,-0.040748760104179,0.490331679582596,0.262828409671783,0.309903234243393,0.064097568392754,0.200500160455704,0.093784257769585,0.086070194840431));
res += mul(Get(s1,-dx,dy), float4x4(0.037596412003040,0.387260407209396,-0.057094801217318,0.003837346797809,0.062053091824055,0.125781148672104,-0.067660152912140,0.101486012339592,0.091001860797405,0.154263854026794,0.068705841898918,-0.005541890393943,0.077314741909504,0.318673551082611,0.025730444118381,-0.016870951279998));
res += mul(Get(s1,0,-dy), float4x4(-0.045518863946199,0.113171264529228,-0.008680655620992,0.124636173248291,0.133611977100372,0.271746337413788,-0.061615515500307,-0.012990379706025,0.011975696310401,-0.140627115964890,0.059918090701103,-0.001357823261060,-0.087612032890320,-0.184042140841484,-0.075060181319714,-0.091908834874630));
res += mul(Get(s1,0,0), float4x4(0.010402517393231,-0.007780401501805,0.046625219285488,0.136034667491913,0.019603129476309,-0.132534950971603,0.074494779109955,0.120214745402336,-0.333981692790985,-0.204083308577538,0.049991156905890,0.185133770108223,-0.160343065857887,-0.005123803392053,0.028205225244164,0.040625046938658));
res += mul(Get(s1,0,dy), float4x4(-0.063708238303661,0.046735327690840,-0.108350105583668,0.043954674154520,-0.055038973689079,-0.249504566192627,-0.053434174507856,-0.057877618819475,-0.225952774286270,-0.103042162954807,-0.063489302992821,-0.119274713099003,0.205978602170944,0.186803132295609,0.118695117533207,0.302401095628738));
res += mul(Get(s1,dx,-dy), float4x4(-0.009233498945832,0.136213138699532,-0.031863361597061,-0.060139764100313,0.128039568662643,0.233239382505417,-0.133170336484909,0.159491375088692,-0.034074012190104,-0.255322247743607,-0.077533408999443,-0.087447077035904,-0.150311172008514,-0.190623298287392,-0.047999437898397,0.107970274984837));
res += mul(Get(s1,dx,0), float4x4(0.006117633543909,0.040183141827583,-0.119664356112480,-0.015432478860021,-0.086469963192940,-0.070403493940830,-0.056415967643261,-0.030501794070005,-0.194566994905472,-0.207364350557327,-0.062895275652409,-0.194207504391670,-0.092981092631817,-0.100207529962063,-0.121647797524929,0.122201949357986));
res += mul(Get(s1,dx,dy), float4x4(-0.008416774682701,0.077938295900822,-0.096433728933334,0.031289584934711,-0.179004773497581,-0.251470685005188,-0.105258144438267,-0.114183634519577,-0.148802801966667,-0.210084885358810,-0.067059703171253,-0.012789835222065,-0.043714240193367,0.015650328248739,0.110592000186443,0.242632687091827));
res += mul(Get(s2,-dx,-dy), float4x4(-0.105177119374275,0.119685664772987,0.132935225963593,0.099410310387611,-0.110791504383087,0.104202516376972,0.037145808339119,0.084335327148438,-0.042021941393614,0.289764672517776,-0.052638519555330,-0.045265834778547,-0.079611159861088,-0.250112354755402,-0.023263182491064,-0.413668841123581));
res += mul(Get(s2,-dx,0), float4x4(-0.061395701020956,0.002971383975819,-0.007119725458324,-0.011328195221722,-0.073070734739304,0.227156892418861,0.166921854019165,0.253709614276886,0.078034445643425,0.467601597309113,0.095132246613503,0.140014737844467,-0.057770166546106,-0.255546450614929,-0.110527224838734,-0.240621089935303));
res += mul(Get(s2,-dx,dy), float4x4(-0.062245093286037,-0.238600805401802,-0.115425929427147,-0.094099760055542,-0.074228554964066,0.340508580207825,0.161392495036125,0.102188371121883,0.258088737726212,0.255488097667694,0.113974958658218,0.080928944051266,0.035799186676741,-0.282744675874710,-0.128616198897362,0.027550706639886));
res += mul(Get(s2,0,-dy), float4x4(-0.117277279496193,0.300570309162140,0.007267524488270,0.020363001152873,-0.139226585626602,0.182956129312515,-0.061000887304544,-0.025596057996154,-0.012117940932512,0.356323987245560,-0.028862072154880,0.053744312375784,-0.050714496523142,-0.229153171181679,-0.130925774574280,-0.157272309064865));
res += mul(Get(s2,0,0), float4x4(-0.068059258162975,-0.157397061586380,-0.029934085905552,-0.003244669409469,-0.072223179042339,0.314426928758621,0.053261458873749,0.256982207298279,-0.084208443760872,0.165332764387131,0.151527732610703,0.108348540961742,-0.083994194865227,-0.091558009386063,-0.116993553936481,-0.207907408475876));
res += mul(Get(s2,0,dy), float4x4(-0.122173741459846,-0.048858162015676,-0.089832335710526,-0.194948136806488,-0.073872312903404,0.428357064723969,0.235374853014946,0.233320415019989,-0.023651853203773,-0.040943510830402,0.054523218423128,0.063939198851585,0.026146221905947,0.055651672184467,-0.049569927155972,0.071270473301411));
res += mul(Get(s2,dx,-dy), float4x4(-0.031993798911572,0.157749921083450,-0.043468534946442,0.068145096302032,-0.015317868441343,0.270564645528793,-0.031890854239464,0.095913343131542,0.044032037258148,-0.084793992340565,0.006685472559184,-0.039109382778406,-0.093465827405453,0.319128423929214,0.074676729738712,0.010690149851143));
res += mul(Get(s2,dx,0), float4x4(-0.155922576785088,0.164222732186317,-0.035739332437515,0.000246467883699,0.010314476676285,0.346791058778763,0.128994330763817,0.205094054341316,0.050710421055555,-0.218112081289291,0.039727170020342,0.071776241064072,-0.055341619998217,0.508915424346924,0.126336321234703,0.199500739574432));
res += mul(Get(s2,dx,dy), float4x4(-0.099835015833378,0.222654327750206,0.078243888914585,0.116351030766964,0.112371273338795,0.284390181303024,0.239228487014771,0.197679370641708,-0.053160380572081,-0.167552635073662,0.145091772079468,0.001291241962463,0.193218499422073,0.468221485614777,0.022940251976252,0.200262427330017));
res += mul(Get(s3,-dx,-dy), float4x4(-0.119018703699112,-0.247994154691696,-0.171942546963692,-0.012400045990944,-0.048583697527647,-0.086019836366177,-0.077700383961201,0.133476659655571,-0.038275159895420,0.065172888338566,0.114592425525188,0.131034821271896,-0.122944675385952,-0.196906685829163,0.095079615712166,-0.036368325352669));
res += mul(Get(s3,-dx,0), float4x4(-0.200269728899002,-0.122786149382591,-0.029554344713688,-0.040131118148565,-0.001002618810162,0.114855282008648,0.017977943643928,0.128346100449562,-0.034494739025831,0.096661314368248,0.045045197010040,0.031337987631559,-0.270626962184906,-0.181878119707108,-0.019667869433761,-0.013519587926567));
res += mul(Get(s3,-dx,dy), float4x4(-0.055237244814634,0.256383240222931,-0.019392365589738,0.093515880405903,0.063769713044167,0.325546175241470,0.155532434582710,0.079037174582481,0.074651457369328,0.137925148010254,-0.052510932087898,-0.041691713035107,-0.062879055738449,-0.200514331459999,-0.226246640086174,0.036099717020988));
res += mul(Get(s3,0,-dy), float4x4(-0.100475706160069,-0.267200917005539,-0.132634922862053,-0.048829656094313,-0.075037628412247,-0.071824871003628,-0.037360493093729,-0.119200877845287,-0.051464579999447,0.107076302170753,0.099089302122593,0.109568744897842,-0.180096030235291,0.210233017802238,0.096042074263096,0.054529383778572));
res += mul(Get(s3,0,0), float4x4(-0.031585466116667,-0.207477375864983,-0.186067759990692,-0.034493628889322,-0.037493560463190,-0.088450588285923,-0.144984245300293,-0.073293104767799,-0.164613664150238,-0.002454738598317,0.029782069846988,0.080625057220459,-0.050941463559866,0.002849715994671,0.003181044943631,0.042378164827824));
res += mul(Get(s3,0,dy), float4x4(0.087209112942219,0.270098060369492,0.090573705732822,0.141430348157883,0.059264618903399,0.047239918261766,0.113146796822548,0.031852316111326,-0.022448016330600,0.054786797612906,0.077850989997387,-0.084172040224075,-0.020956786349416,0.023529069498181,-0.173735335469246,-0.186705589294434));
res += mul(Get(s3,dx,-dy), float4x4(0.013102127239108,-0.291254162788391,-0.080776438117027,-0.127398416399956,-0.074744552373886,-0.151622608304024,-0.187985137104988,-0.112150453031063,-0.030485564842820,0.585575878620148,0.070675417780876,0.211502343416214,-0.123243704438210,0.286801815032959,0.126922130584717,0.244741991162300));
res += mul(Get(s3,dx,0), float4x4(-0.012069144286215,-0.076669648289680,-0.012219239957631,-0.037370257079601,-0.127623602747917,-0.150209128856659,-0.245176821947098,-0.082315169274807,-0.046423006802797,0.092215321958065,0.097548007965088,-0.077785201370716,0.098862402141094,0.212212413549423,0.089642740786076,0.088777594268322));
res += mul(Get(s3,dx,dy), float4x4(0.003974737133831,0.410693794488907,0.128010958433151,0.146218210458755,-0.048714265227318,-0.141574412584305,-0.044377196580172,0.043334167450666,0.154006317257881,0.291494399309158,-0.040828101336956,-0.035098880529404,0.141424894332886,-0.038189712911844,0.003529026871547,-0.133266925811768));
return max(float4(0,0,0,0), res);
}
