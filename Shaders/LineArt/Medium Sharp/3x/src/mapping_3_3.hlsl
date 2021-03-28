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
float4 res = float4(0.106197491288185,0.021130913868546,-0.061743367463350,0.008009383454919);
res += mul(Get(s0,-dx,-dy), float4x4(-0.050002638250589,-0.060886874794960,-0.115749582648277,-0.013525427319109,0.147282645106316,0.003865345846862,-0.063326343894005,0.158080190420151,-0.084973953664303,-0.041367683559656,0.022552184760571,-0.147204637527466,-0.043612729758024,0.068348892033100,-0.032344795763493,0.079632282257080));
res += mul(Get(s0,-dx,0), float4x4(0.079827539622784,-0.190296292304993,0.106322973966599,-0.133956581354141,-0.028044546023011,0.334248661994934,0.099715754389763,-0.092267900705338,0.077546343207359,0.088508486747742,0.078628465533257,0.045843970030546,0.156004309654236,0.186712950468063,-0.157138451933861,0.188968658447266));
res += mul(Get(s0,-dx,dy), float4x4(-0.053799580782652,0.003677030093968,-0.087666794657707,-0.003547634929419,-0.004405514337122,0.022423481568694,-0.256665796041489,0.041343204677105,-0.008933669887483,-0.035613209009171,0.046565160155296,-0.051098760217428,0.417296469211578,-0.034663908183575,-0.215362250804901,0.025789188221097));
res += mul(Get(s0,0,-dy), float4x4(-0.081932812929153,-0.171492800116539,-0.101679511368275,-0.147684395313263,0.154847338795662,-0.257531493902206,-0.009912681765854,0.000335914548486,0.026899693533778,0.090798437595367,0.105902753770351,0.255270719528198,0.063678205013275,0.191273808479309,-0.133768901228905,-0.234607994556427));
res += mul(Get(s0,0,0), float4x4(0.239385694265366,0.580560266971588,0.195839419960976,-0.375160455703735,0.260464489459991,-0.162524029612541,-0.108086325228214,0.056344665586948,0.040069948881865,-0.093437902629375,-0.088565461337566,-0.064541272819042,-0.100726269185543,-0.139613792300224,-0.043831717222929,-0.151328712701797));
res += mul(Get(s0,0,dy), float4x4(-0.056762527674437,0.004255109466612,-0.533409953117371,0.181355297565460,-0.215140745043755,-0.356114357709885,0.216050550341606,0.144928872585297,0.035684257745743,-0.008551745675504,0.044669657945633,-0.031660821288824,0.637016594409943,-0.020484168082476,-0.437647372484207,-0.528657972812653));
res += mul(Get(s0,dx,-dy), float4x4(-0.128408908843994,-0.235716432332993,-0.042751822620630,0.111011974513531,-0.088620617985725,-0.064958065748215,-0.085326209664345,0.215099021792412,-0.101593859493732,0.017833344638348,-0.175644010305405,-0.164995864033699,-0.051168404519558,0.017209418118000,0.033838547766209,-0.119565993547440));
res += mul(Get(s0,dx,0), float4x4(-0.017025118693709,-0.341257601976395,0.062241561710835,0.402286678552628,-0.042618829756975,-0.053517952561378,0.033157065510750,0.414141625165939,0.208124250173569,0.269317626953125,0.041563030332327,-0.585967779159546,-0.091182351112366,0.009577025659382,0.149244308471680,-0.456723004579544));
res += mul(Get(s0,dx,dy), float4x4(0.175236850976944,-0.046874012798071,-0.190473869442940,-0.083930343389511,0.155454471707344,-0.002657587872818,0.101517796516418,-0.169844672083855,-0.024260172620416,0.063809603452682,-0.695520997047424,0.196416646242142,0.212843254208565,-0.042072754353285,-0.095771588385105,0.160294562578201));
res += mul(Get(s1,-dx,-dy), float4x4(0.057403754442930,-0.087284348905087,-0.143919572234154,-0.224052399396896,-0.048413090407848,-0.071707069873810,-0.104496717453003,-0.095775857567787,0.041290991008282,-0.016193315386772,0.066027402877808,-0.121426291763783,0.112515345215797,-0.053535114973783,0.014962338842452,-0.285851299762726));
res += mul(Get(s1,-dx,0), float4x4(-0.036411207169294,-0.042826015502214,0.190736770629883,-0.280835449695587,0.142901822924614,-0.076996274292469,0.107102975249290,0.146452993154526,0.039205513894558,0.004006011877209,0.007838767021894,-0.302633136510849,0.049104552716017,-0.144080534577370,0.026899628341198,-0.325272440910339));
res += mul(Get(s1,-dx,dy), float4x4(0.373687565326691,0.050431646406651,-0.176296144723892,-0.141442731022835,-0.113010816276073,0.050581719726324,0.102663576602936,0.179000169038773,-0.577287614345551,-0.071455299854279,0.082267887890339,0.057526946067810,-0.231506645679474,0.015754772350192,-0.095679298043251,0.006425610277802));
res += mul(Get(s1,0,-dy), float4x4(-0.300465732812881,-0.101773127913475,-0.125708580017090,-0.217158660292625,0.033460393548012,-0.194008633494377,0.132853806018829,0.162664800882339,-0.020604610443115,0.080156736075878,0.182521089911461,-0.054470505565405,-0.132831946015358,0.128352925181389,0.376365154981613,0.267297208309174));
res += mul(Get(s1,0,0), float4x4(-0.264608383178711,0.143212154507637,0.142434865236282,-0.317185133695602,-0.142302528023720,-0.356585949659348,-0.277407050132751,-0.308710753917694,-0.223105058073997,-0.174104988574982,0.256261855363846,-0.328504353761673,0.045018576085567,-0.041810918599367,-0.207527160644531,0.114086776971817));
res += mul(Get(s1,0,dy), float4x4(-0.172461912035942,-0.108432069420815,-0.713611483573914,-0.175983816385269,0.152945995330811,-0.076720863580704,0.215553939342499,0.134533360600471,-0.788282334804535,0.038935419172049,-0.406304240226746,0.148015007376671,-0.290828883647919,0.052937600761652,0.064939133822918,0.193701565265656));
res += mul(Get(s1,dx,-dy), float4x4(0.135249733924866,-0.029194325208664,0.239222288131714,-0.209088236093521,0.015225358307362,-0.138977333903313,-0.104997657239437,-0.063941530883312,0.010445537976921,0.160366386175156,0.010569924488664,0.042436290532351,-0.028274355456233,-0.042744331061840,-0.060603562742472,0.030283836647868));
res += mul(Get(s1,dx,0), float4x4(0.252208948135376,-0.053750362247229,-0.171648681163788,-0.256264597177505,0.063318558037281,-0.078769639134407,0.067002564668655,-0.111291699111462,-0.035461571067572,-0.189589217305183,-0.018668467178941,0.222604870796204,-0.028713621199131,-0.044621668756008,-0.121031947433949,-0.045217521488667));
res += mul(Get(s1,dx,dy), float4x4(0.058536332100630,-0.056603748351336,-0.069979317486286,-0.006272091064602,-0.082475505769253,0.030520681291819,0.194953098893166,-0.061860822141171,0.112765356898308,0.071021705865860,0.246780157089233,-0.029479894787073,-0.079922065138817,-0.042330190539360,0.291142076253891,-0.138448223471642));
res += mul(Get(s2,-dx,-dy), float4x4(-0.031971938908100,-0.104898944497108,-0.005592334549874,0.027751574292779,0.156768217682838,-0.016595505177975,0.064412690699100,0.155510976910591,-0.025857575237751,-0.082734212279320,0.012194534763694,-0.031068585813046,0.014963260851800,0.036338951438665,-0.147037178277969,0.035463027656078));
res += mul(Get(s2,-dx,0), float4x4(-0.056110758334398,0.079029954969883,-0.092788279056549,-0.087974280118942,-0.119853809475899,-0.189340323209763,-0.184782221913338,-0.061345007270575,0.063366778194904,-0.167013704776764,0.016250608488917,-0.411170035600662,-0.185001313686371,-0.017964879050851,0.398378968238831,0.375319480895996));
res += mul(Get(s2,-dx,dy), float4x4(-0.306930571794510,-0.044544558972120,0.031855881214142,0.030674774199724,0.046649947762489,-0.031686462461948,0.079599283635616,-0.166442304849625,-0.054126840084791,-0.082912534475327,-0.064756698906422,-0.123691111803055,0.156160697340965,-0.055718533694744,-0.310296982526779,-0.108445443212986));
res += mul(Get(s2,0,-dy), float4x4(-0.150254145264626,0.118612952530384,-0.040638953447342,-0.009055709466338,-0.056521084159613,0.173017382621765,-0.004308614414185,0.089164577424526,-0.020322682335973,0.247733086347580,0.231406509876251,0.035045746713877,-0.244932129979134,-0.106647066771984,-0.219602361321449,-0.129378199577332));
res += mul(Get(s2,0,0), float4x4(-0.023118294775486,0.078979440033436,0.116726510226727,0.245181128382683,0.228064104914665,0.152732834219933,-0.422789752483368,0.178994446992874,0.028666784986854,0.093588590621948,0.023193877190351,-0.110132597386837,-0.284534633159637,-0.065640948712826,0.421963125467300,0.318678647279739));
res += mul(Get(s2,0,dy), float4x4(-0.148407787084579,0.106313198804855,0.069455996155739,-0.059791471809149,0.160745486617088,0.140327781438828,-0.287400811910629,0.001511111506261,0.153596058487892,0.206297338008881,-0.148971229791641,0.242520123720169,0.247035294771194,-0.014727126806974,-0.076906368136406,-0.201596826314926));
res += mul(Get(s2,dx,-dy), float4x4(-0.001984666800126,0.074816502630711,0.031715855002403,-0.055323950946331,0.033583626151085,0.064897775650024,0.034417428076267,0.119475863873959,0.054665770381689,-0.014422637410462,0.006753666326404,-0.083208486437798,-0.053951784968376,-0.006977187469602,0.305546462535858,-0.005407613236457));
res += mul(Get(s2,dx,0), float4x4(-0.067136824131012,0.100357823073864,0.034160930663347,-0.032503157854080,0.188991263508797,-0.007900947704911,-0.228790417313576,-0.004658147692680,0.011949420906603,-0.187373921275139,-0.049016032367945,-0.071851246058941,-0.062064725905657,-0.150498449802399,-0.319348365068436,-0.094424150884151));
res += mul(Get(s2,dx,dy), float4x4(-0.286899209022522,0.034631181508303,0.102949030697346,-0.033299129456282,0.000438032264356,0.067424699664116,-0.272697299718857,0.316229134798050,0.086009122431278,-0.075618132948875,0.011003838852048,-0.123123943805695,0.096775472164154,0.134842813014984,0.276542305946350,0.438604414463043));
res += mul(Get(s3,-dx,-dy), float4x4(-0.147301509976387,-0.140106037259102,0.005692079197615,-0.093840681016445,-0.029672738164663,0.095686890184879,0.041553813964128,0.048362083733082,-0.047595586627722,0.032201163470745,0.182169914245605,0.063523001968861,-0.056275289505720,-0.072617068886757,-0.005903167650104,-0.116086147725582));
res += mul(Get(s3,-dx,0), float4x4(0.040131535381079,0.117594562470913,0.050500031560659,-0.077185370028019,-0.119775988161564,0.122404336929321,0.055700771510601,0.080478794872761,-0.193850040435791,-0.007735033519566,-0.150345951318741,0.008674916811287,-0.113298751413822,0.040827859193087,0.140098974108696,0.024472760036588));
res += mul(Get(s3,-dx,dy), float4x4(-0.013991435058415,-0.095083385705948,-0.055861454457045,0.067662566900253,-0.183361217379570,0.026462413370609,0.081084914505482,0.187558412551880,0.129603892564774,0.071075238287449,-0.161489009857178,0.046411316841841,0.167736843228340,0.071943819522858,-0.253826498985291,0.024578820914030));
res += mul(Get(s3,0,-dy), float4x4(-0.126243054866791,-0.087620310485363,-0.043785568326712,-0.077173218131065,-0.009724414907396,0.026037089526653,-0.176371276378632,-0.170249879360199,-0.062720745801926,-0.119885593652725,-0.188778609037399,0.000751327897888,0.072943538427353,-0.214228019118309,-0.111066125333309,-0.089510768651962));
res += mul(Get(s3,0,0), float4x4(-0.040822952985764,0.256266027688980,0.065737709403038,-0.044011116027832,-0.256083309650421,0.064558878540993,0.156468778848648,0.338726043701172,0.064023993909359,0.032489590346813,0.321028023958206,0.362856537103653,-0.123649679124355,-0.090005055069923,0.221544861793518,-0.101403623819351));
res += mul(Get(s3,0,dy), float4x4(-0.061920285224915,0.122391581535339,-0.085205741226673,0.087685249745846,-0.391199469566345,-0.079899311065674,0.165973886847496,0.191870629787445,0.358689367771149,-0.018609847873449,-0.317478775978088,-0.118268251419067,0.178271502256393,-0.208058372139931,-0.287961244583130,-0.242134675383568));
res += mul(Get(s3,dx,-dy), float4x4(-0.066995412111282,-0.145526513457298,0.065968677401543,-0.008317004889250,-0.102822847664356,0.030704014003277,0.048873137682676,0.097965687513351,0.050710793584585,-0.041571840643883,-0.013948021456599,-0.036790039390326,-0.013886885717511,-0.089863583445549,0.042423855513334,0.154545858502388));
res += mul(Get(s3,dx,0), float4x4(0.113648526370525,0.055941719561815,0.204001143574715,-0.146807938814163,-0.247342765331268,0.081278055906296,0.137131229043007,0.058367997407913,0.283266067504883,0.045245166867971,0.069342926144600,-0.184301555156708,-0.023024974390864,-0.144007414579391,0.044069651514292,0.285686969757080));
res += mul(Get(s3,dx,dy), float4x4(-0.122006237506866,0.031544733792543,0.067854896187782,0.039172738790512,-0.302987724542618,-0.099155314266682,0.074049577116966,-0.282083421945572,0.088138721883297,-0.082946382462978,-0.108310520648956,0.072310589253902,0.194512799382210,-0.080143637955189,-0.106842532753944,-0.140302762389183));
res += mul(Get(s4,-dx,-dy), float4x4(0.039570901542902,0.077216804027557,0.068117655813694,0.223423466086388,0.135134205222130,0.035422869026661,-0.099547840654850,-0.205178588628769,-0.062230426818132,-0.021466618403792,0.100995242595673,0.000043174586608,0.105113916099072,0.071145310997963,0.001667360309511,0.051284369081259));
res += mul(Get(s4,-dx,0), float4x4(-0.193956017494202,-0.078234434127808,-0.185732558369637,-0.020921850576997,0.010487221181393,-0.045313350856304,-0.259262442588806,-0.129973426461220,-0.000707472907379,0.034802380949259,-0.104957759380341,-0.021486664190888,0.005302067380399,-0.064592637121677,-0.288633018732071,-0.005675272550434));
res += mul(Get(s4,-dx,dy), float4x4(-0.473889350891113,0.014646914787591,0.152661278843880,0.006847138516605,0.232757970690727,-0.057977560907602,-0.195866584777832,-0.337744146585464,0.125647395849228,0.026370745152235,-0.246618315577507,-0.013267375528812,0.176471754908562,-0.047087620943785,0.023483743891120,0.024393692612648));
res += mul(Get(s4,0,-dy), float4x4(-0.174768477678299,-0.165303632616997,-0.312052607536316,-0.252553403377533,0.012140428647399,0.059404313564301,0.056600388139486,-0.238809317350388,-0.079959563910961,0.089864216744900,0.155638068914413,0.053598552942276,0.078947521746159,-0.089582152664661,0.047535173594952,0.146328017115593));
res += mul(Get(s4,0,0), float4x4(0.234819039702415,0.108538560569286,0.195581808686256,-0.440960526466370,0.026696847751737,-0.122136831283569,-0.177166864275932,-0.110921882092953,-0.467440605163574,-0.116236433386803,-0.154990747570992,-0.198410585522652,-0.143810600042343,0.183892816305161,-0.117336779832840,0.368726253509521));
res += mul(Get(s4,0,dy), float4x4(-0.176547124981880,0.008059648796916,-0.278194099664688,-0.041771989315748,0.003938272595406,0.152249902486801,-0.238215669989586,-0.008491014130414,0.206165209412575,-0.045854065567255,-0.241472706198692,-0.133751779794693,0.239810079336166,-0.187291279435158,0.050623379647732,-0.331756114959717));
res += mul(Get(s4,dx,-dy), float4x4(-0.110298857092857,-0.025997467339039,-0.004068196285516,0.001359449815936,-0.073427118360996,0.036816954612732,-0.000170925835846,0.094971999526024,-0.131931111216545,0.191408857703209,0.023983187973499,-0.051481846719980,-0.014994105324149,-0.153471231460571,0.116907551884651,0.115449979901314));
res += mul(Get(s4,dx,0), float4x4(-0.042234294116497,-0.115543581545353,0.089697442948818,0.077868394553661,-0.215856298804283,0.035168010741472,-0.117497324943542,0.165966048836708,-0.101570859551430,0.103407636284828,0.091127432882786,0.026691650971770,0.070476278662682,0.134343743324280,0.200122982263565,0.071720838546753));
res += mul(Get(s4,dx,dy), float4x4(0.233012080192566,-0.035787671804428,-0.105301782488823,-0.500338375568390,0.167723551392555,0.065411433577538,-0.339633345603943,0.123413585126400,-0.013815264217556,0.014052174054086,-0.167657688260078,0.033024430274963,-0.083265796303749,0.028767753392458,0.306739449501038,0.202835425734520));
res += mul(Get(s5,-dx,-dy), float4x4(-0.007307711057365,-0.097249962389469,0.005424621049315,0.195717051625252,0.033428065478802,0.018907161429524,0.100243493914604,-0.091171972453594,0.012377552688122,-0.058718748390675,-0.091877855360508,0.029718732461333,0.273615926504135,-0.024842379614711,-0.099655315279961,-0.023503145202994));
res += mul(Get(s5,-dx,0), float4x4(0.037280283868313,-0.050530787557364,0.031557973474264,-0.421257644891739,0.081611000001431,-0.058003131300211,-0.025020375847816,0.083297073841095,-0.044654689729214,0.228947877883911,0.023700028657913,0.050453286617994,-0.076120086014271,-0.005602498073131,0.484180063009262,0.086738683283329));
res += mul(Get(s5,-dx,dy), float4x4(0.058151070028543,0.039877496659756,0.146612867712975,0.097131900489330,0.055582601577044,-0.039860364049673,0.143572583794594,-0.181086450815201,0.042754825204611,-0.005871329922229,-0.131866842508316,0.099711202085018,-0.117780782282352,-0.083202935755253,0.494058579206467,0.043835446238518));
res += mul(Get(s5,0,-dy), float4x4(-0.250231534242630,-0.070989765226841,-0.292060405015945,-0.508734762668610,0.016940295696259,0.208176612854004,0.349316596984863,0.181036829948425,0.088639408349991,-0.142074719071388,-0.085013076663017,0.008215114474297,-0.020153112709522,0.084681682288647,-0.226959288120270,0.223657622933388));
res += mul(Get(s5,0,0), float4x4(-0.109101220965385,0.025442220270634,0.358649343252182,0.476741224527359,-0.244816154241562,-0.109772205352783,-0.310553938150406,0.083753518760204,-0.084124736487865,0.078180298209190,0.182731911540031,0.182006523013115,-0.012341542169452,0.143569380044937,0.203428059816360,0.253573805093765));
res += mul(Get(s5,0,dy), float4x4(-0.355951935052872,-0.306267172098160,-0.036109264940023,0.301751643419266,0.013285625725985,0.100111678242683,0.224138617515564,-0.239847108721733,-0.221859022974968,0.018333140760660,0.192058667540550,-0.009525977075100,0.113114222884178,0.038895796984434,0.560127437114716,0.029985060915351));
res += mul(Get(s5,dx,-dy), float4x4(0.027843486517668,-0.124978430569172,-0.040347456932068,-0.126418560743332,0.017093516886234,0.066804714500904,0.086767062544823,0.129773050546646,-0.103010743856430,-0.036084361374378,-0.001551331719384,-0.007515741977841,0.073216177523136,-0.039007280021906,0.009371532127261,0.076024085283279));
res += mul(Get(s5,dx,0), float4x4(0.010097547434270,-0.041433613747358,0.068847320973873,0.182935148477554,0.076697707176208,0.014215072616935,-0.012802541255951,-0.048550929874182,-0.102963596582413,0.096110381186008,0.006497434340417,-0.008998102508485,-0.149080768227577,0.111291021108627,0.207946896553040,-0.030744723975658));
res += mul(Get(s5,dx,dy), float4x4(0.144443392753601,-0.111140720546246,0.166713818907738,-0.267231225967407,0.031836308538914,0.041356302797794,0.249822825193405,0.217241466045380,-0.006417721975595,0.019666550680995,-0.183985605835915,-0.082180194556713,-0.371218651533127,-0.042325515300035,0.313407570123672,0.105259001255035));
res = max(float4(0, 0, 0, 0), res) + float4(0.069989033043385,0.549432337284088,-0.060085140168667,0.060958895832300) * min(float4(0, 0, 0, 0), res);
return res;
}
