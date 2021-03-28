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
float4 res = float4(0.094284467399120,-0.034083675593138,-0.124975763261318,-0.249053582549095);
res += mul(Get(s0,-dx,-dy), float4x4(0.009892664849758,-0.022562468424439,0.040230412036180,-0.027769619598985,0.013318097218871,0.062352564185858,0.101089298725128,-0.011865120381117,-0.005947520956397,-0.015120400115848,0.024469451978803,0.024909449741244,-0.012208081781864,-0.005026979837567,0.022207595407963,-0.070724166929722));
res += mul(Get(s0,-dx,0), float4x4(-0.050014156848192,0.068844854831696,-0.063430622220039,-0.057393133640289,-0.010660395026207,-0.025879731401801,0.145760118961334,-0.013272298499942,-0.021049352362752,-0.035304028540850,0.002105154795572,-0.043781835585833,-0.037509132176638,-0.032581921666861,-0.046509817242622,-0.007821065373719));
res += mul(Get(s0,-dx,dy), float4x4(-0.088140651583672,0.057067669928074,-0.025267582386732,-0.015599221922457,-0.024249086156487,-0.040938813239336,-0.018084239214659,-0.020221685990691,0.019270746037364,0.041961379349232,0.003452151315287,0.019135469570756,0.022740518674254,-0.061987876892090,-0.009819483384490,0.002618472091854));
res += mul(Get(s0,0,-dy), float4x4(-0.003096996573731,0.016970960423350,-0.023502472788095,0.195111751556396,-0.044842161238194,-0.205923631787300,0.000560690241400,-0.007482199463993,-0.010816943831742,0.072807602584362,-0.048726499080658,0.071005702018738,-0.090595930814743,-0.030656555667520,-0.109792955219746,-0.062917418777943));
res += mul(Get(s0,0,0), float4x4(-0.021407457068563,0.030621305108070,-0.167926967144012,0.064668439328671,-0.055814273655415,0.362363398075104,-0.183016791939735,-0.041339673101902,0.052864000201225,0.010991899296641,0.138580471277237,0.179101586341858,0.039644680917263,0.217139273881912,-0.032853141427040,0.314610064029694));
res += mul(Get(s0,0,dy), float4x4(-0.095362484455109,-0.068369075655937,-0.422481387853622,-0.231435358524323,-0.074478119611740,-0.161942452192307,0.051392544060946,0.045137118548155,-0.008249362930655,-0.003374040825292,-0.030821945518255,-0.083597175776958,-0.012230576947331,0.022270740941167,0.080024093389511,0.183274373412132));
res += mul(Get(s0,dx,-dy), float4x4(-0.015407825820148,-0.012393457815051,0.024849833920598,-0.104136712849140,-0.011787408031523,0.012931163422763,-0.054472710937262,-0.053305875509977,-0.160070732235909,0.008119899779558,-0.024539584293962,0.071495309472084,0.052869684994221,0.092189870774746,-0.005492808297276,0.089594297111034));
res += mul(Get(s0,dx,0), float4x4(-0.048243481665850,-0.044475428760052,-0.064003467559814,-0.158632129430771,-0.048434253782034,-0.062460836023092,-0.061448164284229,0.024402137845755,-0.079215615987778,0.008299586363137,-0.127360790967941,0.008321112021804,-0.134412184357643,0.009079140610993,-0.081571169197559,-0.215912267565727));
res += mul(Get(s0,dx,dy), float4x4(0.005866891704500,0.070347726345062,0.106206022202969,0.066487401723862,-0.094522133469582,0.028857324272394,-0.020191440358758,0.046503156423569,0.039935618638992,0.018844129517674,-0.054140839725733,0.092914097011089,-0.071614138782024,-0.004717949777842,-0.160962834954262,-0.137880280613899));
res += mul(Get(s1,-dx,-dy), float4x4(0.003681198693812,-0.024104567244649,0.093059755861759,0.067612722516060,0.012546226382256,-0.059097893536091,0.072338402271271,-0.097494021058083,0.043705049902201,-0.024986701086164,0.036246702075005,0.023934975266457,-0.070122964680195,-0.011743846349418,0.042919825762510,-0.040609288960695));
res += mul(Get(s1,-dx,0), float4x4(0.144451126456261,0.232268735766411,-0.062397602945566,0.093020454049110,0.012040357105434,-0.072225950658321,0.065111793577671,-0.035572659224272,0.027387345209718,-0.088798515498638,-0.014047425240278,-0.019755097106099,-0.050659131258726,-0.061284068971872,0.006238413043320,-0.045376840978861));
res += mul(Get(s1,-dx,dy), float4x4(-0.078714124858379,-0.061082419008017,0.037829093635082,-0.091499797999859,-0.001466182759032,0.043591137975454,0.028946446254849,-0.006249559111893,-0.053964242339134,-0.094944521784782,-0.066409796476364,0.028323441743851,0.005377349909395,-0.022547185420990,-0.050630275160074,0.043004378676414));
res += mul(Get(s1,0,-dy), float4x4(0.109148137271404,0.119898125529289,0.005548241548240,-0.111316025257111,-0.040099188685417,0.121733009815216,-0.062328133732080,-0.013161564245820,-0.056523412466049,-0.037636421620846,0.009628495201468,0.042253792285919,-0.194351255893707,-0.016570243984461,-0.107589930295944,-0.229275166988373));
res += mul(Get(s1,0,0), float4x4(-0.110870860517025,0.072529174387455,0.070529192686081,0.000534304766916,-0.138838008046150,0.015691136941314,0.036863114684820,-0.117178283631802,0.138066560029984,0.118703156709671,-0.259055137634277,0.334481596946716,-0.083999954164028,-0.093901000916958,-0.238252684473991,-0.519638955593109));
res += mul(Get(s1,0,dy), float4x4(-0.068409293889999,-0.012830990366638,-0.063050672411919,-0.081397898495197,0.115434497594833,-0.004824131727219,-0.007672948297113,-0.086284197866917,0.051001969724894,-0.035288318991661,0.179532095789909,0.380727976560593,-0.054323531687260,-0.060732327401638,0.052220053970814,-0.022384677082300));
res += mul(Get(s1,dx,-dy), float4x4(-0.063878446817398,0.002478238893673,0.071026302874088,-0.043116059154272,0.031500976532698,-0.028982877731323,0.014212346635759,-0.095948882400990,0.027521934360266,-0.014673737809062,-0.066111378371716,0.008286741562188,-0.023665582761168,-0.011794517748058,-0.123435169458389,0.026936266571283));
res += mul(Get(s1,dx,0), float4x4(0.039332229644060,0.094730429351330,0.038248732686043,-0.027341192588210,0.035248748958111,-0.270388185977936,-0.154114276170731,-0.225090190768242,-0.092539831995964,-0.286323040723801,-0.007380534894764,-0.065685644745827,-0.020098334178329,-0.020565863698721,0.058867476880550,0.167431995272636));
res += mul(Get(s1,dx,dy), float4x4(0.061687517911196,0.019477412104607,0.055798370391130,-0.008577753789723,0.032414127141237,0.025580385699868,0.021893823519349,-0.166486591100693,-0.045286599546671,-0.089245617389679,0.033872734755278,-0.012007134966552,-0.060196053236723,-0.075098529458046,-0.036006428301334,-0.019916795194149));
res += mul(Get(s2,-dx,-dy), float4x4(-0.071858659386635,-0.066240780055523,0.026950668543577,0.003557468997315,-0.043504443019629,-0.124671988189220,-0.016009736806154,-0.033970713615417,-0.043972458690405,0.017779713496566,-0.072019167244434,-0.001421460881829,-0.022184303030372,0.045618228614330,0.042235769331455,-0.071505777537823));
res += mul(Get(s2,-dx,0), float4x4(-0.017703371122479,0.036307148635387,-0.006900241132826,0.012168068438768,-0.027776269242167,-0.116348713636398,-0.070872925221920,0.032007463276386,-0.067453198134899,-0.044350780546665,-0.058253075927496,0.048707358539104,0.247354954481125,0.044462982565165,0.284650176763535,0.193968176841736));
res += mul(Get(s2,-dx,dy), float4x4(-0.015208319760859,-0.009975504130125,0.102116182446480,0.069632276892662,0.006864413619041,0.058431103825569,-0.003149607218802,-0.015424166806042,-0.049050714820623,-0.071925729513168,0.051901988685131,-0.120581090450287,-0.117954358458519,-0.043487828224897,-0.013902932405472,-0.133306145668030));
res += mul(Get(s2,0,-dy), float4x4(-0.030488809570670,-0.057572666555643,0.067801713943481,-0.067919656634331,-0.026491221040487,0.029795670881867,-0.090213634073734,0.092265203595161,0.013116856105626,-0.200115308165550,0.129568159580231,-0.241706833243370,-0.139862746000290,0.084313966333866,0.028726100921631,0.062464311718941));
res += mul(Get(s2,0,0), float4x4(-0.060598645359278,-0.057573143392801,0.129551976919174,-0.385023295879364,-0.047154452651739,0.160363420844078,0.087689742445946,0.294161170721054,0.130004450678825,0.060364671051502,0.158245310187340,-0.139218837022781,-0.430872827768326,-0.378151118755341,-0.343151420354843,0.110346481204033));
res += mul(Get(s2,0,dy), float4x4(-0.097520187497139,-0.030833903700113,-0.154391840100288,-0.035533577203751,0.050799198448658,0.069601111114025,0.046837247908115,0.089015372097492,-0.034747298806906,0.007995840162039,0.133715063333511,0.126671835780144,0.082412742078304,0.123603530228138,0.333686739206314,0.165960386395454));
res += mul(Get(s2,dx,-dy), float4x4(-0.025754231959581,0.005518470890820,0.003648388665169,0.290866255760193,-0.002935690339655,0.028382390737534,0.039274021983147,-0.133577823638916,0.034535970538855,0.058636549860239,0.081962198019028,-0.019461080431938,-0.083074234426022,-0.033652208745480,-0.058217782527208,-0.233502045273781));
res += mul(Get(s2,dx,0), float4x4(-0.008492263033986,-0.005448088049889,0.054362580180168,0.329886466264725,-0.061969757080078,-0.040494967252016,-0.056251354515553,-0.168823465704918,0.068023599684238,-0.212683632969856,0.167370066046715,-0.359115451574326,-0.051701072603464,0.395718961954117,0.073394775390625,-0.363936185836792));
res += mul(Get(s2,dx,dy), float4x4(-0.031449347734451,-0.028845628723502,0.061596229672432,0.013892708346248,0.038893617689610,0.063437417149544,0.004544327966869,-0.057001043111086,0.060439739376307,0.060396157205105,0.102410420775414,-0.017466258257627,-0.045256160199642,0.120854780077934,0.079582050442696,0.019296228885651));
res += mul(Get(s3,-dx,-dy), float4x4(-0.002394856186584,-0.121859475970268,-0.000864523812197,0.012297017499804,0.041010476648808,0.023111250251532,-0.033571615815163,0.060658246278763,-0.019247908145189,0.031048195436597,0.072496719658375,-0.069112434983253,-0.001376909320243,-0.005231341347098,0.022830912843347,0.055619437247515));
res += mul(Get(s3,-dx,0), float4x4(0.036425344645977,-0.007204487454146,-0.080453082919121,-0.127177700400352,0.074957512319088,0.119789749383926,-0.061943423002958,0.017408913001418,0.158169090747833,0.249610245227814,-0.151112720370293,-0.044890291988850,0.029610576108098,-0.027825841680169,0.045872360467911,0.002291334327310));
res += mul(Get(s3,-dx,dy), float4x4(-0.050634354352951,-0.030413871631026,0.071314580738544,0.030263237655163,0.060994517058134,0.046284597367048,-0.017075171694160,0.100874014198780,0.043114636093378,0.018048828467727,0.090584836900234,0.022842464968562,0.008060895837843,0.007593338843435,0.036109689623117,-0.048675354570150));
res += mul(Get(s3,0,-dy), float4x4(0.019939593970776,0.011155165731907,-0.189492195844650,0.017720704898238,0.097250007092953,0.037330087274313,-0.026991290971637,0.046115204691887,-0.004614392761141,0.014240786433220,-0.091567151248455,0.043579809367657,-0.116512998938560,0.014498241245747,0.093981087207794,-0.028401661664248));
res += mul(Get(s3,0,0), float4x4(-0.060550678521395,0.107341341674328,0.021202543750405,0.106469154357910,-0.036543488502502,-0.178592294454575,0.103125430643559,-0.087648391723633,-0.092925965785980,-0.008158258162439,0.441259890794754,0.143633320927620,-0.032117508351803,0.031406190246344,-0.073898978531361,-0.063617736101151));
res += mul(Get(s3,0,dy), float4x4(-0.110697567462921,0.009652597829700,0.012902888469398,0.080904647707939,0.050187040120363,0.030699046328664,-0.107688292860985,0.000516946252901,-0.023651689291000,0.082010559737682,-0.095467813313007,-0.215294092893600,0.007372966501862,-0.067135550081730,0.048443689942360,0.004676974844187));
res += mul(Get(s3,dx,-dy), float4x4(0.042731501162052,0.017673956230283,0.055703956633806,-0.049672655761242,-0.006487811449915,0.012502728030086,0.008787931874394,0.029154071584344,0.024904798716307,0.095348142087460,0.041994955390692,-0.033592235296965,-0.148417890071869,-0.001942748785950,0.121133364737034,0.052434239536524));
res += mul(Get(s3,dx,0), float4x4(-0.007272788323462,0.029931832104921,-0.058930024504662,-0.047943752259016,0.088618494570255,0.196037560701370,0.129351362586021,0.081225790083408,0.038529433310032,0.080587223172188,0.054735708981752,-0.032659489661455,-0.140445560216904,-0.098182737827301,-0.127059012651443,0.030936935916543));
res += mul(Get(s3,dx,dy), float4x4(0.035505522042513,0.045252058655024,0.034225575625896,0.049993138760328,0.025000367313623,-0.018437778577209,-0.086285069584846,0.073810555040836,-0.020985823124647,-0.017160661518574,-0.017410369589925,-0.075912460684776,-0.025113571435213,-0.002461515367031,0.132716387510300,0.171980217099190));
res += mul(Get(s4,-dx,-dy), float4x4(0.017375960946083,0.009628131985664,-0.066578052937984,0.001052553649060,-0.037480458617210,-0.013239485211670,-0.073300734162331,0.049645233899355,-0.011904053390026,0.024976477026939,-0.106908187270164,-0.012106302194297,-0.081704005599022,0.108312010765076,-0.032726351171732,0.091637253761292));
res += mul(Get(s4,-dx,0), float4x4(0.098410449922085,0.004378485959023,0.019100490957499,0.018005868420005,-0.067461520433426,0.013748017139733,0.051900755614042,0.034719381481409,-0.008943827822804,0.017763465642929,0.009325008839369,0.058554250746965,0.036944501101971,0.182615742087364,0.059133745729923,0.275361120700836));
res += mul(Get(s4,-dx,dy), float4x4(0.048687413334846,-0.034864105284214,-0.032126881182194,0.056424211710691,0.033944349735975,0.042226813733578,0.076422631740570,0.082582689821720,-0.042412459850311,0.028271723538637,-0.022654848173261,0.065237477421761,-0.101716704666615,0.025249598547816,0.018395615741611,-0.005548417568207));
res += mul(Get(s4,0,-dy), float4x4(0.198084458708763,-0.009203694760799,-0.005140492692590,-0.063909433782101,0.068565987050533,-0.067746654152870,0.094171427190304,0.070521831512451,0.065324120223522,0.017539037391543,0.045014716684818,0.008491514250636,-0.059927802532911,0.105968624353409,0.166322737932205,0.024523034691811));
res += mul(Get(s4,0,0), float4x4(0.353551536798477,-0.074377715587616,-0.041743803769350,-0.099644444882870,-0.136043161153793,0.247001677751541,-0.169799908995628,-0.157631263136864,0.058462981134653,0.104841202497482,-0.292391180992126,-0.235160693526268,0.472319632768631,-0.519775927066803,0.167515397071838,-0.168177708983421));
res += mul(Get(s4,0,dy), float4x4(-0.129932835698128,0.050847079604864,-0.003326359670609,0.002464581048116,-0.137145355343819,-0.053253803402185,-0.274669319391251,-0.230082839727402,-0.024654595181346,0.040765807032585,-0.000888211827260,-0.127072021365166,-0.185148864984512,0.110756762325764,-0.112453952431679,-0.107080630958080));
res += mul(Get(s4,dx,-dy), float4x4(-0.025430057197809,-0.010489366017282,-0.085031650960445,0.045523222535849,-0.005962790921330,-0.016702817752957,-0.016043212264776,-0.005867876112461,0.142982050776482,0.047171752899885,0.088891476392746,0.048730839043856,-0.095233306288719,0.005482007283717,0.016936881467700,-0.061041690409184));
res += mul(Get(s4,dx,0), float4x4(0.061410199850798,0.008237251080573,-0.030069878324866,0.113687962293625,-0.012719058431685,0.100945338606834,-0.008765185251832,0.116813644766808,0.000695324270055,-0.113555848598480,0.020503858104348,-0.071852996945381,-0.054534636437893,0.044564630836248,-0.020081343129277,-0.078188069164753));
res += mul(Get(s4,dx,dy), float4x4(-0.001690170029178,-0.013401331380010,0.021222725510597,-0.009141673333943,-0.024717567488551,0.061074525117874,-0.039293162524700,0.047799099236727,0.016048623248935,0.134143248200417,0.017281465232372,-0.029432261362672,0.013531740754843,0.032212320715189,0.017337212339044,0.023090118542314));
res += mul(Get(s5,-dx,-dy), float4x4(0.107377044856548,-0.052605107426643,-0.045734629034996,0.010790151543915,-0.008465630002320,0.058846008032560,0.004455510526896,0.026397362351418,0.038478706032038,0.002335477154702,0.038076311349869,0.134640693664551,-0.048202097415924,0.006792752537876,-0.094932392239571,-0.245628446340561));
res += mul(Get(s5,-dx,0), float4x4(0.079923577606678,-0.024036450311542,-0.092073954641819,-0.107996694743633,-0.015458113513887,0.016161549836397,0.067079432308674,0.098497487604618,0.030903970822692,-0.095622695982456,0.199227347970009,-0.019593151286244,-0.105974800884724,-0.005786854773760,-0.086649186909199,-0.287265449762344));
res += mul(Get(s5,-dx,dy), float4x4(0.022481326013803,0.051891356706619,-0.017439881339669,-0.060600612312555,-0.034707281738520,-0.063334405422211,0.077124334871769,0.037211246788502,0.027313157916069,-0.092926032841206,-0.019375158473849,0.027327230200171,-0.047018717974424,-0.019848514348269,-0.044345103204250,-0.186290264129639));
res += mul(Get(s5,0,-dy), float4x4(0.019440911710262,0.025253148749471,-0.095112875103951,-0.025585489347577,0.110848419368267,0.008039766922593,0.002042527776212,0.269948571920395,0.015807144343853,-0.040204279124737,0.040939431637526,-0.045338377356529,-0.008123894222081,-0.036518409848213,-0.056378956884146,-0.069701589643955));
res += mul(Get(s5,0,0), float4x4(0.021361801773310,0.039405807852745,0.204080224037170,0.015751795843244,0.083411969244480,0.096723273396492,0.240751042962074,0.310426414012909,0.127731412649155,-0.050128016620874,-0.023462839424610,0.103188216686249,-0.113802596926689,-0.039490554481745,-0.010226362384856,-0.213227227330208));
res += mul(Get(s5,0,dy), float4x4(0.155545368790627,0.029269978404045,0.066155694425106,-0.016965070739388,0.000978323747404,-0.027724100276828,-0.029614252969623,0.149105325341225,0.093652315437794,-0.029994903132319,0.100667059421539,0.052709739655256,-0.056204032152891,0.025673644617200,-0.008060548454523,-0.230506390333176));
res += mul(Get(s5,dx,-dy), float4x4(0.041009943932295,-0.040333859622478,0.031930353492498,0.009725825861096,0.034228034317493,0.011319941841066,0.030607931315899,-0.120569258928299,0.027576226741076,0.036938760429621,0.031109645962715,0.077305480837822,0.045642085373402,0.032721977680922,-0.013497591949999,0.053604919463396));
res += mul(Get(s5,dx,0), float4x4(0.072240956127644,0.083337493240833,0.015251010656357,-0.019052548334002,-0.006293265148997,-0.080536112189293,-0.122929394245148,-0.055156886577606,0.010113207623363,-0.028615584596992,-0.048018496483564,0.000730451778509,0.016996044665575,-0.016481662169099,0.036101896315813,0.005524610169232));
res += mul(Get(s5,dx,dy), float4x4(0.072770617902279,0.054560385644436,-0.089968070387840,-0.048559814691544,0.005653485655785,0.027037080377340,-0.011720582842827,-0.073971100151539,-0.023550266399980,-0.037832252681255,0.039976537227631,-0.042646817862988,-0.011190821416676,0.007775845471770,-0.035489186644554,0.071353711187840));
res = max(float4(0, 0, 0, 0), res) + float4(0.623445034027100,0.894413590431213,0.003459622850642,-0.028629029169679) * min(float4(0, 0, 0, 0), res);
return res;
}
