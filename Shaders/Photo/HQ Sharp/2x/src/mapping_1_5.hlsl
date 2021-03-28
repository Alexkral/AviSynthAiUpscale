sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
sampler s4 : register(s4);
sampler s5 : register(s5);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.077243216335773,-0.129548594355583,-0.151234731078148,0.031159462407231);
res += mul(Get(s0,-dx,-dy), float4x4(-0.019672358408570,0.000001045299996,0.010713557712734,-0.017530286684632,-0.130526170134544,0.000003839450528,-0.083530992269516,-0.051465395838022,-0.038281645625830,-0.000001945239319,-0.003961458802223,0.078993007540703,-0.018563542515039,-0.000003547142342,0.061982765793800,0.009428096003830));
res += mul(Get(s0,-dx,0), float4x4(-0.020268158987164,-0.000000347573121,-0.011344693601131,-0.042287912219763,0.104637496173382,0.000001009448283,0.076039344072342,-0.167233318090439,0.024933850392699,-0.000003011905619,-0.134774148464203,0.061410855501890,-0.023070171475410,-0.000003343284334,0.074094772338867,-0.005169808398932));
res += mul(Get(s0,-dx,dy), float4x4(-0.043669562786818,-0.000000239993454,0.032226886600256,-0.012983669526875,-0.010155959986150,0.000000165532995,0.063286125659943,-0.036253768950701,0.030576346442103,-0.000003408452585,-0.003146847011521,-0.003423846326768,-0.057980533689260,-0.000001614290568,-0.011080031283200,-0.050999406725168));
res += mul(Get(s0,0,-dy), float4x4(0.002724626334384,0.000001234515480,0.068464569747448,-0.018381653353572,-0.132252603769302,-0.000000766562039,0.013471333310008,0.052776001393795,-0.147518709301949,0.000000542924113,-0.005779693834484,0.056788779795170,-0.001836751471274,-0.000002134704573,0.014473239891231,-0.026089830324054));
res += mul(Get(s0,0,0), float4x4(-0.022996732965112,-0.000001843360565,0.058325525373220,-0.039131227880716,0.065230101346970,-0.000003391195378,-0.053836233913898,0.181488916277885,0.116316080093384,0.000000474119531,0.033443868160248,-0.071676962077618,-0.037601027637720,-0.000001462558430,0.065136067569256,-0.007251396309584));
res += mul(Get(s0,0,dy), float4x4(-0.012270315550268,-0.000000899395161,-0.029571613296866,-0.012899916619062,-0.007996308617294,-0.000002803509460,0.061686251312494,0.037242583930492,-0.025877321138978,0.000000533832065,-0.055496070533991,0.102745123207569,-0.036722667515278,0.000000175516391,0.087251499295235,-0.091418735682964));
res += mul(Get(s0,dx,-dy), float4x4(-0.031911063939333,-0.000000073831018,0.015473783947527,-0.011347902938724,0.019237380474806,-0.000003198557579,-0.064329408109188,0.064373672008514,-0.070760183036327,0.000001779513923,0.050234962254763,-0.061733704060316,-0.020452251657844,-0.000000794108701,0.008667891845107,-0.059902086853981));
res += mul(Get(s0,dx,0), float4x4(-0.040993198752403,-0.000002237415174,0.032588850706816,-0.040177218616009,0.041224855929613,-0.000003870161891,0.035669825971127,-0.106754146516323,0.020551102235913,0.000001094117920,0.021167377009988,0.018163427710533,-0.044110491871834,0.000000409274833,0.026279190555215,-0.037023123353720));
res += mul(Get(s0,dx,dy), float4x4(-0.019624719396234,-0.000000855734925,-0.006758959032595,0.006028228905052,-0.095348723232746,-0.000003884195849,-0.007784597110003,-0.009310221299529,0.021719709038734,0.000001147658736,0.070686966180801,-0.013718897476792,-0.055678211152554,0.000001706869853,0.017206864431500,-0.056948404759169));
res += mul(Get(s1,-dx,-dy), float4x4(0.000870091491379,0.000004068686394,-0.252863526344299,-0.033966947346926,0.024432156234980,-0.000001849723276,0.006386222783476,-0.007183532230556,0.017448592931032,-0.000002731557970,-0.193570002913475,0.080513209104538,-0.001432312536053,-0.000002207289072,-0.070729166269302,0.025250451639295));
res += mul(Get(s1,-dx,0), float4x4(0.126517772674561,0.000001056100245,0.146146461367607,-0.140720859169960,-0.012287712655962,-0.000000306953837,-0.084662951529026,-0.001382325659506,0.089766077697277,-0.000002762752047,0.070549853146076,0.011795853264630,-0.022069433704019,0.000000761509682,-0.045088667422533,0.012615838088095));
res += mul(Get(s1,-dx,dy), float4x4(-0.070006020367146,0.000000222500219,0.115470297634602,-0.008147823624313,0.030867800116539,-0.000000640206565,-0.114478275179863,-0.004074579570442,0.009040973149240,-0.000004028063358,0.161666020750999,0.044695086777210,0.012559902854264,0.000001084097107,0.088951148092747,0.068381972610950));
res += mul(Get(s1,0,-dy), float4x4(-0.027581257745624,-0.000000739689540,-0.009536574594676,-0.069084353744984,0.033256582915783,-0.000001441651648,-0.011852578260005,0.021971076726913,0.002727079903707,0.000002107708724,-0.074198894202709,-0.115588426589966,0.015051892958581,-0.000001100215400,0.082687988877296,-0.094394624233246));
res += mul(Get(s1,0,0), float4x4(-0.048807445913553,-0.000004113394880,-0.150761529803276,0.113937661051750,0.006987194065005,0.000000070023248,0.033681228756905,-0.010908764787018,-0.000205214309972,0.000000005389182,-0.125451147556305,-0.007512784563005,-0.014357456937432,0.000002221999694,-0.002387895481661,0.044578008353710));
res += mul(Get(s1,0,dy), float4x4(-0.043648034334183,-0.000002856496621,-0.003021400887519,-0.084925524890423,0.008866490796208,-0.000001639516881,-0.007802046369761,0.008842876181006,-0.057946708053350,-0.000004013852049,0.082829698920250,-0.178649321198463,-0.024925157427788,0.000000853165034,0.077088832855225,-0.111810334026814));
res += mul(Get(s1,dx,-dy), float4x4(-0.035110279917717,-0.000001719608008,-0.045505285263062,0.015121977776289,0.039856031537056,0.000000039451855,-0.013085220940411,-0.056845568120480,-0.078110508620739,0.000005542154213,0.019974006339908,-0.021173605695367,0.026754973456264,-0.000000426435719,0.025078129023314,0.045108225196600));
res += mul(Get(s1,dx,0), float4x4(0.050948195159435,-0.000002308550847,0.017243288457394,-0.089475512504578,-0.048230260610580,0.000000736570712,-0.063532479107380,0.003012361470610,0.170422449707985,0.000005640007203,0.014692512340844,-0.192761212587357,0.069282911717892,0.000001738987407,0.081420578062534,-0.113402329385281));
res += mul(Get(s1,dx,dy), float4x4(-0.000892111100256,-0.000001296649998,0.002165551064536,0.030158462002873,-0.001903090393171,-0.000000919744252,-0.003726269118488,-0.069805108010769,-0.060088817030191,0.000003459811523,-0.091352246701717,0.047061998397112,-0.044371239840984,-0.000000433064145,-0.019989609718323,0.017829744145274));
res += mul(Get(s2,-dx,-dy), float4x4(0.002038985257968,0.000002666763521,-0.042050871998072,-0.016289968043566,0.012245295569301,-0.000301523483358,-0.092063605785370,-0.015344475395977,-0.024046381935477,0.000001820739953,0.050350088626146,-0.004265111871064,-0.026362208649516,0.000002800818947,0.068142667412758,0.018865829333663));
res += mul(Get(s2,-dx,0), float4x4(-0.005691568832844,0.000000862776687,0.005588410422206,-0.053841099143028,0.033248689025640,-0.000331480201567,0.029790617525578,0.056074045598507,0.015890058130026,0.000001251314984,-0.015189844183624,-0.042996548116207,-0.013370227068663,0.000002013424137,0.005840207450092,0.017381699755788));
res += mul(Get(s2,-dx,dy), float4x4(0.006607939954847,-0.000000502646799,-0.035305585712194,0.123463228344917,0.002356167649850,-0.000312593183480,0.064229510724545,0.054341502487659,0.018468447029591,0.000000496077519,-0.011544717475772,0.060971181839705,-0.023164015263319,0.000001262432534,-0.033666528761387,0.030415948480368));
res += mul(Get(s2,0,-dy), float4x4(-0.022685736417770,0.000001671329528,-0.033712003380060,-0.036808624863625,0.005922689568251,-0.000399610376917,0.030199881643057,0.025928350165486,0.008726431988180,0.000001274833835,0.112946011126041,-0.031686596572399,0.008292259648442,0.000001536105742,0.080037251114845,0.033704150468111));
res += mul(Get(s2,0,0), float4x4(0.005639017093927,0.000001080401944,-0.016633579507470,-0.048681419342756,0.039618052542210,-0.000443798751803,0.022791456431150,0.157138809561729,0.048120327293873,0.000000194282336,0.073223061859608,-0.008978071622550,0.036203302443027,-0.000000035625462,0.075420156121254,0.003956431988627));
res += mul(Get(s2,0,dy), float4x4(0.032331440597773,-0.000000466131553,-0.029844023287296,0.022565444931388,-0.001135053462349,-0.000421220000135,0.029930779710412,-0.021522045135498,0.014348433353007,-0.000000680367634,0.000148733743117,0.061873033642769,0.048092417418957,-0.000000182972272,-0.024621950462461,0.053261756896973));
res += mul(Get(s2,dx,-dy), float4x4(0.005906322039664,0.000000533778916,-0.013229177333415,-0.018794527277350,-0.009853370487690,-0.000410794746131,-0.004001363180578,-0.006812017410994,0.009533303789794,0.000000374488877,0.043594982475042,0.030421432107687,0.005355451721698,-0.000002014709253,0.048154029995203,0.066252447664738));
res += mul(Get(s2,dx,0), float4x4(0.025819202885032,0.000000665823052,-0.002099464414641,-0.085056386888027,0.032367788255215,-0.000456054840470,0.038667403161526,-0.033442895859480,0.010968548245728,-0.000000657467410,-0.010907793417573,0.007569322362542,-0.037638343870640,-0.000003920523795,0.031433466821909,0.075469277799129));
res += mul(Get(s2,dx,dy), float4x4(-0.016657670959830,-0.000000592397612,0.016802651807666,0.028362656012177,-0.027530737221241,-0.000436602160335,0.012108257040381,0.052681040018797,0.045946229249239,-0.000000891486138,-0.009407116100192,0.010279770009220,0.049779139459133,-0.000003144797574,0.047511413693428,0.020953062921762));
res += mul(Get(s3,-dx,-dy), float4x4(0.029179787263274,-0.000000372470168,0.088168419897556,0.026737023144960,0.024481482803822,0.000000125083261,-0.072201676666737,-0.009009497240186,0.018098616972566,0.000005087104000,0.062960647046566,0.017366489395499,0.009749715216458,-0.000004101114428,0.034446761012077,0.004845183342695));
res += mul(Get(s3,-dx,0), float4x4(-0.088855743408203,0.000001652931473,-0.017202092334628,0.073119781911373,-0.164504662156105,-0.000004970622285,0.098944418132305,-0.197828948497772,0.110333263874054,0.000001635453145,0.118076682090759,0.009361742064357,-0.069377936422825,-0.000002530016900,0.004897012840956,0.046410538256168));
res += mul(Get(s3,-dx,dy), float4x4(-0.024926241487265,0.000004597382940,-0.089757017791271,0.008376153185964,-0.003180380910635,-0.000001121460969,0.070469304919243,-0.079241871833801,-0.024585099890828,0.000001308325409,-0.210770741105080,-0.077251322567463,-0.040409635752439,-0.000000530083582,0.035308357328176,-0.104110956192017));
res += mul(Get(s3,0,-dy), float4x4(0.068449608981609,0.000002241589300,0.008914276957512,-0.015293462201953,-0.041854541748762,0.000002807577403,-0.139111414551735,-0.049273282289505,0.000443769415142,0.000001683685355,-0.074630141258240,0.093241602182388,0.055482879281044,-0.000003242017783,-0.050112966448069,-0.000497774453834));
res += mul(Get(s3,0,0), float4x4(-0.096085876226425,0.000005584719929,0.034098207950592,-0.056163314729929,-0.160928368568420,-0.000001615969950,-0.022387968376279,-0.032515082508326,0.078266508877277,-0.000001295333732,0.073258668184280,0.052147392183542,-0.104674734175205,-0.000000883462349,0.031608115881681,0.121768675744534));
res += mul(Get(s3,0,dy), float4x4(0.001913245650940,0.000009809506992,0.028490267693996,-0.056469928473234,-0.020611178129911,0.000001808864454,0.047781176865101,-0.155964568257332,0.110836438834667,-0.000000988250690,0.070383794605732,0.109644249081612,0.001548939268105,-0.000000290989220,0.038688935339451,-0.165639758110046));
res += mul(Get(s3,dx,-dy), float4x4(0.016540283337235,0.000000935223341,0.022523324936628,0.005366106983274,-0.035073060542345,0.000004370745955,-0.004120840691030,-0.055915206670761,-0.049123950302601,-0.000000847212505,0.034632802009583,-0.027678670361638,0.005219263024628,-0.000002068445838,-0.020128190517426,0.036117292940617));
res += mul(Get(s3,dx,0), float4x4(-0.051855277270079,0.000003144253242,0.029508655890822,0.070903785526752,-0.055201824754477,0.000001292219167,0.041958361864090,-0.028969252482057,-0.052644871175289,-0.000003540520538,-0.120014287531376,0.190706029534340,-0.060383044183254,-0.000000496509983,0.032252464443445,0.011336925439537));
res += mul(Get(s3,dx,dy), float4x4(-0.006258556619287,0.000006595191280,0.026440650224686,0.023142019286752,-0.006735831499100,0.000003880597433,-0.003886485472322,-0.170945525169373,0.029887042939663,-0.000002368522928,0.055914115160704,0.023079093545675,-0.069596745073795,-0.000000841339045,-0.006825531367213,0.000302312633721));
res += mul(Get(s4,-dx,-dy), float4x4(-0.043920680880547,0.000001536208742,-0.048318248242140,-0.000991692999378,-0.024591298773885,0.000002287327334,-0.024086644873023,0.059636186808348,-0.059228718280792,-0.000000564231868,-0.112757816910744,-0.032098598778248,-0.006387521512806,0.000002313928690,-0.228175252676010,-0.065776251256466));
res += mul(Get(s4,-dx,0), float4x4(0.021628625690937,0.000002235850388,-0.145885884761810,-0.010868194513023,0.091397747397423,0.000001158660893,-0.077789686620235,0.006777827162296,0.029989697039127,-0.000001903036946,0.016179179772735,-0.019757311791182,0.024815918877721,-0.000000930965712,0.129631355404854,-0.108189851045609));
res += mul(Get(s4,-dx,dy), float4x4(0.061093639582396,0.000002586898290,-0.066470809280872,0.118006616830826,-0.013030724599957,0.000000363556552,-0.052573110908270,0.022740993648767,-0.045488283038139,-0.000002633177928,-0.093319714069366,0.026670442894101,-0.008915432728827,-0.000000170972328,0.175861254334450,-0.059990990906954));
res += mul(Get(s4,0,-dy), float4x4(-0.044142160564661,0.000001017839622,0.085186026990414,-0.029628256335855,-0.042971622198820,0.000004140919827,0.023455388844013,-0.005395769141614,-0.048102963715792,-0.000001293648097,0.088974758982658,-0.030528923496604,-0.112508267164230,-0.000001732481792,0.028342325240374,-0.125361815094948));
res += mul(Get(s4,0,0), float4x4(0.052870560437441,0.000001110612175,-0.006285320501775,-0.033478934317827,0.090931124985218,0.000002139708613,-0.032436259090900,-0.107191652059555,-0.017634108662605,-0.000002385681000,-0.037326209247112,0.076394371688366,-0.137469127774239,-0.000005527806934,-0.157745748758316,0.210349246859550));
res += mul(Get(s4,0,dy), float4x4(-0.009545483626425,0.000001560045916,-0.057577762752771,0.088271394371986,-0.001211903290823,0.000002556533673,-0.047012068331242,0.048770092427731,0.026965292170644,-0.000002817014774,-0.016071023419499,-0.088595911860466,0.016183448955417,-0.000002272547135,0.025182774290442,-0.064540728926659));
res += mul(Get(s4,dx,-dy), float4x4(0.044205658137798,0.000000755833810,-0.017214814200997,-0.035737924277782,-0.032982163131237,0.000004203005119,0.007232963107526,-0.057915084064007,-0.010256112553179,-0.000001270268513,0.004132295027375,-0.059106338769197,-0.064605936408043,-0.000003588834716,0.020833125337958,-0.005052815191448));
res += mul(Get(s4,dx,0), float4x4(0.003338051028550,0.000001001303758,0.001526455977000,-0.034253403544426,0.042837105691433,0.000002416878260,-0.036059565842152,-0.016225317493081,0.032238554209471,-0.000001318394652,0.058664072304964,-0.083922252058983,-0.022743772715330,-0.000002689939038,0.092994444072247,-0.066066130995750));
res += mul(Get(s4,dx,dy), float4x4(0.051674813032150,0.000000585223233,0.045297488570213,-0.026653317734599,0.042797632515430,0.000003990875030,-0.014664644375443,0.024122878909111,-0.030002761632204,-0.000001009936796,0.043487016111612,0.012384619563818,0.021338060498238,-0.000001901870064,0.006010655313730,0.007094244472682));
res += mul(Get(s5,-dx,-dy), float4x4(0.016775006428361,-0.000009474440958,-0.048761826008558,0.035253223031759,0.015992190688848,0.000018423350411,0.040501289069653,0.127645537257195,-0.133669689297676,0.001978410873562,0.062351942062378,-0.067073628306389,0.080292858183384,-0.000000234962087,0.155842214822769,0.001149394200183));
res += mul(Get(s5,-dx,0), float4x4(-0.071473002433777,-0.000009369334293,-0.105190873146057,0.087456598877907,0.070481456816196,0.000015882764274,0.029743470251560,0.001880341442302,0.021703444421291,0.002014952478930,-0.040539372712374,-0.180644139647484,-0.170152127742767,-0.000003016762321,-0.078095979988575,-0.112531445920467));
res += mul(Get(s5,-dx,dy), float4x4(-0.017224505543709,-0.000006268594916,-0.018837206065655,-0.042552381753922,0.026673829182982,0.000017583624867,-0.013403009623289,0.254570245742798,-0.009746529161930,0.001923011266626,-0.032193381339312,-0.179280176758766,0.058022629469633,0.000002131884685,-0.161770865321159,-0.018047405406833));
res += mul(Get(s5,0,-dy), float4x4(-0.058081168681383,-0.000004085527507,-0.034093230962753,0.003424284979701,0.001624438096769,-0.000011046700820,0.044140454381704,-0.153692707419395,-0.143952593207359,0.002216188004240,-0.004591289907694,-0.017088046297431,0.000769165810198,-0.000003793954420,0.057712934911251,-0.045220389962196));
res += mul(Get(s5,0,0), float4x4(-0.033233564347029,-0.000003464667998,0.021381845697761,0.033486135303974,0.037298060953617,-0.000016362420865,-0.015841420739889,-0.271176040172577,0.051805112510920,0.002263332018629,-0.008669938892126,-0.151782900094986,-0.182896003127098,-0.000006171332188,0.142322987318039,0.128906279802322));
res += mul(Get(s5,0,dy), float4x4(-0.021983252838254,-0.000002210748562,-0.047964069992304,-0.074494108557701,-0.002260939916596,0.000001702454938,0.000786381831858,0.117708772420883,-0.010147643275559,0.002186890691519,-0.013221265748143,0.051609534770250,0.060812279582024,0.000000500150065,-0.051758591085672,-0.026569647714496));
res += mul(Get(s5,dx,-dy), float4x4(-0.008133912459016,-0.000001725850666,-0.014582078903913,-0.024906091392040,-0.015308144502342,-0.000016102283553,0.052683375775814,0.017960021272302,-0.079608164727688,0.002174936467782,0.033783860504627,0.003609826322645,0.132172897458076,-0.000006536837191,-0.127402767539024,0.026841452345252));
res += mul(Get(s5,dx,0), float4x4(-0.039488900452852,-0.000000842961526,0.006213292479515,0.049109168350697,0.076285831630230,-0.000024701916118,-0.014933759346604,-0.077683508396149,-0.004376904573292,0.002204942749813,-0.015702005475760,-0.014960559085011,-0.232035741209984,-0.000005500022780,0.001787724788301,0.025417301803827));
res += mul(Get(s5,dx,dy), float4x4(-0.011360163800418,-0.000000738267659,0.022817648947239,-0.020632110536098,0.014218626543880,-0.000006918044164,-0.029772141948342,0.139429435133934,0.003021633718163,0.002154232002795,0.020232522860169,-0.100277647376060,0.017986850813031,-0.000002401665597,0.031064409762621,-0.105295054614544));
res = max(float4(0, 0, 0, 0), res) + float4(-0.012184733524919,-0.000402751349611,-0.048527941107750,0.014269845560193) * min(float4(0, 0, 0, 0), res);
return res;
}