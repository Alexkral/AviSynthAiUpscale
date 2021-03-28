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
float4 res = float4(-0.295047193765640,0.196477085351944,-0.440160632133484,0.019266555085778);
res += mul(Get(s0,-dx,-dy), float4x4(0.046369656920433,-0.035238098353148,0.015970364212990,-0.105754174292088,0.061276040971279,0.105157598853111,0.007844189181924,-0.044413331896067,0.103004403412342,-0.055591747164726,-0.036280021071434,0.125700935721397,-0.079708904027939,0.129067018628120,-0.022926207631826,-0.125967964529991));
res += mul(Get(s0,-dx,0), float4x4(-0.222561642527580,-0.010112133808434,-0.032932113856077,0.105628527700901,0.092060312628746,0.228377401828766,0.241907253861427,0.030902151018381,-0.059297680854797,-0.123674415051937,0.081006169319153,0.085319511592388,0.007067200262100,-0.046966824680567,0.011899724602699,-0.046302922070026));
res += mul(Get(s0,-dx,dy), float4x4(0.182608336210251,0.087631776928902,0.082233525812626,-0.254123836755753,-0.175394669175148,0.119144953787327,-0.077751584351063,-0.022734154015779,-0.114662326872349,0.001357321394607,-0.041683115065098,0.053838167339563,0.051797118037939,-0.005765364039689,0.081072300672531,0.126707479357719));
res += mul(Get(s0,0,-dy), float4x4(0.063143141567707,-0.104298852384090,-0.035919811576605,0.105791464447975,-0.013096179813147,0.113152571022511,0.052850715816021,-0.055290065705776,-0.052010331302881,-0.171603009104729,-0.001163067878224,0.263711184263229,-0.099247500300407,0.071719177067280,-0.121862977743149,0.035381250083447));
res += mul(Get(s0,0,0), float4x4(-0.048203133046627,-0.061879202723503,-0.011570351198316,-0.081352986395359,0.214898720383644,-0.123453304171562,0.223591253161430,0.013076254166663,0.196834266185760,0.049427878111601,0.019766366109252,-0.185502603650093,-0.009566754102707,-0.047360491007566,-0.110585600137711,-0.093813419342041));
res += mul(Get(s0,0,dy), float4x4(0.048448465764523,0.027489090338349,-0.093924336135387,0.061538748443127,-0.212396115064621,0.056297544389963,0.048252202570438,-0.017706835642457,-0.097355104982853,-0.002520201494917,-0.031626887619495,0.065198622643948,0.120023071765900,0.087755158543587,0.095128737390041,0.036964889615774));
res += mul(Get(s0,dx,-dy), float4x4(-0.100652791559696,-0.019739344716072,0.046681493520737,0.114609763026237,-0.048472225666046,0.121964156627655,0.017215298488736,0.014862354844809,0.044443171471357,-0.081649161875248,-0.052083127200603,0.085775099694729,-0.063259005546570,0.093639977276325,-0.070372037589550,-0.050756763666868));
res += mul(Get(s0,dx,0), float4x4(0.327304959297180,0.090880893170834,0.261965960264206,0.048215467482805,0.138808131217957,0.164861679077148,0.148643761873245,0.037998411804438,0.058996461331844,-0.041740559041500,0.233680263161659,0.172469317913055,0.039569105952978,-0.240145087242126,-0.057898659259081,0.030869819223881));
res += mul(Get(s0,dx,dy), float4x4(-0.240874275565147,0.034018866717815,-0.142193421721458,0.058130253106356,-0.072405762970448,0.118264459073544,0.017647845670581,-0.026985136792064,0.040274478495121,0.082830525934696,0.006242997944355,-0.020877173170447,0.055445514619350,0.029228033497930,0.100261457264423,0.029425788670778));
res += mul(Get(s1,-dx,-dy), float4x4(-0.018744766712189,-0.058747183531523,-0.089126095175743,-0.017177736386657,0.129639074206352,-0.228189632296562,0.056303042918444,0.056745648384094,0.024844370782375,-0.070477172732353,0.009449430741370,0.006204462144524,0.045771174132824,0.080392189323902,-0.000084406696260,0.195643246173859));
res += mul(Get(s1,-dx,0), float4x4(-0.269835621118546,0.222383335232735,0.084585182368755,0.045210473239422,0.029889581725001,0.119866691529751,-0.060249727219343,-0.033195048570633,-0.207988485693932,0.168537139892578,0.034379635006189,0.227817043662071,0.024624228477478,0.077884577214718,-0.026638137176633,-0.180560380220413));
res += mul(Get(s1,-dx,dy), float4x4(0.091154016554356,-0.058947287499905,-0.082099862396717,-0.201517075300217,0.126633495092392,0.121074594557285,0.289947479963303,0.029613941907883,-0.169022381305695,-0.115209951996803,-0.064211845397949,0.093154557049274,-0.120203912258148,-0.102932952344418,0.147626444697380,0.126517578959465));
res += mul(Get(s1,0,-dy), float4x4(-0.096510641276836,0.168432071805000,-0.121670536696911,0.163666233420372,0.004740562289953,-0.135039761662483,0.047225683927536,-0.010141510516405,-0.000011253898265,0.082943618297577,-0.009738695807755,0.055758744478226,0.086352564394474,-0.065767712891102,-0.062933631241322,-0.087847493588924));
res += mul(Get(s1,0,0), float4x4(0.137286633253098,0.026198092848063,0.272022545337677,-0.081105731427670,-0.046762503683567,-0.105893947184086,-0.006933636497706,0.027005624026060,-0.211195945739746,-0.193754225969315,0.066101044416428,0.083207495510578,-0.050015408545732,-0.020162153989077,0.080358952283859,0.264157593250275));
res += mul(Get(s1,0,dy), float4x4(-0.028224065899849,0.020286737009883,-0.095970742404461,0.152643606066704,0.144603431224823,0.150976523756981,0.102736316621304,0.009016761556268,-0.116283886134624,0.010566225275397,-0.207143560051918,0.128791958093643,0.116484418511391,0.000907540030312,0.018339127302170,-0.057932909578085));
res += mul(Get(s1,dx,-dy), float4x4(-0.002877696882933,0.221600174903870,-0.055354230105877,-0.015296457335353,0.066164366900921,-0.112907372415066,0.143764764070511,0.126197531819344,0.035831719636917,0.020549729466438,0.047306258231401,-0.127083048224449,0.239169895648956,-0.089860655367374,0.055572435259819,-0.025153851136565));
res += mul(Get(s1,dx,0), float4x4(0.168690130114555,0.158560395240784,-0.001999552128837,0.150101572275162,-0.205980539321899,-0.030279871076345,-0.061531227082014,-0.013272108510137,0.148009553551674,-0.049325492233038,0.146784365177155,0.060042850673199,-0.082693696022034,-0.016873953863978,0.094476923346519,0.020344574004412));
res += mul(Get(s1,dx,dy), float4x4(-0.020220164209604,0.038783658295870,-0.067745842039585,0.091428831219673,0.246387004852295,0.012469384819269,0.128824830055237,0.020761199295521,-0.109443932771683,-0.131514266133308,-0.141459673643112,0.175397813320160,0.174854278564453,0.053857352584600,0.066001027822495,0.123614482581615));
res += mul(Get(s2,-dx,-dy), float4x4(0.053809639066458,0.037984710186720,0.015230447985232,-0.065132461488247,0.111949346959591,0.045559503138065,-0.036871802061796,0.027209920808673,0.003856238676235,-0.015259278006852,0.169423818588257,-0.330716073513031,0.030162112787366,-0.210052028298378,0.039452750235796,-0.008710613474250));
res += mul(Get(s2,-dx,0), float4x4(-0.089544929563999,-0.048370040953159,-0.071208685636520,0.024754449725151,0.048896249383688,-0.252074718475342,0.076780088245869,0.189294621348381,0.010084730572999,0.155726030468941,-0.024006569758058,0.045423064380884,-0.188216075301170,0.168923094868660,0.041413158178329,0.043570075184107));
res += mul(Get(s2,-dx,dy), float4x4(0.082884989678860,0.031074211001396,0.026510292664170,0.035426232963800,-0.060202967375517,0.047946769744158,0.046912170946598,0.101549461483955,-0.189052313566208,-0.049362488090992,-0.142446562647820,-0.123399347066879,0.049731757491827,0.103524461388588,-0.106587082147598,-0.112385235726833));
res += mul(Get(s2,0,-dy), float4x4(-0.001608644146472,-0.078424900770187,-0.081215776503086,-0.115247309207916,0.141130194067955,-0.032295539975166,-0.000168576108990,-0.174139708280563,0.227537408471107,0.106702581048012,0.147896781563759,-0.982006430625916,-0.020463006570935,0.057150408625603,0.048792004585266,0.057863995432854));
res += mul(Get(s2,0,0), float4x4(-0.152763649821281,0.174761041998863,-0.154266566038132,0.048277817666531,0.009269327856600,0.172309488058090,-0.022878244519234,0.014095346443355,0.182812169194221,-0.114733375608921,0.022085446864367,0.155310869216919,0.089436799287796,-0.291110068559647,-0.034473184496164,-0.069343671202660));
res += mul(Get(s2,0,dy), float4x4(0.165036290884018,-0.003506929613650,0.018556252121925,-0.199154376983643,-0.096222981810570,-0.119677938520908,-0.217708364129066,0.172468096017838,-0.446111798286438,-0.038071837276220,-0.226672962307930,-0.036295618861914,0.029065884649754,0.055942170321941,0.137655556201935,0.054062724113464));
res += mul(Get(s2,dx,-dy), float4x4(0.001528405933641,0.039748843759298,-0.029462082311511,-0.071770749986172,-0.057765502482653,0.092693522572517,-0.039375543594360,-0.281840384006500,0.121914215385914,0.029471198096871,0.208024024963379,-0.018705850467086,-0.117603473365307,0.030692687258124,-0.069307707250118,0.094580210745335));
res += mul(Get(s2,dx,0), float4x4(-0.351380288600922,0.113224975764751,-0.118441380560398,-0.012039053253829,0.109671846032143,-0.016449596732855,-0.119958251714706,0.042990900576115,0.030395681038499,0.115658305585384,0.024094089865685,0.030939009040594,0.081397965550423,0.056460313498974,0.020775422453880,-0.014423590153456));
res += mul(Get(s2,dx,dy), float4x4(0.136947676539421,0.008779590949416,0.020359124988317,-0.078641340136528,-0.012406627647579,0.040703147649765,-0.017126416787505,0.120049037039280,-0.281143188476563,-0.055087439715862,-0.089353352785110,-0.111938931047916,-0.020033048465848,0.051208943128586,0.094122223556042,-0.053873907774687));
res += mul(Get(s3,-dx,-dy), float4x4(-0.127390041947365,0.015454225242138,-0.106929682195187,-0.038854271173477,-0.053272183984518,-0.062437552958727,-0.080315634608269,-0.144437745213509,-0.013805040158331,0.044717181473970,-0.052480567246675,-0.103375621140003,0.013849775306880,0.015605401247740,0.070046432316303,0.044655147939920));
res += mul(Get(s3,-dx,0), float4x4(-0.115600198507309,-0.027033235877752,-0.317415922880173,-0.025300800800323,-0.125111341476440,-0.092387229204178,0.048656966537237,0.091585651040077,-0.058925561606884,-0.236460998654366,0.117493078112602,0.057976052165031,0.148290723562241,-0.008646415546536,0.096109353005886,0.228487595915794));
res += mul(Get(s3,-dx,dy), float4x4(-0.124141857028008,-0.167754516005516,-0.094907693564892,-0.177058443427086,0.026169508695602,0.161801397800446,0.082306616008282,0.019784418866038,0.060127332806587,-0.010648247785866,0.063833363354206,0.112529858946800,-0.192833736538887,-0.051403198391199,0.036311928182840,0.081959605216980));
res += mul(Get(s3,0,-dy), float4x4(-0.122424066066742,-0.110322378575802,-0.170268654823303,-0.162493392825127,-0.046085715293884,-0.001498620258644,0.006452526431531,0.079328566789627,-0.050501957535744,-0.312434881925583,-0.130355387926102,-0.069907613098621,-0.058548457920551,0.058579098433256,0.132827445864677,0.145502313971519));
res += mul(Get(s3,0,0), float4x4(-0.288393586874008,-0.065330862998962,-0.147555604577065,0.007131066173315,0.102254629135132,-0.083699353039265,0.240763559937477,-0.040696799755096,0.230946227908134,0.195511683821678,0.402040570974350,0.353698045015335,0.248850092291832,-0.432802975177765,0.032794296741486,0.137511581182480));
res += mul(Get(s3,0,dy), float4x4(0.023924484848976,-0.110859461128712,-0.045530017465353,-0.066498473286629,0.195332765579224,0.109672725200653,-0.020218349993229,-0.002350059105083,-0.208964288234711,-0.020945323631167,-0.163045912981033,-0.050712056457996,-0.205205112695694,0.019161356613040,-0.048748876899481,-0.000720342795830));
res += mul(Get(s3,dx,-dy), float4x4(-0.008333480916917,-0.093116961419582,-0.029803533107042,-0.130454048514366,-0.102662630379200,0.082706235349178,-0.043842181563377,0.099248103797436,-0.005316209513694,0.019953884184361,-0.070886887609959,-0.003083504736423,0.160516589879990,-0.043924022465944,0.012295378372073,0.030105700716376));
res += mul(Get(s3,dx,0), float4x4(-0.111259832978249,0.175157472491264,-0.095950454473495,-0.175499767065048,0.005740845110267,-0.023541104048491,-0.025810522958636,-0.042812291532755,-0.102593794465065,-0.019904654473066,0.050340749323368,0.133290052413940,-0.191732034087181,0.101572059094906,0.055968526750803,0.161918058991432));
res += mul(Get(s3,dx,dy), float4x4(0.071858525276184,-0.144913867115974,-0.094121791422367,-0.146365046501160,-0.167750582098961,0.053693104535341,-0.189640432596207,0.016519814729691,-0.052640095353127,0.005854628980160,-0.018255643546581,-0.036335695534945,-0.355334132909775,0.034493982791901,-0.100103840231895,0.001680282643065));
res += mul(Get(s4,-dx,-dy), float4x4(0.013057188130915,0.011727580800653,-0.109909683465958,-0.254203379154205,0.166606083512306,-0.140685498714447,-0.179119259119034,-0.056177552789450,0.116621434688568,0.081582672894001,0.073033668100834,0.030691213905811,0.069037705659866,-0.060841441154480,0.040370639413595,0.032473497092724));
res += mul(Get(s4,-dx,0), float4x4(0.013598877005279,-0.099652364850044,0.058875635266304,-0.009965206496418,0.010120386257768,-0.339786946773529,0.097746692597866,0.032134722918272,-0.294622153043747,-0.009830865077674,-0.040745921432972,0.156329140067101,-0.115388125181198,0.076978690922260,0.043204478919506,-0.001711908495054));
res += mul(Get(s4,-dx,dy), float4x4(0.144109949469566,-0.096595741808414,0.056559693068266,0.154314994812012,0.147050201892853,0.012677363120019,0.280146479606628,0.169230893254280,0.045268841087818,0.055056307464838,-0.081024810671806,-0.162586852908134,0.104573220014572,0.000276233186014,0.061661977320910,0.014753824099898));
res += mul(Get(s4,0,-dy), float4x4(-0.011916577816010,-0.171382412314415,-0.234008848667145,-0.466118305921555,0.161648631095886,-0.248461797833443,-0.383900433778763,0.108533538877964,0.069128379225731,-0.012688261456788,0.061427310109138,0.050687562674284,0.111560463905334,-0.129497557878494,-0.078789331018925,0.005802293308079));
res += mul(Get(s4,0,0), float4x4(-0.013792421668768,-0.322113245725632,0.224700957536697,0.381841063499451,0.130563959479332,-0.180283084511757,0.301420748233795,0.118918694555759,-0.163298666477203,0.122806608676910,-0.102339148521423,-0.153614908456802,-0.407959342002869,-0.028755631297827,-0.219982683658600,-0.041468858718872));
res += mul(Get(s4,0,dy), float4x4(0.076311916112900,-0.145348757505417,0.126949489116669,0.248651668429375,0.498768717050552,0.113767638802528,0.211168020963669,0.189061477780342,-0.030122851952910,-0.051326323300600,-0.017210867255926,-0.001525374245830,0.122681818902493,-0.160752803087234,0.205430507659912,-0.176185667514801));
res += mul(Get(s4,dx,-dy), float4x4(0.088181279599667,-0.076830811798573,-0.077525839209557,-0.142379432916641,0.105811081826687,0.005915555171669,-0.084648102521896,-0.005422784481198,0.001455363817513,0.023610061034560,-0.058729261159897,-0.100422576069832,0.043684881180525,0.068840153515339,-0.099253408610821,-0.088525012135506));
res += mul(Get(s4,dx,0), float4x4(0.048012118786573,-0.060564566403627,-0.056776784360409,-0.049766730517149,0.021001735702157,-0.199390009045601,0.022964244708419,0.028212044388056,-0.084722056984901,-0.181507855653763,0.023279780521989,0.028028361499310,0.012373703531921,0.104817487299442,-0.201778262853622,0.059201560914516));
res += mul(Get(s4,dx,dy), float4x4(-0.004742719698697,0.000810739991721,-0.010101989842951,0.026873543858528,0.072381429374218,0.036519590765238,0.102874904870987,0.143994286656380,-0.003070105798542,-0.102074608206749,-0.024137806147337,-0.027121948078275,-0.150440961122513,0.019170176237822,0.048494756221771,-0.009543284773827));
res += mul(Get(s5,-dx,-dy), float4x4(0.018051730468869,-0.142369508743286,0.013471381738782,0.034932326525450,-0.038012802600861,0.015788324177265,-0.023420484736562,-0.079974330961704,-0.072287827730179,-0.062090266495943,-0.015285941772163,-0.131520837545395,-0.058432042598724,0.024566536769271,-0.026852805167437,0.160712733864784));
res += mul(Get(s5,-dx,0), float4x4(-0.028315279632807,0.179890751838684,-0.071460492908955,-0.021904420107603,0.026153352111578,0.060971114784479,0.078793264925480,-0.017022052779794,0.050864804536104,-0.046926256269217,-0.014935807324946,-0.178919345140457,0.092740893363953,0.007922002114356,0.005142817739397,-0.122060425579548));
res += mul(Get(s5,-dx,dy), float4x4(-0.096365079283714,0.036837484687567,-0.001570979948156,-0.121004402637482,-0.049951162189245,-0.084468141198158,-0.050865415483713,-0.001788647845387,-0.015461766161025,0.004638922400773,-0.022981770336628,-0.062263846397400,-0.114093922078609,-0.027159769088030,-0.238006666302681,-0.101210407912731));
res += mul(Get(s5,0,-dy), float4x4(0.035888954997063,0.036010764539242,0.212369769811630,0.218715086579323,-0.018083661794662,0.002216145163402,-0.027122117578983,-0.077084727585316,-0.096040122210979,0.144642561674118,-0.132049962878227,-0.002946197986603,-0.071949906647205,-0.078373394906521,0.046153306961060,0.137583270668983));
res += mul(Get(s5,0,0), float4x4(-0.233982235193253,0.152362152934074,-0.170497268438339,-0.221802607178688,-0.380726099014282,0.242677003145218,-0.064633756875992,-0.025419043377042,0.220930635929108,-0.273330450057983,-0.005526483524591,-0.403883039951324,0.054602656513453,0.032158680260181,-0.017040353268385,0.009243153966963));
res += mul(Get(s5,0,dy), float4x4(0.003501530969515,-0.049087002873421,0.027686677873135,0.057563498616219,0.063403151929379,-0.145636469125748,-0.265104621648788,-0.124979041516781,-0.193306893110275,-0.008988081477582,-0.184074983000755,0.099370256066322,-0.163894847035408,0.066169127821922,0.030409853905439,-0.243888318538666));
res += mul(Get(s5,dx,-dy), float4x4(-0.032379906624556,0.027563905343413,0.030510174110532,-0.018946520984173,0.072546645998955,-0.048274315893650,0.177101314067841,0.020159298554063,-0.258868247270584,0.049906142055988,-0.111018694937229,-0.015134776942432,0.040498070418835,-0.084166742861271,0.110436290502548,0.067220106720924));
res += mul(Get(s5,dx,0), float4x4(0.029092581942677,0.055720321834087,-0.122262530028820,0.014837481081486,-0.237587556242943,-0.067058093845844,0.124242097139359,0.021476304158568,0.184519544243813,0.000723649456631,0.137094259262085,-0.198925584554672,-0.046183463186026,0.107317201793194,-0.089619942009449,0.051694486290216));
res += mul(Get(s5,dx,dy), float4x4(0.068538337945938,-0.018679548054934,0.088940091431141,-0.010296959429979,0.108200438320637,-0.046724095940590,-0.088285230100155,0.050075594335794,-0.019116954877973,-0.129129856824875,-0.129015520215034,-0.041208375245333,0.006841840688139,0.065702311694622,0.055048272013664,-0.096524856984615));
res = max(float4(0, 0, 0, 0), res) + float4(0.002764771925285,0.288062244653702,0.169630676507950,0.105580858886242) * min(float4(0, 0, 0, 0), res);
return res;
}