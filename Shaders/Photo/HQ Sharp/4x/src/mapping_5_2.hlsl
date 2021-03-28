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
float4 res = float4(-0.045736517757177,0.000348834786564,-0.014338447712362,0.069368340075016);
res += mul(Get(s0,-dx,-dy), float4x4(-0.065600275993347,0.011742823757231,0.025143552571535,-0.032479520887136,-0.115650840103626,-0.200157627463341,0.074565313756466,0.014131314121187,-0.090770855545998,0.081442363560200,-0.082120805978775,0.003894769120961,0.034615039825439,0.074764430522919,0.068031989037991,0.053549326956272));
res += mul(Get(s0,-dx,0), float4x4(-0.202869459986687,-0.119861885905266,0.122035317122936,0.169257193803787,-0.098054163157940,0.235643804073334,-0.072393655776978,0.035023983567953,0.060749009251595,0.105370379984379,0.021163741126657,-0.342452555894852,-0.001535395625979,0.115402534604073,0.079221419990063,0.051549650728703));
res += mul(Get(s0,-dx,dy), float4x4(0.117221079766750,-0.118256226181984,0.127761065959930,-0.132364228367805,0.071471750736237,0.284474462270737,-0.136775001883507,-0.036346234381199,0.118492238223553,-0.070207558572292,-0.095426268875599,-0.062540933489799,0.034357048571110,-0.145718947052956,-0.063141494989395,-0.054395955055952));
res += mul(Get(s0,0,-dy), float4x4(-0.101023212075233,-0.259729743003845,-0.192144513130188,-0.074246279895306,-0.105255179107189,-0.219792783260345,0.037844628095627,0.011567882262170,-0.147143244743347,-0.021428586915135,0.048261430114508,0.017035765573382,0.045433647930622,0.169103071093559,-0.161257907748222,-0.073283910751343));
res += mul(Get(s0,0,0), float4x4(-0.058039635419846,0.193957105278969,0.046331133693457,0.095864981412888,0.175226300954819,0.215560957789421,-0.081691846251488,-0.129314869642258,0.135742083191872,-0.066075876355171,-0.127120897173882,-0.036002263426781,-0.187125638127327,-0.070010952651501,0.429111748933792,0.072628617286682));
res += mul(Get(s0,0,dy), float4x4(0.314028710126877,-0.115214407444000,-0.045955657958984,-0.057693324983120,-0.136250168085098,-0.212625697255135,0.266135305166245,0.020268213003874,0.152112320065498,-0.077470391988754,-0.022472197189927,0.006775294430554,0.179183885455132,0.193565174937248,-0.013357046991587,0.033352885395288));
res += mul(Get(s0,dx,-dy), float4x4(-0.009767014533281,-0.110410131514072,0.044374618679285,0.007755701895803,-0.050014503300190,0.161663666367531,-0.004349091555923,-0.042245209217072,-0.101821854710579,0.072794608771801,-0.087585352361202,-0.033837955445051,0.022908143699169,-0.045143712311983,0.042171820998192,-0.012470841407776));
res += mul(Get(s0,dx,0), float4x4(-0.248965501785278,0.017025690525770,-0.287155121564865,0.194421231746674,0.144261822104454,0.224253520369530,0.197377875447273,-0.180273294448853,-0.002241693204269,-0.313776075839996,0.044978417456150,0.018700951710343,-0.011134349741042,-0.084678299725056,0.011684704571962,-0.074742376804352));
res += mul(Get(s0,dx,dy), float4x4(0.173144802451134,0.044187724590302,-0.089655049145222,0.025395886972547,-0.203205481171608,0.219683647155762,0.153230309486389,0.001339940354228,0.044703491032124,0.111816167831421,-0.078067258000374,0.058328554034233,-0.082608319818974,0.098540879786015,0.060877200216055,0.068385995924473));
res += mul(Get(s1,-dx,-dy), float4x4(0.032269358634949,-0.073337934911251,0.015956837683916,-0.054554492235184,-0.008586233481765,0.262141972780228,0.058200798928738,0.115789987146854,0.061009239405394,0.047260180115700,-0.150880560278893,-0.197268232703209,-0.175048395991325,0.059364542365074,0.138444945216179,0.116353102028370));
res += mul(Get(s1,-dx,0), float4x4(0.183853819966316,-0.042897094041109,0.347583889961243,0.032328091561794,0.015399295836687,0.319842010736465,-0.041302423924208,-0.042286004871130,0.127822309732437,-0.069328904151917,-0.127869561314583,0.171340093016624,-0.093771323561668,-0.142575919628143,0.077805191278458,0.014971284195781));
res += mul(Get(s1,-dx,dy), float4x4(0.013962135650218,-0.029954316094518,0.079461269080639,0.032763142138720,-0.114192031323910,-0.109789185225964,-0.110535494983196,0.101849794387817,-0.009696916677058,-0.246179476380348,-0.005850686226040,0.065871521830559,0.225040495395660,0.061045534908772,-0.067786782979965,0.153067827224731));
res += mul(Get(s1,0,-dy), float4x4(0.003307718550786,0.026540659368038,0.270189464092255,0.067283719778061,-0.066020883619785,0.058174826204777,0.032759558409452,0.053825326263905,0.021584557369351,-0.125916346907616,0.105501607060432,0.064110971987247,-0.156139522790909,0.021322008222342,-0.149265289306641,-0.020807005465031));
res += mul(Get(s1,0,0), float4x4(0.164032399654388,0.175659880042076,0.216345265507698,0.151984617114067,-0.041460085660219,0.042890232056379,0.041623987257481,-0.036260768771172,0.196046128869057,-0.035175386816263,-0.227695792913437,0.030356230214238,0.055515591055155,-0.109461985528469,0.375633984804153,-0.288647294044495));
res += mul(Get(s1,0,dy), float4x4(-0.075563855469227,-0.082284972071648,-0.021342381834984,-0.033021982759237,-0.202214062213898,-0.038494892418385,0.089609555900097,-0.104325085878372,-0.350834518671036,-0.077472470700741,0.123518176376820,-0.053403254598379,0.239611983299255,0.072247773408890,-0.091827794909477,-0.059492945671082));
res += mul(Get(s1,dx,-dy), float4x4(-0.013489367440343,-0.117339476943016,-0.078614622354507,-0.002155139110982,-0.009098110720515,0.029258104041219,-0.343179494142532,0.064156673848629,-0.096924968063831,-0.147931575775146,-0.221126049757004,0.124137960374355,-0.010338318534195,-0.084451168775558,0.089259676635265,0.049919828772545));
res += mul(Get(s1,dx,0), float4x4(0.145494118332863,0.113221891224384,0.188203155994415,-0.028987202793360,-0.116172634065151,-0.059808250516653,0.032783251255751,0.017435653135180,0.323025405406952,-0.000640283338726,-0.079100929200649,0.112256333231926,-0.174401298165321,0.046763613820076,-0.104264877736568,-0.091879114508629));
res += mul(Get(s1,dx,dy), float4x4(-0.043588150292635,-0.031320024281740,0.013753747567534,0.026665484532714,-0.022963112220168,0.029227728024125,-0.064949564635754,-0.128928959369659,-0.068959109485149,-0.149056956171989,-0.042328421026468,0.022440319880843,0.107757374644279,0.079679831862450,-0.038356550037861,0.047170538455248));
res += mul(Get(s2,-dx,-dy), float4x4(0.055354975163937,0.163042679429054,-0.043752148747444,0.063957311213017,-0.007310734596103,-0.058631710708141,-0.116023100912571,-0.024551980197430,-0.176565587520599,0.069120645523071,-0.023578355088830,0.093012228608131,-0.035034183412790,-0.059446681290865,0.071022227406502,-0.079963281750679));
res += mul(Get(s2,-dx,0), float4x4(-0.033903941512108,0.007950955070555,-0.084449283778667,0.055864613503218,0.077880918979645,-0.020803077146411,-0.041322428733110,-0.029982920736074,-0.025766998529434,0.035048585385084,0.039036531001329,0.094517648220062,-0.158231943845749,0.080784685909748,0.112051635980606,0.392606943845749));
res += mul(Get(s2,-dx,dy), float4x4(-0.010483538731933,-0.170633256435394,0.072836279869080,-0.048842564225197,-0.013089488260448,-0.037089422345161,0.072244636714458,0.000803851056844,0.137976363301277,-0.013700354844332,0.130222380161285,0.015735616907477,0.250952661037445,0.050438735634089,-0.122941650450230,0.295670121908188));
res += mul(Get(s2,0,-dy), float4x4(-0.120773158967495,0.010320568457246,-0.277746915817261,-0.013095444068313,-0.110636815428734,-0.193537220358849,-0.313063591718674,-0.041325464844704,-0.163040295243263,0.213387489318848,-0.177789881825447,0.019246175885201,-0.195842877030373,-0.459853172302246,0.024214083328843,-0.070304639637470));
res += mul(Get(s2,0,0), float4x4(-0.248033270239830,-0.335491329431534,-0.289720326662064,0.071881584823132,-0.052139017730951,0.009858567267656,-0.103214807808399,-0.254714787006378,0.221155196428299,-0.234210640192032,0.090180031955242,-0.334454894065857,-0.172322452068329,0.214521214365959,0.120121046900749,-0.215166032314301));
res += mul(Get(s2,0,dy), float4x4(0.267598658800125,0.022364156320691,-0.102530062198639,0.157917901873589,0.021865580230951,0.135633587837219,-0.127995327115059,0.060568895190954,0.065556943416595,-0.046374108642340,0.117091707885265,-0.165541812777519,0.396763712167740,0.287588626146317,-0.026129577308893,0.108663000166416));
res += mul(Get(s2,dx,-dy), float4x4(-0.028850199654698,0.095177449285984,-0.091116957366467,-0.022843129932880,0.013791509903967,0.099317677319050,0.159314036369324,0.101135343313217,-0.005329511594027,0.216803684830666,0.112533889710903,-0.007163953501731,-0.105065576732159,0.013960642740130,-0.267689406871796,-0.005206757690758));
res += mul(Get(s2,dx,0), float4x4(0.021010395139456,0.008462553843856,-0.040605869144201,-0.069237411022186,-0.066384181380272,-0.049606397747993,0.000852514698636,0.053351007401943,0.048916682600975,-0.120644554495811,0.167650029063225,0.068527206778526,0.066585972905159,-0.230290204286575,0.002092497656122,-0.266542881727219));
res += mul(Get(s2,dx,dy), float4x4(-0.062210448086262,0.000563099980354,0.108470343053341,0.029417073354125,-0.079723685979843,0.072352178394794,-0.108867600560188,-0.018732802942395,-0.003457967890427,-0.079574890434742,0.081240609288216,-0.029117487370968,0.082205072045326,0.129223227500916,-0.029756411910057,-0.057965595275164));
res += mul(Get(s3,-dx,-dy), float4x4(0.041700579226017,0.071515768766403,-0.076353296637535,-0.046526305377483,0.085583619773388,-0.112834751605988,0.080029167234898,0.010540426708758,-0.097880065441132,0.090234845876694,-0.022773651406169,0.117294035851955,0.046704079955816,0.030858354642987,0.047639999538660,0.050362881273031));
res += mul(Get(s3,-dx,0), float4x4(-0.227323606610298,-0.138257995247841,-0.072513476014137,-0.026110682636499,0.052249699831009,-0.132442310452461,0.007994378916919,0.109564669430256,0.393848299980164,-0.013810125179589,-0.203575789928436,-0.059579402208328,-0.053085833787918,0.004399145953357,-0.005453034304082,0.017213935032487));
res += mul(Get(s3,-dx,dy), float4x4(0.139635518193245,0.009372626431286,-0.028911439701915,0.003120780922472,-0.071641080081463,-0.000116150709800,-0.002748486818746,0.012078871019185,-0.169485315680504,0.039886917918921,-0.092937983572483,0.039647996425629,-0.016528874635696,0.011148149147630,0.033197402954102,0.051314931362867));
res += mul(Get(s3,0,-dy), float4x4(0.136856883764267,0.052790164947510,0.002557476051152,-0.028280010446906,-0.016351051628590,0.098407037556171,0.242842271924019,0.081555314362049,0.018950544297695,0.303239852190018,-0.238094344735146,-0.091208979487419,-0.029019504785538,-0.073180347681046,0.011284327134490,-0.040583997964859));
res += mul(Get(s3,0,0), float4x4(-0.068588137626648,0.151328116655350,-0.176844671368599,0.038338929414749,0.223884731531143,0.084756672382355,-0.102748572826385,0.015202511101961,0.016566876322031,-0.223433375358582,-0.251370906829834,0.125739529728889,-0.063902914524078,-0.095744200050831,0.022101560607553,0.013707168400288));
res += mul(Get(s3,0,dy), float4x4(0.123714029788971,0.014600133523345,-0.003474731463939,0.120935373008251,-0.005304940510541,-0.118632785975933,0.135406717658043,-0.047701030969620,-0.259628564119339,-0.055773764848709,-0.029056362807751,-0.067158155143261,0.117663107812405,-0.010911852121353,-0.014717957936227,-0.041737627238035));
res += mul(Get(s3,dx,-dy), float4x4(0.156325176358223,-0.045208405703306,0.007812197320163,0.013656655326486,0.047916412353516,0.022733245044947,-0.114775627851486,-0.149728447198868,0.016100989654660,0.042046118527651,0.178723722696304,0.006388856563717,-0.067168459296227,-0.102841466665268,0.169118598103523,0.072421640157700));
res += mul(Get(s3,dx,0), float4x4(0.041219785809517,-0.067586585879326,0.016378851607442,0.033628161996603,0.573879837989807,0.089544549584389,0.229508966207504,0.054813079535961,-0.196070343255997,0.096794359385967,0.034627959132195,-0.029129114001989,-0.058916471898556,-0.041122980415821,0.133363157510757,-0.002708652056754));
res += mul(Get(s3,dx,dy), float4x4(-0.039188168942928,0.051615364849567,-0.085774704813957,-0.045964539051056,0.020832750946283,-0.034291803836823,0.094166249036789,-0.130324393510818,0.158359169960022,-0.036656994372606,0.079753220081329,0.059634655714035,0.118798263370991,-0.053776413202286,-0.024594880640507,-0.015890706330538));
res += mul(Get(s4,-dx,-dy), float4x4(-0.039354380220175,0.053430814296007,-0.021844383329153,0.072447553277016,-0.074735477566719,-0.149655476212502,-0.000085417617811,-0.001751547562890,-0.132807821035385,0.075034789741039,-0.091983839869499,-0.108138605952263,-0.071440860629082,0.192251816391945,-0.181303054094315,0.069563597440720));
res += mul(Get(s4,-dx,0), float4x4(-0.057962428778410,-0.127432867884636,0.047788869589567,-0.097276784479618,-0.087916515767574,-0.333644181489944,-0.104165650904179,-0.043542250990868,-0.020336825400591,-0.131343260407448,0.069370411336422,-0.022365201264620,0.115799874067307,-0.195957943797112,-0.052416168153286,-0.236979648470879));
res += mul(Get(s4,-dx,dy), float4x4(0.185716003179550,0.097816444933414,0.004593513440341,0.025552574545145,0.112030103802681,0.033984746783972,0.231870070099831,0.047596011310816,0.089101627469063,0.060253076255322,0.057284560054541,0.051241979002953,-0.062299303710461,-0.059808660298586,-0.016856791451573,-0.047361675649881));
res += mul(Get(s4,0,-dy), float4x4(-0.013206196948886,0.120519019663334,-0.034003280103207,0.020038368180394,-0.025588009506464,0.023169312626123,0.035824500024319,-0.084618277847767,0.004472582135350,0.095189824700356,-0.009759377688169,-0.007095688953996,0.016537081450224,0.200447902083397,-0.071238167583942,0.029676655307412));
res += mul(Get(s4,0,0), float4x4(-0.080913282930851,-0.418095082044601,-0.030279017984867,0.047280490398407,-0.046489030122757,-0.094579242169857,-0.104174204170704,0.074011571705341,0.174472704529762,0.027923105284572,-0.175084039568901,0.224756926298141,0.374964892864227,0.007955200970173,0.046160649508238,0.254123777151108));
res += mul(Get(s4,0,dy), float4x4(-0.227230176329613,0.110832944512367,-0.166689172387123,0.253589957952499,-0.062843844294548,-0.183255806565285,0.036464717239141,-0.024940026924014,-0.153674140572548,-0.199722021818161,0.091845728456974,0.018786266446114,-0.359446257352829,-0.258506357669830,0.113372094929218,-0.189754769206047));
res += mul(Get(s4,dx,-dy), float4x4(0.097266830503941,0.200318083167076,0.157777220010757,-0.093196764588356,0.025498880073428,0.007139537483454,0.163655236363411,0.042633872479200,-0.035764899104834,-0.070394799113274,0.048702526837587,-0.069625467061996,0.035179171711206,0.002610088326037,-0.010355334728956,0.001113070640713));
res += mul(Get(s4,dx,0), float4x4(-0.080400571227074,-0.117353618144989,-0.059721138328314,0.041293930262327,0.019873080775142,-0.017550932243466,-0.032143309712410,0.048132695257664,0.074918493628502,-0.111243709921837,-0.098869733512402,-0.118561998009682,-0.103334933519363,0.251181125640869,0.066372863948345,0.076413325965405));
res += mul(Get(s4,dx,dy), float4x4(-0.312744736671448,-0.142715752124786,0.116913989186287,0.015479277819395,0.141164794564247,-0.088420100510120,0.185381725430489,-0.034544244408607,-0.084717385470867,0.028177125379443,0.011572156101465,0.003807344939560,0.091054916381836,-0.077974103391171,0.111602254211903,0.089929752051830));
res += mul(Get(s5,-dx,-dy), float4x4(-0.013818092644215,0.069888688623905,-0.041457619518042,-0.028564605861902,-0.110407851636410,0.016090663149953,-0.063714414834976,0.034155718982220,-0.221493035554886,0.110403634607792,-0.136522769927979,-0.018805980682373,-0.094803668558598,-0.016535365954041,-0.096352100372314,0.157199159264565));
res += mul(Get(s5,-dx,0), float4x4(-0.029730807989836,-0.059249173849821,0.020667320117354,-0.057334713637829,-0.031026676297188,0.018751518800855,0.012229736894369,-0.093541815876961,0.120930917561054,-0.141101703047752,-0.046735133975744,-0.093937635421753,0.108028307557106,-0.005812725052238,0.161662489175797,-0.086376644670963));
res += mul(Get(s5,-dx,dy), float4x4(0.017633074894547,0.008961806073785,-0.010146515443921,-0.081108465790749,0.027261106297374,0.015764323994517,0.006880045402795,0.090364858508110,0.084340706467628,0.076656758785248,-0.004473397508264,0.129240959882736,-0.023544520139694,-0.034257881343365,0.049381073564291,0.026555908843875));
res += mul(Get(s5,0,-dy), float4x4(-0.001424617832527,-0.003770865267143,-0.299677014350891,-0.040441684424877,0.055471524596214,0.052551854401827,-0.149345457553864,-0.091423802077770,0.008127405308187,-0.070254758000374,-0.005968135781586,0.129092812538147,-0.056019186973572,0.178535282611847,-0.032440323382616,0.127448081970215));
res += mul(Get(s5,0,0), float4x4(-0.288823604583740,-0.287950396537781,-0.461297750473022,0.047030456364155,-0.132526114583015,0.011279278434813,0.153440639376640,-0.164784535765648,0.260412424802780,0.174843564629555,0.045151252299547,-0.017818171530962,0.077953450381756,0.052329566329718,0.222344040870667,-0.113460831344128));
res += mul(Get(s5,0,dy), float4x4(0.054661840200424,-0.036389701068401,0.236344933509827,0.009704634547234,0.020036276429892,-0.107565917074680,0.157079622149467,-0.162931144237518,0.036045406013727,0.044554252177477,0.017426410689950,0.031682543456554,0.140203714370728,0.263968765735626,0.045261453837156,0.215930938720703));
res += mul(Get(s5,dx,-dy), float4x4(0.015877325087786,0.121172204613686,-0.077349692583084,-0.016745192930102,-0.001414066180587,0.054667819291353,-0.029813319444656,0.078161679208279,0.103390492498875,-0.066781967878342,0.215038254857063,-0.019910795614123,0.040555689483881,0.238316878676414,-0.126042112708092,-0.017317231744528));
res += mul(Get(s5,dx,0), float4x4(-0.096497051417828,-0.221411973237991,0.054562021046877,-0.099408604204655,-0.174516916275024,-0.104217626154423,0.111855700612068,0.044965770095587,0.130297228693962,0.036143250763416,0.104376256465912,0.114956878125668,-0.085895098745823,-0.186762958765030,-0.198103293776512,-0.071248792111874));
res += mul(Get(s5,dx,dy), float4x4(-0.014158420264721,-0.113370001316071,0.123666040599346,-0.065292418003082,-0.018306042999029,-0.119209542870522,0.037285175174475,0.095203943550587,-0.223000064492226,-0.021306987851858,-0.085288308560848,-0.047738850116730,-0.232735931873322,0.043194144964218,0.028158888220787,0.005835552699864));
res = max(float4(0, 0, 0, 0), res) + float4(-0.198912411928177,-0.158516496419907,0.364332824945450,0.272796809673309) * min(float4(0, 0, 0, 0), res);
return res;
}
