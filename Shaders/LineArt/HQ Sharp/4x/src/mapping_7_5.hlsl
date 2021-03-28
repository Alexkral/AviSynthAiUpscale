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
float4 res = float4(-0.398911744356155,-0.134244129061699,-0.093890354037285,0.143712490797043);
res += mul(Get(s0,-dx,-dy), float4x4(0.023436250165105,-0.059285629540682,0.005753846839070,-0.224544495344162,-0.075039379298687,-0.109475634992123,-0.048236533999443,-0.099009916186333,0.040651023387909,0.071924440562725,0.036488931626081,0.013405578210950,0.092551372945309,0.037253990769386,0.063724026083946,0.089521490037441));
res += mul(Get(s0,-dx,0), float4x4(-0.041097279638052,0.152850046753883,0.151791349053383,0.184854015707970,0.123762674629688,0.167237639427185,-0.062961451709270,0.062194332480431,-0.060349639505148,-0.116953834891319,0.060304518789053,-0.091545827686787,0.153174325823784,0.105131134390831,0.043315216898918,-0.129675567150116));
res += mul(Get(s0,-dx,dy), float4x4(0.179146483540535,-0.010591790080070,0.063109904527664,0.011665878817439,0.064279653131962,-0.076381184160709,-0.044981602579355,-0.220442444086075,0.083121836185455,-0.302286535501480,0.079349264502525,-0.019800974056125,0.012811048887670,0.056559525430202,-0.108250103890896,0.147335767745972));
res += mul(Get(s0,0,-dy), float4x4(-0.068563744425774,-0.308347612619400,0.002307482995093,-0.300960093736649,-0.038866493850946,0.074158094823360,0.095270112156868,-0.031227312982082,0.186599150300026,0.106163844466209,0.055485527962446,0.022477740421891,0.146877661347389,-0.012942704372108,-0.034184344112873,0.063177049160004));
res += mul(Get(s0,0,0), float4x4(0.112723931670189,0.157553613185883,-0.292774647474289,0.291747182607651,-0.076805502176285,0.049367170780897,0.008712020702660,0.021203467622399,-0.380029797554016,-0.266017526388168,-0.274657964706421,0.031673930585384,-0.067640334367752,-0.019183766096830,-0.084076851606369,-0.051851965487003));
res += mul(Get(s0,0,dy), float4x4(0.176128745079041,0.101780332624912,-0.126182481646538,0.151157274842262,-0.027430538088083,0.213267371058464,0.085156679153442,0.190665215253830,-0.083587668836117,0.011614762246609,-0.020107204094529,0.145882770419121,-0.031141458079219,-0.063136570155621,-0.014053462073207,0.221783235669136));
res += mul(Get(s0,dx,-dy), float4x4(-0.112512305378914,-0.072214089334011,-0.011939091607928,0.039593048393726,0.092634245753288,0.179293543100357,-0.060802299529314,0.093816734850407,0.053736343979836,-0.081074304878712,-0.200672671198845,-0.043406851589680,0.113282889127731,0.097980931401253,0.010482183657587,-0.119920536875725));
res += mul(Get(s0,dx,0), float4x4(0.201661229133606,0.216058105230331,0.100058540701866,0.249857291579247,-0.119561560451984,-0.044874828308821,0.254180401563644,-0.076529078185558,-0.273036032915115,0.124080143868923,-0.144593566656113,0.070081487298012,-0.031029770150781,0.164059430360794,-0.015301886945963,0.000714262190741));
res += mul(Get(s0,dx,dy), float4x4(0.241247519850731,-0.074607051908970,0.029909551143646,-0.056595250964165,0.105051957070827,-0.095846630632877,-0.034048017114401,-0.006205460987985,-0.043018292635679,0.067170530557632,-0.116493150591850,0.063018955290318,0.002381421858445,0.308506518602371,-0.044007621705532,0.213698774576187));
res += mul(Get(s1,-dx,-dy), float4x4(-0.126010552048683,-0.091154105961323,0.061734598129988,-0.236681818962097,0.085918806493282,0.019301945343614,-0.027985220775008,-0.033615600317717,-0.127885609865189,-0.087833367288113,-0.099605865776539,-0.122030064463615,0.061855051666498,0.195687666535378,-0.128096655011177,-0.028145575895905));
res += mul(Get(s1,-dx,0), float4x4(0.005623298697174,0.099956847727299,0.105855360627174,-0.025132767856121,0.020788006484509,-0.421007454395294,0.040636323392391,-0.233926907181740,0.027142262086272,-0.085780665278435,0.002913508564234,-0.017573811113834,0.352710157632828,0.055047120898962,-0.060821022838354,-0.047256510704756));
res += mul(Get(s1,-dx,dy), float4x4(-0.013253960758448,-0.182655960321426,0.073221683502197,0.023408809676766,-0.067724607884884,-0.156983003020287,-0.012482786551118,-0.004058188293129,-0.081943690776825,-0.048804897814989,0.049001324921846,-0.026673395186663,0.021170789375901,-0.165704816579819,-0.005932025611401,0.033524207770824));
res += mul(Get(s1,0,-dy), float4x4(0.123456083238125,0.039959460496902,0.043588180094957,-0.077377095818520,0.088847495615482,0.033113401383162,-0.140514776110649,-0.046092681586742,0.120016850531101,0.023222109302878,-0.239049613475800,-0.188852950930595,0.000570845266338,0.357254147529602,0.093331277370453,-0.103138014674187));
res += mul(Get(s1,0,0), float4x4(0.130458340048790,0.008411003276706,-0.233900651335716,-0.269304662942886,0.498431086540222,-0.006574769504368,-0.068707570433617,0.006068219430745,0.089924834668636,-0.057839009910822,-0.338395625352859,0.341593742370605,0.268867045640945,0.287496119737625,-0.066629566252232,-0.179772093892097));
res += mul(Get(s1,0,dy), float4x4(-0.051894653588533,-0.079764954745770,-0.005531703121960,0.034333609044552,-0.108006179332733,-0.131012573838234,0.060069236904383,-0.017232948914170,0.230579689145088,0.030738566070795,-0.066023543477058,-0.077173233032227,0.062059782445431,0.191862270236015,0.057961523532867,-0.007993369363248));
res += mul(Get(s1,dx,-dy), float4x4(-0.033088937401772,0.100926578044891,-0.092466704547405,0.043147262185812,0.007604753132910,-0.052968513220549,-0.014707871712744,0.031484026461840,0.104933671653271,0.059041474014521,0.018487013876438,0.149369060993195,-0.133947923779488,-0.157163977622986,0.403100967407227,0.001473594456911));
res += mul(Get(s1,dx,0), float4x4(0.266070097684860,0.031433977186680,0.035813800990582,-0.088160365819931,-0.038639314472675,-0.088713765144348,0.069554470479488,-0.016500174999237,-0.174605384469032,0.153691172599792,0.186768233776093,-0.057379424571991,0.001809533918276,-0.536894857883453,0.108853600919247,-0.135571777820587));
res += mul(Get(s1,dx,dy), float4x4(0.041072778403759,0.092678546905518,-0.036245811730623,0.031502913683653,-0.037616644054651,-0.000534525141120,0.030245715752244,-0.066512316465378,-0.031795851886272,0.091215766966343,0.095170468091965,0.018040047958493,0.127259939908981,-0.093538045883179,0.033489722758532,-0.033656727522612));
res += mul(Get(s2,-dx,-dy), float4x4(-0.002523943083361,-0.042945247143507,0.180304989218712,-0.093714259564877,0.085061855614185,-0.010933308862150,0.010093177668750,0.056000653654337,0.020126363262534,0.083081074059010,0.021176110953093,0.146394044160843,0.049481954425573,0.140400558710098,-0.123422406613827,0.267653703689575));
res += mul(Get(s2,-dx,0), float4x4(-0.181811124086380,0.178854808211327,-0.135795056819916,0.048408366739750,0.163030117750168,0.100293658673763,-0.057540431618690,0.036904204636812,0.021312929689884,-0.190045863389969,0.040114346891642,-0.018924221396446,0.136744454503059,0.059309672564268,-0.020346531644464,0.095343805849552));
res += mul(Get(s2,-dx,dy), float4x4(0.027591757476330,-0.193081811070442,-0.033166356384754,-0.061957132071257,-0.006198146380484,0.039283983409405,-0.074297256767750,0.092126362025738,0.024609301239252,-0.040320482105017,0.026372427120805,-0.045984003692865,0.064664781093597,0.052839286625385,0.012629782781005,-0.150585427880287));
res += mul(Get(s2,0,-dy), float4x4(0.056267369538546,-0.008465898223221,0.323373228311539,-0.043644443154335,-0.126639485359192,0.089273586869240,-0.055084913969040,-0.142516925930977,0.011542588472366,0.157538354396820,0.198934718966484,0.164771556854248,-0.040104951709509,0.141183659434319,0.132663354277611,0.193987026810646));
res += mul(Get(s2,0,0), float4x4(0.041625641286373,-0.156632989645004,0.333089977502823,-0.321835547685623,-0.075811251997948,0.369116097688675,0.003891622647643,0.039953280240297,-0.148146852850914,-0.108108542859554,-0.092199154198170,-0.075661763548851,-0.019842904061079,-0.261207669973373,-0.049744233489037,-0.443315923213959));
res += mul(Get(s2,0,dy), float4x4(0.055872712284327,-0.056100297719240,0.071485310792923,0.113828770816326,-0.060344859957695,-0.000013648525055,0.032146625220776,0.019284047186375,-0.019351294264197,-0.192847326397896,-0.095585785806179,-0.123330272734165,-0.150556311011314,0.024602329358459,-0.042630769312382,0.242798477411270));
res += mul(Get(s2,dx,-dy), float4x4(0.204320639371872,0.154798209667206,-0.352656394243240,0.142562180757523,-0.070599488914013,0.060013130307198,0.063075885176659,0.144333079457283,-0.014526705257595,0.044232197105885,0.023963473737240,-0.083612948656082,-0.064210630953312,0.014587210491300,-0.000274436839391,-0.109765619039536));
res += mul(Get(s2,dx,0), float4x4(0.305249810218811,-0.019626827910542,0.113708898425102,-0.148704454302788,-0.058320134878159,-0.203861877322197,0.197938472032547,-0.156942516565323,0.062640279531479,0.003879102412611,-0.039448104798794,-0.100567072629929,0.131232738494873,0.003852892201394,-0.007914756424725,0.007341421674937));
res += mul(Get(s2,dx,dy), float4x4(-0.073585249483585,-0.066904507577419,0.028107374906540,0.070977583527565,-0.096868462860584,-0.175818294286728,0.065164580941200,-0.025412054732442,0.120822116732597,-0.065237037837505,-0.002993201604113,-0.006412249524146,0.093628972768784,0.030772270634770,0.015648819506168,0.159860506653786));
res += mul(Get(s3,-dx,-dy), float4x4(0.062160976231098,0.192338198423386,0.116888210177422,-0.017266448587179,-0.023987229913473,0.079097181558609,-0.015689194202423,0.061281062662601,0.097472004592419,0.153740629553795,-0.001243877690285,0.002424727194011,0.006558610592037,-0.022956674918532,-0.049225255846977,-0.080646902322769));
res += mul(Get(s3,-dx,0), float4x4(-0.049045652151108,-0.064175933599472,0.109100818634033,-0.071283340454102,-0.159653857350349,-0.161735624074936,0.035808190703392,-0.198266372084618,0.154862061142921,0.011948875151575,0.018897002562881,0.007520385552198,-0.168647766113281,-0.344647228717804,0.025724563747644,-0.128509566187859));
res += mul(Get(s3,-dx,dy), float4x4(-0.102718293666840,-0.314411342144012,0.029415404424071,-0.103242084383965,-0.033148612827063,-0.004410404246300,0.028906019404531,0.099519528448582,0.026711687445641,0.040103137493134,-0.052651531994343,0.098939716815948,-0.056385710835457,-0.379603832960129,-0.023688310757279,0.040757693350315));
res += mul(Get(s3,0,-dy), float4x4(-0.024584664031863,0.255494207143784,-0.295549035072327,-0.231366887688637,0.253603994846344,0.384205490350723,0.141763210296631,0.100199133157730,0.043103225529194,-0.067507684230804,-0.075864404439926,0.000459506874904,-0.165355324745178,-0.204926386475563,0.037733960896730,0.014433609321713));
res += mul(Get(s3,0,0), float4x4(0.075238890945911,-0.021972084417939,0.019153252243996,-0.046171415597200,-0.039378456771374,-0.104793578386307,-0.413244277238846,-0.202971220016479,0.052057638764381,-0.340313106775284,-0.044900596141815,-0.221476078033447,-0.448390513658524,-0.014543323777616,0.209397777915001,-0.044021818786860));
res += mul(Get(s3,0,dy), float4x4(0.060433119535446,0.080443009734154,-0.103635653853416,-0.116248525679111,-0.027272861450911,-0.123410463333130,0.040095463395119,-0.051741257309914,0.075575083494186,-0.068878374993801,0.037953086197376,-0.277447789907455,-0.232292130589485,-0.007255042903125,-0.063234113156796,0.067146897315979));
res += mul(Get(s3,dx,-dy), float4x4(0.129890546202660,0.089648135006428,0.110924117267132,-0.116303011775017,0.073608182370663,0.190485730767250,-0.048555407673120,0.071621105074883,0.028403738513589,0.062580317258835,-0.044892471283674,0.002917399629951,-0.042293522506952,0.046416234225035,0.020447548478842,0.048127286136150));
res += mul(Get(s3,dx,0), float4x4(0.152249962091446,0.063676759600639,-0.106187544763088,-0.244385197758675,-0.202957957983017,0.095678247511387,0.207575872540474,-0.198614805936813,0.230788975954056,0.319674998521805,-0.038526892662048,0.021228544414043,-0.352856963872910,-0.088814847171307,-0.040116958320141,-0.036301318556070));
res += mul(Get(s3,dx,dy), float4x4(0.018908523023129,0.007211442571133,0.001474583870731,0.061360392719507,0.069016322493553,-0.126612856984138,0.005149784963578,-0.000217448803596,0.082938507199287,0.019519302994013,0.090514048933983,0.043732542544603,-0.028916697949171,-0.035161115229130,-0.127515971660614,-0.090621754527092));
res += mul(Get(s4,-dx,-dy), float4x4(-0.057082287967205,-0.041213441640139,0.065429985523224,-0.126745283603668,0.015743490308523,0.021603280678391,0.017537942156196,-0.211188510060310,-0.011996268294752,0.132691949605942,0.031203608959913,0.132191389799118,-0.005587575025856,-0.050548259168863,-0.205610945820808,-0.042712561786175));
res += mul(Get(s4,-dx,0), float4x4(-0.093885704874992,-0.070963658392429,0.039431706070900,-0.144326254725456,0.010701346211135,-0.020533159375191,-0.133399143815041,-0.173271730542183,-0.086419671773911,-0.371601849794388,0.116258874535561,0.398924708366394,0.112300999462605,-0.169130966067314,0.010598423890769,-0.099854819476604));
res += mul(Get(s4,-dx,dy), float4x4(-0.038638256490231,-0.305343776941299,0.012938539497554,0.197882205247879,0.001893545966595,-0.415166407823563,-0.036759737879038,0.074841186404228,0.069617122411728,-0.064662128686905,-0.038776699453592,-0.032327193766832,0.007517152931541,-0.047344967722893,-0.009349390864372,0.087536841630936));
res += mul(Get(s4,0,-dy), float4x4(-0.035360943526030,0.090072453022003,-0.112337008118629,0.050268806517124,-0.087679266929626,-0.178941801190376,-0.176276057958603,-0.281269639730453,-0.135118454694748,-0.104627124965191,-0.043332669883966,0.092454634606838,-0.023144220933318,0.350952714681625,0.308634489774704,0.124060593545437));
res += mul(Get(s4,0,0), float4x4(-0.052680615335703,-0.217843204736710,-0.444475889205933,-0.062789879739285,0.314938634634018,0.069825083017349,-0.383217751979828,-0.397311955690384,-0.277077794075012,-0.043434608727694,-0.201375260949135,0.021856799721718,-0.133492276072502,-0.542684137821198,-0.163176134228706,-0.141142860054970));
res += mul(Get(s4,0,dy), float4x4(0.091662548482418,-0.007597366813570,-0.033746644854546,0.124708123505116,-0.108660176396370,-0.106490291655064,0.077990524470806,0.485260963439941,-0.090477824211121,-0.392142742872238,-0.006665582768619,-0.244374677538872,-0.005537916440517,-0.061934005469084,0.095966100692749,-0.121877446770668));
res += mul(Get(s4,dx,-dy), float4x4(-0.056481104344130,0.054681107401848,-0.036915324628353,0.002115190261975,0.016684465110302,0.015724379569292,-0.042357720434666,0.073489710688591,-0.049294009804726,-0.038313627243042,0.022635670378804,0.059514097869396,0.037318766117096,0.068656936287880,-0.027978943660855,0.061026863753796));
res += mul(Get(s4,dx,0), float4x4(0.027332523837686,-0.034972216933966,-0.149033039808273,0.044271320104599,0.050456315279007,-0.054968137294054,-0.018029177561402,0.034585621207952,-0.028532071039081,0.359176099300385,0.050285849720240,0.274961978197098,0.057129483669996,-0.009350080974400,-0.345249861478806,-0.082949101924896));
res += mul(Get(s4,dx,dy), float4x4(0.038406200706959,0.127263411879539,0.072594799101353,0.065107218921185,0.074943296611309,-0.106899201869965,-0.085965305566788,0.049317564815283,-0.063637323677540,0.092581406235695,0.050083428621292,-0.127329885959625,0.036081094294786,0.058737840503454,0.071407444775105,0.064960062503815));
res += mul(Get(s5,-dx,-dy), float4x4(-0.000755175715312,-0.036192633211613,-0.069952629506588,-0.007705774623901,0.011338746175170,0.079142406582832,0.008562736213207,0.069291971623898,0.094825066626072,-0.007164291571826,0.158782169222832,0.192382141947746,0.007718445267528,-0.006327945273370,0.126038625836372,0.158170655369759));
res += mul(Get(s5,-dx,0), float4x4(0.073959901928902,0.045791748911142,-0.014213095419109,0.115240551531315,0.011677934788167,-0.147984415292740,0.074832066893578,-0.094636142253876,0.023157915100455,-0.245209068059921,-0.036077555269003,-0.221919745206833,-0.107778616249561,0.061705023050308,0.044951483607292,0.122722655534744));
res += mul(Get(s5,-dx,dy), float4x4(0.151973858475685,0.101957976818085,-0.058738041669130,0.061313949525356,-0.027428384870291,0.171825408935547,-0.025386761873960,0.009365087375045,-0.109772630035877,-0.151301488280296,-0.038030188530684,-0.216549053788185,0.071685142815113,0.069937407970428,-0.005593307316303,0.005658419802785));
res += mul(Get(s5,0,-dy), float4x4(0.066368542611599,0.154733926057816,-0.262579053640366,0.081908382475376,-0.030878065153956,0.116051748394966,-0.014069952070713,0.043002214282751,-0.035434853285551,-0.029197594150901,-0.331381827592850,-0.115339130163193,0.100828267633915,0.069607250392437,0.264469832181931,0.083292655646801));
res += mul(Get(s5,0,0), float4x4(0.038698218762875,0.064499147236347,-0.243778318166733,-0.222934246063232,0.270606964826584,0.323019653558731,-0.343500137329102,0.091638319194317,-0.096112117171288,0.322470337152481,0.151787683367729,-0.058149088174105,-0.055381938815117,0.023955972865224,0.166498482227325,0.041305519640446));
res += mul(Get(s5,0,dy), float4x4(-0.023031985387206,0.017388651147485,-0.175997853279114,-0.121693894267082,0.068170346319675,0.144332721829414,-0.050419442355633,-0.065503537654877,-0.000956678355578,0.223445877432823,0.080783315002918,-0.210045427083969,0.032696269452572,0.028566688299179,-0.087291672825813,-0.036359377205372));
res += mul(Get(s5,dx,-dy), float4x4(-0.173291236162186,0.124606050550938,0.085550904273987,-0.046587858349085,0.005883967969567,0.161833047866821,0.128325223922729,0.084934197366238,-0.040031537413597,0.089220650494099,-0.050704345107079,-0.198526114225388,0.074558600783348,0.201201140880585,-0.000202125738724,0.062785439193249));
res += mul(Get(s5,dx,0), float4x4(0.047230988740921,0.022878728806973,0.069124452769756,-0.113517627120018,-0.050984416157007,-0.114068426191807,0.215602517127991,0.005196813493967,-0.245255455374718,0.072529532015324,-0.332810193300247,0.013071217574179,-0.060877751559019,-0.145978435873985,0.089312255382538,-0.115201696753502));
res += mul(Get(s5,dx,dy), float4x4(0.133471518754959,0.105805084109306,0.178889855742455,0.026496564969420,0.093062423169613,0.036149553954601,0.023150283843279,-0.091154247522354,-0.042631987482309,-0.035093512386084,-0.016146665439010,-0.089347258210182,0.032419882714748,0.073757693171501,-0.003698580898345,0.104910507798195));
res = max(float4(0, 0, 0, 0), res) + float4(-0.009739628992975,0.144539356231689,-0.051607489585876,0.054136428982019) * min(float4(0, 0, 0, 0), res);
return res;
}