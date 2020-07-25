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
res += mul(Get(s0,-dx,-dy), float4x4(0.001185030210763,-0.017661605030298,0.156558230519295,0.123855657875538,0.001691558281891,-0.073004104197025,-0.014625449664891,0.059363741427660,-0.000237918255152,0.054240293800831,0.023575458675623,-0.120515987277031,0.000848380615935,-0.022661196067929,0.018166031688452,0.017142416909337));
res += mul(Get(s0,-dx,0), float4x4(-0.000380033685360,0.010151025839150,0.103130444884300,-0.017971977591515,-0.000291068077786,-0.006878083571792,0.016683729365468,-0.062906004488468,0.000631737872027,0.000518182292581,0.036880239844322,-0.018707396462560,0.000149809595314,-0.011311004869640,0.011306150816381,0.019558236002922));
res += mul(Get(s0,-dx,dy), float4x4(-0.000228711069212,-0.023701716214418,0.083818025887012,0.012096832506359,-0.000929865636863,0.077242687344551,-0.012450667098165,-0.037030063569546,-0.001266460982151,-0.001452964730561,0.054581198841333,-0.044280048459768,0.000570135191083,-0.041152752935886,0.004923872649670,0.018498092889786));
res += mul(Get(s0,0,-dy), float4x4(0.000187564699445,0.034315600991249,0.181990250945091,-0.069217517971992,-0.000680259137880,-0.011171322315931,-0.004529720172286,0.103869006037712,-0.001268219435588,0.023296289145947,0.028298538178205,-0.119675509631634,-0.000320054969052,-0.032799374312162,-0.020167980343103,0.025020411238074));
res += mul(Get(s0,0,0), float4x4(-0.001100483234040,0.032493133097887,0.011918769218028,-0.141589790582657,0.001960007240996,-0.030848275870085,0.021343337371945,0.008204676210880,-0.000806310214102,-0.020447252318263,0.012124093249440,0.020831363275647,-0.000477537949337,0.010835880413651,-0.013396371155977,0.001469037495553));
res += mul(Get(s0,0,dy), float4x4(0.000110174223664,0.015542757697403,0.037167742848396,-0.035606153309345,-0.001007849117741,0.012462117709219,-0.007587759755552,-0.080737344920635,-0.000019604516638,0.004967538174242,0.054312113672495,0.104167990386486,0.001775827724487,-0.002292447490618,-0.046931773424149,-0.005299147684127));
res += mul(Get(s0,dx,-dy), float4x4(0.000841472123284,-0.017505245283246,0.059398695826530,-0.015000171959400,-0.000228786200751,0.019280821084976,0.033767770975828,0.095406763255596,-0.001001172466204,0.002560581313446,-0.011521072126925,-0.056004147976637,-0.000247944903094,0.004488524980843,0.006921230815351,-0.012590140104294));
res += mul(Get(s0,dx,0), float4x4(0.000922052189708,-0.027281936258078,0.005254277028143,-0.052495647221804,0.000603441265412,-0.012926079332829,0.070517584681511,0.103015907108784,0.001715583261102,-0.008268597535789,-0.016930880025029,-0.064930126070976,0.000411526387325,0.026607314124703,-0.018130509182811,-0.121798403561115));
res += mul(Get(s0,dx,dy), float4x4(-0.001072279177606,-0.015192093327641,0.041866842657328,-0.053886413574219,0.000118829630082,0.008092906326056,0.013339622877538,0.020941607654095,0.000513224105816,0.017183309420943,-0.028045218437910,-0.024972876533866,0.000656666001305,0.000383540173061,-0.089256957173347,-0.032027374953032));
res += mul(Get(s1,-dx,-dy), float4x4(0.000100165423646,0.035896841436625,0.025158485397696,-0.003854302223772,-0.001180243329145,-0.044866781681776,0.024268750101328,0.084927521646023,-0.000105869730760,-0.033124364912510,-0.096958421170712,-0.172085478901863,-0.000355699594365,0.051916398108006,-0.055128797888756,-0.134133040904999));
res += mul(Get(s1,-dx,0), float4x4(-0.000099736003904,0.078476227819920,0.041381854563951,-0.049082484096289,-0.000675685529131,-0.082562386989594,-0.010772242210805,0.128404572606087,0.000171085950569,0.004536449443549,-0.053903404623270,-0.058200214058161,-0.000756327761337,0.005162500310689,-0.050681628286839,-0.027409283444285));
res += mul(Get(s1,-dx,dy), float4x4(0.000696936855093,0.049951188266277,0.006555011961609,-0.026029966771603,0.000444424600573,-0.136395260691643,-0.032612495124340,-0.005883962381631,-0.000698465504684,0.081524945795536,-0.067461155354977,-0.052744045853615,0.000056019634940,0.005852219648659,-0.025001259520650,-0.055256631225348));
res += mul(Get(s1,0,-dy), float4x4(0.002026731846854,-0.014627010561526,0.011871150694788,-0.042486082762480,-0.000139156618388,0.036898043006659,0.051039855927229,0.022520642727613,-0.000175706794835,0.005415028892457,-0.087347261607647,-0.034195039421320,-0.000159852701472,0.039195906370878,-0.065514184534550,0.005987164098769));
res += mul(Get(s1,0,0), float4x4(0.000483216223074,0.033374670892954,-0.040642753243446,0.063529983162880,-0.001592770684510,0.022160194814205,0.067219734191895,-0.031074218451977,-0.000082208185631,-0.019217617809772,0.000844206078909,0.196157246828079,-0.000437487091403,-0.078396089375019,0.023962970823050,0.142472922801971));
res += mul(Get(s1,0,dy), float4x4(0.001840603770688,0.038433667272329,0.010922618210316,0.065942607820034,-0.000498968700413,-0.080997511744499,-0.012163672596216,0.039281267672777,-0.000715070520528,0.087826497852802,0.027787921950221,0.055769145488739,0.000009295782547,-0.016039688140154,0.065665453672409,0.030368164181709));
res += mul(Get(s1,dx,-dy), float4x4(0.000593716569711,-0.010775723494589,0.059405200183392,-0.004225074779242,0.000243774644332,0.129103899002075,-0.021667871624231,-0.002013222081587,-0.000683053978719,0.019428424537182,-0.017632616683841,-0.064409099519253,0.001014418900013,0.083010628819466,0.063904270529747,0.003358408575878));
res += mul(Get(s1,dx,0), float4x4(-0.000900586252101,0.026227585971355,0.009354913607240,0.078352950513363,-0.000473707623314,0.098818063735962,-0.015555270947516,0.050276711583138,-0.000584560970310,-0.003438247367740,0.050831079483032,-0.001173731405288,-0.000666549720336,0.012023204006255,0.181689798831940,-0.035391509532928));
res += mul(Get(s1,dx,dy), float4x4(-0.000243893649895,0.028028413653374,0.056256264448166,0.033551901578903,0.000549201562535,-0.014085032045841,-0.003362522460520,0.064555034041405,-0.001126851188019,0.069140195846558,-0.009327406063676,-0.022727593779564,-0.000214150641114,-0.018204668536782,0.026136010885239,-0.088689789175987));
res += mul(Get(s2,-dx,-dy), float4x4(-0.000254288577707,0.033363133668900,-0.007254643365741,-0.038422200828791,-0.000310050148983,0.038940556347370,-0.019215144217014,-0.055252093821764,-0.000071622642281,-0.052115406841040,-0.008398532867432,0.140824764966965,0.001528040971607,0.021578056737781,0.027449021115899,0.022857369855046));
res += mul(Get(s2,-dx,0), float4x4(0.000301062857034,0.051287688314915,-0.005237321369350,-0.095391929149628,-0.000756879453547,-0.066201344132423,0.048079255968332,0.058385346084833,-0.000196613851585,-0.049712568521500,0.046620156615973,0.012029054574668,0.002279080450535,0.021059570834041,0.006348240654916,0.041850559413433));
res += mul(Get(s2,-dx,dy), float4x4(-0.000813549617305,0.016920957714319,-0.009111225605011,-0.050160855054855,-0.000299626233755,-0.036740399897099,0.108257986605167,-0.032489903271198,0.000060678758018,0.017268974334002,0.034503757953644,-0.071813806891441,-0.000722479249816,0.069875128567219,-0.032610569149256,0.010098908096552));
res += mul(Get(s2,0,-dy), float4x4(-0.001314440392889,0.000976457085926,-0.022796824574471,0.027911299839616,0.000038315316488,0.016988946124911,-0.028712892904878,-0.099019922316074,0.000350544840330,0.009687411598861,0.049647808074951,0.007683135103434,0.000697671202943,0.057757709175348,0.026848675683141,-0.098191291093826));
res += mul(Get(s2,0,0), float4x4(0.000640514481347,0.041991911828518,-0.015741631388664,-0.018065150827169,-0.000716317677870,-0.041836123913527,0.002955531468615,0.102580092847347,-0.000803265313152,-0.049405481666327,0.009186651557684,0.107104949653149,-0.000820822664537,-0.018791038542986,-0.045380644500256,-0.013250095769763));
res += mul(Get(s2,0,dy), float4x4(0.000286196765956,0.010998516343534,-0.053099155426025,0.003309068968520,-0.000009014953321,-0.029162418097258,0.083648517727852,-0.050878662616014,-0.000120992146549,0.012553897686303,0.066129699349403,-0.019515797495842,-0.000432364817243,0.030471583828330,-0.009150089696050,0.053869713097811));
res += mul(Get(s2,dx,-dy), float4x4(0.000867633032613,0.033813305199146,0.017068624496460,-0.126117393374443,0.000283723144094,-0.040959119796753,-0.068565495312214,-0.107462391257286,-0.000557290506549,0.030179504305124,0.060552474111319,-0.083505064249039,-0.000022278190954,0.043061804026365,-0.000274099642411,-0.020590212196112));
res += mul(Get(s2,dx,0), float4x4(-0.000365132815205,0.011135723441839,0.010914308950305,-0.092010624706745,-0.000720491865650,0.006477961782366,-0.031601212918758,-0.061916682869196,-0.000458193797385,-0.010343268513680,0.028827974572778,-0.103852279484272,0.000065969587013,-0.020564168691635,-0.044861596077681,0.001535185729153));
res += mul(Get(s2,dx,dy), float4x4(-0.000489550468046,-0.005443608853966,-0.020411040633917,-0.023336416110396,-0.001378090237267,0.015303224325180,-0.030801273882389,-0.112914741039276,0.000954549992457,-0.007924504578114,-0.004490998107940,-0.069959782063961,0.001304341247305,0.015392249450088,0.005340803414583,0.014289556071162));
res += mul(Get(s3,-dx,-dy), float4x4(-0.000155103785801,-0.049444466829300,-0.072512127459049,0.011357495561242,-0.000334513810230,0.101794071495533,0.043787509202957,-0.056875828653574,-0.001086817006581,-0.032646149396896,-0.024910129606724,-0.008866236545146,-0.000170201077708,0.022387152537704,-0.020047556608915,0.106238923966885));
res += mul(Get(s3,-dx,0), float4x4(0.000209571720916,-0.091825313866138,-0.110042944550514,0.140881061553955,0.000729758467060,0.163960337638855,0.003944138996303,-0.139843523502350,-0.000638157187495,-0.035803362727165,0.000823883456178,0.026085048913956,-0.000222883129027,-0.014821364544332,0.007255223114043,0.133658587932587));
res += mul(Get(s3,-dx,dy), float4x4(0.000079121877206,-0.077903740108013,-0.012163477949798,0.083392709493637,-0.000676972558722,0.060160949826241,-0.021723192185163,-0.081155456602573,0.000365253014024,0.000844697351567,0.026238482445478,0.002961541526020,-0.000605265784543,0.049876108765602,0.024977844208479,0.020989263430238));
res += mul(Get(s3,0,-dy), float4x4(0.000000409695645,-0.013004594482481,-0.023533111438155,0.013606465421617,0.000698699324857,0.007675393484533,0.003757299389690,0.055462595075369,0.000301801017486,-0.004385990556329,-0.036383628845215,0.042638305574656,-0.000175684515852,-0.017702447250485,0.015788150951266,0.119400531053543));
res += mul(Get(s3,0,0), float4x4(-0.000256374332821,-0.057768460363150,-0.026540597900748,0.216631948947906,0.000296315120067,0.061545241624117,0.002597894985229,-0.019249713048339,-0.000787519325968,0.012637797743082,-0.002160343807191,0.060425948351622,0.001046447665431,-0.063851878046989,0.038677528500557,0.161585271358490));
res += mul(Get(s3,0,dy), float4x4(-0.000336571771186,-0.037875104695559,0.065685398876667,0.052817076444626,-0.000070954280091,0.061168514192104,0.000823958078399,-0.086694262921810,-0.000518772751093,0.096432060003281,0.055123675614595,-0.014893531799316,0.000278016028460,-0.024058047682047,0.043801326304674,0.097340971231461));
res += mul(Get(s3,dx,-dy), float4x4(0.001250337110832,-0.043621517717838,-0.028950136154890,-0.044284760951996,-0.001890123588964,0.081740491092205,0.015156216919422,-0.001938328379765,-0.000079400553659,0.026796616613865,0.013048350811005,-0.010390355251729,-0.000370988651412,0.021222798153758,0.067893981933594,0.088747039437294));
res += mul(Get(s3,dx,0), float4x4(0.000690679880790,-0.043720096349716,0.002114773495123,-0.031932063400745,0.001344858203083,0.041324928402901,-0.029544418677688,0.076094351708889,-0.000847205228638,0.024033460766077,0.008917215280235,0.006453223060817,0.000247799296631,-0.024292344227433,0.020775716751814,0.134396508336067));
res += mul(Get(s3,dx,dy), float4x4(0.001620266120881,-0.058856472373009,-0.035062011331320,-0.012419164180756,-0.000276557926554,0.045456025749445,0.048092637211084,0.013762239366770,0.000439178489614,0.066541478037834,0.052284300327301,-0.023058377206326,-0.000247094867518,0.013714386150241,0.016384707763791,0.098471723496914));
return max(float4(0,0,0,0), res);
}
