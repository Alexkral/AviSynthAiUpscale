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
float4 res = float4(0.250111639499664,-0.046763274818659,-0.033536214381456,0.106626629829407);
res += mul(Get(s0,-dx,-dy), float4x4(0.017477205023170,-0.051443986594677,0.110280312597752,0.014037616550922,0.179178416728973,-0.006337075494230,0.113877199590206,-0.039954807609320,0.063875049352646,-0.157105550169945,0.091794706881046,-0.058620050549507,0.042347036302090,-0.155475690960884,-0.080794371664524,-0.081604145467281));
res += mul(Get(s0,-dx,0), float4x4(0.058322988450527,0.121242336928844,-0.080103076994419,-0.060465961694717,-0.061541840434074,0.292919725179672,0.048200551420450,0.037222661077976,-0.096778050065041,-0.094696462154388,-0.055709276348352,-0.098201259970665,0.030295511707664,-0.158881708979607,0.028679560869932,-0.090071395039558));
res += mul(Get(s0,-dx,dy), float4x4(0.033688623458147,0.136683359742165,-0.111249990761280,-0.010855711065233,0.066435359418392,-0.112811386585236,-0.029788564890623,-0.061663553118706,0.131554067134857,0.085850380361080,-0.029989141970873,0.055489692837000,0.028889495879412,-0.199354082345963,0.016601664945483,-0.058333814144135));
res += mul(Get(s0,0,-dy), float4x4(0.005240824539214,0.185732170939445,0.259438842535019,0.044890191406012,0.161282539367676,-0.152236476540565,-0.094609253108501,0.070610389113426,-0.051281742751598,0.056243598461151,0.003363487543538,0.020572219043970,0.102893389761448,0.017125632613897,-0.267804324626923,-0.058714792132378));
res += mul(Get(s0,0,0), float4x4(-0.085289433598518,0.164564594626427,-0.357910543680191,-0.148002654314041,0.156894296407700,-0.057531915605068,0.098498389124870,0.047767866402864,-0.186908304691315,0.011157612316310,0.179789438843727,0.182710126042366,0.021579474210739,0.229351580142975,-0.245009437203407,0.024607211351395));
res += mul(Get(s0,0,dy), float4x4(0.008022975176573,-0.132151097059250,0.130020409822464,0.060447320342064,0.048288781195879,-0.045799039304256,-0.082964971661568,-0.000003733681297,0.119612626731396,-0.074855968356133,-0.109485805034637,0.007515730801970,0.047491744160652,-0.126649215817451,-0.027892636135221,0.002990968292579));
res += mul(Get(s0,dx,-dy), float4x4(0.022227684035897,-0.090622238814831,0.076794460415840,-0.020343394950032,0.053533960133791,-0.111592173576355,0.041698098182678,0.010193975642323,-0.352469891309738,-0.087712295353413,0.040047314018011,-0.069568462669849,-0.001551274792291,-0.041834909468889,-0.126100912690163,-0.062569066882133));
res += mul(Get(s0,dx,0), float4x4(-0.138384029269218,-0.038766611367464,-0.030136240646243,0.006748572457582,0.271678388118744,-0.149174973368645,-0.084441408514977,0.045318417251110,-0.316718667745590,0.018518339842558,-0.243776559829712,-0.278044104576111,-0.080297224223614,0.075084619224072,-0.117992386221886,0.063209973275661));
res += mul(Get(s0,dx,dy), float4x4(0.087880678474903,-0.072188444435596,-0.032267164438963,-0.042182687669992,-0.203354582190514,-0.142239868640900,-0.145017132163048,0.022767599672079,0.035053305327892,0.199988767504692,0.008374291472137,-0.164853647351265,-0.168766960501671,-0.179676443338394,0.060598216950893,-0.004432898014784));
res += mul(Get(s1,-dx,-dy), float4x4(-0.164435669779778,0.143555313348770,0.133237972855568,-0.052252128720284,-0.070026755332947,0.018766503781080,0.259265094995499,0.021296087652445,0.065832398831844,-0.121507897973061,-0.039067599922419,-0.016847586259246,0.192060589790344,0.366836905479431,0.019958402961493,0.071352779865265));
res += mul(Get(s1,-dx,0), float4x4(-0.120867095887661,0.126212954521179,0.168112948536873,0.012086633592844,-0.096832863986492,-0.022697346284986,0.071444280445576,0.025495573878288,-0.155853614211082,-0.431939393281937,-0.066813707351685,-0.109919406473637,0.107892155647278,0.041264310479164,0.154602542519569,0.066773660480976));
res += mul(Get(s1,-dx,dy), float4x4(-0.047206319868565,0.128136664628983,0.042507831007242,0.008746412582695,-0.025044560432434,0.028391050174832,-0.049921669065952,0.003550736233592,-0.201884254813194,-0.339546650648117,-0.057119760662317,-0.060943763703108,0.085777156054974,-0.140812203288078,0.093331471085548,0.033116623759270));
res += mul(Get(s1,0,-dy), float4x4(-0.021553764119744,0.055073652416468,-0.108897835016251,0.141361072659492,0.134361296892166,0.033989489078522,0.262147456407547,0.087809890508652,-0.113327085971832,-0.022015182301402,-0.062999799847603,-0.016535319387913,-0.099684625864029,0.118470564484596,0.271654635667801,0.037567660212517));
res += mul(Get(s1,0,0), float4x4(-0.076863273978233,-0.171186089515686,0.107740767300129,-0.166947409510612,0.156178236007690,-0.083630867302418,0.149507075548172,0.008818096481264,-0.191282719373703,-0.061354249715805,-0.452014356851578,-0.051685128360987,-0.182632207870483,-0.011344708502293,0.189320206642151,0.002375876298174));
res += mul(Get(s1,0,dy), float4x4(-0.031991910189390,0.123108141124249,-0.073613248765469,0.079523399472237,0.039503067731857,0.120346441864967,-0.061117369681597,0.038787342607975,-0.204103246331215,-0.128726899623871,0.041006904095411,-0.019420390948653,-0.079557366669178,0.035941801965237,0.065547518432140,0.152384504675865));
res += mul(Get(s1,dx,-dy), float4x4(-0.046766709536314,0.054552178829908,0.056554455310106,-0.004947659093887,0.033602260053158,-0.148382559418678,0.109485223889351,-0.002445950871333,-0.067173108458519,-0.096007429063320,-0.054338146001101,-0.012718837708235,-0.102886162698269,-0.140391424298286,-0.031654071062803,-0.028614584356546));
res += mul(Get(s1,dx,0), float4x4(0.024050362408161,-0.156809657812119,-0.073762640357018,-0.096980512142181,-0.035930946469307,0.116684481501579,-0.061254873871803,0.100150108337402,-0.101147376000881,-0.178484559059143,0.156299769878387,-0.041813883930445,-0.146754309535027,0.171290427446365,-0.096650496125221,-0.051392767578363));
res += mul(Get(s1,dx,dy), float4x4(-0.035064876079559,0.096742667257786,0.115361221134663,-0.017995906993747,0.063470095396042,0.056951995939016,0.051680527627468,-0.003882039571181,-0.027582958340645,-0.395449966192245,0.070058621466160,-0.033668622374535,-0.092077843844891,0.124209135770798,0.114581413567066,-0.055874962359667));
res += mul(Get(s2,-dx,-dy), float4x4(0.349100381135941,0.025777721777558,-0.049923412501812,-0.036989372223616,0.092461071908474,0.051326490938663,-0.137298792600632,-0.014502298086882,-0.114612489938736,0.025658290833235,-0.081657864153385,0.058240823447704,-0.068563140928745,0.167506545782089,-0.033947438001633,-0.054184067994356));
res += mul(Get(s2,-dx,0), float4x4(0.109836906194687,0.060798138380051,0.010542637668550,0.098286062479019,-0.007169640623033,-0.059972509741783,-0.149285718798637,0.141622722148895,-0.008200145326555,0.057925354689360,-0.100061848759651,0.149855181574821,0.038064360618591,0.104887582361698,0.036988608539104,-0.083344586193562));
res += mul(Get(s2,-dx,dy), float4x4(0.081319987773895,-0.064011842012405,0.021507276222110,-0.059816196560860,0.007596756331623,-0.063421674072742,-0.068639948964119,-0.038156352937222,-0.030858114361763,-0.153919190168381,-0.227911934256554,-0.064422927796841,0.048017252236605,0.023948039859533,0.044968005269766,0.015019422397017));
res += mul(Get(s2,0,-dy), float4x4(0.275992244482040,-0.100666016340256,0.028204409405589,0.052377790212631,-0.170254915952682,-0.014179978519678,0.023472663015127,0.135180994868279,0.081183344125748,0.058765094727278,0.206592395901680,0.010296102613211,-0.920687973499298,0.196714609861374,0.105132028460503,-0.046716913580894));
res += mul(Get(s2,0,0), float4x4(-0.148727625608444,0.158657148480415,-0.061432387679815,-0.339154005050659,-0.005196471232921,-0.013111964799464,0.013831023126841,-0.312295228242874,-0.218580663204193,-0.218658432364464,-0.175087168812752,0.188722461462021,-0.040515452623367,-0.041343703866005,0.124478206038475,0.031579561531544));
res += mul(Get(s2,0,dy), float4x4(0.096737191081047,-0.224533364176750,-0.115788280963898,-0.210029691457748,0.048040870577097,0.365786164999008,-0.049721568822861,0.366752296686172,0.072416611015797,-0.032340839505196,0.007080905139446,0.107731357216835,-0.229270398616791,-0.098028428852558,0.034907471388578,0.010096760466695));
res += mul(Get(s2,dx,-dy), float4x4(-0.181288316845894,0.102392770349979,0.040772642940283,-0.063953295350075,-0.003236291464418,-0.046820182353258,0.048457019031048,-0.007793008815497,0.041926410049200,-0.002819512737915,-0.031160963699222,0.040933717042208,-0.389248341321945,0.031599827110767,0.076835647225380,-0.006933844182640));
res += mul(Get(s2,dx,0), float4x4(0.096714586019516,0.133260294795036,0.054412961006165,0.114104270935059,-0.117007076740265,-0.047266662120819,-0.019127486273646,-0.163899049162865,-0.006207944825292,-0.024093875661492,0.241170570254326,0.047075528651476,-0.262119948863983,0.177646562457085,-0.083166286349297,-0.033392522484064));
res += mul(Get(s2,dx,dy), float4x4(0.223236262798309,-0.131613805890083,0.029998105019331,0.021847311407328,-0.163442835211754,-0.037568196654320,0.043990667909384,-0.025209510698915,0.095532350242138,-0.377135008573532,0.164275079965591,0.037612892687321,-0.033790107816458,0.204554155468941,0.125794976949692,-0.018169382587075));
res += mul(Get(s3,-dx,-dy), float4x4(0.185656219720840,-0.237013801932335,0.023809770122170,-0.019945509731770,-0.024000780656934,-0.069388777017593,-0.019250683486462,0.038980424404144,0.217410922050476,-0.142003983259201,-0.038932066410780,-0.089135676622391,0.037329461425543,-0.051643673330545,-0.072954088449478,-0.034137800335884));
res += mul(Get(s3,-dx,0), float4x4(0.002953237621114,-0.299858748912811,-0.035614632070065,0.123480528593063,0.271868705749512,-0.261713117361069,0.110633268952370,-0.018098486587405,-0.105204455554485,0.124698773026466,-0.004083009902388,0.040820784866810,0.058596324175596,0.145183429121971,-0.042031615972519,-0.008716446347535));
res += mul(Get(s3,-dx,dy), float4x4(-0.022009950131178,-0.172121480107307,0.073930993676186,0.028400428593159,-0.098850153386593,-0.286939769983292,-0.072952099144459,0.003960069268942,0.199719622731209,0.078558444976807,-0.101742617785931,0.027813661843538,0.067129112780094,0.066605515778065,-0.029984021559358,0.066511444747448));
res += mul(Get(s3,0,-dy), float4x4(-0.044509869068861,0.003014194546267,-0.188099160790443,-0.677552580833435,-0.016516003757715,0.215095505118370,0.099581494927406,-0.006263757590204,0.148155435919762,0.077003754675388,-0.227467536926270,-0.088330924510956,-0.043051715940237,0.016318177804351,-0.036846503615379,-0.043837539851665));
res += mul(Get(s3,0,0), float4x4(-0.113208614289761,0.091942742466927,-0.139423340559006,0.100733488798141,0.223382666707039,0.085483379662037,-0.184114605188370,-0.001459464197978,0.230310127139091,0.091303415596485,0.159674122929573,-0.014051223173738,-0.251418888568878,-0.040460709482431,-0.003850389970466,-0.077066570520401));
res += mul(Get(s3,0,dy), float4x4(-0.058521561324596,0.161402612924576,-0.009539860300720,0.065693631768227,-0.093886397778988,-0.044818527996540,0.077923648059368,0.034924671053886,0.090649083256721,0.045904468744993,-0.090296812355518,0.047235205769539,0.177408814430237,-0.000558916246518,-0.003084447234869,-0.002415476599708));
res += mul(Get(s3,dx,-dy), float4x4(-0.120940394699574,0.008336765691638,-0.063123211264610,-0.009787570685148,0.004531240090728,-0.298729360103607,0.143902659416199,-0.007338162045926,0.190344706177711,0.067301057279110,-0.103941231966019,-0.011607642285526,-0.058364026248455,0.013635012321174,-0.013419941067696,0.041554436087608));
res += mul(Get(s3,dx,0), float4x4(-0.053582180291414,0.144659131765366,0.010197781957686,0.190431669354439,-0.191991418600082,-0.197378098964691,-0.188408955931664,0.008649669587612,0.226799264550209,-0.154675275087357,0.055560145527124,0.001197981531732,-0.279544740915298,0.032240286469460,-0.081268079578876,0.051160525530577));
res += mul(Get(s3,dx,dy), float4x4(0.136873006820679,-0.063737504184246,0.048261262476444,-0.111269205808640,0.176522850990295,0.076186425983906,-0.060448810458183,-0.030562877655029,-0.181372836232185,0.121509246528149,-0.011603509075940,-0.018301369622350,0.054519660770893,0.001380881411023,-0.052930176258087,0.026550075039268));
res += mul(Get(s4,-dx,-dy), float4x4(0.057099416851997,-0.043084856122732,-0.117747172713280,-0.022921493276954,-0.050905544310808,-0.007446800824255,-0.284504681825638,0.029150344431400,-0.026825277134776,-0.007481915410608,0.031146759167314,0.011829972267151,0.029417967423797,0.312869012355804,0.117271624505520,-0.058685671538115));
res += mul(Get(s4,-dx,0), float4x4(-0.058698270469904,-0.202812552452087,-0.322194397449493,0.042921785265207,-0.026100719347596,-0.096904799342155,-0.022985480725765,-0.083211436867714,0.168406382203102,0.084616698324680,0.170982047915459,0.040790028870106,-0.109315715730190,0.248960122466087,0.080014288425446,-0.014669430442154));
res += mul(Get(s4,-dx,dy), float4x4(0.013040709309280,-0.171311870217323,0.018081562593579,-0.014603178016841,-0.015568493865430,-0.007645166944712,-0.014635398983955,-0.086134649813175,-0.080007649958134,-0.154788747429848,0.096657827496529,0.057583771646023,-0.063851073384285,0.291771560907364,-0.270167320966721,-0.071547426283360));
res += mul(Get(s4,0,-dy), float4x4(0.179094031453133,-0.056927725672722,-0.068550184369087,0.076942950487137,0.095335267484188,-0.041179899126291,-0.113795258104801,-0.028474686667323,-0.117213398218155,0.054043319076300,-0.129375189542770,-0.016626052558422,-0.069986611604691,-0.048975799232721,0.023623816668987,-0.008577216416597));
res += mul(Get(s4,0,0), float4x4(0.061703480780125,-0.092724144458771,0.352073431015015,-0.131744086742401,0.076237164437771,0.000025343935704,-0.160705119371414,-0.034144312143326,0.253897547721863,0.177554175257683,0.264189153909683,0.033497650176287,0.079833596944809,-0.105581745505333,0.137128099799156,0.039480283856392));
res += mul(Get(s4,0,dy), float4x4(0.098665796220303,-0.151593402028084,0.103425785899162,0.067125536501408,0.148690491914749,-0.047792144119740,-0.067327819764614,-0.115291640162468,0.054494000971317,0.049820840358734,-0.045817244797945,0.081282980740070,-0.108008526265621,-0.442142903804779,-0.012915600091219,-0.042571559548378));
res += mul(Get(s4,dx,-dy), float4x4(0.023112475872040,0.006506326608360,0.081557288765907,-0.007664855569601,-0.141461104154587,-0.008838035166264,-0.174994036555290,0.021428275853395,-0.025543157011271,0.044252596795559,0.160416767001152,-0.087065733969212,-0.026756798848510,0.121667720377445,0.018779272213578,0.010425309650600));
res += mul(Get(s4,dx,0), float4x4(-0.222271040081978,-0.148156031966209,-0.051371850073338,-0.102133169770241,0.093698464334011,-0.167849153280258,-0.016693167388439,0.001128459349275,0.181749850511551,0.341596692800522,0.041916321963072,-0.023874536156654,-0.116108313202858,0.122909449040890,0.023485913872719,-0.005737830884755));
res += mul(Get(s4,dx,dy), float4x4(0.102631531655788,0.125858277082443,0.134578898549080,-0.000197785935597,0.036260083317757,-0.186513036489487,-0.160239011049271,-0.044937174767256,-0.042367998510599,0.016426663845778,0.063156403601170,-0.050299827009439,-0.016873605549335,0.121367394924164,-0.001341726048850,-0.006219401955605));
res += mul(Get(s5,-dx,-dy), float4x4(-0.025550343096256,-0.050062470138073,-0.052540376782417,-0.009498966857791,0.011308601126075,0.098359689116478,-0.006011312827468,-0.080175101757050,0.043279059231281,0.132452234625816,0.029410077258945,0.008080386556685,0.006021484266967,0.028236530721188,0.018693404272199,-0.035453964024782));
res += mul(Get(s5,-dx,0), float4x4(-0.054478202015162,-0.181937426328659,-0.083886802196503,-0.022063508629799,0.091852292418480,0.106754295527935,0.320155620574951,0.048936173319817,-0.124076068401337,-0.114941358566284,-0.054454304277897,0.039089489728212,0.019912393763661,0.012661378830671,0.083309441804886,-0.050863310694695));
res += mul(Get(s5,-dx,dy), float4x4(-0.053406402468681,0.002776909619570,-0.041019767522812,-0.022339092567563,0.000661218131427,-0.245158389210701,-0.134914889931679,0.055361423641443,-0.154844179749489,0.161514297127724,-0.022676516324282,0.007816490717232,0.040176361799240,-0.603874742984772,0.129600316286087,-0.065216489136219));
res += mul(Get(s5,0,-dy), float4x4(-0.149587586522102,0.143525600433350,-0.059418138116598,0.011044865474105,0.011582438834012,0.035838458687067,-0.226955100893974,0.126459762454033,-0.037863872945309,-0.068104244768620,0.110734820365906,0.074189580976963,-0.165403291583061,-0.150477245450020,0.138412266969681,-0.078629411756992));
res += mul(Get(s5,0,0), float4x4(-0.144713282585144,0.120146580040455,-0.182722851634026,0.052048522979021,-0.098926559090614,-0.068824537098408,0.002449847757816,0.246234446763992,-0.191685527563095,0.095611058175564,0.164643242955208,0.095232918858528,0.028363414108753,-0.085502296686172,-0.030359448865056,0.109094001352787));
res += mul(Get(s5,0,dy), float4x4(0.046499710530043,0.103568166494370,0.106437787413597,-0.008570040576160,-0.129526972770691,-0.091051861643791,-0.010977430269122,-0.005878699012101,-0.055012214928865,0.036248404532671,0.071853540837765,0.038763597607613,0.090327598154545,0.291406124830246,-0.284452050924301,0.084939964115620));
res += mul(Get(s5,dx,-dy), float4x4(-0.049624480307102,0.129336088895798,-0.123533070087433,-0.023232512176037,0.078324504196644,0.071299582719803,0.068184800446033,-0.042227417230606,-0.039639674127102,0.065665334463120,0.122267454862595,-0.014082561247051,-0.126707702875137,0.008803091943264,-0.054360583424568,-0.021252054721117));
res += mul(Get(s5,dx,0), float4x4(-0.001651024445891,-0.100401200354099,0.234951257705688,-0.034389823675156,0.005846295040101,0.007435825187713,-0.056236106902361,-0.078323751688004,0.047333054244518,-0.001186116249301,0.131134688854218,0.083065159618855,0.176815122365952,-0.013903891667724,0.166025921702385,-0.017181210219860));
res += mul(Get(s5,dx,dy), float4x4(0.138534858822823,-0.174772635102272,0.181303530931473,0.064944386482239,-0.047171380370855,0.072304837405682,-0.077941328287125,0.048562902957201,0.086380802094936,-0.003696485189721,0.029728872701526,0.021434668451548,-0.017052793875337,-0.101450935006142,0.029204634949565,0.040259011089802));
res = max(float4(0, 0, 0, 0), res) + float4(-0.005081312730908,-0.036062873899937,0.498677134513855,0.745325028896332) * min(float4(0, 0, 0, 0), res);
return res;
}
