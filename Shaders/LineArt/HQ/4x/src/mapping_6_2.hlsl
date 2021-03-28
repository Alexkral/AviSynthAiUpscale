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
float4 res = float4(-0.058653365820646,-0.155081391334534,0.057598058134317,0.158714443445206);
res += mul(Get(s0,-dx,-dy), float4x4(0.011155412532389,-0.274611443281174,-0.035884000360966,0.038224574178457,-0.028647573664784,0.001280959113501,-0.023211345076561,-0.154132798314095,-0.105655632913113,0.088299483060837,0.101983867585659,-0.022307503968477,0.282513648271561,-0.108853504061699,0.109869718551636,-0.134268119931221));
res += mul(Get(s0,-dx,0), float4x4(-0.094765625894070,-0.172715187072754,-0.136203721165657,-0.126036867499352,0.212823435664177,0.267267614603043,-0.142775923013687,-0.192478492856026,-0.013063490390778,-0.071722105145454,-0.038885410875082,0.097844779491425,0.004795226734132,-0.203544437885284,0.002915554912761,0.076694019138813));
res += mul(Get(s0,-dx,dy), float4x4(0.280549377202988,0.198836356401443,-0.762306213378906,-0.103726141154766,0.089895285665989,-0.225887894630432,0.089141838252544,-0.022310491651297,0.017352160066366,0.048562064766884,-0.098026975989342,0.087165229022503,-0.035293754190207,0.004248208831996,0.019625877961516,-0.054099090397358));
res += mul(Get(s0,0,-dy), float4x4(0.160566151142120,-0.255545049905777,-0.174060940742493,-0.163478255271912,0.082348391413689,-0.143517404794693,0.066788390278816,0.122771255671978,0.070466414093971,0.266824543476105,0.219108536839485,-0.117647305130959,0.002806832082570,-0.256591111421585,0.218897134065628,-0.104172445833683));
res += mul(Get(s0,0,0), float4x4(0.010372561402619,-0.382977634668350,-0.095326073467731,-0.180082380771637,0.175984397530556,0.134006977081299,-0.082434825599194,0.110571913421154,-0.026904361322522,-0.193654075264931,0.058412864804268,-0.301255643367767,-0.171426802873611,0.238469779491425,0.198283836245537,0.228258997201920));
res += mul(Get(s0,0,dy), float4x4(0.421084761619568,0.116658717393875,-0.328022211790085,0.026157330721617,0.136460691690445,-0.257977962493896,0.100817948579788,0.178951993584633,-0.196731641888618,0.316421300172806,-0.107399947941303,-0.276609539985657,0.004088952206075,0.148483321070671,-0.021218372508883,0.056927144527435));
res += mul(Get(s0,dx,-dy), float4x4(-0.019770188257098,0.009742875583470,-0.073446385562420,0.095676779747009,0.007917966693640,-0.118482604622841,-0.001137990388088,-0.039251632988453,0.005564628168941,-0.059458836913109,0.001347952871583,0.062896087765694,0.096431069076061,0.017145171761513,0.072517111897469,0.071961298584938));
res += mul(Get(s0,dx,0), float4x4(0.015460704453290,-0.165870174765587,-0.024904659017920,0.118155688047409,0.102575950324535,0.141429930925369,-0.084475062787533,-0.139765650033951,-0.087333090603352,0.019256716594100,0.133651331067085,-0.256529122591019,0.117485560476780,0.177784577012062,0.133812412619591,0.094896845519543));
res += mul(Get(s0,dx,dy), float4x4(0.062253054231405,0.010764001868665,-0.072224572300911,-0.122902758419514,0.016960468143225,-0.137394472956657,-0.130550846457481,0.018386896699667,-0.012057228945196,-0.057197619229555,0.143740609288216,-0.139693513512611,0.028051713481545,0.058247718960047,0.106012806296349,-0.183315828442574));
res += mul(Get(s1,-dx,-dy), float4x4(-0.077911637723446,0.067214369773865,0.019130084663630,0.062666513025761,-0.155587017536163,-0.029750080779195,0.213608995079994,0.008856222964823,-0.077026002109051,-0.016801241785288,-0.172757342457771,0.127602934837341,0.059004351496696,0.066296666860580,0.091669611632824,0.066428154706955));
res += mul(Get(s1,-dx,0), float4x4(-0.129998475313187,0.126249790191650,0.113564558327198,-0.038343306630850,0.009862699545920,-0.002419115044177,-0.072856873273849,0.018949771299958,0.001964155118912,0.177357360720634,0.188375607132912,0.215722590684891,0.051308121532202,0.228453874588013,0.038006123155355,0.047714866697788));
res += mul(Get(s1,-dx,dy), float4x4(-0.071899466216564,-0.043235793709755,0.087901070713997,0.098094396293163,-0.149505093693733,0.078944489359856,-0.182270452380180,-0.002809075871482,-0.013943728059530,-0.187085747718811,0.131646350026131,0.078780554234982,0.025160752236843,-0.016718709841371,-0.113744735717773,0.030855527147651));
res += mul(Get(s1,0,-dy), float4x4(0.028129059821367,-0.464519351720810,-0.025940889492631,0.256117433309555,-0.349536746740341,-0.652678430080414,0.143612504005432,0.029318043962121,0.141753703355789,-0.349987506866455,-0.259901672601700,0.128402918577194,-0.062462590634823,0.007907876744866,-0.140020832419395,0.232295870780945));
res += mul(Get(s1,0,0), float4x4(-0.131346032023430,-0.195347383618355,-0.009970405139029,0.029066910967231,0.267837643623352,0.116189718246460,-0.157596647739410,-0.319492995738983,-0.125231221318245,0.420725524425507,-0.216105297207832,0.126086995005608,-0.008012709207833,0.337278932332993,0.096685297787189,0.097436055541039));
res += mul(Get(s1,0,dy), float4x4(-0.189504086971283,-0.342710673809052,-0.294848352670670,0.170349299907684,0.008955854922533,-0.215947285294533,0.111647747457027,0.015962291508913,0.114159040153027,-0.225685700774193,0.112006328999996,0.183799624443054,-0.107895702123642,-0.050590198487043,0.165700748562813,0.040415082126856));
res += mul(Get(s1,dx,-dy), float4x4(0.028420770540833,0.077215030789375,0.140278115868568,-0.054419767111540,-0.100049354135990,0.013388025574386,-0.035636674612761,0.156657502055168,-0.266196995973587,-0.075171396136284,-0.020869821310043,-0.010770778171718,-0.012698990292847,0.132033318281174,-0.298249989748001,0.051687899976969));
res += mul(Get(s1,dx,0), float4x4(-0.054672725498676,-0.030915420502424,0.064071826636791,-0.141535714268684,-0.282303512096405,-0.035346455872059,0.179280892014503,-0.082661896944046,-0.241082429885864,0.313780009746552,0.016034930944443,-0.118873283267021,0.137526452541351,0.546630680561066,0.255481511354446,-0.081323184072971));
res += mul(Get(s1,dx,dy), float4x4(-0.046048063784838,-0.016466517001390,0.145216897130013,-0.035945877432823,0.018095875158906,0.010591990314424,0.052331011742353,0.030365038663149,-0.041322264820337,-0.168429970741272,-0.020561786368489,0.132499992847443,0.102888114750385,-0.169075176119804,0.231843888759613,0.013923156075180));
res += mul(Get(s2,-dx,-dy), float4x4(0.112880140542984,-0.045824728906155,-0.031309414654970,-0.002986034611240,-0.003226076252759,-0.201204121112823,0.019268613308668,-0.153553098440170,-0.011487060226500,0.176826164126396,0.286317706108093,-0.130249589681625,0.120462633669376,-0.039041463285685,0.198503598570824,-0.002852202393115));
res += mul(Get(s2,-dx,0), float4x4(-0.276095718145370,-0.194053247570992,0.008574691601098,0.474171876907349,0.049644920974970,0.078093640506268,-0.125400900840759,-0.140435576438904,-0.356835156679153,0.188348546624184,0.000711968052201,0.094710014760494,0.380669295787811,0.011535377241671,-0.060160499066114,0.019605550915003));
res += mul(Get(s2,-dx,dy), float4x4(-0.124166585505009,-0.032502904534340,-0.102402016520500,-0.042343378067017,0.066007904708385,-0.005813713185489,-0.081297814846039,0.170519694685936,-0.165431424975395,-0.051694430410862,0.204432874917984,-0.018667511641979,0.067789606750011,-0.039842005819082,0.022747106850147,-0.008648029528558));
res += mul(Get(s2,0,-dy), float4x4(0.149978324770927,0.039383061230183,-0.040631238371134,-0.270910531282425,0.050971757620573,-0.481051176786423,-0.006588408257812,-0.047472916543484,0.221823826432228,-0.018423046916723,0.087051354348660,-0.190291494131088,0.063686348497868,0.079149447381496,0.239355117082596,-0.036615420132875));
res += mul(Get(s2,0,0), float4x4(0.254879474639893,0.151861920952797,0.182106107473373,-0.351035147905350,0.279076397418976,-0.122420661151409,0.026048682630062,-0.451851129531860,0.052870910614729,0.090573132038116,0.059243500232697,-0.150601401925087,-0.290697574615479,0.128226324915886,-0.138585999608040,0.535452425479889));
res += mul(Get(s2,0,dy), float4x4(0.125958472490311,-0.040219254791737,0.128654882311821,0.106784909963608,-0.013749902136624,0.122193194925785,-0.241654366254807,0.097357697784901,0.007965795695782,0.016068886965513,-0.098863393068314,-0.164092317223549,0.092478498816490,0.111643813550472,0.265455186367035,0.208127275109291));
res += mul(Get(s2,dx,-dy), float4x4(0.091405980288982,0.064617753028870,-0.168460756540298,0.077013790607452,-0.084510549902916,-0.257950812578201,-0.088317118585110,0.082826055586338,0.170836761593819,0.086155697703362,0.042589519172907,-0.100058510899544,0.130230545997620,0.055622898042202,0.048836413770914,-0.175761386752129));
res += mul(Get(s2,dx,0), float4x4(0.192951411008835,0.171435132622719,-0.021054642274976,-0.325012862682343,0.016547355800867,-0.020145991817117,0.215641230344772,0.070008046925068,0.012307387776673,0.061047386378050,-0.054161678999662,-0.013972266577184,0.117247544229031,-0.091840602457523,0.130721732974052,-0.129169672727585));
res += mul(Get(s2,dx,dy), float4x4(0.075832724571228,-0.099369153380394,-0.095613174140453,-0.004240889102221,-0.019347714260221,0.124775245785713,-0.037768978625536,-0.189398124814034,-0.100782036781311,0.172199487686157,0.049773853272200,0.056415576487780,-0.108550161123276,0.137777999043465,-0.058386668562889,0.052592482417822));
res += mul(Get(s3,-dx,-dy), float4x4(-0.006560016423464,0.242440983653069,-0.004079186357558,0.045263208448887,0.057839829474688,-0.121791362762451,0.026462780311704,-0.007141890004277,-0.056463345885277,-0.119826853275299,-0.294911772012711,0.040808446705341,-0.085245132446289,0.003735203994438,0.143020212650299,0.036742698401213));
res += mul(Get(s3,-dx,0), float4x4(0.110558591783047,0.058988437056541,-0.103800617158413,-0.006694432348013,-0.216006234288216,0.178275972604752,0.053177036345005,0.087185598909855,0.077912271022797,-0.226404249668121,-0.034567609429359,-0.298201620578766,-0.115894809365273,-0.023174485191703,0.173235490918159,-0.033553127199411));
res += mul(Get(s3,-dx,dy), float4x4(-0.014628963544965,0.051036033779383,0.240990817546844,-0.132124438881874,-0.003346852026880,-0.011112388223410,0.067550681531429,-0.148208767175674,0.054428748786449,0.049722425639629,-0.277986407279968,-0.098995693027973,-0.020682426169515,0.001142779481597,-0.154303178191185,-0.038725394755602));
res += mul(Get(s3,0,-dy), float4x4(-0.053864307701588,0.198703706264496,0.115980610251427,0.061845980584621,0.058078318834305,-0.179216787219048,0.041955016553402,-0.078900866210461,-0.024115344509482,-0.223940610885620,-0.211462840437889,-0.139693632721901,-0.196332797408104,-0.393759548664093,-0.126354336738586,-0.190938100218773));
res += mul(Get(s3,0,0), float4x4(0.465093016624451,0.153241753578186,0.093573875725269,-0.228138431906700,-0.026852836832404,0.328854620456696,-0.151658803224564,0.023854855448008,-0.015562432818115,-0.237459510564804,0.222827240824699,-0.308874964714050,-0.110051237046719,-0.024052686989307,0.390360862016678,0.017779156565666));
res += mul(Get(s3,0,dy), float4x4(0.046464420855045,-0.190070331096649,-0.088751234114170,0.020717144012451,0.031185442581773,-0.221210658550262,0.191313594579697,0.225234925746918,-0.292645633220673,0.228304550051689,-0.103745646774769,-0.096534766256809,-0.249652743339539,0.064493946731091,-0.166585043072701,0.000909443187993));
res += mul(Get(s3,dx,-dy), float4x4(0.137862846255302,-0.107766091823578,-0.041507743299007,0.018813710659742,0.089177332818508,-0.066095113754272,0.011135420762002,-0.121127948164940,-0.006361181847751,0.013831644318998,-0.057114709168673,-0.199349164962769,0.159521788358688,-0.362312078475952,-0.069281682372093,0.117413215339184));
res += mul(Get(s3,dx,0), float4x4(0.126393646001816,0.101249285042286,-0.108202748000622,0.158548235893250,0.106312051415443,0.157126083970070,-0.054364748299122,-0.050524387508631,-0.185257986187935,0.007019953802228,-0.008274077437818,0.007281099446118,0.026182662695646,0.027566820383072,-0.071197874844074,-0.137996733188629));
res += mul(Get(s3,dx,dy), float4x4(0.012480949051678,0.029116299003363,-0.011210141703486,-0.051772769540548,0.022634342312813,-0.125083282589912,0.070964626967907,0.110623843967915,-0.195479422807693,0.047332212328911,0.266681224107742,-0.019391357898712,-0.008394431322813,-0.069355659186840,-0.116577193140984,0.040748517960310));
res += mul(Get(s4,-dx,-dy), float4x4(-0.114221699535847,-0.225542321801186,-0.189450219273567,0.184147402644157,-0.086755886673927,0.142971098423004,-0.229591786861420,-0.003207999048755,0.005885681603104,-0.163845270872116,0.185271084308624,-0.189992114901543,0.020321978256106,-0.214207395911217,-0.086821906268597,0.075777247548103));
res += mul(Get(s4,-dx,0), float4x4(-0.142382502555847,-0.063052177429199,0.194532781839371,0.148873060941696,-0.118530750274658,-0.065857931971550,-0.029734445735812,-0.290092557668686,-0.094437398016453,0.170532047748566,0.363766610622406,0.029247587546706,-0.148058176040649,-0.103181868791580,-0.186416089534760,-0.120585151016712));
res += mul(Get(s4,-dx,dy), float4x4(-0.130218923091888,0.094794280827045,-0.274751991033554,-0.076838597655296,0.043812852352858,-0.031219309195876,0.003936943598092,0.039517749100924,-0.090916246175766,0.129669472575188,-0.607276558876038,-0.023763321340084,-0.035131849348545,0.044565778225660,0.019346259534359,0.052905425429344));
res += mul(Get(s4,0,-dy), float4x4(-0.105305850505829,-0.373871952295303,-0.185983702540398,0.143431007862091,-0.200891003012657,-0.277958273887634,-0.243815690279007,0.085228905081749,-0.105238251388073,-0.076201736927032,0.077046155929565,0.035934571176767,0.078226663172245,-0.231931596994400,-0.013302253559232,0.043160598725080));
res += mul(Get(s4,0,0), float4x4(-0.235157027840614,0.115519545972347,0.218233793973923,0.109030626714230,0.074657715857029,-0.243015721440315,0.127152293920517,-0.256311595439911,0.136165246367455,-0.288098931312561,-0.131693288683891,-0.260957419872284,-0.106492549180984,0.217814400792122,-0.112352773547173,-0.271671116352081));
res += mul(Get(s4,0,dy), float4x4(-0.063997864723206,-0.169133305549622,0.053461015224457,-0.030051494017243,-0.090852215886116,0.330457448959351,-0.173774734139442,-0.072547532618046,-0.416373908519745,0.176745086908340,-0.435072302818298,-0.099092543125153,0.256291627883911,-0.125980466604233,0.228576526045799,0.112595580518246));
res += mul(Get(s4,dx,-dy), float4x4(0.002720493124798,0.178513646125793,-0.086200922727585,-0.118726767599583,-0.149599373340607,-0.161999806761742,0.006314582657069,0.019655697047710,0.011338807642460,-0.113991372287273,0.050408445298672,0.115890428423882,-0.112226650118828,-0.347594350576401,-0.248276382684708,-0.012182540260255));
res += mul(Get(s4,dx,0), float4x4(0.164403304457664,0.142747506499290,-0.217415556311607,0.162886157631874,-0.054701041430235,0.090704120695591,0.025383550673723,0.116086296737194,0.034274119883776,-0.142554536461830,-0.028310058638453,0.054038867354393,0.028264939785004,0.449383884668350,0.274462074041367,-0.124531060457230));
res += mul(Get(s4,dx,dy), float4x4(0.097719974815845,-0.228670611977577,0.088840194046497,0.286681085824966,-0.027512777596712,0.001494210911915,0.001939688343555,-0.119024977087975,-0.077792614698410,0.154210552573204,0.070575140416622,-0.015327999368310,0.063063345849514,-0.215831786394119,0.073207676410675,0.079250812530518));
res += mul(Get(s5,-dx,-dy), float4x4(0.239724159240723,-0.058839056640863,0.043010354042053,-0.094977594912052,0.016746580600739,0.106913268566132,0.311822503805161,0.028826139867306,-0.150154992938042,-0.111646719276905,0.007840946316719,0.021936967968941,0.144387036561966,-0.304313570261002,-0.204778537154198,-0.197626322507858));
res += mul(Get(s5,-dx,0), float4x4(0.127273559570313,0.129529029130936,0.020781917497516,0.129244774580002,0.069867134094238,0.222479149699211,-0.405104905366898,-0.055210642516613,-0.123842589557171,-0.138364553451538,0.040970083326101,0.367726683616638,0.121099770069122,0.223066955804825,0.206596508622169,-0.022686665877700));
res += mul(Get(s5,-dx,dy), float4x4(-0.435245662927628,0.065142869949341,-0.123046010732651,0.348450869321823,0.005094014108181,-0.046868268400431,-0.198170214891434,0.005585196428001,-0.008942849934101,0.012902136892080,-0.018713083118200,0.068836055696011,-0.053852923214436,-0.083902627229691,-0.139779120683670,0.141058042645454));
res += mul(Get(s5,0,-dy), float4x4(-0.118175625801086,-0.100534453988075,0.086517870426178,0.021195990964770,-0.004668358713388,-0.133094236254692,0.238782927393913,-0.357492536306381,-0.164017155766487,-0.291970431804657,0.014037628658116,-0.000553465273697,-0.158507987856865,-0.168605118989944,0.068228118121624,0.394159168004990));
res += mul(Get(s5,0,0), float4x4(0.295248955488205,0.361130326986313,0.045421991497278,0.109459988772869,0.550102055072784,0.168054834008217,-0.277856916189194,0.035980049520731,-0.336189806461334,0.081089168787003,0.087792426347733,0.216005429625511,-0.003207647474483,0.130179271101952,0.068638004362583,-0.029376940801740));
res += mul(Get(s5,0,dy), float4x4(-0.107512563467026,0.072023689746857,-0.543887138366699,-0.177862942218781,-0.287141919136047,-0.017738858237863,0.069220364093781,0.283673673868179,-0.128871634602547,0.103076636791229,-0.204576402902603,-0.013762030750513,0.081741906702518,0.033051300793886,-0.313337832689285,-0.097596593201160));
res += mul(Get(s5,dx,-dy), float4x4(0.086426489055157,0.075087316334248,0.004696431104094,0.089868262410164,0.064215935766697,0.021281756460667,0.070753186941147,0.201712220907211,0.078465715050697,0.000286840717308,0.025070467963815,0.056036505848169,0.155626863241196,0.362728685140610,0.111965775489807,-0.285888642072678));
res += mul(Get(s5,dx,0), float4x4(0.137175455689430,0.081509999930859,0.046081703156233,0.095685854554176,0.164972677826881,0.026896087452769,-0.028580699115992,0.072221502661705,0.006993411574513,0.102621495723724,0.187861517071724,-0.192348152399063,-0.151111587882042,-0.521401584148407,-0.089535437524319,0.157318219542503));
res += mul(Get(s5,dx,dy), float4x4(0.135303765535355,-0.012937098741531,-0.146119341254234,-0.036345321685076,-0.144553259015083,0.029706833884120,-0.091565549373627,-0.024776633828878,0.074493244290352,0.036036703735590,-0.037177510559559,-0.101759776473045,0.110549338161945,0.176489323377609,-0.158067435026169,-0.070771470665932));
res = max(float4(0, 0, 0, 0), res) + float4(0.311668872833252,-0.011967856436968,-0.029713403433561,-0.157347649335861) * min(float4(0, 0, 0, 0), res);
return res;
}
