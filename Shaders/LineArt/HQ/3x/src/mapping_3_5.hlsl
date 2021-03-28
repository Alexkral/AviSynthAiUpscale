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
float4 res = float4(0.159079983830452,0.140938997268677,-0.121113285422325,0.069877482950687);
res += mul(Get(s0,-dx,-dy), float4x4(-0.129569932818413,0.254198908805847,-0.020839096978307,0.024690026417375,-0.098200559616089,-0.088501155376434,-0.090325072407722,-0.016743989661336,0.057515636086464,0.000117129427963,-0.042030986398458,-0.029591375961900,0.008577070198953,-0.535020172595978,-0.060480341315269,0.030178593471646));
res += mul(Get(s0,-dx,0), float4x4(-0.074707746505737,0.053109258413315,0.038757607340813,-0.068265996873379,-0.106804251670837,0.082073010504246,-0.352169990539551,-0.055394243448973,-0.163052052259445,0.096342198550701,-0.007373921107501,-0.037867888808250,-0.007709246594459,-0.248689815402031,0.013731582090259,0.003175566904247));
res += mul(Get(s0,-dx,dy), float4x4(0.052138704806566,0.115755081176758,0.175248622894287,0.025397162884474,-0.304496586322784,0.062050729990005,-0.174135506153107,-0.053622830659151,0.037779700011015,-0.100779466331005,-0.212616652250290,-0.054987572133541,-0.126939237117767,0.013341053389013,0.033117298036814,0.039148662239313));
res += mul(Get(s0,0,-dy), float4x4(-0.152693361043930,0.023260062560439,0.199716985225677,0.013367163948715,-0.185610458254814,0.151651993393898,-0.244826942682266,-0.058900304138660,-0.034590240567923,0.011712005361915,-0.203081101179123,-0.014436129480600,-0.076226286590099,-0.361822932958603,-0.066754475235939,0.013328055851161));
res += mul(Get(s0,0,0), float4x4(-0.075545348227024,-0.388747572898865,-0.139726176857948,0.095606952905655,-0.108206711709499,-0.010157310403883,-0.319932132959366,-0.029888391494751,-0.274701803922653,0.185214549303055,0.025100121274590,0.148562714457512,-0.076949834823608,-0.427158206701279,-0.295951813459396,0.129647642374039));
res += mul(Get(s0,0,dy), float4x4(-0.266283631324768,0.188455745577812,0.061268974095583,0.099182859063148,-0.343653470277786,0.127208009362221,-0.257580131292343,-0.023879228159785,0.231748923659325,-0.050363954156637,0.023930329829454,0.015099544078112,-0.297831565141678,-0.329286664724350,-0.254506975412369,0.041352916508913));
res += mul(Get(s0,dx,-dy), float4x4(0.004228538367897,0.096145644783974,-0.109746798872948,-0.005494444165379,-0.243990421295166,0.286979526281357,-0.152306914329529,-0.051023028790951,-0.097981780767441,0.070691943168640,-0.024903297424316,-0.013221358880401,-0.044225286692381,-0.240198075771332,-0.013652490451932,-0.027125528082252));
res += mul(Get(s0,dx,0), float4x4(-0.060245774686337,0.120718158781528,-0.046221569180489,0.030840795487165,-0.092296950519085,-0.176564931869507,-0.169462159276009,0.010991494171321,-0.053898144513369,-0.060620628297329,0.290965735912323,0.015528119169176,-0.086679868400097,-0.294469237327576,0.124038547277451,0.004748857580125));
res += mul(Get(s0,dx,dy), float4x4(-0.144135564565659,0.177108481526375,-0.017886597663164,0.026799229905009,-0.310729742050171,-0.074782282114029,-0.220330268144608,0.133015543222427,-0.048700198531151,-0.126607522368431,0.096649803221226,0.015139604918659,0.023406542837620,-0.114502482116222,-0.007284911349416,-0.044286236166954));
res += mul(Get(s1,-dx,-dy), float4x4(-0.108102776110172,-0.141083836555481,0.000379406992579,-0.038197115063667,0.038674224168062,0.079596467316151,0.021926339715719,-0.040832124650478,-0.087929695844650,-0.065577708184719,0.060427643358707,0.054722018539906,0.030849665403366,0.038365583866835,-0.153181165456772,-0.113484352827072));
res += mul(Get(s1,-dx,0), float4x4(-0.161778077483177,0.145398646593094,-0.015191532671452,0.084460042417049,0.017803814262152,0.094504155218601,0.021494600921869,-0.003010583110154,-0.150019481778145,-0.093582525849342,-0.001920654904097,0.114673964679241,0.170219346880913,0.013706190511584,0.034389041364193,-0.028443275019526));
res += mul(Get(s1,-dx,dy), float4x4(-0.439688324928284,-0.370564371347427,-0.102447159588337,0.014259473420680,-0.408413261175156,-0.000912243092898,-0.171492680907249,-0.054193682968616,0.000747757323552,0.010227674618363,0.032199323177338,0.020087067037821,0.077392771840096,0.032806284725666,0.020843455567956,-0.047545108944178));
res += mul(Get(s1,0,-dy), float4x4(-0.050691064447165,-0.262771248817444,0.111603856086731,0.009787611663342,0.038014817982912,0.003754799254239,-0.003044842509553,0.001395133556798,-0.064225032925606,-0.008729207329452,0.099409922957420,0.076201699674129,0.198590412735939,-0.154463216662407,0.021123219281435,0.040835667401552));
res += mul(Get(s1,0,0), float4x4(-0.065103903412819,0.100563146173954,-0.049395140260458,-0.059264425188303,0.193022698163986,0.019287124276161,-0.171924054622650,-0.071736112236977,-0.233467310667038,-0.079188488423824,0.017001355066895,0.165697678923607,0.006691347807646,-0.164674758911133,0.170085057616234,-0.053156688809395));
res += mul(Get(s1,0,dy), float4x4(0.005042627453804,-0.326479852199554,-0.034738700836897,0.003895353991538,-0.026168312877417,-0.018349854275584,-0.123354613780975,-0.003393144579604,-0.001468703267165,0.009561709128320,-0.088715426623821,0.015726914629340,-0.060349021106958,0.090394474565983,-0.002265061950311,-0.059091582894325));
res += mul(Get(s1,dx,-dy), float4x4(-0.041870374232531,-0.055576413869858,0.170438110828400,-0.008507557213306,0.024476692080498,-0.083486065268517,-0.121794067323208,-0.016031360253692,0.007032828871161,-0.079100184142590,0.147468596696854,-0.023418877273798,0.129797637462616,-0.052039094269276,-0.246650665998459,0.004947381094098));
res += mul(Get(s1,dx,0), float4x4(-0.000404648919357,0.066758975386620,0.136933162808418,0.012060821056366,-0.053636629134417,0.011929177679121,-0.073180399835110,-0.083323024213314,-0.075829297304153,0.187531501054764,0.005963033996522,0.018441656604409,-0.236392498016357,-0.085627712309361,0.125900298357010,-0.017713733017445));
res += mul(Get(s1,dx,dy), float4x4(-0.053955156356096,-0.098008178174496,-0.160093247890472,-0.024729708209634,0.091105081140995,-0.047788649797440,0.029904365539551,0.027770929038525,0.052490707486868,-0.116910718381405,0.038800392299891,0.001491500297561,0.019062899053097,0.190889701247215,-0.209243506193161,-0.051671635359526));
res += mul(Get(s2,-dx,-dy), float4x4(0.081365384161472,0.086209416389465,0.069880113005638,-0.122386753559113,0.051158618181944,-0.062911964952946,0.010204269550741,0.040969267487526,0.090876244008541,-0.037726581096649,-0.005763165652752,0.014008439145982,-0.013915386050940,0.117126837372780,-0.049885254353285,-0.075176686048508));
res += mul(Get(s2,-dx,0), float4x4(0.053920239210129,0.020109931007028,0.170078456401825,-0.089589022099972,-0.013601609505713,0.033886507153511,-0.096485748887062,-0.031060768291354,-0.201601281762123,-0.110552161931992,-0.164872065186501,-0.055571410804987,0.113005161285400,-0.053136531263590,0.011857353150845,-0.074817270040512));
res += mul(Get(s2,-dx,dy), float4x4(0.180105239152908,0.048840668052435,-0.051507167518139,-0.045725382864475,0.112559847533703,-0.190933927893639,0.033527698367834,0.031874235719442,-0.485960423946381,0.160098299384117,-0.013053897768259,-0.078461520373821,0.018651805818081,-0.116180501878262,-0.129529803991318,-0.032411307096481));
res += mul(Get(s2,0,-dy), float4x4(0.043100859969854,-0.006710412446409,-0.069792471826077,-0.040295548737049,-0.027437686920166,-0.023595310747623,-0.077449478209019,0.068971499800682,0.053623251616955,-0.065549299120903,0.144157171249390,0.013689197599888,-0.035625450313091,0.070643059909344,-0.036005504429340,0.030542520806193));
res += mul(Get(s2,0,0), float4x4(0.037824440747499,-0.004486718680710,-0.178854808211327,-0.165000677108765,-0.312558919191360,-0.011284925043583,0.069879435002804,-1.041710138320923,0.314444899559021,0.315497606992722,-0.078751616179943,0.085596881806850,-0.033070188015699,-0.033541921526194,0.041135415434837,-0.104358993470669));
res += mul(Get(s2,0,dy), float4x4(-0.058493718504906,0.173692300915718,0.099128626286983,-0.029143020510674,0.227816388010979,-0.084023341536522,0.144520983099937,0.066136561334133,0.081893093883991,-0.152881577610970,-0.037793099880219,-0.007687017321587,0.102263554930687,-0.186643093824387,0.176377967000008,0.066238798201084));
res += mul(Get(s2,dx,-dy), float4x4(0.069658175110817,-0.019253706559539,-0.040192507207394,-0.003411848098040,0.029335768893361,0.007120107766241,0.005158808082342,0.002095662290230,0.069468945264816,0.090483032166958,-0.043188259005547,-0.042506419122219,-0.120111539959908,0.100917585194111,-0.046767421066761,-0.038256164640188));
res += mul(Get(s2,dx,0), float4x4(0.052839413285255,0.128389894962311,0.105550296604633,-0.063767202198505,0.031358916312456,0.075584582984447,0.112182877957821,-0.049329198896885,0.011028665117919,0.240593597292900,-0.039896618574858,-0.057345960289240,-0.090380162000656,-0.188776433467865,0.295694977045059,0.018325250595808));
res += mul(Get(s2,dx,dy), float4x4(0.175753995776176,0.110410951077938,-0.108908988535404,-0.032907776534557,0.125967562198639,0.051642999053001,0.072291754186153,-0.004138640593737,-0.082769662141800,-0.034560337662697,-0.033882997930050,-0.010003380477428,-0.416242867708206,0.178328335285187,0.219171836972237,0.039961270987988));
res += mul(Get(s3,-dx,-dy), float4x4(0.045736599713564,-0.073331966996193,0.070880368351936,-0.001938747242093,-0.103179074823856,0.129720672965050,-0.139414161443710,-0.068589687347412,0.048006761819124,-0.231837883591652,-0.127098560333252,0.055052369832993,-0.042107500135899,0.075075887143612,0.044757660478354,0.040654070675373));
res += mul(Get(s3,-dx,0), float4x4(0.017589712515473,-0.107417769730091,-0.084972672164440,-0.057574678212404,-0.113204114139080,0.233035176992416,-0.005286649800837,-0.019439702853560,-0.200469240546227,0.144374176859856,-0.281996667385101,0.001341799623333,-0.069278500974178,0.154835149645805,0.048324368894100,0.002050271024927));
res += mul(Get(s3,-dx,dy), float4x4(0.109254725277424,0.084804557263851,-0.030997404828668,-0.132613018155098,-0.096229769289494,0.202000752091408,-0.029105473309755,-0.022509533911943,0.167014971375465,-0.058478079736233,-0.079421289265156,0.005519725382328,-0.123625099658966,0.054062988609076,0.021757962182164,0.017697330564260));
res += mul(Get(s3,0,-dy), float4x4(-0.153150722384453,0.134353861212730,0.033721487969160,-0.071329019963741,0.050017029047012,-0.097059920430183,-0.032831966876984,0.033109441399574,-0.033541463315487,0.094093784689903,0.027040414512157,0.080309920012951,-0.137007638812065,0.125164002180099,-0.069178387522697,0.045088887214661));
res += mul(Get(s3,0,0), float4x4(0.039343398064375,0.172766193747520,0.000621643266641,0.316070795059204,-0.135756090283394,0.120292171835899,0.057907253503799,-0.015451817773283,-0.404779732227325,-0.026789395138621,-0.175495564937592,0.110607996582985,-0.704799056053162,0.126234710216522,-0.060590539127588,0.086972132325172));
res += mul(Get(s3,0,dy), float4x4(0.003610669402406,0.028815114870667,0.140195921063423,-0.181165173649788,-0.159698665142059,-0.154501125216484,0.001750699477270,-0.003384650917724,0.644641220569611,0.045012038201094,0.140168190002441,0.029725255444646,-0.282600879669189,-0.098153799772263,0.035637885332108,-0.079383343458176));
res += mul(Get(s3,dx,-dy), float4x4(-0.128398314118385,-0.204322323203087,0.080511413514614,-0.100349836051464,-0.068267807364464,-0.256435304880142,0.140842556953430,-0.012177297845483,-0.139585331082344,-0.000100147226476,-0.045176882296801,-0.061735827475786,-0.112614013254642,0.033703260123730,0.106327019631863,0.041262794286013));
res += mul(Get(s3,dx,0), float4x4(0.120620869100094,0.125311076641083,-0.000590907235164,-0.350778222084045,-0.009697308763862,0.064888961613178,0.196273088455200,0.132199019193649,-0.039260182529688,-0.238447621464729,0.662005245685577,0.055371876806021,-0.276914983987808,0.280735880136490,0.109551101922989,-0.198504760861397));
res += mul(Get(s3,dx,dy), float4x4(0.263587981462479,-0.038760416209698,0.121431924402714,0.019735662266612,-0.130116581916809,-0.412166237831116,0.132717147469521,0.026220228523016,0.006403645966202,0.094005167484283,0.136231184005737,0.032843239605427,-0.227145701646805,0.000742950069252,-0.010458348318934,-0.048389799892902));
res += mul(Get(s4,-dx,-dy), float4x4(-0.017950065433979,0.168785914778709,0.076837763190269,-0.071568667888641,0.103103145956993,-0.300567269325256,0.127003461122513,-0.019011547788978,-0.186048999428749,-0.162678688764572,-0.179758638143539,0.003446942660958,-0.074083924293518,-0.002309369156137,-0.064507819712162,0.013948765583336));
res += mul(Get(s4,-dx,0), float4x4(0.124752357602119,-0.166632026433945,0.267111629247665,0.049884159117937,0.073094934225082,-0.116607539355755,-0.188612535595894,-0.025046462193131,-0.272781819105148,0.163562610745430,-0.126331716775894,-0.045321512967348,-0.119872488081455,-0.380443632602692,-0.012032581493258,0.014745486900210));
res += mul(Get(s4,-dx,dy), float4x4(0.292445242404938,-0.195709064602852,0.147500500082970,0.025307916104794,-0.088947646319866,-0.094556078314781,-0.149231120944023,-0.028737287968397,0.003841925645247,-0.202652350068092,-0.015512561425567,-0.018195677548647,-0.080999895930290,0.159013077616692,-0.332302838563919,0.010767858475447));
res += mul(Get(s4,0,-dy), float4x4(-0.177131608128548,0.086555890738964,0.158383011817932,-0.017711857333779,0.198535054922104,-0.291116565465927,-0.044914133846760,-0.000433648470789,0.047048296779394,-0.160391733050346,0.104510419070721,-0.064758285880089,0.144679337739944,0.042377788573503,-0.102004155516624,0.081950545310974));
res += mul(Get(s4,0,0), float4x4(0.008791326545179,0.033429540693760,0.165338039398193,-0.085731290280819,0.006450293119997,-0.132250115275383,0.001031122403219,-0.027201117947698,-0.173803746700287,-0.038761071860790,0.144435480237007,-0.162042826414108,0.050538636744022,0.015912568196654,-0.114491075277328,0.085002154111862));
res += mul(Get(s4,0,dy), float4x4(-0.087416023015976,-0.114466764032841,0.116433829069138,-0.000294306635624,0.270554661750793,-0.226929798722267,0.195055678486824,-0.049506060779095,-0.137837648391724,0.226638033986092,0.139777094125748,0.048657733947039,0.228213310241699,0.013176254928112,-0.024584610015154,-0.018852379173040));
res += mul(Get(s4,dx,-dy), float4x4(-0.130727544426918,-0.029127378016710,-0.027684791013598,-0.007527536246926,0.031281366944313,0.109189763665199,-0.025676129385829,0.018012333661318,-0.102050259709358,0.026980116963387,-0.040363211184740,0.036816377192736,-0.229503214359283,0.021346552297473,-0.052024390548468,0.036307826638222));
res += mul(Get(s4,dx,0), float4x4(-0.310325115919113,0.054994929581881,-0.013127580285072,-0.106228381395340,0.077086910605431,-0.174174085259438,-0.009215079247952,-0.021384837105870,0.005690756253898,-0.097236208617687,0.148666918277740,0.058724027127028,-0.151143461465836,0.067694708704948,0.298755764961243,-0.023151597008109));
res += mul(Get(s4,dx,dy), float4x4(-0.072627454996109,-0.119003333151340,0.213399976491928,-0.047431651502848,0.139299780130386,-0.004559604916722,-0.029707631096244,0.056325618177652,-0.094900481402874,0.066186897456646,0.064333021640778,-0.032582089304924,0.064233772456646,-0.031709324568510,0.080728977918625,0.020101217553020));
res += mul(Get(s5,-dx,-dy), float4x4(0.023236237466335,0.172079160809517,-0.059355564415455,0.029776064679027,-0.028251025825739,0.011061187833548,0.039744652807713,0.011632371693850,-0.077479995787144,0.091479100286961,-0.015407786704600,0.053606931120157,0.036040719598532,-0.067229963839054,0.065342791378498,-0.054760556668043));
res += mul(Get(s5,-dx,0), float4x4(-0.090505331754684,-0.010899065062404,-0.119490087032318,-0.056040428578854,-0.020653605461121,0.046337094157934,0.004467091988772,0.043169125914574,-0.088953495025635,-0.018128240481019,0.103113025426865,0.015719272196293,-0.010880788788199,0.106995388865471,-0.008338370360434,-0.082888871431351));
res += mul(Get(s5,-dx,dy), float4x4(-0.037543568760157,0.128030896186829,0.021012596786022,0.004143035504967,0.045803464949131,0.166173815727234,0.137703105807304,0.047494273632765,0.019304631277919,0.126922950148582,-0.094717577099800,0.045727163553238,0.121839649975300,0.176628336310387,0.024039698764682,-0.072965539991856));
res += mul(Get(s5,0,-dy), float4x4(0.018829435110092,0.060965053737164,-0.046650566160679,0.097736574709415,0.001171262934804,-0.077590994536877,-0.115362323820591,-0.098039962351322,0.065846107900143,0.116620257496834,0.078865781426430,0.098663188517094,-0.023366868495941,0.229709342122078,0.040817856788635,-0.054868984967470));
res += mul(Get(s5,0,0), float4x4(-0.087580047547817,-0.254475235939026,0.608444929122925,0.180587023496628,0.047304902225733,-0.418807387351990,0.029399959370494,-0.103601254522800,-0.295917302370071,-0.058821119368076,-0.052295297384262,0.119294695556164,-0.009713270701468,0.162347972393036,0.029720321297646,-0.066678769886494));
res += mul(Get(s5,0,dy), float4x4(-0.111362107098103,0.089858479797840,0.034016169607639,-0.023160383105278,0.246274769306183,0.065144136548042,0.030844107270241,-0.000040398030251,-0.245245471596718,-0.013228495605290,-0.111787326633930,-0.045318428426981,-0.046815354377031,0.129483848810196,-0.025455730035901,0.010477021336555));
res += mul(Get(s5,dx,-dy), float4x4(-0.157278403639793,0.020703958347440,-0.118963941931725,-0.003939164336771,0.129263639450073,0.030448434874415,0.017438022419810,0.021065613254905,-0.279779642820358,-0.027399370446801,0.205136388540268,-0.002878750208765,0.023953408002853,0.081841759383678,-0.043542746454477,0.058765422552824));
res += mul(Get(s5,dx,0), float4x4(0.015258033759892,0.088400810956955,0.539922654628754,0.036615516990423,-0.203147873282433,-0.618142008781433,0.361384719610214,0.042953588068485,-0.460634618997574,0.067942105233669,0.190667971968651,-0.006576693151146,0.166321694850922,-0.139026656746864,-0.082549117505550,0.093471951782703));
res += mul(Get(s5,dx,dy), float4x4(0.054396420717239,-0.099983260035515,-0.140105620026588,0.033344164490700,-0.727596163749695,0.211074635386467,0.042338334023952,-0.027686517685652,-0.210610061883926,-0.055936112999916,0.088213406503201,-0.027000581845641,0.166861131787300,-0.095788106322289,-0.154499992728233,-0.003697757376358));
res = max(float4(0, 0, 0, 0), res) + float4(-0.013529769144952,0.084926471114159,0.267340660095215,0.538698613643646) * min(float4(0, 0, 0, 0), res);
return res;
}