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
float4 res = float4(-0.031709264963865,-0.139685168862343,-0.079264469444752,-0.105262383818626);
res += mul(Get(s0,-dx,-dy), float4x4(0.004497307352722,-0.101831555366516,-0.065613470971584,0.006788203492761,0.033079102635384,-0.064741089940071,-0.029497839510441,-0.045052032917738,-0.025237413123250,-0.087100498378277,-0.040337622165680,0.071932844817638,0.002557877684012,0.037857301533222,-0.004657246172428,-0.054495047777891));
res += mul(Get(s0,-dx,0), float4x4(-0.019301010295749,0.027171881869435,-0.078485980629921,-0.029080541804433,0.063487991690636,0.106471873819828,0.019534057006240,0.046205341815948,-0.057837147265673,-0.002835044171661,-0.037116430699825,-0.152268141508102,-0.088909104466438,0.082762554287910,0.014818448573351,0.047140836715698));
res += mul(Get(s0,-dx,dy), float4x4(-0.027445824816823,0.073625624179840,-0.006037057843059,-0.042820416390896,0.016885215416551,0.045988075435162,-0.009478667750955,-0.064882248640060,0.002120959805325,-0.030495895072818,-0.017898110672832,-0.099014163017273,-0.022115327417850,0.084586836397648,0.008684748783708,0.001188968424685));
res += mul(Get(s0,0,-dy), float4x4(0.075100496411324,-0.055763341486454,0.000360206933692,-0.153169497847557,-0.019670775160193,0.113700769841671,-0.014308356679976,-0.036520440131426,-0.002252019010484,-0.033871073275805,-0.080276161432266,0.106817632913589,-0.053026914596558,-0.020635215565562,0.068890661001205,0.012336036190391));
res += mul(Get(s0,0,0), float4x4(-0.081423424184322,0.091954633593559,-0.084013707935810,-0.063429318368435,-0.002038046251982,-0.003373135346919,0.609618544578552,0.016623122617602,-0.040870204567909,0.060036700218916,-0.121036291122437,-0.103784374892712,0.023391840979457,0.074952214956284,0.066125854849815,-0.122148491442204));
res += mul(Get(s0,0,dy), float4x4(0.111697360873222,0.038062743842602,0.049097605049610,-0.006294929888099,0.080935351550579,-0.044948510825634,0.221911743283272,0.029983703047037,-0.047454975545406,-0.026282614096999,-0.076485492289066,0.006629421841353,0.050948675721884,-0.002838664222509,0.002299975836650,-0.072713449597359));
res += mul(Get(s0,dx,-dy), float4x4(-0.039220090955496,-0.016631351783872,0.005050086881965,0.116309903562069,-0.002197361085564,-0.053822141140699,0.030316766351461,0.009448050521314,-0.043300710618496,0.071690231561661,0.039900567382574,-0.074481993913651,-0.225541412830353,0.063957303762436,-0.000307592417812,0.186165586113930));
res += mul(Get(s0,dx,0), float4x4(-0.060536112636328,0.000471922714496,-0.061423752456903,0.021896967664361,-0.002091479953378,-0.016415070742369,0.035079821944237,-0.027717282995582,-0.071007601916790,-0.020910911262035,0.015342200174928,0.059268757700920,-0.011436223983765,0.120297908782959,-0.011738481931388,-0.298006862401962));
res += mul(Get(s0,dx,dy), float4x4(-0.065738573670387,-0.086548998951912,-0.048917837440968,0.069299556314945,0.030436342582107,-0.003681784495711,-0.015051189810038,0.035212621092796,0.032703336328268,0.007862296886742,0.027365509420633,-0.015917614102364,-0.025310404598713,0.032256241887808,-0.036374930292368,-0.027857858687639));
res += mul(Get(s1,-dx,-dy), float4x4(-0.015324950218201,0.005850788671523,-0.000858230458107,0.082463301718235,0.107831776142120,-0.028675602748990,0.028853237628937,0.080980703234673,-0.133013024926186,-0.101537011563778,-0.033771563321352,0.104270890355110,0.013403856195509,0.170247182250023,-0.012682974338531,-0.056264106184244));
res += mul(Get(s1,-dx,0), float4x4(-0.016689416021109,-0.112695977091789,0.007087734993547,0.017858618870378,0.075229771435261,-0.182837262749672,0.000111775683763,0.138669013977051,-0.102287448942661,-0.003873367793858,-0.017908444628119,0.154379382729530,-0.034586127847433,0.048671245574951,-0.003735736245289,-0.272438555955887));
res += mul(Get(s1,-dx,dy), float4x4(-0.135667994618416,-0.001481899642386,-0.019582886248827,-0.070014335215092,0.124263867735863,-0.103695191442966,-0.038614295423031,0.048576276749372,-0.004031316842884,-0.017007619142532,-0.004908261355013,-0.016697864979506,0.012482685036957,-0.016381232067943,-0.034809820353985,-0.165490880608559));
res += mul(Get(s1,0,-dy), float4x4(-0.001901677460410,0.029093626886606,0.061444379389286,0.029913295060396,0.048450388014317,-0.061369057744741,-0.005501592531800,0.125577569007874,-0.082966901361942,-0.068994440138340,-0.019577426835895,-0.144648417830467,-0.101986929774284,-0.077352136373520,-0.004984857048839,0.106540754437447));
res += mul(Get(s1,0,0), float4x4(-0.044767666608095,-0.024576429277658,-0.019513908773661,-0.122832916676998,0.068442448973656,-0.058550432324409,0.011061921715736,0.131623312830925,0.071677096188068,0.030085409060121,0.030390789732337,0.035450581461191,-0.054832499474287,0.079950861632824,0.015917468816042,-0.013579584658146));
res += mul(Get(s1,0,dy), float4x4(-0.087410531938076,-0.054544571787119,-0.027419246733189,-0.065185748040676,0.042099203914404,-0.221315339207649,-0.014242590405047,-0.033030081540346,0.064451821148396,-0.079440623521805,-0.031055968254805,0.115974694490433,-0.072056517004967,-0.006810597609729,0.041549257934093,0.222488299012184));
res += mul(Get(s1,dx,-dy), float4x4(-0.084463566541672,-0.073321133852005,0.011481320485473,-0.004566138610244,-0.042170275002718,-0.099926188588142,-0.023426625877619,0.052912771701813,0.117047786712646,0.065374515950680,-0.008800085633993,0.014188693836331,-0.035081222653389,0.005859194323421,-0.013669322244823,0.044798556715250));
res += mul(Get(s1,dx,0), float4x4(-0.029223276302218,-0.090714089572430,-0.017603674903512,0.009000830352306,-0.018982024863362,-0.038251604884863,0.017865169793367,0.170637726783752,-0.023393942043185,0.053249567747116,0.014173820614815,0.056265912950039,-0.011592273600399,0.092800796031952,0.020946480333805,-0.269694447517395));
res += mul(Get(s1,dx,dy), float4x4(-0.083811640739441,0.065889507532120,-0.040443323552608,0.004824704490602,-0.001625090138987,-0.209413051605225,0.019831374287605,0.062550432980061,-0.061476789414883,0.010645395144820,0.021703002974391,-0.020287744700909,-0.060459084808826,0.023141857236624,0.046400710940361,-0.004398336634040));
res += mul(Get(s2,-dx,-dy), float4x4(-0.049875985831022,-0.160992413759232,-0.041002318263054,-0.020511288195848,-0.041916485875845,0.080776229500771,-0.033202391117811,-0.120946861803532,0.020695514976978,-0.063327632844448,0.087032333016396,0.052981425076723,0.139356508851051,0.084360621869564,0.014713313430548,0.013875552453101));
res += mul(Get(s2,-dx,0), float4x4(-0.033338028937578,0.034850239753723,-0.006761518772691,0.078338459134102,0.021870305761695,0.091742262244225,0.027874054387212,0.182314544916153,-0.038484942167997,0.130664303898811,0.083293095231056,-0.090146698057652,0.043537475168705,-0.044195469468832,0.069474861025810,-0.016845524311066));
res += mul(Get(s2,-dx,dy), float4x4(-0.097814776003361,-0.083533719182014,-0.033674981445074,0.052017994225025,0.060957871377468,0.049782216548920,-0.026555862277746,-0.108905792236328,0.044609606266022,-0.018533363938332,0.101531229913235,-0.012664604932070,-0.059279214590788,0.002914156764746,0.031112471595407,-0.019571794196963));
res += mul(Get(s2,0,-dy), float4x4(-0.015065294690430,-0.061541695147753,-0.007028874009848,0.018014531582594,-0.058406960219145,0.069607712328434,0.025382319465280,-0.172509461641312,-0.063163898885250,-0.044325806200504,-0.024262333288789,-0.047354124486446,0.077765263617039,-0.068979762494564,0.046999447047710,-0.015842013061047));
res += mul(Get(s2,0,0), float4x4(-0.013895704410970,0.137528255581856,-0.021890781819820,0.113485008478165,0.086853072047234,0.010851614177227,-0.001303161261603,0.161167979240417,0.059366505593061,0.114994347095490,0.520191311836243,0.074093759059906,-0.008759764954448,-0.096072874963284,-0.040038689970970,-0.264725595712662));
res += mul(Get(s2,0,dy), float4x4(0.058379516005516,-0.124517321586609,-0.010125488974154,0.040916975587606,-0.076192438602448,-0.116409510374069,-0.075038895010948,0.190667062997818,0.000357175478712,-0.015391871333122,0.007661312352866,-0.017354315146804,0.016527544707060,-0.025909520685673,-0.007456271909177,0.045723501592875));
res += mul(Get(s2,dx,-dy), float4x4(-0.059685707092285,0.005807638168335,0.030238157138228,-0.051515448838472,-0.049028921872377,-0.013053843751550,-0.006375407334417,-0.066863775253296,0.033354088664055,-0.001654518884607,-0.060348037630320,0.046239849179983,-0.105913288891315,-0.042883325368166,-0.004256919957697,0.091139189898968));
res += mul(Get(s2,dx,0), float4x4(-0.133790373802185,0.051006611436605,-0.020748816430569,-0.172652721405029,-0.053754888474941,-0.121762402355671,0.066532880067825,-0.030275080353022,0.048171848058701,-0.004327133297920,0.053064078092575,-0.077844366431236,-0.110354460775852,-0.077777318656445,0.007760669104755,-0.031355805695057));
res += mul(Get(s2,dx,dy), float4x4(0.010597028769553,-0.025485884398222,-0.026680724695325,-0.081339314579964,0.042631119489670,-0.068685725331306,0.043288264423609,0.105735912919044,0.118931375443935,-0.001229238696396,-0.044648092240095,0.026297645643353,-0.185062959790230,0.058551795780659,-0.005395382642746,-0.077636770904064));
res += mul(Get(s3,-dx,-dy), float4x4(0.087768621742725,0.069396927952766,0.021879212930799,-0.067290000617504,0.007257502991706,-0.128713697195053,0.006447187624872,0.031740043312311,0.273931473493576,0.006344001740217,0.056705299764872,-0.010000915266573,0.041422035545111,0.040013298392296,0.029920361936092,0.134338349103928));
res += mul(Get(s3,-dx,0), float4x4(0.038502726703882,-0.106900595128536,0.017118982970715,0.032362133264542,-0.000779863214120,-0.111999832093716,0.031875740736723,0.023540418595076,0.108143970370293,-0.050948098301888,-0.020338352769613,-0.072185412049294,0.085826873779297,0.147039726376534,-0.003458180464804,0.056875653564930));
res += mul(Get(s3,-dx,dy), float4x4(-0.034472059458494,0.022513685747981,-0.020207418128848,-0.044143836945295,-0.029639964923263,-0.128506258130074,0.033619791269302,0.018757089972496,0.042100746184587,-0.034483887255192,-0.024892233312130,-0.048250425606966,-0.031093809753656,0.136486649513245,0.027748094871640,-0.095450654625893));
res += mul(Get(s3,0,-dy), float4x4(0.042769927531481,-0.122934736311436,-0.008013107813895,0.111185982823372,-0.041385110467672,-0.110973663628101,-0.014267724007368,0.081854410469532,0.071626432240009,0.026880173012614,0.000807525182609,-0.011347434483469,0.022885931655765,0.094419986009598,0.081998765468597,0.074457935988903));
res += mul(Get(s3,0,0), float4x4(0.079670153558254,0.237556919455528,0.089601971209049,0.187855869531631,0.039247110486031,-0.098641015589237,0.053807608783245,-0.149465411901474,0.069201804697514,-0.028233535587788,-0.010748310014606,-0.140237495303154,-0.094888478517532,0.087713375687599,-0.024332791566849,0.156307250261307));
res += mul(Get(s3,0,dy), float4x4(-0.088399343192577,-0.076115697622299,0.058690566569567,-0.079564034938812,-0.034577023237944,-0.114356711506844,0.013936136849225,0.098980791866779,-0.071872048079967,0.109078295528889,-0.017477396875620,0.136386603116989,0.091310732066631,0.069952674210072,0.020674800500274,-0.193274080753326));
res += mul(Get(s3,dx,-dy), float4x4(-0.010279805399477,0.018650166690350,0.012084170244634,-0.127366766333580,-0.027463270351291,-0.029075812548399,0.085072636604309,0.132656097412109,-0.007395206950605,0.071736946702003,-0.005664573051035,-0.138626545667648,-0.034770969301462,0.087153136730194,0.032003354281187,-0.050427719950676));
res += mul(Get(s3,dx,0), float4x4(-0.113914161920547,0.203826934099197,-0.009146339260042,0.216020032763481,-0.017606085166335,-0.229566246271133,-0.066263698041439,0.097634956240654,-0.086872875690460,-0.109483279287815,-0.021066607907414,0.020419593900442,-0.032284818589687,0.085646525025368,0.012951530516148,0.029919648543000));
res += mul(Get(s3,dx,dy), float4x4(-0.022069379687309,-0.071997299790382,0.047538775950670,0.097843103110790,0.056778110563755,-0.037823088467121,-0.033075794577599,-0.030721215531230,-0.105481758713722,0.112966500222683,-0.067050725221634,0.014753717929125,0.053703781217337,0.072746559977531,0.007858299650252,-0.026844922453165));
res += mul(Get(s4,-dx,-dy), float4x4(-0.148685961961746,0.005046275444329,-0.050401169806719,0.057531163096428,0.013690442778170,0.033634573221207,-0.030339146032929,0.044297367334366,0.056902397423983,-0.084653668105602,-0.004515990149230,0.003287817584351,-0.027466163039207,0.012634465470910,-0.014237640425563,-0.011565576307476));
res += mul(Get(s4,-dx,0), float4x4(-0.021484654396772,0.032634329050779,-0.094971358776093,0.047441337257624,-0.047675054520369,0.165703698992729,-0.000242066336796,-0.087183542549610,0.132584393024445,-0.158394351601601,-0.010574862360954,0.043932102620602,-0.085022255778313,-0.018865697085857,0.028912601992488,-0.138272449374199));
res += mul(Get(s4,-dx,dy), float4x4(-0.029578018933535,-0.062556914985180,-0.008604810573161,-0.078831315040588,0.098462104797363,0.136855483055115,-0.098534651100636,0.011726551689208,-0.019186349585652,-0.127205923199654,0.017832700163126,0.033585935831070,-0.007807903923094,-0.026581821963191,0.023511646315455,0.169384315609932));
res += mul(Get(s4,0,-dy), float4x4(-0.060003824532032,-0.006461870390922,0.042731467634439,-0.061820734292269,-0.013518225401640,0.212326556444168,0.042010653764009,-0.131497427821159,0.016808684915304,-0.088547505438328,0.000422698823968,0.102373480796814,-0.018242659047246,0.136800855398178,0.026186916977167,-0.007247132714838));
res += mul(Get(s4,0,0), float4x4(0.011560321785510,0.178779110312462,-0.015339178964496,0.252374827861786,-0.159489974379539,0.039854854345322,-0.056298680603504,-0.011585990898311,0.085053287446499,0.007367926649749,-0.005648609250784,-0.084684439003468,-0.070676311850548,-0.081800468266010,-0.014541864395142,-0.130380585789680));
res += mul(Get(s4,0,dy), float4x4(-0.017402622848749,-0.130472958087921,-0.034696482121944,0.141967639327049,0.134582594037056,0.200079202651978,-0.068835936486721,-0.177273124456406,-0.058209955692291,-0.031903546303511,0.012969301082194,-0.026346974074841,0.007549347821623,-0.023650759831071,-0.020650222897530,0.176943585276604));
res += mul(Get(s4,dx,-dy), float4x4(-0.110785745084286,0.047487307339907,-0.024272937327623,-0.178598612546921,-0.058776251971722,0.104850567877293,-0.028181755915284,-0.185290142893791,-0.150235563516617,-0.038002148270607,0.002355992095545,0.006314846687019,-0.099558934569359,-0.095407292246819,-0.015088363550603,0.030529307201505));
res += mul(Get(s4,dx,0), float4x4(0.058383390307426,0.002750949701294,0.030683839693666,-0.035490561276674,0.004231238737702,0.012495060451329,0.000299214996630,-0.264112412929535,-0.146152839064598,-0.084068395197392,-0.013950200751424,0.012825161218643,-0.045948632061481,-0.065706364810467,0.014691655524075,-0.019988302141428));
res += mul(Get(s4,dx,dy), float4x4(0.027474788948894,-0.031841609627008,0.004155708011240,0.199574828147888,-0.089903958141804,0.133448064327240,0.031666364520788,-0.132054150104523,-0.000383144477382,-0.082429371774197,-0.014748259447515,0.144326731562614,-0.061715312302113,-0.145631581544876,0.044415913522243,-0.002867496106774));
res += mul(Get(s5,-dx,-dy), float4x4(0.137034475803375,0.041853193193674,-0.019153404980898,0.006720907054842,0.018014494329691,-0.012129606679082,0.002500152215362,-0.018139861524105,-0.012113659642637,0.071768715977669,-0.035411015152931,-0.096881099045277,0.158196985721588,-0.063699319958687,0.017418023198843,-0.018838878720999));
res += mul(Get(s5,-dx,0), float4x4(0.107812047004700,0.043175052851439,0.024027988314629,0.098672591149807,-0.021702595055103,0.027244329452515,0.090510651469231,0.125798061490059,-0.038933034986258,0.032164391130209,0.137362152338028,0.065092176198959,0.237588986754417,-0.029648490250111,0.048065800219774,-0.124916300177574));
res += mul(Get(s5,-dx,dy), float4x4(0.104822829365730,-0.151176780462265,-0.003708834527060,0.024569960311055,0.025216070935130,-0.054656643420458,-0.058132823556662,-0.029539523646235,0.083955638110638,0.039238628000021,-0.014891865663230,0.019951164722443,0.084213227033615,-0.072670266032219,-0.003378964494914,0.059926599264145));
res += mul(Get(s5,0,-dy), float4x4(-0.030206881463528,-0.070417694747448,-0.022218599915504,-0.023381048813462,-0.009847734123468,-0.030818596482277,0.042434319853783,-0.041093677282333,-0.013278120197356,0.102851524949074,-0.017058352008462,-0.024750603362918,0.280125826597214,0.028128340840340,0.029919879510999,0.079396396875381));
res += mul(Get(s5,0,0), float4x4(-0.042560871690512,0.081453509628773,-0.062739640474319,-0.026823712512851,-0.002736859023571,-0.021219052374363,0.175231173634529,0.094354458153248,0.025199601426721,0.011726153083146,0.647757351398468,0.058558821678162,-0.060994658619165,-0.045124921947718,-0.024580758064985,-0.081088550388813));
res += mul(Get(s5,0,dy), float4x4(-0.007374604698271,-0.031986318528652,-0.059597134590149,-0.209499001502991,0.073255449533463,-0.004838274326175,0.100218407809734,-0.021810147911310,0.045738298445940,-0.008300418034196,0.022451333701611,0.057173527777195,0.071627989411354,0.153686046600342,-0.031480260193348,-0.040653038769960));
res += mul(Get(s5,dx,-dy), float4x4(-0.031766030937433,0.023973204195499,-0.017164707183838,-0.023276900872588,0.013325338251889,-0.048078093677759,0.003808871842921,-0.001460760482587,0.012705217115581,0.088069193065166,-0.049301769584417,-0.031876433640718,0.171654582023621,0.102452740073204,-0.072435244917870,0.080666676163673));
res += mul(Get(s5,dx,0), float4x4(0.005332558881491,0.024880873039365,0.009835704229772,0.062330037355423,0.074074789881706,0.018396263942122,0.084742024540901,-0.079883500933647,-0.064637735486031,-0.091056838631630,-0.001357020461001,-0.008733391761780,0.032644923776388,0.017147861421108,-0.090418837964535,-0.164282888174057));
res += mul(Get(s5,dx,dy), float4x4(0.003479916835204,0.082651063799858,-0.025187632068992,-0.019546786323190,0.027075506746769,-0.043162319809198,-0.072658739984035,0.034873127937317,0.002579848514870,0.033744487911463,0.015025040134788,0.064403146505356,-0.083340786397457,0.246624782681465,-0.056235115975142,0.008699595928192));
res = max(float4(0, 0, 0, 0), res) + float4(0.080313824117184,0.087377190589905,-0.022268574684858,-0.170399367809296) * min(float4(0, 0, 0, 0), res);
return res;
}
