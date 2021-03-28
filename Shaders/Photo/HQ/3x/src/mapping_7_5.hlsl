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
float4 res = float4(0.022225094959140,-0.061723642051220,-0.096775464713573,-0.182464778423309);
res += mul(Get(s0,-dx,-dy), float4x4(0.192949414253235,-0.024938810616732,0.217582821846008,0.061741840094328,-0.033838085830212,0.093219056725502,0.043928999453783,0.018859820440412,0.157964825630188,0.054475165903568,0.171842321753502,-0.022121064364910,0.442296147346497,-0.124546289443970,0.094704695045948,0.032938357442617));
res += mul(Get(s0,-dx,0), float4x4(-0.099814467132092,-0.047372553497553,0.147378310561180,0.075021676719189,-0.098561465740204,-0.043906413018703,-0.004187566228211,0.036216266453266,0.025939201936126,0.166368186473846,0.013241622596979,0.149972736835480,0.235907644033432,-0.131585657596588,-0.067928113043308,-0.008819605223835));
res += mul(Get(s0,-dx,dy), float4x4(-0.033490911126137,-0.038569360971451,0.128398016095161,-0.213630005717278,0.013987863436341,0.090975001454353,-0.002194599481300,-0.019632874056697,-0.210273429751396,0.042169596999884,0.137349560856819,0.060007371008396,-0.000022433629056,-0.368622392416000,0.216384887695313,0.229698613286018));
res += mul(Get(s0,0,-dy), float4x4(-0.145807668566704,-0.156183928251266,-0.012626094743609,0.074859499931335,0.014593509025872,0.112639069557190,0.009839002043009,0.113792523741722,0.067021504044533,0.179086476564407,0.043809808790684,0.141023695468903,0.018158243969083,-0.095524370670319,-0.069565795361996,0.160814449191093));
res += mul(Get(s0,0,0), float4x4(-0.118412747979164,-0.206325337290764,0.013226678594947,-0.112090311944485,0.145737141370773,0.192608937621117,-0.009888124652207,-0.173961862921715,0.342426687479019,0.116248197853565,-0.205025598406792,-0.277082115411758,0.264100223779678,-0.140392616391182,0.105659678578377,-0.059373527765274));
res += mul(Get(s0,0,dy), float4x4(0.024516740813851,-0.078074656426907,0.164774999022484,-0.091484509408474,-0.005640450865030,0.073681421577930,-0.055246323347092,-0.051199857145548,0.075165040791035,-0.051383145153522,0.122782722115517,0.202579364180565,0.355332344770432,-0.042788792401552,-0.003038419643417,-0.155218645930290));
res += mul(Get(s0,dx,-dy), float4x4(0.122185610234737,0.284368216991425,0.027459818869829,0.019440982490778,0.054610859602690,-0.125660747289658,-0.020645996555686,0.052565585821867,-0.125314906239510,-0.054598048329353,-0.106584705412388,0.093627005815506,0.218019306659698,0.108364485204220,-0.103163287043571,0.088967271149158));
res += mul(Get(s0,dx,0), float4x4(0.040152993053198,0.319803029298782,0.128205120563507,0.064737521111965,0.076724030077457,-0.150528267025948,0.036786332726479,-0.063504077494144,-0.087214760482311,0.104856714606285,0.014267389662564,0.066513068974018,0.176015183329582,0.150035977363586,-0.021114127710462,-0.020066151395440));
res += mul(Get(s0,dx,dy), float4x4(-0.046320956200361,0.293197572231293,0.036163121461868,-0.193779721856117,-0.034371420741081,0.003442529821768,-0.059599749743938,-0.092466011643410,-0.098098047077656,0.112849861383438,0.221509948372841,0.059595089405775,0.147279709577560,0.137824952602386,-0.075742132961750,-0.093751423060894));
res += mul(Get(s1,-dx,-dy), float4x4(0.101762130856514,-0.002195690525696,0.168262779712677,0.070446193218231,-0.024634128436446,-0.012165140360594,-0.037718683481216,0.078338958323002,-0.162945091724396,-0.045941330492496,-0.118444919586182,-0.014972534030676,0.021636713296175,0.040392413735390,-0.075525954365730,0.068104535341263));
res += mul(Get(s1,-dx,0), float4x4(0.107616171240807,0.059239685535431,-0.106396287679672,0.162625491619110,-0.056855484843254,-0.206895619630814,-0.045067019760609,-0.105039313435555,0.036089360713959,0.029622264206409,-0.158050328493118,-0.105089880526066,-0.195695787668228,-0.022370485588908,0.086085446178913,0.105666093528271));
res += mul(Get(s1,-dx,dy), float4x4(0.101197086274624,0.178578928112984,0.081647470593452,0.181268766522408,0.063044138252735,0.040097873657942,-0.100872129201889,0.006459627766162,-0.082417748868465,-0.059171874076128,-0.041315365582705,-0.097671523690224,-0.122040182352066,-0.036210462450981,-0.136112809181213,-0.090590842068195));
res += mul(Get(s1,0,-dy), float4x4(0.244226515293121,0.033827632665634,0.214978948235512,0.170354530215263,-0.212499797344208,0.112996190786362,-0.022748582065105,-0.112093083560467,0.243613034486771,-0.034194611012936,0.058336514979601,-0.057886738330126,0.014777543954551,-0.055438149720430,-0.039466600865126,0.025652159005404));
res += mul(Get(s1,0,0), float4x4(0.065332151949406,-0.065228223800659,0.033353034406900,-0.080077029764652,0.028327099978924,-0.136265769600868,-0.167980894446373,0.071004718542099,-0.156879886984825,0.059605993330479,-0.301356196403503,-0.026354931294918,0.245652556419373,-0.139869809150696,0.060683391988277,-0.090070486068726));
res += mul(Get(s1,0,dy), float4x4(-0.031917549669743,-0.085301853716373,-0.312187761068344,-0.016023769974709,-0.134425938129425,-0.094884999096394,-0.008670130744576,-0.097068168222904,0.052551187574863,0.075820617377758,-0.069016560912132,-0.030904827639461,0.201054424047470,-0.075730577111244,-0.240833044052124,0.094952873885632));
res += mul(Get(s1,dx,-dy), float4x4(-0.148847237229347,0.110667973756790,-0.206998899579048,0.078283146023750,-0.036576472222805,-0.024655448272824,0.036077089607716,-0.016185972839594,-0.089880973100662,-0.064365945756435,-0.078924946486950,0.037866115570068,0.037586856633425,-0.033826958388090,0.086962327361107,0.003786420915276));
res += mul(Get(s1,dx,0), float4x4(-0.172026276588440,0.102922156453133,0.081311501562595,-0.108882479369640,-0.000734203611501,0.159441128373146,-0.093714520335197,0.047455888241529,-0.281044930219650,0.059967122972012,-0.420997381210327,0.007101200520992,0.104680933058262,0.044027358293533,0.070542193949223,0.057644713670015));
res += mul(Get(s1,dx,dy), float4x4(0.022322718054056,-0.036733813583851,-0.090810537338257,-0.210557907819748,-0.053597055375576,0.005780869629234,0.101524136960506,0.142876118421555,0.011720200069249,0.008337277919054,-0.139136686921120,0.132681190967560,0.001040837960318,0.003958991263062,0.081550188362598,-0.023599959909916));
res += mul(Get(s2,-dx,-dy), float4x4(-0.005382041446865,0.056133393198252,-0.050979439169168,0.020627023652196,-0.230469807982445,-0.016094455495477,-0.009767316281796,-0.025197988376021,0.187979042530060,-0.011746870353818,0.020238785073161,0.062039680778980,0.013205007649958,-0.089402116835117,0.076380603015423,0.019135253503919));
res += mul(Get(s2,-dx,0), float4x4(-0.011540924198925,-0.504464745521545,-0.112301826477051,0.066043242812157,-0.131402209401131,-0.024134062230587,0.318079024553299,0.000650398025755,0.069711133837700,-0.229378327727318,0.119728125631809,0.244068548083305,0.011586109176278,-0.156334772706032,0.170237436890602,0.059625152498484));
res += mul(Get(s2,-dx,dy), float4x4(-0.017664918676019,-0.088034406304359,-0.102900639176369,0.008435316383839,0.005767504684627,-0.101103812456131,-0.130000248551369,0.005873825401068,0.086279511451721,-0.001820751931518,0.058297898620367,-0.075286813080311,0.018265660852194,0.085899516940117,0.090207129716873,0.033832602202892));
res += mul(Get(s2,0,-dy), float4x4(-0.073123738169670,-0.016930347308517,-0.054957430809736,-0.047869175672531,-0.046525198966265,-0.054101236164570,-0.188308179378510,-0.207152903079987,-0.299628674983978,0.002718530129641,-0.036668471992016,-0.038940906524658,-0.099921658635139,-0.035025052726269,0.010404730215669,0.074748799204826));
res += mul(Get(s2,0,0), float4x4(-0.173747181892395,0.413759648799896,0.063957929611206,0.084301263093948,-0.107298046350479,0.059093542397022,0.112214691936970,0.187677681446075,-0.096905931830406,-0.272224336862564,-0.117145799100399,-0.041914690285921,-0.055578738451004,0.130482718348503,0.087829612195492,0.015116763301194));
res += mul(Get(s2,0,dy), float4x4(-0.120889119803905,0.044710785150528,0.080586932599545,-0.211302891373634,-0.029344450682402,0.011670431122184,0.247629120945930,-0.034850038588047,-0.210380852222443,-0.167970582842827,0.108904518187046,-0.262790501117706,-0.029557019472122,-0.147692367434502,-0.030750446021557,0.009437002241611));
res += mul(Get(s2,dx,-dy), float4x4(0.022673340514302,0.024773916229606,0.074233688414097,-0.028283119201660,-0.059906773269176,0.001996827078983,0.210759565234184,-0.061936452984810,-0.127179414033890,-0.046761974692345,0.021223597228527,0.008987202309072,0.041143566370010,-0.004668376874179,-0.030576342716813,-0.010072512552142));
res += mul(Get(s2,dx,0), float4x4(-0.007048903964460,0.007797230966389,-0.105476610362530,0.001981728244573,0.061001542955637,-0.058523070067167,-0.178288072347641,-0.069176398217678,0.228878065943718,0.186263576149940,0.135810241103172,-0.006298612337559,0.061568688601255,0.016266608610749,-0.119235925376415,-0.088408164680004));
res += mul(Get(s2,dx,dy), float4x4(0.072629787027836,0.073067024350166,-0.052229784429073,-0.074775606393814,-0.170072257518768,0.021718828007579,0.119942516088486,-0.032999422401190,-0.170711606740952,-0.003131137927994,0.037796601653099,0.136381044983864,0.073877319693565,0.008579122833908,0.029463959857821,-0.002618517493829));
res += mul(Get(s3,-dx,-dy), float4x4(-0.155893802642822,0.047649729996920,0.030396344140172,0.040383696556091,-0.043795913457870,-0.193458899855614,0.090787075459957,0.051023110747337,-0.194278270006180,-0.002397730946541,0.027159580960870,0.084385477006435,-0.067899473011494,-0.155045405030251,-0.038770671933889,0.078821100294590));
res += mul(Get(s3,-dx,0), float4x4(0.065754532814026,0.128005728125572,0.017049476504326,0.066621266305447,0.132082566618919,-0.224803060293198,-0.103190921247005,0.173362836241722,0.208198174834251,-0.049369107931852,0.019758705049753,0.001978554995731,0.035332135856152,-0.146402522921562,0.001199898659252,-0.024478282779455));
res += mul(Get(s3,-dx,dy), float4x4(0.001369798672386,0.047121144831181,0.119064040482044,0.032637331634760,-0.066547080874443,-0.016970660537481,0.000772289815359,0.103500150144100,-0.016713457182050,-0.106043897569180,0.145323500037193,-0.061509832739830,-0.092768691480160,-0.186716958880424,-0.063090324401855,0.182592272758484));
res += mul(Get(s3,0,-dy), float4x4(-0.095219179987907,-0.247193366289139,-0.170982733368874,0.001418307889253,-0.293673902750015,0.073464892804623,0.188916578888893,0.070384636521339,-0.109089732170105,-0.083427391946316,-0.043485689908266,-0.027820250019431,0.057480968534946,-0.091342724859715,-0.014376643113792,0.050801768898964));
res += mul(Get(s3,0,0), float4x4(0.116597257554531,-0.188731446862221,0.003207769244909,-0.127116590738297,-0.018100228160620,-0.070786938071251,0.286648690700531,-0.196544513106346,-0.530170142650604,0.101573035120964,-0.154598936438560,0.291220486164093,0.065788075327873,-0.106137007474899,0.259132564067841,0.162439242005348));
res += mul(Get(s3,0,dy), float4x4(0.095616236329079,0.036609284579754,0.000942195125390,0.193423360586166,-0.030737711116672,-0.005704374052584,0.144344136118889,-0.041930545121431,-0.032928768545389,-0.070707641541958,0.100298039615154,-0.071616366505623,0.070773728191853,0.014024365693331,-0.080203726887703,-0.230515480041504));
res += mul(Get(s3,dx,-dy), float4x4(0.048552375286818,0.091456107795238,0.114350900053978,-0.075931757688522,-0.032948158681393,-0.029727905988693,0.035963967442513,0.046814061701298,0.077092990279198,0.082668691873550,0.065808862447739,-0.043772615492344,-0.033476959913969,-0.037595488131046,-0.036030299961567,-0.001685773953795));
res += mul(Get(s3,dx,0), float4x4(-0.110437028110027,0.133000135421753,0.008698403835297,-0.367894202470779,0.037582881748676,0.089414618909359,0.100298486649990,0.032913200557232,-0.176341250538826,-0.109946958720684,-0.252261698246002,-0.035800602287054,-0.135540783405304,-0.075262948870659,0.005813732277602,0.068035520613194));
res += mul(Get(s3,dx,dy), float4x4(-0.044213756918907,-0.031071560457349,0.011290973983705,-0.028537446632981,0.034985505044460,-0.024045202881098,0.157447353005409,-0.015589301474392,-0.156563952565193,0.032110430300236,-0.028861736878753,-0.007925668731332,0.063099689781666,-0.070662744343281,-0.397502809762955,0.005548533983529));
res += mul(Get(s4,-dx,-dy), float4x4(0.074925959110260,0.154522329568863,-0.064338378608227,0.050195317715406,-0.220521777868271,0.149799644947052,0.147816032171249,0.069245658814907,0.268782228231430,-0.096481263637543,0.159062251448631,0.052448496222496,0.091632917523384,-0.130356162786484,0.104141116142273,-0.024985771626234));
res += mul(Get(s4,-dx,0), float4x4(0.017661038786173,0.228990480303764,0.026129269972444,0.053479716181755,-0.194333598017693,-0.018935540691018,0.174986422061920,-0.212997376918793,0.049359194934368,0.017269521951675,0.286397486925125,0.060971211642027,0.015768742188811,0.043350815773010,-0.044684994965792,-0.000254176411545));
res += mul(Get(s4,-dx,dy), float4x4(-0.351801007986069,-0.145068794488907,0.072261758148670,-0.040848515927792,-0.238397791981697,0.002535270992666,0.134187266230583,0.076064780354500,0.024654675275087,-0.139424562454224,0.153030991554260,-0.023604042828083,-0.020216861739755,0.176919713616371,-0.050209924578667,0.033327683806419));
res += mul(Get(s4,0,-dy), float4x4(0.183005556464195,0.057961381971836,0.010922729037702,-0.063853353261948,-0.230915904045105,0.042701628059149,0.023804746568203,0.110877998173237,0.032996322959661,0.072783485054970,0.075380392372608,0.109896458685398,0.089426614344120,0.045073330402374,0.037266932427883,0.003725026734173));
res += mul(Get(s4,0,0), float4x4(0.163296505808830,0.059872139245272,-0.011536857113242,-0.051144432276487,0.047579828649759,-0.074580527842045,-0.039315003901720,-0.145882755517960,-0.050958249717951,0.153190314769745,-0.240839228034019,0.105025790631771,0.127979263663292,0.077441938221455,0.155546829104424,-0.015534185804427));
res += mul(Get(s4,0,dy), float4x4(0.053049355745316,0.090139038860798,0.084658272564411,-0.208799973130226,-0.103310890495777,-0.070417642593384,0.205137729644775,0.143751665949821,-0.109005175530910,-0.086178787052631,0.059308230876923,0.042202871292830,-0.015810523182154,0.018277434632182,-0.267813593149185,0.432135134935379));
res += mul(Get(s4,dx,-dy), float4x4(-0.061370629817247,-0.097775503993034,0.144313469529152,-0.009326480329037,-0.099730625748634,-0.066737398505211,0.037545930594206,-0.003246592590585,0.032894093543291,0.055353540927172,-0.000580180960242,-0.009349934756756,-0.027302118018270,0.060550615191460,-0.033184707164764,-0.000520800705999));
res += mul(Get(s4,dx,0), float4x4(0.016339933499694,0.014083223417401,0.009815220721066,-0.028567466884851,-0.018548768013716,0.054213829338551,0.106075733900070,0.092338740825653,-0.100633308291435,0.016047734767199,-0.201082289218903,-0.003140932181850,-0.018705880269408,-0.108364701271057,-0.014152287505567,0.073705136775970));
res += mul(Get(s4,dx,dy), float4x4(-0.027443211525679,0.028279040008783,-0.035027157515287,-0.148980796337128,-0.030022297054529,0.053785674273968,0.324819087982178,-0.024314956739545,-0.069851823151112,0.037711482495070,-0.162040814757347,-0.210285738110542,0.114555984735489,-0.001023643882945,-0.048226937651634,0.187334984540939));
res += mul(Get(s5,-dx,-dy), float4x4(-0.040049254894257,-0.005954104010016,-0.013230598531663,0.016258819028735,0.143738642334938,0.049204893410206,0.100368164479733,0.001073117717169,-0.025213604792953,-0.030421566218138,-0.068300001323223,-0.047239944338799,-0.076432801783085,0.105436213314533,-0.015166507102549,-0.011048790998757));
res += mul(Get(s5,-dx,0), float4x4(-0.133604943752289,0.137617081403732,0.053439408540726,0.067182973027229,0.145967558026314,0.044624872505665,0.091264396905899,0.040170811116695,0.038639154285192,-0.098350226879120,-0.064899116754532,0.110370211303234,0.089584328234196,0.024399515241385,0.020132699981332,0.033842414617538));
res += mul(Get(s5,-dx,dy), float4x4(-0.012980560772121,-0.027298804372549,-0.031033590435982,-0.070285856723785,0.031578872352839,0.131212666630745,0.189212888479233,-0.020540930330753,-0.119067743420601,-0.094193108379841,-0.009779053740203,0.038431227207184,0.073461428284645,-0.010293177329004,-0.096391394734383,-0.041039101779461));
res += mul(Get(s5,0,-dy), float4x4(0.084508448839188,-0.029436981305480,-0.086670964956284,0.000241293237195,-0.307832658290863,0.069839432835579,0.001381416572258,0.040287788957357,0.014996549114585,-0.054503794759512,0.008696510456502,-0.002659353194758,-0.092018656432629,-0.041039228439331,-0.177956148982048,0.039101157337427));
res += mul(Get(s5,0,0), float4x4(-0.028792016208172,-0.220041632652283,-0.319802850484848,-0.139301940798759,0.094658270478249,0.077270939946175,-0.014986440539360,-0.067888669669628,0.011926109902561,0.095590300858021,-0.118318527936935,-0.204863026738167,-0.030350072309375,0.041921757161617,-0.006957984063774,-0.058424770832062));
res += mul(Get(s5,0,dy), float4x4(0.008643849752843,-0.062553457915783,-0.046312294900417,-0.130080968141556,-0.195111081004143,0.072784826159477,-0.007706207688898,0.008632823824883,-0.120432950556278,-0.000234501654631,-0.155698701739311,0.089610420167446,-0.024657789617777,-0.045516431331635,0.132375314831734,-0.121904924511909));
res += mul(Get(s5,dx,-dy), float4x4(0.049656882882118,0.023128380998969,0.027605058625340,-0.006917093880475,0.152277246117592,-0.190796270966530,-0.020605320110917,-0.019359050318599,-0.150860309600830,-0.091338142752647,-0.067576803267002,-0.042460866272449,0.137081339955330,0.000946978339925,0.073823325335979,-0.163464397192001));
res += mul(Get(s5,dx,0), float4x4(0.080928303301334,0.036081090569496,0.083444297313690,-0.131036713719368,0.307995796203613,-0.257605016231537,-0.057547282427549,-0.088074602186680,0.122503638267517,0.262127101421356,0.025542085990310,0.061217393726110,0.177196770906448,-0.005582473240793,0.016079211607575,0.126125603914261));
res += mul(Get(s5,dx,dy), float4x4(0.036639373749495,0.002515862695873,-0.039694126695395,-0.081324689090252,0.269563764333725,-0.213794827461243,-0.110753603279591,-0.011960129253566,-0.051349025219679,0.022977197542787,-0.266230255365372,0.214489400386810,0.004996507428586,0.040835224092007,-0.022716900333762,-0.058466237038374));
res = max(float4(0, 0, 0, 0), res) + float4(0.100778959691525,0.069863758981228,0.150713160634041,0.260874360799789) * min(float4(0, 0, 0, 0), res);
return res;
}