sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
sampler s4 : register(s4);
sampler s5 : register(s5);
sampler s6 : register(s6);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.114492498338223,-0.049217622727156,0.010055188089609,-0.073384955525398);
res += mul(Get(s0,-dx,-dy), float4x4(-0.057478692382574,0.219167917966843,0.032660052180290,-0.097699731588364,-0.000749530270696,0.088240645825863,0.090330287814140,0.116371132433414,0.244515866041183,0.111596979200840,-0.008508606813848,0.091603361070156,-0.013037040829659,0.056451246142387,-0.120340012013912,0.002930729882792));
res += mul(Get(s0,-dx,0), float4x4(-0.247689232230186,0.083494715392590,0.002619106322527,-0.036464083939791,0.206410676240921,0.130735382437706,-0.046452812850475,-0.005208882968873,0.022365489974618,0.036315426230431,-0.001679891720414,-0.103336811065674,0.012579690665007,-0.059564005583525,0.026669103652239,-0.041872162371874));
res += mul(Get(s0,-dx,dy), float4x4(0.045982282608747,0.142749398946762,0.051232028752565,-0.037463810294867,-0.009414473548532,0.149134397506714,-0.005270150490105,0.037844851613045,-0.019805613905191,0.084907606244087,0.038583114743233,-0.095752455294132,0.066195614635944,0.032834637910128,0.046069975942373,0.074953779578209));
res += mul(Get(s0,0,-dy), float4x4(-0.151751622557640,0.372123748064041,-0.105930857360363,-0.022352136671543,0.073652200400829,0.056280370801687,-0.060575813055038,0.088594265282154,0.490819334983826,-0.529479324817657,-0.108336620032787,0.084304757416248,-0.130694046616554,0.109333597123623,-0.104894489049911,0.162025704979897));
res += mul(Get(s0,0,0), float4x4(0.093022204935551,0.172097682952881,0.080481350421906,0.051743436604738,-0.044824831187725,-0.016757287085056,-0.062215495854616,-0.032764762639999,0.058340802788734,0.202093645930290,0.085709847509861,0.005056541413069,0.272358715534210,-0.091028571128845,0.048605673015118,0.031412702053785));
res += mul(Get(s0,0,dy), float4x4(0.099763765931129,-0.000582335516810,0.050397463142872,-0.007187889888883,-0.052029382437468,0.098313771188259,0.007200235966593,-0.031736228615046,-0.118859894573689,0.196242660284042,0.091289781033993,0.010864622890949,-0.060608990490437,-0.103474102914333,-0.057798024266958,0.023588737472892));
res += mul(Get(s0,dx,-dy), float4x4(0.012066473253071,-0.122716739773750,-0.130832538008690,0.199738964438438,0.119387447834015,0.084041565656662,-0.007721546106040,0.138570040464401,0.072996698319912,0.176074698567390,-0.038202442228794,0.083548232913017,-0.014296667650342,-0.085933744907379,0.001446953509003,0.129722237586975));
res += mul(Get(s0,dx,0), float4x4(-0.047667391598225,-0.408899635076523,-0.237122744321823,-0.023862116038799,0.041602190583944,0.126474753022194,0.063858993351460,0.088961213827133,0.086672626435757,0.061473064124584,0.057685397565365,-0.035028003156185,0.203686684370041,0.062894679605961,0.248213887214661,0.066015399992466));
res += mul(Get(s0,dx,dy), float4x4(0.111938707530499,-0.106193579733372,-0.034598466008902,-0.035861991345882,-0.009439298883080,0.164737164974213,0.064300239086151,0.044529680162668,0.003541182493791,0.169387996196747,0.013787671923637,0.040052875876427,-0.085358358919621,-0.070816032588482,0.092979550361633,0.072781302034855));
res += mul(Get(s1,-dx,-dy), float4x4(0.067032575607300,-0.194750830531120,-0.021357828751206,0.059008423238993,-0.019359679892659,0.046520955860615,-0.020187541842461,0.185923650860786,-0.079375915229321,0.096262447535992,-0.175810843706131,0.158459693193436,0.010192806832492,-0.006694466806948,0.012826252728701,-0.055738620460033));
res += mul(Get(s1,-dx,0), float4x4(0.028035940602422,0.024608461186290,-0.071361340582371,-0.027401592582464,0.099310927093029,0.031237607821822,0.205516666173935,-0.095052234828472,-0.052690360695124,-0.073160581290722,0.050122983753681,-0.046263050287962,0.029815724119544,0.007913246750832,0.016922254115343,-0.045605178922415));
res += mul(Get(s1,-dx,dy), float4x4(0.103148445487022,0.054426003247499,-0.048898395150900,-0.176346659660339,-0.003725155489519,-0.251224726438522,0.056341011077166,-0.058061938732862,0.036394227296114,0.052561063319445,0.074621371924877,0.079540207982063,0.037034958600998,0.024007625877857,0.004763539414853,0.010235561989248));
res += mul(Get(s1,0,-dy), float4x4(0.117637455463409,-0.202128648757935,0.013893811032176,0.159626275300980,-0.143485859036446,-0.092114105820656,-0.076458849012852,0.006867413409054,-0.041124254465103,0.007737814448774,0.106794431805611,0.152750372886658,-0.026580300182104,-0.015339269302785,0.010815738700330,0.031267054378986));
res += mul(Get(s1,0,0), float4x4(-0.086499385535717,-0.093411080539227,-0.052898932248354,0.116501428186893,0.243508622050285,-0.100306622684002,0.058073468506336,0.009472683072090,0.121520027518272,-0.208917960524559,0.071024365723133,-0.029863251373172,0.042669553309679,-0.002630524337292,0.018087301403284,-0.031686834990978));
res += mul(Get(s1,0,dy), float4x4(0.134454846382141,-0.177345454692841,-0.154618158936501,-0.052560251206160,-0.079417727887630,-0.246279180049896,0.045266993343830,0.007218966726214,0.042505357414484,-0.037518095225096,0.144829392433167,-0.102118536829948,0.002854056190699,0.019625863060355,-0.036746703088284,0.017417743802071));
res += mul(Get(s1,dx,-dy), float4x4(0.077661082148552,-0.056665036827326,-0.051879242062569,-0.018613727763295,-0.049438912421465,0.055590867996216,-0.149727627635002,0.300296783447266,0.064982131123543,-0.064176335930824,-0.202362999320030,0.404496520757675,-0.003920658025891,0.002108105225489,0.003195330267772,-0.010152036324143));
res += mul(Get(s1,dx,0), float4x4(0.057542666792870,0.082617670297623,0.002628923859447,0.042880624532700,0.064225122332573,-0.196217730641365,0.044352415949106,0.081883557140827,0.085988245904446,-0.235832184553146,-0.063290275633335,0.015548665076494,0.043033652007580,-0.055520262569189,0.024876950308681,0.015210364945233));
res += mul(Get(s1,dx,dy), float4x4(-0.028083639219403,-0.099412433803082,-0.032260574400425,-0.052022822201252,0.100546166300774,-0.262906044721603,-0.107695683836937,0.052786525338888,0.021894874051213,-0.054156739264727,-0.104385159909725,0.031960241496563,0.032239507883787,0.023565683513880,-0.039925687015057,0.000032250267395));
res += mul(Get(s2,-dx,-dy), float4x4(-0.063513673841953,0.215199515223503,0.026935391128063,0.073132589459419,0.106652066111565,0.071625009179115,-0.064882464706898,-0.049846637994051,0.023454355075955,-0.090289764106274,0.050286307930946,-0.051812835037708,-0.226224154233932,-0.014339824207127,0.004603227134794,0.120609663426876));
res += mul(Get(s2,-dx,0), float4x4(-0.057470485568047,0.059793457388878,0.025604067370296,-0.109561823308468,-0.084870807826519,0.149220362305641,-0.138603985309601,-0.022091753780842,-0.005598530173302,-0.076126985251904,-0.100455850362778,-0.015292181633413,-0.095253139734268,0.065663687884808,-0.062564730644226,0.057655800133944));
res += mul(Get(s2,-dx,dy), float4x4(-0.109545193612576,-0.161108031868935,0.022902186959982,-0.080109633505344,0.008603692054749,-0.063458427786827,-0.038899675011635,-0.072365917265415,-0.169906377792358,0.202486202120781,-0.062944836914539,-0.135508820414543,0.002396157477051,0.164673343300819,-0.004928897134960,0.002020825864747));
res += mul(Get(s2,0,-dy), float4x4(-0.035907134413719,0.010216287337244,0.036320459097624,-0.008663903921843,-0.125631079077721,0.074198640882969,-0.121334202587605,-0.060230154544115,0.023949073627591,0.021088233217597,-0.155184671282768,0.111914776265621,-0.223836779594421,-0.103178508579731,-0.007342814933509,0.042128711938858));
res += mul(Get(s2,0,0), float4x4(0.021645486354828,0.261522799730301,0.131546199321747,-0.132694557309151,-0.157669946551323,-0.038969732820988,-0.211352735757828,-0.153691366314888,0.089228861033916,-0.035427816212177,-0.062602281570435,-0.047777391970158,0.033263262361288,0.360484361648560,0.016615623608232,0.015030156821012));
res += mul(Get(s2,0,dy), float4x4(-0.043722655624151,-0.052893504500389,0.128268256783485,-0.206926628947258,0.003869893494993,-0.078282169997692,-0.139636039733887,0.061081700026989,0.153822988271713,-0.086331680417061,0.098796434700489,-0.043902326375246,-0.051597382873297,0.151827216148376,0.016636323183775,-0.027689203619957));
res += mul(Get(s2,dx,-dy), float4x4(-0.080392420291901,0.008777110837400,-0.032950010150671,-0.006925905589014,-0.140366494655609,-0.086286358535290,0.003966190386564,-0.025015003979206,0.007367423269898,-0.017744788900018,-0.142311125993729,0.097765959799290,-0.079957716166973,0.063604660332203,0.063460841774940,0.168513864278793));
res += mul(Get(s2,dx,0), float4x4(0.085694871842861,0.093781471252441,-0.044307474046946,0.213051661849022,-0.070675335824490,0.084383949637413,-0.122524522244930,-0.207187950611115,-0.085247822105885,0.067203499376774,0.182662397623062,-0.150756850838661,-0.206924021244049,0.382567584514618,0.100280255079269,0.137717679142952));
res += mul(Get(s2,dx,dy), float4x4(-0.079324565827847,-0.131379291415215,-0.194723784923553,0.066487953066826,0.133087143301964,-0.153642892837524,-0.077375382184982,-0.159804299473763,0.085673794150352,-0.019768381491303,0.010942406021059,-0.130473479628563,-0.005328392144293,0.296069502830505,-0.027420472353697,0.103698194026947));
res += mul(Get(s3,-dx,-dy), float4x4(0.118761487305164,-0.061750166118145,-0.075407549738884,0.089948967099190,0.082008026540279,-0.064788527786732,-0.040423560887575,0.008693497627974,0.103042900562286,0.179911494255066,0.055086366832256,0.001908940728754,0.011739538051188,0.051330648362637,0.003145126858726,0.093498423695564));
res += mul(Get(s3,-dx,0), float4x4(-0.055090628564358,0.096502035856247,0.137482494115829,-0.080315090715885,-0.081316828727722,-0.046531889587641,-0.108163043856621,-0.081097923219204,0.034381229430437,0.021588727831841,0.050970755517483,-0.051013685762882,-0.099576808512211,-0.157322019338608,0.054184056818485,0.017440287396312));
res += mul(Get(s3,-dx,dy), float4x4(0.028000634163618,-0.027235664427280,0.023184956982732,0.016169214621186,-0.062983796000481,-0.062204699963331,-0.061670068651438,0.046243257820606,0.016771873459220,-0.077426202595234,0.037587799131870,-0.101253256201744,-0.096648916602135,0.027275878936052,-0.025060502812266,0.086274437606335));
res += mul(Get(s3,0,-dy), float4x4(-0.106331989169121,-0.213560312986374,-0.047201689332724,0.013313778676093,0.205665856599808,-0.328825533390045,-0.029133476316929,-0.071824558079243,0.095586523413658,0.144214496016502,-0.048715848475695,0.168941050767899,0.038212440907955,-0.000380646524718,-0.044431488960981,0.126425340771675));
res += mul(Get(s3,0,0), float4x4(-0.009691610932350,-0.073302246630192,-0.022887602448463,0.108029082417488,-0.025534013286233,-0.062256988137960,-0.026387721300125,0.001922736293636,-0.088642701506615,-0.061291065067053,-0.104431755840778,0.082660757005215,-0.291071355342865,0.073271110653877,0.035269141197205,0.057567536830902));
res += mul(Get(s3,0,dy), float4x4(-0.025995580479503,-0.037015464156866,0.040474779903889,0.074135787785053,-0.160335466265678,0.014493373222649,-0.103942349553108,0.052793003618717,-0.010777117684484,0.132164344191551,-0.028979718685150,-0.020334847271442,0.021604178473353,-0.380369096994400,-0.024809597060084,0.009011418558657));
res += mul(Get(s3,dx,-dy), float4x4(0.076012715697289,-0.171837657690048,0.060655541718006,-0.025690566748381,-0.110952690243721,0.148518800735474,0.130663827061653,-0.027418872341514,0.003125322749838,0.058777026832104,-0.139817774295807,-0.003338512266055,-0.017793988808990,0.109838441014290,-0.069790951907635,0.098314881324768));
res += mul(Get(s3,dx,0), float4x4(-0.049306422472000,-0.130200266838074,0.135965362191200,0.059873804450035,0.023035656660795,0.069110468029976,0.085568197071552,-0.120009675621986,-0.051121719181538,-0.031636402010918,-0.148408934473991,-0.011914239265025,0.020934732630849,-0.205678015947342,-0.031881205737591,-0.014738035388291));
res += mul(Get(s3,dx,dy), float4x4(0.055362291634083,0.008930278010666,-0.029580013826489,0.040996517986059,-0.016613593325019,0.169361755251884,-0.030769443139434,0.039831973612309,-0.012209614738822,-0.056214641779661,-0.041636593639851,0.005841165315360,-0.100049771368504,-0.289015650749207,-0.098798505961895,0.034089811146259));
res += mul(Get(s4,-dx,-dy), float4x4(-0.063406400382519,0.060272790491581,0.068258941173553,0.036940127611160,0.038735214620829,-0.013352215290070,-0.025087827816606,-0.042872689664364,-0.009811894968152,0.033416386693716,0.093060538172722,-0.061307638883591,0.069748230278492,0.034635778516531,0.073632664978504,-0.090717963874340));
res += mul(Get(s4,-dx,0), float4x4(0.101912133395672,0.064252845942974,0.050173781812191,0.017787115648389,0.025030042976141,0.093048013746738,0.000071189409937,-0.075204156339169,-0.048719070851803,0.096495836973190,-0.034995365887880,0.158535525202751,-0.113812610507011,-0.254373639822006,-0.129981189966202,-0.032844085246325));
res += mul(Get(s4,-dx,dy), float4x4(0.102674096822739,0.053011655807495,0.014632662758231,0.030672520399094,-0.003166133072227,0.015558570623398,-0.094663769006729,-0.051940910518169,0.025277806445956,-0.012677035294473,0.076562322676182,-0.003744725836441,-0.016259558498859,-0.165806323289871,-0.212779149413109,-0.170864239335060));
res += mul(Get(s4,0,-dy), float4x4(0.050971228629351,-0.062984302639961,0.176329538226128,0.044463023543358,0.209935069084167,-0.107610121369362,-0.081681825220585,-0.076686419546604,-0.089753851294518,-0.175345256924629,-0.002923054620624,0.031027941033244,0.051173958927393,0.078824661672115,0.269945353269577,-0.145538434386253));
res += mul(Get(s4,0,0), float4x4(-0.060423560440540,-0.177751734852791,-0.019124854356050,-0.064663529396057,0.261804938316345,-0.188506394624710,-0.199686050415039,-0.053092703223228,-0.078468859195709,-0.159857705235481,-0.043463729321957,-0.107403203845024,-0.203674480319023,0.043690465390682,0.031737189739943,-0.010653659701347));
res += mul(Get(s4,0,dy), float4x4(-0.014454877935350,-0.050128195434809,-0.087193481624126,0.071555212140083,0.047576814889908,-0.056618895381689,-0.134264379739761,-0.077945269644260,-0.012089948169887,-0.113876715302467,0.079668469727039,-0.018284039571881,0.096117518842220,0.000062346247432,-0.132420063018799,-0.064182370901108));
res += mul(Get(s4,dx,-dy), float4x4(0.191505849361420,-0.070569999516010,0.069646932184696,0.122772835195065,0.057490684092045,0.030331064015627,0.101185016334057,-0.033837269991636,-0.052742980420589,0.080561034381390,-0.119890369474888,0.070250347256660,-0.068658225238323,0.059822216629982,0.114076450467110,-0.307273417711258));
res += mul(Get(s4,dx,0), float4x4(-0.096897184848785,0.027371473610401,-0.090076707303524,0.154467016458511,-0.156003326177597,0.114012770354748,0.205363228917122,-0.078718014061451,0.004671634640545,0.082024008035660,-0.244087606668472,0.083617225289345,0.047614157199860,0.110142007470131,0.086725667119026,0.052286487072706));
res += mul(Get(s4,dx,dy), float4x4(-0.001867811544798,-0.042162083089352,0.017563872039318,-0.072264350950718,0.001951216952875,-0.087795503437519,0.142795532941818,-0.162601083517075,0.123200461268425,-0.077024757862091,-0.195060625672340,0.040676366537809,-0.004563821945339,-0.024853026494384,0.117125913500786,-0.028394607827067));
res += mul(Get(s5,-dx,-dy), float4x4(-0.131732434034348,-0.056532796472311,0.016463467851281,-0.062552295625210,0.076871462166309,-0.053732722997665,-0.059087261557579,-0.098202787339687,0.074728801846504,-0.099490977823734,-0.116094887256622,-0.094880960881710,0.018560789525509,0.129545375704765,0.085403710603714,-0.005938529502600));
res += mul(Get(s5,-dx,0), float4x4(-0.016354970633984,-0.043684728443623,-0.041239723563194,-0.010743662714958,-0.120651915669441,0.142141014337540,0.088527947664261,-0.081005372107029,0.034126225858927,0.002001714659855,-0.030276335775852,-0.256688117980957,-0.097392342984676,0.172092735767365,0.198754370212555,-0.108080245554447));
res += mul(Get(s5,-dx,dy), float4x4(-0.016553534194827,-0.050684656947851,-0.003685917938128,0.051430016756058,-0.099704571068287,0.063548497855663,0.095809154212475,0.073739618062973,0.025042627006769,-0.012158416211605,0.038079399615526,-0.058290950953960,-0.108378559350967,0.201515227556229,-0.014788979664445,-0.183396846055984));
res += mul(Get(s5,0,-dy), float4x4(-0.098420903086662,0.031885158270597,0.017176646739244,-0.024731738492846,-0.162553444504738,-0.100909143686295,-0.007651123683900,0.253690659999847,-0.009230280295014,-0.058325432240963,0.130810886621475,-0.123454309999943,-0.096256114542484,0.209572389721870,0.142700418829918,0.208511039614677));
res += mul(Get(s5,0,0), float4x4(0.021965038031340,-0.135779529809952,0.028220351785421,0.096511937677860,-0.163967877626419,0.178302779793739,0.085089638829231,0.129577383399010,-0.170321270823479,-0.028639186173677,0.109111957252026,0.021012818440795,-0.049926716834307,0.173032253980637,0.024615162983537,0.170720532536507));
res += mul(Get(s5,0,dy), float4x4(-0.028948254883289,0.003017760347575,-0.015208072029054,0.005844137165695,-0.022643273696303,-0.148234203457832,0.143694311380386,-0.095290064811707,-0.060830134898424,0.085870526731014,-0.031114766374230,-0.091597273945808,-0.031179903075099,0.002529417397454,-0.075061365962029,0.049269564449787));
res += mul(Get(s5,dx,-dy), float4x4(-0.016415661200881,-0.098208993673325,0.100791811943054,-0.060105692595243,0.023330042138696,-0.033773966133595,0.059575963765383,-0.123189680278301,0.129154592752457,-0.053059000521898,-0.095385484397411,-0.166403412818909,-0.013168239034712,0.099707290530205,0.061557613313198,0.208453610539436));
res += mul(Get(s5,dx,0), float4x4(-0.014899026602507,-0.179542690515518,0.099316522479057,0.046400312334299,-0.278329104185104,0.401208937168121,0.215076550841331,-0.078887589275837,-0.041771009564400,-0.088376410305500,-0.114270910620689,0.174506902694702,-0.014840637333691,0.013215896673501,0.069510780274868,0.128189235925674));
res += mul(Get(s5,dx,dy), float4x4(-0.036985632032156,-0.124400168657303,0.030646072700620,-0.034669913351536,-0.127847328782082,0.025305133312941,-0.020273255184293,0.040868923068047,0.090515695512295,0.141960948705673,0.113531388342381,-0.083793587982655,0.000809805293102,0.064204826951027,0.019694158807397,-0.058831688016653));
res += tex2D(s6, tex);
res = max(float4(0, 0, 0, 0), res) + float4(-0.007446494419128,0.077991701662540,0.735269427299500,0.234826669096947) * min(float4(0, 0, 0, 0), res);
return res;
}
