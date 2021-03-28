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
float4 res = float4(-0.027993859723210,-0.155955612659454,-0.202644288539886,-0.186405256390572);
res += mul(Get(s0,-dx,-dy), float4x4(0.001698406413198,-0.062339112162590,0.079031117260456,0.025433449074626,0.049545835703611,0.011486351490021,0.048289012163877,-0.013400170952082,-0.028900843113661,-0.006529548205435,-0.083899103105068,0.077980153262615,-0.014394957572222,-0.040940079838037,-0.021769419312477,-0.013653123751283));
res += mul(Get(s0,-dx,0), float4x4(0.112317785620689,-0.220479726791382,0.139904752373695,0.018718114122748,-0.073591671884060,-0.046848092228174,-0.121908038854599,-0.050744652748108,0.111263833940029,-0.028879633173347,0.158981174230576,0.110811263322830,0.059581901878119,-0.043558359146118,0.086507946252823,0.071416832506657));
res += mul(Get(s0,-dx,dy), float4x4(0.041740298271179,-0.121458947658539,0.028013199567795,-0.027695894241333,-0.071426719427109,0.018718892708421,0.029807396233082,-0.087372466921806,-0.034368999302387,0.066211029887199,0.109591446816921,0.109233848750591,0.031420018523932,0.019976552575827,0.033671546727419,-0.099221520125866));
res += mul(Get(s0,0,-dy), float4x4(0.058506537228823,0.081606395542622,0.046191327273846,-0.050839897245169,-0.285186171531677,-0.018039681017399,-0.061447080224752,0.003252960043028,-0.056733757257462,-0.077744185924530,0.137719050049782,0.061178829520941,-0.082958333194256,-0.105978764593601,-0.033931095153093,-0.050083938986063));
res += mul(Get(s0,0,0), float4x4(-0.065449595451355,-0.023630708456039,0.168746531009674,-0.027381222695112,0.450981885194778,-0.062916591763496,0.198172435164452,-0.031743962317705,-0.016258137300611,-0.048918284475803,-0.026397798210382,0.013063121587038,0.174594327807426,0.070234619081020,0.111111551523209,-0.174119189381599));
res += mul(Get(s0,0,dy), float4x4(0.126315087080002,-0.105208359658718,0.076920881867409,-0.103512696921825,-0.169161275029182,-0.033363804221153,0.070280306041241,-0.021766468882561,-0.120034322142601,-0.114402428269386,-0.060489017516375,-0.063567683100700,-0.063912302255630,-0.016411855816841,-0.025100525468588,0.006007251795381));
res += mul(Get(s0,dx,-dy), float4x4(-0.004455813206732,-0.074374035000801,0.021481588482857,0.042170904576778,-0.030323609709740,-0.032936032861471,-0.079170398414135,-0.009731783531606,-0.034757778048515,0.006283372640610,0.100858852267265,-0.011125098913908,0.008049021475017,0.009896901436150,0.009239990264177,-0.050566397607327));
res += mul(Get(s0,dx,0), float4x4(0.035325273871422,-0.056400947272778,-0.084970518946648,0.047691214829683,-0.035939097404480,0.031494073569775,0.024349061772227,-0.054068233817816,0.229441359639168,-0.014638002030551,0.164886400103569,-0.032930143177509,0.030208902433515,-0.137956619262695,-0.035252951085567,0.058436717838049));
res += mul(Get(s0,dx,dy), float4x4(-0.015310529619455,0.020012924447656,0.040734585374594,-0.028558263555169,0.014913382008672,-0.013085111975670,-0.124889552593231,0.006037419196218,-0.033037677407265,0.047982446849346,0.102780602872372,-0.006136700510979,0.012967756949365,0.001117473002523,-0.003391032340005,-0.037356294691563));
res += mul(Get(s1,-dx,-dy), float4x4(0.024062439799309,0.012040620669723,0.000391459150705,-0.007687410805374,0.003756734542549,0.200533702969551,-0.188300624489784,0.017857028171420,0.114667177200317,-0.044718522578478,-0.067238397896290,0.044986702501774,-0.039188839495182,0.067221105098724,0.012469924055040,-0.041845422238111));
res += mul(Get(s1,-dx,0), float4x4(-0.010984616354108,-0.000230304984143,-0.098290316760540,-0.127254158258438,0.014180799946189,0.159718304872513,0.133571907877922,-0.106378614902496,-0.201300889253616,-0.029569881036878,-0.120760940015316,0.001025966950692,0.021493656560779,-0.056365896016359,0.024917054921389,-0.046852409839630));
res += mul(Get(s1,-dx,dy), float4x4(-0.076093621551991,-0.050273191183805,-0.119253128767014,0.021669916808605,-0.007056673523039,0.087612196803093,-0.024729527533054,0.151884838938713,0.122356012463570,0.037373028695583,-0.041964121162891,0.100360490381718,-0.041785806417465,0.032886132597923,-0.134475409984589,-0.098834708333015));
res += mul(Get(s1,0,-dy), float4x4(-0.041138060390949,0.059775210916996,-0.072654612362385,-0.129110321402550,-0.011797840707004,0.042511779814959,0.071186795830727,-0.032293803989887,-0.022975899279118,0.117975831031799,-0.196329206228256,0.037266328930855,0.143761083483696,-0.053540728986263,0.025101831182837,-0.058568771928549));
res += mul(Get(s1,0,0), float4x4(0.088410712778568,-0.244271814823151,-0.007656023837626,-0.053378216922283,-0.046749141067266,-0.050055280327797,-0.284448564052582,-0.037800755351782,0.177510052919388,-0.010795528069139,-0.134642258286476,0.034303884953260,-0.161702990531921,0.093710765242577,-0.128505319356918,0.058789778500795));
res += mul(Get(s1,0,dy), float4x4(-0.141247734427452,0.081161677837372,-0.017696982249618,-0.074513211846352,-0.046917412430048,-0.001642404007725,-0.070413425564766,-0.049968183040619,-0.057950969785452,0.009860397316515,-0.021305866539478,-0.004619450308383,-0.035969384014606,-0.144971266388893,-0.209722548723221,0.093687407672405));
res += mul(Get(s1,dx,-dy), float4x4(0.040062200278044,-0.027473138645291,-0.043204154819250,0.114248491823673,0.012436959892511,-0.056126251816750,-0.051349796354771,-0.094714619219303,-0.056205712258816,0.031630489975214,0.006276139989495,-0.006856102962047,-0.008705334737897,-0.034788709133863,0.035516165196896,0.001533667324111));
res += mul(Get(s1,dx,0), float4x4(0.030988184735179,0.007574461400509,0.058408755809069,0.037262544035912,0.051423717290163,-0.085415415465832,0.051884867250919,0.023749798536301,0.018325766548514,0.112042881548405,-0.111296497285366,0.021292934194207,-0.062142133712769,-0.040992796421051,0.007402578368783,-0.082331418991089));
res += mul(Get(s1,dx,dy), float4x4(0.044641744345427,-0.056100018322468,0.147051230072975,0.049536742269993,-0.014095521531999,0.075640872120857,0.090723201632500,-0.029596105217934,-0.031828857958317,0.072160959243774,-0.033826995640993,0.045680817216635,0.006103183608502,0.067044608294964,0.029092717915773,-0.044355619698763));
res += mul(Get(s2,-dx,-dy), float4x4(-0.039640028029680,-0.034362222999334,0.036723744124174,-0.066980555653572,-0.003087365534157,0.018797731027007,-0.088386535644531,0.047827191650867,-0.014248524792492,-0.080272793769836,0.013908669352531,-0.029436461627483,0.143428400158882,0.012153384275734,0.025062611326575,0.015103534795344));
res += mul(Get(s2,-dx,0), float4x4(-0.210787728428841,0.038807220757008,-0.186489224433899,0.027175508439541,0.039235208183527,0.028272915631533,-0.054748062044382,-0.128939747810364,0.059245586395264,0.008982948027551,-0.076467961072922,0.077247366309166,-0.123789109289646,0.068902485072613,-0.052605811506510,0.045825369656086));
res += mul(Get(s2,-dx,dy), float4x4(-0.041500050574541,0.075373359024525,0.113767161965370,0.016047967597842,-0.033705428242683,-0.015799945220351,0.005272572860122,-0.018133338540792,-0.021132575348020,-0.013369184918702,-0.176101490855217,-0.094554178416729,0.100483022630215,0.020904259756207,-0.010411178693175,0.094397574663162));
res += mul(Get(s2,0,-dy), float4x4(-0.058767817914486,-0.051151528954506,0.109661348164082,-0.032743342220783,0.067580141127110,-0.256793051958084,-0.029547793790698,-0.058264952152967,-0.105464465916157,0.070998035371304,-0.122315771877766,0.115786969661713,0.077916882932186,0.023835793137550,-0.144457310438156,0.237174242734909));
res += mul(Get(s2,0,0), float4x4(0.251966267824173,0.032577876001596,0.082454614341259,0.036474451422691,0.034175563603640,-0.144521430134773,0.263158887624741,0.017546653747559,0.090560711920261,0.107655011117458,-0.161554366350174,0.064284868538380,-0.127259254455566,0.023819217458367,0.093165688216686,0.156284317374229));
res += mul(Get(s2,0,dy), float4x4(0.058729201555252,0.003603299381211,-0.019486017525196,-0.089500412344933,0.050243046134710,-0.202299222350121,-0.047183334827423,-0.037965182214975,-0.135421022772789,-0.055562328547239,-0.037232946604490,0.058676656335592,0.064021185040474,0.083737179636955,0.035670321434736,-0.048766281455755));
res += mul(Get(s2,dx,-dy), float4x4(-0.008629815652966,0.116895779967308,0.092522792518139,0.081604599952698,0.037725992500782,0.099206149578094,-0.018316017463803,0.100774280726910,-0.000415102666011,-0.004787177313119,0.019349547103047,-0.042509838938713,-0.058306653052568,0.035250719636679,0.102434813976288,-0.047230854630470));
res += mul(Get(s2,dx,0), float4x4(-0.161781623959541,0.199722588062286,0.182339683175087,-0.042892944067717,-0.076682239770889,0.264340847730637,0.016440948471427,-0.122656673192978,0.113161765038967,-0.088996186852455,-0.079213432967663,-0.049535676836967,0.060234263539314,-0.049617338925600,0.020068950951099,0.089883364737034));
res += mul(Get(s2,dx,dy), float4x4(-0.005759093910456,0.114222489297390,-0.070165410637856,-0.125603795051575,0.021386774256825,0.137102439999580,0.265401631593704,0.033880889415741,-0.018144700676203,-0.125788941979408,-0.014173408038914,-0.041430469602346,-0.017614524811506,0.026733657345176,-0.068338394165039,0.100132226943970));
res += mul(Get(s3,-dx,-dy), float4x4(0.062238082289696,-0.050656154751778,-0.002727245679125,-0.002035253448412,-0.094504110515118,-0.058224994689226,-0.035367209464312,0.005995749495924,0.090316988527775,0.002254751045257,0.177731409668922,0.139180257916451,-0.082377962768078,-0.053634777665138,-0.022035216912627,-0.034832835197449));
res += mul(Get(s3,-dx,0), float4x4(-0.127588406205177,0.040811650454998,-0.014710929244757,-0.022917104884982,0.028180370107293,-0.153333261609077,-0.003840516787022,0.095226965844631,-0.014251040294766,-0.121494539082050,0.049185287207365,-0.055935814976692,-0.262575179338455,0.008389557711780,-0.150665715336800,-0.058447256684303));
res += mul(Get(s3,-dx,dy), float4x4(0.067766532301903,0.007509696763009,-0.001289807958528,0.006464180536568,-0.131540313363075,-0.064593099057674,0.017689863219857,-0.030011951923370,0.023380674421787,0.108655065298080,-0.008799973875284,-0.046678870916367,-0.064414106309414,-0.023333556950092,0.023882815614343,0.024763822555542));
res += mul(Get(s3,0,-dy), float4x4(0.120931223034859,0.048934157937765,0.015794323757291,0.051888264715672,0.051973428577185,0.144856214523315,0.004541584756225,-0.044252600520849,0.013981650583446,0.160324856638908,-0.107434161007404,-0.038483150303364,0.008514690212905,-0.042806781828403,-0.064194768667221,0.100117772817612));
res += mul(Get(s3,0,0), float4x4(-0.208087265491486,-0.072028815746307,0.013757510110736,0.315245091915131,0.024747053161263,0.274855494499207,0.084802620112896,0.092120192945004,-0.101317599415779,0.199701383709908,-0.039532478898764,-0.074140079319477,0.295823454856873,-0.121312178671360,0.178621292114258,-0.157532125711441));
res += mul(Get(s3,0,dy), float4x4(0.196831539273262,-0.041719902306795,-0.110067524015903,-0.011013869196177,0.045087151229382,0.193877726793289,-0.125287085771561,-0.173672124743462,0.070685297250748,-0.120630972087383,-0.107018627226353,-0.132294043898582,0.012344224378467,0.015172467567027,-0.019111385568976,-0.057530745863914));
res += mul(Get(s3,dx,-dy), float4x4(-0.010643459856510,-0.062218613922596,0.010599105618894,-0.023470330983400,0.004648757167161,0.055151313543320,-0.015238893218338,-0.010196929797530,-0.024939497932792,0.004080005921423,-0.023694474250078,0.108188547194004,-0.005593112669885,0.052866447716951,0.116984583437443,0.000706817896571));
res += mul(Get(s3,dx,0), float4x4(-0.114289812743664,0.024907987564802,-0.078128300607204,-0.042582653462887,-0.047353196889162,0.169391587376595,0.028567951172590,0.044920507818460,0.035792898386717,-0.075905650854111,-0.002261836081743,0.006643134169281,-0.062903486192226,-0.049972105771303,-0.061283860355616,-0.001424464047886));
res += mul(Get(s3,dx,dy), float4x4(-0.023299219086766,-0.009603974409401,0.013859074562788,0.008832796476781,-0.009239340201020,0.124334447085857,0.069613680243492,0.000617779674940,-0.022997103631496,-0.008032787591219,0.013692630454898,-0.057435788214207,0.007295162416995,-0.038269374519587,-0.055278852581978,-0.058477152138948));
res += mul(Get(s4,-dx,-dy), float4x4(-0.008948721922934,-0.028680458664894,0.131555616855621,0.073492556810379,-0.039391849189997,0.047704368829727,-0.049954932183027,0.024678103625774,0.076565973460674,0.001847089733928,-0.058071363717318,0.003703020745888,-0.025225488469005,0.011484641581774,0.022098090499640,-0.008471379987895));
res += mul(Get(s4,-dx,0), float4x4(0.028014829382300,0.099171422421932,-0.037366863340139,-0.067266315221786,0.199359700083733,0.024543028324842,0.233673959970474,-0.054937768727541,-0.031091449782252,-0.053649321198463,-0.061992365866899,-0.168038621544838,-0.031965184956789,0.051541127264500,0.018820405006409,0.049993086606264));
res += mul(Get(s4,-dx,dy), float4x4(-0.007918438874185,-0.095956973731518,0.033287495374680,0.096554748713970,0.048738963901997,-0.067631304264069,0.034410879015923,-0.066170245409012,-0.021005993708968,-0.095073290169239,-0.025235151872039,-0.009263282641768,0.030072582885623,-0.037951674312353,-0.004197159316391,-0.079069212079048));
res += mul(Get(s4,0,-dy), float4x4(-0.078309722244740,-0.099294647574425,-0.081093169748783,0.184199005365372,0.091680854558945,0.029653394594789,0.006659841630608,-0.057862121611834,-0.052666358649731,0.103204727172852,0.145197778940201,0.027156889438629,-0.189456433057785,0.010887422598898,-0.017886716872454,0.107631489634514));
res += mul(Get(s4,0,0), float4x4(-0.095888949930668,-0.121050849556923,0.035172421485186,-0.139181122183800,-0.290055543184280,0.360457211732864,0.175376400351524,-0.086634024977684,-0.122505694627762,-0.206882670521736,-0.015494743362069,0.267769604921341,0.242574691772461,0.037374619394541,0.074639938771725,-0.194721370935440));
res += mul(Get(s4,0,dy), float4x4(0.034808903932571,-0.133523523807526,-0.068798832595348,-0.083591289818287,0.038830209523439,0.081686310470104,0.131485894322395,-0.019077733159065,0.037779845297337,-0.046274535357952,-0.061737213283777,-0.058054924011230,-0.061473414301872,-0.018075671046972,0.001707195420749,0.039757996797562));
res += mul(Get(s4,dx,-dy), float4x4(-0.048898156732321,0.057875651866198,0.134856328368187,-0.061222516000271,0.020148549228907,-0.136819675564766,0.117323264479637,0.019769303500652,-0.012486582621932,-0.008784221485257,0.023588605225086,-0.023370048031211,-0.021095192059875,0.015668187290430,-0.002626996021718,0.024453023448586));
res += mul(Get(s4,dx,0), float4x4(0.005624371580780,-0.148267164826393,-0.230964109301567,0.192698001861572,0.089488208293915,0.001244059298187,-0.247053429484367,0.033206287771463,0.159949555993080,0.004368385765702,0.112656272947788,-0.055811062455177,0.069125324487686,0.016698960214853,-0.154780432581902,0.070348493754864));
res += mul(Get(s4,dx,dy), float4x4(-0.013919815421104,0.059412483125925,0.004473712760955,-0.023322785273194,0.002585271606222,-0.098416343331337,0.055804058909416,0.003992032725364,-0.060123451054096,0.031122880056500,-0.053194191306829,-0.012389901094139,-0.044093843549490,0.005291540175676,-0.090099625289440,-0.004557096399367));
res += mul(Get(s5,-dx,-dy), float4x4(0.065466225147247,0.033698339015245,0.099304050207138,0.091014884412289,-0.129644483327866,0.064971432089806,-0.082447066903114,0.046913228929043,-0.000948000466451,0.138301923871040,0.000242060341407,0.073070794343948,0.038777094334364,-0.019935708492994,-0.045398466289043,-0.308705091476440));
res += mul(Get(s5,-dx,0), float4x4(-0.014352181926370,0.011583555489779,0.001055507105775,-0.006906184833497,-0.125223740935326,-0.058295410126448,-0.026244271546602,0.042610812932253,-0.176707625389099,0.174287766218185,-0.139761462807655,-0.148066252470016,-0.071734935045242,-0.094099417328835,-0.001289947773330,0.028428109362721));
res += mul(Get(s5,-dx,dy), float4x4(-0.018570002168417,-0.017970258370042,0.014738319441676,0.003892728360370,-0.035438962280750,-0.049543727189302,-0.049282453954220,0.074172474443913,-0.011653653346002,0.021768761798739,0.173130631446838,0.100007943809032,0.073639057576656,0.064326710999012,0.049884110689163,0.062548466026783));
res += mul(Get(s5,0,-dy), float4x4(-0.063989743590355,0.052124686539173,-0.111751206219196,-0.012922872789204,0.116309419274330,-0.252080589532852,-0.078661613166332,-0.033296547830105,-0.035920068621635,-0.045858975499868,0.122774861752987,0.014324267394841,-0.049996912479401,-0.081748865544796,-0.058586865663528,0.018600972369313));
res += mul(Get(s5,0,0), float4x4(-0.067672871053219,-0.024181963875890,0.058844793587923,0.206083446741104,0.063241854310036,-0.003041054820642,-0.148452207446098,0.205745548009872,0.082961887121201,-0.306298822164536,-0.103113390505314,0.165999978780746,0.070139266550541,-0.018728714436293,-0.033875867724419,-0.059688124805689));
res += mul(Get(s5,0,dy), float4x4(-0.014070790261030,0.067942358553410,-0.063045948743820,0.056661501526833,0.044728849083185,-0.007963481359184,-0.067275799810886,0.021320832893252,0.000884894921910,-0.049555450677872,-0.079903833568096,0.015982292592525,-0.019440770149231,0.035621557384729,0.031878076493740,0.054733008146286));
res += mul(Get(s5,dx,-dy), float4x4(-0.093376018106937,0.103367716073990,-0.010912566445768,-0.126379564404488,0.006623924709857,-0.035044912248850,-0.071327812969685,0.065988279879093,0.006009692326188,0.021603047847748,-0.039969716221094,0.034210909157991,-0.023125413805246,-0.086827822029591,-0.063922002911568,-0.035106629133224));
res += mul(Get(s5,dx,0), float4x4(-0.034805860370398,-0.063618145883083,-0.091184467077255,0.121932722628117,-0.121789157390594,0.124028131365776,0.088477797806263,-0.126367613673210,-0.015370716340840,0.121480204164982,-0.005471574608237,0.022181151434779,0.006217498332262,-0.071684822440147,-0.022852284833789,-0.035746183246374));
res += mul(Get(s5,dx,dy), float4x4(-0.010931960307062,0.055307846516371,0.040966849774122,0.061416454613209,-0.014202973805368,0.104376867413521,-0.053250081837177,0.160054683685303,-0.000716898357496,0.035859521478415,0.069861330091953,0.007046549580991,-0.019650446251035,0.017361618578434,0.106430329382420,0.043054323643446));
res = max(float4(0, 0, 0, 0), res) + float4(1.000292897224426,0.052133504301310,-0.032398179173470,0.002565586939454) * min(float4(0, 0, 0, 0), res);
return res;
}