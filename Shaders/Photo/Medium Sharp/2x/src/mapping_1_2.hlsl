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
float4 res = float4(0.093820445239544,-0.061781801283360,-0.042254783213139,-0.061405900865793);
res += mul(Get(s0,-dx,-dy), float4x4(0.024246225133538,0.022336706519127,-0.085045821964741,-0.158437907695770,-0.014159725978971,-0.042298257350922,-0.064236737787724,-0.076791211962700,-0.074990518391132,0.107616521418095,-0.034023050218821,0.277891874313354,0.062609069049358,-0.133635431528091,0.066982395946980,0.039615571498871));
res += mul(Get(s0,-dx,0), float4x4(-0.051200192421675,-0.060753393918276,0.118946433067322,0.041604146361351,-0.043222110718489,0.078941524028778,-0.123245425522327,-0.114132665097713,0.122995100915432,-0.112964652478695,-0.138331830501556,0.046952873468399,0.077997036278248,0.144252717494965,-0.043594572693110,0.162538409233093));
res += mul(Get(s0,-dx,dy), float4x4(-0.026067294180393,0.150028094649315,-0.024953410029411,0.122277200222015,-0.024001760408282,0.265067726373672,0.066273398697376,-0.221257627010345,-0.030682083219290,-0.048653125762939,0.122618794441223,-0.044321283698082,0.074943579733372,0.019533351063728,0.056677024811506,0.046649619936943));
res += mul(Get(s0,0,-dy), float4x4(0.076527670025826,-0.015181029215455,-0.000833125435747,-0.120326057076454,0.026742611080408,-0.032422177493572,-0.041123431175947,-0.118585094809532,-0.139291763305664,0.087592743337154,0.070063255727291,0.241121307015419,-0.022719971835613,0.063687928020954,-0.014689922332764,-0.029239481315017));
res += mul(Get(s0,0,0), float4x4(0.057554043829441,-0.103198967874050,0.073912061750889,-0.028575947508216,0.175579279661179,-0.101504132151604,-0.085185617208481,0.174394264817238,-0.081493295729160,-0.054987791925669,-0.135240033268929,-0.030955258756876,-0.037174392491579,0.159401804208755,0.133899912238121,0.061257284134626));
res += mul(Get(s0,0,dy), float4x4(-0.032091014087200,0.113621160387993,0.045896522700787,0.165554761886597,-0.102033592760563,0.010615374892950,0.186825245618820,-0.040863294154406,-0.020482392981648,0.036511357873678,0.009921604767442,-0.168456166982651,0.167478978633881,0.163687363266945,0.008043093606830,0.096434667706490));
res += mul(Get(s0,dx,-dy), float4x4(-0.003692523576319,-0.006465668790042,0.040695987641811,-0.120394960045815,-0.028398264199495,-0.191056191921234,-0.120497293770313,-0.154039844870567,-0.112176172435284,0.005270251072943,-0.061233647167683,0.119299471378326,-0.030697723850608,-0.190522447228432,0.000802430149633,-0.058902747929096));
res += mul(Get(s0,dx,0), float4x4(-0.060162328183651,-0.121822595596313,0.135224267840385,-0.053172666579485,-0.035518523305655,-0.155054673552513,0.025476004928350,-0.191052332520485,-0.053192660212517,0.000455633708043,-0.009808082133532,0.153934270143509,0.009012239053845,-0.060889601707458,-0.040602218359709,0.482772111892700));
res += mul(Get(s0,dx,dy), float4x4(-0.047562319785357,-0.042876619845629,-0.064812734723091,0.146179363131523,0.033776029944420,-0.156127184629440,-0.079604826867580,-0.030643571168184,-0.075173266232014,0.017549635842443,0.038104411214590,-0.073764197528362,-0.059514854103327,-0.066925175487995,-0.219959810376167,0.416448414325714));
res += mul(Get(s1,-dx,-dy), float4x4(-0.123499035835266,-0.002211716491729,-0.104755923151970,-0.065563201904297,0.004169393796474,0.026434980332851,-0.043393492698669,-0.010622171685100,0.010294882580638,-0.136479735374451,-0.146756976842880,-0.081924706697464,0.001435911515728,-0.017304047942162,-0.011978149414063,-0.049472443759441));
res += mul(Get(s1,-dx,0), float4x4(0.002279176143929,-0.156776770949364,-0.019684895873070,-0.080743849277496,0.024798247963190,0.073938153684139,0.240739926695824,-0.158282667398453,0.002690359950066,-0.307388454675674,0.121525704860687,-0.070391967892647,0.006729097571224,-0.078687354922295,0.074265196919441,0.046414334326982));
res += mul(Get(s1,-dx,dy), float4x4(0.099233157932758,-0.040437169373035,0.036480680108070,-0.085872083902359,-0.042420510202646,-0.047061078250408,-0.019567413255572,-0.059537209570408,-0.128606915473938,0.181236863136292,-0.070298731327057,0.076662175357342,0.033364936709404,-0.033019162714481,-0.032621320337057,-0.025091674178839));
res += mul(Get(s1,0,-dy), float4x4(0.055103719234467,-0.073829956352711,-0.152559757232666,-0.108849585056305,0.057156171649694,-0.171590745449066,-0.066797420382500,0.303348422050476,0.190070271492004,0.058912009000778,-0.034688696265221,-0.095300935208797,0.029483089223504,-0.097411736845970,-0.028925320133567,0.012652943842113));
res += mul(Get(s1,0,0), float4x4(0.132254496216774,0.398823887109756,-0.016557011753321,0.053837753832340,-0.027348453179002,-0.089829832315445,0.148940607905388,0.178586587309837,0.140695914626122,0.071839481592178,0.009641009382904,0.215869665145874,-0.015576420351863,0.054346285760403,0.029628323391080,0.060873128473759));
res += mul(Get(s1,0,dy), float4x4(-0.116282403469086,0.004547636955976,0.314508616924286,-0.164666056632996,-0.084422104060650,0.054346069693565,0.095473699271679,-0.233615562319756,-0.291578888893127,0.100485958158970,0.331926405429840,0.036448784172535,-0.032582823187113,-0.148222416639328,-0.152344882488251,-0.229522913694382));
res += mul(Get(s1,dx,-dy), float4x4(-0.051465224474669,-0.100749656558037,-0.122207388281822,0.187220051884651,-0.012215306051075,-0.022731408476830,-0.053375452756882,0.002236117608845,-0.030847797170281,0.046187121421099,0.028731308877468,0.055438507348299,-0.010183117352426,-0.046674538403749,0.079536609351635,0.070491597056389));
res += mul(Get(s1,dx,0), float4x4(0.146542355418205,0.131168827414513,-0.037947691977024,-0.194063723087311,-0.018333032727242,-0.055499866604805,0.004883937537670,0.167038232088089,0.259046018123627,0.095578067004681,0.003432721598074,0.106379516422749,0.026493486016989,0.025022707879543,0.060735639184713,0.025802789255977));
res += mul(Get(s1,dx,dy), float4x4(-0.134267121553421,-0.055074568837881,-0.344086289405823,0.148913905024529,0.083116352558136,-0.001741724321619,0.078551471233368,-0.014196817763150,-0.293979734182358,0.007612264249474,-0.105977557599545,-0.041989937424660,-0.102796494960785,0.012927958741784,0.014456165023148,-0.129500225186348));
res += mul(Get(s2,-dx,-dy), float4x4(-0.038271572440863,-0.061744268983603,-0.042193867266178,-0.253269672393799,-0.001187796122395,-0.009879602119327,-0.031090576201677,0.148802906274796,0.009844817221165,-0.127040266990662,0.033172376453876,-0.011356143280864,-0.123800665140152,0.165324613451958,0.023873131722212,-0.109753444790840));
res += mul(Get(s2,-dx,0), float4x4(-0.074559852480888,0.068002268671989,-0.039064120501280,-0.190166056156158,-0.043790638446808,0.057715680450201,0.052303336560726,0.035597156733274,-0.057376757264137,-0.082783013582230,-0.116578057408333,0.091729082167149,0.032882012426853,-0.254069775342941,-0.081433624029160,-0.088336415588856));
res += mul(Get(s2,-dx,dy), float4x4(0.007462450303137,-0.123496368527412,0.028689600527287,-0.167975008487701,0.012434148229659,0.147697120904922,-0.003117470303550,0.131175130605698,0.124901875853539,-0.053851503878832,0.082770124077797,-0.195662483572960,-0.067766189575195,0.001869317726232,0.230167731642723,-0.046848285943270));
res += mul(Get(s2,0,-dy), float4x4(-0.105845957994461,0.011130315251648,-0.162304103374481,0.073792167007923,0.044142961502075,-0.159398347139359,0.064791187644005,-0.023390529677272,-0.011955697089434,-0.014888796955347,0.032937932759523,-0.110003948211670,-0.028278665617108,0.148686587810516,-0.199253737926483,-0.110299929976463));
res += mul(Get(s2,0,0), float4x4(-0.010546739213169,0.105500206351280,-0.057367112487555,-0.027055371552706,-0.054459121078253,0.027265561744571,-0.036014176905155,-0.071511149406433,0.034083675593138,0.198060527443886,0.037965200841427,0.080905206501484,0.280648171901703,-0.050164386630058,-0.167518973350525,0.253447502851486));
res += mul(Get(s2,0,dy), float4x4(0.015640102326870,0.108013667166233,0.246509864926338,-0.043753210455179,-0.018946750089526,-0.132348150014877,-0.186152324080467,-0.074097394943237,-0.179543539881706,-0.067772477865219,0.197227239608765,-0.051414314657450,-0.519295632839203,0.117655679583549,0.363878935575485,-0.050728730857372));
res += mul(Get(s2,dx,-dy), float4x4(0.101848565042019,-0.135568007826805,-0.182310193777084,0.237160697579384,0.022871959954500,-0.014573176391423,-0.025071293115616,-0.105640515685081,-0.043466743081808,-0.035299263894558,-0.015205701813102,0.000591455202084,0.003626059275120,0.108843781054020,-0.076093949377537,-0.099598743021488));
res += mul(Get(s2,dx,0), float4x4(-0.012135562486947,-0.100145787000656,-0.392498254776001,0.431391894817352,0.007709026802331,-0.007989186793566,0.056366667151451,-0.093876332044601,0.070646576583385,0.134520664811134,-0.084589771926403,0.012423168867826,0.308769732713699,-0.107037343084812,-0.055259931832552,0.032954029738903));
res += mul(Get(s2,dx,dy), float4x4(-0.016007062047720,-0.070258542895317,0.378520280122757,-0.020734108984470,0.069403365254402,0.010010003112257,-0.193896830081940,0.057910930365324,0.026091603562236,0.005731181241572,-0.152734592556953,0.103971809148788,-0.082396462559700,-0.054437831044197,0.095802359282970,-0.139149621129036));
res += mul(Get(s3,-dx,-dy), float4x4(-0.026655232533813,0.009641367010772,-0.032696206122637,0.064068496227264,-0.020430760458112,-0.132682472467422,-0.144263103604317,0.206907778978348,0.028714722022414,-0.070443272590637,0.016435746103525,0.046996627002954,-0.043667867779732,0.076071120798588,0.050866167992353,-0.046640429645777));
res += mul(Get(s3,-dx,0), float4x4(0.228971391916275,-0.016845330595970,-0.104612849652767,-0.002494011074305,0.138569056987762,-0.367186188697815,-0.058517027646303,-0.214203864336014,-0.022535912692547,0.285441666841507,0.039485312998295,-0.034221954643726,0.150762349367142,-0.197120279073715,0.006523407995701,-0.086845792829990));
res += mul(Get(s3,-dx,dy), float4x4(0.017036642879248,-0.065005891025066,-0.029551470652223,0.271475523710251,0.012264152988791,0.053303480148315,-0.118153952062130,-0.132376804947853,0.020954264327884,0.051267955452204,0.109033584594727,0.034159015864134,-0.032040644437075,-0.011138522997499,0.059591993689537,0.036567896604538));
res += mul(Get(s3,0,-dy), float4x4(0.040575750172138,0.130899712443352,0.036793883889914,-0.059741470962763,0.029913811013103,0.012521244585514,-0.102669522166252,-0.105481438338757,0.051420003175735,-0.184687197208405,-0.038937848061323,-0.121543653309345,-0.115050569176674,-0.069909714162350,0.077861905097961,0.034196361899376));
res += mul(Get(s3,0,0), float4x4(0.069825701415539,-0.023444728925824,-0.011485056020319,0.015611614100635,-0.061258874833584,-0.167038872838020,-0.046146970242262,-0.025192243978381,-0.042186662554741,0.033548321574926,-0.002347862347960,-0.032932925969362,0.208962544798851,0.253971070051193,-0.132950380444527,0.087740011513233));
res += mul(Get(s3,0,dy), float4x4(0.268327504396439,0.006555668544024,-0.094751730561256,0.431893676519394,-0.031916350126266,-0.028252534568310,-0.017465384677052,-0.045990940183401,-0.056989781558514,0.125740393996239,0.014105027541518,-0.032391149550676,-0.348654955625534,-0.198063805699348,0.118669822812080,-0.079447180032730));
res += mul(Get(s3,dx,-dy), float4x4(-0.087068766355515,0.170252755284309,0.058501347899437,-0.117740772664547,-0.040002893656492,0.012393279932439,-0.011317144148052,-0.013729311525822,-0.035458482801914,-0.099418863654137,-0.045496392995119,-0.093896381556988,-0.031893122941256,0.025516187772155,0.005804615560919,0.022559069097042));
res += mul(Get(s3,dx,0), float4x4(0.053960304707289,-0.084174960851669,-0.115532025694847,0.074754625558853,-0.082748241722584,-0.127101019024849,-0.007513802498579,-0.034431692212820,0.128260403871536,-0.147890970110893,-0.010837884619832,0.013305309228599,-0.109778761863708,-0.151990771293640,-0.065467879176140,-0.038108114153147));
res += mul(Get(s3,dx,dy), float4x4(0.060269095003605,0.155719831585884,-0.088656738400459,0.221966236829758,0.096084818243980,-0.061597138643265,0.005098402034491,0.055826794356108,0.041474942117929,0.031316090375185,0.055168323218822,0.016249515116215,0.316209346055984,0.252369284629822,-0.174003124237061,0.040974508970976));
res += mul(Get(s4,-dx,-dy), float4x4(-0.074701443314552,0.115083895623684,0.005418685730547,0.019146144390106,0.005767686758190,0.170213297009468,-0.165690183639526,0.035316217690706,0.003566561732441,-0.079212687909603,0.014070994220674,-0.031837526708841,-0.162057206034660,-0.004542581271380,0.050373155623674,-0.324337661266327));
res += mul(Get(s4,-dx,0), float4x4(-0.013682204298675,-0.386588752269745,-0.010478017851710,-0.248382762074471,0.006575386039913,-0.149779811501503,-0.171991065144539,-0.119982510805130,-0.017012843862176,-0.097920410335064,-0.058761101216078,-0.056284070014954,-0.003946614917368,-0.256422579288483,-0.016571355983615,0.343747049570084));
res += mul(Get(s4,-dx,dy), float4x4(0.037311721593142,0.086210720241070,-0.034194048494101,0.120093427598476,-0.011172362603247,0.066551975905895,-0.036175377666950,-0.129376009106636,0.121850341558456,0.108938954770565,-0.038175098598003,0.003486785804853,0.054061613976955,0.099811747670174,0.245745405554771,0.039518594741821));
res += mul(Get(s4,0,-dy), float4x4(-0.094233915209770,-0.152113974094391,-0.115924276411533,-0.254797965288162,-0.161581099033356,0.160064175724983,-0.128519982099533,-0.101580671966076,0.002995790680870,0.008048866875470,-0.035765361040831,-0.025586050003767,-0.045940686017275,-0.087278231978416,0.049210250377655,0.155765265226364));
res += mul(Get(s4,0,0), float4x4(0.238300487399101,0.350643604993820,-0.080564439296722,0.212210804224014,0.252691328525543,0.005554315634072,-0.202740222215652,-0.153998598456383,-0.112579181790352,0.031310033053160,0.009855701588094,0.116908356547356,-0.101566754281521,-0.012336464598775,-0.133366778492928,-0.031938675791025));
res += mul(Get(s4,0,dy), float4x4(-0.273317188024521,-0.033222969621420,0.260619640350342,-0.044818215072155,0.010018956847489,0.079386055469513,-0.068518400192261,-0.073893032968044,-0.093242742121220,-0.001204023137689,-0.010741607286036,-0.103234767913818,-0.041249491274357,0.087704055011272,0.101387776434422,-0.063836038112640));
res += mul(Get(s4,dx,-dy), float4x4(0.176099091768265,0.006557638291270,-0.118448659777641,0.183453813195229,0.065437413752079,0.045972771942616,-0.098423242568970,-0.009307757019997,0.053713019937277,-0.137963786721230,0.004097906406969,0.002993018832058,0.030850857496262,-0.104769423604012,0.045146051794291,-0.076904907822609));
res += mul(Get(s4,dx,0), float4x4(0.131045907735825,-0.009744670242071,0.279352366924286,-0.125615835189819,0.111134625971317,-0.035734575241804,-0.184790492057800,-0.082620896399021,0.171313866972923,0.075278751552105,0.072675518691540,-0.048246908932924,-0.034255068749189,-0.142740428447723,0.039981015026569,-0.073313385248184));
res += mul(Get(s4,dx,dy), float4x4(-0.127253919839859,0.046008523553610,-0.375398576259613,-0.020500950515270,0.017164794728160,-0.022276027128100,0.061876643449068,-0.065753661096096,-0.102868556976318,-0.005553987808526,-0.021409224718809,0.102377898991108,-0.035582538694143,-0.036848101764917,-0.061696976423264,-0.029024254530668));
res += mul(Get(s5,-dx,-dy), float4x4(-0.043694127351046,0.167750418186188,0.044078849256039,0.005327543709427,-0.025073483586311,0.112035796046257,0.037673588842154,-0.009417170658708,0.058397412300110,0.101646088063717,-0.101635910570621,0.252697467803955,-0.055671148002148,-0.055086448788643,0.043295446783304,0.136320725083351));
res += mul(Get(s5,-dx,0), float4x4(-0.065768852829933,0.080601751804352,-0.003743122564629,-0.165866225957870,-0.155214354395866,0.295942634344101,-0.023381002247334,0.064998298883438,0.097494378685951,0.033297400921583,-0.252300858497620,0.362096101045609,0.192976459860802,0.447551965713501,0.088412344455719,0.206938162446022));
res += mul(Get(s5,-dx,dy), float4x4(0.147756159305573,-0.121822819113731,-0.020104970782995,-0.060952797532082,-0.017145644873381,-0.090059645473957,0.212372928857803,0.119879156351089,-0.031778942793608,0.068174019455910,0.448816120624542,0.005810673814267,0.040736965835094,-0.133700430393219,0.028905818238854,-0.073403462767601));
res += mul(Get(s5,0,-dy), float4x4(-0.137388512492180,0.105509966611862,-0.124405309557915,-0.279937177896500,-0.185811296105385,-0.078849613666534,-0.000394424801925,0.028753932565451,-0.009245194494724,0.101504556834698,-0.077688276767731,-0.116613760590553,-0.005688365083188,-0.179852157831192,-0.015558038838208,0.129631012678146));
res += mul(Get(s5,0,0), float4x4(0.092766411602497,0.193027004599571,-0.132559016346931,-0.257731199264526,0.118949458003044,-0.050855662673712,-0.217651620507240,-0.034222137182951,0.028470685705543,0.004382341168821,-0.030865035951138,-0.200379341840744,-0.328923434019089,-0.005694905761629,0.240251585841179,-0.012863927520812));
res += mul(Get(s5,0,dy), float4x4(0.148629859089851,-0.001847186591476,-0.023030590265989,-0.129913151264191,0.141855329275131,-0.011728224344552,-0.086022622883320,0.092501722276211,-0.040192484855652,0.023894023150206,-0.023093333467841,-0.083820186555386,0.348352044820786,0.117243804037571,-0.310831010341644,0.165953814983368));
res += mul(Get(s5,dx,-dy), float4x4(-0.101710870862007,0.016566993668675,-0.123626984655857,0.056082375347614,-0.028882222250104,-0.133312031626701,0.028279151767492,-0.037611562758684,0.044623170047998,0.045174095779657,-0.092858716845512,-0.093230880796909,0.016088921576738,0.000074231254985,0.025135176256299,0.018570233136415));
res += mul(Get(s5,dx,0), float4x4(0.032556366175413,-0.065962061285973,-0.172850340604782,-0.111932069063187,0.027318662032485,-0.129235535860062,0.019537711516023,0.055554028600454,0.022020990028977,0.027257284149528,-0.049264974892139,-0.133311673998833,-0.396492213010788,-0.081222809851170,0.207122787833214,0.079985573887825));
res += mul(Get(s5,dx,dy), float4x4(0.212960809469223,-0.032263159751892,0.025676956400275,0.108744770288467,0.180228844285011,-0.079527743160725,0.330763727426529,0.049922455102205,0.041595190763474,0.068246044218540,0.099830418825150,-0.072042085230350,0.134058430790901,-0.100133202970028,-0.057853881269693,-0.058764737099409));
res = max(float4(0, 0, 0, 0), res) + float4(0.581005036830902,0.128253325819969,-0.136397004127502,0.111890994012356) * min(float4(0, 0, 0, 0), res);
return res;
}
