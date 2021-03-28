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
float4 res = float4(-0.016139756888151,-0.176143974065781,0.022341724485159,-0.180441111326218);
res += mul(Get(s0,-dx,-dy), float4x4(0.021577287465334,-0.044555041939020,0.016487423330545,0.064944535493851,0.011307533830404,-0.050674583762884,-0.018219904974103,0.062850803136826,0.011363492347300,0.004350721836090,0.038769312202930,-0.004547073040158,-0.045188210904598,-0.118265099823475,-0.008196686394513,-0.040114451199770));
res += mul(Get(s0,-dx,0), float4x4(0.023185158148408,-0.074120782315731,0.132401093840599,-0.021250963211060,-0.056472506374121,-0.013298084959388,-0.058943383395672,0.053068190813065,0.066641770303249,-0.100657492876053,0.046953268349171,0.125497534871101,-0.013964613899589,0.046699360013008,0.019516859203577,0.018346240743995));
res += mul(Get(s0,-dx,dy), float4x4(0.076313354074955,-0.167313784360886,-0.037683479487896,-0.017881348729134,-0.007122693117708,-0.052553258836269,-0.042114336043596,0.023275209590793,-0.016129288822412,0.013944810256362,-0.001200782367960,0.082317970693111,-0.023362260311842,0.014569596387446,0.014115799218416,0.011074231937528));
res += mul(Get(s0,0,-dy), float4x4(0.067239224910736,-0.015014568343759,-0.093649916350842,-0.238639950752258,-0.059936445206404,-0.092369399964809,0.144985049962997,-0.189050495624542,0.035247374325991,-0.039205510169268,0.060202483087778,-0.049048762768507,-0.062827058136463,0.015319939702749,0.180148988962173,-0.076421424746513));
res += mul(Get(s0,0,0), float4x4(0.263758838176727,-0.103102214634418,-0.185146555304527,-0.045067328959703,0.107731208205223,-0.031341049820185,0.239903330802917,0.057241465896368,0.033249743282795,-0.038960713893175,0.173535719513893,0.036351930350065,-0.024130493402481,-0.098120220005512,0.072853006422520,-0.066847980022430));
res += mul(Get(s0,0,dy), float4x4(0.125192478299141,0.022128554061055,0.043007984757423,0.008242990821600,-0.037818565964699,-0.010075720027089,-0.182297050952911,-0.066378533840179,0.016276491805911,-0.092213600873947,0.031995456665754,0.011538764461875,0.022082926705480,-0.012169149704278,-0.177351504564285,-0.009358138777316));
res += mul(Get(s0,dx,-dy), float4x4(0.028952345252037,0.086597420275211,-0.029371231794357,0.104299083352089,0.059244506061077,0.021783092990518,-0.002511248923838,0.010338271968067,0.070445448160172,-0.085803225636482,0.038344126194715,-0.108339414000511,-0.021079797297716,0.016771081835032,0.040734946727753,0.021846668794751));
res += mul(Get(s0,dx,0), float4x4(-0.020693253725767,0.045346461236477,0.000262949411990,-0.027082482352853,0.177749484777451,-0.078218035399914,0.056456774473190,-0.192724928259850,0.010085240937769,-0.026647226884961,-0.109885074198246,-0.110422022640705,-0.091872967779636,0.084467649459839,-0.057327799499035,0.038236748427153));
res += mul(Get(s0,dx,dy), float4x4(0.079583689570427,0.004806364420801,-0.021791400387883,-0.041781514883041,-0.028435625135899,0.018058124929667,0.075480081140995,0.054388765245676,0.085793234407902,-0.075728863477707,0.039928805083036,-0.107706449925900,-0.009272539056838,0.033236049115658,-0.054813496768475,0.089365698397160));
res += mul(Get(s1,-dx,-dy), float4x4(-0.023330044001341,0.031047500669956,-0.013699102215469,0.042596563696861,-0.038754146546125,0.015080377459526,0.062133505940437,0.073162674903870,0.014277871698141,0.056802209466696,-0.071142546832561,-0.052890524268150,0.047200117260218,0.015730049461126,0.014364255592227,0.013564880006015));
res += mul(Get(s1,-dx,0), float4x4(0.022765927016735,-0.169474557042122,-0.074363894760609,-0.072985075414181,-0.037663567811251,-0.095197878777981,0.005271843168885,0.029744558036327,0.083519220352173,0.162989631295204,-0.142845436930656,-0.112945497035980,0.062439359724522,0.032885406166315,0.071465700864792,0.065787695348263));
res += mul(Get(s1,-dx,dy), float4x4(0.016379717737436,-0.065933465957642,-0.060007460415363,0.036085281521082,-0.023311903700233,0.081857375800610,-0.054295618087053,-0.031153718009591,0.030953608453274,0.005310327280313,0.128635719418526,-0.048516537994146,0.018535468727350,-0.024242650717497,0.026789711788297,-0.003161368658766));
res += mul(Get(s1,0,-dy), float4x4(-0.056651566177607,0.036850307136774,-0.022285342216492,-0.236739367246628,0.024507995694876,-0.118103429675102,0.018533069640398,-0.062151622027159,-0.026957403868437,-0.085870437324047,0.020953280851245,-0.069893032312393,0.018970753997564,0.059774432331324,-0.158759519457817,-0.066236443817616));
res += mul(Get(s1,0,0), float4x4(-0.009540098719299,0.183050259947777,-0.104150906205177,-0.049369841814041,-0.167272463440895,-0.142753958702087,-0.018787985667586,0.042704284191132,0.146811604499817,-0.050310082733631,0.058915115892887,-0.016042402014136,0.007587489672005,-0.118208080530167,-0.278360933065414,-0.087548479437828));
res += mul(Get(s1,0,dy), float4x4(0.019629893824458,0.015950988978148,-0.038619142025709,-0.069200761616230,-0.005271548870951,-0.097794555127621,-0.064155712723732,0.114025764167309,0.053680442273617,0.076760061085224,-0.030285192653537,0.000823786656838,-0.022569285705686,0.049250613898039,0.069269947707653,0.019130863249302));
res += mul(Get(s1,dx,-dy), float4x4(-0.028146484866738,0.027661982923746,-0.027955146506429,0.059200223535299,-0.027810243889689,0.017869487404823,-0.000652397226077,0.001832727342844,0.183950662612915,-0.073141835629940,0.017188664525747,-0.024196736514568,-0.057881079614162,0.001459170482121,-0.045041840523481,0.101495720446110));
res += mul(Get(s1,dx,0), float4x4(-0.004983596038073,-0.016027612611651,-0.057647664099932,0.047988694161177,0.011903481557965,0.064094781875610,0.010997314006090,0.072099976241589,0.098911963403225,-0.055135175585747,0.062048804014921,-0.036788981407881,-0.024878336116672,-0.012872814200819,0.052562627941370,0.006566198542714));
res += mul(Get(s1,dx,dy), float4x4(-0.043604698032141,0.004084722604603,-0.019327051937580,0.076443687081337,-0.056570909917355,0.056087654083967,-0.010444443672895,-0.000690342974849,-0.007915639318526,-0.016244791448116,-0.062234103679657,0.006880169268698,0.075913608074188,-0.014684050343931,0.099024392664433,-0.065922424197197));
res += mul(Get(s2,-dx,-dy), float4x4(0.031103210523725,0.052333857864141,0.036180742084980,0.090336397290230,0.023067656904459,0.072600997984409,0.010330442339182,-0.059174142777920,0.019179683178663,-0.004976933822036,-0.004029489122331,-0.022299509495497,0.012074378319085,0.027948401868343,-0.100027538836002,0.060887176543474));
res += mul(Get(s2,-dx,0), float4x4(-0.067613594233990,0.264188349246979,-0.006024195346981,0.064034841954708,-0.079581469297409,0.048902172595263,-0.033638246357441,-0.053532559424639,0.037367798388004,0.027208326384425,0.048714820295572,-0.056787103414536,-0.005709222983569,-0.075635991990566,-0.161752194166183,0.014969615265727));
res += mul(Get(s2,-dx,dy), float4x4(-0.042008802294731,0.158002465963364,0.005004166159779,0.031441584229469,-0.026556996628642,0.031490236520767,-0.086670011281967,-0.113867700099945,-0.020554030314088,-0.048609651625156,0.069902263581753,-0.059637248516083,-0.013435179367661,0.002223166404292,0.102507859468460,0.056635294109583));
res += mul(Get(s2,0,-dy), float4x4(-0.101429216563702,0.063531406223774,0.051409322768450,0.300374597311020,-0.026061508804560,0.040884271264076,-0.055028226226568,-0.072474107146263,-0.043436404317617,-0.056609060615301,0.120482333004475,-0.060936607420444,-0.093421012163162,-0.046942781656981,-0.071159817278385,-0.034674629569054));
res += mul(Get(s2,0,0), float4x4(0.076634824275970,0.103479564189911,0.109647586941719,0.298899978399277,-0.113964207470417,-0.174098506569862,-0.087784856557846,0.082265824079514,-0.213993266224861,-0.111776292324066,0.217917159199715,-0.106626711785793,0.139962315559387,-0.021613940596581,-0.021409539505839,-0.003435994265601));
res += mul(Get(s2,0,dy), float4x4(-0.074947714805603,0.031616557389498,0.052568383514881,0.160336136817932,-0.010522969067097,-0.046892490237951,-0.022498594596982,0.067382186651230,0.037862285971642,0.006340151652694,-0.163992628455162,-0.092495739459991,0.007193773519248,0.050110142678022,0.131026357412338,0.035211060196161));
res += mul(Get(s2,dx,-dy), float4x4(-0.033095367252827,-0.108292721211910,0.012494915165007,-0.211005881428719,-0.016451049596071,0.087392941117287,-0.037607118487358,0.041318714618683,-0.048426754772663,0.061481092125177,0.024778390303254,0.090364873409271,0.098475441336632,0.037055104970932,0.006630313582718,-0.053771853446960));
res += mul(Get(s2,dx,0), float4x4(0.354628413915634,-0.085322231054306,0.032585859298706,-0.042674209922552,-0.211692988872528,0.136328861117363,-0.014012543484569,-0.211568549275398,-0.052362050861120,0.058422170579433,-0.099010147154331,0.088173262774944,-0.028088334947824,-0.017898464575410,0.052242096513510,0.002422647085041));
res += mul(Get(s2,dx,dy), float4x4(-0.000937070813961,-0.102233082056046,0.087941393256187,0.025798078626394,0.030572906136513,0.116261310875416,-0.006483909673989,0.061459966003895,-0.085849866271019,0.064483337104321,-0.030741749331355,0.016372537240386,0.034880783408880,0.001123577472754,-0.064315296709538,0.008067902177572));
res += mul(Get(s3,-dx,-dy), float4x4(0.012857235036790,-0.120953410863876,-0.037844013422728,-0.049887601286173,0.066659212112427,0.177184984087944,0.033789727836847,0.016709551215172,0.097689785063267,0.009334235452116,-0.004139318130910,0.067445501685143,-0.015065523795784,0.084180794656277,0.012358310632408,-0.007850112393498));
res += mul(Get(s3,-dx,0), float4x4(-0.103058561682701,0.063031464815140,-0.067846626043320,-0.057311400771141,0.073339395225048,0.188214674592018,0.115586191415787,0.261169612407684,0.057008113712072,-0.043095920234919,0.005895408801734,0.124389171600342,-0.110627979040146,0.233820140361786,-0.000290159106953,-0.112865611910820));
res += mul(Get(s3,-dx,dy), float4x4(-0.025773685425520,-0.030779626220465,0.017894731834531,0.041657160967588,-0.039040572941303,0.192015647888184,-0.073696002364159,0.090665385127068,-0.011494739912450,0.071917533874512,0.035193320363760,-0.114163987338543,-0.079338774085045,0.086328439414501,-0.086687035858631,-0.050009876489639));
res += mul(Get(s3,0,-dy), float4x4(-0.101167708635330,-0.026208411902189,-0.154221236705780,-0.067311339080334,-0.074342086911201,-0.031877465546131,-0.029831310734153,-0.048004768788815,-0.099885180592537,0.060278195887804,-0.053466334939003,-0.007435560226440,0.011560326442122,-0.084709599614143,0.170847639441490,-0.096627518534660));
res += mul(Get(s3,0,0), float4x4(0.194141820073128,0.039146363735199,-0.225736215710640,0.145429059863091,0.144137725234032,-0.104186505079269,-0.072365395724773,0.157032623887062,0.030341461300850,0.006438784766942,-0.109637022018433,-0.099976815283298,0.256260991096497,-0.072009541094303,-0.479409933090210,-0.160163551568985));
res += mul(Get(s3,0,dy), float4x4(-0.126904070377350,-0.041769191622734,0.211211487650871,-0.051114756613970,-0.038930229842663,-0.205370768904686,0.075089320540428,0.033583980053663,-0.013650655746460,-0.068414896726608,0.064719066023827,0.092630475759506,-0.012528786435723,-0.093479380011559,0.244015306234360,-0.020697869360447));
res += mul(Get(s3,dx,-dy), float4x4(0.049917370080948,0.053716391324997,-0.021859899163246,0.087334968149662,-0.012846022844315,0.042485188692808,0.002050247741863,-0.041866719722748,-0.018159389495850,-0.005175987724215,-0.007112740539014,0.121512040495872,0.050219081342220,-0.038198534399271,0.111263498663902,0.058759596198797));
res += mul(Get(s3,dx,0), float4x4(-0.061134435236454,0.022731168195605,0.136217862367630,-0.032603539526463,-0.103016279637814,-0.086939595639706,0.057635404169559,-0.056571137160063,-0.066024951636791,-0.013546693138778,0.010632586665452,-0.028786109760404,-0.174103200435638,0.019767014309764,-0.149228513240814,0.123247541487217));
res += mul(Get(s3,dx,dy), float4x4(-0.029026566073298,-0.011243247427046,0.025362865999341,0.012128969654441,0.015752460807562,-0.015693111345172,0.043351702392101,-0.010050713084638,-0.055529262870550,-0.003495630808175,-0.023759528994560,-0.070839360356331,0.012743659317493,0.000547439150978,-0.016763873398304,-0.028984999284148));
res += mul(Get(s4,-dx,-dy), float4x4(0.082970298826694,-0.048984322696924,0.000211055463296,0.006941102910787,-0.015552380122244,-0.022289473563433,-0.018911179155111,-0.091083191335201,-0.011044174432755,0.027852622792125,0.007372001651675,-0.000547222385649,-0.014565732330084,0.012945679016411,0.001563478144817,0.059323076158762));
res += mul(Get(s4,-dx,0), float4x4(0.024704044684768,-0.056962978094816,0.114057168364525,-0.004610337782651,0.053634610027075,-0.243805289268494,0.039782758802176,0.044088400900364,-0.054387085139751,0.066172160208225,-0.013969147577882,0.004628376569599,0.028055112808943,0.031112793833017,-0.012047625146806,0.004281821195036));
res += mul(Get(s4,-dx,dy), float4x4(0.036596197634935,-0.027463188394904,0.076274640858173,-0.008610908873379,0.021773964166641,-0.001304218661971,-0.002501311013475,0.019554235041142,-0.002543107606471,-0.010473974049091,-0.013592348434031,-0.012409968301654,0.049621827900410,-0.071096807718277,0.042132567614317,0.026654202491045));
res += mul(Get(s4,0,-dy), float4x4(-0.076042726635933,0.051818717271090,0.086278118193150,-0.198722302913666,0.073574811220169,0.028844237327576,-0.103164859116077,0.256032675504684,-0.050203084945679,-0.130031839013100,-0.082578733563423,0.218703791499138,0.034005921334028,-0.065783016383648,0.098511971533298,-0.057575922459364));
res += mul(Get(s4,0,0), float4x4(-0.007282984443009,-0.066539198160172,0.148253038525581,-0.294411659240723,-0.187051132321358,0.015223366208375,-0.126967936754227,-0.000917380617466,0.145048990845680,0.172225385904312,0.040056772530079,0.002618303988129,-0.014801703393459,0.103901736438274,0.119973435997963,0.112464241683483));
res += mul(Get(s4,0,dy), float4x4(-0.078037470579147,-0.083667822182178,0.085074402391911,0.037817884236574,0.022285778075457,0.013542862609029,0.072852835059166,-0.073902234435081,-0.068414032459259,-0.044988822191954,0.013798856176436,-0.057489745318890,0.106456682085991,-0.082846663892269,-0.223656579852104,-0.096183940768242));
res += mul(Get(s4,dx,-dy), float4x4(0.085066199302673,0.055428154766560,0.021492736414075,0.239754170179367,0.127523943781853,-0.065876007080078,-0.021977806463838,-0.013380912132561,0.047383625060320,0.078582480549812,-0.057450454682112,0.111411817371845,0.025486128404737,0.033339563757181,0.026248235255480,0.034144565463066));
res += mul(Get(s4,dx,0), float4x4(-0.122741594910622,0.038169857114553,0.023470818996429,0.166753411293030,-0.061627086251974,0.114660352468491,-0.012906581163406,0.024864068254828,-0.040151249617338,-0.072343595325947,0.128063559532166,0.011216297745705,0.013445349410176,-0.007012629881501,-0.046544309705496,-0.034338518977165));
res += mul(Get(s4,dx,dy), float4x4(0.072777822613716,0.080723308026791,-0.024530503898859,0.001868978724815,0.047504160553217,0.037975318729877,-0.054425496608019,-0.012607506476343,-0.021617898717523,-0.050536338239908,0.042191132903099,-0.045575015246868,-0.129293829202652,-0.049302987754345,-0.045842647552490,0.017612457275391));
res += mul(Get(s5,-dx,-dy), float4x4(0.140006110072136,-0.173107594251633,-0.021346906200051,-0.026316037401557,-0.072994150221348,0.113998807966709,0.034334667026997,-0.144041478633881,0.008107720874250,0.001907362719066,0.000129767940962,-0.030421281233430,-0.036152627319098,-0.017615139484406,-0.056773312389851,-0.131429612636566));
res += mul(Get(s5,-dx,0), float4x4(0.072029747068882,-0.068164177238941,-0.065621487796307,0.008984941989183,-0.063353575766087,0.101042144000530,0.021967079490423,0.054013695567846,-0.081070102751255,0.142150238156319,-0.055588819086552,-0.173349753022194,0.054843071848154,-0.079691208899021,-0.027990521863103,-0.001173791941255));
res += mul(Get(s5,-dx,dy), float4x4(0.007109827827662,-0.014325474388897,0.013287510722876,0.012932631187141,-0.008104006759822,-0.050550505518913,-0.050324343144894,0.004723003134131,0.040185216814280,0.034119781106710,-0.018911683931947,-0.051757775247097,-0.027681099250913,0.005039762705564,0.093204259872437,0.137012273073196));
res += mul(Get(s5,0,-dy), float4x4(-0.207862257957458,0.024820521473885,0.018360294401646,-0.088083796203136,0.068174362182617,-0.013270086608827,-0.089438222348690,0.025889527052641,0.023205570876598,0.046415876597166,0.016418602317572,0.077020525932312,-0.072744667530060,-0.074346855282784,0.004260474815965,-0.077388927340508));
res += mul(Get(s5,0,0), float4x4(0.055862396955490,0.086968809366226,0.112819403409958,-0.033412899821997,-0.026392536237836,0.029610125347972,-0.179321691393852,0.098504006862640,0.005400503054261,-0.036017902195454,0.020230863243341,0.175145119428635,0.014713978394866,-0.091472297906876,0.029413757845759,-0.009407442994416));
res += mul(Get(s5,0,dy), float4x4(0.002516608918086,0.076376125216484,0.024016261100769,0.015346399508417,-0.040716420859098,0.010806872509420,0.050199732184410,0.015403001569211,0.002896624850109,-0.083293259143829,-0.019820505753160,-0.091257527470589,0.053095184266567,-0.022348731756210,-0.034993808716536,0.021768698468804));
res += mul(Get(s5,dx,-dy), float4x4(-0.114328183233738,-0.017140829935670,0.033169448375702,-0.170871943235397,-0.130758941173553,-0.019391875714064,0.001494784257375,-0.054307937622070,-0.009261865168810,-0.007221728563309,0.004371253307909,0.003390742931515,0.002446980448440,0.053816162049770,0.014388993382454,-0.036319676786661));
res += mul(Get(s5,dx,0), float4x4(-0.131048813462257,-0.013482105918229,-0.115108303725719,0.044602453708649,0.011113841086626,-0.057905804365873,0.083252310752869,-0.113191060721874,0.113269105553627,0.008991122245789,0.046063974499702,-0.020876381546259,-0.054965049028397,0.083356589078903,-0.016867004334927,-0.060831330716610));
res += mul(Get(s5,dx,dy), float4x4(0.009753163903952,0.016245443373919,0.001687987940386,-0.007452587131411,-0.075818724930286,-0.028049215674400,0.012565409764647,-0.052527450025082,0.007407992612571,0.005040227435529,0.046585470438004,0.018282786011696,0.044108316302299,0.066967502236366,-0.022121449932456,0.045995533466339));
res = max(float4(0, 0, 0, 0), res) + float4(0.273145228624344,-0.061679754406214,0.907874643802643,0.005585435777903) * min(float4(0, 0, 0, 0), res);
return res;
}