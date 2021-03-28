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
float4 res = float4(0.004492592066526,0.159129858016968,0.187320590019226,0.166387110948563);
res += mul(Get(s0,-dx,-dy), float4x4(-0.015290277078748,-0.017099725082517,0.088560447096825,0.013209738768637,-0.043023552745581,0.042275469750166,0.076323695480824,-0.027560608461499,0.002551411278546,-0.032395083457232,-0.065181151032448,-0.068462140858173,0.006537973415107,-0.035910539329052,0.072281256318092,-0.025555880740285));
res += mul(Get(s0,-dx,0), float4x4(-0.163786754012108,0.055612631142139,-0.003679149318486,0.150162547826767,0.126061305403709,0.098467230796814,-0.107861064374447,-0.134631887078285,-0.112149529159069,0.149136453866959,-0.045003205537796,-0.015831662341952,0.161521956324577,0.021345511078835,-0.188741713762283,-0.508146345615387));
res += mul(Get(s0,-dx,dy), float4x4(-0.139365926384926,-0.073483280837536,0.061600994318724,0.200360849499702,0.142234250903130,0.055780291557312,-0.106910184025764,0.029573772102594,0.139667645096779,-0.157985448837280,-0.007492010947317,0.534727394580841,-0.026689631864429,0.037311110645533,-0.122244380414486,0.195132240653038));
res += mul(Get(s0,0,-dy), float4x4(-0.088316075503826,0.073157615959644,0.001912141684443,0.049849651753902,-0.215128511190414,0.100249916315079,0.113493524491787,0.043540176004171,-0.065373994410038,0.017774265259504,-0.140838652849197,0.021904667839408,0.017158424481750,-0.088929958641529,0.127980783581734,-0.072482846677303));
res += mul(Get(s0,0,0), float4x4(0.012589445337653,0.228373885154724,-0.053094889968634,0.119800269603729,-0.299893617630005,-0.066710025072098,0.055870678275824,-0.006442690268159,-0.098594501614571,0.005986440461129,0.084489464759827,0.055959604680538,0.277302622795105,-0.650357902050018,-0.479417592287064,0.359535574913025));
res += mul(Get(s0,0,dy), float4x4(-0.128892257809639,-0.028594298288226,-0.135625228285789,0.052778590470552,-0.046627420932055,0.041084233671427,-0.002843875205144,-0.061376355588436,-0.362453043460846,0.362102329730988,0.058457076549530,0.053933799266815,-0.040502481162548,-0.018562061712146,-0.073318168520927,-0.189341455698013));
res += mul(Get(s0,dx,-dy), float4x4(-0.045581884682178,-0.009847906418145,0.060487549751997,-0.016688281670213,0.017547080293298,-0.061831552535295,-0.056059230118990,0.019894929602742,-0.058176930993795,-0.058214657008648,0.053114417940378,0.001679011387751,0.023065492510796,0.021074444055557,0.072217658162117,-0.073498778045177));
res += mul(Get(s0,dx,0), float4x4(-0.076331950724125,-0.120360970497131,-0.104625403881073,-0.005834476556629,0.145544081926346,0.083049170672894,-0.064695447683334,0.046119309961796,-0.087218135595322,-0.023307429626584,0.013425344601274,-0.050522748380899,-0.084728404879570,0.194553449749947,0.022066473960876,-0.053221233189106));
res += mul(Get(s0,dx,dy), float4x4(0.031936947256327,-0.077124655246735,-0.098083592951298,-0.172781929373741,-0.045614901930094,0.058708731085062,-0.027236161753535,0.095567770302296,0.051738362759352,-0.210735663771629,0.026657015085220,0.052067786455154,-0.007045771460980,-0.161165967583656,-0.079212680459023,0.058816403150558));
res += mul(Get(s1,-dx,-dy), float4x4(0.007867430336773,-0.033793639391661,-0.164473965764046,0.040894981473684,0.073462776839733,0.022235374897718,-0.053493719547987,-0.043778959661722,-0.034313619136810,0.139001578092575,0.138714522123337,-0.054397042840719,-0.005188474897295,-0.000182738061994,0.009124449454248,-0.029265105724335));
res += mul(Get(s1,-dx,0), float4x4(0.053779769688845,-0.102648854255676,0.057880882173777,0.097291007637978,0.034064639359713,0.009057745337486,0.012410817667842,-0.219529837369919,-0.142669156193733,0.112534567713737,0.117080546915531,-0.062537573277950,0.085010170936584,-0.042402815073729,0.007390439510345,-0.200027927756310));
res += mul(Get(s1,-dx,dy), float4x4(-0.054529290646315,-0.021870533004403,-0.019655406475067,0.036020804196596,0.055963408201933,-0.033105608075857,-0.023481026291847,-0.135472550988197,-0.211478769779205,-0.027815308421850,-0.000366779160686,0.027771349996328,0.065322332084179,0.011717079207301,-0.109513454139233,-0.096083670854568));
res += mul(Get(s1,0,-dy), float4x4(0.164400443434715,-0.028877608478069,-0.388682395219803,0.216540679335594,0.125448986887932,-0.169448316097260,-0.077068857848644,-0.073844201862812,-0.008834871463478,0.069251298904419,0.146439909934998,0.020597068592906,-0.031245412304997,0.019195236265659,-0.146723538637161,-0.033726383000612));
res += mul(Get(s1,0,0), float4x4(-0.121223822236061,0.064911887049675,-0.021308531984687,-0.071990862488747,-0.123979613184929,-0.010483147576451,0.069765940308571,0.155090227723122,-0.130266323685646,0.044564142823219,0.021304458379745,0.089940153062344,0.003990462049842,-0.000610876770224,-0.371432900428772,-0.066469669342041));
res += mul(Get(s1,0,dy), float4x4(-0.153445437550545,0.031398367136717,-0.164026886224747,0.104605376720428,-0.049014292657375,-0.006961821112782,-0.000235425133724,-0.043323546648026,-0.026854906231165,0.058391716331244,0.039698153734207,0.177810817956924,-0.074481293559074,0.069882586598396,-0.199257776141167,-0.068630568683147));
res += mul(Get(s1,dx,-dy), float4x4(0.009359854273498,-0.011060764081776,-0.108081214129925,0.109958253800869,0.207481473684311,0.009371311403811,-0.200268134474754,0.159169763326645,-0.039964936673641,0.012154658325016,-0.046024534851313,0.022958209738135,-0.039210397750139,-0.070775523781776,0.000909210124519,-0.025940710678697));
res += mul(Get(s1,dx,0), float4x4(-0.067258112132549,-0.012910142540932,-0.029338879510760,0.044873114675283,0.141197785735130,-0.009230998344719,-0.252035766839981,0.005599340423942,-0.075256057083607,0.270768254995346,-0.016999946907163,0.085764802992344,-0.035074222832918,-0.185224503278732,-0.047702979296446,-0.062030911445618));
res += mul(Get(s1,dx,dy), float4x4(0.068711280822754,-0.001433961559087,0.056179933249950,-0.059925135225058,0.071124993264675,-0.084723867475986,-0.053584370762110,0.100493766367435,-0.112812101840973,0.034746598452330,0.094226531684399,0.007676680572331,0.061411354690790,-0.136766463518143,-0.103029303252697,-0.091952286660671));
res += mul(Get(s2,-dx,-dy), float4x4(-0.221382781863213,0.051543869078159,-0.005610268097371,-0.040336076170206,-0.062286619096994,0.005586147308350,0.083947420120239,-0.047299876809120,-0.153860926628113,-0.002539636800066,0.000318356178468,-0.081989072263241,-0.104519218206406,0.011112461797893,-0.020081114023924,-0.009016863070428));
res += mul(Get(s2,-dx,0), float4x4(-0.021181475371122,0.135987952351570,-0.180290818214417,-0.246122196316719,0.100074663758278,-0.009558415040374,0.034296322613955,-0.160371124744415,0.076912932097912,0.109640084207058,-0.116444647312164,0.033586073666811,-0.117988280951977,0.071909114718437,0.154038310050964,0.159239396452904));
res += mul(Get(s2,-dx,dy), float4x4(-0.064289316534996,0.022829281166196,0.103853948414326,0.064426973462105,0.096789091825485,0.056966174393892,0.006790930870920,-0.229031458497047,-0.060161437839270,0.037678044289351,-0.258199304342270,-0.101707361638546,-0.077138267457485,-0.171735078096390,0.167338564991951,0.155701294541359));
res += mul(Get(s2,0,-dy), float4x4(-0.031746685504913,-0.125345617532730,-0.136771306395531,-0.061194363981485,0.012353515252471,-0.025949560105801,-0.008718098513782,0.108698271214962,-0.162915423512459,0.003659007372335,-0.040044873952866,-0.052523970603943,-0.072964593768120,-0.043690770864487,0.118950106203556,-0.019137308001518));
res += mul(Get(s2,0,0), float4x4(-0.025078264996409,-0.225853100419044,0.304315835237503,0.139029130339622,0.194470733404160,0.113143853843212,-0.076418064534664,-0.138765960931778,0.082897596061230,-0.029792796820402,-0.113404504954815,-0.246236979961395,-0.210768207907677,-0.093695588409901,0.052454046905041,-0.191934973001480));
res += mul(Get(s2,0,dy), float4x4(0.015140757896006,-0.065261788666248,0.164327263832092,-0.029638659209013,0.155211552977562,0.169798716902733,-0.109281688928604,-0.151293203234673,0.019289506599307,-0.006858081556857,-0.549859046936035,-0.349689930677414,-0.060261733829975,0.048443686217070,0.301460981369019,0.029968965798616));
res += mul(Get(s2,dx,-dy), float4x4(-0.058504205197096,-0.114467963576317,-0.042352370917797,-0.006229381076992,0.040553219616413,-0.104269430041313,0.015226222574711,0.052825823426247,0.078335806727409,-0.077693842351437,-0.028564929962158,0.001769495662302,-0.133734330534935,0.043545156717300,0.094286553561687,0.022359132766724));
res += mul(Get(s2,dx,0), float4x4(-0.126827701926231,0.017752304673195,-0.062441300600767,-0.058539785444736,-0.006315060425550,0.066292397677898,0.154714867472649,-0.037412777543068,0.127361357212067,-0.240683823823929,-0.054519880563021,-0.076522879302502,0.001157492049970,0.120404459536076,0.201961621642113,-0.014637229032815));
res += mul(Get(s2,dx,dy), float4x4(0.098085753619671,-0.101235285401344,-0.028546893969178,-0.010218292474747,0.012105425819755,-0.047702766954899,0.078041061758995,-0.044016219675541,0.116568565368652,-0.255034625530243,-0.091490693390369,-0.009136063046753,-0.032396823167801,-0.003345190780237,0.140943124890327,-0.070184253156185));
res += mul(Get(s3,-dx,-dy), float4x4(0.205068036913872,-0.024380913004279,-0.098448403179646,0.027914157137275,-0.046222541481256,0.101120486855507,0.151462361216545,-0.121414847671986,-0.022619618102908,-0.000714075402357,0.002811340615153,0.043540596961975,0.069611437618732,0.009258483536541,0.061901073902845,0.006882284302264));
res += mul(Get(s3,-dx,0), float4x4(-0.116799592971802,-0.118287071585655,0.067105598747730,-0.052147224545479,0.079249568283558,0.223914310336113,-0.050368223339319,-0.096365965902805,-0.128831252455711,-0.132946699857712,0.075727894902229,0.149742558598518,0.086248636245728,0.055914968252182,0.045250043272972,-0.031992468982935));
res += mul(Get(s3,-dx,dy), float4x4(0.077385358512402,0.093088120222092,-0.043549094349146,0.055160962045193,-0.088757343590260,0.161521956324577,-0.185286030173302,-0.031422842293978,-0.155845269560814,-0.059924352914095,-0.136862620711327,-0.051553085446358,-0.106301389634609,0.030373463407159,0.126619234681129,0.043276395648718));
res += mul(Get(s3,0,-dy), float4x4(0.026740076020360,-0.039826314896345,-0.132212117314339,-0.017807602882385,-0.089814573526382,-0.065602079033852,0.044368904083967,0.080839134752750,-0.106269344687462,-0.028740819543600,-0.012852605432272,0.083228118717670,0.103629238903522,0.036973137408495,0.046997770667076,0.030472191050649));
res += mul(Get(s3,0,0), float4x4(-0.260402530431747,-0.049061104655266,0.196921512484550,-0.279547959566116,0.239532455801964,0.061644677072763,-0.050400428473949,0.183782711625099,-0.114228822290897,0.298958748579025,0.330265849828720,0.422559976577759,-0.004080174025148,0.033666953444481,0.090457305312157,-0.020524138584733));
res += mul(Get(s3,0,dy), float4x4(0.039924576878548,0.025456665083766,-0.229344934225082,0.079128943383694,0.671247482299805,0.011221275664866,-0.062673814594746,0.436824530363083,-0.052699845284224,-0.070493586361408,-0.170336619019508,-0.004906958900392,-0.105980612337589,0.053809672594070,0.073490984737873,0.139513596892357));
res += mul(Get(s3,dx,-dy), float4x4(-0.097564592957497,0.152073562145233,0.001463125227019,-0.009830921888351,-0.003820750862360,-0.056085873395205,0.005470485426486,-0.036341514438391,0.033411856740713,-0.016052907332778,-0.097354441881180,-0.062095586210489,0.053991764783859,0.044517505913973,-0.003447115188465,0.049029681831598));
res += mul(Get(s3,dx,0), float4x4(-0.084070265293121,0.251774102449417,-0.128707334399223,-0.013065082021058,0.142197489738464,0.025938265025616,-0.083123140037060,0.275634467601776,-0.005626028403640,-0.218358814716339,-0.331434547901154,0.032949145883322,0.013495083898306,0.245821863412857,0.005786903668195,0.126252949237823));
res += mul(Get(s3,dx,dy), float4x4(-0.034772958606482,-0.037625763565302,-0.109834671020508,0.044383313506842,0.627205431461334,-0.038351550698280,0.007977087981999,1.103707909584045,0.084475025534630,0.056443810462952,-0.052485100924969,0.000774783315137,-0.123232379555702,0.171868950128555,0.047454271465540,0.127701565623283));
res += mul(Get(s4,-dx,-dy), float4x4(-0.057181403040886,-0.028431938961148,0.055175919085741,0.063011661171913,0.028457013890147,0.001590413390659,-0.042176067829132,-0.085150554776192,-0.104084536433220,-0.207700267434120,0.036721155047417,0.026743756607175,-0.032058302313089,0.028102846816182,-0.040028356015682,-0.056301049888134));
res += mul(Get(s4,-dx,0), float4x4(-0.033356714993715,-0.087561473250389,-0.017459275200963,0.081935882568359,0.019997403025627,0.007652687374502,0.080285310745239,-0.180497586727142,0.008877784945071,-0.095988430082798,0.151169955730438,-0.072610504925251,0.002399611985311,0.006973535753787,-0.243659093976021,0.073427163064480));
res += mul(Get(s4,-dx,dy), float4x4(-0.064295686781406,-0.111046329140663,-0.073273152112961,0.029225058853626,0.063952304422855,0.084251053631306,0.058955688029528,-0.100931040942669,0.117859549820423,0.070994123816490,-0.006222784053534,-0.159265026450157,-0.012040781788528,-0.130381330847740,-0.111518546938896,0.009239641018212));
res += mul(Get(s4,0,-dy), float4x4(0.023211661726236,0.101038463413715,-0.131825640797615,-0.032268311828375,0.101382508873940,0.092889457941055,0.149644702672958,-0.058726839721203,0.083735994994640,0.009898907504976,-0.309417724609375,0.054414100944996,-0.006986728403717,0.020190179347992,-0.027794949710369,0.027759805321693));
res += mul(Get(s4,0,0), float4x4(0.078627608716488,-0.188921555876732,0.238939821720123,0.256602942943573,-0.109889537096024,-0.019159222021699,-0.001228969078511,0.232237339019775,0.114236265420914,-0.062070608139038,-0.249613672494888,0.002303611719981,-0.088335186243057,-0.054590821266174,0.103963568806648,-0.099693998694420));
res += mul(Get(s4,0,dy), float4x4(0.205424785614014,-0.036970574408770,-0.051897853612900,0.038749363273382,0.029835585504770,0.042179986834526,0.026772869750857,-0.086965508759022,-0.010594103485346,-0.194877952337265,0.030336977913976,-0.010445235297084,0.291159749031067,-0.155478656291962,-0.286808639764786,0.151372790336609));
res += mul(Get(s4,dx,-dy), float4x4(0.175357520580292,0.016255024820566,-0.001126277958974,-0.049450676888227,-0.081942215561867,0.020880647003651,0.007203496061265,-0.046026065945625,-0.114568404853344,0.022794108837843,-0.012909460812807,-0.081747509539127,0.025345707312226,-0.120283208787441,0.106983125209808,-0.010553678497672));
res += mul(Get(s4,dx,0), float4x4(0.114459536969662,0.633498191833496,-0.023477232083678,-0.140097320079803,-0.003361237468198,-0.030109610408545,-0.029422560706735,-0.401121884584427,-0.037576895207167,0.113476604223251,0.074480384588242,-0.069230839610100,-0.120443299412727,0.263468414545059,-0.015174668282270,-0.134734064340591));
res += mul(Get(s4,dx,dy), float4x4(0.110842615365982,0.064144782721996,-0.111802816390991,0.016760416328907,-0.141577214002609,0.045007620006800,0.115018844604492,0.032067768275738,-0.093510814011097,-0.116529271006584,-0.012440558522940,0.051500592380762,-0.028088269755244,0.059874691069126,0.122947163879871,0.102810442447662));
res += mul(Get(s5,-dx,-dy), float4x4(0.031681969761848,0.062708407640457,-0.015922173857689,0.064084954559803,0.056839879602194,-0.035933934152126,-0.021231204271317,0.073017060756683,0.033409923315048,-0.070267356932163,0.006887037772685,0.067785173654556,0.055502645671368,-0.091421954333782,-0.097213961184025,-0.047821480780840));
res += mul(Get(s5,-dx,0), float4x4(0.052986387163401,0.054082803428173,-0.107342280447483,0.005675783380866,-0.059698436409235,-0.047973964363337,-0.055567037314177,0.037896007299423,0.060779523104429,-0.077062703669071,-0.237622916698456,-0.355534404516220,0.076606385409832,-0.096423111855984,-0.080148056149483,-0.150548860430717));
res += mul(Get(s5,-dx,dy), float4x4(-0.032682355493307,0.010735504329205,-0.076410554349422,-0.000776450207923,0.065574720501900,-0.032361082732677,-0.095716416835785,-0.011772355064750,0.174174353480339,-0.006343942135572,-0.063677534461021,-0.140012964606285,0.204034268856049,0.065444901585579,0.120613023638725,-0.024234050884843));
res += mul(Get(s5,0,-dy), float4x4(0.156342655420303,0.058642178773880,-0.068437613546848,0.092772170901299,0.169540897011757,-0.000044147374865,-0.085886701941490,-0.001313843647949,0.021627750247717,-0.306031078100204,0.098200030624866,0.109809830784798,0.189730256795883,-0.291676521301270,0.006129558198154,0.112774938344955));
res += mul(Get(s5,0,0), float4x4(0.059331066906452,0.042601335793734,-0.231068789958954,0.016636058688164,0.181323856115341,0.039078079164028,0.346039146184921,0.199896007776260,-0.003745298366994,-0.854675352573395,-0.063152827322483,-0.052419338375330,0.555734097957611,-0.243128195405006,-0.094145625829697,0.302005887031555));
res += mul(Get(s5,0,dy), float4x4(-0.146120533347130,0.043830476701260,-0.035810597240925,0.054285019636154,0.097773112356663,-0.025596618652344,0.046402722597122,-0.057362005114555,0.093254528939724,-0.160343676805496,0.005126214586198,-0.045704249292612,0.121708445250988,-0.114767894148827,0.150470331311226,-0.284907221794128));
res += mul(Get(s5,dx,-dy), float4x4(0.153816118836403,0.045483194291592,-0.086990982294083,0.097620002925396,-0.154790565371513,-0.088216416537762,0.100773803889751,0.050544265657663,-0.003117422806099,-0.231890127062798,0.012648325413465,0.026360852643847,-0.059297431260347,0.121159926056862,-0.126940444111824,-0.023166600614786));
res += mul(Get(s5,dx,0), float4x4(0.232260778546333,0.081506885588169,-0.189423292875290,-0.054172314703465,-0.220051273703575,0.465379059314728,0.351452559232712,0.487036585807800,0.035468719899654,-0.418053418397903,-0.014590418897569,-0.009777139872313,-0.067165330052376,0.217129871249199,-0.066957838833332,-0.065969191491604));
res += mul(Get(s5,dx,dy), float4x4(0.088871955871582,-0.163874506950378,-0.033154468983412,0.378828942775726,-0.170392498373985,-0.040406391024590,0.123762108385563,0.041569605469704,-0.031646836549044,-0.154225766658783,0.086810648441315,0.035982370376587,0.059029951691628,0.013213366270065,0.064334414899349,-0.068697765469551));
res = max(float4(0, 0, 0, 0), res) + float4(0.138167217373848,-0.221553802490234,0.074511304497719,0.526334345340729) * min(float4(0, 0, 0, 0), res);
return res;
}