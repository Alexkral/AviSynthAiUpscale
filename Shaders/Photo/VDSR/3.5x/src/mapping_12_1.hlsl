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
res += mul(Get(s0,-dx,-dy), float4x4(-0.070871107280254,-0.036607924848795,0.080549553036690,-0.021386155858636,-0.066063143312931,-0.074887387454510,-0.024685272946954,-0.002192097017542,0.035230025649071,-0.059634685516357,0.015642685815692,0.064158648252487,0.163162097334862,-0.188312560319901,-0.118170760571957,-0.137472957372665));
res += mul(Get(s0,-dx,0), float4x4(-0.109267488121986,0.126977682113647,0.067015774548054,-0.069635450839996,0.085680224001408,-0.122177153825760,-0.023976027965546,-0.154293328523636,0.067575559020042,0.037959083914757,0.062367249280214,0.105643801391125,0.096973553299904,-0.111902967095375,0.015457827597857,0.093348003923893));
res += mul(Get(s0,-dx,dy), float4x4(-0.075487889349461,-0.037393290549517,0.000836040941067,0.062070522457361,-0.029806610196829,-0.089979432523251,-0.116344332695007,-0.135728701949120,-0.033786945044994,0.021972274407744,0.118954621255398,0.140785440802574,0.088850378990173,-0.159849554300308,-0.196912795305252,-0.122952692210674));
res += mul(Get(s0,0,-dy), float4x4(0.011676979251206,-0.066223241388798,-0.007309450767934,-0.061893142759800,-0.085088498890400,0.003617460839450,0.014987950213253,-0.051798492670059,-0.000637127261143,-0.027101362124085,-0.054453793913126,-0.132033213973045,-0.199592113494873,-0.055273365229368,-0.020084137097001,-0.041696183383465));
res += mul(Get(s0,0,0), float4x4(-0.013758701272309,0.049982182681561,-0.020012358203530,-0.143177956342697,0.004023804794997,0.052229501307011,-0.068110533058643,-0.050734091550112,-0.080450490117073,-0.010334247723222,-0.026951674371958,0.216796934604645,0.017022222280502,0.055347360670567,0.063891313970089,0.118119820952415));
res += mul(Get(s0,0,dy), float4x4(0.050552181899548,-0.075145281851292,-0.057610094547272,-0.111618332564831,0.005501050036401,0.031282711774111,0.020314879715443,-0.051080930978060,0.021790828555822,0.043379325419664,-0.093785919249058,0.087303601205349,-0.013669606298208,-0.034099042415619,-0.122022323310375,0.015202761627734));
res += mul(Get(s0,dx,-dy), float4x4(0.014371442608535,0.048736803233624,0.043530650436878,-0.091944478452206,-0.022611826658249,-0.016599459573627,-0.137418821454048,0.005228027701378,-0.108550429344177,-0.080218978226185,0.050311144441366,-0.023268518969417,-0.032328322529793,-0.042159203439951,0.048003081232309,-0.053937908262014));
res += mul(Get(s0,dx,0), float4x4(-0.033512741327286,0.136517137289047,0.099921122193336,-0.115725360810757,-0.082562126219273,0.124559551477432,-0.013284352608025,-0.131999835371971,-0.149367660284042,-0.106255777180195,0.033612914383411,0.065492026507854,0.005907163955271,0.007525380700827,0.071176469326019,0.068635061383247));
res += mul(Get(s0,dx,dy), float4x4(0.053628243505955,0.158499822020531,0.017414823174477,-0.004323034547269,-0.034929841756821,-0.060589320957661,-0.112648718059063,0.001978838816285,0.022156491875648,-0.073098279535770,0.018131718039513,0.001690349192359,0.064551092684269,0.007355632260442,0.028437582775950,-0.195483461022377));
res += mul(Get(s1,-dx,-dy), float4x4(0.184355810284615,-0.009032291360199,-0.062985852360725,-0.016619877889752,-0.000088837849034,-0.089887239038944,0.034432630985975,0.030355880036950,-0.093384958803654,0.001488935085945,-0.108874820172787,0.016324449330568,-0.213587403297424,0.042188555002213,-0.117312341928482,-0.110294327139854));
res += mul(Get(s1,-dx,0), float4x4(0.239326804876328,-0.005365335382521,0.118164233863354,0.034437160938978,0.017275840044022,0.054364267736673,-0.035494275391102,0.065758757293224,-0.075297482311726,-0.030724383890629,-0.073069833219051,0.227596327662468,-0.031037911772728,0.085637286305428,0.107897467911243,0.003306589554995));
res += mul(Get(s1,-dx,dy), float4x4(0.105654604732990,-0.048724278807640,0.085690468549728,0.009705322794616,-0.103317826986313,0.031138319522142,-0.093882881104946,0.006123785860837,-0.176570400595665,0.102564126253128,-0.120547957718372,0.007118123117834,-0.083027705550194,0.096788980066776,0.145515531301498,-0.069754421710968));
res += mul(Get(s1,0,-dy), float4x4(0.051147773861885,-0.148172155022621,-0.113020226359367,0.168822929263115,-0.045725673437119,-0.004617233760655,0.119882836937904,0.079863749444485,-0.000921116094105,0.006641722749919,-0.036020629107952,-0.018281519412994,-0.038329474627972,0.121867850422859,-0.103578448295593,-0.200672373175621));
res += mul(Get(s1,0,0), float4x4(-0.068637043237686,-0.051368165761232,0.079186402261257,-0.073670588433743,-0.011885192245245,0.063116244971752,-0.045504532754421,0.006544943898916,-0.030840478837490,0.024983866140246,-0.002295326441526,0.049139529466629,0.053665291517973,0.090771079063416,0.117518700659275,0.203628927469254));
res += mul(Get(s1,0,dy), float4x4(0.060653228312731,0.024218540638685,0.125758618116379,-0.034826859831810,-0.032164987176657,0.098188765347004,-0.022764831781387,-0.080872736871243,-0.117700584232807,0.058729328215122,-0.091196686029434,-0.104289777576923,0.024417329579592,0.030454227700830,-0.012226262129843,0.038282528519630));
res += mul(Get(s1,dx,-dy), float4x4(0.161537528038025,-0.077732101082802,-0.070455417037010,0.024269005283713,-0.097393058240414,0.076674744486809,0.107381291687489,0.113800272345543,-0.010175311006606,0.004329272545874,-0.000629210495390,-0.054092988371849,0.044365279376507,0.137605175375938,-0.084436617791653,0.078110970556736));
res += mul(Get(s1,dx,0), float4x4(0.011737860739231,-0.014410439878702,0.007014572154731,-0.086702868342400,0.031821738928556,0.042519722133875,-0.034409739077091,0.028492661193013,0.037211734801531,-0.119673117995262,0.068070799112320,-0.052458554506302,0.079216882586479,0.051755819469690,0.053469117730856,0.098533667623997));
res += mul(Get(s1,dx,dy), float4x4(0.171414777636528,-0.098042599856853,-0.041110154241323,0.053303562104702,-0.014479910954833,0.055826216936111,-0.009678374975920,0.104101248085499,0.006392189301550,0.241949692368507,-0.120279200375080,-0.048606950789690,-0.053784012794495,0.060079757124186,0.017688391730189,-0.069449596107006));
res += mul(Get(s2,-dx,-dy), float4x4(0.082935690879822,-0.057940941303968,-0.055760532617569,0.135379940271378,0.015142018906772,-0.027141833677888,-0.054347608238459,0.069320701062679,-0.104716159403324,0.172050103545189,0.118191406130791,0.042367108166218,0.050911433994770,0.131128847599030,0.073179394006729,0.084995836019516));
res += mul(Get(s2,-dx,0), float4x4(0.128365501761436,-0.025613365694880,-0.153892263770103,-0.080693103373051,-0.026333423331380,0.058046624064445,-0.052632052451372,-0.041747745126486,0.054266087710857,0.163019940257072,0.103643722832203,-0.034716576337814,-0.056800164282322,0.053924158215523,0.107724234461784,0.061919961124659));
res += mul(Get(s2,-dx,dy), float4x4(0.039671629667282,-0.118055053055286,-0.041278615593910,-0.160640910267830,0.130905404686928,-0.014344476163387,0.059582743793726,-0.117220602929592,-0.118759013712406,0.164204344153404,-0.073234587907791,0.030221890658140,-0.056037690490484,-0.048111971467733,-0.052711203694344,0.136764124035835));
res += mul(Get(s2,0,-dy), float4x4(-0.090536914765835,0.025967514142394,0.057077262550592,0.011750816367567,-0.012845503166318,-0.085696734488010,-0.052566129714251,-0.040060251951218,-0.004309807438403,-0.059866264462471,0.053232360631227,0.022976011037827,-0.005159913096577,-0.147222086787224,-0.079888492822647,0.154754012823105));
res += mul(Get(s2,0,0), float4x4(0.111016146838665,0.035728625953197,0.000891504227184,0.001984810456634,0.171481892466545,0.017915505915880,-0.004404444713145,-0.001033976906911,0.082171879708767,-0.084127277135849,-0.001228376757354,0.074007727205753,0.058647390455008,-0.043491318821907,0.107619263231754,-0.075824834406376));
res += mul(Get(s2,0,dy), float4x4(-0.016658797860146,0.038172751665115,0.103519670665264,-0.068200118839741,0.048029467463493,-0.029005648568273,0.254734605550766,0.006388118024915,-0.037145894020796,-0.025739273056388,-0.123622074723244,-0.064097546041012,0.141138315200806,-0.039203483611345,-0.146735593676567,0.096535950899124));
res += mul(Get(s2,dx,-dy), float4x4(0.025009328499436,-0.149431213736534,0.052884612232447,0.043417155742645,0.003173695178702,-0.087021738290787,-0.048330776393414,0.024040855467319,-0.115518495440483,-0.005629781633615,-0.077991671860218,-0.137912437319756,0.088241577148438,-0.118935681879520,-0.000990298343822,0.071073219180107));
res += mul(Get(s2,dx,0), float4x4(0.094805032014847,-0.043756097555161,0.062298022210598,-0.065870366990566,0.051098745316267,-0.119328208267689,-0.044392742216587,0.026462437584996,-0.004386835731566,0.110220827162266,-0.096160821616650,-0.121186539530754,0.014352153055370,0.026102945208549,0.190782636404037,0.085936784744263));
res += mul(Get(s2,dx,dy), float4x4(0.103559069335461,0.055539771914482,-0.020995583385229,0.030941445380449,-0.029417904093862,-0.079719610512257,0.118689440190792,0.106893427670002,-0.089195601642132,0.028733734041452,-0.224619597196579,0.003085441188887,0.101738952100277,0.065967157483101,0.105372577905655,0.101765826344490));
res += mul(Get(s3,-dx,-dy), float4x4(0.023042790591717,0.171305835247040,0.024392891675234,0.134914606809616,0.062814556062222,-0.015096360817552,-0.012715130113065,-0.035966694355011,-0.215741187334061,-0.145855352282524,0.031333979219198,-0.096042908728123,-0.052234888076782,0.012521521188319,0.030540920794010,0.110166996717453));
res += mul(Get(s3,-dx,0), float4x4(-0.024561634287238,0.024574346840382,0.122824832797050,0.141971424221992,0.010041037574410,0.028637487441301,-0.005058084148914,-0.021857347339392,-0.056757096201181,-0.032171946018934,-0.037014111876488,-0.032068204134703,-0.018810020759702,-0.010012205690145,-0.081285923719406,-0.081200100481510));
res += mul(Get(s3,-dx,dy), float4x4(0.094911672174931,0.063299842178822,-0.004759430885315,-0.033384639769793,-0.008385050110519,-0.125875636935234,-0.043740466237068,0.020376166328788,-0.011003358289599,0.033992551267147,-0.068944454193115,-0.055822547525167,-0.126265510916710,0.026805667206645,-0.244188636541367,0.003604174125940));
res += mul(Get(s3,0,-dy), float4x4(-0.103968515992165,0.024604991078377,-0.047646258026361,0.019053483381867,-0.054530762135983,-0.127242162823677,0.021391447633505,-0.055354863405228,-0.223561078310013,0.120624311268330,0.163745582103729,-0.024690236896276,-0.017497787252069,0.005449303891510,-0.044528394937515,-0.055501069873571));
res += mul(Get(s3,0,0), float4x4(0.017444482073188,-0.090855747461319,-0.034318331629038,0.064201101660728,0.012770922854543,0.133013948798180,0.006719923112541,-0.046422127634287,0.089482806622982,-0.043408613651991,-0.085136577486992,0.001145893358625,0.075418941676617,-0.016616998240352,-0.028668921440840,-0.075494326651096));
res += mul(Get(s3,0,dy), float4x4(0.006379039026797,-0.005001787096262,-0.033478245139122,-0.007166492287070,-0.054381843656301,0.005267194006592,-0.042753484100103,-0.071125678718090,-0.021880561485887,0.069936498999596,0.008334228768945,0.044868007302284,-0.186088681221008,-0.026837341487408,-0.183066070079803,-0.049971390515566));
res += mul(Get(s3,dx,-dy), float4x4(-0.076975919306278,-0.052132304757833,0.034552346915007,-0.040818780660629,-0.022439714521170,-0.026197625324130,-0.025485854595900,-0.078679159283638,-0.047563947737217,-0.042418237775564,0.205089285969734,-0.031950931996107,0.025827076286077,-0.102581866085529,0.046344209462404,-0.071532785892487));
res += mul(Get(s3,dx,0), float4x4(0.017412859946489,-0.000794566003606,0.060802966356277,0.029577005654573,-0.064818933606148,0.038122996687889,-0.082633689045906,-0.068154133856297,0.053857773542404,0.031239166855812,0.080111607909203,-0.061748273670673,-0.009194635786116,-0.092121742665768,-0.095219887793064,-0.077404543757439));
res += mul(Get(s3,dx,dy), float4x4(0.124636247754097,-0.031244225800037,0.103796772658825,-0.083790309727192,-0.158765524625778,-0.053892035037279,-0.030806222930551,-0.077999629080296,-0.099966652691364,-0.001723565277644,0.006923065986484,-0.023490274325013,-0.093166321516037,0.185734719038010,-0.198505118489265,0.329044163227081));
return max(float4(0,0,0,0), res);
}
