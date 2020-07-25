sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.1631347686052322,-0.0094338376075029,0.0932412520051003,0.0598501674830914);
res += mul(Get(s0,-dx,-dy), float4x4(-0.0947960838675499,-0.2021434754133224,0.1406237930059433,0.1186403781175613,0.0156859662383795,0.0720369741320610,0.0280182603746653,0.0471837595105171,-0.1892835944890976,0.0200472734868526,-0.0426807552576065,-0.0037988119293004,0.0116233518347144,0.0953587591648102,-0.0349855497479439,-0.0137881906703115));
res += mul(Get(s1,-dx,-dy), float4x4(-0.0709211379289627,-0.1714323163032532,0.0230368971824646,0.0097221629694104,-0.0002734648005571,-0.1755101978778839,0.0692011490464211,0.0429437533020973,-0.1153602674603462,-0.1104176491498947,0.0532816387712955,0.0913794040679932,0.0258872266858816,-0.1600303351879120,0.0252099502831697,-0.0559052340686321));
res += mul(Get(s2,-dx,-dy), float4x4(-0.1087005138397217,0.0041704042814672,-0.0434214770793915,-0.0771751850843430,0.1075181514024734,-0.2127835601568222,-0.1291639804840088,-0.0778039768338203,0.1251591295003891,0.3516080081462860,-0.0125504452735186,-0.0141065753996372,-0.1657133400440216,-0.0897352769970894,0.0493177175521851,-0.0567394345998764));
res += mul(Get(s0,-dx,0), float4x4(0.2811222374439240,0.0584874488413334,0.0257793087512255,-0.0264651700854301,-0.0224576536566019,0.2860552370548248,-0.0159689821302891,-0.0578966550529003,0.0199134740978479,-0.0467168428003788,0.0949944034218788,0.3206169903278351,0.1672053784132004,-0.2796370983123779,0.0374988913536072,0.1413415521383286));
res += mul(Get(s1,-dx,0), float4x4(0.0152440089732409,-0.1295088827610016,-0.0162472575902939,0.2299714833498001,-0.0897281467914581,-0.1635818183422089,-0.0695654600858688,0.0504748709499836,0.1052123010158539,0.1373365372419357,-0.0486718378961086,0.0491778850555420,-0.0439364239573479,0.1352857500314713,0.1474664062261581,-0.0540030151605606));
res += mul(Get(s2,-dx,0), float4x4(-0.1118055656552315,0.1305752694606781,-0.0474626384675503,0.2363327145576477,-0.1623734682798386,0.4112160503864288,-0.0110309273004532,0.1624279618263245,-0.1465571075677872,-0.3699440956115723,-0.0995834320783615,-0.1938265413045883,0.1185442581772804,-0.2138691693544388,0.0396199598908424,0.1908183246850967));
res += mul(Get(s0,-dx,dy), float4x4(-0.0500763393938541,-0.1212140396237373,0.0110764615237713,-0.1305963993072510,-0.0463306345045567,-0.1428547054529190,-0.0399577319622040,-0.0278793554753065,0.1042375266551971,-0.0505151785910130,0.1273312270641327,0.0314202457666397,0.0817693918943405,-0.0639253854751587,0.2507916092872620,-0.1399216502904892));
res += mul(Get(s1,-dx,dy), float4x4(-0.0078336531296372,0.0082700019702315,-0.1025677546858788,0.2059626579284668,-0.3274247944355011,0.1098319590091705,0.1859696656465530,0.0977371409535408,0.0111433705314994,-0.0893935784697533,0.0229027960449457,-0.0295461863279343,-0.0879105925559998,-0.4032854735851288,-0.1318845450878143,-0.1012675687670708));
res += mul(Get(s2,-dx,dy), float4x4(0.0707306265830994,-0.1208616793155670,0.0243712011724710,-0.1286152005195618,-0.0836330875754356,-0.1120518222451210,0.0216770321130753,0.0825850442051888,-0.1773295402526855,-0.0355171188712120,-0.0390142537653446,-0.0251513868570328,0.0452471338212490,0.0795531123876572,-0.0363853685557842,-0.0914498865604401));
res += mul(Get(s0,0,-dy), float4x4(-0.0345226377248764,0.1628235429525375,-0.0471876300871372,0.0388197377324104,-0.0111181894317269,-0.2608529329299927,-0.1247498095035553,0.0144776506349444,-0.1657491475343704,-0.2259295284748077,0.1681690216064453,-0.2898508310317993,0.0777006447315216,-0.0531938970088959,-0.0964703410863876,-0.2169901579618454));
res += mul(Get(s1,0,-dy), float4x4(0.2098686993122101,-0.0147497095167637,-0.0474901907145977,-0.0556543581187725,0.1609233766794205,-0.0937472954392433,-0.0160769335925579,-0.2294857800006866,-0.0749633461236954,-0.0770498961210251,-0.0464867688715458,-0.0888554602861404,0.1734353750944138,-0.1776784211397171,-0.1205062270164490,-0.1134685277938843));
res += mul(Get(s2,0,-dy), float4x4(0.0350456684827805,0.1985908746719360,-0.0208282563835382,-0.1008686125278473,-0.0501557700335979,0.1121533215045929,0.0039850776083767,-0.0739184170961380,0.2189771533012390,-0.0052685523405671,0.0943302512168884,0.0058455327525735,-0.0615396499633789,-0.1616012454032898,0.0191051624715328,-0.0514213219285011));
res += mul(Get(s0,0,0), float4x4(-0.1520313322544098,0.3682466745376587,0.2297156006097794,0.4944173693656921,-0.1291481107473373,-0.8884609341621399,-0.2548480331897736,-0.0840853378176689,0.1265287101268768,-0.0885247886180878,0.0888902470469475,0.1725028008222580,-0.0070953681133687,-0.4594036042690277,0.0011113343061879,0.3198232948780060));
res += mul(Get(s1,0,0), float4x4(0.2120888233184814,-0.4957989752292633,-0.4155965447425842,-0.5363791584968567,-0.1174311786890030,0.2307031005620956,-0.1104718893766403,-0.0214346274733543,0.2937777340412140,-0.2953987717628479,-0.2982455193996429,-0.1130967810750008,-0.3061895072460175,0.3539427816867828,0.2020410895347595,0.0211322121322155));
res += mul(Get(s2,0,0), float4x4(0.2346005737781525,0.3338746130466461,-0.0005176658742130,-0.1241037175059319,0.2563523650169373,-0.3952915966510773,-0.2213852405548096,0.0637434795498848,0.1909092366695404,0.1172436475753784,-0.3320390880107880,-0.0813892632722855,0.0296484231948853,0.1283524334430695,0.3726796209812164,0.2228382825851440));
res += mul(Get(s0,0,dy), float4x4(-0.0295727215707302,-0.0489789247512817,-0.1803387403488159,-0.0345445163547993,0.0368863604962826,-0.0168714430183172,0.0216494016349316,-0.1162251308560371,-0.2073692977428436,-0.0138155063614249,-0.0758031457662582,-0.1937045007944107,-0.1279033124446869,0.3660594224929810,-0.0142484931275249,-0.0367210656404495));
res += mul(Get(s1,0,dy), float4x4(-0.0036213493440300,0.0040097571909428,0.0479759722948074,-0.0284286029636860,0.2687130868434906,0.0554555542767048,0.1984741687774658,-0.1424465328454971,-0.0287222601473331,-0.0295570064336061,-0.1758705228567123,-0.0988672152161598,0.0064588398672640,0.2390588372945786,0.0249147806316614,-0.1966439336538315));
res += mul(Get(s2,0,dy), float4x4(0.0426072888076305,0.0329998470842838,-0.1338244825601578,-0.1273080706596375,0.1324878185987473,0.2442876398563385,0.1278320848941803,0.0049846107140183,-0.2039614766836166,0.0707237049937248,-0.0094518102705479,0.2507987618446350,0.0690363347530365,-0.0678637549281120,-0.2270009070634842,0.0544814914464951));
res += mul(Get(s0,dx,-dy), float4x4(0.1675718277692795,0.0081481244415045,0.0540413372218609,-0.0143928509205580,-0.0923294425010681,0.0441056415438652,-0.0210210420191288,0.0667249560356140,0.0539314486086369,0.0807806774973869,-0.0400322526693344,0.0064084874466062,0.0359859280288219,0.0223020445555449,-0.1247805878520012,-0.0525346733629704));
res += mul(Get(s1,dx,-dy), float4x4(0.0916041955351830,-0.0115794818848372,-0.0027500116266310,-0.0079003050923347,-0.0088798897340894,-0.1367826014757156,0.0801799222826958,0.0174716655164957,0.0660802200436592,0.0295144189149141,-0.0134502369910479,0.0816384628415108,-0.0449918210506439,-0.0734815001487732,0.1110565513372421,0.0528982393443584));
res += mul(Get(s2,dx,-dy), float4x4(-0.0305155795067549,-0.0818490013480186,0.0265808831900358,-0.0478850156068802,-0.1439384967088699,-0.0205068029463291,0.0337401963770390,0.0556592233479023,0.0682845488190651,-0.0241680499166250,0.0015660205390304,0.0832563415169716,-0.0416028164327145,0.0064950720407069,0.0677247643470764,0.0351362340152264));
res += mul(Get(s0,dx,0), float4x4(0.0120045943185687,-0.0995423123240471,-0.0824632868170738,-0.0012902253074571,0.1155520975589752,0.0620402283966541,0.0659264773130417,0.0481240414083004,0.0455302447080612,0.1268829703330994,0.0003167416434735,-0.0457864627242088,-0.0128159923478961,0.2014419436454773,-0.0535961240530014,-0.1288310587406158));
res += mul(Get(s1,dx,0), float4x4(-0.0292484350502491,0.0613143146038055,-0.0436283983290195,-0.0083664199337363,0.0147997047752142,-0.0558127500116825,-0.0652215331792831,-0.1914863437414169,-0.0056503601372242,-0.0011525775771588,-0.1072795838117599,-0.0489405840635300,0.0048466273583472,-0.0890007540583611,0.0629981532692909,-0.0055434941314161));
res += mul(Get(s2,dx,0), float4x4(0.0070666242390871,0.0439735986292362,-0.0734687149524689,-0.1873710304498672,-0.1134623959660530,-0.0155100170522928,0.1629556119441986,-0.0803071111440659,-0.1050698608160019,0.0477519668638706,0.1647763848304749,0.1033605784177780,-0.0827796757221222,0.0032016998156905,-0.0201971754431725,0.0978659316897392));
res += mul(Get(s0,dx,dy), float4x4(0.0211150515824556,0.0698799714446068,0.0172956567257643,-0.1958665102720261,0.0696541517972946,-0.0620891377329826,-0.0736196786165237,0.1374084800481796,-0.0523023568093777,0.1290788799524307,0.0535086467862129,-0.0159324277192354,-0.0751263424754143,0.1598154604434967,-0.0438200458884239,0.1915391236543655));
res += mul(Get(s1,dx,dy), float4x4(0.0406092293560505,0.1058793440461159,-0.1569146811962128,-0.1329764574766159,0.0389895252883434,0.1442855000495911,-0.2359995841979980,0.1769893318414688,0.0379925258457661,0.0704902112483978,-0.0009342028643005,0.0425840094685555,0.0467568859457970,0.0905180275440216,0.0777657032012939,0.1235597208142281));
res += mul(Get(s2,dx,dy), float4x4(-0.0008301165071316,0.0750848278403282,-0.0133928125724196,-0.0335288643836975,0.0440570302307606,-0.0742200762033463,-0.0312481727451086,0.2228803634643555,-0.0504123792052269,0.0538993179798126,0.0709369555115700,0.0068261534906924,-0.0014007453573868,0.1198221594095230,0.0994260981678963,-0.0393817536532879));
res = max(float4(0, 0, 0, 0), res) + float4(-2.2197916507720947,-0.9195083379745483,3.9983470439910889,-0.8294878602027893) * min(float4(0, 0, 0, 0), res);
return res;
}
