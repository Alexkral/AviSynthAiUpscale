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
res += mul(Get(s0,-dx,-dy), float4x4(0.020457919687033,-0.052613694220781,-0.089040815830231,0.101850271224976,0.037934012711048,-0.168317988514900,0.046584334224463,0.034691847860813,0.107129238545895,0.095529042184353,0.175091013312340,0.108717769384384,0.005142306443304,-0.111991643905640,0.056335326284170,0.030006064102054));
res += mul(Get(s0,-dx,0), float4x4(-0.039152707904577,-0.010238196700811,-0.053732611238956,0.063620813190937,-0.068544462323189,-0.108919195830822,0.192163899540901,-0.017575234174728,0.245812803506851,0.085663206875324,-0.087404593825340,-0.148498266935349,0.107190273702145,0.050554063171148,-0.058465566486120,0.181167423725128));
res += mul(Get(s0,-dx,dy), float4x4(-0.106204375624657,-0.103878721594810,-0.038315180689096,-0.044063985347748,0.077729105949402,-0.157241538167000,0.094398118555546,-0.089415155351162,0.016824997961521,0.030669573694468,-0.242500200867653,-0.172327667474747,-0.205539405345917,-0.022346653044224,0.072645194828510,0.099509209394455));
res += mul(Get(s0,0,-dy), float4x4(-0.056699488312006,0.057666733860970,-0.136414393782616,-0.172174111008644,0.011210778728127,-0.160867109894753,-0.014854399487376,0.145157739520073,0.147610068321228,-0.132597282528877,0.237941160798073,-0.103489711880684,0.173878654837608,0.300778031349182,0.295797199010849,-0.014617810957134));
res += mul(Get(s0,0,0), float4x4(0.086010649800301,-0.033149145543575,-0.061442293226719,-0.067273177206516,0.171455636620522,-0.044519364833832,0.103206448256969,-0.152152374386787,0.029528670012951,-0.134179756045341,-0.056161623448133,-0.065474405884743,0.116680748760700,0.189142346382141,0.094819970428944,-0.004325624555349));
res += mul(Get(s0,0,dy), float4x4(0.008653010241687,0.068072490394115,-0.043722458183765,-0.075939819216728,-0.195166036486626,-0.129495963454247,0.035930726677179,-0.166454240679741,-0.169095978140831,-0.007316548377275,0.003193928394467,0.072918727993965,-0.038593541830778,0.003241062862799,0.204732805490494,0.264233499765396));
res += mul(Get(s0,dx,-dy), float4x4(0.203851953148842,0.065890148282051,-0.080213099718094,0.072762280702591,0.041279967874289,0.028815848752856,-0.084155187010765,0.035133466124535,0.080254517495632,-0.129742667078972,0.069783508777618,-0.016884855926037,0.080552965402603,0.157104149460793,0.076088808476925,-0.006106517277658));
res += mul(Get(s0,dx,0), float4x4(-0.092333704233170,-0.111861139535904,0.136505037546158,0.062239222228527,0.068214744329453,-0.007557226344943,-0.149441972374916,-0.228990137577057,-0.082776263356209,-0.035263217985630,-0.003347202669829,-0.014773230068386,-0.102941013872623,0.076438218355179,-0.027894601225853,-0.054854802787304));
res += mul(Get(s0,dx,dy), float4x4(-0.290134280920029,-0.144726052880287,0.076578125357628,-0.033061247318983,-0.135068148374557,0.037894915789366,0.135588675737381,0.003489858238026,-0.067702427506447,-0.086444467306137,0.064550884068012,-0.117934115231037,-0.016323022544384,-0.135136738419533,0.025403168052435,-0.031385302543640));
res += mul(Get(s1,-dx,-dy), float4x4(0.089466899633408,0.123300604522228,-0.143561556935310,0.086539648473263,-0.042385719716549,0.039261061698198,0.081306785345078,0.029332380741835,-0.192097231745720,0.046040184795856,-0.136766582727432,0.108537927269936,0.042308218777180,0.169141396880150,-0.133031621575356,-0.126805990934372));
res += mul(Get(s1,-dx,0), float4x4(-0.032934240996838,0.046014338731766,-0.044976867735386,0.244400963187218,0.075368978083134,0.137905150651932,-0.046754650771618,-0.102658465504646,0.007404507603496,0.119385771453381,-0.016854535788298,-0.067796118557453,0.003404815448448,0.131911471486092,0.174364000558853,0.040978640317917));
res += mul(Get(s1,-dx,dy), float4x4(-0.042178124189377,0.174196928739548,0.125386923551559,0.023699130862951,-0.200954660773277,0.342827528715134,0.143891647458076,-0.280328840017319,0.219365850090981,0.009187525138259,0.046662926673889,-0.149147063493729,-0.006112802773714,-0.172207951545715,-0.061655901372433,-0.108026959002018));
res += mul(Get(s1,0,-dy), float4x4(-0.094729371368885,0.062015350908041,0.041680674999952,0.104266442358494,-0.201454073190689,0.069827236235142,0.082489050924778,-0.304868787527084,-0.127308160066605,-0.047938439995050,0.067794024944305,0.002194144530222,0.158042922616005,0.118968188762665,-0.098442278802395,-0.042253427207470));
res += mul(Get(s1,0,0), float4x4(0.044091641902924,0.069263957440853,0.019113995134830,0.252689927816391,-0.051168948411942,-0.010894152335823,0.079524390399456,-0.128413125872612,-0.307347238063812,0.043354116380215,-0.123232841491699,0.105587325990200,-0.158600166440010,-0.053320668637753,0.243871390819550,-0.148075431585312));
res += mul(Get(s1,0,dy), float4x4(-0.040140368044376,-0.061275471001863,0.336576640605927,0.097397610545158,-0.116408534348011,0.146582305431366,0.011836696416140,0.154036998748779,-0.226740002632141,-0.221644967794418,-0.012844921089709,0.180005922913551,-0.140037938952446,0.014776989817619,0.107855498790741,0.035590007901192));
res += mul(Get(s1,dx,-dy), float4x4(-0.023878565058112,0.149765476584435,0.129360005259514,0.049299240112305,-0.033428676426411,0.016234761103988,0.098262742161751,-0.143819734454155,-0.165968477725983,-0.136497393250465,-0.136408776044846,0.245804071426392,-0.034276377409697,0.178383991122246,0.029259884729981,-0.037705451250076));
res += mul(Get(s1,dx,0), float4x4(0.183183416724205,-0.034172527492046,-0.022067526355386,-0.020605619996786,0.129172161221504,0.021161282435060,0.040291145443916,-0.184737190604210,0.046289589256048,0.021596169099212,0.030685719102621,-0.032317403703928,0.069689624011517,-0.155888497829437,-0.060918007045984,-0.103828705847263));
res += mul(Get(s1,dx,dy), float4x4(0.041272301226854,0.053233414888382,-0.018707327544689,0.149067044258118,0.033795516937971,-0.219592541456223,-0.093259453773499,-0.004082181025296,-0.065702289342880,-0.016993969678879,-0.028668297454715,-0.096587516367435,0.100308254361153,-0.111241750419140,-0.000310273666400,0.081185787916183));
res += mul(Get(s2,-dx,-dy), float4x4(-0.219658225774765,0.158429980278015,0.040170468389988,-0.078413270413876,0.145525544881821,0.083051830530167,-0.252678006887436,0.039341662079096,-0.129113733768463,-0.109934233129025,0.003440845059231,0.091727823019028,0.099082015454769,0.094678036868572,-0.100785963237286,0.216686680912971));
res += mul(Get(s2,-dx,0), float4x4(0.035623427480459,-0.165602669119835,-0.344916790723801,-0.132317245006561,0.046949833631516,-0.036863371729851,0.125387698411942,-0.060227140784264,-0.014324418269098,-0.204643562436104,0.017726527526975,0.003775834804401,-0.071955263614655,-0.073018021881580,-0.136715695261955,0.114980235695839));
res += mul(Get(s2,-dx,dy), float4x4(-0.112182937562466,-0.126445695757866,-0.244100317358971,0.023694194853306,-0.131143972277641,-0.016987634822726,-0.272009283304214,0.138109475374222,-0.193104803562164,0.044360533356667,-0.119624435901642,0.241404935717583,-0.214886143803596,-0.032694268971682,0.008419580757618,0.044550538063049));
res += mul(Get(s2,0,-dy), float4x4(-0.041671715676785,-0.187586784362793,-0.132536053657532,-0.072373218834400,-0.090616375207901,-0.036070179194212,0.023867780342698,-0.054891251027584,0.008266283199191,-0.249289363622665,0.003425674978644,-0.006014386657625,-0.025164233520627,-0.039088502526283,0.039606511592865,0.098638847470284));
res += mul(Get(s2,0,0), float4x4(-0.243275672197342,-0.116485252976418,-0.049597077071667,0.003509958973154,0.008783035911620,-0.020882537588477,-0.068915881216526,-0.086851380765438,-0.019796315580606,-0.305527746677399,0.060322009027004,-0.141020819544792,-0.094183906912804,-0.086426213383675,-0.092478498816490,0.018753513693810));
res += mul(Get(s2,0,dy), float4x4(-0.075910314917564,-0.228485137224197,0.123995624482632,-0.080239027738571,-0.219249010086060,0.009132365696132,-0.035780210047960,0.152373015880585,-0.183030679821968,-0.014324364252388,0.063054122030735,-0.039499379694462,-0.086804196238518,0.121219165623188,-0.174873411655426,0.004438642878085));
res += mul(Get(s2,dx,-dy), float4x4(-0.117866531014442,0.039572384208441,-0.200281322002411,-0.067566350102425,0.049424249678850,0.066111423075199,0.151317417621613,-0.030470680445433,-0.022366836667061,0.019887102767825,0.045662507414818,0.103848449885845,-0.155291125178337,0.152718827128410,-0.108607001602650,-0.283291399478912));
res += mul(Get(s2,dx,0), float4x4(-0.143582075834274,-0.119611121714115,-0.080238223075867,-0.066439099609852,-0.068529509007931,-0.063029445707798,-0.156222343444824,0.021791918203235,0.011965099722147,-0.046613760292530,-0.125154480338097,0.178394541144371,0.115212179720402,-0.010601112619042,0.011971817351878,0.046787459403276));
res += mul(Get(s2,dx,dy), float4x4(0.088437139987946,-0.030437812209129,0.074841514229774,0.120022349059582,0.037502195686102,0.125779539346695,0.095357969403267,0.163235381245613,-0.095350392162800,-0.042169161140919,-0.223746806383133,-0.027977643534541,-0.138112545013428,0.024433789774776,0.064008675515652,0.126640394330025));
res += mul(Get(s3,-dx,-dy), float4x4(-0.007426179479808,0.169544473290443,-0.021398609504104,-0.072506234049797,-0.005631088279188,-0.056362137198448,0.126454010605812,-0.123845167458057,-0.108383186161518,0.150194913148880,-0.016744129359722,0.039064411073923,0.076620183885098,0.091550670564175,-0.033227864652872,-0.153187617659569));
res += mul(Get(s3,-dx,0), float4x4(0.032395616173744,-0.188411369919777,0.063043355941772,-0.113401323556900,0.212907582521439,-0.035502050071955,0.121237970888615,-0.011685975827277,-0.058609187602997,0.120380699634552,-0.030236953869462,0.159179672598839,-0.053427055478096,0.022275799885392,0.010904011316597,0.029325472190976));
res += mul(Get(s3,-dx,dy), float4x4(0.063542999327183,-0.279231220483780,-0.021249040961266,-0.214445278048515,0.023635257035494,-0.125946745276451,0.082966625690460,0.034470994025469,0.053728219121695,-0.073334939777851,0.069872990250587,0.165195167064667,0.115066453814507,0.237098693847656,0.050345510244370,0.198850348591805));
res += mul(Get(s3,0,-dy), float4x4(-0.081889040768147,0.099027417600155,0.117709301412106,-0.125968292355537,-0.217909842729568,-0.289685964584351,-0.044796083122492,-0.012571118772030,-0.132274597883224,-0.062562026083469,-0.136321872472763,0.035022135823965,-0.187007248401642,-0.118412047624588,-0.113739259541035,0.120837941765785));
res += mul(Get(s3,0,0), float4x4(0.104387074708939,-0.035270396620035,0.009152641519904,-0.104736536741257,0.078883871436119,-0.097045049071312,-0.024120938032866,0.001061592367478,0.033116172999144,0.160932719707489,0.017700903117657,-0.099154375493526,0.123304687440395,-0.074973173439503,-0.181326478719711,0.053538899868727));
res += mul(Get(s3,0,dy), float4x4(0.120479315519333,-0.192204609513283,-0.082394406199455,0.086074471473694,0.076138377189636,0.114911489188671,-0.106183394789696,0.034657549113035,0.010426459833980,0.156384363770485,-0.106623373925686,-0.209450230002403,0.082803219556808,0.008679157122970,0.238436877727509,0.086786739528179));
res += mul(Get(s3,dx,-dy), float4x4(-0.013963268138468,0.082384027540684,0.144005835056305,-0.002809593221173,-0.113904230296612,-0.120330177247524,0.010588102042675,0.055659472942352,0.168784469366074,0.096118927001953,-0.048922892659903,-0.029509617015719,0.076145343482494,0.041974797844887,-0.065070502460003,0.024482009932399));
res += mul(Get(s3,dx,0), float4x4(-0.034395683556795,0.041370764374733,0.002007056958973,0.247340217232704,-0.070790030062199,0.051450889557600,-0.085040181875229,-0.044157188385725,0.050734918564558,0.023466514423490,0.192465305328369,-0.104007944464684,-0.030010284855962,-0.034609496593475,0.175192415714264,-0.072616912424564));
res += mul(Get(s3,dx,dy), float4x4(0.050876814872026,0.168569535017014,-0.013575361110270,-0.016644021496177,0.086366675794125,-0.123973846435547,0.033003002405167,-0.130597725510597,-0.063549034297466,0.086210511624813,0.049477968364954,-0.062503032386303,0.097315669059753,-0.094653867185116,0.054011199623346,-0.100663870573044));
return max(float4(0,0,0,0), res);
}