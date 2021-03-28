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
float4 res = float4(-0.152756646275520,-0.011610464192927,-0.067227512598038,-0.104042358696461);
res += mul(Get(s0,-dx,-dy), float4x4(-0.025553133338690,-0.186203628778458,-0.197785422205925,0.063087016344070,0.112260341644287,-0.013373268768191,-0.035490319132805,-0.095275156199932,0.055635038763285,-0.128905341029167,0.004315299913287,-0.149978026747704,-0.131634980440140,0.135710075497627,0.019368410110474,-0.027078744024038));
res += mul(Get(s0,-dx,0), float4x4(-0.195528551936150,-0.164989769458771,-0.353021860122681,-0.172754898667336,0.048600818961859,0.094277888536453,0.008298137225211,-0.049266088753939,-0.118716724216938,0.015402236022055,-0.253283470869064,-0.183139532804489,0.040352296084166,-0.191678151488304,0.081813342869282,0.011512359604239));
res += mul(Get(s0,-dx,dy), float4x4(0.087007634341717,0.113230302929878,0.053179342299700,-0.046534355729818,-0.025916943326592,0.188193172216415,-0.300724685192108,0.271906405687332,-0.004519962240010,0.050554458051920,-0.008319968357682,-0.101306296885014,0.061939138919115,0.002408227417618,-0.038507763296366,0.045835129916668));
res += mul(Get(s0,0,-dy), float4x4(-0.020596131682396,-0.063536025583744,-0.103373400866985,-0.207536369562149,0.125954613089561,0.234412640333176,-0.152749642729759,-0.098936893045902,0.265523165464401,0.184571340680122,0.102459095418453,0.096330866217613,-0.022457784041762,0.025843946263194,0.013313386589289,0.102697737514973));
res += mul(Get(s0,0,0), float4x4(-0.243438810110092,-0.254723578691483,-0.119554668664932,0.287407547235489,0.186516359448433,0.146451056003571,0.041241325438023,0.103654421865940,-0.170436710119247,-0.183326259255409,-0.111557431519032,0.088022515177727,0.206970036029816,-0.099279902875423,0.040435578674078,-0.031195506453514));
res += mul(Get(s0,0,dy), float4x4(0.101841874420643,0.040115296840668,0.021378505975008,-0.127936065196991,-0.151617363095284,0.088897325098515,-0.288930028676987,0.080322012305260,0.103470280766487,0.072117164731026,0.038870584219694,0.027373112738132,-0.039475075900555,-0.015592283569276,-0.091245770454407,0.116851121187210));
res += mul(Get(s0,dx,-dy), float4x4(0.082783177495003,0.018539790064096,0.020150946453214,0.119188413023949,-0.008251151069999,0.111485153436661,-0.141687244176865,0.106067053973675,0.011033394373953,-0.054417043924332,-0.041405864059925,0.093715086579323,-0.085902541875839,-0.255672901868820,-0.094237528741360,0.005781269166619));
res += mul(Get(s0,dx,0), float4x4(0.026853173971176,0.066499710083008,0.124624349176884,-0.160073444247246,0.287388771772385,0.250522583723068,-0.050537362694740,-0.076154001057148,-0.111032843589783,-0.089057356119156,0.031354989856482,0.052647709846497,0.064316764473915,-0.112255625426769,-0.129792690277100,-0.032402548938990));
res += mul(Get(s0,dx,dy), float4x4(-0.067865200340748,-0.070120863616467,-0.091345481574535,-0.062580585479736,-0.087528906762600,0.191306993365288,-0.267796218395233,-0.035101313143969,0.018650444224477,-0.006284992676228,0.027075888589025,-0.045376103371382,0.123548693954945,0.120180942118168,-0.012932423502207,0.032704323530197));
res += mul(Get(s1,-dx,-dy), float4x4(0.036849744617939,-0.165222257375717,0.025427613407373,0.122454822063446,-0.000048043184506,-0.031435746699572,0.125684052705765,0.040028743445873,0.001863091485575,-0.149391189217567,0.108594544231892,-0.127129182219505,-0.177307888865471,-0.024953041225672,-0.000206607059226,0.038614608347416));
res += mul(Get(s1,-dx,0), float4x4(0.040387555956841,-0.174522995948792,-0.035493459552526,0.335894823074341,0.084415070712566,-0.266766756772995,0.024343749508262,0.021984746679664,0.033967573195696,0.087413556873798,-0.116680838167667,-0.050081770867109,-0.025637479498982,-0.218567818403244,-0.245085537433624,0.090967066586018));
res += mul(Get(s1,-dx,dy), float4x4(-0.015729900449514,0.059819877147675,0.038323719054461,0.104256778955460,-0.100844785571098,0.002201101509854,-0.027381727471948,-0.029135545715690,-0.032764900475740,0.046983916312456,0.106602132320404,-0.116084747016430,0.034130945801735,-0.004325934685767,-0.098453901708126,0.072849325835705));
res += mul(Get(s1,0,-dy), float4x4(-0.100335784256458,-0.192646175622940,-0.036545466631651,0.169889599084854,-0.186576038599014,0.142341718077660,0.056353870779276,-0.085097648203373,-0.162995591759682,-0.136145502328873,0.003217096673325,0.008266958408058,-0.013115699402988,-0.043705888092518,-0.197636887431145,-0.012148679234087));
res += mul(Get(s1,0,0), float4x4(-0.018725328147411,0.290540099143982,0.100478537380695,-0.154039412736893,0.354296863079071,0.076277703046799,0.034819435328245,-0.151820510625839,0.004888037219644,-0.073763556778431,0.073310896754265,-0.128697961568832,0.090559378266335,0.023368701338768,-0.128622934222221,0.064434438943863));
res += mul(Get(s1,0,dy), float4x4(0.166889175772667,0.148164361715317,0.017054030671716,0.224510252475739,-0.144403040409088,-0.075084567070007,-0.242748096585274,-0.090845577418804,0.005378067027777,-0.108291037380695,0.082227356731892,0.058623660355806,-0.047855570912361,0.105843983590603,-0.149460226297379,0.031766787171364));
res += mul(Get(s1,dx,-dy), float4x4(-0.013996497727931,0.228102788329124,-0.064230456948280,-0.080624677240849,-0.083073273301125,0.041427195072174,-0.079918965697289,0.010522484779358,-0.247199729084969,-0.097399160265923,0.015632929280400,0.075717352330685,-0.043850548565388,0.107906922698021,0.084467113018036,0.117369607090950));
res += mul(Get(s1,dx,0), float4x4(0.051311466842890,0.107417009770870,0.154387295246124,-0.302295356988907,0.030586417764425,-0.026320222765207,0.059901565313339,0.165606319904327,-0.044462192803621,-0.267340809106827,0.048558954149485,0.209430903196335,0.027435604482889,0.060170512646437,0.087342143058777,-0.222945466637611));
res += mul(Get(s1,dx,dy), float4x4(0.038103863596916,-0.113047704100609,-0.013586596585810,0.031347241252661,0.010505324229598,-0.002467416925356,0.022849371656775,0.025252541527152,0.101234376430511,0.060268238186836,0.129716634750366,0.023822378367186,-0.014442121610045,-0.010576679371297,-0.040019616484642,-0.198998779058456));
res += mul(Get(s2,-dx,-dy), float4x4(-0.044020384550095,0.199445277452469,-0.156404703855515,0.114074975252151,-0.061248950660229,-0.031041787937284,0.006551392376423,0.061161719262600,-0.009950092993677,-0.114042699337006,-0.125658676028252,0.017328009009361,0.044150426983833,-0.140787363052368,0.354030966758728,-0.090916790068150));
res += mul(Get(s2,-dx,0), float4x4(0.022637341171503,-0.110711388289928,0.135192647576332,0.162545219063759,0.016447981819510,-0.135752931237221,0.183844283223152,0.046496629714966,0.094082690775394,0.042467337101698,0.012352548539639,0.005414600018412,0.073896318674088,0.111422203481197,0.177260383963585,-0.011998141184449));
res += mul(Get(s2,-dx,dy), float4x4(0.013436175882816,0.077413305640221,-0.087168887257576,0.069353632628918,-0.021248966455460,-0.050397880375385,0.063523083925247,0.144781246781349,0.035305261611938,0.115730784833431,0.035374045372009,0.066369466483593,-0.117155693471432,-0.043931934982538,-0.075249843299389,-0.000129473599372));
res += mul(Get(s2,0,-dy), float4x4(0.013623587787151,0.008857375010848,0.010746543295681,0.035511329770088,-0.056929774582386,-0.050413407385349,0.054733797907829,0.072815530002117,-0.090704470872879,-0.158853337168694,0.038903295993805,-0.107099436223507,-0.045819282531738,-0.115008361637592,0.215409383177757,-0.191643759608269));
res += mul(Get(s2,0,0), float4x4(0.178656652569771,0.228909730911255,0.050499901175499,0.270340740680695,-0.062844522297382,-0.249201178550720,-0.108683377504349,0.123048648238182,0.129301398992538,0.191501230001450,-0.065096780657768,0.144991308450699,0.213100910186768,0.018130332231522,0.168791428208351,-0.204688251018524));
res += mul(Get(s2,0,dy), float4x4(-0.086239613592625,0.013796647079289,-0.224212661385536,-0.053987987339497,-0.017144076526165,-0.079056330025196,-0.005434933118522,-0.019043397158384,-0.054100647568703,-0.016305424273014,0.091741725802422,-0.027808165177703,-0.100632533431053,-0.187896877527237,-0.004234625026584,0.113199979066849));
res += mul(Get(s2,dx,-dy), float4x4(0.041432950645685,0.138447239995003,-0.193785101175308,0.054333966225386,-0.074962660670280,-0.057299565523863,0.087513826787472,0.040025144815445,-0.160212308168411,0.073920063674450,0.032941050827503,0.115976393222809,-0.061181012541056,-0.027446128427982,-0.002473359694704,-0.181181132793427));
res += mul(Get(s2,dx,0), float4x4(-0.036113254725933,0.056787531822920,-0.099492803215981,-0.202654957771301,-0.063142694532871,-0.053417734801769,0.021119961515069,-0.118876568973064,0.084074780344963,-0.206623539328575,-0.012253309600055,0.017354652285576,-0.006202213466167,0.030406767502427,-0.049253545701504,-0.006025953218341));
res += mul(Get(s2,dx,dy), float4x4(0.001525144791231,0.062040183693171,-0.154999509453773,0.121069848537445,-0.001514109200798,-0.032255567610264,-0.133389666676521,0.098015807569027,-0.070304945111275,0.080153770744801,-0.021658271551132,0.101158127188683,-0.051880270242691,-0.109849825501442,0.031719435006380,0.006042502820492));
res += mul(Get(s3,-dx,-dy), float4x4(-0.047294329851866,0.062343537807465,-0.138432890176773,-0.056861788034439,-0.021591668948531,0.082372747361660,0.098082870244980,-0.028859572485089,0.011663385666907,-0.145395010709763,-0.060154166072607,-0.024737741798162,0.047799400985241,-0.029202343896031,0.034318793565035,-0.041871085762978));
res += mul(Get(s3,-dx,0), float4x4(0.141899988055229,0.178633630275726,0.130235090851784,-0.015481777489185,0.111257970333099,0.026136148720980,0.097470462322235,0.054560542106628,-0.056342810392380,-0.077438205480576,0.005863002035767,0.000434171088273,0.085983917117119,-0.152236893773079,0.015289389528334,-0.157160371541977));
res += mul(Get(s3,-dx,dy), float4x4(-0.085367329418659,-0.023156104609370,-0.157258316874504,-0.107626073062420,0.002920846454799,-0.236330434679985,0.121255971491337,-0.162638619542122,0.001317184884101,0.036166597157717,-0.134049192070961,-0.006953450385481,0.083531960844994,0.020564323291183,-0.033714983612299,-0.053568534553051));
res += mul(Get(s3,0,-dy), float4x4(0.064309298992157,0.067318640649319,-0.189645811915398,-0.044893376529217,0.035860724747181,-0.012523171491921,0.136108160018921,0.040799036622047,0.081356815993786,-0.084967374801636,0.094905562698841,-0.066274866461754,-0.091320157051086,0.082115203142166,-0.223183766007423,-0.051733501255512));
res += mul(Get(s3,0,0), float4x4(0.211065977811813,-0.064801730215549,0.130184590816498,-0.011615708470345,0.280672192573547,-0.205973610281944,0.116661742329597,-0.059922240674496,-0.084136284887791,-0.146806821227074,-0.233462870121002,0.117805123329163,0.068831175565720,-0.079602792859077,-0.021025674417615,0.216127425432205));
res += mul(Get(s3,0,dy), float4x4(-0.068810291588306,-0.053830310702324,-0.009182694368064,0.005901082418859,0.035405650734901,0.032689332962036,-0.018279014155269,-0.294542521238327,-0.051091417670250,-0.028097376227379,-0.001255822950043,-0.059923030436039,0.028777278959751,-0.057038296014071,0.023119071498513,-0.129102289676666));
res += mul(Get(s3,dx,-dy), float4x4(0.068148203194141,0.199416548013687,-0.070947252213955,-0.102306619286537,0.024262333288789,-0.139442071318626,0.084267541766167,-0.146421089768410,0.121859781444073,-0.139536127448082,0.110042884945869,-0.115295641124249,-0.079139143228531,0.072186738252640,0.135336101055145,0.080357164144516));
res += mul(Get(s3,dx,0), float4x4(-0.018669059500098,-0.049317046999931,0.020289598032832,-0.029032506048679,0.209299117326736,-0.181925892829895,-0.047330018132925,0.048052128404379,0.066203631460667,-0.150903329253197,-0.051227755844593,-0.177625924348831,0.020060358569026,-0.081105597317219,0.121505104005337,-0.166869044303894));
res += mul(Get(s3,dx,dy), float4x4(0.040368817746639,-0.074932463467121,0.030344590544701,0.019121872261167,-0.066259428858757,0.059061445295811,-0.113294675946236,-0.026898996904492,-0.270440131425858,0.003196207573637,0.002548854332417,-0.065508760511875,0.007858863100410,-0.007844783365726,0.008011099882424,-0.038044519722462));
res += mul(Get(s4,-dx,-dy), float4x4(-0.032206628471613,0.057884715497494,0.043911758810282,0.032270498573780,0.007826277986169,-0.202012374997139,-0.014498061500490,-0.020138571038842,-0.034213829785585,-0.237686425447464,-0.075908720493317,-0.110325954854488,-0.274413108825684,-0.211463898420334,0.050154227763414,0.029411200433969));
res += mul(Get(s4,-dx,0), float4x4(0.085332430899143,0.046827442944050,-0.009535663761199,0.172985136508942,-0.107206195592880,0.099943511188030,-0.178527638316154,-0.025515185669065,0.211921468377113,0.092025309801102,0.144458055496216,-0.076062053442001,0.029741240665317,0.113277323544025,0.125528007745743,-0.045653779059649));
res += mul(Get(s4,-dx,dy), float4x4(0.067191131412983,0.120917581021786,0.169183120131493,0.044293481856585,0.020250383764505,0.076968319714069,0.113879524171352,-0.072028338909149,-0.147664815187454,-0.149036884307861,-0.150031581521034,-0.099900089204311,-0.020043073222041,0.030355593189597,0.034812133759260,-0.177033066749573));
res += mul(Get(s4,0,-dy), float4x4(-0.136648193001747,-0.059216968715191,0.096829988062382,0.116366937756538,0.159910410642624,0.086822390556335,-0.223454102873802,-0.060504600405693,0.070562332868576,-0.033372897654772,-0.047498647123575,0.018983311951160,0.033230602741241,-0.137429550290108,0.067700490355492,0.139932855963707));
res += mul(Get(s4,0,0), float4x4(0.108762308955193,-0.081917174160480,0.294772654771805,-0.116988539695740,-0.328583598136902,-0.220579549670219,0.033850543200970,0.342384606599808,0.110985569655895,-0.062477998435497,-0.073360078036785,-0.044425319880247,-0.002934669377282,0.222334414720535,-0.121079020202160,0.006057967431843));
res += mul(Get(s4,0,dy), float4x4(-0.050459556281567,0.031396772712469,-0.176293477416039,0.086416788399220,0.086185775697231,0.076620154082775,0.144038766622543,-0.085469312965870,0.029180319979787,-0.192104160785675,0.015838542953134,0.009038875810802,0.046829733997583,0.057641230523586,-0.011070950888097,-0.005926413461566));
res += mul(Get(s4,dx,-dy), float4x4(-0.019801916554570,-0.086460493505001,0.037428781390190,-0.056813783943653,0.002775160828605,0.174415975809097,-0.075091913342476,-0.012839877977967,-0.159663036465645,-0.145228117704391,0.104772284626961,0.087775297462940,0.100086301565170,0.119366988539696,0.084394246339798,-0.086716555058956));
res += mul(Get(s4,dx,0), float4x4(0.020626865327358,-0.004986884072423,0.059470135718584,0.041983630508184,-0.003045608755201,0.044855590909719,0.128599792718887,0.035294946283102,0.057660687714815,0.024455314502120,0.079126194119453,-0.241563156247139,0.075614929199219,0.030104225501418,0.076263479888439,-0.232052907347679));
res += mul(Get(s4,dx,dy), float4x4(-0.050709784030914,-0.047414645552635,0.114075094461441,-0.154386848211288,0.049260552972555,-0.007210313808173,-0.020418535917997,0.048884864896536,-0.032816428691149,-0.132382541894913,0.001338414149359,0.009118841961026,0.034301906824112,-0.052068978548050,-0.029098983854055,0.058253671973944));
res += mul(Get(s5,-dx,-dy), float4x4(0.117553703486919,-0.019149119034410,0.115833602845669,-0.100532881915569,-0.105771191418171,0.084635138511658,-0.112086035311222,0.058320764452219,-0.160318091511726,-0.082709558308125,-0.034013800323009,0.130242362618446,-0.263269871473312,0.028625713661313,-0.130676984786987,0.025373101234436));
res += mul(Get(s5,-dx,0), float4x4(0.268803596496582,0.300375521183014,-0.044728826731443,-0.105791822075844,-0.041825316846371,0.018608530983329,-0.026492917910218,-0.123044803738594,-0.059243645519018,0.100656352937222,-0.270324289798737,-0.143798187375069,-0.154911994934082,0.070296853780746,-0.118371888995171,0.154624775052071));
res += mul(Get(s5,-dx,dy), float4x4(-0.051718693226576,-0.075683206319809,0.012687764130533,0.101711511611938,0.067652277648449,0.129791229963303,0.057231094688177,0.185763791203499,0.091783262789249,0.076685383915901,0.041254494339228,0.157907560467720,0.031078787520528,0.021368907764554,0.059064917266369,0.014053028076887));
res += mul(Get(s5,0,-dy), float4x4(0.019633214920759,-0.008108193054795,-0.055477660149336,-0.096742138266563,0.080082744359970,0.194665431976318,0.165668994188309,0.114348441362381,0.165062099695206,0.020346390083432,-0.006763580720872,-0.213099434971809,-0.441512644290924,-0.019604932516813,0.099673457443714,0.165684252977371));
res += mul(Get(s5,0,0), float4x4(0.039917822927237,0.207348212599754,-0.115930244326591,0.108793579041958,-0.089977644383907,-0.041540510952473,0.143271848559380,0.042817950248718,-0.013700444251299,0.184111848473549,0.081764586269855,-0.001330788130872,-0.265471309423447,-0.142530038952827,-0.010663887485862,0.050532899796963));
res += mul(Get(s5,0,dy), float4x4(-0.002434534486383,0.041769668459892,0.043742325156927,0.066385187208652,0.020949596539140,-0.012242317199707,-0.017381891608238,-0.019090533256531,-0.016149045899510,0.053282827138901,0.090615570545197,-0.037096593528986,0.122746177017689,0.057662431150675,0.138686463236809,-0.073070049285889));
res += mul(Get(s5,dx,-dy), float4x4(-0.154807046055794,0.045813195407391,-0.041170768439770,0.104228563606739,0.014724472537637,-0.057382330298424,-0.017103856429458,-0.167319342494011,-0.056714795529842,-0.121389903128147,0.066963061690331,-0.067534014582634,-0.204937249422073,-0.015251769684255,-0.115922808647156,-0.040144518017769));
res += mul(Get(s5,dx,0), float4x4(-0.160688757896423,-0.041221976280212,-0.146439552307129,0.159800097346306,-0.103635765612125,-0.155137658119202,0.011578479781747,-0.047040950506926,0.041687991470098,-0.012572871521115,-0.007394223008305,-0.057166200131178,0.027303790673614,0.065499849617481,-0.080850966274738,-0.037850167602301));
res += mul(Get(s5,dx,dy), float4x4(0.062907911837101,-0.014504486694932,0.186855718493462,-0.012711643241346,-0.067396968603134,-0.031116588041186,0.083735398948193,0.036260083317757,0.005264353938401,0.037178121507168,-0.052846040576696,0.015325007028878,0.057799965143204,0.033063907176256,0.045911334455013,0.051286149770021));
res = max(float4(0, 0, 0, 0), res) + float4(-0.128069505095482,-0.088852427899837,-0.090500131249428,0.234461158514023) * min(float4(0, 0, 0, 0), res);
return res;
}