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
float4 res = float4(0.110874064266682,0.236069887876511,0.004578656982630,-0.077826283872128);
res += mul(Get(s0,-dx,-dy), float4x4(0.019744833931327,0.066281020641327,0.086054101586342,0.033360254019499,-0.282200664281845,0.022167950868607,0.030773522332311,-0.025153400376439,-0.074104145169258,-0.206041067838669,-0.009035314433277,0.037375856190920,0.020273482427001,0.046227797865868,-0.144630804657936,-0.016566906124353));
res += mul(Get(s0,-dx,0), float4x4(0.013432369567454,-0.048856914043427,0.143173605203629,0.041590884327888,-0.063507691025734,0.092045135796070,0.035898961126804,-0.127444848418236,-0.029060553759336,-0.005422606132925,0.064363583922386,0.131769806146622,-0.084849648177624,-0.085065029561520,-0.184097424149513,-0.165439561009407));
res += mul(Get(s0,-dx,dy), float4x4(-0.044537603855133,0.130490958690643,0.084359772503376,-0.089374125003815,-0.345974117517471,-0.013412944972515,0.001035976805724,-0.061319582164288,-0.107173673808575,-0.116306021809578,0.160577520728111,0.128541126847267,-0.051646832376719,-0.048289254307747,-0.031785279512405,-0.011060853488743));
res += mul(Get(s0,0,-dy), float4x4(0.065392084419727,0.112061664462090,-0.033796831965446,-0.047318749129772,-0.126828625798225,0.048491422086954,-0.100178025662899,0.014122951775789,-0.087008878588676,-0.145463690161705,0.067719943821430,0.132052525877953,0.116527445614338,-0.032169543206692,-0.143965825438499,0.021413708105683));
res += mul(Get(s0,0,0), float4x4(-0.158304080367088,-0.207260593771935,-0.016736574470997,-0.108858220279217,-0.095177024602890,-0.102596752345562,0.078548118472099,0.074155032634735,0.003499178448692,-0.016288092359900,-0.037053525447845,0.073763765394688,0.014051092788577,-0.007872474379838,-0.061729051172733,0.004928585607558));
res += mul(Get(s0,0,dy), float4x4(-0.088568434119225,-0.173292890191078,-0.087368786334991,-0.007891927845776,-0.105113618075848,-0.018697503954172,0.045160423964262,0.050257544964552,-0.227675303816795,-0.184161305427551,-0.001469630282372,0.032156378030777,-0.030722642317414,-0.083573617041111,-0.032003674656153,-0.017602296546102));
res += mul(Get(s0,dx,-dy), float4x4(0.317890077829361,0.085851572453976,0.059374831616879,0.008622483350337,-0.169929504394531,0.046613894402981,0.032112322747707,-0.002168210688978,0.001307589234784,-0.119990505278111,0.101439118385315,-0.004754753783345,0.051095038652420,-0.069150187075138,0.032930579036474,-0.016154550015926));
res += mul(Get(s0,dx,0), float4x4(-0.172593280673027,0.089596614241600,-0.110333412885666,0.101611427962780,-0.114758402109146,-0.037422649562359,0.082749083638191,-0.025037568062544,0.062387533485889,0.061460703611374,0.128204777836800,-0.009834210388362,-0.104036651551723,-0.016114309430122,0.078624553978443,-0.055463541299105));
res += mul(Get(s0,dx,dy), float4x4(0.006722258869559,-0.032597541809082,0.138229817152023,-0.019098803400993,-0.251231253147125,0.027510458603501,-0.006306905299425,-0.022415651008487,0.080759055912495,-0.054313801229000,0.088036917150021,0.059542398899794,-0.039877831935883,-0.031041551381350,0.118514738976955,-0.054075915366411));
res += mul(Get(s1,-dx,-dy), float4x4(0.046444740146399,0.046379264444113,-0.017662152647972,-0.037599060684443,-0.126013278961182,0.029714949429035,0.116268970072269,-0.089621871709824,0.040817636996508,-0.044813808053732,0.052022293210030,-0.012181426398456,0.313465148210526,-0.058145277202129,0.079218104481697,-0.110655367374420));
res += mul(Get(s1,-dx,0), float4x4(0.141282066702843,-0.000044420081394,0.033804096281528,-0.082904577255249,-0.076391547918320,-0.062679380178452,-0.090102538466454,0.198995128273964,0.113779306411743,0.299932509660721,0.060865618288517,0.194307014346123,-0.417657136917114,-0.036397993564606,0.025948904454708,-0.117978565394878));
res += mul(Get(s1,-dx,dy), float4x4(0.129893481731415,-0.028364004567266,0.261474192142487,0.010554718784988,-0.152870982885361,-0.045299537479877,-0.114694289863110,-0.110958822071552,-0.049286875873804,0.067297659814358,0.016279751434922,0.021084720268846,0.244444206357002,0.146895498037338,-0.042321272194386,-0.046273641288280));
res += mul(Get(s1,0,-dy), float4x4(0.013847745954990,0.090357936918736,-0.098567657172680,-0.069643728435040,-0.027212422341108,-0.004476036410779,-0.139805808663368,0.024073757231236,0.048141986131668,0.009920658543706,-0.004068174399436,0.116752631962299,0.068268820643425,0.133848622441292,0.082004725933075,-0.105927295982838));
res += mul(Get(s1,0,0), float4x4(0.062462385743856,0.122607052326202,0.034788426011801,0.150108233094215,-0.095494709908962,-0.220622718334198,-0.114277005195618,0.264243543148041,0.146223753690720,-0.245805487036705,0.109501682221889,-0.286028951406479,0.008761810138822,0.004479925148189,0.046140369027853,0.068314224481583));
res += mul(Get(s1,0,dy), float4x4(0.118301242589951,-0.078988276422024,-0.052097205072641,0.006482980214059,0.108351409435272,0.009251146577299,-0.077009670436382,-0.142717257142067,0.046025805175304,0.056753251701593,-0.182689800858498,-0.071699179708958,0.095993705093861,0.151493847370148,0.144401714205742,0.006735183764249));
res += mul(Get(s1,dx,-dy), float4x4(0.138585343956947,0.128542318940163,0.061634343117476,-0.089932158589363,-0.105060905218124,-0.070006661117077,-0.013170673511922,0.087684147059917,0.090091891586781,-0.090077564120293,0.026420308277011,-0.008855884894729,-0.182244643568993,-0.087459020316601,-0.090332210063934,0.070841163396835));
res += mul(Get(s1,dx,0), float4x4(0.174464926123619,0.272007048130035,-0.044324345886707,-0.065546706318855,-0.014624406583607,-0.179237321019173,-0.033976059406996,0.030014907941222,0.040838997811079,-0.105319440364838,-0.025292852893472,-0.061426285654306,0.226940825581551,0.001550107030198,-0.022779572755098,0.060031782835722));
res += mul(Get(s1,dx,dy), float4x4(0.030882142484188,-0.032230902463198,0.122157208621502,-0.054102569818497,0.123869791626930,-0.097433470189571,0.059130277484655,-0.008119903504848,-0.189214333891869,0.019055174663663,0.038247000426054,-0.008196777664125,-0.054772097617388,0.062786221504211,0.038630004972219,-0.036552712321281));
res += mul(Get(s2,-dx,-dy), float4x4(-0.135219141840935,-0.050376776605844,-0.042274560779333,-0.056725874543190,0.066744752228260,-0.023758390918374,0.023282194510102,-0.019606526941061,0.109489217400551,0.109838090837002,-0.002848061034456,-0.013969723135233,-0.065029799938202,0.044013675302267,0.068419843912125,-0.282758653163910));
res += mul(Get(s2,-dx,0), float4x4(0.035496950149536,0.200159087777138,0.038431938737631,-0.098133079707623,0.097544014453888,-0.097174748778343,-0.024798071011901,-0.036265376955271,0.061387222260237,0.041907597333193,0.025571117177606,0.002992397639900,0.000737756839953,0.120153531432152,0.229582652449608,0.157398089766502));
res += mul(Get(s2,-dx,dy), float4x4(-0.171327009797096,0.018233690410852,0.009089609608054,0.037613712251186,0.018466548994184,0.090141691267490,0.089516915380955,-0.040330473333597,0.106664471328259,0.041994072496891,0.152388229966164,-0.076968722045422,-0.152400210499763,0.031313523650169,0.064590454101563,-0.074829652905464));
res += mul(Get(s2,0,-dy), float4x4(-0.091638676822186,0.035778865218163,-0.334009170532227,0.005008982494473,-0.137192949652672,0.015406728722155,-0.153861537575722,0.150781914591789,0.050021357834339,-0.039329361170530,-0.090041100978851,0.087588489055634,-0.072780780494213,-0.020576072856784,0.011829227209091,0.003489310620353));
res += mul(Get(s2,0,0), float4x4(0.067509464919567,0.117664761841297,0.032304849475622,-0.180089443922043,0.002724204212427,0.133268997073174,0.041898008435965,0.008195516653359,-0.058623295277357,-0.108634918928146,-0.024017421528697,-0.274287521839142,0.007291954010725,-0.092533968389034,0.107449010014534,0.159499332308769));
res += mul(Get(s2,0,dy), float4x4(-0.150444164872169,0.045539796352386,0.023608788847923,0.029278131201863,-0.076296262443066,-0.096140034496784,0.007828924804926,-0.069187939167023,0.164842203259468,-0.118630751967430,-0.076379470527172,-0.033888645470142,0.059707563370466,0.002368146553636,-0.041060224175453,-0.040930662304163));
res += mul(Get(s2,dx,-dy), float4x4(-0.230924829840660,0.076939299702644,-0.032641768455505,0.008863616734743,0.039952948689461,-0.167025163769722,0.088945396244526,-0.062406774610281,0.074385419487953,-0.079253174364567,0.015294140204787,0.010717546567321,0.017360178753734,0.027333447709680,-0.034717820584774,-0.039433281868696));
res += mul(Get(s2,dx,0), float4x4(0.105102747678757,-0.053856976330280,-0.074334397912025,0.014226347208023,0.122880510985851,-0.025624301284552,-0.167076408863068,0.005826833657920,-0.153265565633774,0.013010538183153,-0.112387277185917,-0.039980798959732,-0.058688405901194,0.037643056362867,-0.103078491985798,0.056805964559317));
res += mul(Get(s2,dx,dy), float4x4(-0.182735875248909,-0.025760011747479,-0.024063576012850,-0.048938363790512,0.134110510349274,-0.098665170371532,0.132436960935593,0.043306868523359,0.032652296125889,-0.061816073954105,-0.164860799908638,-0.049441833049059,0.130648776888847,0.030822243541479,0.014548404142261,-0.017770402133465));
res += mul(Get(s3,-dx,-dy), float4x4(0.005397072993219,0.009428668767214,-0.055036772042513,-0.036629792302847,0.063058324158192,0.019456846639514,-0.045979607850313,0.004471499007195,0.038151822984219,0.053127191960812,0.110640704631805,-0.042603474110365,-0.021830394864082,0.124684900045395,-0.002108518267050,-0.069505199790001));
res += mul(Get(s3,-dx,0), float4x4(0.000990309054032,-0.031467840075493,0.002467134734616,-0.130885571241379,-0.078201197087765,-0.027610346674919,-0.015314384363592,-0.002409268636256,-0.083953231573105,-0.020952159538865,0.001487909816206,0.042876262217760,-0.052768271416426,-0.120237812399864,0.041050441563129,-0.050396405160427));
res += mul(Get(s3,-dx,dy), float4x4(-0.008841211907566,0.004790409933776,0.119989901781082,0.033568311482668,-0.008886243216693,0.038882292807102,0.038924664258957,0.039455212652683,-0.087695352733135,-0.085866920650005,-0.046855565160513,0.000386260275263,0.214073151350021,-0.071122467517853,0.026493564248085,0.110752396285534));
res += mul(Get(s3,0,-dy), float4x4(0.125319048762321,0.018709762021899,0.057134117931128,0.041666492819786,-0.072685822844505,0.048014853149652,-0.097305126488209,0.014487000182271,0.135011419653893,0.015889076516032,0.022197732701898,0.020949983969331,0.136358052492142,0.006730355788022,-0.054787024855614,-0.183091431856155));
res += mul(Get(s3,0,0), float4x4(0.073064111173153,0.055388428270817,-0.238086700439453,-0.023176588118076,-0.066946089267731,0.210667029023170,0.016318954527378,0.015657022595406,-0.164640456438065,0.008954681456089,-0.024944907054305,-0.084742486476898,0.021380638703704,-0.017973190173507,0.000772987317760,-0.050768874585629));
res += mul(Get(s3,0,dy), float4x4(-0.126542955636978,-0.103974372148514,0.094493448734283,0.069134727120399,-0.098913319408894,-0.010608799755573,0.094467543065548,-0.010743990540504,-0.140086710453033,0.193520769476891,-0.010133025236428,-0.024491978809237,-0.093858160078526,-0.130380362272263,-0.062574811279774,0.030327452346683));
res += mul(Get(s3,dx,-dy), float4x4(0.020403193309903,-0.067440658807755,-0.059008434414864,0.053408853709698,-0.093045368790627,-0.034151859581470,-0.012105194851756,-0.064024865627289,0.057909250259399,-0.028593305498362,-0.016674932092428,-0.000265417766059,0.143221214413643,0.021613756194711,-0.052214469760656,0.050946440547705));
res += mul(Get(s3,dx,0), float4x4(0.123565055429935,0.028599835932255,0.021549297496676,0.040241751819849,-0.040374428033829,-0.014850844629109,-0.070757560431957,-0.091976411640644,-0.183973997831345,-0.022133473306894,-0.051966067403555,-0.016721457242966,-0.039836291223764,0.054115299135447,0.080449014902115,0.024431452155113));
res += mul(Get(s3,dx,dy), float4x4(-0.187415167689323,-0.011233147233725,0.114585310220718,0.033184442669153,-0.093647807836533,-0.008792685344815,0.085780464112759,0.035193782299757,0.091184832155704,-0.020402815192938,-0.014993180520833,0.022194527089596,-0.245875969529152,-0.122002579271793,-0.022622093558311,-0.030416714027524));
res += mul(Get(s4,-dx,-dy), float4x4(-0.024217572063208,0.067660309374332,-0.006311089731753,0.050398811697960,-0.087614566087723,0.010941291227937,-0.009490002878010,0.061803031712770,0.160510525107384,-0.009108562022448,0.160727068781853,-0.060944654047489,-0.004733907058835,-0.023720717057586,-0.005451650824398,-0.085550434887409));
res += mul(Get(s4,-dx,0), float4x4(-0.133495599031448,0.041517797857523,0.021402841433883,-0.126854836940765,-0.008974000811577,0.064127922058105,0.147102415561676,-0.037936806678772,0.154663130640984,-0.156887859106064,-0.070248566567898,0.158179834485054,-0.017517426982522,-0.186928570270538,0.025230156257749,0.023848474025726));
res += mul(Get(s4,-dx,dy), float4x4(-0.044667907059193,-0.113005384802818,0.010435163043439,0.035934124141932,-0.034787971526384,-0.062525361776352,-0.001770719187334,0.014576478861272,0.220986112952232,-0.021908190101385,0.026631098240614,-0.024828035384417,-0.076128341257572,-0.140381380915642,0.031048538163304,0.054775651544333));
res += mul(Get(s4,0,-dy), float4x4(0.119098715484142,-0.041920870542526,0.027232674881816,0.052926547825336,-0.257028520107269,0.014922605827451,-0.097386263310909,0.034773092716932,-0.023289404809475,0.008832416497171,0.127424091100693,-0.198941171169281,-0.108668528497219,-0.097075946629047,-0.198024183511734,0.041669115424156));
res += mul(Get(s4,0,0), float4x4(0.114200830459595,0.051907349377871,0.113839209079742,0.123778656125069,-0.110419392585754,0.021925533190370,0.153751462697983,-0.118237808346748,-0.122248448431492,0.302894085645676,-0.073142223060131,0.002022618660703,-0.046703591942787,-0.327991634607315,-0.108938947319984,0.067198082804680));
res += mul(Get(s4,0,dy), float4x4(0.218136757612228,-0.112945526838303,0.068600550293922,0.121456705033779,-0.024845885112882,0.116828285157681,-0.124539300799370,0.026212560012937,-0.010289482772350,-0.092495083808899,-0.092644378542900,0.141169145703316,0.006640674080700,-0.191135242581367,-0.024705359712243,0.027748195454478));
res += mul(Get(s4,dx,-dy), float4x4(0.336040228605270,0.025623558089137,0.002534630475566,0.004621533211321,-0.012041984125972,0.055646356195211,0.175886273384094,-0.043744590133429,0.142985209822655,-0.134848132729530,0.020409906283021,0.098389983177185,-0.090690717101097,-0.096818953752518,-0.161873891949654,0.073841944336891));
res += mul(Get(s4,dx,0), float4x4(-0.011584296822548,-0.042403344064951,0.022267887368798,0.133718743920326,-0.078923016786575,-0.031947288662195,-0.009421301074326,0.004061131738126,-0.031077213585377,0.027802012860775,0.009025842882693,0.076361484825611,0.098283492028713,-0.125958040356636,-0.139713078737259,0.150331214070320));
res += mul(Get(s4,dx,dy), float4x4(0.075745284557343,-0.105065844953060,0.044489841908216,0.086805887520313,0.072357214987278,0.078234203159809,-0.022984920069575,0.104368604719639,-0.084264375269413,0.012022684328258,-0.074097827076912,-0.034388408064842,0.097582444548607,-0.082094095647335,-0.006543506868184,0.034212809056044));
res += mul(Get(s5,-dx,-dy), float4x4(0.033166013658047,0.013685464859009,-0.026296628639102,0.010463107377291,0.220829129219055,0.094154022634029,0.079624414443970,-0.057295709848404,-0.219800725579262,0.071009196341038,-0.155825451016426,0.026963492855430,-0.078662335872650,-0.010380235500634,-0.109549582004547,0.031375601887703));
res += mul(Get(s5,-dx,0), float4x4(0.260572850704193,0.119653910398483,-0.064595870673656,0.149303212761879,-0.014079295098782,0.085321173071861,0.098544143140316,-0.035248577594757,-0.245319128036499,0.204802900552750,-0.046628925949335,-0.049432240426540,0.041425492614508,-0.050908122211695,-0.014589622616768,0.057947166264057));
res += mul(Get(s5,-dx,dy), float4x4(0.304931104183197,-0.062084682285786,0.019446719437838,0.045320618897676,-0.085970751941204,-0.028683735057712,0.092104472219944,-0.063697651028633,-0.006468122359365,0.022181291133165,-0.022973569110036,-0.081283032894135,0.133170396089554,0.031726423650980,-0.048200007528067,0.068670757114887));
res += mul(Get(s5,0,-dy), float4x4(0.005055123940110,0.048401422798634,-0.164676547050476,-0.049760699272156,0.175944089889526,-0.031772252172232,0.230360805988312,-0.110831812024117,0.250876873731613,0.169708907604218,-0.070423141121864,0.062046024948359,-0.028838161379099,-0.065783150494099,-0.462309300899506,-0.087962299585342));
res += mul(Get(s5,0,0), float4x4(0.041600428521633,0.020208409056067,-0.212952420115471,0.139750257134438,0.004638186190277,-0.118312723934650,0.018777566030622,-0.319611936807632,-0.030431903898716,-0.046021018177271,0.045727957040071,0.115949168801308,-0.120576575398445,0.058294758200645,0.244254976511002,-0.233035504817963));
res += mul(Get(s5,0,dy), float4x4(-0.090528249740601,0.104897052049637,0.016367668285966,-0.156186252832413,-0.061731591820717,-0.007803407032043,0.005093086510897,-0.090580731630325,0.041577965021133,0.072634376585484,-0.094015374779701,0.001366580487229,0.082786299288273,-0.051579389721155,-0.029349997639656,-0.027270674705505));
res += mul(Get(s5,dx,-dy), float4x4(-0.116401918232441,0.123536586761475,-0.106168419122696,0.001168857328594,-0.025830127298832,-0.001349449390545,-0.089541062712669,0.030604576691985,0.212689906358719,0.129951238632202,0.053591590374708,0.148315250873566,0.145323172211647,-0.034152034670115,-0.059266753494740,0.003983760718256));
res += mul(Get(s5,dx,0), float4x4(0.091669224202633,0.142088830471039,-0.117203481495380,0.100992977619171,-0.156546562910080,-0.032037388533354,-0.050373755395412,0.026036676019430,-0.007074062712491,0.059926077723503,-0.042893409729004,-0.002220671856776,0.042818032205105,0.067264139652252,0.002114832168445,0.025701690465212));
res += mul(Get(s5,dx,dy), float4x4(0.060583893209696,-0.055913999676704,0.007204634137452,0.018851727247238,0.092506937682629,-0.094192512333393,0.096057124435902,-0.032362993806601,0.244085356593132,0.114436060190201,0.032191395759583,-0.086904041469097,-0.115064218640327,-0.048776816576719,-0.003426012815908,-0.008760677650571));
res = max(float4(0, 0, 0, 0), res) + float4(-0.069715701043606,0.247393161058426,0.424768984317780,0.723754942417145) * min(float4(0, 0, 0, 0), res);
return res;
}