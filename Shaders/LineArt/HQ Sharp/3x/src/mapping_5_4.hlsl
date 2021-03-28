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
float4 res = float4(0.109356060624123,-0.208755865693092,-0.158927500247955,0.001155686797574);
res += mul(Get(s0,-dx,-dy), float4x4(-0.282812893390656,0.066824905574322,0.326983630657196,-0.088053785264492,-0.063417755067348,0.047937907278538,-0.044139847159386,-0.000863938708790,0.184249684214592,0.142407283186913,-0.039129886776209,0.038243591785431,-0.100057318806648,0.032655157148838,-0.039007887244225,0.112571924924850));
res += mul(Get(s0,-dx,0), float4x4(0.080286793410778,-0.163557663559914,0.267951428890228,-0.036526653915644,-0.140030816197395,-0.182833030819893,0.383381485939026,0.057393390685320,0.188219487667084,-0.024116270244122,-0.098006181418896,0.055425338447094,-0.051088690757751,-0.100599110126495,0.166265055537224,0.082981012761593));
res += mul(Get(s0,-dx,dy), float4x4(0.017694611102343,0.080343335866928,0.160043060779572,0.033848360180855,0.085827425122261,0.277150988578796,-0.144076555967331,-0.030348043888807,-0.097791291773319,0.009880089201033,0.036639362573624,0.039784912019968,-0.085483379662037,-0.203636273741722,0.103384196758270,0.131497904658318));
res += mul(Get(s0,0,-dy), float4x4(-0.005919212475419,-0.084408022463322,-0.008635217323899,-0.050761442631483,0.086456343531609,0.150256365537643,-0.006372982636094,-0.062036775052547,-0.045246843248606,-0.131186142563820,-0.143993631005287,0.000758553156629,-0.042107462882996,0.120058685541153,-0.153717845678329,-0.083052158355713));
res += mul(Get(s0,0,0), float4x4(0.389379620552063,0.016946267336607,0.010272623971105,-0.185223251581192,-0.148878186941147,-0.104171097278595,0.079459026455879,-0.180858761072159,0.111191146075726,-0.023721488192677,0.015832483768463,-0.145664617419243,0.164027184247971,0.079895928502083,-0.052736729383469,-0.141518652439117));
res += mul(Get(s0,0,dy), float4x4(-0.250849395990372,0.137963622808456,-0.170286774635315,-0.004482616670430,0.016271874308586,0.335076183080673,0.185049340128899,-0.217659428715706,0.107774280011654,0.016855156049132,-0.172263056039810,-0.017780356109142,0.064802132546902,-0.190439447760582,-0.109821557998657,0.085179306566715));
res += mul(Get(s0,dx,-dy), float4x4(-0.080977447330952,-0.164185687899590,0.100683808326721,-0.005301882978529,0.085023641586304,-0.086480878293514,0.037925567477942,0.017967123538256,0.048713196069002,-0.112420864403248,0.011328739114106,-0.018178904429078,-0.176318481564522,0.061717126518488,-0.170628309249878,-0.016409296542406));
res += mul(Get(s0,dx,0), float4x4(0.481886804103851,0.043065153062344,-0.034468099474907,-0.078588977456093,-0.172445878386497,-0.002803937764838,0.166319221258163,0.032822392880917,0.511093258857727,-0.012238176539540,-0.011762456037104,-0.004268636461347,-0.295905470848083,0.047939363867044,-0.202809378504753,0.018413700163364));
res += mul(Get(s0,dx,dy), float4x4(-0.243603169918060,-0.079657986760139,-0.139952346682549,-0.074660174548626,0.125759735703468,-0.022902010008693,0.130702644586563,-0.053059250116348,-0.182932958006859,-0.094956658780575,0.020797938108444,0.080534540116787,-0.355869412422180,-0.038577344268560,-0.156938999891281,0.164002329111099));
res += mul(Get(s1,-dx,-dy), float4x4(0.068683288991451,-0.073373936116695,0.200088575482368,0.050048351287842,-0.023915177211165,-0.073895588517189,-0.067205473780632,-0.044818591326475,0.110773868858814,0.017987251281738,0.070148341357708,0.030862482264638,-0.081224970519543,0.024224888533354,0.053277976810932,-0.048872027546167));
res += mul(Get(s1,-dx,0), float4x4(-0.171793326735497,-0.155475512146950,0.049992281943560,-0.099872954189777,-0.080198049545288,0.036984845995903,-0.008799199946225,-0.101212695240974,0.033657699823380,0.141719058156013,0.239511415362358,-0.260730266571045,-0.025674544274807,0.172629162669182,-0.035763405263424,-0.031968206167221));
res += mul(Get(s1,-dx,dy), float4x4(0.099108934402466,0.084339588880539,0.038956411182880,0.001416560844518,-0.010806355625391,0.114524096250534,-0.046971399337053,0.014823931269348,-0.066333644092083,0.172650545835495,-0.003346252255142,-0.112784653902054,0.013565773144364,0.190666556358337,0.059628155082464,-0.046117942780256));
res += mul(Get(s1,0,-dy), float4x4(0.009592581540346,-0.221162259578705,-0.054278545081615,-0.138632833957672,-0.101906441152096,0.036343943327665,-0.240619599819183,0.087604708969593,0.270566254854202,0.031380608677864,-0.015829781070352,-0.281634449958801,-0.004770055413246,0.031670309603214,0.003309404477477,0.029758865013719));
res += mul(Get(s1,0,0), float4x4(-0.258963286876678,-0.222204595804214,0.087346173822880,0.007460853084922,-0.243102893233299,0.015892695635557,0.082255303859711,-0.099721617996693,-0.021253736689687,-0.452170640230179,-0.245269030332565,0.698061466217041,-0.328329473733902,0.191004887223244,-0.519704401493073,0.404595553874969));
res += mul(Get(s1,0,dy), float4x4(-0.011441784910858,0.142542794346809,0.100352726876736,0.017582710832357,-0.082456573843956,-0.012509464286268,-0.014410761184990,-0.012895525433123,-0.118884921073914,0.274443686008453,-0.015229266136885,-0.062987826764584,0.047260299324989,0.284124076366425,0.145673200488091,-0.109284974634647));
res += mul(Get(s1,dx,-dy), float4x4(0.031850524246693,-0.100374005734921,-0.002540336223319,0.045082692056894,-0.152956679463387,-0.016308102756739,-0.001885979203507,0.043485149741173,-0.083749696612358,0.100790977478027,0.164931267499924,-0.164893358945847,-0.017745912075043,-0.012486930936575,-0.189762070775032,-0.095053844153881));
res += mul(Get(s1,dx,0), float4x4(-0.135205715894699,0.054293744266033,-0.028873419389129,-0.050673969089985,-0.133459433913231,0.122021630406380,-0.008333280682564,-0.053197126835585,-0.153238981962204,-0.167537018656731,-0.099205508828163,-0.045301031321287,-0.167889133095741,-0.081229224801064,-0.083853587508202,-0.190727993845940));
res += mul(Get(s1,dx,dy), float4x4(0.280992239713669,0.198971733450890,0.011252989992499,-0.075997941195965,-0.070485949516296,-0.005632845219225,-0.005543296225369,0.024490253999829,-0.041936267167330,0.015435831621289,-0.092521838843822,0.062051415443420,-0.005285191815346,-0.118506312370300,0.003314433852211,-0.028896536678076));
res += mul(Get(s2,-dx,-dy), float4x4(0.155827522277832,-0.112196363508701,0.054096326231956,-0.079111814498901,0.353411883115768,-0.098288126289845,0.118750654160976,-0.064039714634418,-0.396803706884384,0.047189176082611,-0.023828225210309,0.032229244709015,-0.369290322065353,0.015501019544899,-0.008370175957680,0.027210675179958));
res += mul(Get(s2,-dx,0), float4x4(-0.043364197015762,-0.088246621191502,0.023268366232514,0.332615226507187,-0.132965818047523,0.020825944840908,0.070671856403351,0.014822497032583,-0.237848445773125,-0.131278470158577,-0.133383587002754,-0.086259141564369,-0.207382321357727,-0.016820440068841,0.260691016912460,-0.105159565806389));
res += mul(Get(s2,-dx,dy), float4x4(-0.033895898610353,0.132228732109070,0.152852624654770,-0.018201095983386,0.126593813300133,-0.166443854570389,0.049571890383959,-0.002488966332749,-0.364059835672379,-0.126885890960693,0.052603226155043,-0.062357928603888,0.139051347970963,0.057213012129068,-0.084572315216064,-0.014165753498673));
res += mul(Get(s2,0,-dy), float4x4(0.353217989206314,-0.110460601747036,-0.235352352261543,-0.146552547812462,-0.032119534909725,0.145328342914581,-0.076093591749668,-0.007044877856970,-0.246406957507133,0.071898780763149,-0.035768590867519,-0.171003311872482,-0.264665752649307,-0.024551808834076,-0.101267531514168,0.262554615736008));
res += mul(Get(s2,0,0), float4x4(0.245018139481544,0.015568649396300,0.116765610873699,-0.089632838964462,-0.318513303995132,0.083992399275303,-0.009346282109618,0.074077434837818,0.304202377796173,0.021101946011186,-0.040354002267122,0.190150842070580,0.200977265834808,-0.030042614787817,-0.123132012784481,0.137194186449051));
res += mul(Get(s2,0,dy), float4x4(-0.018413867801428,0.048010487109423,0.000715364876669,-0.045519914478064,0.054175551980734,-0.103031709790230,-0.040418125689030,-0.022499980404973,-0.162417426705360,-0.160145521163940,-0.084325157105923,0.180629849433899,0.152997776865959,0.228453338146210,0.132173314690590,-0.175406590104103));
res += mul(Get(s2,dx,-dy), float4x4(-0.010014241561294,0.064828500151634,0.117673136293888,0.013423137366772,0.027145696803927,-0.016247587278485,-0.034648261964321,-0.209012374281883,-0.412134438753128,-0.031298391520977,-0.086025439202785,0.022821053862572,-0.044783938676119,-0.031405225396156,0.118655130267143,-0.036905083805323));
res += mul(Get(s2,dx,0), float4x4(-0.188045129179955,0.022924950346351,0.042996898293495,-0.144548073410988,0.233842879533768,-0.213182106614113,0.095889627933502,0.081341229379177,-0.196046903729439,0.024077752605081,-0.171225756406784,0.068088330328465,0.321827322244644,-0.110797822475433,-0.083700858056545,0.074875906109810));
res += mul(Get(s2,dx,dy), float4x4(0.024048959836364,0.018840728327632,0.066363878548145,0.031724337488413,0.191443830728531,0.009856574237347,0.017524223774672,-0.002213350962847,-0.222404628992081,-0.060888186097145,-0.083718828856945,0.049441415816545,0.191517427563667,-0.149282738566399,0.078444413840771,-0.025319620966911));
res += mul(Get(s3,-dx,-dy), float4x4(0.059152700006962,0.063578501343727,-0.153166636824608,-0.073413841426373,-0.086433149874210,0.083952188491821,0.198974415659904,-0.100054822862148,-0.005960898473859,-0.064375914633274,-0.180726185441017,0.192310079932213,0.122126355767250,-0.018601467832923,-0.209429368376732,0.028678020462394));
res += mul(Get(s3,-dx,0), float4x4(0.345298200845718,-0.109067633748055,-0.206897661089897,-0.025966381654143,-0.051396563649178,0.039449252188206,0.276234388351440,-0.103272631764412,0.048516664654016,0.092471279203892,0.236964747309685,-0.019114147871733,-0.006152708083391,0.197646409273148,-0.038838125765324,0.043441280722618));
res += mul(Get(s3,-dx,dy), float4x4(0.100135751068592,-0.050240635871887,-0.031444948166609,0.002667712979019,0.201645836234093,0.225782230496407,0.212962657213211,-0.097975187003613,-0.198598548769951,0.078977115452290,0.046209149062634,-0.110213525593281,-0.123634718358517,0.016524463891983,-0.047306481748819,0.027226693928242));
res += mul(Get(s3,0,-dy), float4x4(0.108330868184566,-0.100842580199242,-0.349499195814133,0.004237541463226,-0.102521225810051,0.089258998632431,0.242451265454292,-0.037786893546581,-0.240478783845901,-0.124300152063370,-0.045040730386972,0.103816606104374,-0.157718420028687,0.123455420136452,-0.041319649666548,-0.059150863438845));
res += mul(Get(s3,0,0), float4x4(-0.170849353075027,-0.218602702021599,-0.274415493011475,0.172936290502548,-0.017824318259954,-0.166390061378479,0.098112709820271,0.149051055312157,-0.465686589479446,-0.012180152349174,0.104275882244110,0.003405794501305,-0.324583828449249,-0.147108733654022,0.148844644427299,-0.023787733167410));
res += mul(Get(s3,0,dy), float4x4(-0.266619831323624,0.137206450104713,-0.030968723818660,0.093050025403500,0.152368947863579,0.055897247046232,0.212382838129997,-0.022694027051330,0.015011671930552,-0.139034599065781,0.047288503497839,-0.051798049360514,0.058172672986984,-0.045624002814293,-0.073665894567966,-0.017580322921276));
res += mul(Get(s3,dx,-dy), float4x4(-0.086834855377674,0.005063448101282,-0.081973612308502,0.062815032899380,0.133193880319595,0.006335846614093,0.019459014758468,-0.003550072899088,-0.090369544923306,-0.063782751560211,0.032619960606098,0.047605916857719,-0.087989665567875,0.040844306349754,0.301931440830231,-0.018065715208650));
res += mul(Get(s3,dx,0), float4x4(0.032649792730808,0.048288531601429,0.106478504836559,-0.301305800676346,-0.121317632496357,-0.017856251448393,0.013152896426618,0.096443913877010,0.188128978013992,-0.153439387679100,0.025081017985940,-0.026871753856540,-0.366604179143906,0.033580414950848,0.055686492472887,-0.029840651899576));
res += mul(Get(s3,dx,dy), float4x4(0.142598301172256,-0.199085846543312,0.049427919089794,0.068734779953957,0.178914621472359,0.120921313762665,0.116800002753735,-0.041950713843107,-0.092501759529114,-0.001415893668309,-0.103219121694565,0.058007404208183,0.250615030527115,0.106835909187794,-0.006696134805679,-0.032001286745071));
res += mul(Get(s4,-dx,-dy), float4x4(-0.251242130994797,0.058550383895636,-0.084864467382431,-0.006696312688291,-0.371373921632767,-0.008441650308669,-0.388467311859131,0.001981755252928,0.050084464251995,-0.099724583327770,-0.107119075953960,-0.007374852430075,0.208390235900879,-0.004112965427339,0.046410217881203,-0.155396983027458));
res += mul(Get(s4,-dx,0), float4x4(-0.019382216036320,-0.161603391170502,0.164751738309860,0.033980138599873,-0.102324508130550,-0.133282467722893,0.001567875151522,-0.037666041404009,-0.184733361005783,0.028477195650339,-0.161591574549675,-0.012328146025538,0.021980606019497,0.042167659848928,0.038683187216520,-0.113228127360344));
res += mul(Get(s4,-dx,dy), float4x4(-0.289358764886856,-0.194308593869209,0.176368355751038,0.084359996020794,0.073203116655350,0.119793422520161,-0.024240344762802,-0.217859506607056,0.071235992014408,0.137659490108490,-0.018796050921082,-0.072747059166431,0.072553969919682,-0.055116031318903,-0.092538952827454,-0.027258345857263));
res += mul(Get(s4,0,-dy), float4x4(0.044736936688423,-0.060314554721117,0.046271204948425,-0.305549860000610,0.036014217883348,0.035963814705610,-0.184155225753784,-0.049709588289261,-0.102530837059021,0.038791939616203,-0.453985422849655,0.046858839690685,-0.322751075029373,0.195661336183548,-0.062741428613663,-0.223081856966019));
res += mul(Get(s4,0,0), float4x4(-0.391371726989746,-0.376723885536194,-0.439925789833069,-0.023003360256553,0.237134009599686,-0.029202131554484,0.221418872475624,0.213094040751457,0.048543587327003,-0.270666658878326,-0.426597923040390,-0.104350402951241,-0.366622567176819,-0.205934032797813,-0.059559535235167,-0.087522126734257));
res += mul(Get(s4,0,dy), float4x4(-0.582047462463379,-0.045063920319080,0.041967190802097,0.096423678100109,0.296691268682480,0.004447639919817,0.044186424463987,-0.136843189597130,0.393356114625931,-0.050105411559343,-0.215979412198067,-0.116099111735821,-0.095677331089973,-0.032373737543821,-0.046948354691267,-0.005010463763028));
res += mul(Get(s4,dx,-dy), float4x4(-0.079397298395634,0.058199610561132,0.043290529400110,-0.050733081996441,-0.160139352083206,-0.036095026880503,-0.006350926589221,-0.097839497029781,-0.109501875936985,-0.024587189778686,-0.150769010186195,-0.020716583356261,-0.117667630314827,-0.003585500875488,-0.138644382357597,-0.006487730424851));
res += mul(Get(s4,dx,0), float4x4(0.266880333423615,-0.005980185698718,0.286427021026611,0.038251820951700,0.059045601636171,0.025985671207309,0.139224722981453,-0.062573865056038,0.200594350695610,0.039587724953890,-0.120240904390812,-0.035034347325563,-0.040906030684710,0.089466564357281,-0.070505686104298,0.013609106652439));
res += mul(Get(s4,dx,dy), float4x4(0.199121952056885,-0.001820370205678,0.166885375976563,0.036025557667017,-0.062542654573917,-0.110426232218742,0.151682823896408,-0.009042683057487,0.363756537437439,0.031159151345491,-0.043190047144890,-0.045712597668171,0.094907745718956,0.080358020961285,-0.000141930810059,-0.003366342745721));
res += mul(Get(s5,-dx,-dy), float4x4(-0.334546864032745,-0.049420684576035,0.273774981498718,-0.320562064647675,0.171516045928001,0.094499699771404,0.216749384999275,0.108835518360138,-0.150796726346016,-0.048430819064379,-0.052522227168083,-0.005673422012478,0.020900195464492,0.037355683743954,-0.146220788359642,0.143103361129761));
res += mul(Get(s5,-dx,0), float4x4(-0.075655624270439,0.164986342191696,0.100050076842308,-0.271685063838959,-0.110879652202129,-0.032167624682188,0.128006994724274,0.041209317743778,-0.486835330724716,0.091929867863655,-0.222658812999725,0.034281183034182,0.048325996845961,0.171167656779289,-0.273069083690643,-0.379212647676468));
res += mul(Get(s5,-dx,dy), float4x4(-0.111687608063221,-0.028101997449994,0.034153852611780,0.028796309605241,-0.206323951482773,0.073292799293995,-0.156896263360977,0.011132239364088,-0.173429518938065,0.059660676866770,0.123657338321209,-0.036100972443819,-0.088873796164989,-0.341402709484100,-0.005798870697618,-0.027510516345501));
res += mul(Get(s5,0,-dy), float4x4(-0.050816893577576,-0.029823817312717,-0.133117586374283,-0.275469630956650,-0.219659969210625,0.040737032890320,-0.115981698036194,0.165533438324928,-0.121828317642212,0.068973369896412,0.029258422553539,-0.304276525974274,0.042851738631725,0.075874537229538,0.260798245668411,0.269384324550629));
res += mul(Get(s5,0,0), float4x4(0.071071922779083,-0.045760817825794,-0.031454421579838,-0.175620466470718,-0.054596818983555,-0.047091517597437,0.109191365540028,-0.101208485662937,0.212427049875259,-0.085444316267967,0.246861577033997,-0.202551424503326,-0.117913894355297,0.281739532947540,0.098346769809723,-0.614980518817902));
res += mul(Get(s5,0,dy), float4x4(0.168513536453247,0.020197458565235,-0.022141607478261,0.076622024178505,-0.013361127115786,-0.137190759181976,-0.036276146769524,-0.155883505940437,-0.006482508033514,-0.153411254286766,0.052617751061916,-0.017773805186152,0.022807484492660,-0.339668631553650,-0.103291630744934,0.285119086503983));
res += mul(Get(s5,dx,-dy), float4x4(-0.137074425816536,-0.017744911834598,-0.042186636477709,0.052819412201643,0.318540215492249,-0.094873964786530,0.080990694463253,0.009419165551662,-0.033954378217459,0.050060030072927,-0.015099261887372,-0.023403102532029,0.004734591115266,0.090114623308182,0.020173942670226,0.155867844820023));
res += mul(Get(s5,dx,0), float4x4(0.037940051406622,-0.029638119041920,-0.100784033536911,-0.052438914775848,0.196464255452156,0.057093970477581,0.134264379739761,-0.125563457608223,0.033968422561884,0.015690669417381,0.020116033032537,-0.024287013337016,0.184392407536507,0.111161723732948,0.134271070361137,-0.046856183558702));
res += mul(Get(s5,dx,dy), float4x4(-0.020915150642395,0.023642020300031,-0.024558076635003,0.084511063992977,0.159051343798637,-0.134709477424622,0.187977805733681,-0.083008937537670,-0.030775934457779,-0.038065984845161,0.002761357929558,-0.007531329989433,0.025497144088149,-0.127164050936699,0.087364062666893,-0.025664102286100));
res = max(float4(0, 0, 0, 0), res) + float4(0.067219354212284,0.036266285926104,-0.053934369236231,0.878003180027008) * min(float4(0, 0, 0, 0), res);
return res;
}
