sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.048944715410471,-0.086265221238136,-0.540110111236572,0.262778341770172);
res += mul(Get(s0,-dx,-dy), float4x4(0.182208031415939,-0.075839348137379,0.184105306863785,0.056745208799839,-0.139747560024261,-0.025489291176200,0.153915733098984,0.028004776686430,-0.000188886246178,-0.227980986237526,-0.062279060482979,0.174112796783447,-0.157893046736717,0.000092537899036,0.053790707141161,0.058614384382963));
res += mul(Get(s0,-dx,0), float4x4(0.110108949244022,0.152316942811012,-0.140025272965431,0.357211589813232,0.160480424761772,0.163965135812759,-0.468463420867920,0.439550518989563,0.083099946379662,0.122949689626694,-0.037885308265686,-0.105617880821228,-0.136364236474037,-0.089775420725346,-0.092274993658066,0.180605039000511));
res += mul(Get(s0,-dx,dy), float4x4(0.170339107513428,0.084719926118851,0.029853714630008,0.039004925638437,0.115030519664288,0.032182604074478,0.272694647312164,0.147160261869431,-0.286656200885773,-0.089152313768864,-0.028946045786142,0.105100281536579,0.058083776384592,0.337018877267838,0.107260480523109,0.205660551786423));
res += mul(Get(s0,0,-dy), float4x4(0.096052289009094,0.027108551934361,-0.094145104289055,0.002214319072664,0.304600834846497,-0.300867199897766,-0.001229188404977,-0.039372280240059,0.184712320566177,0.045806258916855,0.201813414692879,-0.169016495347023,-0.060682598501444,-0.107161670923233,0.024578647688031,-0.080364868044853));
res += mul(Get(s0,0,0), float4x4(0.083060964941978,0.028850084170699,0.296194553375244,-0.231681838631630,0.073264896869659,0.016885763034225,0.538462102413177,-0.664029717445374,-0.329097002744675,0.295961111783981,0.259252578020096,-0.052961017936468,-0.074360348284245,-0.075524993240833,-0.200732752680779,0.082993626594543));
res += mul(Get(s0,0,dy), float4x4(-0.066834174096584,0.178240716457367,-0.287423342466354,0.179745957255363,-0.402948647737503,-0.100919760763645,-0.258558362722397,0.092516973614693,0.063658714294434,0.171955034136772,-0.398582905530930,0.109695605933666,-0.079811133444309,0.158109992742538,-0.029468167573214,0.015056731179357));
res += mul(Get(s0,dx,-dy), float4x4(-0.054937068372965,-0.102849446237087,0.027088114991784,0.026118295267224,-0.137273237109184,0.289814084768295,0.163034245371819,-0.002861104439944,-0.195128738880157,0.050235476344824,-0.132903382182121,-0.153368502855301,-0.006060748361051,0.007636116351932,0.061912927776575,-0.031826119869947));
res += mul(Get(s0,dx,0), float4x4(-0.100595243275166,-0.115600787103176,0.005820587277412,0.018502548336983,-0.201098173856735,-0.205191940069199,-0.141175404191017,0.125872671604156,-0.230601206421852,-0.102297671139240,-0.030232682824135,-0.158706501126289,-0.077021665871143,-0.061293065547943,0.031948197633028,-0.213531792163849));
res += mul(Get(s0,dx,dy), float4x4(-0.268125176429749,-0.068770356476307,0.091344885528088,-0.122622095048428,0.010101565159857,-0.048592716455460,-0.033864792436361,0.183925375342369,0.128866091370583,-0.225970551371574,0.053967788815498,0.009074314497411,0.193590819835663,0.124753497540951,-0.183776527643204,0.053823247551918));
res += mul(Get(s1,-dx,-dy), float4x4(-0.013013297691941,-0.186047449707985,-0.282776117324829,0.038010712713003,-0.274605154991150,-0.044265918433666,0.096243776381016,-0.080039031803608,-0.056596230715513,-0.035760983824730,0.214426100254059,-0.050751045346260,0.287065386772156,0.032126143574715,0.212296515703201,-0.119178764522076));
res += mul(Get(s1,-dx,0), float4x4(-0.253796368837357,0.184211477637291,-0.350035548210144,0.292141854763031,0.092921346426010,0.134689643979073,-0.234721764922142,-0.116123631596565,0.015589127317071,-0.058932535350323,0.067479625344276,0.060844011604786,-0.131589964032173,-0.197056084871292,-0.126783713698387,-0.054319392889738));
res += mul(Get(s1,-dx,dy), float4x4(-0.026637805625796,-0.079083248972893,-0.622362256050110,0.135605722665787,0.176363751292229,0.137905970215797,0.209001734852791,-0.030197825282812,-0.175999969244003,-0.109106466174126,-0.091823264956474,-0.024180170148611,0.059541158378124,0.268265277147293,0.054961066693068,-0.139003589749336));
res += mul(Get(s1,0,-dy), float4x4(-0.206577926874161,-0.074362844228745,-0.249191477894783,0.065543629229069,-0.084605984389782,-0.163714662194252,-0.042223844677210,0.066994607448578,-0.071305327117443,0.208453506231308,-0.372290104627609,0.076643742620945,0.156192123889923,-0.127186059951782,0.136012375354767,-0.110954850912094));
res += mul(Get(s1,0,0), float4x4(0.332526922225952,0.160266712307930,0.567414999008179,0.106855116784573,-0.001951861311682,0.207047536969185,-0.401141405105591,0.538086593151093,-0.058877728879452,0.161113172769547,0.160697638988495,-0.010847859084606,-0.251469522714615,0.245207682251930,0.353202819824219,0.047236971557140));
res += mul(Get(s1,0,dy), float4x4(-0.356415361166000,0.242526680231094,0.462251216173172,-0.160156741738319,0.091252557933331,-0.025108605623245,-0.033185400068760,-0.388375997543335,0.006352663040161,-0.229300260543823,-0.192266747355461,0.033792406320572,-0.000860660802573,0.087750859558582,0.232587292790413,0.174809485673904));
res += mul(Get(s1,dx,-dy), float4x4(0.293112158775330,-0.061114888638258,-0.214689061045647,-0.035091962665319,0.190778285264969,0.064689576625824,0.071766130626202,-0.053888045251369,0.442450284957886,0.051539186388254,0.034349601715803,0.136215731501579,0.094282597303391,-0.041154231876135,0.088800124824047,-0.030827121809125));
res += mul(Get(s1,dx,0), float4x4(0.074209064245224,0.057365048676729,0.252299785614014,-0.053217701613903,0.024218469858170,-0.156898736953735,-0.054812725633383,-0.007610615342855,0.096308097243309,0.079941168427467,-0.015466831624508,-0.118595801293850,0.026357453316450,-0.067593276500702,0.231849461793900,-0.189952462911606));
res += mul(Get(s1,dx,dy), float4x4(0.065877988934517,-0.142353817820549,-0.024111643433571,-0.141709238290787,-0.151925325393677,-0.185611262917519,-0.029303614050150,-0.104543440043926,-0.092035271227360,0.120603956282139,-0.005746845621616,0.147071510553360,-0.048295222222805,0.055521730333567,-0.161409586668015,0.070596806704998));
res += mul(Get(s2,-dx,-dy), float4x4(-0.175647750496864,-0.188330605626106,-0.087956681847572,0.364898830652237,-0.132306233048439,0.015016093850136,-0.077282473444939,-0.040247730910778,-0.161576837301254,0.163247555494308,0.148530766367912,-0.090248569846153,0.208406776189804,-0.049230985343456,-0.061715032905340,0.079258710145950));
res += mul(Get(s2,-dx,0), float4x4(0.016330204904079,-0.244779869914055,0.120800293982029,0.581191420555115,0.280616879463196,0.043310873210430,0.266106635332108,0.025258256122470,0.142605528235435,-0.061398152261972,-0.093513846397400,-0.049328051507473,-0.007151341531426,0.157414451241493,-0.099180035293102,0.120797842741013));
res += mul(Get(s2,-dx,dy), float4x4(0.036570254713297,-0.028680747374892,-0.131303668022156,0.111238911747932,-0.218915402889252,0.085797652602196,0.122117519378662,-0.005610944703221,-0.053914260119200,-0.119123123586178,0.152575433254242,-0.024242201820016,-0.157584801316261,-0.060414530336857,-0.267706662416458,0.102337017655373));
res += mul(Get(s2,0,-dy), float4x4(0.309333831071854,-0.468252480030060,-0.168378502130508,0.408208280801773,0.344343066215515,-0.399026602506638,-0.150594636797905,0.190207540988922,0.117240719497204,0.249593526124954,0.024513717740774,-0.169268414378166,0.236514955759048,0.205632224678993,0.123312838375568,0.013889679685235));
res += mul(Get(s2,0,0), float4x4(0.062072034925222,-0.030984789133072,0.739077389240265,-1.009018063545227,-0.073186360299587,-0.215196818113327,0.298739194869995,-0.362943172454834,0.069797977805138,0.043645434081554,0.095742180943489,-0.166725426912308,-0.033705133944750,-0.011250098235905,0.566655933856964,-0.145894587039948));
res += mul(Get(s2,0,dy), float4x4(-0.036758288741112,0.400792956352234,0.164706468582153,0.226491302251816,0.050243325531483,0.183327913284302,0.210787877440453,0.055021785199642,-0.069324500858784,0.448100715875626,0.090948529541492,0.116858355700970,-0.336400359869003,-0.039444115012884,-0.379428982734680,0.536590099334717));
res += mul(Get(s2,dx,-dy), float4x4(-0.052759878337383,0.168344572186470,0.182552412152290,-0.138193413615227,-0.003546976018697,-0.012374859303236,0.067198701202869,0.050319377332926,-0.219525501132011,0.387532860040665,-0.183384791016579,0.071084052324295,-0.202585101127625,0.044595297425985,-0.063385643064976,0.016537267714739));
res += mul(Get(s2,dx,0), float4x4(-0.225397691130638,-0.116259656846523,-0.235302224755287,0.073956087231636,-0.343756616115570,0.144785583019257,-0.241040691733360,0.151656106114388,-0.560626387596130,0.353810459375381,-0.342219650745392,0.072150483727455,-0.359992235898972,-0.156580224633217,-0.061824355274439,-0.060987636446953));
res += mul(Get(s2,dx,dy), float4x4(0.042387276887894,0.110872074961662,0.024368656799197,0.043487951159477,-0.168938815593719,0.086726933717728,-0.360726684331894,0.027237996459007,0.044515017420053,0.077190496027470,-0.162855625152588,0.069657772779465,0.002754327142611,-0.024020818993449,-0.384171903133392,-0.030362403020263));
res = max(float4(0, 0, 0, 0), res) + float4(-0.086344324052334,0.737963080406189,0.125573799014091,0.802772402763367) * min(float4(0, 0, 0, 0), res);
return res;
}
