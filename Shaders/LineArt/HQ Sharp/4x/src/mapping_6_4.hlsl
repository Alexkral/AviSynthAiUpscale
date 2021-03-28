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
float4 res = float4(0.249746233224869,0.066031262278557,-0.517191410064697,-0.093860387802124);
res += mul(Get(s0,-dx,-dy), float4x4(0.155539885163307,-0.041621055454016,0.080954410135746,0.084354870021343,-0.147510886192322,0.093556784093380,0.145570248365402,0.019037408754230,0.020418377593160,0.079187750816345,-0.007021830417216,-0.002265719929710,-0.076505161821842,-0.213313579559326,-0.070277824997902,-0.030400637537241));
res += mul(Get(s0,-dx,0), float4x4(-0.029213780537248,-0.225506350398064,-0.016022155061364,0.055383980274200,0.193331524729729,-0.364356875419617,-0.245735362172127,0.139935910701752,-0.176053643226624,0.207957431674004,0.043159667402506,-0.051989812403917,-0.070076547563076,0.084825351834297,0.009629464708269,0.055063296109438));
res += mul(Get(s0,-dx,dy), float4x4(0.198316469788551,0.144679978489876,0.069945938885212,-0.066798441112041,0.166947230696678,0.116698361933231,-0.013760371133685,-0.046880267560482,-0.146293997764587,-0.021120699122548,-0.074797034263611,-0.013425160199404,0.006720543373376,-0.258869737386703,-0.034377008676529,0.109311610460281));
res += mul(Get(s0,0,-dy), float4x4(0.150757133960724,-0.097718670964241,0.104124225676060,0.297257781028748,0.075198195874691,-0.161305904388428,-0.240417420864105,-0.076184026896954,-0.082072630524635,-0.108802586793900,-0.213909253478050,0.007219209801406,0.064828470349312,-0.335710018873215,-0.345137119293213,0.080223746597767));
res += mul(Get(s0,0,0), float4x4(-0.040530554950237,0.120601162314415,-0.130660578608513,0.017477063462138,-0.264277577400208,-0.086488790810108,-0.034151989966631,-0.016456503421068,-0.086135365068913,0.165005013346672,-0.258302032947540,0.015801997855306,-0.270101428031921,0.247666299343109,0.286256372928619,0.171020343899727));
res += mul(Get(s0,0,dy), float4x4(0.253081142902374,0.104755528271198,-0.141498997807503,-0.034534920006990,-0.117474272847176,-0.087647870182991,-0.102502964437008,0.004063462838531,-0.433218359947205,0.001226951484568,-0.175649300217628,-0.068707048892975,0.002100681187585,-0.456695079803467,-0.036437828093767,0.027175886556506));
res += mul(Get(s0,dx,-dy), float4x4(-0.014609500765800,0.073719568550587,-0.043097317218781,-0.000297518039588,-0.144842192530632,-0.097539253532887,-0.178136557340622,-0.075722239911556,-0.061712443828583,0.099809788167477,-0.128111869096756,0.040975213050842,0.015283671207726,-0.132519304752350,-0.191594570875168,-0.020895212888718));
res += mul(Get(s0,dx,0), float4x4(0.300671070814133,-0.295203864574432,-0.074497714638710,0.159962475299835,0.055412378162146,0.230873540043831,-0.268970280885696,0.006574046798050,-0.058087553828955,0.135656237602234,-0.153343215584755,-0.051976110786200,-0.318307250738144,0.001941301976331,-0.020204357802868,0.189557418227196));
res += mul(Get(s0,dx,dy), float4x4(0.154206335544586,-0.260263770818710,0.031170867383480,-0.056112937629223,0.112641252577305,-0.231685847043991,-0.123854175209999,0.011339706368744,0.196877226233482,0.045282900333405,-0.146569743752480,-0.043793588876724,0.080142147839069,-0.272191613912582,-0.021773589774966,-0.014833336696029));
res += mul(Get(s1,-dx,-dy), float4x4(-0.054866749793291,0.094058126211166,0.104527272284031,0.087741702795029,-0.026687826961279,0.169700682163239,-0.006592649035156,-0.111019864678383,0.008123788051307,0.032088745385408,-0.045151408761740,-0.129940256476402,0.139881566166878,0.003759068436921,0.141967460513115,0.040559735149145));
res += mul(Get(s1,-dx,0), float4x4(-0.087256267666817,-0.170558929443359,-0.078618057072163,0.143244147300720,0.202075436711311,-0.041806485503912,0.140132814645767,0.228240624070168,0.029625037685037,0.004265019670129,0.177679017186165,-0.055931523442268,-0.070682160556316,-0.050162106752396,0.010405869223177,0.016404900699854));
res += mul(Get(s1,-dx,dy), float4x4(-0.198221474885941,0.137146860361099,0.082864679396152,0.077585533261299,0.001093524741009,-0.028841787949204,-0.040751650929451,0.023162938654423,0.199936971068382,-0.042763233184814,-0.047571513801813,0.081056661903858,-0.101366259157658,0.098878413438797,0.023228608071804,0.031133763492107));
res += mul(Get(s1,0,-dy), float4x4(0.072734043002129,0.034431092441082,0.074805758893490,0.068149693310261,0.062848053872585,-0.298996239900589,0.007203396409750,0.128124386072159,0.105701796710491,0.040400158613920,0.070315942168236,-0.335487186908722,-0.154421865940094,0.147809073328972,0.192795440554619,0.184929057955742));
res += mul(Get(s1,0,0), float4x4(-0.067951731383801,-0.355380237102509,0.340153694152832,-0.091719731688499,-0.027378881350160,0.109115853905678,0.380837410688400,-0.036098137497902,-0.010040435940027,0.046281732618809,0.393171787261963,0.205913573503494,-0.026779606938362,-0.350341081619263,-0.392998814582825,0.301219701766968));
res += mul(Get(s1,0,dy), float4x4(-0.115293391048908,0.119666509330273,0.280527979135513,0.112070344388485,-0.014311066828668,-0.207235574722290,-0.059691060334444,0.103785507380962,-0.085410870611668,-0.369946330785751,0.125828370451927,-0.037650521844625,-0.099977284669876,0.311261355876923,0.146865949034691,-0.012446618638933));
res += mul(Get(s1,dx,-dy), float4x4(0.068290948867798,0.158043518662453,0.041435789316893,0.036885578185320,0.103844277560711,0.006949171889573,-0.033185333013535,0.071217775344849,-0.102387644350529,-0.075318738818169,0.002398610347882,-0.011460696347058,-0.005056649912149,-0.044021829962730,0.072245061397552,0.107221215963364));
res += mul(Get(s1,dx,0), float4x4(-0.002550375647843,0.133239775896072,-0.016390593722463,0.104926273226738,0.207457005977631,0.170220762491226,0.098047688603401,0.094671547412872,0.078020922839642,-0.298400759696960,0.197339877486229,-0.143860787153244,-0.082200229167938,-0.183506265282631,0.121622361242771,-0.007305861450732));
res += mul(Get(s1,dx,dy), float4x4(-0.050172545015812,-0.041892513632774,0.025261342525482,0.065396152436733,0.150741055607796,0.104888282716274,-0.048331703990698,-0.112059451639652,-0.169672310352325,0.322019726037979,0.060163803398609,0.013543577864766,-0.055167291313410,-0.022943910211325,0.122076027095318,0.008463098667562));
res += mul(Get(s2,-dx,-dy), float4x4(-0.009267323650420,0.065306045114994,0.148545026779175,0.173721596598625,0.099066525697708,0.134930372238159,0.086703464388847,-0.234849318861961,-0.167299151420593,-0.043620921671391,0.129010543227196,0.107497915625572,-0.002344219014049,-0.204880252480507,-0.137141421437263,-0.096538797020912));
res += mul(Get(s2,-dx,0), float4x4(0.004028801340610,0.047550171613693,0.057518012821674,0.000287760165520,-0.075297243893147,0.209234848618507,-0.127944752573967,-0.060577806085348,0.008336368016899,0.005027954000980,-0.125729084014893,0.195196300745010,0.062653504312038,0.005996873602271,-0.035078726708889,-0.144856244325638));
res += mul(Get(s2,-dx,dy), float4x4(0.078312769532204,0.051646102219820,-0.131375819444656,0.082442492246628,-0.158033818006516,0.231798008084297,0.008633461780846,-0.094730198383331,-0.234664291143417,0.095932379364967,0.160710945725441,-0.019476048648357,0.089187137782574,-0.147178500890732,-0.044933438301086,0.099106498062611));
res += mul(Get(s2,0,-dy), float4x4(-0.051301833242178,0.198400422930717,0.320563703775406,0.223278492689133,-0.021359898149967,0.158729821443558,0.086048074066639,-0.023202029988170,-0.084381721913815,0.004242830909789,0.136695921421051,0.084783650934696,0.010088630020618,-0.355293691158295,-0.106974698603153,-0.056556675583124));
res += mul(Get(s2,0,0), float4x4(0.119062662124634,0.071971163153648,-0.324880629777908,-0.538633704185486,0.153356328606606,0.017641279846430,-0.169672906398773,-0.177801281213760,-0.232235029339790,-0.063050895929337,0.049736060202122,-0.044631127268076,0.019959496334195,0.057601630687714,-0.089318625628948,-0.239912897348404));
res += mul(Get(s2,0,dy), float4x4(0.105503313243389,-0.316169857978821,-0.185829341411591,-0.091207429766655,-0.252310395240784,0.092648021876812,0.021418148651719,-0.059868443757296,-0.638801097869873,0.013104042038321,0.073679171502590,0.266824662685394,-0.025746088474989,0.046277474611998,0.182726562023163,0.166459828615189));
res += mul(Get(s2,dx,-dy), float4x4(0.129256680607796,-0.029775006696582,0.183454841375351,0.096918918192387,0.076014459133148,0.156792461872101,0.043374419212341,-0.205329746007919,0.052116107195616,0.084354862570763,-0.052060555666685,-0.071161285042763,0.064299538731575,0.087516538798809,-0.080700732767582,-0.030761377885938));
res += mul(Get(s2,dx,0), float4x4(0.073816493153572,-0.068230845034122,0.108339898288250,-0.007687123026699,-0.115274108946323,-0.059338834136724,0.047031413763762,-0.122655399143696,-0.111670613288879,-0.340993165969849,0.208137765526772,0.033716153353453,-0.245190367102623,-0.227008610963821,-0.181724309921265,0.024033220484853));
res += mul(Get(s2,dx,dy), float4x4(-0.012750765308738,-0.093393892049789,0.011821703054011,0.000512547791004,0.120880089700222,0.247147649526596,0.130212634801865,-0.097941376268864,-0.027947744354606,0.094583429396152,0.125011906027794,-0.010075918398798,-0.128744542598724,-0.032189801335335,0.034652166068554,-0.095621377229691));
res += mul(Get(s3,-dx,-dy), float4x4(0.066607594490051,-0.111037708818913,-0.042908072471619,-0.028971191495657,0.050545964390039,-0.001043169177137,-0.044992238283157,0.101694785058498,0.016057934612036,0.100980468094349,0.014690157957375,-0.098909266293049,-0.142166629433632,0.140323728322983,-0.061382211744785,0.098607197403908));
res += mul(Get(s3,-dx,0), float4x4(0.057922288775444,-0.140926867723465,0.061186064034700,-0.385264158248901,0.138174593448639,-0.120291553437710,-0.148367196321487,-0.065218627452850,-0.149353504180908,0.125591143965721,0.204789131879807,0.128477126359940,0.091933973133564,-0.204103991389275,0.042874049395323,0.045881535857916));
res += mul(Get(s3,-dx,dy), float4x4(0.247691631317139,-0.206079259514809,0.027245419099927,0.046406108886003,0.033967766910791,-0.083176121115685,-0.044494166970253,0.053200732916594,-0.062401074916124,-0.042157355695963,0.074093833565712,-0.129985272884369,-0.073693275451660,0.083563804626465,-0.052567929029465,-0.024846795946360));
res += mul(Get(s3,0,-dy), float4x4(0.014383092522621,-0.112080216407776,0.169098660349846,-0.035885445773602,0.133223623037338,-0.140928775072098,-0.089524954557419,-0.026621403172612,0.006905177142471,-0.013723701238632,0.097464375197887,0.129710271954536,-0.018332697451115,-0.061082452535629,-0.145123496651649,-0.211342766880989));
res += mul(Get(s3,0,0), float4x4(0.008407866582274,-0.092976875603199,0.255279004573822,-0.461930960416794,-0.300161808729172,0.141715407371521,0.099216356873512,0.069966688752174,-0.090508535504341,0.244907036423683,-0.207611113786697,0.019898671656847,-0.390949040651321,-0.135477483272552,-0.054009191691875,0.019281996414065));
res += mul(Get(s3,0,dy), float4x4(-0.063016049563885,-0.087395153939724,0.199096947908401,-0.031988367438316,-0.034885454922915,-0.008306107483804,0.237977772951126,-0.057429648935795,0.401367038488388,-0.216560766100883,-0.247234567999840,0.112651318311691,0.136754602193832,0.217148244380951,0.031188623979688,-0.062563866376877));
res += mul(Get(s3,dx,-dy), float4x4(-0.026430772617459,0.024909451603889,0.018522663041949,0.001125957584009,-0.042502511292696,-0.047524876892567,0.187990367412567,-0.026326272636652,0.084084607660770,0.191020786762238,-0.067931547760963,-0.057932503521442,0.097043313086033,-0.079061448574066,-0.180747434496880,-0.128918990492821));
res += mul(Get(s3,dx,0), float4x4(-0.073437981307507,0.047771953046322,0.124637477099895,0.161464795470238,-0.140253424644470,0.025923032313585,-0.053072765469551,-0.041501916944981,0.111276090145111,0.001150790718384,0.017767617478967,0.114047758281231,-0.012571929022670,-0.275022536516190,-0.456214874982834,-0.035960800945759));
res += mul(Get(s3,dx,dy), float4x4(-0.009396487846971,0.053397990763187,-0.028427315875888,0.070014990866184,0.430729806423187,-0.094218038022518,-0.128133088350296,0.179213374853134,-0.109618179500103,0.074354715645313,0.048118427395821,-0.035492442548275,0.225611090660095,0.034224633127451,-0.160728186368942,-0.073553636670113));
res += mul(Get(s4,-dx,-dy), float4x4(-0.068149492144585,0.116928659379482,0.003526310203597,-0.098645269870758,0.125636056065559,-0.046042330563068,0.096591211855412,0.022353047505021,-0.152257338166237,0.145353689789772,0.006969747599214,-0.002028408227488,0.168453246355057,0.086071215569973,-0.049260221421719,-0.081202201545238));
res += mul(Get(s4,-dx,0), float4x4(-0.202718675136566,0.243707463145256,0.055311363190413,-0.141883566975594,-0.521434783935547,0.128366068005562,-0.029296083375812,0.156448274850845,0.112273007631302,-0.061040896922350,-0.013187407515943,-0.025885306298733,0.167613044381142,-0.050383660942316,0.019535651430488,-0.039851482957602));
res += mul(Get(s4,-dx,dy), float4x4(-0.106261514127254,-0.160586088895798,-0.076719217002392,-0.006883148569614,0.000459626957309,-0.002633905038238,0.018080167472363,0.116931401193142,-0.028079556301236,-0.265281319618225,0.161244958639145,0.053449347615242,-0.000702026882209,0.034008555114269,0.013190342113376,-0.023658555001020));
res += mul(Get(s4,0,-dy), float4x4(-0.329655885696411,0.109988071024418,-0.045361123979092,0.241839036345482,-0.355314075946808,-0.132668301463127,0.168586388230324,0.235890746116638,0.122081972658634,0.136229395866394,0.054330606013536,-0.289155751466751,0.102029502391815,-0.110702127218246,0.085305534303188,-0.143323466181755));
res += mul(Get(s4,0,0), float4x4(0.034537691622972,0.222563654184341,-0.271268934011459,-0.027436343953013,0.230083674192429,-0.096136733889580,0.130165874958038,-0.019318919628859,0.126367315649986,-0.423074066638947,-0.051151942461729,0.019958103075624,-0.254570871591568,-0.158354893326759,0.095378264784813,0.076135970652103));
res += mul(Get(s4,0,dy), float4x4(0.124953962862492,-0.355362206697464,0.086517550051212,-0.016921447589993,-0.246294379234314,-0.244708180427551,-0.054107066243887,0.169091612100601,0.164958938956261,-0.248947769403458,-0.127157866954803,0.117872096598148,0.369188398122787,0.055051907896996,0.121172882616520,-0.090231634676456));
res += mul(Get(s4,dx,-dy), float4x4(-0.125561639666557,0.076772354543209,0.041060850024223,0.052736639976501,0.079300642013550,0.060325216501951,0.001473021344282,0.311823606491089,-0.023422358557582,-0.030318785458803,0.103302851319313,0.042914684861898,0.033309351652861,0.125471293926239,-0.076396100223064,0.013895923271775));
res += mul(Get(s4,dx,0), float4x4(-0.087533891201019,0.111018128693104,0.003391483100131,0.054898973554373,0.090855635702610,-0.232187315821648,0.242812484502792,0.102649740874767,0.092589601874352,0.064605861902237,-0.009342917241156,0.125303745269775,0.147868320345879,-0.105985648930073,0.026555992662907,0.079565472900867));
res += mul(Get(s4,dx,dy), float4x4(-0.075379736721516,-0.094333849847317,0.042833458632231,-0.062554046511650,-0.070126429200172,0.069042913615704,0.084130577743053,0.063551500439644,-0.163869962096214,-0.050314955413342,-0.070593424141407,-0.044419541954994,-0.169108763337135,0.276429712772369,0.080574825406075,-0.081754140555859));
res += mul(Get(s5,-dx,-dy), float4x4(-0.017667602747679,0.332016706466675,0.099455341696739,-0.033721726387739,-0.215887486934662,0.274584800004959,0.093311302363873,-0.107091382145882,0.086944624781609,-0.048770967870951,0.080938622355461,-0.141211286187172,-0.087145209312439,0.231162264943123,0.078792862594128,-0.120588660240173));
res += mul(Get(s5,-dx,0), float4x4(0.244502276182175,-0.332772135734558,0.091555796563625,0.191505953669548,-0.143443495035172,-0.339609622955322,0.043498404324055,0.009809878654778,0.025098329409957,-0.186581701040268,-0.078654572367668,0.039690826088190,-0.025703366845846,-0.153962433338165,0.081832759082317,0.047580957412720));
res += mul(Get(s5,-dx,dy), float4x4(-0.199337974190712,0.309550613164902,0.218037053942680,0.110200695693493,-0.158282116055489,0.011936887167394,-0.019585894420743,0.084678754210472,0.141207039356232,0.092679150402546,0.048205472528934,-0.055170997977257,0.129118040204048,0.045399233698845,0.067969344556332,-0.025221604853868));
res += mul(Get(s5,0,-dy), float4x4(0.073314107954502,0.155574351549149,0.019186299294233,0.064642369747162,0.126859888434410,0.129900529980659,-0.015958176925778,0.253982573747635,-0.128897741436958,0.202077612280846,0.057868137955666,0.173968389630318,0.308952629566193,-0.182843491435051,-0.174780279397964,0.051527034491301));
res += mul(Get(s5,0,0), float4x4(-0.113388851284981,-0.053279202431440,0.324890345335007,-0.214266121387482,-0.269420921802521,-0.140902981162071,0.083888575434685,0.181702017784119,0.149672985076904,-0.051524698734283,0.067430600523949,0.045951019972563,-0.071730397641659,0.104111842811108,0.122783258557320,-0.025808094069362));
res += mul(Get(s5,0,dy), float4x4(-0.090987578034401,0.108930163085461,0.058874636888504,-0.071402788162231,0.004069865681231,-0.212432205677032,0.220330178737640,0.039785441011190,-0.123801976442337,-0.077556259930134,-0.222928971052170,-0.039097029715776,-0.005791784264147,-0.351809024810791,0.179781004786491,-0.083628997206688));
res += mul(Get(s5,dx,-dy), float4x4(-0.000243487855187,-0.192400202155113,0.159806162118912,-0.085617288947105,-0.048717051744461,0.138915270566940,-0.022753495723009,-0.069369331002235,-0.073532730340958,0.050907600671053,-0.097898557782173,-0.089833907783031,-0.151712909340858,0.048361487686634,-0.281236320734024,-0.173227638006210));
res += mul(Get(s5,dx,0), float4x4(-0.093198366463184,0.448323786258698,0.229683488607407,0.236045837402344,-0.138980120420456,-0.027613125741482,-0.166907727718353,-0.006683152634650,-0.051388926804066,0.113687939941883,-0.069376960396767,0.097881153225899,-0.085443392395973,0.221608072519302,-0.212484002113342,0.041249454021454));
res += mul(Get(s5,dx,dy), float4x4(0.076277077198029,-0.334489285945892,0.179002374410629,0.005278381053358,0.069416984915733,0.012391045689583,-0.094309203326702,0.030948925763369,-0.155401825904846,-0.266555011272430,-0.005428810138255,-0.114522412419319,0.071047864854336,-0.151138469576836,-0.103296875953674,-0.050468284636736));
res = max(float4(0, 0, 0, 0), res) + float4(0.056008115410805,0.004632896743715,0.300628304481506,0.123238086700439) * min(float4(0, 0, 0, 0), res);
return res;
}
