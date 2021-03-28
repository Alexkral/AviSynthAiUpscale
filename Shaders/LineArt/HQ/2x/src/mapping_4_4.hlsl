sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
sampler s4 : register(s4);
sampler s5 : register(s5);
sampler s6 : register(s6);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.003761301748455,-0.207490935921669,0.255503386259079,-0.033553052693605);
res += mul(Get(s0,-dx,-dy), float4x4(0.030092494562268,-0.080682523548603,-0.092477425932884,0.003138641826808,0.057245258241892,-0.089524030685425,0.012036652304232,-0.019011206924915,-0.058764334768057,0.049314271658659,0.082979336380959,0.041570402681828,-0.035352956503630,-0.041793763637543,-0.032135926187038,0.038379538804293));
res += mul(Get(s0,-dx,0), float4x4(-0.028889166191220,-0.135235786437988,0.050161026418209,-0.091196291148663,-0.093465961515903,0.180628389120102,0.097234159708023,-0.064862333238125,-0.041127871721983,-0.060631942003965,0.059522520750761,0.070745870471001,0.004095483571291,-0.016243014484644,0.147768244147301,-0.039139062166214));
res += mul(Get(s0,-dx,dy), float4x4(0.031455773860216,0.011817351914942,0.025448175147176,-0.069011718034744,0.066601797938347,0.027279114350677,-0.004373640287668,-0.001771839801222,0.116686433553696,-0.029010131955147,0.127892002463341,-0.047221425920725,0.140185832977295,0.053737670183182,0.123781889677048,0.052996441721916));
res += mul(Get(s0,0,-dy), float4x4(-0.040768612176180,-0.103287130594254,0.040549430996180,0.104897819459438,-0.031071091070771,0.118754923343658,-0.176621422171593,-0.088162593543530,0.136894419789314,0.080027908086777,0.052091576159000,0.006622666493058,0.023256629705429,-0.110469356179237,-0.195998519659042,-0.178634688258171));
res += mul(Get(s0,0,0), float4x4(-0.062776282429695,0.010829592123628,-0.142222091555595,-0.014032788574696,0.022390590980649,0.142070755362511,0.113381363451481,-0.156990885734558,-0.097369767725468,-0.150766551494598,0.162026777863503,0.038859419524670,-0.227588891983032,-0.253837794065475,-0.134196490049362,0.121709361672401));
res += mul(Get(s0,0,dy), float4x4(0.054692022502422,0.126971453428268,-0.018269540742040,-0.097847677767277,0.037278048694134,-0.134746745228767,0.064486943185329,-0.128537431359291,-0.127604246139526,0.001480061211623,-0.060888160020113,0.073864154517651,0.076448842883110,-0.032000068575144,-0.029718644917011,-0.062269311398268));
res += mul(Get(s0,dx,-dy), float4x4(-0.135435312986374,0.004564907401800,0.120263375341892,-0.055174313485622,-0.163059294223785,0.070262342691422,-0.158395573496819,-0.215117558836937,0.022475570440292,0.075212866067886,0.173994436860085,-0.004333811812103,-0.043285802006721,0.030029157176614,-0.104821681976318,-0.169550627470016));
res += mul(Get(s0,dx,0), float4x4(0.164080545306206,0.034204367548227,0.111172899603844,-0.147951617836952,-0.085518077015877,0.109093151986599,-0.099210947751999,-0.239000082015991,-0.088643923401833,-0.156661018729210,0.249979093670845,-0.035202886909246,-0.249500542879105,0.042069483548403,0.037672623991966,-0.192131429910660));
res += mul(Get(s0,dx,dy), float4x4(-0.021590758115053,0.136239677667618,0.085370242595673,-0.072483770549297,-0.062021140009165,-0.035162810236216,0.094181515276432,-0.109314501285553,0.063441433012486,-0.141659498214722,0.092016279697418,0.042710259556770,0.043819811195135,0.123148687183857,0.074403129518032,-0.045411612838507));
res += mul(Get(s1,-dx,-dy), float4x4(-0.046328689903021,0.000745331111830,-0.164672568440437,0.019357858225703,0.061061646789312,0.184556916356087,-0.100051470100880,0.000441880518338,0.137419879436493,0.041874919086695,0.005070997402072,-0.136196091771126,0.124003760516644,0.022333504632115,-0.112208664417267,0.093450166285038));
res += mul(Get(s1,-dx,0), float4x4(0.048443637788296,-0.043928954750299,0.145682543516159,-0.119033880531788,0.010385935194790,0.072808861732483,-0.130886226892471,0.005667515564710,-0.023292243480682,0.022019514814019,-0.217273861169815,0.028269624337554,0.095986425876617,0.093682065606117,-0.229590132832527,0.214267775416374));
res += mul(Get(s1,-dx,dy), float4x4(0.045605078339577,-0.020390611141920,0.132417052984238,-0.043460015207529,0.067948855459690,0.040127940475941,-0.106458619236946,0.035919692367315,-0.088098250329494,-0.048271555453539,-0.220455989241600,0.058337617665529,-0.042051833122969,-0.111743286252022,-0.067433774471283,0.000651017180644));
res += mul(Get(s1,0,-dy), float4x4(0.009182901121676,0.192154750227928,-0.551859974861145,-0.012159488163888,-0.078930705785751,0.074726529419422,-0.082506343722343,-0.079810038208961,-0.092216022312641,-0.073791272938251,0.239575788378716,-0.089691951870918,0.052866522222757,0.108737766742706,-0.232932642102242,-0.060802362859249));
res += mul(Get(s1,0,0), float4x4(-0.077904812991619,0.184463918209076,-0.081570558249950,-0.034574836492538,-0.000413496076362,-0.491494625806808,-0.146317511796951,0.268961936235428,0.254800647497177,-0.115378409624100,0.150088787078857,-0.079006813466549,-0.180186480283737,-0.047765884548426,-0.052071455866098,0.039747048169374));
res += mul(Get(s1,0,dy), float4x4(-0.043586928397417,0.114824511110783,0.063168749213219,-0.051023501902819,-0.230849787592888,0.215222403407097,-0.207270964980125,-0.151139929890633,-0.069237269461155,0.158005788922310,0.101734288036823,0.002115886891261,0.084769368171692,-0.142854183912277,0.138380646705627,0.104831218719482));
res += mul(Get(s1,dx,-dy), float4x4(-0.103825941681862,0.009677783586085,-0.469717532396317,-0.127459794282913,-0.033203158527613,0.049773305654526,-0.048886172473431,0.017997693270445,0.031486384570599,0.019430231302977,-0.003857559524477,0.085967510938644,0.048886593431234,0.018722329288721,-0.135554522275925,0.065381430089474));
res += mul(Get(s1,dx,0), float4x4(0.066928647458553,-0.066658958792686,-0.089356780052185,0.016946438699961,0.018073763698339,0.281731158494949,-0.170973196625710,-0.051959659904242,0.050363536924124,0.137422367930412,-0.196252673864365,-0.051269665360451,-0.049027934670448,-0.075116492807865,0.018001928925514,-0.033691052347422));
res += mul(Get(s1,dx,dy), float4x4(0.026304228231311,-0.060805618762970,0.049514014273882,0.012906237505376,0.058230675756931,0.147878825664520,-0.132095858454704,-0.022060874849558,0.113183133304119,-0.059275202453136,-0.039187077432871,0.115269035100937,0.082994811236858,-0.148294329643250,-0.000192984545720,0.008831188082695));
res += mul(Get(s2,-dx,-dy), float4x4(-0.065486565232277,0.010166296735406,-0.003902135184035,0.044917032122612,-0.000296715967124,-0.048932664096355,0.289395630359650,-0.112193547189236,-0.097260117530823,-0.049047708511353,-0.141760364174843,0.085428863763809,0.090270332992077,0.051931906491518,-0.040980447083712,0.031611599028111));
res += mul(Get(s2,-dx,0), float4x4(-0.253624498844147,-0.046125553548336,0.085153289139271,-0.013993931002915,0.128010481595993,0.003785391571000,0.221477329730988,0.034552950412035,0.144530072808266,-0.014417830854654,-0.089381679892540,0.009552178904414,-0.133009493350983,0.049669023603201,0.007246860302985,-0.070654064416885));
res += mul(Get(s2,-dx,dy), float4x4(0.088409192860126,-0.024715591222048,-0.021187504753470,0.024675082415342,0.025063693523407,0.068234719336033,-0.047865070402622,-0.051539286971092,-0.024781621992588,0.068248003721237,0.053705468773842,-0.051024165004492,-0.090972162783146,0.048995412886143,-0.143121570348740,0.044862236827612));
res += mul(Get(s2,0,-dy), float4x4(-0.072544008493423,-0.074583418667316,0.191178172826767,0.008421209640801,0.029366066679358,-0.022012021392584,0.158962234854698,-0.226371526718140,-0.203696981072426,0.028588531538844,-0.219984903931618,-0.140185147523880,0.123229749500751,0.129267111420631,0.160514757037163,-0.021167853847146));
res += mul(Get(s2,0,0), float4x4(-0.160503119230270,0.017733385786414,-0.094101324677467,0.049307573586702,0.013716515153646,0.026672858744860,0.017607236281037,0.010254493914545,-0.029443554580212,-0.183160647749901,-0.337648451328278,-0.085589408874512,-0.131352707743645,-0.046173814684153,0.147853672504425,0.025625370442867));
res += mul(Get(s2,0,dy), float4x4(0.036293268203735,-0.031006990000606,0.209903478622437,0.173919886350632,0.043058447539806,0.000220225323574,-0.060029998421669,0.019604766741395,-0.079673625528812,-0.013551505282521,0.026718355715275,0.038776870816946,0.152900651097298,0.058215983211994,-0.061858344823122,0.037053320556879));
res += mul(Get(s2,dx,-dy), float4x4(-0.163241729140282,0.061037059873343,-0.129846930503845,0.116357021033764,-0.057952947914600,0.045240856707096,0.147406995296478,-0.151481717824936,0.007876937277615,0.029213011264801,-0.058342177420855,0.141280546784401,0.052034582942724,0.056884165853262,-0.105797655880451,0.014915542677045));
res += mul(Get(s2,dx,0), float4x4(-0.120507799088955,0.082636155188084,-0.262412965297699,-0.066199637949467,0.068942695856094,0.010836297646165,0.271773457527161,-0.060286812484264,-0.157913058996201,0.039769232273102,-0.110224522650242,-0.000483418320073,0.137737318873405,-0.007444710936397,0.128363683819771,-0.037742152810097));
res += mul(Get(s2,dx,dy), float4x4(-0.099011741578579,0.051322173327208,-0.127725914120674,0.049811229109764,0.128408625721931,0.039084397256374,0.140932336449623,-0.153674408793449,0.011592179536819,-0.010714258067310,0.089743457734585,0.055354360491037,0.068831287324429,0.049116730690002,-0.076491110026836,0.112496629357338));
res += mul(Get(s3,-dx,-dy), float4x4(0.145352438092232,0.041381578892469,0.058863282203674,0.094754934310913,-0.084294222295284,-0.054461650550365,0.082830406725407,0.061189804226160,0.062891863286495,-0.017820060253143,0.054305125027895,-0.014172432012856,0.052921969443560,0.071111410856247,0.074828960001469,0.025297163054347));
res += mul(Get(s3,-dx,0), float4x4(-0.078969322144985,-0.036862615495920,-0.127846211194992,0.057518146932125,0.091595098376274,-0.062763229012489,-0.069760680198669,0.053080260753632,0.023265777155757,0.005008037667722,0.123649224638939,0.083934120833874,0.033581070601940,0.167118176817894,0.026401914656162,0.020934969186783));
res += mul(Get(s3,-dx,dy), float4x4(0.092010930180550,0.074071772396564,-0.023306297138333,0.082200594246387,0.021344909444451,-0.093041174113750,0.008364104665816,-0.083774991333485,0.024373823776841,0.112889409065247,-0.057196699082851,0.069256894290447,0.103127934038639,-0.000438010523794,-0.025910474359989,-0.033137187361717));
res += mul(Get(s3,0,-dy), float4x4(-0.048469018191099,0.017127113416791,0.063121862709522,0.059389609843493,0.035243730992079,0.098942846059799,-0.068656273186207,-0.010266559198499,-0.172259092330933,0.089566521346569,-0.059636138379574,-0.003476466750726,0.046950176358223,0.058950982987881,-0.117461755871773,-0.130543768405914));
res += mul(Get(s3,0,0), float4x4(0.060976102948189,-0.143570184707642,0.105742506682873,0.119252666831017,0.117200382053852,0.204437568783760,-0.169262200593948,0.211649194359779,-0.093781523406506,-0.026495965197682,-0.048522047698498,-0.185417592525482,0.132640957832336,0.081010781228542,-0.232108145952225,0.094021551311016));
res += mul(Get(s3,0,dy), float4x4(0.017454419285059,0.029931152239442,0.045771531760693,0.039101868867874,0.069661505520344,-0.271683931350708,-0.017890235409141,0.033118169754744,0.084684915840626,-0.013184902258217,0.023400645703077,0.093481458723545,0.002485326724127,0.077567338943481,-0.063627511262894,0.026290427893400));
res += mul(Get(s3,dx,-dy), float4x4(0.033261552453041,-0.042468257248402,0.100134842097759,-0.014757071621716,0.017465826123953,0.210960358381271,-0.003597898408771,-0.152188539505005,-0.132461726665497,-0.022540558129549,-0.053437545895576,-0.302136808633804,0.088386438786983,0.062044028192759,0.000521912821569,-0.105059109628201));
res += mul(Get(s3,dx,0), float4x4(0.039871495217085,-0.058013722300529,0.092011578381062,0.165016263723373,-0.086999073624611,0.043476879596710,-0.059177376329899,-0.055635787546635,-0.043754179030657,0.001023745862767,-0.404614746570587,-0.051699146628380,0.019173927605152,0.059959236532450,0.024568943306804,0.042864102870226));
res += mul(Get(s3,dx,dy), float4x4(0.016539208590984,0.057912725955248,-0.117747232317924,0.054004091769457,-0.011840634047985,-0.026627875864506,0.117502346634865,-0.030471252277493,0.025242272764444,0.016092782840133,-0.059188306331635,-0.009658331982791,0.066616512835026,-0.002530157566071,0.067413248121738,0.028644314035773));
res += mul(Get(s4,-dx,-dy), float4x4(0.055497385561466,0.086340062320232,0.004660180304199,0.149715349078178,0.162972554564476,-0.060210075229406,-0.049723874777555,0.019888775423169,0.247538566589355,-0.017098372802138,0.176745489239693,0.028889022767544,0.034164462238550,-0.002803927753121,0.018529314547777,0.013088723644614));
res += mul(Get(s4,-dx,0), float4x4(0.183848842978477,0.083332262933254,0.016489678993821,0.064324356615543,0.057350702583790,-0.129518046975136,-0.119657672941685,-0.006403747946024,-0.026742562651634,-0.119008362293243,0.167601853609085,0.053961694240570,0.201895937323570,-0.106527969241142,0.114368632435799,-0.098493389785290));
res += mul(Get(s4,-dx,dy), float4x4(0.025527387857437,-0.010007580742240,0.104289308190346,0.050190471112728,-0.040181070566177,0.026959028095007,-0.059579815715551,-0.050514176487923,0.006278531160206,-0.061184678226709,0.040829304605722,-0.049920938909054,-0.042903177440166,-0.108745194971561,0.070603892207146,-0.010128194466233));
res += mul(Get(s4,0,-dy), float4x4(-0.054236155003309,0.049561694264412,-0.049606136977673,0.068306431174278,0.036711040884256,-0.033122822642326,-0.092133536934853,-0.115320600569248,-0.181974336504936,0.087476715445518,0.055867053568363,-0.129771411418915,0.191382437944412,0.151215806603432,-0.238901436328888,-0.049935888499022));
res += mul(Get(s4,0,0), float4x4(-0.122812606394291,0.120986692607403,0.062305256724358,-0.003766170237213,0.001669634482823,-0.020105682313442,-0.125425353646278,0.117027781903744,0.226880684494972,0.103031329810619,-0.145193874835968,0.121800139546394,0.003193497192115,-0.059324465692043,0.057129539549351,-0.062857843935490));
res += mul(Get(s4,0,dy), float4x4(0.051532369107008,-0.186021551489830,0.258524447679520,-0.084229193627834,-0.136198699474335,0.102904982864857,-0.128353610634804,0.023279765620828,-0.003529486944899,0.000231584854191,-0.097800858318806,-0.080514781177044,0.223471060395241,-0.098441660404205,0.198163807392120,0.021040802821517));
res += mul(Get(s4,dx,-dy), float4x4(-0.074384607374668,-0.016848534345627,-0.133635863661766,-0.022647283971310,0.010731370188296,0.090474411845207,-0.082350462675095,0.004806223791093,0.004345790017396,-0.000502895505633,-0.095397062599659,-0.000935935182497,-0.037685070186853,-0.002249741926789,-0.200859665870667,0.098734423518181));
res += mul(Get(s4,dx,0), float4x4(-0.006833601742983,-0.146232083439827,0.058532126247883,-0.181464567780495,-0.059785481542349,0.211246386170387,-0.147617384791374,-0.072553291916847,-0.000091449081083,0.046218663454056,-0.039012949913740,-0.067761242389679,0.025471696630120,-0.037252437323332,-0.057911809533834,-0.035567034035921));
res += mul(Get(s4,dx,dy), float4x4(-0.064669974148273,0.007650398649275,-0.023437548428774,-0.044023219496012,0.131631702184677,0.059133928269148,-0.156915113329887,-0.022952800616622,0.010928434319794,0.055308092385530,0.012388559989631,-0.105483591556549,0.163022160530090,-0.400381386280060,0.208408728241920,0.006318973377347));
res += mul(Get(s5,-dx,-dy), float4x4(-0.151226580142975,-0.088927455246449,0.207723751664162,-0.020706877112389,-0.064926028251648,0.013930364511907,-0.016434887424111,-0.111394032835960,-0.214391767978668,-0.035702265799046,-0.068941555917263,0.012356200255454,0.101745702326298,-0.016076022759080,0.036072950810194,-0.030133638530970));
res += mul(Get(s5,-dx,0), float4x4(0.135888248682022,-0.071183435618877,0.065011404454708,0.076130107045174,-0.097348935902119,0.149737566709518,-0.393754303455353,0.249365061521530,-0.044960271567106,-0.034172058105469,-0.102183885872364,0.029947560280561,-0.224893316626549,-0.050129950046539,0.012193314731121,-0.046806331723928));
res += mul(Get(s5,-dx,dy), float4x4(-0.113838575780392,-0.000615319528151,-0.108878798782825,-0.044576160609722,-0.028788277879357,0.117091111838818,-0.050113458186388,0.017062893137336,-0.020891735330224,-0.052684664726257,-0.096506826579571,-0.015710987150669,-0.020577626302838,0.009525205008686,-0.038333553820848,-0.120153799653053));
res += mul(Get(s5,0,-dy), float4x4(0.015491339378059,-0.047600168734789,0.182309091091156,-0.097213692963123,0.042361710220575,-0.043732319027185,-0.080749526619911,0.010395593009889,-0.135233849287033,-0.110857099294662,0.048236012458801,0.023231463506818,0.052735384553671,0.020993340760469,-0.095496051013470,-0.069376200437546));
res += mul(Get(s5,0,0), float4x4(-0.053606383502483,-0.020068701356649,0.044809859246016,-0.022019414231181,-0.240191921591759,0.133720442652702,-0.516573309898376,0.032860033214092,-0.161624595522881,0.190012335777283,-0.058842077851295,-0.033228896558285,0.006243448704481,-0.225921317934990,-0.268461018800735,-0.086546070873737));
res += mul(Get(s5,0,dy), float4x4(0.129895210266113,-0.046913269907236,-0.044488817453384,0.007444875314832,-0.073871575295925,0.008844317868352,-0.062812909483910,-0.005133459344506,-0.054877359420061,-0.066217817366123,0.048032637685537,-0.055645145475864,0.016570612788200,-0.236005127429962,0.133029073476791,0.059003952890635));
res += mul(Get(s5,dx,-dy), float4x4(-0.117298126220703,0.101904340088367,-0.017132986336946,-0.104885928332806,-0.045195296406746,-0.037521824240685,-0.063833907246590,-0.007703763898462,-0.025905795395374,-0.114237584173679,0.107437185943127,0.037254411727190,-0.046365410089493,-0.035076238214970,-0.003127927193418,-0.024584000930190));
res += mul(Get(s5,dx,0), float4x4(0.152047336101532,0.030544012784958,-0.087696567177773,-0.185757711529732,0.011811019852757,0.293385148048401,-0.232844948768616,0.005443303380162,-0.103871420025826,0.133686885237694,-0.111493200063705,-0.030580431222916,0.084550566971302,-0.057395581156015,0.256105512380600,-0.080165870487690));
res += mul(Get(s5,dx,dy), float4x4(0.102819114923477,-0.156288400292397,0.153225407004356,-0.012527195736766,-0.176600649952888,0.082039058208466,0.000104543156340,-0.059512078762054,-0.049777414649725,-0.020997853949666,0.144936636090279,-0.011215917766094,-0.065294019877911,-0.135475873947144,0.226477995514870,-0.147791832685471));
res += tex2D(s6, tex);
res = max(float4(0, 0, 0, 0), res) + float4(-0.073851741850376,0.654799997806549,0.013881143182516,0.475238472223282) * min(float4(0, 0, 0, 0), res);
return res;
}
