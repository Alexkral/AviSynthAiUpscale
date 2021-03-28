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
float4 res = float4(-0.054443269968033,-0.150031670928001,0.057600371539593,-0.083221912384033);
res += mul(Get(s0,-dx,-dy), float4x4(0.048423614352942,0.067618012428284,-0.071741521358490,-0.058918729424477,0.204885318875313,0.078132227063179,-0.151666343212128,0.010693897493184,0.160938128829002,0.054849095642567,-0.120788127183914,-0.026469163596630,0.015279176644981,-0.165482640266418,0.069899715483189,-0.175111755728722));
res += mul(Get(s0,-dx,0), float4x4(-0.019859528169036,0.071414805948734,0.198791444301605,-0.095800891518593,-0.112144850194454,-0.049306575208902,0.203961566090584,0.029728021472692,-0.074002154171467,-0.039787851274014,-0.180340826511383,-0.097537837922573,0.016971450299025,0.175799340009689,0.017872957512736,0.132163017988205));
res += mul(Get(s0,-dx,dy), float4x4(0.060030683875084,0.066638074815273,-0.072438031435013,0.079285793006420,0.044665083289146,-0.234562680125237,-0.041932437568903,0.018397908657789,0.171963810920715,0.012693253345788,0.043308362364769,0.066766649484634,0.108142279088497,0.041396066546440,-0.028130728751421,0.057232759892941));
res += mul(Get(s0,0,-dy), float4x4(0.044086802750826,0.019532559439540,-0.113972112536430,-0.065542623400688,0.008115065284073,-0.141883805394173,-0.099461697041988,0.027198061347008,-0.003087147604674,-0.168762356042862,0.191696137189865,-0.090398162603378,0.254077523946762,-0.115469843149185,-0.250321090221405,0.041265830397606));
res += mul(Get(s0,0,0), float4x4(-0.231290772557259,0.315755724906921,0.029229300096631,0.105893157422543,-0.259643167257309,-0.157131955027580,0.258993446826935,0.150189161300659,0.178332135081291,0.174507468938828,-0.108856104314327,0.229700580239296,0.000182925010449,-0.188916414976120,0.093488380312920,-0.035696741193533));
res += mul(Get(s0,0,dy), float4x4(0.017085408791900,0.040997587144375,-0.153954699635506,-0.151628464460373,0.178227081894875,-0.188125371932983,-0.170688092708588,-0.037056088447571,-0.097902908921242,-0.021972183138132,0.221956148743629,-0.048507660627365,-0.045236915349960,-0.027590015903115,-0.183372944593430,-0.037205908447504));
res += mul(Get(s0,dx,-dy), float4x4(-0.094287060201168,-0.017984570935369,-0.039113942533731,-0.155483126640320,0.065027289092541,-0.119432471692562,-0.065700009465218,-0.126793399453163,0.038890101015568,0.051756009459496,0.015055094845593,0.076571173965931,-0.064017795026302,-0.078998580574989,-0.143804430961609,-0.111407957971096));
res += mul(Get(s0,dx,0), float4x4(0.075533621013165,-0.035634350031614,0.080867096781731,0.009174499660730,0.012169232591987,0.204537332057953,-0.082457527518272,-0.069220170378685,-0.071448475122452,-0.113557323813438,-0.119986511766911,-0.219044238328934,0.034713648259640,0.048254661262035,-0.058747913688421,0.042221136391163));
res += mul(Get(s0,dx,dy), float4x4(0.058800224214792,0.175353452563286,-0.051395311951637,-0.116686984896660,-0.011386715807021,0.034067392349243,0.068720430135727,0.041906263679266,0.024320797994733,-0.116405002772808,-0.022651819512248,-0.117828801274300,0.066785953938961,-0.006470718886703,0.051750417798758,0.104154072701931));
res += mul(Get(s1,-dx,-dy), float4x4(-0.088914297521114,0.147057846188545,-0.164435938000679,0.137381523847580,-0.023977378383279,0.024785311892629,-0.017275506630540,-0.059542350471020,0.169064626097679,-0.004440325312316,-0.022362511605024,0.018144184723496,0.051496189087629,-0.047673646360636,0.053638223558664,-0.020851731300354));
res += mul(Get(s1,-dx,0), float4x4(-0.107250645756721,0.054077897220850,-0.127320051193237,0.001420433749445,-0.044483877718449,0.010757069103420,-0.020805474370718,-0.015233080834150,0.045575331896544,-0.168858438730240,0.093643181025982,-0.120080821216106,0.074053667485714,0.047366101294756,-0.211144864559174,0.050624374300241));
res += mul(Get(s1,-dx,dy), float4x4(-0.118170015513897,-0.055407874286175,-0.059716451913118,-0.012027781456709,-0.067824803292751,-0.008552202023566,0.004088428802788,-0.017067613080144,-0.005223582033068,0.014289313927293,-0.169087752699852,-0.058715660125017,-0.003437308827415,0.005265380721539,-0.094161197543144,0.004257185384631));
res += mul(Get(s1,0,-dy), float4x4(0.030984487384558,0.056108526885509,0.004020851571113,0.107452943921089,0.012746821157634,-0.025370532646775,0.078556217253208,0.022338552400470,0.143019571900368,0.040901809930801,0.171067953109741,0.064696162939072,0.129760965704918,-0.053015336394310,-0.098137579858303,-0.068810679018497));
res += mul(Get(s1,0,0), float4x4(-0.008691807277501,0.135193496942520,-0.077372424304485,-0.104086771607399,0.158768281340599,-0.475455611944199,-0.436880439519882,0.079542070627213,0.041307110339403,0.165566936135292,-0.250113844871521,0.186788097023964,0.206711009144783,0.258128911256790,0.056462042033672,-0.147921666502953));
res += mul(Get(s1,0,dy), float4x4(-0.178986802697182,0.131391927599907,0.097127914428711,0.040175497531891,0.040290307253599,0.050437808036804,0.119369201362133,0.040171504020691,0.067384526133537,-0.004373972304165,-0.109206050634384,0.120367728173733,0.018141690641642,0.007542701903731,-0.078302785754204,0.051834199577570));
res += mul(Get(s1,dx,-dy), float4x4(0.068229801952839,-0.053050100803375,0.007674844004214,-0.053701207041740,-0.179911047220230,-0.006257904693484,0.035017840564251,-0.060064405202866,-0.059400718659163,-0.042809423059225,0.023987194523215,-0.067283347249031,-0.005085801240057,0.013146049343050,-0.006290787365288,0.124581545591354));
res += mul(Get(s1,dx,0), float4x4(0.173722639679909,0.102891504764557,-0.066852308809757,0.098864063620567,-0.249617934226990,0.058087904006243,-0.091147541999817,-0.424144983291626,0.109716333448887,-0.015352867543697,-0.096020892262459,-0.200513496994972,-0.045816164463758,-0.174880743026733,-0.074746355414391,0.097035840153694));
res += mul(Get(s1,dx,dy), float4x4(-0.207257941365242,0.176960572600365,0.012299692258239,0.042817961424589,-0.056585982441902,0.077243812382221,0.027154477313161,-0.072570189833641,0.091577038168907,0.041214447468519,-0.024577477946877,-0.037975173443556,-0.029884982854128,0.036344941705465,-0.016523731872439,-0.016894966363907));
res += mul(Get(s2,-dx,-dy), float4x4(-0.171861186623573,0.150614649057388,-0.061067823320627,-0.022521862760186,0.095972999930382,-0.063471704721451,-0.060359634459019,-0.093939565122128,0.039296183735132,0.019261822104454,-0.048350885510445,0.009028586558998,0.041147898882627,0.011350666172802,-0.092422500252724,-0.052123814821243));
res += mul(Get(s2,-dx,0), float4x4(-0.163528785109520,0.023185715079308,0.100277237594128,-0.104973264038563,0.001382477581501,-0.034687176346779,0.090432666242123,-0.161319270730019,-0.141361355781555,0.023748777806759,0.180226370692253,0.013586550951004,0.073025219142437,-0.067757882177830,0.149568036198616,-0.051811173558235));
res += mul(Get(s2,-dx,dy), float4x4(-0.336744844913483,-0.011470933444798,0.034210354089737,-0.020029511302710,-0.144205018877983,0.009551347233355,-0.066070660948753,-0.007766548544168,0.338822275400162,-0.126481622457504,0.120983123779297,-0.027515074238181,-0.079362273216248,-0.072067022323608,0.008613796904683,-0.110675916075706));
res += mul(Get(s2,0,-dy), float4x4(0.078066758811474,0.064649783074856,0.098813302814960,0.052484925836325,-0.329387962818146,0.053213912993670,-0.101931601762772,0.018861949443817,0.019092038273811,0.030491067096591,0.156650558114052,0.034997116774321,-0.216973721981049,0.150758832693100,0.157957479357719,0.153840795159340));
res += mul(Get(s2,0,0), float4x4(0.205976083874702,0.199869483709335,-0.019760390743613,0.126216694712639,-0.289947092533112,0.173709332942963,-0.065715700387955,0.358543455600739,0.198550924658775,0.022261245176196,-0.164013877511024,-0.018712554126978,-0.247454583644867,-0.010232533328235,0.170217320322990,0.354269176721573));
res += mul(Get(s2,0,dy), float4x4(0.036238558590412,0.325341165065765,-0.138115435838699,0.079899683594704,-0.029787428677082,-0.013399361632764,-0.085619464516640,-0.068112842738628,-0.074915930628777,-0.112990625202656,-0.001437923405319,-0.057652454823256,0.009035263210535,-0.034243628382683,-0.232557892799377,0.035692192614079));
res += mul(Get(s2,dx,-dy), float4x4(0.067501619458199,-0.037934180349112,0.013954783789814,-0.044803746044636,0.007297238335013,0.006740399170667,-0.069042071700096,0.136810213327408,-0.021877450868487,0.036949802190065,-0.003133030142635,0.018173269927502,-0.040893223136663,0.019840909168124,0.053835365921259,-0.040752228349447));
res += mul(Get(s2,dx,0), float4x4(0.105719856917858,0.157463863492012,0.045470483601093,0.207309827208519,0.153051599860191,0.141194492578506,-0.128326594829559,0.012080546468496,-0.091860219836235,-0.030423229560256,0.093976020812988,-0.066027991473675,-0.034553710371256,-0.078217737376690,-0.198483780026436,-0.268458276987076));
res += mul(Get(s2,dx,dy), float4x4(-0.041416287422180,-0.052391063421965,-0.007540553342551,0.248718276619911,-0.005969111807644,-0.055409837514162,0.089848242700100,-0.026772178709507,0.024692088365555,-0.180132016539574,-0.139571636915207,-0.065981172025204,-0.048889845609665,0.033135868608952,-0.050842285156250,0.024133915081620));
res += mul(Get(s3,-dx,-dy), float4x4(0.007743946742266,-0.063712634146214,0.059935990720987,-0.141735568642616,-0.012344621121883,-0.020314006134868,0.101419009268284,0.037595275789499,-0.065181516110897,0.020288961008191,0.077810145914555,0.074404485523701,0.081714324653149,-0.092855498194695,-0.088187828660011,-0.068065956234932));
res += mul(Get(s3,-dx,0), float4x4(-0.121299065649509,0.146160423755646,-0.092225246131420,0.098223514854908,0.239347308874130,0.037608843296766,-0.070649243891239,0.141113668680191,-0.099982336163521,0.092713057994843,0.114579178392887,0.042618863284588,0.068773269653320,0.014902830123901,-0.045654248446226,0.095461055636406));
res += mul(Get(s3,-dx,dy), float4x4(0.025394253432751,-0.050775658339262,-0.003922671079636,0.015506272204220,0.065389975905418,0.027000632137060,-0.075127489864826,0.105925530195236,-0.030933845788240,-0.002294578822330,0.060579884797335,0.002266716212034,0.243402317166328,0.172349169850349,-0.060878869146109,0.128767892718315));
res += mul(Get(s3,0,-dy), float4x4(0.099677279591560,0.127733260393143,0.097799889743328,0.089153259992599,0.025641007348895,0.095518328249454,-0.134554550051689,0.086116231977940,-0.034325819462538,-0.246487811207771,0.087981276214123,-0.156777486205101,-0.039330944418907,0.171999469399452,0.008396550081670,0.146975114941597));
res += mul(Get(s3,0,0), float4x4(0.267056584358215,-0.161125198006630,-0.068372912704945,-0.053174447268248,0.143999576568604,-0.049120690673590,-0.049672011286020,0.046921759843826,0.156419798731804,-0.106857590377331,-0.099251240491867,-0.059589218348265,0.036452356725931,-0.181141138076782,-0.175576597452164,-0.127222150564194));
res += mul(Get(s3,0,dy), float4x4(-0.046850405633450,-0.040397234261036,0.165849924087524,0.032090421766043,0.071042485535145,-0.034941405057907,-0.001071368344128,0.066769234836102,-0.053577311336994,0.164513871073723,0.034432183951139,0.090252317488194,-0.099820040166378,0.056838419288397,0.000095870353107,0.056686718016863));
res += mul(Get(s3,dx,-dy), float4x4(0.083620443940163,-0.010512999258935,0.008633273653686,0.273707121610641,0.012427596375346,0.096371158957481,-0.111945785582066,-0.135346308350563,-0.123114094138145,0.036824040114880,0.115142770111561,-0.154992029070854,-0.008748707361519,-0.066550828516483,-0.168602034449577,0.040340226143599));
res += mul(Get(s3,dx,0), float4x4(0.138283222913742,0.072745174169540,-0.052646793425083,0.055300362408161,-0.355823516845703,-0.108523711562157,-0.077158287167549,-0.061154015362263,0.093494266271591,0.220457971096039,0.078237138688564,0.193809747695923,-0.094158701598644,0.065187044441700,-0.214031025767326,0.016265107318759));
res += mul(Get(s3,dx,dy), float4x4(0.167703211307526,-0.061874307692051,-0.127489119768143,-0.143056064844131,-0.030813684687018,-0.011613902635872,-0.067008301615715,-0.054170314222574,0.075481243431568,-0.046646036207676,-0.073902383446693,-0.011980163864791,0.025423357263207,0.012135320343077,0.130509361624718,0.012331388890743));
res += mul(Get(s4,-dx,-dy), float4x4(-0.010822589509189,-0.022489765658975,-0.058564748615026,-0.024903474375606,0.084354504942894,-0.120572663843632,0.022602938115597,0.033280339092016,-0.009113204665482,-0.022271770983934,-0.083246603608131,0.066212140023708,-0.086568534374237,-0.028147211298347,0.005016981624067,-0.051175490021706));
res += mul(Get(s4,-dx,0), float4x4(0.171526402235031,0.091382041573524,0.047735124826431,0.033210955560207,0.044237710535526,-0.070854134857655,0.072984054684639,0.053675156086683,-0.109130494296551,-0.046153813600540,0.361783981323242,-0.033461820334196,-0.045590579509735,-0.038715392351151,0.260732322931290,-0.087569512426853));
res += mul(Get(s4,-dx,dy), float4x4(0.179234832525253,0.067347981035709,-0.000577206024900,0.041854884475470,0.113191880285740,-0.117626428604126,-0.120449788868427,0.190450355410576,-0.205168604850769,-0.065212592482567,0.020579038187861,0.031316332519054,-0.018650926649570,0.011757848784328,0.071362361311913,0.001848571584560));
res += mul(Get(s4,0,-dy), float4x4(-0.067255325615406,0.026690661907196,-0.101845256984234,-0.035432785749435,0.034674961119890,0.043509274721146,-0.029556933790445,-0.031662166118622,0.054605942219496,-0.017360229045153,0.074895747005939,0.025246784090996,-0.102642536163330,-0.013069518841803,0.217718973755836,0.085206411778927));
res += mul(Get(s4,0,0), float4x4(-0.088918447494507,0.143986567854881,-0.225650653243065,0.003933442756534,-0.110258758068085,0.014844631776214,0.202661573886871,0.254193097352982,0.105596736073494,-0.081238351762295,-0.074949175119400,0.150419533252716,0.011261764913797,0.090477265417576,0.226522937417030,0.152969583868980));
res += mul(Get(s4,0,dy), float4x4(-0.138962119817734,-0.294686943292618,-0.072828009724617,0.025193477049470,0.221481442451477,0.047350447624922,0.038335394114256,-0.250425547361374,0.285080403089523,-0.337132185697556,-0.071570143103600,0.081631883978844,0.166524544358253,-0.074703380465508,-0.121472954750061,-0.156051993370056));
res += mul(Get(s4,dx,-dy), float4x4(-0.009468875825405,-0.017689248546958,0.055240895599127,-0.005044214893132,0.003768391907215,0.009300235658884,-0.049379073083401,-0.003586713690311,0.059580575674772,0.022342087700963,0.023031871765852,0.105760186910629,-0.025948561728001,-0.032771851867437,0.137470439076424,-0.043087989091873));
res += mul(Get(s4,dx,0), float4x4(0.077662460505962,-0.044905118644238,0.133397549390793,0.195754453539848,-0.005165888927877,-0.035720914602280,0.013657256029546,-0.158764854073524,-0.161854356527328,0.068823896348476,0.055648725479841,-0.036628790199757,-0.030584491789341,-0.001277443021536,0.115774348378181,-0.269716352224350));
res += mul(Get(s4,dx,dy), float4x4(-0.005756984930485,-0.080432914197445,0.051851108670235,0.132491797208786,-0.087172724306583,-0.016586476936936,-0.066021971404552,0.005709047894925,-0.065026916563511,0.015059818513691,0.013719701208174,-0.043316029012203,-0.017064580693841,-0.033729087561369,0.060979735106230,0.013418328016996));
res += mul(Get(s5,-dx,-dy), float4x4(-0.119356960058212,-0.048338226974010,0.201210916042328,0.203609108924866,0.173543587327003,-0.015206047333777,-0.016369841992855,0.141810983419418,0.060255359858274,-0.051676321774721,-0.032202765345573,-0.017638109624386,0.051650512963533,-0.062163427472115,-0.055365227162838,0.058014836162329));
res += mul(Get(s5,-dx,0), float4x4(-0.056688085198402,0.082701802253723,-0.095319755375385,0.156433269381523,0.202354386448860,-0.077832803130150,-0.106801912188530,0.102229602634907,0.090601317584515,0.036513894796371,-0.028274662792683,-0.020244309678674,0.198453024029732,-0.070854365825653,0.012744553387165,0.117535874247551));
res += mul(Get(s5,-dx,dy), float4x4(0.045825008302927,-0.013642136007547,0.065205499529839,-0.019613377749920,0.029027039185166,-0.039328023791313,0.038845993578434,0.145967125892639,-0.143261522054672,0.067359216511250,-0.167948931455612,0.070233494043350,0.049945209175348,0.106377765536308,0.024996086955070,0.081150606274605));
res += mul(Get(s5,0,-dy), float4x4(0.145545303821564,0.111773066222668,-0.175689250230789,-0.158233255147934,0.095281518995762,-0.059029798954725,-0.148268774151802,-0.070543460547924,-0.028724908828735,-0.138088166713715,0.175113722681999,-0.064565315842628,0.055804517120123,0.014391905628145,0.066682413220406,-0.148091986775398));
res += mul(Get(s5,0,0), float4x4(-0.056421838700771,-0.038558866828680,-0.137398481369019,0.074206210672855,0.142645508050919,-0.079778209328651,-0.051055334508419,-0.072932101786137,-0.103604093194008,-0.078712798655033,-0.429519951343536,0.142648443579674,0.020204398781061,0.132549762725830,-0.194150254130363,0.003564298618585));
res += mul(Get(s5,0,dy), float4x4(-0.122581288218498,0.128269448876381,0.174793735146523,-0.076273374259472,0.062910310924053,-0.165365785360336,-0.034281831234694,0.087354846298695,-0.101517193019390,0.015219820663333,0.091425612568855,0.046157691627741,-0.127644285559654,-0.106810145080090,0.044768001884222,-0.095892146229744));
res += mul(Get(s5,dx,-dy), float4x4(0.088032856583595,0.171019405126572,-0.186858728528023,0.093705847859383,-0.146759018301964,-0.041100226342678,0.108311831951141,-0.062649644911289,-0.135623708367348,0.207101255655289,-0.022040318697691,-0.075802817940712,-0.101730935275555,0.094445414841175,-0.091249980032444,-0.087248846888542));
res += mul(Get(s5,dx,0), float4x4(0.089948929846287,-0.135281354188919,0.119459427893162,-0.119061775505543,0.408240675926208,-0.111167594790459,-0.082175917923450,-0.036682330071926,-0.403461039066315,-0.026311753317714,0.169227212667465,-0.217248737812042,-0.239401698112488,0.046728119254112,-0.164785265922546,-0.475950777530670));
res += mul(Get(s5,dx,dy), float4x4(0.027051281183958,-0.088130481541157,-0.013330474495888,-0.018440959975123,-0.216917902231216,0.066486895084381,0.066038005053997,0.168564617633820,-0.061830174177885,-0.048787001520395,-0.068299137055874,-0.109044648706913,-0.256179690361023,-0.149668097496033,0.046493176370859,-0.120941884815693));
res = max(float4(0, 0, 0, 0), res) + float4(0.029210874810815,-0.107865504920483,-0.016811996698380,-0.098847433924675) * min(float4(0, 0, 0, 0), res);
return res;
}