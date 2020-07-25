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
res += mul(Get(s0,-dx,-dy), float4x4(0.126300334930420,0.213799297809601,0.016214314848185,0.047598611563444,0.145664379000664,0.181260064244270,0.015497167594731,0.138284981250763,0.210516005754471,0.169506788253784,-0.136284306645393,-0.250179767608643,0.163751825690269,0.058656714856625,0.036864344030619,-0.125435635447502));
res += mul(Get(s0,-dx,0), float4x4(0.074989959597588,0.074582539498806,0.060635406523943,0.181626558303833,-0.019778676331043,0.162680491805077,-0.013842553831637,0.122986331582069,-0.013964553363621,0.000905256136321,-0.031527698040009,-0.080557256937027,-0.102582477033138,0.059820272028446,0.064851820468903,-0.046283137053251));
res += mul(Get(s0,-dx,dy), float4x4(0.035468645393848,0.021751055493951,-0.137028560042381,-0.077666215598583,0.169023931026459,-0.005492725875229,0.084703452885151,-0.119293153285980,0.164520874619484,-0.048668928444386,0.014278715476394,-0.046814639121294,-0.164344683289528,-0.004464262630790,0.060550000518560,0.073549464344978));
res += mul(Get(s0,0,-dy), float4x4(0.145604953169823,-0.168046578764915,0.171304509043694,-0.174579799175262,-0.084075376391411,0.025217359885573,-0.213196247816086,0.080008216202259,-0.239131122827530,0.173220828175545,-0.072300054132938,0.060287725180387,0.098291471600533,0.173526272177696,0.101528920233250,0.149970158934593));
res += mul(Get(s0,0,0), float4x4(0.180055394768715,-0.044946361333132,0.236751690506935,0.200541809201241,-0.051643446087837,0.051390673965216,0.014577252790332,0.050437122583389,0.074138440191746,0.131611853837967,0.146945983171463,0.016949351876974,-0.046449378132820,0.190262898802757,-0.139443770051003,0.036309957504272));
res += mul(Get(s0,0,dy), float4x4(-0.015689164400101,-0.016669152304530,-0.064491569995880,-0.118721283972263,-0.027791500091553,-0.061019770801067,0.024865249171853,-0.004690987523645,0.024963332340121,-0.023251943290234,0.051354844123125,-0.177368134260178,-0.025409366935492,-0.286358684301376,-0.079354032874107,-0.042704291641712));
res += mul(Get(s0,dx,-dy), float4x4(-0.190977573394775,-0.008199820294976,-0.098086066544056,-0.210879936814308,-0.075809568166733,-0.004890567623079,-0.193183064460754,-0.084294624626637,0.176787629723549,-0.019532358273864,-0.080099955201149,0.133018031716347,-0.085992716252804,0.022054649889469,-0.014226227998734,0.308256357908249));
res += mul(Get(s0,dx,0), float4x4(-0.062976531684399,-0.058275226503611,0.116125695407391,-0.045769855380058,0.090445682406425,-0.057384181767702,-0.022290274500847,-0.112347327172756,0.002143296413124,0.181284040212631,0.013195972889662,-0.013051983900368,0.003147342940792,-0.007853463292122,-0.175142183899879,0.117440626025200));
res += mul(Get(s0,dx,dy), float4x4(0.101748555898666,0.111625604331493,-0.108845338225365,-0.046711541712284,-0.012392395175993,0.021167611703277,0.060808669775724,0.084193609654903,0.158179491758347,0.017239036038518,0.106415137648582,0.162822544574738,0.068056799471378,-0.116407252848148,-0.154883682727814,-0.180883735418320));
res += mul(Get(s1,-dx,-dy), float4x4(0.055453289300203,0.065098538994789,0.024294652044773,0.040614970028400,-0.034401923418045,-0.028882740065455,0.090680003166199,0.095448680222034,0.057511743158102,-0.183100640773773,-0.094185337424278,0.131699219346046,0.066030792891979,0.131069138646126,0.007929899729788,-0.045185200870037));
res += mul(Get(s1,-dx,0), float4x4(0.018839605152607,0.022863240912557,0.019532945007086,0.161421045660973,0.200895592570305,0.057137969881296,0.049705702811480,-0.065797284245491,0.013534349389374,-0.036041412502527,0.109396293759346,-0.067618079483509,0.029697731137276,0.131273865699768,-0.046537410467863,-0.119207896292210));
res += mul(Get(s1,-dx,dy), float4x4(-0.040729224681854,-0.150625258684158,0.082251697778702,-0.138737693428993,-0.006139103788882,0.116421334445477,0.080432422459126,-0.116565778851509,0.022761654108763,-0.090005166828632,-0.204467535018921,0.108240604400635,0.055261559784412,-0.048950795084238,-0.014114097692072,0.167696014046669));
res += mul(Get(s1,0,-dy), float4x4(-0.072850354015827,0.076562523841858,0.025881970301270,0.072957307100296,-0.180788367986679,-0.051571242511272,-0.068135060369968,0.040487855672836,-0.109498858451843,0.100942298769951,-0.051262158900499,-0.161501497030258,-0.004799379035830,0.049354419112206,0.210554882884026,-0.048083163797855));
res += mul(Get(s1,0,0), float4x4(-0.029319781810045,0.082680433988571,-0.099723987281322,-0.045060768723488,-0.091152735054493,-0.012655653059483,0.009407700970769,0.092852823436260,-0.081876739859581,0.024706406518817,-0.056950416415930,-0.048070896416903,-0.080923162400723,0.014719217084348,-0.059521045535803,0.031491246074438));
res += mul(Get(s1,0,dy), float4x4(-0.185450911521912,-0.077305734157562,-0.027022348716855,0.120461083948612,0.066492937505245,-0.001844065613113,-0.020126853138208,-0.010242702439427,0.174149826169014,0.079975828528404,-0.089116595685482,0.170461297035217,-0.005051315762103,0.233513578772545,0.095641180872917,-0.069179192185402));
res += mul(Get(s1,dx,-dy), float4x4(0.041870489716530,0.008875110186636,-0.102565176784992,-0.026219706982374,0.073757313191891,-0.022892044857144,-0.168252363801003,0.110719367861748,-0.007059862371534,-0.097510002553463,-0.073201991617680,-0.030584650114179,-0.140302196145058,-0.106522150337696,0.004120725672692,-0.169584855437279));
res += mul(Get(s1,dx,0), float4x4(-0.220751151442528,-0.101762436330318,0.079236790537834,-0.208716198801994,-0.079138457775116,-0.128398314118385,0.046952363103628,0.110256217420101,-0.032215200364590,0.172983989119530,0.052291166037321,0.122990973293781,-0.036249693483114,-0.170353949069977,0.001592930522747,-0.106838449835777));
res += mul(Get(s1,dx,dy), float4x4(-0.029883902519941,0.040579579770565,-0.169142216444016,-0.015895860269666,0.013321955688298,0.019010864198208,0.045013312250376,-0.026812572032213,-0.066804595291615,-0.051536373794079,-0.094340763986111,0.164171874523163,0.255548566579819,0.038164321333170,-0.207276791334152,0.141149699687958));
res += mul(Get(s2,-dx,-dy), float4x4(0.210817605257034,-0.082796290516853,0.107897318899632,-0.015851104632020,-0.035671200603247,-0.114487737417221,0.203388392925262,-0.095315471291542,-0.108133025467396,-0.057488899677992,0.022041222080588,-0.057529866695404,0.081756994128227,0.013128110207617,-0.018219938501716,-0.018367256969213));
res += mul(Get(s2,-dx,0), float4x4(0.114442698657513,-0.026841513812542,0.014216876588762,0.039235498756170,-0.113519199192524,0.019318131729960,0.018327543511987,-0.067246794700623,-0.019508441910148,-0.179084792733192,-0.041938286274672,-0.066883221268654,-0.117328815162182,-0.014334441162646,-0.083844102919102,0.018648600205779));
res += mul(Get(s2,-dx,dy), float4x4(0.057810485363007,0.073547095060349,-0.052193138748407,0.056503143161535,-0.162695959210396,0.098904520273209,0.092307642102242,0.031903550028801,-0.130299776792526,-0.206966429948807,-0.253276795148849,-0.014976820908487,-0.217800751328468,0.126207858324051,-0.071640022099018,0.023239640519023));
res += mul(Get(s2,0,-dy), float4x4(0.091849923133850,-0.145675286650658,0.001086683478206,0.166982442140579,0.154902786016464,-0.069015279412270,0.079306580126286,-0.168238118290901,0.020470371469855,0.047504764050245,-0.004519692156464,-0.023644251748919,-0.138607412576675,-0.096415005624294,-0.008238707669079,0.253196358680725));
res += mul(Get(s2,0,0), float4x4(0.035306081175804,0.108021482825279,-0.010967672802508,0.036408573389053,0.059757657349110,0.007644811179489,0.069568902254105,-0.032554179430008,0.226047933101654,0.030175603926182,0.011211428791285,0.044045906513929,0.058816395699978,0.191767856478691,0.009375466033816,0.068344272673130));
res += mul(Get(s2,0,dy), float4x4(0.086066685616970,0.037269446998835,0.197348713874817,-0.042583070695400,-0.133277431130409,0.175762817263603,0.130952507257462,0.005157185252756,-0.218978136777878,-0.085281476378441,-0.048236332833767,-0.015932746231556,0.018598062917590,-0.101561695337296,0.023896923288703,-0.079975947737694));
res += mul(Get(s2,dx,-dy), float4x4(0.123769722878933,0.152599617838860,-0.121312603354454,-0.061647798866034,-0.110005185008049,-0.080515339970589,0.247031897306442,-0.183256790041924,0.113005504012108,0.049399316310883,-0.021602766588330,0.020749423652887,0.076641269028187,0.050113398581743,0.186164066195488,-0.039063245058060));
res += mul(Get(s2,dx,0), float4x4(-0.119144752621651,-0.035553034394979,-0.060905907303095,0.070273451507092,0.056213818490505,-0.134789332747459,0.013661433942616,-0.019437158480287,0.091047987341881,0.123578779399395,0.127983540296555,-0.007625855971128,0.056766223162413,0.090115286409855,0.152248457074165,0.013827905990183));
res += mul(Get(s2,dx,dy), float4x4(-0.021456414833665,0.102737642824650,0.024919118732214,-0.233417168259621,-0.068369388580322,0.092813819646835,-0.034846119582653,0.066041655838490,-0.027610756456852,-0.041340552270412,0.007070836611092,-0.110064461827278,0.111267730593681,0.046728279441595,-0.136155977845192,0.037002120167017));
res += mul(Get(s3,-dx,-dy), float4x4(-0.175996109843254,-0.077457875013351,0.193831413984299,0.099021099507809,0.168385267257690,0.239486426115036,-0.044959291815758,-0.140496924519539,-0.140602737665176,-0.117812000215054,-0.017926456406713,0.082420654594898,0.018046244978905,0.128431990742683,-0.063401132822037,-0.113308653235435));
res += mul(Get(s3,-dx,0), float4x4(-0.054866321384907,0.135673522949219,-0.115273751318455,0.101038590073586,-0.197063535451889,0.207195505499840,-0.147852122783661,0.090435937047005,-0.154642432928085,-0.070198126137257,-0.074781030416489,-0.089153528213501,0.060359735041857,-0.092894829809666,-0.073166944086552,0.005270371679217));
res += mul(Get(s3,-dx,dy), float4x4(-0.137405052781105,-0.064339533448219,0.265033394098282,-0.074012324213982,0.121444657444954,0.080434948205948,-0.139258518815041,-0.074610881507397,-0.043735917657614,-0.088638447225094,0.021546646952629,0.179016768932343,-0.095049083232880,-0.076806075870991,-0.079102702438831,0.003005683654919));
res += mul(Get(s3,0,-dy), float4x4(0.011236695572734,0.136623829603195,0.036404866725206,0.092142000794411,0.074388511478901,0.009783333167434,-0.039126727730036,0.101243317127228,0.219798088073730,-0.082882151007652,0.032975777983665,-0.054331660270691,-0.012339135631919,0.009004072286189,-0.073019035160542,0.020230952650309));
res += mul(Get(s3,0,0), float4x4(0.119570389389992,0.167115271091461,-0.046798057854176,0.008380864746869,0.020715864375234,-0.012817550450563,0.033765543252230,0.174270689487457,-0.116963058710098,0.072928085923195,0.196433693170547,0.010530845262110,-0.068174801766872,0.000871777068824,-0.052510544657707,-0.025197036564350));
res += mul(Get(s3,0,dy), float4x4(-0.131235033273697,0.026102516800165,-0.225713789463043,-0.170452177524567,-0.203310176730156,-0.264741718769073,-0.247590020298958,0.033707693219185,-0.165900841355324,0.116378039121628,-0.157504990696907,0.119732782244682,-0.075285322964191,-0.136510029435158,0.020282560959458,-0.094626210629940));
res += mul(Get(s3,dx,-dy), float4x4(0.010737578384578,0.013335659168661,-0.039066396653652,-0.076490476727486,0.277441322803497,-0.041756004095078,0.094054743647575,-0.053209584206343,0.243415564298630,-0.014007349498570,-0.080001354217529,0.223826631903648,0.093002766370773,0.123025462031364,0.098614752292633,0.017493125051260));
res += mul(Get(s3,dx,0), float4x4(-0.193932056427002,0.053448397666216,0.161773696541786,0.130833759903908,0.027919596061110,-0.170875146985054,-0.073584109544754,-0.012737042270601,-0.044947519898415,0.085397161543369,-0.145783081650734,-0.004434187896550,0.072344154119492,0.107179224491119,-0.065437011420727,0.265137732028961));
res += mul(Get(s3,dx,dy), float4x4(-0.158454775810242,-0.091736480593681,-0.053211946040392,-0.088721044361591,0.036231026053429,-0.082633167505264,0.070939064025879,0.095099955797195,-0.120632007718086,-0.122222267091274,-0.078950986266136,-0.135306149721146,-0.143318802118301,0.208966985344887,0.167348116636276,-0.007057360373437));
return max(float4(0,0,0,0), res);
}
