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
float4 res = float4(-0.100999772548676,0.101221919059753,-0.074994750320911,-0.018447132781148);
res += mul(Get(s0,-dx,-dy), float4x4(-0.058323964476585,0.039060726761818,-0.097375646233559,0.073164910078049,-0.193449124693871,-0.020680237561464,-0.031454317271709,0.041239228099585,-0.135227039456367,-0.045715574175119,0.075232125818729,0.036254335194826,-0.101041510701180,0.012398725375533,-0.033843010663986,-0.022541185840964));
res += mul(Get(s0,-dx,0), float4x4(-0.097635217010975,-0.070208422839642,-0.120555683970451,0.021786982193589,-0.134390130639076,-0.015661621466279,-0.056659474968910,-0.109912224113941,0.028880912810564,-0.010588035918772,0.220147490501404,0.001960676629096,-0.066968381404877,0.010783520527184,0.119389370083809,0.016483673825860));
res += mul(Get(s0,-dx,dy), float4x4(-0.062618955969810,-0.012013394385576,-0.022014779970050,-0.011481091380119,0.186010226607323,-0.196486160159111,0.053553842008114,0.065739817917347,0.042846612632275,-0.065889246761799,0.006638721562922,0.076673336327076,-0.076748415827751,0.018807496875525,-0.046813074499369,0.281208693981171));
res += mul(Get(s0,0,-dy), float4x4(-0.022396232932806,0.011357015930116,0.094764687120914,0.076750941574574,0.440382450819016,0.021467722952366,-0.019145211204886,-0.080614775419235,0.100881442427635,0.018896466121078,-0.082539983093739,-0.041491854935884,-0.111551165580750,-0.066285297274590,0.008881660178304,0.061461832374334));
res += mul(Get(s0,0,0), float4x4(-0.035339817404747,-0.113890014588833,0.043844033032656,0.048601295799017,0.118682160973549,0.090947195887566,0.071559384465218,-0.132024705410004,0.245712280273438,-0.161983624100685,-0.114303752779961,0.044594705104828,0.030373329296708,0.139006108045578,0.005597038194537,0.075046271085739));
res += mul(Get(s0,0,dy), float4x4(-0.027236485853791,-0.106828883290291,0.142004847526550,0.202039659023285,0.012579160742462,0.116598099470139,0.048908788710833,-0.271512418985367,-0.051157150417566,-0.038664825260639,-0.163681074976921,-0.063080817461014,0.044609688222408,0.035272687673569,0.114221692085266,0.045624997466803));
res += mul(Get(s0,dx,-dy), float4x4(-0.032162327319384,0.018410239368677,-0.081274144351482,0.019511435180902,0.080401591956615,-0.019234880805016,0.024129278957844,0.154142543673515,-0.135683521628380,0.081613294780254,-0.086410216987133,0.115428395569324,-0.177983760833740,-0.103928796947002,-0.033065263181925,-0.025896782055497));
res += mul(Get(s0,dx,0), float4x4(0.044860202819109,0.043580554425716,0.020785162225366,0.006229379214346,-0.153931707143784,0.058611303567886,0.096629381179810,-0.068510390818119,0.122472740709782,-0.078468307852745,-0.046885441988707,0.066183649003506,0.130074277520180,0.092963896691799,-0.126111745834351,0.123488552868366));
res += mul(Get(s0,dx,dy), float4x4(0.008951744996011,-0.073941022157669,0.101556785404682,0.085641562938690,0.111479707062244,0.081897340714931,-0.037324693053961,0.048992890864611,-0.110154695808887,-0.089658670127392,-0.031977262347937,0.174032807350159,-0.065342918038368,0.113175742328167,-0.009514276869595,-0.055238373577595));
res += mul(Get(s1,-dx,-dy), float4x4(-0.122211851179600,0.008938664570451,0.042411010712385,-0.027874372899532,0.066307552158833,-0.046777840703726,-0.174136444926262,0.037326905876398,-0.016693737357855,0.065114133059978,-0.072604946792126,0.045126605778933,0.244234919548035,0.006132293958217,0.120678484439850,0.105805620551109));
res += mul(Get(s1,-dx,0), float4x4(-0.017237227410078,-0.035471901297569,0.083875007927418,0.018048377707601,-0.086712226271629,-0.051762625575066,-0.097179330885410,0.041944000869989,-0.094934679567814,-0.088283695280552,0.130072310566902,0.027499420568347,0.258386522531509,0.012492715381086,-0.015185730531812,0.052645374089479));
res += mul(Get(s1,-dx,dy), float4x4(-0.045635569840670,-0.048179246485233,0.035432353615761,0.066891074180603,0.175843983888626,-0.037379022687674,-0.104300267994404,0.048892386257648,-0.118425562977791,-0.054881580173969,0.150313496589661,0.021927034482360,0.126918062567711,0.093137241899967,0.059215575456619,-0.070399351418018));
res += mul(Get(s1,0,-dy), float4x4(0.046392560005188,-0.021820262074471,0.205344691872597,-0.042870316654444,0.094194598495960,-0.139883041381836,0.147399321198463,-0.128448605537415,0.076073579490185,0.045010540634394,-0.012888852506876,0.074225351214409,0.063090577721596,0.004526618402451,-0.040000807493925,0.068596981465816));
res += mul(Get(s1,0,0), float4x4(0.099269889295101,-0.036248557269573,0.032617714256048,0.043571565300226,-0.140780255198479,0.120757818222046,0.027243278920650,0.139577224850655,0.138089552521706,-0.180130273103714,-0.175821155309677,0.243609502911568,-0.181060925126076,-0.063499405980110,0.117047324776649,0.033927898854017));
res += mul(Get(s1,0,dy), float4x4(-0.031163638457656,-0.015835074707866,0.201354876160622,0.149930581450462,0.062850952148438,0.079985029995441,-0.169439852237701,0.125757202506065,0.232029289007187,0.259117543697357,0.090329222381115,0.060800042003393,-0.221398055553436,-0.089366234838963,-0.023679185658693,0.255713671445847));
res += mul(Get(s1,dx,-dy), float4x4(0.047051608562469,0.008743649348617,-0.079874850809574,-0.061100635677576,-0.115423120558262,-0.015512291342020,-0.004957248456776,-0.061409346759319,-0.267961174249649,0.032991688698530,-0.046447519212961,-0.014976800419390,-0.205150604248047,-0.021453326568007,0.023293796926737,0.046978041529655));
res += mul(Get(s1,dx,0), float4x4(0.158764675259590,-0.074690543115139,0.017562633380294,0.028558762744069,-0.051450125873089,0.024478679522872,-0.023266052827239,0.072605282068253,-0.154234454035759,-0.357182532548904,-0.068706117570400,0.045504327863455,0.063015423715115,0.137511610984802,-0.000278057559626,-0.080588504672050));
res += mul(Get(s1,dx,dy), float4x4(0.048185233026743,0.092137731611729,-0.069900095462799,0.156020432710648,-0.079246841371059,-0.054914116859436,-0.088651031255722,0.086270883679390,0.014618294313550,0.016080725938082,-0.028155155479908,-0.012654908932745,0.022055692970753,-0.319097638130188,0.067507036030293,0.166032537817955));
res += mul(Get(s2,-dx,-dy), float4x4(-0.138957530260086,0.020248454064131,-0.149517297744751,0.079373180866241,-0.078992933034897,-0.053321197628975,-0.058192472904921,-0.092351824045181,-0.255251705646515,0.051089547574520,-0.012333791702986,0.080333106219769,-0.272728115320206,-0.050453931093216,-0.171741202473640,0.009662007912993));
res += mul(Get(s2,-dx,0), float4x4(-0.234605044126511,0.012482832185924,0.107763759791851,0.129988387227058,0.149873107671738,0.001090059056878,0.021035505458713,-0.101659193634987,0.181689977645874,0.073386766016483,-0.245905950665474,0.143561333417892,-0.118898384273052,-0.009900454431772,0.026778291910887,0.052092924714088));
res += mul(Get(s2,-dx,dy), float4x4(-0.005360335111618,-0.059269759804010,0.064511880278587,0.167605906724930,0.208752200007439,0.024432701990008,0.009193347766995,-0.123277343809605,0.098618544638157,0.006344245746732,-0.062507018446922,0.013046989217401,-0.013790677301586,-0.019403384998441,0.162903591990471,-0.046248026192188));
res += mul(Get(s2,0,-dy), float4x4(0.132472559809685,-0.115316919982433,-0.157407298684120,0.110665298998356,0.249390453100204,0.012581578455865,-0.028148273006082,-0.191544577479362,-0.027447719126940,0.053338166326284,-0.019689150154591,0.124977052211761,-0.284989744424820,-0.057996306568384,-0.020556440576911,-0.026238273829222));
res += mul(Get(s2,0,0), float4x4(0.064358301460743,0.194096967577934,-0.070211775600910,-0.318260133266449,0.016336672008038,0.069307491183281,-0.146758109331131,-0.057164933532476,-0.037557411938906,0.144391208887100,0.073126271367073,0.001995455008000,-0.031906813383102,-0.007552675437182,-0.156961902976036,0.092870645225048));
res += mul(Get(s2,0,dy), float4x4(0.058448512107134,-0.159522533416748,-0.068104252219200,0.121860019862652,0.002762791002169,0.047417882829905,-0.226643338799477,-0.268684297800064,-0.112817578017712,0.004081434104592,-0.001775003154762,0.021011479198933,0.015921082347631,-0.057858690619469,-0.258871883153915,0.255011469125748));
res += mul(Get(s2,dx,-dy), float4x4(-0.035107381641865,-0.007738032843918,0.072391867637634,0.010163688100874,0.119357220828533,0.071683228015900,0.041466824710369,-0.052582606673241,-0.044925648719072,0.009620893746614,0.042657904326916,0.002476338529959,0.267635852098465,0.061993576586246,0.019158821552992,0.035292156040668));
res += mul(Get(s2,dx,0), float4x4(0.022829473018646,0.045195873826742,0.009977720677853,0.065185606479645,-0.110856331884861,-0.042716015130281,0.012097757309675,-0.148621529340744,-0.005624002311379,0.056923709809780,-0.073485784232616,0.033917233347893,0.371944367885590,-0.004866940435022,0.020055897533894,0.045528702437878));
res += mul(Get(s2,dx,dy), float4x4(0.034757014364004,-0.001220029778779,-0.011398068629205,0.012818126007915,-0.291744589805603,0.257642894983292,0.090526804327965,0.086157254874706,0.001557990210131,0.072880007326603,0.069408148527145,0.096431843936443,0.066339142620564,0.089546971023083,0.148590683937073,0.103812627494335));
res += mul(Get(s3,-dx,-dy), float4x4(0.071472823619843,-0.058240257203579,-0.000015668185370,-0.014481193386018,-0.195875033736229,0.010723016224802,0.088810749351978,0.075530499219894,0.187021300196648,-0.088145054876804,-0.034275274723768,-0.053689997643232,0.046762719750404,-0.006119439378381,0.049166291952133,-0.001475610421039));
res += mul(Get(s3,-dx,0), float4x4(0.134908750653267,-0.025824347510934,-0.162858143448830,-0.192933976650238,-0.040208488702774,0.091947890818119,-0.077305339276791,-0.069388151168823,0.137780845165253,-0.080831088125706,-0.173989191651344,-0.194664299488068,-0.041603252291679,-0.116594359278679,0.323296010494232,-0.170105442404747));
res += mul(Get(s3,-dx,dy), float4x4(-0.055515110492706,0.029688179492950,0.023607533425093,-0.057221125811338,0.082522489130497,-0.117482416331768,-0.071580380201340,0.303419888019562,0.003949840553105,-0.109480313956738,-0.115464031696320,-0.211608350276947,0.053103920072317,0.060994323343039,0.164989456534386,-0.071622684597969));
res += mul(Get(s3,0,-dy), float4x4(0.066135361790657,0.132826402783394,0.095049634575844,0.003583115525544,0.112554475665092,-0.104428388178349,0.124875567853451,-0.026569405570626,0.006372535135597,-0.042292073369026,0.000536500592716,-0.017763411626220,-0.188987269997597,0.024984830990434,0.054284799844027,-0.081649474799633));
res += mul(Get(s3,0,0), float4x4(-0.021832354366779,-0.103446207940578,0.080064170062542,0.067597016692162,0.043118432164192,0.142692044377327,0.263939946889877,-0.155260980129242,0.116110205650330,-0.140657916665077,0.054983716458082,-0.018971461802721,-0.138429775834084,0.050764981657267,-0.087431453168392,0.076890319585800));
res += mul(Get(s3,0,dy), float4x4(0.017296601086855,-0.029214125126600,0.023098709061742,-0.109931342303753,-0.002431669272482,-0.310123562812805,0.066558659076691,0.447926759719849,0.023291472345591,-0.092610314488411,-0.021405328065157,-0.097175486385822,-0.069876536726952,0.233260929584503,0.085234425961971,-0.145445704460144));
res += mul(Get(s3,dx,-dy), float4x4(0.049276173114777,0.000092057358415,0.106251075863838,0.050635632127523,-0.165519893169403,0.112463198602200,-0.184943914413452,0.092476606369019,0.109515435993671,-0.065794304013252,0.118626490235329,-0.056061822921038,0.073548346757889,0.040735233575106,0.043732274323702,-0.068120263516903));
res += mul(Get(s3,dx,0), float4x4(-0.000649438821711,0.010111084207892,0.031006250530481,-0.033245928585529,0.000230745383305,0.088718093931675,-0.190804928541183,-0.046257738023996,-0.004295874387026,-0.085851445794106,0.107112243771553,-0.045907247811556,0.031584180891514,0.042544018477201,0.010120445862412,-0.018364874646068));
res += mul(Get(s3,dx,dy), float4x4(0.205760478973389,-0.005745035130531,0.024755500257015,0.109412841498852,0.086040228605270,-0.125732347369194,-0.063108086585999,0.074826285243034,-0.105640381574631,0.074632458388805,0.046679753810167,0.127257719635963,-0.067813493311405,0.009730600751936,0.042921140789986,0.054453849792480));
res += mul(Get(s4,-dx,-dy), float4x4(0.161088272929192,-0.025823885574937,-0.050994604825974,0.192144170403481,0.073948413133621,-0.007937819696963,-0.008115918375552,0.026498619467020,0.106222502887249,0.027313107624650,0.037933301180601,-0.018739188089967,0.408837080001831,0.082932747900486,-0.122851021587849,0.002310598734766));
res += mul(Get(s4,-dx,0), float4x4(-0.002437992021441,0.030148204416037,0.025654908269644,-0.040597394108772,0.038202688097954,-0.082062810659409,-0.285279512405396,-0.043612293899059,0.151624515652657,-0.008080908097327,-0.149918884038925,0.012272788211703,0.206189900636673,0.084284380078316,-0.397564738988876,-0.079015240073204));
res += mul(Get(s4,-dx,dy), float4x4(-0.026425128802657,0.102263949811459,0.129051700234413,-0.073819175362587,-0.153484791517258,0.027221983298659,0.011394279077649,-0.061566714197397,0.134721517562866,0.020672915503383,-0.145825281739235,0.104970499873161,-0.030466752126813,0.107546418905258,-0.171201676130295,-0.095590814948082));
res += mul(Get(s4,0,-dy), float4x4(0.084625728428364,0.003787496592849,0.117971219122410,0.008790230378509,0.169944360852242,-0.031734444200993,-0.038478095084429,-0.038325563073158,-0.064720340073109,0.042651262134314,0.155172944068909,0.120773226022720,-0.074627496302128,0.123344928026199,0.121914148330688,0.051392182707787));
res += mul(Get(s4,0,0), float4x4(-0.083024151623249,0.054200757294893,0.019958475604653,-0.251701116561890,-0.025015408173203,0.090380504727364,0.113078348338604,-0.117600381374359,-0.279345929622650,-0.046995509415865,0.071948967874050,-0.051871813833714,-0.329920381307602,0.125660389661789,0.268952250480652,-0.314642876386642));
res += mul(Get(s4,0,dy), float4x4(0.093952089548111,0.003055907553062,-0.026221120730042,0.231519907712936,0.105357244610786,0.105195961892605,0.102593794465065,0.131629884243011,-0.123181708157063,0.014621979556978,-0.091418623924255,0.318478971719742,0.013370836153626,-0.358638614416122,0.173842683434486,0.570678472518921));
res += mul(Get(s4,dx,-dy), float4x4(0.081300742924213,-0.094577498733997,0.047761783003807,0.039287149906158,-0.056635495275259,0.085295684635639,0.061882868409157,-0.094372645020485,-0.142623767256737,0.039919983595610,-0.006368551868945,-0.018992764875293,0.040006265044212,0.062367029488087,-0.046456318348646,-0.003551610512659));
res += mul(Get(s4,dx,0), float4x4(0.049498751759529,-0.017104765400290,-0.007537971250713,-0.082934066653252,-0.103888675570488,0.055384512990713,-0.051153063774109,0.015201215632260,0.031098173931241,-0.080057725310326,-0.020014014095068,-0.043875705450773,-0.003283141413704,0.241162568330765,0.045842457562685,-0.150576829910278));
res += mul(Get(s4,dx,dy), float4x4(-0.046192489564419,0.010581798851490,-0.067330464720726,0.046149257570505,-0.075130596756935,0.002734142122790,-0.075009942054749,0.146712288260460,-0.005335804540664,0.043010570108891,0.067048922181129,0.056694310158491,0.022160267457366,-0.284363090991974,-0.003878502873704,0.142934516072273));
res += mul(Get(s5,-dx,-dy), float4x4(0.218742355704308,0.076271474361420,-0.016168041154742,-0.016407117247581,0.182339310646057,-0.011242324486375,-0.084245666861534,-0.038943544030190,-0.022320939227939,0.085049390792847,0.158340856432915,0.091102659702301,-0.245433017611504,0.041258521378040,0.082369662821293,0.006075333803892));
res += mul(Get(s5,-dx,0), float4x4(0.084693640470505,0.017138194292784,-0.100020051002502,0.070945121347904,0.243495315313339,0.053470093756914,-0.192826837301254,-0.080413021147251,0.050946783274412,-0.067166663706303,-0.144811078906059,0.017770096659660,-0.147267222404480,-0.027356063947082,0.137079730629921,0.045882165431976));
res += mul(Get(s5,-dx,dy), float4x4(0.034519027918577,0.042405299842358,-0.147237330675125,0.071586608886719,-0.130206018686295,0.091857939958572,0.036193452775478,-0.099525116384029,0.048457372933626,-0.008068425580859,0.044325910508633,-0.133065968751907,-0.139802321791649,-0.004454269539565,0.147951379418373,-0.029729807749391));
res += mul(Get(s5,0,-dy), float4x4(-0.052591051906347,0.031360570341349,0.098418697714806,0.021779330447316,0.057513568550348,0.073132216930389,0.060054067522287,-0.054406553506851,0.011869163252413,-0.019996935501695,0.132958799600601,-0.068873532116413,-0.064018093049526,0.021036768332124,0.054014872759581,-0.032352972775698));
res += mul(Get(s5,0,0), float4x4(-0.173921361565590,0.006984293926507,-0.350019812583923,0.184389114379883,-0.076105318963528,0.083873711526394,0.042857207357883,-0.141810983419418,-0.039801742881536,0.067529007792473,0.140460222959518,0.020780539140105,0.111182406544685,-0.046343792229891,-0.217014521360397,-0.085833922028542));
res += mul(Get(s5,0,dy), float4x4(-0.035206247121096,0.017442297190428,-0.169458195567131,0.007682754658163,-0.083796717226505,-0.042385682463646,0.151565790176392,0.187949031591415,-0.063231334090233,0.144966825842857,0.060889847576618,-0.041305851191282,0.059021577239037,-0.119380176067352,-0.138536870479584,-0.099416054785252));
res += mul(Get(s5,dx,-dy), float4x4(0.062455136328936,0.007773349527270,-0.039941225200891,0.054560497403145,-0.042729433625937,-0.104127205908298,-0.015034273266792,-0.014427115209401,-0.221723183989525,-0.059466291218996,-0.103265091776848,-0.045618284493685,-0.120196200907230,0.001599624403752,0.065440505743027,0.017414778470993));
res += mul(Get(s5,dx,0), float4x4(0.095265805721283,-0.183813482522964,0.111187040805817,-0.090051278471947,-0.097853630781174,0.066914372146130,0.042492944747210,-0.006439033895731,-0.035494126379490,0.182401210069656,-0.053569011390209,-0.030819579958916,0.210789844393730,-0.013930456712842,-0.007842411287129,0.001395446830429));
res += mul(Get(s5,dx,dy), float4x4(0.149175837635994,0.055608756840229,0.015146572142839,0.035378549247980,-0.192332610487938,-0.277898132801056,-0.056811384856701,-0.107773602008820,-0.000604244763963,-0.116846993565559,-0.030680051073432,-0.112007781863213,-0.077451385557652,0.011916539631784,0.123817682266235,-0.253837466239929));
res = max(float4(0, 0, 0, 0), res) + float4(0.028675777837634,0.327921599149704,-0.143334180116653,0.270526766777039) * min(float4(0, 0, 0, 0), res);
return res;
}