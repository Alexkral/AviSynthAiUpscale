sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += mul(Get(s0,-dx,-dy), float4x4(-0.062229998409748,-0.062586352229118,0.171659857034683,0.101909786462784,0.050442751497030,-0.041945170611143,0.100278630852699,0.090733312070370,-0.057051785290241,-0.128061741590500,0.121945142745972,0.051080934703350,-0.165170699357986,-0.207145363092422,-0.005097929853946,0.005157518200576));
res += mul(Get(s0,-dx,0), float4x4(-0.295893192291260,0.094871982932091,0.109102800488472,-0.202287614345551,0.086594186723232,-0.061686400324106,0.028037231415510,0.154298752546310,-0.179500788450241,-0.203161507844925,0.080390967428684,0.139356091618538,-0.269806832075119,0.059787530452013,0.033283714205027,0.009014849551022));
res += mul(Get(s0,-dx,dy), float4x4(-0.035970773547888,-0.096735052764416,0.047315616160631,-0.092087410390377,-0.163352265954018,-0.088963635265827,-0.028590090572834,0.069561295211315,0.183359175920486,-0.020320847630501,0.128806784749031,-0.120983436703682,0.143150836229324,-0.001708837575279,-0.013772518374026,0.004301786422729));
res += mul(Get(s0,0,-dy), float4x4(0.246471896767616,-0.097884848713875,-0.066862240433693,-0.023576702922583,-0.009317721240222,-0.234625399112701,-0.057999297976494,0.000145652084029,-0.103809535503387,0.132212489843369,-0.154740333557129,0.045334611088037,-0.039611335843801,0.122763060033321,-0.069976091384888,-0.094849795103073));
res += mul(Get(s0,0,0), float4x4(-0.031908459961414,-0.029237646609545,0.015078415162861,-0.102630577981472,0.011585363186896,0.128775626420975,-0.075649432837963,0.033729672431946,-0.098184637725353,0.041500773280859,-0.224642500281334,-0.107377596199512,-0.072177864611149,0.124565497040749,0.000618548423517,0.103762499988079));
res += mul(Get(s0,0,dy), float4x4(0.093539632856846,-0.123837821185589,0.036395825445652,0.055062849074602,-0.033023715019226,0.096554748713970,-0.089258782565594,-0.073846347630024,0.018418632447720,0.013839177787304,0.037144020199776,0.078630976378918,-0.075789652764797,-0.067950047552586,0.071504399180412,0.046984724700451));
res += mul(Get(s0,dx,-dy), float4x4(0.075906105339527,0.179060831665993,-0.340063452720642,-0.074526704847813,-0.100447230041027,0.089550569653511,-0.248920664191246,-0.079908281564713,-0.178459301590919,0.052401591092348,0.037203967571259,-0.153622731566429,0.069418512284756,0.015218413434923,0.034894738346338,0.269621044397354));
res += mul(Get(s0,dx,0), float4x4(0.009500479325652,-0.040674757212400,0.046480279415846,-0.150180354714394,0.062153164297342,0.018834749236703,-0.048279445618391,0.065969511866570,-0.044832818210125,0.066951245069504,0.074070371687412,-0.180410653352737,0.033911254256964,-0.077783115208149,0.008528767153621,0.018826829269528));
res += mul(Get(s0,dx,dy), float4x4(0.198699891567230,-0.001481133978814,0.011392476968467,0.053328994661570,0.049285754561424,-0.061530243605375,-0.177758738398552,0.043086361140013,-0.199327096343040,-0.151796638965607,0.109827503561974,-0.035227391868830,0.162010625004768,-0.097000248730183,0.136801868677139,-0.071894861757755));
res += mul(Get(s1,-dx,-dy), float4x4(0.050055373460054,-0.057513773441315,-0.203965678811073,0.100766196846962,0.052462220191956,-0.016411844640970,0.165821999311447,-0.015143463388085,-0.101920470595360,-0.025248998776078,0.039131067693233,-0.183822050690651,-0.029946444556117,-0.091930054128170,-0.048293814063072,-0.267165362834930));
res += mul(Get(s1,-dx,0), float4x4(-0.101457349956036,-0.026068788021803,-0.108334012329578,0.116393677890301,-0.039291821420193,0.013579038903117,0.017731823027134,0.039796121418476,-0.031265001744032,-0.081298373639584,-0.073985084891319,0.200922548770905,0.111275129020214,-0.106103591620922,-0.048140700906515,-0.216465339064598));
res += mul(Get(s1,-dx,dy), float4x4(0.050902292132378,-0.080330237746239,-0.043803095817566,-0.208667188882828,0.046246107667685,-0.101370945572853,0.078085213899612,0.029450943693519,-0.143093094229698,-0.019950494170189,-0.148288026452065,-0.236475571990013,-0.259011805057526,-0.119162335991859,-0.103161305189133,-0.025714298710227));
res += mul(Get(s1,0,-dy), float4x4(0.077268064022064,-0.107487142086029,-0.044629313051701,-0.092978984117508,-0.040865600109100,0.017776206135750,0.099868670105934,0.118109077215195,-0.038494292646646,0.098368354141712,-0.020569100975990,-0.075755245983601,-0.035795506089926,0.009234608151019,0.119691304862499,-0.160018458962440));
res += mul(Get(s1,0,0), float4x4(-0.244058147072792,-0.031331840902567,-0.081812202930450,-0.052759729325771,0.053755410015583,-0.088936030864716,0.017044959589839,0.027219535782933,-0.028249477967620,0.177725255489349,0.040250618010759,0.166926831007004,-0.128294393420219,-0.121465399861336,-0.170100361108780,-0.239806652069092));
res += mul(Get(s1,0,dy), float4x4(-0.016109226271510,0.005832669790834,0.073934905230999,0.038905091583729,-0.130540177226067,0.106735289096832,0.072100885212421,-0.287694633007050,0.004160039592534,0.084675051271915,0.113996110856533,-0.148394927382469,-0.087323486804962,-0.001142715103924,0.027353866025805,-0.071378581225872));
res += mul(Get(s1,dx,-dy), float4x4(-0.011932726949453,-0.130710169672966,0.095380969345570,-0.072098471224308,-0.174985736608505,-0.163243725895882,0.176777958869934,0.053318031132221,0.263459533452988,-0.050765778869390,-0.255239576101303,-0.088488757610321,-0.032965898513794,-0.313503503799438,0.026716152206063,-0.048429626971483));
res += mul(Get(s1,dx,0), float4x4(0.044573433697224,0.129242524504662,-0.192031726241112,0.045425504446030,0.157118439674377,0.155151411890984,-0.105104096233845,-0.092863209545612,-0.126321583986282,0.082208082079887,-0.007711689919233,0.116221956908703,0.165579110383987,-0.091768726706505,-0.020018883049488,0.007855701260269));
res += mul(Get(s1,dx,dy), float4x4(0.053267423063517,-0.180819511413574,-0.067944459617138,-0.113539926707745,-0.084172286093235,-0.055746424943209,-0.167878687381744,0.228276759386063,-0.088623315095901,-0.054670523852110,0.133244872093201,0.235818088054657,-0.153128370642662,-0.014926316216588,0.110041864216328,-0.139587610960007));
res += mul(Get(s2,-dx,-dy), float4x4(-0.133695736527443,-0.038060110062361,0.044234618544579,-0.077971644699574,-0.032232623547316,0.070018284022808,-0.003382587805390,-0.053389780223370,0.071048766374588,0.108918070793152,-0.044070418924093,0.051775962114334,0.096328139305115,-0.104409947991371,-0.020938539877534,-0.211912155151367));
res += mul(Get(s2,-dx,0), float4x4(-0.150349542498589,-0.129127293825150,-0.006615740712732,-0.002430152613670,0.037077385932207,-0.037567928433418,0.063897021114826,-0.016664084047079,-0.061905827373266,-0.069485254585743,-0.124243892729282,-0.042618863284588,-0.226764068007469,-0.109997600317001,0.090291544795036,0.058648087084293));
res += mul(Get(s2,-dx,dy), float4x4(0.180393561720848,0.042683344334364,-0.083950743079185,0.055556703358889,0.030083805322647,0.049088027328253,0.163255512714386,-0.013048623688519,0.000260754401097,-0.292055875062943,0.139475241303444,-0.000840785447508,-0.064771525561810,-0.083343237638474,0.082047425210476,0.139037877321243));
res += mul(Get(s2,0,-dy), float4x4(-0.035505738109350,0.101768799126148,0.052373040467501,-0.067867912352085,0.043454568833113,-0.014300164766610,-0.043110303580761,-0.076419532299042,-0.040652919560671,-0.066227041184902,0.018920773640275,-0.068784430623055,0.090397678315639,0.061575047671795,0.024003542959690,-0.045870270580053));
res += mul(Get(s2,0,0), float4x4(-0.081873543560505,0.042594574391842,-0.164517685770988,0.020465517416596,0.188238799571991,-0.148809313774109,-0.182559415698051,-0.164238661527634,0.076775394380093,0.261216104030609,0.088412359356880,0.111232146620750,0.114691160619259,-0.050541736185551,0.021870538592339,0.256878763437271));
res += mul(Get(s2,0,dy), float4x4(0.079894743859768,-0.183882936835289,0.205359548330307,0.061018943786621,0.180670067667961,0.013542023487389,-0.168495297431946,0.115508809685707,0.016808385029435,0.093876786530018,0.324387103319168,-0.127536654472351,-0.188814744353294,0.016006156802177,-0.125263288617134,-0.229012474417686));
res += mul(Get(s2,dx,-dy), float4x4(0.103180877864361,-0.009502135217190,0.021018801257014,-0.019533602520823,0.083986848592758,0.100239023566246,0.170248761773109,0.198444709181786,-0.018871981650591,-0.109610997140408,-0.221048861742020,0.128831282258034,-0.051445826888084,0.121725261211395,0.069306269288063,0.052863538265228));
res += mul(Get(s2,dx,0), float4x4(0.123075999319553,-0.087141767144203,-0.085710719227791,-0.224207922816277,0.015238886699080,-0.139816686511040,0.180860713124275,0.132718086242676,-0.006622692104429,-0.034456793218851,-0.122109800577164,0.216453686356544,-0.008800956420600,-0.213981598615646,0.246910065412521,0.097290679812431));
res += mul(Get(s2,dx,dy), float4x4(0.041112367063761,-0.008110750466585,0.000955528172199,0.133628368377686,0.125465914607048,-0.098534792661667,-0.114072516560555,-0.023615997284651,-0.028882252052426,0.137780368328094,-0.088010981678963,-0.076354280114174,0.018519299104810,-0.118441753089428,0.139507234096527,0.004658964928240));
res += mul(Get(s3,-dx,-dy), float4x4(0.013127848505974,0.120440140366554,-0.118759788572788,0.052996192127466,0.160019785165787,0.010479801334441,-0.157198309898376,0.085571035742760,-0.126199245452881,0.158053591847420,-0.104178860783577,0.094960644841194,0.176318481564522,0.097193956375122,0.043620921671391,0.045509889721870));
res += mul(Get(s3,-dx,0), float4x4(-0.021298224106431,-0.100733235478401,0.139125257730484,0.226106166839600,0.054637059569359,-0.169271081686020,0.065687544643879,-0.193042874336243,-0.059219874441624,0.138804212212563,-0.017538841813803,-0.089650161564350,0.020182678475976,-0.029723359271884,-0.034128762781620,-0.198600918054581));
res += mul(Get(s3,-dx,dy), float4x4(-0.121269285678864,-0.133248314261436,0.056259717792273,0.025754818692803,0.138662531971931,0.083396829664707,0.065913848578930,-0.077967189252377,-0.150674834847450,-0.169263452291489,0.071346729993820,0.072370648384094,0.092033080756664,-0.122627958655357,0.099239528179169,-0.018723146989942));
res += mul(Get(s3,0,-dy), float4x4(-0.043616183102131,0.025339361280203,-0.082815878093243,-0.060564223676920,-0.029291586950421,-0.062512353062630,-0.098772890865803,0.079628191888332,0.012227904982865,-0.045390076935291,0.030164040625095,-0.144330322742462,-0.063010849058628,0.226775556802750,-0.071466244757175,-0.147183299064636));
res += mul(Get(s3,0,0), float4x4(-0.076501265168190,0.168834432959557,0.103056244552135,0.144481152296066,-0.050081167370081,0.018032271414995,-0.097537361085415,0.085354611277580,0.111313216388226,-0.175862282514572,-0.200557455420494,-0.095480598509312,-0.003491460345685,-0.064940467476845,0.017191601917148,-0.032643143087626));
res += mul(Get(s3,0,dy), float4x4(-0.162804082036018,0.077760539948940,-0.088485375046730,0.031328331679106,0.147034585475922,0.030311113223433,0.230104207992554,0.011806488968432,0.118250787258148,-0.022224437445402,-0.069292470812798,0.070234529674053,0.091979630291462,0.087208330631256,0.099782139062881,-0.010523356497288));
res += mul(Get(s3,dx,-dy), float4x4(0.098441734910011,-0.145491212606430,0.106399111449718,-0.038615364581347,0.074796646833420,0.077872559428215,-0.000850886979606,-0.162760347127914,-0.196903094649315,0.129870668053627,-0.098640479147434,-0.050145588815212,0.000156390306074,-0.038150992244482,0.021470854058862,0.054022978991270));
res += mul(Get(s3,dx,0), float4x4(0.055717408657074,0.073282413184643,-0.000587235495914,0.038038276135921,0.163700371980667,0.147181510925293,0.159273326396942,0.207552433013916,-0.133302524685860,-0.095136910676956,-0.132986932992935,-0.090365178883076,0.176572456955910,0.137547016143799,0.054641980677843,-0.091596506536007));
res += mul(Get(s3,dx,dy), float4x4(0.062705650925636,0.145403459668159,-0.018799273297191,0.161143749952316,-0.102637566626072,-0.080395519733429,-0.042840212583542,-0.102034293115139,-0.007290795911103,-0.204462379217148,-0.071183696389198,-0.244371399283409,0.031111784279346,-0.171801179647446,0.050942931324244,-0.027095166966319));
return max(float4(0,0,0,0), res);
}