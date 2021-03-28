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
float4 res = float4(0.007295676041394,0.320748329162598,-0.148360773921013,-0.277470320463181);
res += mul(Get(s0,-dx,-dy), float4x4(-0.044099230319262,-0.145039990544319,-0.015028025954962,-0.077008031308651,0.074727736413479,-0.167807579040527,-0.211092039942741,0.082831241190434,0.034899324178696,0.105529189109802,0.039767254143953,-0.047519315034151,-0.088067390024662,-0.037646394222975,-0.022941870614886,-0.049325451254845));
res += mul(Get(s0,-dx,0), float4x4(-0.202086016535759,-0.015076862648129,-0.097923815250397,-0.060666710138321,-0.404413789510727,0.095515720546246,-0.086072444915771,-0.016495687887073,-0.085381917655468,-0.201733231544495,-0.218606397509575,0.141323313117027,0.014123409986496,-0.120328277349472,0.094190031290054,-0.084245368838310));
res += mul(Get(s0,-dx,dy), float4x4(0.083415456116199,-0.073508404195309,-0.056769102811813,-0.037675399333239,0.067604310810566,-0.084279932081699,0.039986155927181,0.018770867958665,-0.010382070206106,-0.071959763765335,0.052089877426624,-0.062910325825214,0.126566424965858,-0.092326365411282,-0.021235996857285,0.016784870997071));
res += mul(Get(s0,0,-dy), float4x4(-0.034278266131878,-0.064234279096127,-0.021557964384556,-0.017248895019293,-0.131873220205307,-0.038121495395899,-0.080417662858963,-0.102834686636925,0.022430837154388,0.099871814250946,-0.227858290076256,0.050899304449558,0.068825714290142,0.069493308663368,0.182066202163696,0.087167441844940));
res += mul(Get(s0,0,0), float4x4(-0.272425174713135,-0.097801066935062,-0.016560642048717,-0.179243475198746,-0.194676116108894,0.069505318999290,-0.094042912125587,-0.140134781599045,-0.092278540134430,-0.014167620800436,0.126235634088516,-0.567113101482391,0.061435621231794,0.150109142065048,-0.023453278467059,-0.131014570593834));
res += mul(Get(s0,0,dy), float4x4(0.009600269608200,-0.027077885344625,0.047776974737644,-0.019020862877369,-0.029867623001337,-0.099452674388885,0.180883273482323,0.043791905045509,-0.196068555116653,0.046450905501842,0.118127003312111,-0.085230506956577,-0.129965022206306,0.008552668616176,-0.148087874054909,-0.020127762109041));
res += mul(Get(s0,dx,-dy), float4x4(0.204712197184563,0.095920734107494,-0.155547454953194,-0.011197922751307,-0.172494813799858,-0.115533359348774,-0.006474625319242,0.016746982932091,0.077651977539063,0.028862109407783,0.048823315650225,0.068549692630768,0.084734819829464,0.074292495846748,0.012859023176134,0.050619143992662));
res += mul(Get(s0,dx,0), float4x4(-0.028865693137050,-0.040211774408817,0.075665816664696,-0.142142966389656,0.055782318115234,0.011377039365470,0.028000321239233,0.031890079379082,0.116239689290524,-0.014154402539134,0.023054037243128,-0.105982646346092,0.009530098177493,0.056631226092577,0.067552946507931,0.014307693578303));
res += mul(Get(s0,dx,dy), float4x4(0.085334949195385,-0.046856015920639,0.128552556037903,-0.063687361776829,-0.077663078904152,-0.043408840894699,0.020707461982965,-0.041762571781874,0.036275401711464,0.086958549916744,-0.039847970008850,0.033751416951418,0.120818994939327,0.097404226660728,-0.005754354875535,0.023765511810780));
res += mul(Get(s1,-dx,-dy), float4x4(-0.122302860021591,0.034121476113796,-0.071690045297146,-0.000358956400305,0.062248114496469,-0.037276484072208,0.015936106443405,-0.035799425095320,-0.111705712974072,-0.004588521551341,0.012485409155488,0.090919010341167,0.009578501805663,0.001820512814447,-0.045009873807430,0.065142974257469));
res += mul(Get(s1,-dx,0), float4x4(-0.074678815901279,0.151596173644066,0.077918745577335,-0.398832380771637,0.113744698464870,0.018662847578526,0.013136407360435,-0.126682028174400,-0.043694946914911,-0.086830116808414,0.053249038755894,-0.066162459552288,-0.229730412364006,-0.120603188872337,0.163325533270836,-0.163658216595650));
res += mul(Get(s1,-dx,dy), float4x4(-0.196839109063148,0.038266308605671,0.113880842924118,-0.107857786118984,-0.010850442573428,0.049125913530588,0.010656570084393,-0.120894096791744,0.208751752972603,-0.048885922878981,-0.006457143928856,0.053384792059660,0.230882853269577,-0.082161903381348,0.014321882277727,0.097216129302979));
res += mul(Get(s1,0,-dy), float4x4(0.126328870654106,0.023338880389929,-0.087979689240456,-0.051212575286627,-0.078805372118950,0.236083164811134,-0.094356164336205,-0.509912133216858,0.127939000725746,-0.127525031566620,0.025244588032365,0.059831369668245,-0.065905004739761,-0.109208405017853,0.079327419400215,0.100272759795189));
res += mul(Get(s1,0,0), float4x4(-0.144660398364067,0.226385414600372,0.173896953463554,-0.124499827623367,0.140088737010956,0.084954954683781,0.091700166463852,0.016067389398813,-0.096351020038128,-0.390028446912766,-0.065301366150379,0.252399951219559,-0.163575455546379,-0.265652060508728,0.034511409699917,0.120755724608898));
res += mul(Get(s1,0,dy), float4x4(-0.123097211122513,0.068633235991001,-0.000321045343298,0.036772087216377,0.046084195375443,-0.045860219746828,0.097564175724983,0.032280407845974,0.007119315210730,0.105718374252319,-0.097095623612404,-0.148370802402496,-0.088643059134483,-0.205770775675774,0.069769874215126,0.018401475623250));
res += mul(Get(s1,dx,-dy), float4x4(0.098606668412685,0.100086726248264,-0.066386431455612,-0.003037668298930,0.015573145821691,0.002545118099079,-0.114128783345222,-0.013408739119768,-0.008519058115780,0.019156172871590,-0.046549186110497,-0.074666485190392,0.041666571050882,-0.077757522463799,0.179366990923882,0.046080399304628));
res += mul(Get(s1,dx,0), float4x4(0.071547001600266,0.026608416810632,0.052218191325665,0.083125844597816,-0.148243352770805,-0.007870250381529,-0.020500296726823,-0.115440092980862,0.072649970650673,-0.008684264495969,-0.005253364797682,0.026603946462274,0.197750762104988,0.044586151838303,0.008775369264185,0.011782743968070));
res += mul(Get(s1,dx,dy), float4x4(0.063705407083035,0.033582400530577,-0.007974924519658,-0.001346419914626,-0.054725199937820,-0.001024527591653,0.129919052124023,-0.009086089208722,0.050823878496885,-0.059888537973166,-0.021951304748654,-0.015240387991071,-0.186028122901917,-0.061123270541430,-0.136633962392807,-0.025639729574323));
res += mul(Get(s2,-dx,-dy), float4x4(0.104390747845173,-0.015992423519492,-0.011960571631789,0.034125745296478,0.060220506042242,0.017017450183630,-0.004534919746220,0.114546000957489,-0.087817266583443,0.057795047760010,0.083647638559341,-0.002606957452372,-0.060645014047623,0.064633943140507,0.073935613036156,-0.063870057463646));
res += mul(Get(s2,-dx,0), float4x4(-0.173929736018181,0.033453360199928,0.022087860852480,-0.031610708683729,-0.114915460348129,0.238157913088799,0.035076085478067,-0.069675222039223,0.212554559111595,0.017082335427403,0.048940647393465,0.075260609388351,0.238533228635788,-0.012845072895288,0.037665538489819,0.196382269263268));
res += mul(Get(s2,-dx,dy), float4x4(0.128828868269920,-0.057886693626642,-0.040403313934803,0.018140282481909,0.178491920232773,-0.012739871628582,-0.032691393047571,0.243190109729767,-0.073826678097248,0.007373475469649,-0.074444219470024,0.106978625059128,0.051675871014595,-0.003516247728840,-0.055527560412884,0.069916270673275));
res += mul(Get(s2,0,-dy), float4x4(-0.002545577008277,0.053772993385792,-0.069742940366268,-0.172300055623055,0.049768425524235,0.131633803248405,0.170758560299873,0.016464078798890,-0.062696240842342,0.047288045287132,-0.143388614058495,0.102801635861397,0.096732020378113,0.213972121477127,0.217476114630699,-0.153869569301605));
res += mul(Get(s2,0,0), float4x4(0.033988036215305,0.095244534313679,-0.069741263985634,0.087483868002892,0.193097814917564,0.166076213121414,-0.128543302416801,0.264246612787247,-0.235077068209648,-0.048236541450024,-0.136139646172523,-0.134988769888878,0.115672163665295,-0.048861548304558,0.127825006842613,0.054447382688522));
res += mul(Get(s2,0,dy), float4x4(0.012710194103420,-0.139995425939560,0.098121009767056,0.081717468798161,0.320945233106613,0.135362446308136,-0.015065945684910,0.067431882023811,0.140795692801476,0.032850652933121,0.252558112144470,0.108061984181404,0.149217203259468,0.104643784463406,-0.182696759700775,0.039694279432297));
res += mul(Get(s2,dx,-dy), float4x4(-0.091430999338627,0.035144634544849,-0.085370808839798,-0.129876807332039,0.066741876304150,0.026239817962050,0.071687735617161,0.081632710993290,0.089664779603481,-0.005685160867870,-0.025364086031914,0.165460109710693,-0.097150802612305,-0.028071748092771,0.053437188267708,0.038940649479628));
res += mul(Get(s2,dx,0), float4x4(0.010083694010973,0.159925669431686,-0.131125658750534,-0.316218763589859,0.200477093458176,0.006918842904270,-0.061256501823664,0.040861662477255,0.145776256918907,-0.062981583178043,-0.019282763823867,-0.013165938667953,-0.134063020348549,0.092268571257591,0.084627009928226,-0.023500364273787));
res += mul(Get(s2,dx,dy), float4x4(-0.194536089897156,-0.030652146786451,0.036810558289289,0.043871026486158,0.068973816931248,-0.032013460993767,-0.069008156657219,-0.000409786647651,-0.130803719162941,0.023566888645291,-0.059056997299194,-0.090577445924282,0.170649275183678,-0.032546989619732,-0.065508037805557,0.029926132410765));
res += mul(Get(s3,-dx,-dy), float4x4(0.133472114801407,0.109871819615364,-0.027643328532577,0.064553424715996,-0.009553936310112,-0.024657953530550,0.076191931962967,0.078491695225239,0.051023062318563,0.020973710343242,-0.117585144937038,0.005214712116867,0.024023558944464,-0.000962333579082,-0.089700505137444,-0.047017466276884));
res += mul(Get(s3,-dx,0), float4x4(0.136737138032913,-0.112357750535011,-0.168848842382431,0.050134696066380,0.080088563263416,0.028987811878324,-0.159253045916557,-0.001626822748221,-0.219429567456245,-0.029845127835870,0.061137285083532,-0.104847066104412,-0.239475473761559,0.038104463368654,0.072958260774612,-0.177824273705482));
res += mul(Get(s3,-dx,dy), float4x4(-0.075999312102795,0.072534136474133,0.010068159550428,-0.052314840257168,0.093297831714153,0.073161058127880,-0.013877900317311,0.027658771723509,0.144976109266281,-0.045809999108315,0.056637857109308,0.004548389930278,-0.243738755583763,-0.134826868772507,0.103713527321815,-0.062713503837585));
res += mul(Get(s3,0,-dy), float4x4(0.040474586188793,0.076847828924656,0.131878778338432,-0.124528817832470,-0.161272585391998,0.110349975526333,-0.135348320007324,-0.257365465164185,0.022109359502792,0.096039362251759,0.016659954562783,-0.137700811028481,-0.209909424185753,-0.037789858877659,-0.067266620695591,-0.003422860288993));
res += mul(Get(s3,0,0), float4x4(0.219947189092636,-0.287467390298843,0.021576741710305,0.194563195109367,0.210019454360008,-0.111274935305119,0.008450976572931,-0.068387672305107,0.168554723262787,0.175120979547501,-0.147246643900871,0.189445123076439,-0.154774069786072,-0.295059621334076,-0.060135271400213,0.021725753322244));
res += mul(Get(s3,0,dy), float4x4(-0.109139285981655,0.172568038105965,-0.206207931041718,-0.086566247045994,0.068046785891056,0.116954006254673,-0.062832079827785,-0.201574772596359,0.009767364710569,0.012169110588729,0.075499214231968,0.016385557129979,-0.528854966163635,-0.054344825446606,-0.049645986407995,-0.069262012839317));
res += mul(Get(s3,dx,-dy), float4x4(-0.376591622829437,-0.063077628612518,-0.030439287424088,-0.122556984424591,-0.047423619776964,-0.050563544034958,0.002137780888006,0.076908148825169,-0.021439503878355,-0.160432681441307,0.086307130753994,0.040669910609722,-0.094206385314465,-0.088497310876846,0.063419342041016,0.007629554718733));
res += mul(Get(s3,dx,0), float4x4(0.028935359790921,-0.088317550718784,0.077870242297649,-0.059661585837603,0.002647560788319,0.092250131070614,0.003756184829399,-0.050952680408955,-0.038557451218367,-0.097491562366486,-0.015754364430904,0.072955466806889,0.081777170300484,-0.113651216030121,-0.021987579762936,0.017362738028169));
res += mul(Get(s3,dx,dy), float4x4(0.063870899379253,-0.057820320129395,-0.129044026136398,0.005700645036995,0.007248459849507,0.036476533859968,-0.062582522630692,-0.108198933303356,-0.117705255746841,-0.027100313454866,-0.021612009033561,-0.078745901584625,-0.211507409811020,-0.021657727658749,0.038837764412165,-0.036722168326378));
res += mul(Get(s4,-dx,-dy), float4x4(0.145473957061768,0.017045194283128,-0.138975977897644,0.139747709035873,-0.072678267955780,0.091426067054272,0.018239783123136,-0.107810050249100,0.218736991286278,0.124130673706532,0.065070748329163,0.055207300931215,0.074724912643433,0.005325668025762,0.022223401814699,-0.001306556747295));
res += mul(Get(s4,-dx,0), float4x4(-0.298002421855927,0.014061612077057,-0.043598838150501,-0.292096734046936,0.359321415424347,0.037900943309069,0.003513305680826,0.285163432359695,0.090358763933182,0.221645534038544,-0.009277102537453,-0.070301175117493,0.045270815491676,0.019826652482152,0.033724635839462,-0.045096050947905));
res += mul(Get(s4,-dx,dy), float4x4(-0.082357317209244,-0.009259746409953,0.119838945567608,0.051704768091440,0.404425352811813,-0.136630550026894,0.143253415822983,0.156817302107811,-0.172100529074669,0.140415892004967,-0.027663622051477,-0.047860469669104,0.042980588972569,0.001378989894874,-0.065164953470230,-0.011748103424907));
res += mul(Get(s4,0,-dy), float4x4(-0.179813817143440,-0.086628429591656,-0.117355540394783,0.083902120590210,0.136916860938072,0.250165164470673,-0.188593149185181,0.229722261428833,-0.098762743175030,0.074696213006973,0.078490763902664,-0.186964407563210,0.294450730085373,0.051753893494606,-0.049550812691450,0.127171322703362));
res += mul(Get(s4,0,0), float4x4(0.132134407758713,-0.423202395439148,0.197368890047073,0.201179713010788,-0.160717725753784,0.229775160551071,-0.235107049345970,-0.124710209667683,0.128785461187363,-0.340344250202179,0.093413345515728,0.462161570787430,-0.235635638237000,0.153537750244141,-0.204854264855385,0.184677541255951));
res += mul(Get(s4,0,dy), float4x4(-0.034949641674757,0.074441500008106,0.122151732444763,-0.164893195033073,0.018199713900685,-0.034298416227102,0.063358426094055,-0.140766754746437,0.017190288752317,0.077498905360699,-0.366158783435822,-0.092132873833179,0.155013471841812,-0.225684449076653,0.079146683216095,0.029692247509956));
res += mul(Get(s4,dx,-dy), float4x4(0.301178544759750,0.115964695811272,-0.177584737539291,0.015011899173260,0.277766942977905,0.011935246177018,0.036957368254662,0.104015588760376,-0.086942031979561,-0.040018983185291,0.031182285398245,-0.008197107352316,-0.110224969685078,-0.053486999124289,0.052583761513233,-0.045903459191322));
res += mul(Get(s4,dx,0), float4x4(-0.019563000649214,0.118318773806095,-0.151643738150597,0.102735005319118,0.228136777877808,0.019330445677042,-0.120646305382252,0.268647581338882,0.080915406346321,0.125137194991112,-0.042648144066334,-0.020046558231115,0.151339933276176,0.000393075839384,0.036531940102577,0.042530380189419));
res += mul(Get(s4,dx,dy), float4x4(0.048591237515211,0.109948873519897,0.066822379827499,0.046056948602200,-0.051419973373413,0.177212923765182,-0.121712394058704,-0.022910889238119,0.108043067157269,-0.108520880341530,0.019620539620519,0.050988573580980,0.060082681477070,-0.008360491134226,0.012022508308291,-0.076788634061813));
res += mul(Get(s5,-dx,-dy), float4x4(-0.006686602253467,0.013299513608217,0.036863565444946,0.046794317662716,0.067619740962982,0.005196687299758,0.239529058337212,-0.020000077784061,0.150501444935799,0.095754697918892,0.000912399496883,-0.007585306186229,-0.039194345474243,0.021906374022365,-0.013941377401352,-0.115732133388519));
res += mul(Get(s5,-dx,0), float4x4(0.131484732031822,0.116079732775688,-0.026333803310990,0.109682291746140,-0.035784292966127,-0.047387938946486,-0.108973406255245,0.082985825836658,0.061006184667349,0.115973144769669,0.107975341379642,0.005806572735310,-0.051982328295708,-0.004139825236052,0.035477720201015,0.121486157178879));
res += mul(Get(s5,-dx,dy), float4x4(-0.029206318780780,-0.067606791853905,0.038008496165276,-0.001522440812550,-0.283949166536331,-0.069724045693874,0.002271724399179,-0.141179561614990,-0.042802698910236,-0.036236114799976,0.014958776533604,-0.008737077936530,0.000726988131646,-0.053724881261587,-0.030611759051681,0.009514933452010));
res += mul(Get(s5,0,-dy), float4x4(0.064083546400070,0.026405619457364,-0.066484391689301,0.083570405840874,-0.132931143045425,0.081208989024162,0.231155768036842,-0.325241267681122,-0.166773751378059,0.377743810415268,-0.011167000047863,-0.198358491063118,-0.082763545215130,-0.175088971853256,0.466550707817078,-0.125009670853615));
res += mul(Get(s5,0,0), float4x4(-0.093771174550056,-0.225697904825211,0.459996581077576,-0.119705937802792,-0.274046331644058,-0.364609450101852,0.254524618387222,-0.213883772492409,-0.096891812980175,0.036230079829693,-0.005228087771684,-0.087778024375439,0.181861564517021,-0.154427930712700,-0.301971793174744,0.213755667209625));
res += mul(Get(s5,0,dy), float4x4(-0.250968217849731,0.207257837057114,-0.269940465688705,-0.178156599402428,-0.258494585752487,0.085270516574383,-0.348063021898270,-0.076785705983639,0.016376139596105,-0.035067446529865,0.319086074829102,0.086309030652046,0.020468726754189,0.005591332912445,0.003186599584296,-0.074179805815220));
res += mul(Get(s5,dx,-dy), float4x4(0.144420146942139,-0.028962843120098,-0.057457625865936,0.055030267685652,-0.082899212837219,-0.046095013618469,-0.006700576283038,0.047849249094725,0.195085987448692,0.095023304224014,-0.113861612975597,-0.061618085950613,-0.147060081362724,-0.115846700966358,0.167407438158989,0.029784036800265));
res += mul(Get(s5,dx,0), float4x4(-0.101144298911095,0.004456249997020,0.050861068069935,0.075499244034290,-0.237317219376564,-0.003399159526452,-0.006833027116954,-0.061555337160826,-0.043266624212265,0.010552794672549,0.052665658295155,0.036728177219629,0.118379473686218,0.006659965962172,-0.073126383125782,-0.124048054218292));
res += mul(Get(s5,dx,dy), float4x4(0.127403348684311,0.009405091404915,0.054579321295023,0.126276567578316,-0.128524675965309,-0.060622055083513,-0.066500134766102,0.015758719295263,-0.051466651260853,0.014380864799023,0.035106986761093,-0.154341831803322,-0.028834488242865,-0.035522010177374,-0.105758868157864,0.022328078746796));
res = max(float4(0, 0, 0, 0), res) + float4(-0.005173781886697,0.161536067724228,0.419663816690445,-0.082524180412292) * min(float4(0, 0, 0, 0), res);
return res;
}