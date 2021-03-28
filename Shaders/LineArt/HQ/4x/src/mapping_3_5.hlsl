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
float4 res = float4(0.253893047571182,0.087150432169437,-0.497695028781891,-0.069754026830196);
res += mul(Get(s0,-dx,-dy), float4x4(-0.119297057390213,-0.157013252377510,0.106440551578999,-0.158868327736855,0.105249330401421,0.054910324513912,0.075809702277184,0.077146798372269,0.276725351810455,-0.111190080642700,-0.060601856559515,0.058463592082262,-0.201668113470078,-0.177075490355492,-0.035629309713840,-0.145863786339760));
res += mul(Get(s0,-dx,0), float4x4(0.120104521512985,-0.247141972184181,-0.120196253061295,0.082466550171375,0.142657443881035,-0.157910630106926,-0.038776826113462,0.003511181334034,0.111447274684906,0.409786820411682,0.188504308462143,-0.087357267737389,-0.341435879468918,-0.462588071823120,-0.050522044301033,0.227282926440239));
res += mul(Get(s0,-dx,dy), float4x4(0.084949299693108,-0.137726753950119,0.133337214589119,-0.078039474785328,0.270850330591202,-0.247411996126175,-0.249753654003143,0.052380308508873,0.081984773278236,0.011603218503296,0.067195743322372,-0.086625486612320,-0.047811962664127,0.051918860524893,-0.101831912994385,-0.094146154820919));
res += mul(Get(s0,0,-dy), float4x4(0.066996060311794,0.081723779439926,0.005863596685231,-0.060591172426939,0.066956199705601,0.006604945752770,0.024903552606702,0.028176868334413,0.158174052834511,-0.172009110450745,-0.053854398429394,0.237805679440498,-0.334266781806946,-0.073526628315449,0.075217597186565,-0.199805721640587));
res += mul(Get(s0,0,0), float4x4(0.010534374043345,-0.095076493918896,-0.142965853214264,0.106103591620922,-0.150557145476341,0.050943907350302,-0.003594137728214,-0.122316576540470,-0.037671685218811,-0.228708997368813,-0.016711616888642,0.170629367232323,-0.095539577305317,-0.423262119293213,0.009831567294896,0.142518907785416));
res += mul(Get(s0,0,dy), float4x4(-0.055991925299168,0.314165264368057,-0.038326986134052,0.068091496825218,0.248826041817665,-0.120873279869556,-0.011494725011289,0.083996884524822,-0.076402038335800,-0.055058717727661,-0.054908353835344,0.211014583706856,-0.050495404750109,0.167593955993652,0.012952789664268,-0.118433550000191));
res += mul(Get(s0,dx,-dy), float4x4(-0.004678842145950,0.019361412152648,0.007730660494417,-0.070635132491589,0.150697618722916,-0.004508768673986,0.034339178353548,0.083050459623337,0.033924523741007,0.142011195421219,-0.005286341998726,-0.236279919743538,0.046251092106104,0.080133453011513,-0.062929101288319,0.028106696903706));
res += mul(Get(s0,dx,0), float4x4(-0.090297654271126,-0.017813632264733,0.098349407315254,0.252508282661438,-0.063241913914680,0.201523080468178,0.078058101236820,0.131435647606850,-0.151220008730888,0.147019237279892,0.115681692957878,0.159616768360138,-0.028820788487792,-0.448453724384308,0.051782216876745,-0.003968486096710));
res += mul(Get(s0,dx,dy), float4x4(-0.123294882476330,0.040870837867260,0.126192718744278,0.267279922962189,0.145498469471931,-0.191113248467445,0.050053115934134,-0.170257523655891,-0.079344183206558,0.078676365315914,0.010621747002006,0.106839589774609,0.031188068911433,0.197945192456245,-0.025516148656607,-0.043363727629185));
res += mul(Get(s1,-dx,-dy), float4x4(-0.057977646589279,-0.079108268022537,-0.044200349599123,-0.130470186471939,-0.014421381056309,-0.204453900456429,0.064447768032551,0.016119183972478,-0.253434598445892,-0.191648557782173,0.113366745412350,0.047465413808823,-0.130998194217682,-0.060519527643919,-0.291802406311035,0.278632253408432));
res += mul(Get(s1,-dx,0), float4x4(-0.609801590442657,-0.183144629001617,0.323945552110672,0.200016319751740,-0.169770076870918,-0.266754239797592,0.161926627159119,0.062019862234592,-0.043674569576979,-0.106941148638725,-0.148643463850021,-0.007238833233714,-0.174099192023277,0.278611272573471,-0.131425291299820,0.003804566804320));
res += mul(Get(s1,-dx,dy), float4x4(-0.070067554712296,-0.100918270647526,0.020282017067075,-0.062957271933556,0.111913599073887,-0.016492305323482,0.084868982434273,-0.138740420341492,0.044780880212784,-0.150576025247574,-0.090320445597172,0.049412693828344,-0.149782031774521,-0.225670576095581,0.018490567803383,0.102470003068447));
res += mul(Get(s1,0,-dy), float4x4(0.063515797257423,-0.159888848662376,-0.044927500188351,-0.089292608201504,-0.251676052808762,0.133266329765320,-0.132353305816650,0.089342355728149,0.192496731877327,-0.330644220113754,-0.123683415353298,0.083244107663631,-0.049389131367207,0.185951605439186,0.018522342666984,0.137365460395813));
res += mul(Get(s1,0,0), float4x4(-0.701709091663361,-0.031960662454367,0.071640059351921,0.074199773371220,-0.402430325746536,-0.161190703511238,-0.049772083759308,0.253792911767960,-0.030074516311288,-0.227774515748024,-0.138159155845642,0.057437632232904,-0.149330839514732,-0.217635348439217,-0.029309345409274,-0.111779108643532));
res += mul(Get(s1,0,dy), float4x4(-0.245236396789551,-0.187479034066200,0.012416273355484,0.071966566145420,0.037827771157026,-0.014557437971234,0.130175724625587,0.052646778523922,-0.039079610258341,0.143448382616043,0.096804849803448,0.158973544836044,0.068003632128239,-0.035886265337467,-0.064672321081161,0.023330235853791));
res += mul(Get(s1,dx,-dy), float4x4(0.090020231902599,-0.186521247029305,-0.044642109423876,0.012576491571963,-0.004804863594472,0.043045528233051,0.094272583723068,0.043892398476601,-0.128412738442421,0.108403004705906,-0.008586519397795,-0.091167539358139,-0.253239721059799,-0.052878558635712,-0.018640803173184,0.224883198738098));
res += mul(Get(s1,dx,0), float4x4(0.020945634692907,0.153102889657021,0.042497329413891,-0.065184533596039,0.008101366460323,-0.162162080407143,-0.015850953757763,-0.015993526205420,0.035969484597445,-0.185789108276367,0.062447618693113,0.133936688303947,0.008777730166912,-0.273984730243683,0.036482486873865,-0.036753047257662));
res += mul(Get(s1,dx,dy), float4x4(-0.028580119833350,-0.108897008001804,-0.104360729455948,0.056234747171402,0.023665010929108,0.047613851726055,0.064317181706429,0.097415305674076,-0.034586295485497,-0.012638723477721,0.037162315100431,0.084421716630459,-0.139143973588943,0.252359271049500,0.032888576388359,0.014410030096769));
res += mul(Get(s2,-dx,-dy), float4x4(-0.063234262168407,0.050847802311182,-0.110079266130924,0.008153278380632,0.197158023715019,-0.189835518598557,-0.059047814458609,-0.191371545195580,0.041897360235453,0.038981728255749,-0.013329886831343,-0.088186331093311,-0.087042666971684,-0.026492269709706,-0.088813304901123,-0.093203440308571));
res += mul(Get(s2,-dx,0), float4x4(-0.155889332294464,0.070127822458744,-0.179132714867592,0.164453655481339,-0.106252856552601,-0.256695121526718,0.304162889719009,0.010560653172433,-0.153459459543228,0.059077173471451,-0.117678754031658,0.219109043478966,-0.045851662755013,0.233004808425903,0.096161954104900,0.002560324501246));
res += mul(Get(s2,-dx,dy), float4x4(-0.008636120706797,0.280527591705322,0.017477896064520,-0.151832863688469,0.187453746795654,-0.002010767580941,0.220969691872597,-0.057887900620699,-0.103898763656616,0.092213504016399,0.155437052249908,-0.146781876683235,-0.187126681208611,-0.143625512719154,-0.154304981231689,-0.070611007511616));
res += mul(Get(s2,0,-dy), float4x4(0.039491087198257,-0.022612275555730,-0.109641298651695,-0.090302653610706,0.112633399665356,0.303942710161209,-0.093534998595715,0.131856352090836,-0.053425252437592,-0.075761571526527,0.040437866002321,0.058010410517454,-0.256826221942902,-0.199380785226822,0.069465577602386,0.123729176819324));
res += mul(Get(s2,0,0), float4x4(0.086166098713875,-0.139818742871284,-0.059215359389782,-0.013625812716782,-0.147298455238342,0.091096237301826,-0.094616591930389,-0.084449902176857,0.115821421146393,-0.014529578387737,0.402085274457932,-0.154014870524406,-0.100637741386890,0.238242581486702,0.068316549062729,0.166484281420708));
res += mul(Get(s2,0,dy), float4x4(-0.118591979146004,-0.015363108366728,0.025394711643457,-0.103201396763325,0.008969013579190,-0.045212149620056,0.128584221005440,0.148128628730774,0.017365772277117,-0.230770349502563,0.144026309251785,0.012798244133592,-0.161221563816071,0.122586145997047,0.387804180383682,0.015138220973313));
res += mul(Get(s2,dx,-dy), float4x4(0.080191612243652,-0.127411603927612,0.099443495273590,-0.109470605850220,0.082442142069340,0.084466710686684,0.141949877142906,0.093147195875645,0.004345364868641,0.157768860459328,0.004597478080541,-0.053918555378914,-0.101730793714523,0.464522927999496,0.199104845523834,0.045553904026747));
res += mul(Get(s2,dx,0), float4x4(0.004806237295270,0.063419997692108,-0.005079518537968,0.029037747532129,0.075949192047119,0.136091023683548,0.167027473449707,0.175239548087120,-0.105043418705463,-0.179396510124207,0.048509810119867,0.248622328042984,-0.283933877944946,0.155286714434624,-0.032936587929726,-0.260342448949814));
res += mul(Get(s2,dx,dy), float4x4(0.011821817606688,-0.081452399492264,-0.077326156198978,-0.110464729368687,-0.123006552457809,-0.213532581925392,0.035726923495531,-0.064731091260910,0.043573308736086,-0.078085117042065,-0.051680106669664,0.042197909206152,-0.162096619606018,0.109252065420151,0.303783595561981,-0.064459271728992));
res += mul(Get(s3,-dx,-dy), float4x4(-0.178789779543877,-0.118460655212402,-0.111540868878365,0.033170025795698,0.096997559070587,0.041664380580187,-0.071848519146442,-0.133817121386528,0.014799523167312,-0.167572170495987,0.147421449422836,0.006932278629392,-0.021325023844838,-0.150826185941696,0.050001010298729,0.046310935169458));
res += mul(Get(s3,-dx,0), float4x4(-0.040820639580488,0.235730022192001,0.048637721687555,-0.017306568101048,0.126902133226395,0.107791483402252,0.024429094046354,-0.004752761684358,-0.054097268730402,0.084266886115074,0.255566477775574,-0.023725282400846,0.048441305756569,-0.091457687318325,0.060143876820803,0.075071819126606));
res += mul(Get(s3,-dx,dy), float4x4(0.098340779542923,0.239549294114113,0.006887530907989,-0.139559537172318,0.068904437124729,0.048675354570150,-0.092257194221020,-0.052883543074131,-0.200505375862122,0.031584307551384,0.158468067646027,0.084869422018528,-0.118545860052109,-0.251974195241928,0.083737164735794,-0.173596873879433));
res += mul(Get(s3,0,-dy), float4x4(-0.308049768209457,-0.087246492505074,0.104721806943417,-0.073076158761978,0.005232206545770,0.063972160220146,0.020161947235465,0.037749655544758,0.184163242578506,-0.210888877511024,-0.102659672498703,-0.003099746769294,-0.087101519107819,-0.207370817661285,-0.006439284421504,0.028062656521797));
res += mul(Get(s3,0,0), float4x4(0.364956527948380,-0.049287080764771,-0.170194372534752,0.103968925774097,-0.028941158205271,0.081482894718647,0.091273769736290,0.196847006678581,-0.394346386194229,0.039553333073854,0.444641083478928,-0.379909276962280,-0.087979592382908,0.111797071993351,0.151638984680176,0.012853507883847));
res += mul(Get(s3,0,dy), float4x4(-0.155988231301308,0.101402483880520,-0.140485525131226,-0.059542197734118,0.024938547983766,0.057203494012356,-0.018957551568747,-0.134607449173927,0.007838996127248,-0.054456684738398,0.081237785518169,-0.074651934206486,-0.022007074207067,-0.044419504702091,0.164548456668854,0.108720108866692));
res += mul(Get(s3,dx,-dy), float4x4(-0.095671266317368,-0.121755860745907,-0.008067078888416,0.030226062983274,0.029546936973929,0.098667874932289,-0.161079719662666,-0.066206924617290,0.034457419067621,0.109598629176617,0.110059566795826,-0.047660496085882,0.213944926857948,-0.265000164508820,-0.349989384412766,-0.086753211915493));
res += mul(Get(s3,dx,0), float4x4(0.039753548800945,0.262046784162521,0.134452953934669,-0.190209314227104,0.125413075089455,0.221939384937286,-0.071669541299343,0.155139893293381,0.088148884475231,-0.023696575313807,0.242417767643929,0.168124005198479,0.285673558712006,-0.195827662944794,-0.052807196974754,-0.053862970322371));
res += mul(Get(s3,dx,dy), float4x4(-0.162188142538071,-0.212406218051910,-0.098362326622009,0.023946264758706,0.078614279627800,-0.233567520976067,-0.177686050534248,-0.046504460275173,0.063894160091877,-0.092219457030296,0.139941498637199,0.203670844435692,-0.090412132441998,-0.007956191897392,-0.167198568582535,-0.087712138891220));
res += mul(Get(s4,-dx,-dy), float4x4(0.202163562178612,0.047038521617651,0.032644804567099,-0.038303509354591,0.134486347436905,-0.070965506136417,-0.097997546195984,-0.104793474078178,0.225440979003906,0.071337722241879,0.103762254118919,-0.136766508221626,0.063735574483871,0.267217576503754,-0.169195264577866,0.052199263125658));
res += mul(Get(s4,-dx,0), float4x4(-0.381131619215012,-0.042721088975668,0.215355694293976,-0.038778781890869,0.074135087430477,-0.130774408578873,-0.142592474818230,0.004294256214052,0.123460806906223,0.294373571872711,-0.143942892551422,0.038061100989580,-0.122862868010998,0.060666877776384,0.257516741752625,-0.217731297016144));
res += mul(Get(s4,-dx,dy), float4x4(0.126704782247543,-0.129951044917107,0.134713277220726,0.047225866466761,0.045665003359318,-0.040827043354511,0.016168134287000,0.020999165251851,0.100996449589729,0.014774472452700,-0.140802800655365,-0.036079842597246,-0.144342273473740,0.158200740814209,0.154414474964142,0.220767602324486));
res += mul(Get(s4,0,-dy), float4x4(-0.129333779215813,0.157164543867111,-0.109488122165203,-0.113993957638741,0.160857737064362,-0.057437181472778,0.085962340235710,-0.126506328582764,-0.023395840078592,-0.038433279842138,-0.089829422533512,-0.177863031625748,-0.303154617547989,0.072451703250408,0.028354847803712,-0.232106134295464));
res += mul(Get(s4,0,0), float4x4(-0.080880895256996,0.260882914066315,0.169115751981735,0.348303318023682,0.348565787076950,0.194121211767197,0.109244287014008,-0.320727646350861,-0.081222094595432,0.117511667311192,0.124218776822090,0.078553222119808,-0.531720876693726,-0.299700379371643,-0.074549041688442,-0.593035399913788));
res += mul(Get(s4,0,dy), float4x4(-0.028451019898057,0.075178474187851,-0.021309899166226,-0.034166198223829,0.123910382390022,-0.042203817516565,0.033686082810163,-0.118326507508755,-0.048152662813663,-0.014245483092964,-0.036973748356104,0.022101871669292,0.033271703869104,-0.153160616755486,-0.005262652412057,0.059656880795956));
res += mul(Get(s4,dx,-dy), float4x4(0.102343969047070,-0.094583317637444,-0.098003461956978,-0.194823399186134,-0.106822848320007,-0.140007689595222,-0.034251861274242,-0.018825288861990,-0.086160652339458,0.182099223136902,-0.070628352463245,0.162188410758972,-0.177355751395226,-0.024120341986418,0.032325729727745,-0.145902022719383));
res += mul(Get(s4,dx,0), float4x4(-0.086866192519665,-0.098862238228321,0.139064833521843,-0.157114565372467,-0.063110381364822,-0.008151398040354,0.221116453409195,-0.513718128204346,0.166065633296967,-0.200269103050232,-0.111814036965370,0.119227446615696,-0.209024906158447,-0.162475109100342,-0.252714902162552,0.160184487700462));
res += mul(Get(s4,dx,dy), float4x4(-0.027007699012756,0.124318435788155,0.178811758756638,0.172848984599113,0.056281022727489,-0.034943222999573,0.248215422034264,0.148784056305885,0.067528292536736,0.079728610813618,-0.066483631730080,0.123719863593578,-0.053803790360689,0.244644477963448,0.036385256797075,-0.032509367913008));
res += mul(Get(s5,-dx,-dy), float4x4(-0.015995541587472,0.144658520817757,-0.073470056056976,0.055973615497351,-0.028325103223324,-0.072570286691189,-0.066213242709637,-0.005459007341415,0.028059065341949,0.105438560247421,-0.001043584314175,-0.086848534643650,-0.233431890606880,0.077652379870415,0.102237083017826,0.158500373363495));
res += mul(Get(s5,-dx,0), float4x4(0.030609671026468,-0.010514087043703,0.058841686695814,0.031399119645357,0.225377276539803,0.095865964889526,0.029580950737000,0.039490416646004,-0.115380346775055,0.154709279537201,0.100567109882832,-0.059174079447985,-0.054667498916388,-0.007934170775115,-0.255402177572250,0.110400967299938));
res += mul(Get(s5,-dx,dy), float4x4(-0.069145508110523,-0.035023160278797,0.041304890066385,0.085705399513245,-0.144536778330803,-0.085586592555046,-0.058670312166214,-0.033734600991011,0.008167730644345,-0.013915529474616,-0.061738856136799,0.092576801776886,-0.010859832167625,0.099695287644863,-0.248217090964317,0.110029689967632));
res += mul(Get(s5,0,-dy), float4x4(-0.119148150086403,0.156594067811966,-0.016741029918194,0.097078524529934,-0.050526496022940,-0.128367274999619,-0.142927050590515,0.129185438156128,-0.050548177212477,-0.028898853808641,0.053687222301960,-0.040054753422737,-0.267706811428070,-0.187611415982246,0.064319789409637,-0.204720601439476));
res += mul(Get(s5,0,0), float4x4(0.213605150580406,0.133387073874474,0.001906286808662,-0.012682172469795,-0.101492032408714,-0.076459415256977,0.139855533838272,0.072131395339966,0.318741828203201,-0.137105286121368,-0.020095929503441,0.171647086739540,-0.148540467023849,-0.124511599540710,0.001343374606222,0.018810303881764));
res += mul(Get(s5,0,dy), float4x4(0.015832684934139,-0.066534936428070,0.233110889792442,-0.028121594339609,-0.065887242555618,-0.101849831640720,0.134167686104774,-0.173126131296158,-0.052382800728083,-0.169518485665321,0.072093173861504,-0.117362156510353,-0.199728697538376,-0.216858759522438,-0.004386741202325,0.058751508593559));
res += mul(Get(s5,dx,-dy), float4x4(0.013204364106059,-0.115470960736275,0.002001214539632,-0.002316055120900,-0.118830166757107,0.156673222780228,-0.076672427356243,-0.039932213723660,0.007673867978156,-0.082270711660385,-0.014120243489742,-0.084930986166000,0.193723767995834,-0.267702996730804,0.103529058396816,0.035319644957781));
res += mul(Get(s5,dx,0), float4x4(0.058249734342098,-0.153783097863197,-0.093432344496250,-0.221719637513161,-0.011533458717167,-0.190138444304466,0.225064590573311,0.381679147481918,0.068084433674812,0.106435485184193,-0.084716320037842,0.012062823399901,0.212331801652908,-0.030981833115220,0.023060390725732,0.050587091594934));
res += mul(Get(s5,dx,dy), float4x4(-0.091865591704845,0.122589200735092,-0.020137384533882,-0.138319224119186,-0.219278439879417,0.106124497950077,0.063640438020229,-0.156808257102966,-0.016847381368279,-0.047635909169912,0.018247811123729,-0.046755138784647,0.074484907090664,0.106349408626556,0.069901749491692,-0.112906940281391));
res = max(float4(0, 0, 0, 0), res) + float4(0.028827419504523,0.066738672554493,0.027028588578105,0.482239872217178) * min(float4(0, 0, 0, 0), res);
return res;
}