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
float4 res = float4(-0.024999206885695,-0.129044026136398,0.043542556464672,0.002699110424146);
res += mul(Get(s0,-dx,-dy), float4x4(-0.123588703572750,0.031913708895445,-0.156465306878090,-0.074793688952923,-0.016714083030820,0.062955677509308,-0.015289107337594,0.004612357821316,0.011191877536476,-0.007924279198050,-0.070512883365154,0.051639892160892,0.006097303237766,0.012472142465413,0.044231858104467,-0.027784032747149));
res += mul(Get(s0,-dx,0), float4x4(0.003515581600368,-0.075839310884476,0.033516153693199,-0.131184279918671,0.008488605730236,0.045490428805351,0.022738624364138,0.045528158545494,0.182192519307137,0.043325945734978,0.086553417146206,0.007315861992538,-0.129800111055374,-0.007588077802211,-0.198713704943657,-0.016168773174286));
res += mul(Get(s0,-dx,dy), float4x4(-0.067331932485104,0.027643555775285,0.026520848274231,-0.075246363878250,0.000249913806329,-0.015582942403853,0.018996557220817,0.012700747698545,-0.037582978606224,-0.012567312456667,0.029767442494631,0.086504220962524,-0.113048687577248,-0.062171902507544,0.168247938156128,-0.001933700637892));
res += mul(Get(s0,0,-dy), float4x4(-0.128463432192802,0.111520312726498,0.012817323207855,-0.085366927087307,-0.030055820941925,-0.066802650690079,0.059352960437536,-0.025038363412023,-0.240431919693947,-0.168167397379875,0.055917758494616,-0.093197070062160,0.127455860376358,-0.018587194383144,0.145174905657768,-0.056350663304329));
res += mul(Get(s0,0,0), float4x4(0.410869598388672,0.257441431283951,-0.036316249519587,-0.158562585711479,0.056041020900011,-0.269810914993286,-0.031829256564379,-0.025550549849868,0.050337776541710,-0.307332277297974,0.303950250148773,-0.651594758033752,-0.010138312354684,0.041954968124628,-0.039236068725586,-0.020738350227475));
res += mul(Get(s0,0,dy), float4x4(-0.253886669874191,-0.134304299950600,0.038978114724159,-0.037850636988878,0.054703522473574,-0.053686540573835,-0.079818777740002,-0.045959547162056,0.259197205305099,0.068672575056553,-0.255566537380219,0.262040138244629,0.056216530501842,0.088459178805351,0.022687889635563,0.035641305148602));
res += mul(Get(s0,dx,-dy), float4x4(-0.002159492345527,-0.020658465102315,0.069186493754387,-0.049742516130209,-0.042446538805962,-0.181865379214287,-0.095093242824078,0.014450653456151,-0.080556906759739,0.197762027382851,0.069139763712883,0.074591748416424,-0.036081302911043,-0.100232355296612,0.107667677104473,-0.023394519463181));
res += mul(Get(s0,dx,0), float4x4(-0.061489596962929,-0.045533169060946,0.058959987014532,-0.048353582620621,0.103094384074211,0.097727224230766,0.035288196057081,-0.023467181250453,-0.129081264138222,0.262236803770065,-0.073627941310406,0.228625282645226,-0.133993476629257,-0.044526539742947,-0.067998014390469,0.008109875023365));
res += mul(Get(s0,dx,dy), float4x4(0.038080424070358,-0.003732224227861,-0.026786705479026,-0.022217070683837,0.104398742318153,-0.017563074827194,-0.023553965613246,-0.045151416212320,0.097776278853416,0.000560992164537,-0.032878037542105,0.116122215986252,-0.076168552041054,-0.153946697711945,-0.036013990640640,-0.006602005567402));
res += mul(Get(s1,-dx,-dy), float4x4(0.074202783405781,0.032873041927814,0.023442225530744,-0.023697651922703,-0.017481425777078,-0.075220495462418,0.035532571375370,-0.032051090151072,0.007243630010635,0.085044145584106,-0.097378708422184,0.095102541148663,0.079643003642559,0.005548673216254,-0.072180390357971,0.011247583664954));
res += mul(Get(s1,-dx,0), float4x4(-0.040386341512203,-0.042933139950037,0.111071489751339,-0.046770539134741,-0.044921625405550,-0.136536389589310,-0.076809704303741,0.009808817878366,0.114951319992542,0.101506665349007,-0.023904517292976,0.106127351522446,0.088180623948574,-0.063101515173912,0.056856490671635,0.002249490004033));
res += mul(Get(s1,-dx,dy), float4x4(0.081624075770378,0.071347095072269,0.068041153252125,-0.025087643414736,0.074066005647182,-0.058096252381802,-0.051106795668602,0.031051417812705,-0.045196369290352,-0.044789727777243,0.121256180107594,0.026389058679342,0.068666711449623,-0.018485996872187,-0.002770449733362,0.005224832333624));
res += mul(Get(s1,0,-dy), float4x4(-0.061548080295324,-0.124727636575699,-0.083325870335102,0.023253373801708,0.112810775637627,0.049410324543715,-0.069545120000839,-0.025918681174517,-0.060325168073177,-0.139918714761734,0.118886120617390,0.026563350111246,0.100357815623283,-0.018011400476098,0.012186225503683,0.021562350913882));
res += mul(Get(s1,0,0), float4x4(0.081385321915150,-0.145476475358009,0.163071259856224,-0.048510275781155,0.133577644824982,0.039524242281914,-0.316534668207169,-0.061232756823301,-0.218739733099937,-0.160659402608871,0.017053408548236,0.046130388975143,0.343123078346252,0.161900743842125,-0.114684320986271,-0.074436202645302));
res += mul(Get(s1,0,dy), float4x4(-0.011703778058290,0.034198366105556,0.011443596333265,-0.049657385796309,0.116456434130669,0.011837472207844,0.113822571933270,0.005881100893021,0.110815085470676,0.033543642610312,-0.160785838961601,0.022120051085949,-0.100529402494431,-0.074749477207661,0.077335223555565,-0.016029829159379));
res += mul(Get(s1,dx,-dy), float4x4(-0.005079270340502,0.010327716358006,0.037424881011248,0.055768419057131,-0.083262771368027,0.046975277364254,-0.047889094799757,0.013232387602329,-0.099835135042667,0.132064446806908,-0.005914053414017,-0.061785217374563,0.114082805812359,-0.095839835703373,0.034937415271997,-0.007525276858360));
res += mul(Get(s1,dx,0), float4x4(0.043960820883512,0.077312670648098,0.038660880178213,-0.013035734184086,-0.095816776156425,0.011294544674456,-0.087649084627628,0.079107493162155,0.017179096117616,0.119640223681927,0.160501122474670,-0.152839675545692,0.096416383981705,-0.001540463883430,-0.058500658720732,0.001956805353984));
res += mul(Get(s1,dx,dy), float4x4(0.122824467718601,0.022250279784203,-0.039982490241528,-0.015332531183958,0.002937101526186,-0.045063357800245,0.029627570882440,-0.002559683984146,-0.004705496598035,0.018162684515119,-0.068475000560284,0.009938234463334,0.025260692462325,0.022157726809382,-0.071470670402050,-0.014513738453388));
res += mul(Get(s2,-dx,-dy), float4x4(-0.055880624800920,0.009692782536149,0.206476613879204,-0.053096294403076,-0.047947198152542,0.035112302750349,0.115553982555866,0.030748303979635,-0.002383838407695,0.035057745873928,-0.013883279636502,-0.035428810864687,-0.067863278090954,0.132554367184639,0.110271982848644,-0.016529122367501));
res += mul(Get(s2,-dx,0), float4x4(-0.030209321528673,-0.057076834142208,0.186987340450287,-0.078126937150955,0.109126731753349,0.116949304938316,-0.040989834815264,-0.013794727623463,-0.011092434637249,0.104219496250153,-0.320807993412018,0.022459940984845,0.034302294254303,0.016305368393660,0.088977769017220,-0.013799381442368));
res += mul(Get(s2,-dx,dy), float4x4(-0.058903269469738,-0.011448208242655,0.039378792047501,-0.024042014032602,0.041766177862883,0.037362135946751,0.069233685731888,0.012352570891380,0.036163464188576,0.012866194359958,-0.120572924613953,0.047713089734316,-0.082466907799244,0.007977280765772,-0.131807938218117,-0.020234094932675));
res += mul(Get(s2,0,-dy), float4x4(-0.040067505091429,-0.036137413233519,0.080914467573166,0.014203613623977,0.017845071852207,0.055094175040722,0.105196155607700,0.087420292198658,0.189428195357323,-0.027920490130782,0.166912928223610,-0.003342424053699,-0.027305996045470,0.082876324653625,0.008383419364691,0.007051315624267));
res += mul(Get(s2,0,0), float4x4(-0.135683253407478,0.026193330064416,0.137815505266190,-0.022184031084180,0.009126001037657,-0.168131485581398,-0.135622546076775,0.004719716031104,-0.162323936820030,-0.112058401107788,-0.153818637132645,-0.073695696890354,-0.109377324581146,-0.041483536362648,0.025814080610871,0.046669963747263));
res += mul(Get(s2,0,dy), float4x4(-0.038362976163626,0.047405272722244,0.089235521852970,-0.003169080242515,0.040327988564968,0.046000059694052,-0.153993889689445,0.073126226663589,-0.135138496756554,-0.048954106867313,0.035152398049831,0.052515942603350,0.034509573131800,0.100755557417870,0.094483777880669,0.001566957216710));
res += mul(Get(s2,dx,-dy), float4x4(0.078933790326118,-0.047590181231499,0.142569735646248,0.013276538811624,-0.031904723495245,-0.063746415078640,0.137305855751038,0.048554114997387,-0.029856787994504,0.019850688055158,-0.064779616892338,0.011654672212899,-0.012558143585920,0.112077303230762,0.061915516853333,0.057469572871923));
res += mul(Get(s2,dx,0), float4x4(-0.200746163725853,0.020524296909571,0.082898795604706,0.011042612604797,0.050933983176947,0.110172204673290,-0.013938869349658,0.049512438476086,0.103271417319775,-0.110908158123493,-0.051105394959450,-0.063991002738476,-0.162938877940178,0.261576265096664,-0.131295934319496,0.141811177134514));
res += mul(Get(s2,dx,dy), float4x4(-0.196563974022865,0.170429274439812,-0.029699452221394,0.005351522006094,-0.019450308755040,0.072033904492855,0.007365264464170,0.034013107419014,-0.172354504466057,-0.001998221734539,0.039300117641687,-0.075234167277813,-0.003631108906120,-0.055425580590963,-0.047180309891701,0.031164638698101));
res += mul(Get(s3,-dx,-dy), float4x4(0.015849428251386,-0.009011524729431,-0.047262042760849,0.049684707075357,0.121553108096123,-0.108832173049450,0.101743929088116,-0.030646963045001,-0.012214652262628,-0.045672666281462,0.049419365823269,-0.051502801477909,0.007707504555583,0.003729608375579,0.018121695145965,-0.002492629922926));
res += mul(Get(s3,-dx,0), float4x4(0.165236890316010,0.104704603552818,0.036490373313427,-0.006763479672372,0.015619256533682,0.081400178372860,0.001270570792258,0.056894190609455,0.117249786853790,-0.010515359230340,-0.036226082593203,-0.047062613070011,-0.032047800719738,-0.010319313034415,0.093179062008858,-0.047543540596962));
res += mul(Get(s3,-dx,dy), float4x4(-0.067171439528465,-0.076103180646896,0.181995257735252,-0.049076683819294,-0.022951599210501,0.037088457494974,0.094169139862061,0.070682980120182,-0.026460288092494,0.000733588123694,0.017939120531082,-0.014253857545555,-0.068690173327923,-0.032667875289917,0.056255534291267,-0.056594826281071));
res += mul(Get(s3,0,-dy), float4x4(-0.057629846036434,0.099382154643536,-0.016593653708696,0.059806261211634,0.031375307589769,-0.033970374614000,-0.086022451519966,0.010637821629643,0.156430676579475,0.040381595492363,0.087557241320610,-0.057146299630404,-0.073616497218609,-0.072680503129959,0.214749872684479,-0.010881386697292));
res += mul(Get(s3,0,0), float4x4(-0.301346480846405,-0.139874458312988,-0.079452849924564,0.092403240501881,0.140000566840172,0.172779500484467,0.032784603536129,0.058012422174215,-0.215242251753807,0.037683211266994,0.146904230117798,-0.096850059926510,0.095540605485439,-0.078293852508068,0.071744702756405,-0.054867908358574));
res += mul(Get(s3,0,dy), float4x4(-0.074927330017090,-0.014581728726625,0.132001474499702,-0.036642279475927,0.037408079952002,-0.006810145918280,-0.243525728583336,0.069760769605637,-0.002791345119476,0.013779563829303,-0.198406204581261,-0.005816347897053,-0.098685637116432,0.015340379439294,0.013036962598562,-0.049354564398527));
res += mul(Get(s3,dx,-dy), float4x4(-0.014364013448358,0.100052915513515,0.050514779984951,-0.022780243307352,0.017153168097138,0.131929397583008,-0.059210382401943,0.045385722070932,0.050132431089878,-0.057418022304773,0.001674958621152,-0.025140026584268,-0.051485531032085,0.049244143068790,0.112910754978657,-0.010082218796015));
res += mul(Get(s3,dx,0), float4x4(-0.135747641324997,-0.110708050429821,-0.009355784393847,-0.058627102524042,0.077823467552662,-0.118860334157944,0.033088970929384,0.008965925313532,-0.106357902288437,-0.298130929470062,0.035749349743128,-0.042275041341782,-0.035288043320179,0.031194638460875,-0.221114531159401,0.033805049955845));
res += mul(Get(s3,dx,dy), float4x4(-0.029461702331901,0.035319700837135,-0.030810916796327,-0.028595698997378,0.037066623568535,-0.052804812788963,0.126184105873108,-0.087494507431984,-0.020571824163198,-0.120198003947735,-0.069184377789497,-0.001607855199836,0.008397977799177,0.001835490111262,-0.043392855674028,0.044949475675821));
res += mul(Get(s4,-dx,-dy), float4x4(0.028921553865075,0.010106503032148,0.017910605296493,-0.008567476645112,-0.139963924884796,0.079468354582787,-0.073572121560574,-0.048555575311184,-0.071285061538219,-0.053733903914690,-0.122037693858147,-0.021400002762675,-0.097638919949532,0.058124084025621,0.014834925532341,0.018972646445036));
res += mul(Get(s4,-dx,0), float4x4(0.065776973962784,0.017688920721412,0.004656397271901,0.036781746894121,-0.013868637382984,0.106662228703499,0.074479348957539,-0.093056015670300,-0.123401500284672,0.075096309185028,-0.014563472941518,0.005901877768338,0.068365477025509,0.080551646649837,0.015778334811330,-0.005971692502499));
res += mul(Get(s4,-dx,dy), float4x4(-0.064123466610909,0.004077665973455,-0.056974396109581,0.006565190386027,0.055400379002094,0.165056347846985,-0.109150893986225,-0.018796151503921,0.116834200918674,0.066220618784428,0.120734430849552,-0.051304966211319,0.085264839231968,0.047112993896008,-0.017353357747197,0.021295050159097));
res += mul(Get(s4,0,-dy), float4x4(-0.118582367897034,-0.132285282015800,-0.444057136774063,0.025867270305753,-0.157892957329750,-0.019312061369419,-0.161244407296181,-0.028604878112674,-0.133502826094627,-0.012817098759115,-0.151246607303619,-0.083064571022987,0.072057239711285,0.048161372542381,0.079955339431763,-0.047106169164181));
res += mul(Get(s4,0,0), float4x4(0.063715934753418,-0.119914285838604,-0.273088932037354,0.051796611398458,-0.115911670029163,-0.199705392122269,0.080478355288506,-0.055257286876440,0.129011571407318,-0.036968436092138,0.035780604928732,-0.011787109076977,-0.287254393100739,-0.006693746428937,0.084131866693497,-0.095179006457329));
res += mul(Get(s4,0,dy), float4x4(-0.079907082021236,0.008024900220335,0.035370949655771,0.013134504668415,-0.040860641747713,-0.014992359094322,-0.078890621662140,-0.036460470408201,0.131605178117752,0.016982560977340,0.156777098774910,-0.038437254726887,0.037553228437901,-0.053276229649782,-0.133028119802475,-0.019034843891859));
res += mul(Get(s4,dx,-dy), float4x4(-0.017295258119702,-0.032615378499031,-0.137744396924973,0.024384586140513,-0.045951548963785,-0.037230819463730,0.036881614476442,-0.004412536974996,-0.105178676545620,0.052268818020821,0.053621433675289,0.001033998676576,0.083638034760952,-0.096173882484436,-0.024413771927357,-0.052550528198481));
res += mul(Get(s4,dx,0), float4x4(0.014144905842841,-0.060823373496532,-0.085363745689392,0.030254300683737,-0.111458733677864,-0.036168225109577,-0.140123829245567,0.051343787461519,0.017551094293594,0.003410082077608,0.013842005282640,0.043051037937403,-0.071232587099075,-0.170515164732933,0.129083201289177,-0.095162637531757));
res += mul(Get(s4,dx,dy), float4x4(-0.079498365521431,-0.028545910492539,-0.106969386339188,-0.031445804983377,-0.000227934186114,0.068057604134083,-0.125710591673851,0.001401989487931,-0.045454379171133,0.065183371305466,0.069567203521729,0.010608281940222,-0.071323201060295,-0.091669492423534,0.004795765038580,-0.042648073285818));
res += mul(Get(s5,-dx,-dy), float4x4(-0.114404819905758,-0.005998439155519,-0.058749895542860,-0.001515122945420,-0.045361753553152,0.006414936389774,-0.003030408173800,0.016898021101952,-0.076301924884319,-0.107775799930096,-0.050757504999638,0.047086011618376,-0.017039913684130,0.052077818661928,0.108462519943714,-0.027384100481868));
res += mul(Get(s5,-dx,0), float4x4(-0.027374403551221,-0.064124733209610,-0.022888455539942,-0.014245214872062,0.017388556152582,0.028957828879356,-0.068817168474197,0.078257836401463,-0.055370375514030,0.041809920221567,-0.040288884192705,0.024105794727802,-0.106559067964554,0.015991354361176,0.028317023068666,0.039345379918814));
res += mul(Get(s5,-dx,dy), float4x4(-0.026750426739454,-0.073454126715660,-0.064882457256317,0.001395232742652,0.023326644673944,-0.030222535133362,0.182232618331909,-0.010163485072553,0.109366789460182,0.024191889911890,-0.087487608194351,0.025656145066023,-0.052881367504597,0.025177940726280,0.025466915220022,0.024971021339297));
res += mul(Get(s5,0,-dy), float4x4(-0.173210069537163,-0.185358583927155,-0.172269657254219,0.043640960007906,-0.033051822334528,0.137171059846878,0.045208770781755,0.052529424428940,-0.027347199618816,0.076616853475571,-0.027850266546011,0.101180322468281,-0.091774657368660,-0.044930316507816,-0.036952402442694,-0.142091244459152));
res += mul(Get(s5,0,0), float4x4(0.114252075552940,-0.272196233272552,0.051016710698605,0.041533388197422,0.184783875942230,0.121156834065914,0.001342357951216,0.093280255794525,-0.007572657894343,0.209882572293282,0.044173985719681,-0.124750539660454,0.083580218255520,0.007260475773364,-0.020499292761087,-0.068671800196171));
res += mul(Get(s5,0,dy), float4x4(0.024467442184687,-0.099790953099728,-0.036962229758501,-0.033225629478693,-0.027545688673854,0.065437242388725,0.075812391936779,-0.009813142940402,-0.050166402012110,0.040558282285929,-0.044731054455042,-0.069908589124680,0.123649366199970,0.043563548475504,0.060965422540903,0.045390859246254));
res += mul(Get(s5,dx,-dy), float4x4(0.000478965841467,0.131909936666489,0.002979727229103,0.043749306350946,-0.021428998559713,0.029877092689276,-0.102002926170826,-0.001762588042766,-0.032151442021132,-0.130897462368011,-0.057873912155628,0.063671328127384,0.057720351964235,-0.056699879467487,0.090566553175449,-0.097904823720455));
res += mul(Get(s5,dx,0), float4x4(-0.193526193499565,0.150062754750252,-0.153864249587059,-0.001254402450286,0.074052058160305,-0.028265682980418,-0.060734681785107,-0.023008940741420,-0.047316476702690,-0.142189443111420,-0.165416732430458,-0.030436988919973,0.017477137967944,-0.147033303976059,-0.010192415677011,-0.083176054060459));
res += mul(Get(s5,dx,dy), float4x4(-0.009355134330690,0.025410987436771,0.028111202642322,-0.012110728770494,-0.043077345937490,0.013039579614997,0.165555477142334,-0.012335581704974,-0.050499435514212,0.044349286705256,0.020022882148623,-0.096238255500793,0.012102087959647,0.002089721150696,0.151260942220688,0.003409950761124));
res = max(float4(0, 0, 0, 0), res) + float4(0.074293613433838,-0.025562645867467,0.067479759454727,0.859332501888275) * min(float4(0, 0, 0, 0), res);
return res;
}