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
float4 res = float4(-0.259317696094513,-0.103081092238426,-0.094140991568565,-0.286082476377487);
res += mul(Get(s0,-dx,-dy), float4x4(-0.020531143993139,-0.118713699281216,0.045809477567673,-0.055644117295742,0.092760175466537,-0.123560264706612,-0.060116343200207,-0.002720227697864,-0.023037286475301,0.058570481836796,-0.043772924691439,-0.015226303599775,-0.092827998101711,0.101307898759842,-0.004726159851998,-0.024594832211733));
res += mul(Get(s0,-dx,0), float4x4(0.022302854806185,-0.047985583543777,0.054079338908195,0.114992730319500,0.297249287366867,-0.195353463292122,0.170404508709908,-0.166488334536552,-0.002034635283053,-0.084742762148380,-0.075611636042595,0.114699028432369,-0.189862310886383,-0.166557475924492,-0.066182292997837,0.112309806048870));
res += mul(Get(s0,-dx,dy), float4x4(0.109100043773651,-0.074939757585526,-0.081949099898338,0.129186570644379,0.058136917650700,0.041408479213715,-0.035553403198719,0.008687946945429,0.057852294296026,0.032379209995270,0.049929499626160,-0.088449247181416,-0.038237128406763,0.099391110241413,-0.078910239040852,-0.024419764056802));
res += mul(Get(s0,0,-dy), float4x4(0.071464478969574,-0.048107359558344,-0.199613571166992,0.101719073951244,-0.029049353674054,0.177671238780022,0.008155991323292,-0.151474863290787,-0.051043167710304,0.028086906298995,0.017385801300406,-0.054394319653511,0.036139786243439,0.071895778179169,0.056602049618959,-0.159261450171471));
res += mul(Get(s0,0,0), float4x4(0.050653304904699,0.024756502360106,0.135844975709915,0.084197156131268,-0.002830429933965,0.055431440472603,-0.310341358184814,-0.657342672348022,-0.176399827003479,-0.052510514855385,0.207547307014465,-0.166373863816261,0.308810263872147,-0.290173172950745,0.173033475875854,-0.153530821204185));
res += mul(Get(s0,0,dy), float4x4(-0.023282354697585,-0.196070477366447,0.176584109663963,-0.002721659373492,0.081263154745102,0.036017805337906,0.004408542532474,-0.182976186275482,-0.002010127529502,0.171482726931572,-0.083234660327435,0.175476416945457,0.062102291733027,0.142772570252419,-0.012473874725401,-0.067886888980865));
res += mul(Get(s0,dx,-dy), float4x4(-0.090937927365303,0.054011423140764,0.149245083332062,-0.091547653079033,-0.053074780851603,-0.013119852170348,0.205241858959198,0.089642331004143,0.023067453876138,-0.058001741766930,0.012089050374925,0.068505719304085,-0.044880766421556,0.028882918879390,-0.217609256505966,0.050895046442747));
res += mul(Get(s0,dx,0), float4x4(0.042718756943941,0.040360134094954,0.006855899002403,0.068279795348644,-0.121806852519512,0.037688151001930,0.209961369633675,0.073054566979408,0.007286036852747,-0.030382387340069,-0.156904116272926,-0.108936794102192,-0.216626867651939,0.083106644451618,-0.446117937564850,0.041099037975073));
res += mul(Get(s0,dx,dy), float4x4(0.055131223052740,0.072606049478054,0.009440953843296,0.123868957161903,-0.085192471742630,0.066417992115021,0.057543937116861,0.106556870043278,0.028009990230203,0.015142989344895,0.056134771555662,-0.076278634369373,-0.094590947031975,-0.048216026276350,-0.033941879868507,0.010957312770188));
res += mul(Get(s1,-dx,-dy), float4x4(0.024518176913261,0.043417032808065,0.081788532435894,-0.017101760953665,-0.088073506951332,-0.071498624980450,-0.071328461170197,0.033735606819391,-0.012451834045351,-0.002436635782942,-0.038951847702265,-0.030487710610032,-0.103545531630516,-0.053512603044510,-0.223138779401779,0.080832086503506));
res += mul(Get(s1,-dx,0), float4x4(0.122094184160233,0.145004391670227,-0.017176669090986,0.030155777931213,-0.043088238686323,0.177607849240303,0.125456273555756,-0.087633758783340,0.116014964878559,0.008881376124918,0.085890002548695,-0.176730468869209,-0.154957756400108,0.092702306807041,-0.033446125686169,-0.048586893826723));
res += mul(Get(s1,-dx,dy), float4x4(-0.146873250603676,-0.025446271523833,-0.100596398115158,0.073389828205109,-0.219440147280693,-0.112238712608814,0.315744638442993,-0.033204935491085,0.032332777976990,-0.080455042421818,-0.006658845115453,0.007710884790868,-0.011828896589577,-0.079231917858124,-0.014518831856549,0.020615771412849));
res += mul(Get(s1,0,-dy), float4x4(-0.001056987443008,0.020542772486806,-0.064801581203938,-0.005508081987500,-0.100080683827400,-0.270065486431122,-0.041445374488831,-0.040737353265285,-0.185527548193932,-0.592654168605804,-0.016236333176494,-0.015402878634632,-0.032450251281261,-0.149691432714462,0.271175026893616,-0.096172764897346));
res += mul(Get(s1,0,0), float4x4(-0.047457814216614,0.067330099642277,-0.133694186806679,0.223057612776756,0.112325266003609,0.065771706402302,-0.277166962623596,0.064369268715382,-0.433291018009186,0.041567366570234,-0.171146109700203,0.239414349198341,0.104941040277481,-0.017711779102683,-0.181807041168213,0.096396453678608));
res += mul(Get(s1,0,dy), float4x4(-0.065001010894775,0.042813729494810,0.156567886471748,-0.259845495223999,0.141784191131592,0.050713565200567,-0.143358945846558,0.160948514938354,-0.064762517809868,0.024974949657917,-0.080256685614586,-0.070266641676426,0.025096364319324,-0.076476171612740,-0.000923426530790,0.030875455588102));
res += mul(Get(s1,dx,-dy), float4x4(0.023602375760674,0.064357534050941,-0.048622265458107,0.003542048158124,-0.011418386362493,-0.011731959879398,-0.038569197058678,-0.251075297594070,0.056014742702246,-0.004564322996885,-0.111616447567940,-0.082587257027626,0.039157308638096,-0.090044170618057,0.027663251385093,0.138688728213310));
res += mul(Get(s1,dx,0), float4x4(-0.070618845522404,0.220918387174606,0.059534098953009,-0.177961483597755,-0.088320672512054,-0.073298007249832,-0.038161311298609,-0.171953931450844,0.133053585886955,0.013774191960692,-0.080337837338448,-0.259603321552277,0.046111300587654,-0.099453926086426,-0.029303604736924,0.177363753318787));
res += mul(Get(s1,dx,dy), float4x4(0.048206463456154,-0.033326569944620,-0.116785772144794,-0.054871935397387,-0.168064430356026,0.077968604862690,0.090038992464542,-0.234734445810318,0.077403835952282,0.010280860587955,0.069114692509174,0.026650650426745,-0.075515747070313,0.040353864431381,-0.057747378945351,0.116247199475765));
res += mul(Get(s2,-dx,-dy), float4x4(0.079148426651955,0.106001965701580,0.086345650255680,0.023658422753215,-0.090095482766628,0.007677293382585,0.121538884937763,0.020991217344999,-0.125409811735153,-0.278297334909439,0.016887255012989,0.053446285426617,0.112335734069347,-0.033060390502214,-0.082739964127541,0.213829681277275));
res += mul(Get(s2,-dx,0), float4x4(0.079566791653633,0.362431764602661,-0.037766065448523,0.119343176484108,0.060085568577051,0.043619584292173,0.127132788300514,0.143148660659790,-0.234618589282036,-0.014308346435428,-0.033647760748863,0.083073854446411,0.088990636169910,-0.001159256557003,-0.208903506398201,0.213471323251724));
res += mul(Get(s2,-dx,dy), float4x4(-0.078251548111439,-0.188141360878944,0.015880798920989,0.077110119163990,0.116822727024555,-0.032069116830826,0.143103718757629,0.182333976030350,0.039221718907356,0.005792262498289,-0.045203424990177,-0.009372933767736,0.015005754306912,-0.011866515502334,-0.045679148286581,0.024621810764074));
res += mul(Get(s2,0,-dy), float4x4(0.017493601888418,0.062356133013964,0.013953449204564,-0.030408203601837,0.094482943415642,0.025478091090918,-0.135991856455803,-0.101077526807785,-0.044809281826019,-0.003280975855887,-0.074821174144745,-0.131284713745117,-0.002043356420472,-0.012951044365764,0.029704041779041,-0.119422316551208));
res += mul(Get(s2,0,0), float4x4(-0.030213205143809,0.056989092379808,0.150573998689651,-0.117932543158531,0.076265983283520,-0.087573826313019,-0.010065532289445,-0.044173311442137,-0.429145604372025,-0.034329351037741,0.099652275443077,-0.206841021776199,0.109928779304028,0.006649647373706,0.101573571562767,-0.554077148437500));
res += mul(Get(s2,0,dy), float4x4(0.010789302177727,-0.074630260467529,-0.138925731182098,-0.094341762363911,0.162785917520523,0.132862985134125,-0.011021506972611,-0.022470494732261,-0.164850592613220,-0.162529662251472,0.032578866928816,-0.111298792064190,-0.041403144598007,0.058340515941381,0.034505784511566,-0.285403668880463));
res += mul(Get(s2,dx,-dy), float4x4(0.009911198168993,0.208800360560417,-0.044548720121384,0.054499473422766,0.056357666850090,0.246855095028877,-0.053983859717846,0.076790727674961,0.088242821395397,-0.167173519730568,-0.145692244172096,-0.055750288069248,0.051578976213932,0.216847926378250,0.046488869935274,-0.038136430084705));
res += mul(Get(s2,dx,0), float4x4(-0.010693283751607,-0.069911077618599,-0.085230551660061,0.031764741986990,-0.071716658771038,-0.063226945698261,-0.002084660343826,-0.109284088015556,0.115208573639393,0.043978817760944,-0.298896729946136,-0.122939512133598,0.022561540827155,-0.137905582785606,-0.091737866401672,-0.027590043842793));
res += mul(Get(s2,dx,dy), float4x4(0.032397247850895,0.007566552609205,-0.105638116598129,-0.076193138957024,-0.029695700854063,0.066586196422577,0.042997095733881,0.082401208579540,0.070064239203930,0.035979978740215,-0.102278612554073,-0.141049936413765,-0.003849572502077,0.004007144831121,-0.043819025158882,-0.037261784076691));
res += mul(Get(s3,-dx,-dy), float4x4(0.016013778746128,-0.013000627048314,-0.002250687684864,-0.055636532604694,-0.162954166531563,-0.197836995124817,-0.000837717554532,0.059191338717937,0.250799506902695,0.083018131554127,0.107979342341423,-0.058569103479385,-0.042951695621014,-0.169551521539688,-0.046866338700056,-0.022656880319118));
res += mul(Get(s3,-dx,0), float4x4(0.073852889239788,-0.046251110732555,-0.006207991857082,-0.061444722115993,-0.336412668228149,0.006235491950065,-0.032688822597265,0.070545241236687,0.232238769531250,-0.018935885280371,0.129637748003006,0.006451715249568,0.022544736042619,0.098738931119442,0.099902071058750,-0.011675172485411));
res += mul(Get(s3,-dx,dy), float4x4(-0.050318408757448,-0.080072343349457,-0.068538233637810,0.020670738071203,-0.098213776946068,0.091375611722469,-0.042000740766525,0.066527239978313,0.141488462686539,-0.097418509423733,-0.017869498580694,0.066588237881660,-0.085220217704773,-0.033016297966242,-0.015491374768317,-0.069020472466946));
res += mul(Get(s3,0,-dy), float4x4(-0.020160064101219,0.084130935370922,-0.082501612603664,0.058651532977819,-0.032398711889982,-0.089588493108749,-0.061810903251171,-0.014766120351851,-0.270722925662994,-0.193705394864082,0.140440866351128,0.098657600581646,0.085113078355789,0.130016162991524,-0.096257217228413,0.040068510919809));
res += mul(Get(s3,0,0), float4x4(0.154288008809090,0.170660227537155,-0.024711983278394,-0.015274300239980,0.067381635308266,0.105194292962551,-0.174832686781883,-0.060714662075043,-0.277617365121841,0.186059758067131,0.042103879153728,0.423864483833313,0.280506670475006,-0.076129734516144,-0.282123029232025,0.158914282917976));
res += mul(Get(s3,0,dy), float4x4(-0.054477557539940,-0.206845939159393,0.066518910229206,-0.090467594563961,0.043853364884853,0.011439928784966,0.085769511759281,0.014773665927351,-0.021223513409495,-0.102864064276218,0.155498296022415,0.081721536815166,0.101292878389359,-0.063945785164833,-0.074522376060486,-0.173677742481232));
res += mul(Get(s3,dx,-dy), float4x4(0.014460087753832,-0.048852443695068,-0.073624432086945,-0.012767146341503,0.161764547228813,0.025604235008359,-0.259108990430832,0.092862680554390,0.120821163058281,-0.007133010774851,-0.015909137204289,0.064081817865372,-0.016229838132858,-0.026680944487453,0.101768597960472,-0.031317669898272));
res += mul(Get(s3,dx,0), float4x4(-0.154559791088104,0.017192473635077,0.048447187989950,-0.042396586388350,0.229875251650810,-0.062505103647709,-0.231975287199020,0.250008672475815,0.134490683674812,-0.066070318222046,-0.066108539700508,0.267285853624344,0.051636248826981,-0.012912931852043,0.390245884656906,0.206436544656754));
res += mul(Get(s3,dx,dy), float4x4(-0.035426333546638,-0.128698959946632,-0.052878983318806,-0.071282878518105,0.093453168869019,0.047905042767525,-0.060872651636600,0.095130153000355,0.056656341999769,0.052963621914387,0.056070994585752,0.165190115571022,0.011011725291610,0.003776391269639,0.109019860625267,-0.118764519691467));
res += mul(Get(s4,-dx,-dy), float4x4(-0.235940784215927,-0.157096207141876,0.241122007369995,0.012390448711812,-0.032556645572186,-0.038386609405279,0.084489651024342,-0.150195404887199,-0.022477397695184,-0.039848592132330,0.062437351793051,0.049245551228523,-0.044440057128668,-0.028867825865746,0.037663195282221,-0.060767538845539));
res += mul(Get(s4,-dx,0), float4x4(0.039980534464121,-0.113469555974007,0.244586065411568,-0.210747107863426,0.040773153305054,0.105933137238026,0.142243608832359,-0.037287160754204,-0.013807922601700,-0.171541646122932,0.087347768247128,0.023216011002660,0.063670128583908,-0.053571581840515,0.112023793160915,-0.088226094841957));
res += mul(Get(s4,-dx,dy), float4x4(-0.072004072368145,0.144304156303406,0.019700523465872,0.131887912750244,0.023299043998122,0.097438238561153,0.113003700971603,-0.119599290192127,0.115424245595932,-0.152441993355751,-0.082200787961483,0.080811664462090,-0.035102944821119,0.056604955345392,0.017955424264073,-0.021802298724651));
res += mul(Get(s4,0,-dy), float4x4(0.164379581809044,-0.154347270727158,-0.070058152079582,0.155117437243462,0.008547184057534,-0.077968396246433,0.075225800275803,0.068072944879532,0.153414338827133,0.266399025917053,-0.034541215747595,0.073061309754848,0.105374589562416,0.114714123308659,-0.097101271152496,-0.020916193723679));
res += mul(Get(s4,0,0), float4x4(0.064867891371250,-0.003634063061327,-0.210036531090736,0.274023592472076,0.306679099798203,-0.084948942065239,-0.018294187262654,0.400853693485260,0.144974663853645,-0.187523484230042,-0.065930701792240,0.160833150148392,0.204848855733871,0.022546041756868,-0.401955693960190,0.222457855939865));
res += mul(Get(s4,0,dy), float4x4(0.136590301990509,0.066489286720753,-0.133146822452545,0.133455917239189,0.011534457094967,0.130515828728676,-0.075216300785542,0.115843877196312,-0.196810960769653,-0.242321178317070,0.217040881514549,-0.004989938344806,0.060658860951662,-0.021135896444321,-0.184870690107346,-0.001916508073919));
res += mul(Get(s4,dx,-dy), float4x4(-0.013055267743766,0.059641908854246,0.095200285315514,-0.097787946462631,-0.083728328347206,0.014424799010158,-0.155379280447960,-0.030251955613494,0.071563638746738,0.090777948498726,0.130781859159470,0.062487181276083,-0.037153299897909,-0.240142792463303,0.149461731314659,0.039670981466770));
res += mul(Get(s4,dx,0), float4x4(-0.125450789928436,0.002268084790558,0.030832277610898,-0.169641882181168,-0.216181516647339,0.079329729080200,-0.136711493134499,0.193749606609344,0.026302684098482,-0.125967949628830,0.131772711873055,-0.021436361595988,0.031022129580379,0.159812465310097,0.342571616172791,0.000390990811866));
res += mul(Get(s4,dx,dy), float4x4(0.042779617011547,0.014322751201689,-0.106442615389824,-0.305196851491928,-0.093915037810802,-0.020247563719749,0.013367915526032,-0.041010826826096,0.072627983987331,-0.075120188295841,-0.198638916015625,-0.017355674877763,0.052493974566460,-0.081328220665455,0.251654475927353,-0.159697785973549));
res += mul(Get(s5,-dx,-dy), float4x4(-0.081613741815090,0.070178404450417,0.003144386457279,-0.011897757649422,0.030256055295467,-0.016444368287921,-0.108997896313667,-0.027046455070376,0.134219914674759,-0.102748773992062,0.189411923289299,0.045085009187460,-0.040109589695930,0.133315041661263,0.027608197182417,-0.053210429847240));
res += mul(Get(s5,-dx,0), float4x4(0.132842376828194,-0.157349362969398,0.018796177580953,-0.038729947060347,0.074774228036404,0.056656017899513,-0.067133039236069,-0.050801664590836,0.112244419753551,0.075422823429108,0.168200671672821,-0.156101435422897,0.054268572479486,0.016362354159355,0.063175439834595,-0.132701978087425));
res += mul(Get(s5,-dx,dy), float4x4(-0.087997898459435,0.052662480622530,-0.122587211430073,0.009256484918296,0.213362380862236,-0.028163010254502,-0.020560832694173,0.006258111912757,0.195524871349335,-0.095522545278072,0.013312703929842,0.134484127163887,-0.019536480307579,0.162290170788765,-0.144875928759575,0.046579901129007));
res += mul(Get(s5,0,-dy), float4x4(-0.158804133534431,-0.124819509685040,-0.035069890320301,0.038080733269453,-0.072496250271797,-0.088144078850746,0.104388780891895,-0.060263723134995,-0.110238663852215,-0.211972117424011,0.155061781406403,0.119960032403469,-0.009097840636969,0.217453688383102,-0.093409940600395,0.045856319367886));
res += mul(Get(s5,0,0), float4x4(-0.177604526281357,0.126985430717468,0.250707209110260,-0.067013561725616,-0.041800256818533,0.135998472571373,0.193293213844299,0.003402769565582,-0.019334446638823,0.071984641253948,-0.147655665874481,0.196514487266541,-0.005827451590449,0.064601078629494,-0.152924373745918,0.096489369869232));
res += mul(Get(s5,0,dy), float4x4(-0.007970990613103,-0.104457475244999,0.114367127418518,0.026613803580403,-0.100137487053871,-0.111143112182617,0.125756800174713,0.084311977028847,-0.073677219450474,-0.023310031741858,0.256045877933502,0.271063685417175,-0.161066830158234,0.037556506693363,0.105075716972351,-0.010007070377469));
res += mul(Get(s5,dx,-dy), float4x4(0.003878415562212,-0.104525558650494,-0.109519749879837,-0.038788821548223,0.001449921866879,0.079936139285564,-0.220461994409561,0.042156837880611,0.057930521667004,-0.083862543106079,-0.020207215100527,0.092835441231728,-0.027038052678108,0.120324373245239,0.039998549968004,-0.073566257953644));
res += mul(Get(s5,dx,0), float4x4(0.060557179152966,-0.007366530131549,-0.202002614736557,-0.083531476557255,-0.031817339360714,0.072035260498524,-0.238009378314018,-0.054203987121582,-0.015992986038327,0.026138219982386,-0.116780139505863,0.187035709619522,0.000642048253212,-0.060195118188858,-0.049684379249811,-0.023184433579445));
res += mul(Get(s5,dx,dy), float4x4(-0.017252324149013,0.048656746745110,-0.013895473442972,-0.195887282490730,0.033830020576715,0.016524171456695,-0.010880240239203,-0.178953185677528,0.002295843092725,0.012737233191729,-0.017593208700418,-0.111410371959209,0.057723782956600,-0.034620560705662,-0.000340751721524,0.033444676548243));
res = max(float4(0, 0, 0, 0), res) + float4(-0.005644386168569,-0.022850543260574,0.059603624045849,0.022288601845503) * min(float4(0, 0, 0, 0), res);
return res;
}