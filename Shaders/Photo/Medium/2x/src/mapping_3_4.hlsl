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
float4 res = float4(-0.053279951214790,-0.067467518150806,0.107685044407845,-0.112762883305550);
res += mul(Get(s0,-dx,-dy), float4x4(-0.017378931865096,0.013280372135341,-0.056678719818592,-0.033202167600393,-0.122909247875214,-0.040387440472841,0.044321507215500,-0.058905486017466,0.004750106949359,0.028937302529812,0.016648530960083,0.003335832618177,-0.053176335990429,-0.008243521675467,0.037505328655243,0.157929316163063));
res += mul(Get(s0,-dx,0), float4x4(-0.144725948572159,0.069592908024788,0.070651799440384,-0.186993375420570,-0.307828575372696,-0.080637909471989,0.009313126094639,0.005368289072067,0.058483093976974,-0.036342289298773,-0.086867317557335,0.066207565367222,0.077522620558739,-0.079166628420353,-0.157348498702049,0.025043759495020));
res += mul(Get(s0,-dx,dy), float4x4(-0.094983190298080,-0.114611878991127,0.059064630419016,-0.024817293509841,0.146843254566193,-0.062228746712208,0.032138250768185,0.061099074780941,0.222042024135590,-0.045718982815742,0.009406390599906,0.076300159096718,-0.085813485085964,0.052103351801634,-0.011615850031376,-0.031432416290045));
res += mul(Get(s0,0,-dy), float4x4(-0.007317869458348,-0.036422796547413,-0.385859668254852,0.060167457908392,0.083088420331478,0.192632272839546,-0.861513078212738,0.080822713673115,-0.003280315781012,0.021611312404275,0.212855428457260,-0.084387876093388,-0.330251455307007,0.067982099950314,0.198520213365555,-0.047851238399744));
res += mul(Get(s0,0,0), float4x4(-0.075063139200211,-0.103595755994320,-0.281359642744064,-0.078546918928623,-0.071248836815357,0.233846619725227,0.017362307757139,0.167389199137688,-0.243469804525375,-0.062499865889549,-0.158031657338142,-0.197185337543488,0.041825544089079,0.167467013001442,-0.140002265572548,-0.027058906853199));
res += mul(Get(s0,0,dy), float4x4(0.102404840290546,0.007983259856701,0.023307073861361,-0.062167607247829,-0.189626991748810,0.075399264693260,0.008282084949315,-0.028097929432988,0.173621445894241,-0.050290122628212,-0.055405706167221,-0.010936892591417,-0.003132470417768,0.134309947490692,-0.034963615238667,0.140440806746483));
res += mul(Get(s0,dx,-dy), float4x4(-0.019111065194011,0.015927305445075,-0.247919052839279,-0.020211178809404,-0.110510148108006,-0.183472663164139,0.094807639718056,0.170273467898369,0.056168299168348,-0.005404132883996,0.137088388204575,0.097852431237698,0.052617177367210,-0.141081988811493,0.039673969149590,0.059690844267607));
res += mul(Get(s0,dx,0), float4x4(0.012413496151567,-0.203052476048470,0.194122955203056,0.055513687431812,-0.103569924831390,0.084663748741150,-0.015232533216476,0.004582876805216,-0.295351922512054,-0.061443939805031,0.266069352626801,0.168195113539696,0.008554593659937,0.144032210111618,-0.052749458700418,0.100669197738171));
res += mul(Get(s0,dx,dy), float4x4(0.058349363505840,0.260238826274872,-0.006946122739464,-0.042504601180553,-0.047302614897490,0.139240041375160,0.037331692874432,0.018874146044254,0.121955014765263,-0.056753795593977,0.030308198183775,0.202337160706520,0.012229029089212,0.075120754539967,-0.047038506716490,-0.054441463202238));
res += mul(Get(s1,-dx,-dy), float4x4(0.005845436826348,-0.046871419996023,-0.025629028677940,0.046878270804882,0.003097138134763,0.037051189690828,0.029044922441244,-0.068484030663967,0.013215394690633,-0.037326600402594,0.062904708087444,0.035765305161476,0.206462666392326,0.103257022798061,0.014099303632975,0.037463817745447));
res += mul(Get(s1,-dx,0), float4x4(-0.182386189699173,-0.219695985317230,0.071157015860081,0.168687567114830,0.017776630818844,0.026708958670497,-0.180090457201004,0.131412670016289,0.010875913314521,-0.118641883134842,0.008173453621566,0.109208755195141,0.177418947219849,0.107354924082756,0.062318556010723,0.082607999444008));
res += mul(Get(s1,-dx,dy), float4x4(0.119077131152153,-0.161784783005714,0.003761346917599,0.087721310555935,0.061937075108290,-0.094262801110744,-0.205716431140900,0.028674645349383,-0.238693684339523,-0.280535846948624,0.030532198026776,0.041065681725740,0.230232059955597,0.229472890496254,-0.021762605756521,-0.074784107506275));
res += mul(Get(s1,0,-dy), float4x4(0.037235137075186,0.017992401495576,0.006230338942260,-0.162393540143967,0.083254657685757,0.031666729599237,-0.011715022847056,0.107431963086128,0.093110457062721,0.156550094485283,-0.053939428180456,0.075864292681217,0.057086549699306,-0.083377860486507,-0.179352506995201,-0.030309300869703));
res += mul(Get(s1,0,0), float4x4(-0.171429008245468,0.090057961642742,0.078418411314487,0.205680429935455,-0.148091644048691,-0.047899987548590,-0.150665849447250,-0.095030166208744,-0.091737866401672,0.034143809229136,-0.034658759832382,-0.084015943109989,0.051842641085386,0.078085228800774,0.016338827088475,0.041846174746752));
res += mul(Get(s1,0,dy), float4x4(0.052040655165911,0.037710823118687,0.106263749301434,-0.030560581013560,0.070394009351730,0.036063909530640,0.004334685392678,-0.094576671719551,0.029593965038657,0.247942537069321,0.067660294473171,0.048744868487120,-0.079014301300049,-0.059783622622490,0.034080930054188,-0.049392417073250));
res += mul(Get(s1,dx,-dy), float4x4(-0.105628512799740,-0.064446933567524,0.080491632223129,-0.130647972226143,0.053809963166714,-0.018640922382474,0.131666764616966,0.030202731490135,-0.016313338652253,0.053163647651672,-0.045501478016376,-0.016693806275725,-0.009072412736714,-0.013528699986637,0.167309880256653,0.056533411145210));
res += mul(Get(s1,dx,0), float4x4(-0.023551341146231,0.166811481118202,-0.011120152659714,-0.215631827712059,0.013289850205183,-0.000573221652303,0.025284752249718,0.030293149873614,0.015093262307346,0.164676457643509,0.048449940979481,0.016269261017442,0.000171199062606,0.011022528633475,-0.053423490375280,0.002440500073135));
res += mul(Get(s1,dx,dy), float4x4(-0.102922834455967,0.094873465597630,0.067205913364887,-0.070198804140091,0.032726477831602,0.165119498968124,0.005827680695802,0.088121511042118,0.051020819693804,0.049080550670624,-0.029368450865149,0.043982051312923,-0.095050379633904,-0.114118874073029,-0.109144732356071,0.054699294269085));
res += mul(Get(s2,-dx,-dy), float4x4(-0.017004739493132,-0.062779836356640,0.044151812791824,0.031021129339933,-0.018717475235462,0.093184262514114,0.172089964151382,-0.237506404519081,0.075483180582523,0.033847432583570,0.038400258868933,0.150265172123909,-0.003613067790866,0.084858082234859,-0.017456976696849,0.193207159638405));
res += mul(Get(s2,-dx,0), float4x4(-0.229660004377365,-0.083617419004440,-0.004671568050981,0.016968240961432,0.128337666392326,0.062404502183199,-0.029592258855700,-0.465247571468353,0.113557778298855,0.078125260770321,0.204725742340088,0.116873987019062,0.133598789572716,0.121975310146809,-0.024294620379806,0.133131399750710));
res += mul(Get(s2,-dx,dy), float4x4(-0.287743806838989,-0.150206521153450,-0.024028200656176,-0.116928309202194,0.031045444309711,-0.016192192211747,-0.047583196312189,-0.166642740368843,0.143739044666290,0.112371109426022,0.079467542469501,0.244748041033745,-0.105308979749680,0.050246503204107,0.099320158362389,-0.098711892962456));
res += mul(Get(s2,0,-dy), float4x4(-0.105284228920937,-0.001367400283925,-0.114816680550575,-0.022856082767248,-0.056999884545803,-0.121778905391693,0.252778828144073,0.007231421303004,0.145554989576340,0.137722179293633,0.058177892118692,0.149597272276878,0.059374153614044,-0.162751078605652,-0.107782050967216,0.116608820855618));
res += mul(Get(s2,0,0), float4x4(0.288413435220718,-0.012542891316116,-0.081501774489880,0.186215654015541,-0.091120935976505,-0.053087681531906,0.058729976415634,0.120590664446354,-0.082772225141525,0.031822476536036,0.146517127752304,0.177138119935989,-0.048743501305580,-0.142917975783348,-0.062912613153458,-0.055347058922052));
res += mul(Get(s2,0,dy), float4x4(0.211433038115501,0.157282277941704,0.053468346595764,-0.044932886958122,-0.087758429348469,0.009570240043104,-0.075120799243450,0.014465506188571,-0.002542050555348,0.025291306897998,0.040171947330236,0.000380711571779,0.139797449111938,-0.029397781938314,-0.013353039510548,0.071025229990482));
res += mul(Get(s2,dx,-dy), float4x4(-0.034796506166458,0.039312936365604,0.083792358636856,-0.060828890651464,-0.098096407949924,0.022376861423254,0.106154538691044,-0.014543491415679,0.229135259985924,0.038470726460218,0.107974812388420,0.053780373185873,0.072082445025444,0.072433307766914,-0.150559708476067,-0.103364177048206));
res += mul(Get(s2,dx,0), float4x4(0.008764284662902,-0.048851482570171,0.029569525271654,0.007165435235947,-0.002642061328515,-0.316640824079514,0.015662049874663,0.011929730884731,0.078476272523403,0.041061572730541,0.111202836036682,0.109576441347599,0.034322164952755,-0.205917805433273,-0.021425735205412,0.102966360747814));
res += mul(Get(s2,dx,dy), float4x4(-0.197187751531601,-0.008303036913276,-0.108571633696556,0.003673803759739,-0.045060586184263,-0.176224663853645,-0.008563713170588,-0.039228443056345,-0.144907593727112,-0.142733573913574,0.031270354986191,0.039775155484676,0.001353499246761,-0.151248827576637,-0.006414417177439,0.012284266762435));
res += mul(Get(s3,-dx,-dy), float4x4(-0.017712496221066,0.005900566931814,0.038742467761040,-0.119077779352665,0.037398595362902,0.005982113070786,-0.123283371329308,0.090122364461422,0.008869432844222,0.035531021654606,0.082039602100849,-0.061399519443512,0.133750334382057,0.080857463181019,0.007879104465246,-0.085978634655476));
res += mul(Get(s3,-dx,0), float4x4(0.054578512907028,-0.043060217052698,-0.096051037311554,-0.259385406970978,0.071494303643703,-0.078518815338612,-0.169550940394402,0.165981411933899,-0.276778638362885,-0.144273176789284,-0.023175546899438,-0.071754157543182,0.029430527240038,0.045464377850294,-0.043574970215559,-0.175731107592583));
res += mul(Get(s3,-dx,dy), float4x4(0.080477774143219,0.021009402349591,-0.040522970259190,-0.034211184829473,-0.033213123679161,0.030180156230927,0.059865992516279,-0.090849980711937,-0.108014024794102,-0.136462047696114,-0.036009576171637,-0.126027166843414,-0.006073713302612,-0.020931657403708,0.034041978418827,-0.131913676857948));
res += mul(Get(s3,0,-dy), float4x4(-0.118389174342155,0.107422649860382,0.078866071999073,0.013604501262307,-0.015429147519171,0.061630990356207,-0.374619603157043,-0.048423081636429,0.056817088276148,-0.101201094686985,-0.161995977163315,0.046175681054592,0.013816824182868,-0.015082601457834,-0.097686581313610,-0.045365668833256));
res += mul(Get(s3,0,0), float4x4(-0.260779052972794,0.203677013516426,-0.102535255253315,-0.246204301714897,-0.048676092177629,0.060673933476210,-1.030053257942200,-0.082907430827618,0.142997965216637,0.223731294274330,0.104569599032402,0.061094772070646,0.242315918207169,0.099631987512112,0.217555910348892,0.161194026470184));
res += mul(Get(s3,0,dy), float4x4(0.048298791050911,-0.087194420397282,-0.095683418214321,-0.053998362272978,0.030133781954646,0.004570981487632,-0.038075193762779,-0.029816089197993,-0.118718869984150,0.137357607483864,-0.000584423076361,-0.175917610526085,0.095742389559746,0.076794348657131,0.114637747406960,0.062103632837534));
res += mul(Get(s3,dx,-dy), float4x4(0.034046728163958,-0.042250182479620,-0.060031853616238,0.151335254311562,-0.023934025317430,-0.039188500493765,-0.265531837940216,0.031598009169102,-0.041851017624140,0.017136016860604,-0.133221849799156,0.053202148526907,0.008375194855034,-0.003326047910377,-0.239580422639847,0.117634423077106));
res += mul(Get(s3,dx,0), float4x4(0.114875152707100,-0.050385531038046,-0.023052267730236,0.208497703075409,-0.020952450111508,0.061622768640518,-0.548006713390350,-0.115864515304565,0.165260836482048,-0.120346166193485,0.061540253460407,-0.085256643593311,0.132223978638649,-0.111324712634087,-0.031723853200674,-0.022815324366093));
res += mul(Get(s3,dx,dy), float4x4(-0.102391757071018,-0.020702643319964,-0.010721911676228,0.007437458261847,0.000758067064453,-0.099090531468391,0.008714114315808,-0.049182329326868,-0.012962141074240,-0.118978284299374,0.073556467890739,0.049108639359474,0.058689381927252,-0.100803941488266,0.046115338802338,-0.000383021688322));
res += mul(Get(s4,-dx,-dy), float4x4(-0.026821881532669,-0.083330191671848,-0.058107484132051,-0.159057542681694,-0.017543544992805,-0.002015644917265,0.112278930842876,0.052315995097160,0.011066660284996,0.004225684795529,-0.140614941716194,0.054259542375803,0.135061219334602,-0.008300215005875,0.049624353647232,-0.290638566017151));
res += mul(Get(s4,-dx,0), float4x4(-0.206955149769783,-0.089806869626045,-0.029201723635197,-0.172261431813240,0.115677118301392,0.127317279577255,0.098469108343124,0.353447347879410,-0.215964287519455,0.158606082201004,0.289611995220184,0.093617074191570,-0.004782025702298,-0.137432307004929,-0.077420242130756,-0.139927953481674));
res += mul(Get(s4,-dx,dy), float4x4(0.206299528479576,-0.032349687069654,-0.065648183226585,0.041859202086926,0.023782262578607,0.080296896398067,-0.017718711867929,0.095444679260254,0.129228964447975,0.119640693068504,-0.015048751607537,0.023610137403011,0.057791348546743,-0.029316233471036,-0.012493229471147,-0.017743578180671));
res += mul(Get(s4,0,-dy), float4x4(-0.084458991885185,-0.049492415040731,0.025428751483560,0.025242444127798,-0.017147336155176,0.096917308866978,0.256794005632401,0.024906272068620,-0.117525674402714,-0.010460953228176,0.072140470147133,-0.007824002765119,-0.139172971248627,0.057945981621742,0.052941016852856,-0.067627951502800));
res += mul(Get(s4,0,0), float4x4(0.042625341564417,0.191930428147316,-0.070815078914165,0.152065888047218,-0.230228573083878,-0.225576817989349,-0.081966921687126,-0.406595528125763,-0.053039215505123,-0.101689495146275,-0.080690003931522,-0.104933582246304,0.006068753544241,0.193531438708305,-0.045587617903948,-0.164005771279335));
res += mul(Get(s4,0,dy), float4x4(-0.031454451382160,0.094547033309937,-0.158052161335945,0.053906194865704,-0.074711807072163,-0.188946932554245,-0.001573313260451,-0.137033194303513,-0.026139449328184,-0.240403547883034,0.027334302663803,-0.027303837239742,-0.020008470863104,-0.113730870187283,-0.107307113707066,-0.000965295941569));
res += mul(Get(s4,dx,-dy), float4x4(0.091366887092590,-0.042512170970440,0.160261347889900,0.016453579068184,-0.100344419479370,0.041568405926228,0.008087177760899,0.094881422817707,0.009219722822309,0.051170554012060,-0.033862054347992,-0.002291956450790,-0.007947459816933,-0.113975107669830,-0.103746756911278,-0.054567996412516));
res += mul(Get(s4,dx,0), float4x4(-0.130782485008240,-0.063998930156231,-0.070353016257286,-0.051770389080048,-0.055116709321737,0.166541934013367,0.054874002933502,0.064389921724796,0.000833215075545,0.175334528088570,0.012831836007535,0.101816453039646,0.194146826863289,-0.075277492403984,-0.031138403341174,0.163717642426491));
res += mul(Get(s4,dx,dy), float4x4(-0.091259554028511,-0.241328343749046,-0.058178149163723,-0.041721537709236,-0.056792058050632,0.195737078785896,0.004872572608292,0.077683798968792,0.016282843425870,0.197357222437859,0.004569304175675,0.054327461868525,-0.032554730772972,-0.115047149360180,-0.090432308614254,-0.023957218974829));
res += mul(Get(s5,-dx,-dy), float4x4(0.092200554907322,0.145307466387749,0.143299818038940,-0.054063767194748,0.111157447099686,-0.113459691405296,-0.104021601378918,-0.089728929102421,-0.125463023781776,-0.019487049430609,-0.057142470031977,-0.031536042690277,0.057692606002092,0.110247582197189,0.100175485014915,0.025040751323104));
res += mul(Get(s5,-dx,0), float4x4(0.156097754836082,-0.098120249807835,-0.042275883257389,-0.140877291560173,0.096168510615826,0.053155772387981,-0.025046896189451,-0.013356976211071,0.501235246658325,0.113014928996563,0.107660517096519,0.161299556493759,-0.137927561998367,-0.061158318072557,-0.037429489195347,-0.196449369192123));
res += mul(Get(s5,-dx,dy), float4x4(0.417624235153198,0.057315245270729,-0.073322005569935,0.096065163612366,0.059782929718494,0.007983961142600,-0.037233814597130,-0.022785449400544,-0.136917218565941,0.109948538243771,0.070995926856995,0.146100625395775,0.210414230823517,0.069544337689877,-0.017210712656379,0.067735753953457));
res += mul(Get(s5,0,-dy), float4x4(-0.038951523602009,0.069460585713387,0.160253107547760,-0.165866404771805,-0.360133856534958,0.192833766341209,0.187282666563988,-0.253302991390228,-0.058168515563011,-0.017883541062474,0.192454308271408,-0.089114077389240,0.037391651421785,-0.078201547265053,0.146937102079391,0.079015135765076));
res += mul(Get(s5,0,0), float4x4(-0.028639832511544,0.046749264001846,0.082957804203033,-0.091039255261421,0.058905396610498,0.070278108119965,0.047429122030735,-0.003024904523045,-0.093048416078091,-0.206623747944832,-0.121551349759102,-0.117493174970150,0.191220566630363,0.149325102567673,0.026026582345366,-0.057871732860804));
res += mul(Get(s5,0,dy), float4x4(0.100575603544712,0.161255285143852,-0.087348267436028,-0.135923668742180,0.077389888465405,0.006898826453835,0.024613510817289,0.058374017477036,0.056489314883947,-0.132065162062645,0.016584264114499,0.005934772081673,-0.137452304363251,0.096113190054893,-0.094097875058651,0.159021183848381));
res += mul(Get(s5,dx,-dy), float4x4(-0.268263846635818,0.038271505385637,-0.143127694725990,-0.028598656877875,-0.271508306264877,-0.383574575185776,0.089586362242699,0.260303407907486,-0.035724613815546,-0.138356387615204,0.156159803271294,0.006791600957513,-0.129518136382103,-0.135251417756081,0.012551584281027,0.047582354396582));
res += mul(Get(s5,dx,0), float4x4(-0.157629162073135,-0.212437316775322,-0.026199912652373,-0.009104493074119,-0.050868369638920,-0.091831929981709,-0.016417700797319,0.049182817339897,-0.012757943011820,-0.195597127079964,0.061484590172768,-0.054387468844652,-0.071555227041245,-0.430260121822357,-0.043769303709269,0.107125259935856));
res += mul(Get(s5,dx,dy), float4x4(0.178886786103249,-0.099565237760544,0.089954741299152,0.086935020983219,0.003677079686895,0.008742177858949,0.007726874202490,0.049766477197409,0.016508843749762,-0.070351429283619,-0.047808349132538,-0.053416315466166,0.016097340732813,-0.258458554744720,-0.094101540744305,0.065125562250614));
res = max(float4(0, 0, 0, 0), res) + float4(0.103494681417942,-0.119826659560204,-0.017379093915224,-0.083621352910995) * min(float4(0, 0, 0, 0), res);
return res;
}
