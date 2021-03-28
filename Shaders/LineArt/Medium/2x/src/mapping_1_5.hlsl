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
float4 res = float4(-0.088361799716949,0.002572097349912,-0.019110746681690,0.148216962814331);
res += mul(Get(s0,-dx,-dy), float4x4(-0.026860343292356,0.035780120640993,-0.018316784873605,0.103179275989532,-0.118354424834251,-0.087551139295101,0.187577411532402,-0.163481220602989,0.029848590493202,-0.001198020414449,-0.061107978224754,-0.084000535309315,-0.041140221059322,-0.058233700692654,-0.098584510385990,-0.023887800052762));
res += mul(Get(s0,-dx,0), float4x4(0.084715910255909,-0.054487995803356,-0.080361172556877,0.034114073961973,0.177889496088028,-0.086879663169384,0.051312852650881,-0.087241373956203,-0.004577697254717,-0.220881089568138,-0.069842323660851,-0.111944250762463,-0.036923281848431,0.115203879773617,0.082837879657745,0.119205914437771));
res += mul(Get(s0,-dx,dy), float4x4(0.031090307980776,0.095946028828621,-0.043675631284714,-0.097792126238346,-0.150848671793938,-0.025954084470868,-0.083010867238045,-0.049646753817797,-0.017066432163119,-0.147146224975586,0.021731268614531,0.013702479191124,-0.002464422723278,-0.036697715520859,0.023404505103827,-0.037049267441034));
res += mul(Get(s0,0,-dy), float4x4(0.033345434814692,-0.044518575072289,-0.073642440140247,-0.028662728145719,0.014070260338485,0.032811399549246,0.068694561719894,0.009909912943840,-0.183355316519737,-0.113741517066956,-0.032071348279715,0.083012901246548,-0.020079663023353,0.103358067572117,0.029527842998505,-0.065837882459164));
res += mul(Get(s0,0,0), float4x4(0.043645605444908,-0.000641626655124,0.064156033098698,-0.053794037550688,0.157523468136787,0.003984928596765,-0.102553486824036,0.179310172796249,0.227035775780678,0.268620580434799,0.085168227553368,0.351526170969009,-0.097797468304634,-0.067394480109215,-0.062915846705437,-0.013726377859712));
res += mul(Get(s0,0,dy), float4x4(0.002376481657848,0.018944712355733,-0.020793940871954,-0.070748768746853,-0.072554491460323,0.182373061776161,-0.001199105754495,-0.045243665575981,0.044366240501404,0.186541169881821,-0.052363038063049,0.000269988435321,0.022958731278777,-0.160754680633545,0.046379495412111,-0.056391190737486));
res += mul(Get(s0,dx,-dy), float4x4(0.072654776275158,-0.054260432720184,0.096318446099758,-0.098763406276703,-0.028117131441832,0.008703488856554,-0.050569906830788,-0.146010562777519,-0.192031890153885,0.059636436402798,0.166213676333427,-0.310793250799179,-0.015257840044796,-0.042331296950579,-0.086194485425949,0.039502192288637));
res += mul(Get(s0,dx,0), float4x4(-0.047257315367460,0.025009371340275,-0.048992481082678,-0.014521330595016,0.092043869197369,0.004783512558788,0.108959056437016,-0.004080372862518,-0.031533192843199,-0.131816178560257,-0.236493930220604,0.188471347093582,0.007011247333139,0.030892794951797,0.183675393462181,-0.112228482961655));
res += mul(Get(s0,dx,dy), float4x4(0.116024889051914,0.056696839630604,0.018949504941702,-0.055791981518269,-0.064935505390167,-0.071387618780136,-0.056818433105946,-0.092127196490765,-0.097694233059883,-0.068928465247154,-0.196481704711914,0.033142648637295,0.098052121698856,0.035191144794226,-0.158814817667007,0.053769715130329));
res += mul(Get(s1,-dx,-dy), float4x4(-0.035119034349918,0.133084073662758,0.048827577382326,-0.083985932171345,-0.063681989908218,-0.101713128387928,0.042131610214710,0.089819133281708,0.005491424351931,-0.081196345388889,0.028644476085901,0.083939902484417,-0.212313234806061,-0.048337794840336,0.021381422877312,-0.052116379141808));
res += mul(Get(s1,-dx,0), float4x4(-0.312932133674622,0.058580867946148,-0.149374440312386,0.099214196205139,0.009287004359066,-0.292269617319107,0.009621316567063,-0.278501212596893,0.011651270091534,0.541174352169037,0.050364453345537,0.182059690356255,0.001415363512933,-0.043018542230129,0.017314638942480,-0.058429908007383));
res += mul(Get(s1,-dx,dy), float4x4(-0.018199454993010,-0.068832688033581,0.055605843663216,-0.075865514576435,0.000721399846952,0.115420676767826,0.180749371647835,0.147304058074951,-0.003312707645819,-0.087224908173084,-0.036173041909933,-0.078394636511803,-0.031554810702801,-0.117088146507740,-0.138125672936440,0.098607584834099));
res += mul(Get(s1,0,-dy), float4x4(-0.135952085256577,0.016364593058825,0.132437899708748,-0.052733145654202,-0.020056087523699,0.045822840183973,-0.035017967224121,0.091917105019093,0.026928149163723,0.035398211330175,0.049318034201860,-0.229761838912964,0.133811920881271,-0.094006463885307,-0.031485531479120,-0.182964235544205));
res += mul(Get(s1,0,0), float4x4(0.128037691116333,-0.158953115344048,-0.094670914113522,0.111661612987518,0.123935684561729,0.304242938756943,-0.000272226607194,0.114671908318996,-0.270232141017914,-0.299551844596863,-0.002183497184888,0.048044431954622,0.326102048158646,0.451337367296219,0.248692169785500,-0.023279543966055));
res += mul(Get(s1,0,dy), float4x4(0.015238107182086,-0.139234691858292,-0.114518322050571,-0.007089670747519,-0.138755410909653,-0.116113170981407,-0.063336461782455,-0.027010988444090,0.185614407062531,-0.134490177035332,0.050382535904646,0.143920451402664,-0.054847151041031,-0.002423949074000,-0.038402192294598,-0.022130418568850));
res += mul(Get(s1,dx,-dy), float4x4(-0.098705984652042,-0.033624984323978,-0.210086673498154,0.041175037622452,0.080091491341591,0.000519069086295,-0.087359614670277,-0.075466230511665,-0.046843707561493,-0.031316228210926,-0.013901753351092,0.015834501013160,-0.030823089182377,-0.080074824392796,0.016390621662140,-0.035618454217911));
res += mul(Get(s1,dx,0), float4x4(0.259444177150726,0.128572836518288,-0.039923589676619,0.178819850087166,-0.015244647860527,-0.096982225775719,-0.265613704919815,-0.042737133800983,0.038191687315702,-0.019861662760377,0.399850368499756,-0.095556572079659,-0.024542776867747,-0.098430231213570,-0.026776064187288,-0.008046813309193));
res += mul(Get(s1,dx,dy), float4x4(0.037509817630053,-0.073732770979404,-0.008024140261114,0.007395437918603,-0.064694784581661,0.072004966437817,-0.016879418864846,0.034871682524681,0.131394267082214,0.045407284051180,-0.249091222882271,0.061856981366873,-0.014397959224880,0.032468203455210,-0.017040729522705,-0.154581725597382));
res += mul(Get(s2,-dx,-dy), float4x4(0.135181650519371,-0.001782016945072,-0.043701257556677,0.183796331286430,0.010779843665659,0.098872110247612,-0.040201690047979,-0.022756863385439,-0.033034071326256,0.058985691517591,-0.039158079773188,-0.265643298625946,0.030918100848794,0.090181693434715,-0.051615342497826,0.110988326370716));
res += mul(Get(s2,-dx,0), float4x4(-0.007821515202522,-0.128246843814850,-0.003080256516114,-0.074964657425880,0.004311108496040,0.156341597437859,-0.007084805984050,0.075952209532261,0.173513263463974,0.533609747886658,-0.084829084575176,0.268559873104095,-0.003191642928869,-0.062425877898932,-0.081078313291073,-0.085983380675316));
res += mul(Get(s2,-dx,dy), float4x4(-0.147660762071609,-0.176580503582954,-0.010911832563579,0.076365940272808,-0.005516979843378,-0.059343557804823,0.001165597001091,-0.075402364134789,0.070808716118336,0.093787841498852,0.072583019733429,-0.154645174741745,0.057762958109379,-0.102081477642059,-0.056269176304340,0.045775882899761));
res += mul(Get(s2,0,-dy), float4x4(0.048622690141201,0.048490911722183,0.022409437224269,0.160613641142845,-0.255703777074814,-0.113767609000206,-0.049029339104891,-0.081539891660213,-0.118714183568954,-0.174231663346291,-0.059933256357908,-0.087003126740456,0.018356584012508,0.123061366379261,-0.165704622864723,0.225403189659119));
res += mul(Get(s2,0,0), float4x4(-0.057790406048298,-0.010251679457724,0.161495536565781,0.020132642239332,-0.122912310063839,-0.313311249017715,-0.039046213030815,0.327589511871338,-0.078704908490181,-0.065155111253262,0.010576047003269,0.235451728105545,-0.190015956759453,0.497992873191833,-0.032097503542900,-0.284050315618515));
res += mul(Get(s2,0,dy), float4x4(-0.022589446976781,0.112063758075237,0.126631587743759,-0.021419946104288,0.068545468151569,-0.003029061481357,-0.147019296884537,0.002422373741865,0.008497510105371,-0.158956676721573,-0.082497917115688,-0.014859813265502,0.074259437620640,-0.047360599040985,-0.147192984819412,-0.124891214072704));
res += mul(Get(s2,dx,-dy), float4x4(-0.032304804772139,0.032611742615700,-0.053962152451277,-0.042349386960268,0.009259277023375,-0.066576205193996,-0.059069722890854,0.004041722975671,-0.090011559426785,-0.005821783095598,0.043931402266026,-0.103057973086834,-0.097278669476509,-0.038559887558222,-0.162842750549316,-0.190372139215469));
res += mul(Get(s2,dx,0), float4x4(0.110115036368370,-0.055090721696615,-0.054844383150339,-0.054675534367561,0.105230420827866,0.093070514500141,0.185717046260834,0.039853606373072,-0.064184464514256,0.010168977081776,0.176904067397118,0.075548365712166,-0.148137688636780,-0.086528673768044,-0.047347571700811,0.015998950228095));
res += mul(Get(s2,dx,dy), float4x4(-0.070088177919388,0.029385244473815,-0.242647901177406,-0.013726431876421,0.102870434522629,-0.005748532712460,0.167394846677780,-0.008368485607207,0.081342071294785,-0.134044602513313,0.289347708225250,-0.034992881119251,0.079398214817047,-0.001002251286991,0.104147344827652,-0.090888544917107));
res += mul(Get(s3,-dx,-dy), float4x4(-0.034767277538776,-0.086477920413017,-0.087913416326046,-0.069166570901871,0.020685110241175,-0.000514129467774,-0.067227765917778,0.003729910822585,0.004819982685149,-0.031143167987466,-0.023439465090632,-0.110369540750980,0.063333928585052,-0.045770473778248,-0.137797012925148,0.023435082286596));
res += mul(Get(s3,-dx,0), float4x4(-0.069679506123066,0.149663776159286,0.200308248400688,-0.260930895805359,0.070318199694157,-0.047317713499069,-0.096138142049313,-0.030691735446453,-0.121236808598042,0.000835375336464,-0.123776383697987,-0.038036804646254,-0.040395785123110,-0.180216953158379,0.112616710364819,0.162855729460716));
res += mul(Get(s3,-dx,dy), float4x4(0.139490738511086,0.127027526497841,0.035713799297810,-0.066944815218449,-0.088763184845448,-0.017451956868172,-0.007599292322993,-0.069445535540581,0.056449934840202,-0.019962159916759,0.057462509721518,-0.003484121523798,0.173925012350082,-0.104883946478367,-0.119473062455654,0.183409646153450));
res += mul(Get(s3,0,-dy), float4x4(0.110781408846378,-0.011281807906926,0.002165347104892,0.015270005911589,-0.164778411388397,0.037037372589111,0.186638325452805,0.143091395497322,-0.172991663217545,0.041027478873730,0.037004772573709,-0.017271947115660,0.063206404447556,-0.019206685945392,-0.115425616502762,0.093814864754677));
res += mul(Get(s3,0,0), float4x4(-0.047600761055946,-0.194543346762657,0.071541644632816,-0.311500370502472,-0.012232488952577,0.017392499372363,0.062378067523241,-0.027963234111667,0.058499023318291,0.185555770993233,-0.131734907627106,-0.252956151962280,-0.207816183567047,-0.085683025419712,0.100661225616932,0.104027450084686));
res += mul(Get(s3,0,dy), float4x4(-0.091347791254520,-0.429216980934143,-0.051624167710543,0.147217914462090,-0.143294498324394,0.229840904474258,0.250261217355728,0.037075139582157,-0.047080125659704,0.327571630477905,0.090606734156609,0.054075017571449,0.099816016852856,0.059361163526773,0.317387282848358,0.119875654578209));
res += mul(Get(s3,dx,-dy), float4x4(-0.095398254692554,-0.002286595758051,-0.075119316577911,-0.000759480579291,-0.079803086817265,-0.040886834263802,0.028044097125530,-0.029843194410205,-0.089211940765381,0.067734822630882,-0.011741196736693,-0.102200321853161,-0.002741849748418,-0.021142767742276,-0.013479423709214,-0.032691199332476));
res += mul(Get(s3,dx,0), float4x4(-0.022295009344816,0.096752114593983,0.172866553068161,-0.205311357975006,0.015550628304482,-0.027321763336658,-0.074656441807747,-0.030690355226398,-0.034124124795198,-0.038239344954491,-0.375329077243805,-0.151343956589699,-0.191741451621056,-0.028426153585315,0.295866876840591,-0.212672933936119));
res += mul(Get(s3,dx,dy), float4x4(-0.004071662668139,-0.118051819503307,-0.019361576065421,-0.002741615753621,-0.027765026316047,-0.010394314303994,-0.059802412986755,-0.046383038163185,0.025744026526809,-0.145442590117455,-0.204429879784584,0.098593965172768,0.056714519858360,0.056697834283113,0.090262845158577,-0.194555640220642));
res += mul(Get(s4,-dx,-dy), float4x4(0.023454859852791,0.187403932213783,0.032294310629368,-0.084559001028538,-0.016864631325006,0.073389902710915,-0.058528084307909,-0.017084145918489,0.001392466831021,-0.037865884602070,0.096009977161884,0.054514300078154,-0.262099385261536,-0.035959310829639,-0.117311783134937,-0.152593821287155));
res += mul(Get(s4,-dx,0), float4x4(-0.016406934708357,0.192614868283272,-0.127423405647278,-0.078820981085300,0.087011620402336,-0.142646223306656,-0.101264022290707,-0.033689968287945,0.091439440846443,0.048327289521694,0.128888815641403,-0.087756581604481,-0.044753473252058,-0.063465729355812,-0.089020751416683,0.009112340398133));
res += mul(Get(s4,-dx,dy), float4x4(0.091832950711250,-0.045610617846251,-0.031321968883276,0.039190012961626,0.167133361101151,0.022899448871613,0.010644837282598,-0.042922828346491,0.044190339744091,-0.006270139943808,-0.091384187340736,0.061792150139809,-0.012946233153343,0.081427007913589,-0.044790219515562,-0.047696840018034));
res += mul(Get(s4,0,-dy), float4x4(0.078834675252438,-0.220632627606392,0.148534312844276,-0.006151097360998,0.056638140231371,0.087230652570724,-0.175780102610588,0.146234869956970,0.020395314320922,0.066411323845387,-0.154383376240730,0.151781663298607,-0.014551689848304,0.017547272145748,-0.221105456352234,-0.114484742283821));
res += mul(Get(s4,0,0), float4x4(0.090800918638706,-0.132120639085770,0.001812485861592,0.010170995257795,-0.130619630217552,0.023998355492949,-0.120793178677559,0.115465022623539,-0.063874073326588,0.134151101112366,0.244774222373962,-0.177951976656914,-0.112026073038578,0.118229635059834,-0.093112677335739,-0.054756261408329));
res += mul(Get(s4,0,dy), float4x4(-0.043048243969679,0.010422461666167,0.116437666118145,-0.027424154803157,0.116258881986141,-0.076354607939720,-0.027019344270229,-0.009208033792675,-0.126503363251686,-0.131667658686638,0.038516294211149,0.071552880108356,-0.099419184029102,0.024828905239701,0.078244090080261,0.005135911516845));
res += mul(Get(s4,dx,-dy), float4x4(0.004015783313662,-0.006089285481721,-0.055238228291273,-0.061707284301519,0.131312116980553,-0.033432595431805,-0.126908376812935,0.016696540638804,0.014544362202287,0.008763183839619,-0.082127287983894,-0.101453013718128,0.089715316891670,-0.009486459195614,-0.448962122201920,-0.077185563743114));
res += mul(Get(s4,dx,0), float4x4(-0.012542014010251,0.035170551389456,-0.017883533611894,-0.015182192437351,-0.150938659906387,0.058748830109835,-0.090277634561062,-0.168999284505844,0.084160879254341,-0.164361387491226,-0.107670471072197,-0.000877222977579,-0.061341822147369,-0.029009100049734,-0.342362314462662,-0.025504048913717));
res += mul(Get(s4,dx,dy), float4x4(0.086056046187878,-0.014913937076926,0.132985666394234,-0.029043223708868,-0.041969187557697,0.067451670765877,0.095423191785812,-0.168948620557785,-0.036086987704039,0.103923849761486,-0.058171063661575,-0.053968541324139,0.029972020536661,0.011830865405500,-0.256480425596237,-0.063163973391056));
res += mul(Get(s5,-dx,-dy), float4x4(0.034216988831758,0.018830996006727,0.046681571751833,0.078305810689926,-0.051564600318670,-0.039014834910631,-0.007649722509086,-0.106942810118198,0.010449924506247,-0.007049895357341,-0.132806435227394,0.006218356080353,-0.030378799885511,0.142937928438187,0.034955460578203,-0.009460736066103));
res += mul(Get(s5,-dx,0), float4x4(0.064835727214813,-0.195853248238564,-0.047210697084665,-0.293983608484268,-0.039001148194075,-0.162642747163773,0.057131119072437,-0.203341230750084,0.007960685528815,-0.054272834211588,0.055958308279514,0.025715021416545,-0.249757215380669,0.115492634475231,-0.004597699735314,0.165753364562988));
res += mul(Get(s5,-dx,dy), float4x4(0.027427986264229,0.052460283041000,0.007511449046433,0.092242769896984,-0.160433948040009,-0.082583330571651,0.045039165765047,0.041229777038097,0.039124350994825,-0.012346682138741,0.138544157147408,0.006308787502348,0.088405653834343,0.084819510579109,-0.016917068511248,0.090121097862720));
res += mul(Get(s5,0,-dy), float4x4(0.091877646744251,0.018626850098372,-0.118136771023273,0.045495398342609,0.035321760922670,-0.006792774889618,0.035163987427950,-0.041694890707731,0.007695076055825,-0.108030565083027,0.085477381944656,0.177639812231064,-0.112248018383980,0.069821141660213,-0.078978918492794,-0.110785625874996));
res += mul(Get(s5,0,0), float4x4(0.061489876359701,0.353613018989563,0.120809756219387,0.066798895597458,0.185710266232491,0.326374828815460,0.169877260923386,-0.145838141441345,0.028822517022491,0.053825199604034,-0.063765063881874,0.017739534378052,-0.217891395092010,-0.144425019621849,-0.165149748325348,0.049147751182318));
res += mul(Get(s5,0,dy), float4x4(-0.192208245396614,-0.133252054452896,-0.169749632477760,-0.073863156139851,-0.260763853788376,-0.008146751672029,0.041760969907045,0.078466027975082,0.151633739471436,-0.131284475326538,-0.105717778205872,-0.044051341712475,0.103346191346645,0.076877549290657,-0.049647565931082,-0.020398242399096));
res += mul(Get(s5,dx,-dy), float4x4(-0.007575658150017,-0.035772413015366,0.052662961184978,0.173279181122780,-0.014091524295509,0.065025500953197,-0.009510606527328,0.063135668635368,-0.047044713050127,-0.063715264201164,0.020722901448607,-0.047944899648428,-0.219373643398285,-0.158301189541817,-0.097059793770313,-0.002941836835817));
res += mul(Get(s5,dx,0), float4x4(-0.107625931501389,-0.082950413227081,-0.106934063136578,-0.022569913417101,-0.073309153318405,-0.077086612582207,-0.093478955328465,0.091101177036762,-0.199654251337051,0.180442765355110,-0.029097141698003,-0.100641272962093,-0.099148243665695,-0.309232473373413,-0.087667815387249,0.049811594188213));
res += mul(Get(s5,dx,dy), float4x4(0.055411446839571,0.047609053552151,0.109082475304604,0.004679325502366,-0.115500710904598,0.005706506781280,0.028066698461771,0.045974608510733,-0.006621834356338,0.001309467596002,0.129060864448547,-0.083941817283630,0.113990426063538,-0.109038464725018,-0.106524795293808,-0.020402923226357));
res = max(float4(0, 0, 0, 0), res) + float4(-0.457465291023254,-0.098506808280945,0.318792551755905,0.497550934553146) * min(float4(0, 0, 0, 0), res);
return res;
}