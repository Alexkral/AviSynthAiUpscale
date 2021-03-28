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
float4 res = float4(0.178316608071327,0.058146461844444,0.028555775061250,0.068015195429325);
res += mul(Get(s0,-dx,-dy), float4x4(0.113395631313324,0.060207251459360,0.235395103693008,0.114931061863899,0.048055749386549,-0.093823485076427,0.056131456047297,-0.029975662007928,-0.087398983538151,0.102411076426506,0.147644415497780,0.090711869299412,-0.053323943167925,-0.104474298655987,-0.246427416801453,0.077043600380421));
res += mul(Get(s0,-dx,0), float4x4(-0.077741578221321,0.101148292422295,-0.112915374338627,-0.083863981068134,0.244604915380478,-0.058071784675121,-0.204012110829353,0.106540843844414,-0.077715978026390,0.080954395234585,-0.235045194625854,0.335000634193420,-0.096700072288513,0.045647159218788,-0.095414966344833,0.141339734196663));
res += mul(Get(s0,-dx,dy), float4x4(0.068231023848057,0.017935348674655,-0.007417339365929,-0.061830170452595,0.044611442834139,0.111549004912376,-0.172878623008728,0.113714925944805,-0.116206109523773,0.130712181329727,-0.088872373104095,-0.077857680618763,-0.032315999269485,0.119575373828411,-0.019751867279410,0.030408587306738));
res += mul(Get(s0,0,-dy), float4x4(0.026209291070700,0.093772515654564,-0.046075910329819,0.083230756223202,0.083191178739071,-0.099828496575356,0.041587751358747,0.282723575830460,-0.093129225075245,-0.079484462738037,-0.008742701262236,-0.159632280468941,0.056010164320469,-0.223827615380287,0.240377366542816,-0.200706928968430));
res += mul(Get(s0,0,0), float4x4(0.084459818899632,0.058173745870590,0.114914759993553,-0.084798395633698,0.442911177873611,-0.101117685437202,0.050270158797503,-0.024656560271978,-0.006097530946136,-0.135992035269737,0.135870099067688,-0.258253008127213,-0.035498242825270,-0.070981889963150,-0.074688680469990,-0.039410106837749));
res += mul(Get(s0,0,dy), float4x4(-0.188889339566231,0.117192715406418,0.093729250133038,-0.167875826358795,-0.057916149497032,-0.141877993941307,-0.156991899013519,-0.167348727583885,-0.212205946445465,0.047792792320251,0.007976342923939,-0.062594927847385,-0.069328948855400,0.019316662102938,0.059725709259510,0.092449322342873));
res += mul(Get(s0,dx,-dy), float4x4(0.010092237964272,0.075474351644516,0.039584543555975,0.032967392355204,-0.145283475518227,-0.032056342810392,-0.164567515254021,-0.004425728227943,0.029635580256581,0.026825753971934,0.020422421395779,0.030530879274011,0.082561582326889,-0.075430274009705,0.020130915567279,0.127279341220856));
res += mul(Get(s0,dx,0), float4x4(-0.059622868895531,0.142978355288506,0.110847905278206,-0.025172151625156,-0.057083357125521,-0.088106021285057,0.097278416156769,-0.133380055427551,0.106766931712627,0.017721658572555,-0.099212482571602,-0.044549547135830,-0.077138833701611,0.139358237385750,0.050785560160875,-0.042976707220078));
res += mul(Get(s0,dx,dy), float4x4(0.037612315267324,0.020145505666733,0.000041591480112,-0.084168903529644,-0.172139748930931,0.014205389656126,0.034768432378769,-0.186160236597061,-0.037764810025692,0.013939353637397,-0.092427104711533,-0.159615010023117,0.011753009632230,0.069286338984966,0.006641811691225,0.021641118451953));
res += mul(Get(s1,-dx,-dy), float4x4(0.022192828357220,-0.034804090857506,-0.120371632277966,-0.236861661076546,-0.063510142266750,0.008778893388808,-0.097771279513836,-0.012284805998206,-0.072171747684479,0.028353551402688,0.192554593086243,0.126957222819328,0.097118921577930,0.009981254115701,-0.113101698458195,0.075424924492836));
res += mul(Get(s1,-dx,0), float4x4(-0.030760135501623,-0.058705233037472,0.017067046836019,-0.037535879760981,0.076285116374493,-0.106100559234619,-0.135461494326591,0.065477721393108,-0.067186526954174,0.000177510170033,0.034976862370968,-0.005510446149856,-0.041642624884844,0.147553861141205,-0.135649845004082,0.043313242495060));
res += mul(Get(s1,-dx,dy), float4x4(-0.134477570652962,0.044816900044680,-0.026931680738926,0.172103166580200,-0.123570144176483,-0.189012765884399,-0.102527305483818,-0.209125488996506,0.102967746555805,-0.027204703539610,0.074548713862896,0.075991593301296,0.034479018300772,-0.017626794055104,-0.189188003540039,0.137681245803833));
res += mul(Get(s1,0,-dy), float4x4(-0.294042676687241,0.184189751744270,-0.080001786351204,-0.095907047390938,-0.029588224366307,0.009277744218707,-0.079023972153664,-0.162511661648750,-0.041695360094309,-0.000410329579609,0.006113550160080,-0.087270520627499,0.106498070061207,-0.069241695106030,0.159611374139786,0.075710967183113));
res += mul(Get(s1,0,0), float4x4(0.216710060834885,-0.044988784939051,-0.102129004895687,-0.116107292473316,-0.080784149467945,0.089497014880180,-0.191534072160721,-0.068571202456951,-0.100793294608593,0.177401676774025,0.052262935787439,0.094042874872684,-0.091636374592781,0.237337827682495,0.008758382871747,-0.163146004080772));
res += mul(Get(s1,0,dy), float4x4(-0.071795232594013,-0.019674908369780,-0.239915117621422,-0.092530533671379,0.018994918093085,-0.033772848546505,-0.128625288605690,0.181357979774475,0.061315748840570,-0.087614968419075,0.025319848209620,0.136535212397575,0.034506302326918,-0.282334417104721,0.053687524050474,-0.052148308604956));
res += mul(Get(s1,dx,-dy), float4x4(-0.023363521322608,-0.039436388760805,0.079581230878830,-0.025257835164666,-0.025551278144121,-0.006000322289765,0.045295428484678,0.164395466446877,0.153028607368469,0.188461676239967,-0.081583015620708,-0.060622986406088,0.118313215672970,-0.063713960349560,-0.099077522754669,0.037929434329271));
res += mul(Get(s1,dx,0), float4x4(-0.018898097798228,-0.054381024092436,0.031626563519239,-0.130887672305107,0.053119845688343,0.081917278468609,0.253022342920303,0.166164934635162,0.021446527913213,0.048693906515837,-0.039297651499510,-0.161795049905777,-0.221008911728859,-0.257670491933823,-0.067444980144501,0.228750810027122));
res += mul(Get(s1,dx,dy), float4x4(-0.160375699400902,-0.067750178277493,0.091462358832359,-0.167207658290863,-0.153799802064896,0.030039565637708,0.084194846451283,0.002756677567959,0.163190081715584,-0.021632419899106,-0.098262928426266,0.051315736025572,-0.066181212663651,-0.106576435267925,0.062612891197205,0.051349580287933));
res += mul(Get(s2,-dx,-dy), float4x4(0.004457736853510,0.105022244155407,0.072420738637447,0.002110102912411,-0.045146118849516,0.054563678801060,0.053341943770647,-0.015108782798052,-0.164858147501945,-0.066321529448032,-0.105382435023785,-0.013335660099983,0.001745767891407,0.010342403315008,0.002047645859420,-0.133848533034325));
res += mul(Get(s2,-dx,0), float4x4(-0.092712678015232,0.124523080885410,-0.041937585920095,0.226687416434288,-0.021439978852868,0.096130274236202,0.089332483708858,0.044718474149704,-0.024710969999433,0.020919650793076,0.131547749042511,-0.080488078296185,0.000778639456257,0.095088876783848,-0.089257806539536,-0.073908507823944));
res += mul(Get(s2,-dx,dy), float4x4(-0.134959638118744,0.074273794889450,-0.097969472408295,-0.018600195646286,-0.079585053026676,-0.052159816026688,-0.023203380405903,0.118122681975365,0.174531877040863,-0.019810125231743,0.002028084592894,0.047927927225828,-0.037303637713194,0.107665166258812,-0.155692175030708,0.337521582841873));
res += mul(Get(s2,0,-dy), float4x4(-0.003144644200802,0.060731355100870,-0.127513647079468,-0.405325770378113,0.112029105424881,0.146856948733330,-0.008081408217549,-0.002085917629302,-0.044578351080418,0.052718859165907,-0.054279513657093,-0.156967982649803,0.025937642902136,0.095990136265755,-0.101422384381294,-0.010148257948458));
res += mul(Get(s2,0,0), float4x4(0.176350712776184,-0.207125782966614,0.050201945006847,0.093499198555946,-0.084728799760342,0.054728191345930,0.088595047593117,0.034507140517235,0.313982307910919,0.206047877669334,-0.015129654668272,0.032133005559444,-0.120564647018909,-0.283017933368683,0.134054422378540,-0.061391986906528));
res += mul(Get(s2,0,dy), float4x4(0.029090838506818,0.094187438488007,0.094785004854202,0.112195163965225,-0.120875470340252,-0.123705372214317,-0.197565436363220,-0.061609007418156,-0.087766095995903,-0.024147083982825,0.081970915198326,-0.033594116568565,-0.068565234541893,0.007736660074443,0.311271876096725,-0.263395547866821));
res += mul(Get(s2,dx,-dy), float4x4(-0.257184624671936,0.193549484014511,0.129155009984970,0.012307111173868,0.014422944746912,0.089005708694458,-0.036768797785044,0.018767990171909,0.022213116288185,-0.051894992589951,-0.048018146306276,-0.064373105764389,-0.049758438020945,-0.064721822738647,0.059579282999039,0.036211092025042));
res += mul(Get(s2,dx,0), float4x4(-0.223609521985054,0.051801405847073,-0.014765064232051,-0.288727909326553,-0.172473892569542,-0.029239298775792,-0.036975950002670,-0.098035335540771,-0.199358299374580,0.043993141502142,-0.024689070880413,-0.049708809703588,-0.131393030285835,-0.169852778315544,-0.033791519701481,-0.016201183199883));
res += mul(Get(s2,dx,dy), float4x4(0.089453727006912,-0.006362895946950,-0.063100412487984,-0.151348814368248,-0.094632163643837,-0.005229916423559,0.091745287179947,-0.058364130556583,0.092111863195896,-0.101303823292255,-0.066820159554482,0.177261993288994,-0.191689565777779,-0.002731753047556,-0.085897497832775,0.138646036386490));
res += mul(Get(s3,-dx,-dy), float4x4(-0.012444412335753,-0.067869640886784,-0.128489404916763,-0.056269358843565,-0.039290431886911,-0.102501191198826,-0.117499634623528,-0.181051209568977,-0.055358186364174,0.030464768409729,0.010624286718667,0.014823952689767,-0.102391362190247,-0.016971584409475,-0.093870416283607,-0.052670616656542));
res += mul(Get(s3,-dx,0), float4x4(0.190369829535484,-0.005160941742361,-0.078691363334656,-0.259009927511215,0.174360543489456,-0.057750605046749,0.007859202101827,-0.339303076267242,0.051510542631149,0.018712731078267,0.058202411979437,-0.152488857507706,-0.070564098656178,-0.103164590895176,0.132204264402390,-0.009371208027005));
res += mul(Get(s3,-dx,dy), float4x4(-0.368470460176468,-0.043227616697550,0.118490956723690,-0.044384032487869,-0.097301408648491,-0.062185369431973,0.086786605417728,-0.081503063440323,0.103274136781693,-0.021302765235305,0.163579210639000,-0.197818845510483,-0.242701888084412,-0.126949146389961,-0.110456362366676,0.029503664001822));
res += mul(Get(s3,0,-dy), float4x4(0.192422971129417,-0.124254725873470,0.050311878323555,0.156563878059387,0.050918910652399,0.033045642077923,-0.040202468633652,0.075580991804600,-0.017573691904545,-0.102892130613327,0.008177313953638,-0.013323043473065,0.151461496949196,-0.067574374377728,0.140457794070244,-0.035787623375654));
res += mul(Get(s3,0,0), float4x4(-0.067663125693798,0.052613548934460,0.045705731958151,0.202461495995522,0.097843818366528,0.183476701378822,-0.122749716043472,-0.409880846738815,-0.078146621584892,0.030509671196342,-0.103158108890057,0.000020524410502,0.339402437210083,-0.018380530178547,0.089975424110889,-0.093870356678963));
res += mul(Get(s3,0,dy), float4x4(0.107497826218605,-0.307260364294052,-0.090623326599598,0.074137791991234,0.216591283679008,0.002696595620364,0.075629055500031,-0.108643338084221,-0.187990039587021,0.051862131804228,-0.105608828365803,-0.004938946105540,0.004412003792822,0.089292205870152,0.066632911562920,-0.083989925682545));
res += mul(Get(s3,dx,-dy), float4x4(-0.058976981788874,0.050738077610731,0.036420315504074,-0.174268588423729,-0.225096195936203,-0.013269209302962,0.042918957769871,-0.020834038034081,-0.076761819422245,-0.106699481606483,0.169285744428635,0.035338714718819,0.049116395413876,0.104270242154598,-0.032269105315208,-0.052054122090340));
res += mul(Get(s3,dx,0), float4x4(0.067997559905052,-0.195174440741539,-0.021863142028451,0.013508150354028,0.213754609227180,-0.069116286933422,-0.152523607015610,0.350617170333862,-0.100378803908825,0.114782847464085,0.218507006764412,-0.209094315767288,0.047567538917065,-0.101405322551727,-0.096945032477379,-0.012704469263554));
res += mul(Get(s3,dx,dy), float4x4(0.038006942719221,-0.126206144690514,0.122741430997849,-0.064053192734718,0.070193774998188,0.069053284823895,0.039546780288219,0.050118822604418,-0.210468769073486,0.113856695592403,0.115309171378613,-0.162433966994286,0.038213908672333,-0.062834538519382,-0.064891122281551,0.182829871773720));
res += mul(Get(s4,-dx,-dy), float4x4(0.088617242872715,-0.055076461285353,0.159440577030182,0.145117446780205,0.012769206427038,-0.047855935990810,0.058570589870214,0.067960023880005,0.114892996847630,-0.025553895160556,0.037602577358484,0.234983175992966,-0.092123553156853,0.107154123485088,-0.267793357372284,0.072430185973644));
res += mul(Get(s4,-dx,0), float4x4(-0.007416118402034,0.043666359037161,0.070931360125542,0.103387109935284,0.107382155954838,0.043824058026075,-0.055665656924248,0.159838005900383,0.051562801003456,0.092222101986408,-0.017514556646347,-0.153527244925499,0.068902686238289,0.114743679761887,-0.244996160268784,0.131539300084114));
res += mul(Get(s4,-dx,dy), float4x4(0.203032791614532,0.025052292272449,-0.220969364047050,0.148505523800850,0.001819970668294,0.076127760112286,-0.048134177923203,-0.042313102632761,0.022564498707652,-0.099162228405476,0.077600695192814,-0.189455687999725,-0.069684021174908,-0.088098198175430,0.061162345111370,-0.048916030675173));
res += mul(Get(s4,0,-dy), float4x4(0.025857085362077,0.140204668045044,-0.105106405913830,-0.067973539233208,-0.098974898457527,0.191270381212234,-0.065231449902058,-0.101867668330669,0.175403460860252,-0.200984969735146,0.073676832020283,0.276657730340958,0.207675486803055,0.004894440528005,0.079139858484268,-0.135275661945343));
res += mul(Get(s4,0,0), float4x4(-0.171417936682701,0.100685998797417,-0.219358861446381,-0.101593106985092,-0.048814896494150,-0.396662294864655,-0.315987110137939,-0.036602944135666,-0.075856126844883,0.093330658972263,0.043994490057230,-0.118132613599300,-0.242795079946518,0.038164351135492,-0.039345834404230,-0.203538864850998));
res += mul(Get(s4,0,dy), float4x4(0.066162422299385,-0.089498437941074,-0.115736179053783,-0.187526524066925,-0.158800452947617,-0.030595645308495,0.033885829150677,0.213588461279869,-0.067964263260365,-0.104300528764725,0.002114722039551,-0.269187599420547,0.021064741536975,-0.099945008754730,-0.032413389533758,0.029889719560742));
res += mul(Get(s4,dx,-dy), float4x4(-0.111819364130497,0.078424505889416,-0.092628449201584,-0.045684266835451,0.000416845112341,-0.068286180496216,0.065256349742413,0.032064877450466,0.220126032829285,-0.044061120599508,-0.049641638994217,0.021444700658321,-0.078505948185921,-0.033090174198151,-0.004069099668413,-0.130921155214310));
res += mul(Get(s4,dx,0), float4x4(-0.198744639754295,-0.045526761561632,0.061275921761990,-0.011302244849503,-0.246473699808121,0.169520646333694,0.290778577327728,-0.469011962413788,0.065899498760700,-0.044642012566328,-0.180010840296745,0.042751319706440,-0.068844698369503,-0.156209990382195,-0.001479231985286,-0.028971439227462));
res += mul(Get(s4,dx,dy), float4x4(-0.014180323109031,-0.056348755955696,-0.065540358424187,-0.075201101601124,-0.082119867205620,-0.068838141858578,0.168302848935127,-0.184552252292633,0.086869738996029,0.062668085098267,0.008369692601264,0.119666881859303,0.059768415987492,-0.029160564765334,-0.015141294337809,-0.004702912177891));
res += mul(Get(s5,-dx,-dy), float4x4(0.006606982555240,-0.020656084641814,0.050620455294847,0.066395856440067,-0.051554739475250,-0.023019829764962,-0.044877234846354,-0.118781782686710,0.098102241754532,-0.045111369341612,0.128647923469543,0.178715854883194,0.073745436966419,0.137899622321129,0.051038220524788,-0.065566010773182));
res += mul(Get(s5,-dx,0), float4x4(-0.117695808410645,-0.146721750497818,0.154097363352776,-0.050717823207378,0.056132420897484,0.047456931322813,0.072113357484341,-0.396158933639526,-0.002701814053580,-0.036031331866980,-0.015236798673868,0.035543318837881,-0.122809469699860,0.197030484676361,0.111944958567619,0.151974692940712));
res += mul(Get(s5,-dx,dy), float4x4(0.066566333174706,0.018379546701908,-0.064810551702976,0.014658444561064,-0.064204536378384,-0.020688857883215,-0.013123572804034,-0.004428758751601,0.118037633597851,-0.051738157868385,0.020894881337881,0.003133888123557,0.058177709579468,0.006136390380561,0.126220598816872,0.105825468897820));
res += mul(Get(s5,0,-dy), float4x4(0.092071987688541,-0.095814757049084,-0.106378540396690,0.277602344751358,-0.128002569079399,0.089302204549313,0.021851796656847,0.193511635065079,0.088910482823849,0.088128745555878,-0.025592677295208,-0.043851524591446,-0.152338773012161,-0.197929501533508,0.022846248000860,0.164539217948914));
res += mul(Get(s5,0,0), float4x4(0.073860727250576,-0.078385531902313,-0.200158968567848,0.222890689969063,-0.179318159818649,-0.009808421134949,-0.166877329349518,0.321754395961761,0.105110041797161,0.099047668278217,0.108293622732162,0.047708339989185,0.021787291392684,0.048510629683733,-0.034160900861025,-0.021451750770211));
res += mul(Get(s5,0,dy), float4x4(-0.027006307616830,-0.012864504940808,-0.163041874766350,0.068050868809223,0.039943303912878,-0.025606725364923,-0.112521462142467,0.016829678788781,0.212021261453629,-0.046137899160385,0.103626407682896,-0.082694791257381,-0.085250310599804,0.014584691263735,0.034519832581282,0.027221750468016));
res += mul(Get(s5,dx,-dy), float4x4(0.031208567321301,-0.079974412918091,-0.070770405232906,-0.161646381020546,0.045340571552515,-0.131011471152306,-0.160606727004051,0.081307694315910,-0.054613966494799,0.006205265410244,-0.034059759229422,-0.109972216188908,0.048096649348736,0.097377985715866,0.029105007648468,0.079557597637177));
res += mul(Get(s5,dx,0), float4x4(0.114268243312836,-0.058117453008890,-0.092257700860500,0.014296329580247,-0.033060561865568,-0.028559969738126,-0.373390585184097,0.004189282655716,0.137541547417641,0.050873838365078,-0.043263994157314,0.090361848473549,-0.044978752732277,0.181104540824890,0.265627712011337,0.017210731282830));
res += mul(Get(s5,dx,dy), float4x4(0.107276566326618,0.062317147850990,-0.015877388417721,0.028069663792849,-0.080113448202610,-0.108379587531090,-0.036867190152407,-0.086123548448086,0.097056403756142,0.096305444836617,0.077809527516365,0.064811639487743,-0.268859565258026,0.171994522213936,0.102971032261848,-0.175653785467148));
res = max(float4(0, 0, 0, 0), res) + float4(0.282959550619125,0.685962796211243,-0.131991952657700,-0.139904811978340) * min(float4(0, 0, 0, 0), res);
return res;
}
