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
float4 res = float4(0.172894418239594,0.161376819014549,-0.257387846708298,-0.077094174921513);
res += mul(Get(s0,-dx,-dy), float4x4(0.060208488255739,0.006400814279914,-0.035125553607941,-0.072315014898777,0.049696397036314,0.131321325898170,-0.122475750744343,-0.059101216495037,0.130513161420822,-0.013328062370420,-0.003130801254883,0.038321845233440,0.175866916775703,0.046512469649315,0.027013758197427,0.098191879689693));
res += mul(Get(s0,-dx,0), float4x4(0.001394418650307,-0.034392628818750,-0.120933257043362,0.069528207182884,-0.125431850552559,-0.170901045203209,0.028001409024000,0.091067582368851,0.038752496242523,0.081223808228970,-0.019961226731539,-0.055175289511681,0.137576028704643,0.045881822705269,-0.113922685384750,0.004445285070688));
res += mul(Get(s0,-dx,dy), float4x4(0.131612241268158,-0.013323833234608,0.129264205694199,0.099372953176498,-0.193764150142670,-0.299312204122543,0.066109679639339,0.201064184308052,0.060549087822437,-0.018128450959921,-0.065800428390503,-0.011265752837062,0.092862017452717,-0.197721973061562,0.028601404279470,0.069408573210239));
res += mul(Get(s0,0,-dy), float4x4(-0.155831888318062,0.025973260402679,0.001050716731697,-0.135324835777283,0.062570832669735,-0.112642608582973,-0.078619040548801,0.081996373832226,-0.081781841814518,-0.074003718793392,-0.037305057048798,0.059308025985956,0.029418932273984,-0.017264720052481,-0.054016035050154,0.108900673687458));
res += mul(Get(s0,0,0), float4x4(0.100504986941814,0.078458108007908,-0.120935559272766,-0.488935559988022,-0.016587067395449,-0.046385318040848,-0.072349242866039,0.136291652917862,0.125087186694145,-0.106270894408226,-0.110804781317711,-0.394045174121857,0.185598000884056,0.109033100306988,-0.181488201022148,0.036436803638935));
res += mul(Get(s0,0,dy), float4x4(-0.137789562344551,0.224314793944359,0.037892710417509,0.007038156967610,-0.059574156999588,0.168901890516281,0.080209262669086,0.093270361423492,-0.027758615091443,0.172042518854141,-0.143746376037598,-0.095281511545181,0.120678380131721,0.133216932415962,-0.060645557940006,0.113533720374107));
res += mul(Get(s0,dx,-dy), float4x4(0.074529752135277,0.094043791294098,-0.065768025815487,-0.073827147483826,-0.056195508688688,0.012932627461851,0.045997168868780,0.106752157211304,-0.032736487686634,-0.064905099570751,0.051848996430635,0.026205096393824,-0.056203965097666,-0.096266858279705,0.082516610622406,0.072433181107044));
res += mul(Get(s0,dx,0), float4x4(-0.010585270822048,-0.128645926713943,-0.133167088031769,-0.136051103472710,-0.010221198201180,-0.133721426129341,-0.043158479034901,-0.014260095544159,-0.101279415190220,0.123159833252430,0.019652897492051,-0.051603183150291,-0.166484206914902,0.105030857026577,-0.033371154218912,0.110093683004379));
res += mul(Get(s0,dx,dy), float4x4(0.020885113626719,-0.269759833812714,0.073642395436764,-0.076906099915504,0.017939457669854,0.023133350536227,-0.152799457311630,-0.171463817358017,-0.066420197486877,-0.037024851888418,-0.037896491587162,-0.072775498032570,0.064849555492401,-0.020504916086793,-0.043339308351278,0.046242814511061));
res += mul(Get(s1,-dx,-dy), float4x4(-0.120491251349449,0.165283247828484,-0.051469098776579,-0.164911180734634,-0.224123194813728,0.039742767810822,0.291953980922699,0.051360808312893,0.018707491457462,0.167887777090073,-0.083987809717655,-0.013132062740624,0.258955299854279,-0.237864479422569,0.136738553643227,-0.131596729159355));
res += mul(Get(s1,-dx,0), float4x4(-0.001200175145641,0.077104128897190,-0.005506831221282,0.019524954259396,-0.890902340412140,0.006851553451270,0.048155795782804,0.077103868126869,0.026145428419113,0.073547221720219,-0.085530571639538,0.045067455619574,-0.136189758777618,-0.294537901878357,0.310427218675613,0.332917392253876));
res += mul(Get(s1,-dx,dy), float4x4(0.015387977473438,0.023068105801940,0.043672468513250,-0.033083725720644,0.104448340833187,0.121059238910675,0.054197262972593,-0.117052666842937,0.001606808044016,0.068981707096100,-0.031836837530136,-0.156286388635635,0.002685043727979,-0.278482347726822,0.013414443470538,0.371543824672699));
res += mul(Get(s1,0,-dy), float4x4(0.224965736269951,-0.100039392709732,-0.017274461686611,-0.005617714952677,-0.005420611705631,0.054265096783638,0.063464827835560,-0.189360260963440,0.034436929970980,-0.140956744551659,0.034120023250580,0.076292701065540,0.006903743837029,0.262911528348923,0.149182170629501,0.396229654550552));
res += mul(Get(s1,0,0), float4x4(-0.067801468074322,0.114789120852947,0.253410041332245,0.180400967597961,0.015611030161381,-0.353769302368164,-0.085022807121277,0.249843135476112,0.028760990127921,0.038885913789272,0.291735649108887,-0.137101739645004,-0.023212818428874,0.268992722034454,0.217440113425255,-0.016978284344077));
res += mul(Get(s1,0,dy), float4x4(-0.077088631689548,0.182118788361549,-0.093532055616379,0.083022892475128,0.055420733988285,0.063947364687920,-0.053272034972906,-0.130765572190285,0.159115910530090,-0.057635065168142,0.087507031857967,-0.006419411394745,-0.062840051949024,0.257374316453934,0.087209172546864,0.175907760858536));
res += mul(Get(s1,dx,-dy), float4x4(0.047922749072313,0.037113770842552,-0.035270623862743,-0.123234733939171,-0.019133064895868,-0.021366732195020,-0.005890108644962,0.068592049181461,-0.005676178261638,-0.052012611180544,0.029815280809999,0.086224555969238,0.046247486025095,-0.192784085869789,-0.130072593688965,-0.035663612186909));
res += mul(Get(s1,dx,0), float4x4(0.100736796855927,-0.046554885804653,-0.078670255839825,0.038103457540274,-0.015982450917363,0.090294048190117,-0.052175261080265,-0.028580162674189,0.034516729414463,0.193466588854790,0.107249811291695,0.073025785386562,0.074185706675053,0.181036114692688,-0.317898601293564,-0.213065579533577));
res += mul(Get(s1,dx,dy), float4x4(0.031255535781384,-0.207628175616264,-0.031709205359221,0.040831543505192,-0.086669020354748,0.052184276282787,-0.000399980432121,0.057613048702478,-0.076573230326176,-0.027221620082855,0.122992441058159,-0.029143689200282,0.033218104392290,-0.081024177372456,0.034106224775314,0.009132283739746));
res += mul(Get(s2,-dx,-dy), float4x4(0.057895500212908,0.077093057334423,-0.065643616020679,-0.010693336836994,0.067757308483124,-0.217272073030472,0.165866732597351,-0.204267606139183,0.035901170223951,-0.005875531118363,-0.025694871321321,0.016671355813742,0.020068349316716,-0.056764472275972,-0.020087372511625,0.001479288446717));
res += mul(Get(s2,-dx,0), float4x4(0.332250148057938,0.230635076761246,-0.166361510753632,-0.171930342912674,0.091394640505314,-0.266022711992264,0.181629836559296,0.176076546311378,-0.029750097543001,-0.264298915863037,0.024169949814677,0.085629552602768,-0.061794672161341,0.091307125985622,0.118611611425877,0.038952931761742));
res += mul(Get(s2,-dx,dy), float4x4(-0.083343759179115,0.044649075716734,-0.074365369975567,-0.128244534134865,0.107831872999668,-0.028986092656851,0.088242828845978,0.081188730895519,-0.044905323535204,0.016767194494605,-0.010240778326988,0.097335822880268,-0.024605469778180,-0.054923564195633,0.049125008285046,0.052845824509859));
res += mul(Get(s2,0,-dy), float4x4(-0.008837555535138,0.060604881495237,-0.080406121909618,-0.038266081362963,-0.199931681156158,0.348806142807007,0.095985494554043,-0.063609384000301,0.126391083002090,0.129610061645508,0.078763067722321,0.098939754068851,-0.027264852076769,-0.036573842167854,0.048049759119749,0.223000317811966));
res += mul(Get(s2,0,0), float4x4(-0.026960663497448,-0.138119339942932,-0.120366111397743,0.243240028619766,0.016549399122596,0.346810042858124,0.124893717467785,-0.096479319036007,-0.009692176245153,0.333657860755920,0.255971997976303,-0.111022099852562,-0.172723874449730,-0.192615047097206,0.355273306369781,-0.291231721639633));
res += mul(Get(s2,0,dy), float4x4(-0.115965045988560,-0.156777530908585,-0.210670769214630,0.219218149781227,0.088757731020451,0.019154839217663,0.144297212362289,-0.296000093221664,0.016004078090191,0.060950089246035,0.063667513430119,-0.042202007025480,0.046220757067204,0.127161830663681,-0.133303716778755,0.158581048250198));
res += mul(Get(s2,dx,-dy), float4x4(-0.183185532689095,-0.105387620627880,0.061954271048307,0.123687498271465,-0.057096164673567,0.050857108086348,0.001984437927604,-0.035872381180525,-0.046362884342670,0.042263265699148,0.089197471737862,0.101436570286751,0.056327454745770,0.135945230722427,-0.002981538884342,0.045982312411070));
res += mul(Get(s2,dx,0), float4x4(0.051244538277388,-0.026273336261511,0.021234728395939,0.174131810665131,0.121555417776108,0.382954657077789,-0.194861203432083,-0.006438403390348,-0.143009528517723,0.171821862459183,0.212617650628090,0.054649438709021,0.068237237632275,-0.090818487107754,0.030057700350881,-0.085847973823547));
res += mul(Get(s2,dx,dy), float4x4(-0.048215717077255,-0.101553089916706,-0.028484432026744,0.003989682998508,-0.028883155435324,-0.048748269677162,-0.032465320080519,0.030464397743344,0.011370602063835,-0.132971048355103,0.026796733960509,0.001851596753113,0.026721183210611,-0.179746702313423,-0.120850294828415,0.110872499644756));
res += mul(Get(s3,-dx,-dy), float4x4(-0.019860140979290,-0.200787916779518,-0.019121784716845,0.142734959721565,-0.219638943672180,0.071178942918777,0.049164708703756,0.045711036771536,-0.001894573331811,-0.170945659279823,0.023023968562484,0.150389209389687,0.005840468686074,-0.017603090032935,0.023251459002495,-0.007250447757542));
res += mul(Get(s3,-dx,0), float4x4(-0.104839920997620,0.142449036240578,0.146803110837936,-0.091311715543270,-0.064469434320927,-0.050119508057833,-0.023533439263701,-0.101869039237499,-0.133288800716400,-0.346342772245407,-0.160096645355225,0.175087943673134,-0.197043612599373,0.262822717428207,-0.217387139797211,-0.238012656569481));
res += mul(Get(s3,-dx,dy), float4x4(-0.080336458981037,0.170540839433670,0.098897017538548,-0.025866527110338,0.156932190060616,0.079946815967560,-0.058602731674910,-0.061097741127014,0.045676305890083,-0.111436113715172,0.127068102359772,0.047443885356188,0.136141806840897,0.016216108575463,-0.020446470007300,-0.171761840581894));
res += mul(Get(s3,0,-dy), float4x4(0.020383352413774,0.174345016479492,0.253896683454514,0.012110690586269,0.065120086073875,-0.007275150157511,0.014540612697601,0.195767149329185,-0.090890496969223,0.172124385833740,0.020883226767182,-0.096353799104691,-0.033526226878166,0.064047567546368,-0.094351992011070,-0.161207810044289));
res += mul(Get(s3,0,0), float4x4(0.174818426370621,-0.058015514165163,0.003470507683232,0.381247252225876,-0.336651653051376,0.207846060395241,-0.068018868565559,-0.217700928449631,-0.322618037462234,0.164865598082542,0.002464438090101,0.179425150156021,0.032680135220289,0.115370288491249,-0.710056364536285,-0.070592507719994));
res += mul(Get(s3,0,dy), float4x4(-0.093351036310196,-0.095152057707310,0.148545682430267,0.169634908437729,0.078921832144260,0.004067558329552,-0.235949173569679,-0.048203684389591,-0.072929404675961,-0.061886861920357,0.194300085306168,0.116288438439369,0.003426437033340,-0.170282572507858,-0.097650133073330,-0.140790194272995));
res += mul(Get(s3,dx,-dy), float4x4(0.062086027115583,-0.062629975378513,0.151113405823708,-0.072732910513878,0.040466137230396,-0.070302926003933,-0.087236091494560,0.097630083560944,-0.004553410224617,-0.213374674320221,-0.049753773957491,-0.042757093906403,0.026697319000959,-0.001223295927048,0.043246723711491,-0.057253662496805));
res += mul(Get(s3,dx,0), float4x4(-0.062028806656599,0.017675319686532,0.207773268222809,0.223946511745453,0.030437003821135,-0.144425809383392,0.034220788627863,-0.302599191665649,0.054497081786394,-0.550363242626190,-0.053027100861073,0.066584058105946,0.062613606452942,-0.298765927553177,0.015028491616249,-0.157261893153191));
res += mul(Get(s3,dx,dy), float4x4(-0.018917584791780,0.003841464407742,-0.001378123299219,0.045150823891163,-0.014399247244000,-0.180900946259499,-0.158182084560394,0.145471751689911,0.027822013944387,-0.001632989034988,0.112562254071236,-0.024760564789176,-0.116357006132603,-0.282249987125397,0.030851852148771,0.032339636236429));
res += mul(Get(s4,-dx,-dy), float4x4(-0.194397300481796,0.227272465825081,0.097878374159336,0.062829300761223,-0.044509448111057,0.038499254733324,-0.007966910488904,0.005445304326713,0.015924388542771,-0.179079756140709,-0.204666346311569,0.041124694049358,0.033861063420773,0.069892928004265,0.047144640237093,-0.037335745990276));
res += mul(Get(s4,-dx,0), float4x4(-0.581789672374725,0.342123508453369,0.038757685571909,-0.081745013594627,0.082456111907959,0.039702057838440,-0.092271029949188,-0.067924842238426,0.036314763128757,-0.018789736554027,-0.029167296364903,-0.003364917589352,-0.134041309356689,-0.135701864957809,0.021889019757509,0.076484829187393));
res += mul(Get(s4,-dx,dy), float4x4(-0.014178095385432,0.144955009222031,0.011413753964007,-0.008816585876048,0.034104913473129,-0.107456915080547,0.008613185957074,-0.006904621608555,0.027371784672141,-0.008209533989429,0.043955143541098,-0.064630515873432,0.124014005064964,-0.152701571583748,0.013205283321440,0.003739613806829));
res += mul(Get(s4,0,-dy), float4x4(-0.110921360552311,-0.242743983864784,0.079654216766357,0.014225104823709,-0.076186910271645,0.009465137496591,-0.012950564734638,-0.176798537373543,0.180363237857819,0.263845115900040,-0.163110136985779,-0.011909074150026,0.100076362490654,-0.114863470196724,-0.150681629776955,0.229549646377563));
res += mul(Get(s4,0,0), float4x4(-0.322220265865326,-0.169644057750702,-0.107980772852898,-0.261184364557266,-0.359536439180374,-0.321419984102249,0.459791570901871,0.293004065752029,-0.190264433622360,0.055160243064165,0.244716376066208,-0.025066072121263,-0.008743300102651,0.422768384218216,0.215789780020714,-0.292363226413727));
res += mul(Get(s4,0,dy), float4x4(-0.040509294718504,-0.205771178007126,-0.025957068428397,0.039687056094408,-0.023980582132936,-0.000465062941657,-0.340933114290237,-0.082424752414227,0.009841905906796,0.028768189251423,0.190810278058052,-0.074819885194302,0.004114584997296,0.243139788508415,-0.059267666190863,-0.091082371771336));
res += mul(Get(s4,dx,-dy), float4x4(0.071745641529560,-0.153887823224068,0.036395840346813,-0.089205905795097,0.026922173798084,-0.197361454367638,0.007689750753343,0.014755137264729,0.009260393679142,0.020457327365875,-0.185076266527176,0.000672016467433,0.006154916714877,0.073069237172604,0.049041286110878,-0.023534122854471));
res += mul(Get(s4,dx,0), float4x4(-0.023368453606963,-0.715670228004456,0.006447345018387,0.033509135246277,0.095209829509258,-0.312572628259659,-0.104060769081116,-0.127203240990639,-0.048414465039968,-0.095078513026237,-0.026470936834812,0.015983471646905,0.081603087484837,-0.350459039211273,0.129669785499573,0.020524855703115));
res += mul(Get(s4,dx,dy), float4x4(0.080254152417183,-0.082182392477989,-0.019320417195559,-0.065647713840008,-0.063669927418232,-0.384893894195557,-0.094379276037216,0.005712949670851,0.016817929223180,0.049743238836527,0.093623124063015,-0.001357825240120,-0.029651362448931,0.000662242178805,0.094798773527145,0.049523558467627));
res += mul(Get(s5,-dx,-dy), float4x4(0.069829322397709,-0.005616784095764,-0.000127814360894,-0.048912703990936,0.012822126969695,-0.059823848307133,0.004949796944857,0.012342297472060,-0.270073384046555,-0.222871795296669,-0.009527835063636,0.291218042373657,0.279142767190933,0.032751679420471,-0.092857375741005,0.070530466735363));
res += mul(Get(s5,-dx,0), float4x4(-0.057756125926971,-0.385107636451721,0.005870142020285,0.127351835370064,0.050674319267273,0.086846306920052,0.188665941357613,0.034503497183323,-0.219859644770622,0.240393519401550,-0.003072599181905,0.123021572828293,0.446868270635605,0.058086827397346,-0.126715332269669,-0.167967721819878));
res += mul(Get(s5,-dx,dy), float4x4(0.003893844317645,0.000151666754391,0.058281153440475,-0.017074435949326,-0.024066258221865,0.052341684699059,0.002549926983193,0.078686155378819,-0.256797373294830,-0.054436098784208,0.139045879244804,-0.017234500497580,0.158670350909233,-0.199914082884789,0.031716741621494,-0.062622778117657));
res += mul(Get(s5,0,-dy), float4x4(0.247329354286194,0.047835838049650,-0.090913802385330,0.013993291184306,0.105269148945808,-0.017214603722095,-0.025839686393738,0.079364612698555,0.184455007314682,0.084461092948914,0.005029299762100,-0.169307038187981,0.052126113325357,-0.008238557726145,0.108147464692593,0.026584111154079));
res += mul(Get(s5,0,0), float4x4(-0.180721268057823,0.178882122039795,0.089215368032455,-0.244365081191063,-0.329476326704025,0.044680841267109,0.486307591199875,0.104043290019035,0.111392691731453,-0.164292901754379,-0.178906142711639,0.328737676143646,-0.304442465305328,-0.111209228634834,0.254794239997864,0.224281817674637));
res += mul(Get(s5,0,dy), float4x4(0.105287067592144,0.074783809483051,0.169601514935493,-0.116684667766094,-0.131902664899826,-0.050272811204195,0.219286575913429,0.177019968628883,-0.112887755036354,0.175627440214157,0.247240722179413,-0.109902568161488,-0.124379470944405,-0.004337564110756,0.220537528395653,0.116347618401051));
res += mul(Get(s5,dx,-dy), float4x4(-0.012939030304551,-0.016557548195124,0.084265068173409,0.196018993854523,-0.014188542962074,0.019227597862482,0.056876137852669,-0.069664843380451,0.025276089087129,-0.095901906490326,0.100215412676334,-0.073842965066433,-0.019080551341176,0.248568698763847,0.088777080178261,0.024000322446227));
res += mul(Get(s5,dx,0), float4x4(0.199883386492729,-0.046740647405386,-0.140025556087494,-0.275439918041229,0.091015689074993,0.013062701560557,0.030900342389941,-0.066163741052151,-0.032815840095282,-0.188505724072456,0.150973081588745,0.113211117684841,-0.034835547208786,0.242042049765587,0.049822580069304,0.028493938967586));
res += mul(Get(s5,dx,dy), float4x4(0.060254141688347,0.042011342942715,0.019655782729387,-0.059125009924173,0.127099767327309,-0.082658022642136,0.105505824089050,0.021522955968976,0.083829276263714,-0.041607368737459,-0.093810342252254,-0.083786897361279,0.028513722121716,0.003301477991045,0.126023203134537,-0.033053025603294));
res = max(float4(0, 0, 0, 0), res) + float4(0.058107722550631,0.044770877808332,0.104635298252106,0.075816348195076) * min(float4(0, 0, 0, 0), res);
return res;
}
