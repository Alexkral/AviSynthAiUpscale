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
float4 res = float4(0.0722257196903229,0.0087686879560351,0.0184426009654999,0.0371876470744610);
res += mul(Get(s0,-dx,-dy), float4x4(-0.1786222159862518,0.0294657405465841,0.1054145395755768,-0.0283460486680269,-0.0181888453662395,-0.0976168215274811,-0.0684136375784874,-0.0820877626538277,-0.1066912040114403,0.0621361099183559,0.0270118266344070,0.0930910184979439,0.0666300356388092,0.0215574447065592,-0.0382015518844128,-0.0378837771713734));
res += mul(Get(s1,-dx,-dy), float4x4(-0.0861943066120148,0.0880235135555267,0.0367847308516502,0.0260981041938066,-0.0334387570619583,-0.0088354134932160,0.0185274314135313,0.1158883571624756,0.0290396865457296,0.0362023301422596,0.0095318853855133,0.0261294115334749,-0.0436831451952457,0.0053333267569542,0.0375018529593945,-0.0499955490231514));
res += mul(Get(s2,-dx,-dy), float4x4(0.0507969744503498,0.0126724271103740,-0.0858571231365204,-0.0103238942101598,0.0102025475353003,-0.0246131028980017,-0.0032012432347983,0.0385969467461109,0.0198643170297146,-0.0214581694453955,0.0017044247360900,0.0724181756377220,-0.0384175889194012,-0.0704429522156715,-0.0390266813337803,0.0345153808593750));
res += mul(Get(s3,-dx,-dy), float4x4(-0.0044307732023299,-0.0754916891455650,0.1077959612011909,-0.0778991207480431,0.1396520882844925,-0.0700518786907196,-0.1029933393001556,-0.0346773080527782,-0.1081095114350319,-0.0249563679099083,0.0133503749966621,0.0048562674783170,-0.1286328583955765,-0.1690587401390076,0.0062337010167539,-0.1879041790962219));
res += mul(Get(s4,-dx,-dy), float4x4(0.0691599845886230,-0.0090811830013990,-0.0150208650156856,0.1200697794556618,-0.0431608594954014,-0.0563224069774151,0.0326968096196651,-0.0629435777664185,-0.0559363961219788,0.0512209460139275,-0.0428806431591511,0.2963712811470032,-0.0194403436034918,0.0131192198023200,0.0393331833183765,-0.0287737417966127));
res += mul(Get(s5,-dx,-dy), float4x4(0.0225367657840252,-0.0111250001937151,-0.0244798511266708,-0.0710581690073013,-0.0262905769050121,-0.0560446456074715,0.0057368315756321,-0.0005558844422922,-0.0068775140680373,0.0039720251224935,0.0853915065526962,0.0770529359579086,0.0102153457701206,-0.0176965203136206,0.0001553903857712,0.0568696334958076));
res += mul(Get(s0,-dx,0), float4x4(-0.0764878839254379,0.1571141332387924,0.0375362634658813,0.1385130584239960,-0.0046331617049873,-0.0845356211066246,-0.1957033276557922,-0.0305616147816181,-0.1680540144443512,0.0557553470134735,-0.0196175333112478,0.0342768728733063,-0.1336386799812317,-0.0850365534424782,-0.1062909588217735,0.0036239307373762));
res += mul(Get(s1,-dx,0), float4x4(0.1275560259819031,-0.0322752259671688,-0.0225718896836042,-0.0936471000313759,0.1182096749544144,-0.0570236854255199,0.0048323888331652,-0.0603770501911640,0.0246012192219496,-0.0349373146891594,0.0454975403845310,0.2500060796737671,0.0151552520692348,0.0993473604321480,0.0972942560911179,-0.1290601789951324));
res += mul(Get(s2,-dx,0), float4x4(0.0906227305531502,0.0398403853178024,-0.1495976597070694,-0.0388412438333035,-0.0396690778434277,-0.0488370843231678,-0.0768396779894829,-0.0361009277403355,-0.1040805950760841,-0.0508609227836132,-0.1693803519010544,0.1335128843784332,0.0999119579792023,-0.0550885200500488,-0.0382024422287941,0.1256079077720642));
res += mul(Get(s3,-dx,0), float4x4(-0.0692133754491806,-0.3261761069297791,-0.1769052296876907,-0.2067152857780457,0.1832927167415619,0.0567720420658588,0.1060489341616631,0.2251470237970352,-0.0234982781112194,0.0907859131693840,-0.0838515758514404,0.0784714892506599,0.1227492764592171,0.2540576159954071,0.0380595959722996,-0.1412663757801056));
res += mul(Get(s4,-dx,0), float4x4(0.0187286771833897,-0.0621235184371471,-0.0377821773290634,-0.2067185044288635,-0.0314134396612644,-0.0744982063770294,0.0298845563083887,-0.0718835964798927,-0.1088161095976830,0.1528216004371643,0.0817144811153412,0.0821402519941330,-0.0108008878305554,0.0509075969457626,-0.0278712753206491,0.1140061989426613));
res += mul(Get(s5,-dx,0), float4x4(-0.0396511293947697,-0.0129649676382542,-0.0421718917787075,-0.0260107330977917,-0.0449158176779747,-0.1628543883562088,-0.1051288992166519,-0.0149927148595452,-0.0299911126494408,-0.1261548846960068,0.0209114737808704,0.0552359148859978,-0.0348511077463627,-0.1006291061639786,-0.0422547124326229,-0.0502644143998623));
res += mul(Get(s0,-dx,dy), float4x4(-0.0650478303432465,0.1239009946584702,0.0089983055368066,-0.0323327146470547,0.0589158870279789,0.0276258587837219,-0.0573096349835396,0.1594083160161972,-0.0964734852313995,0.0319652669131756,-0.0139027219265699,0.0517645590007305,0.0050929607823491,-0.0276785343885422,0.0537080392241478,0.0174033865332603));
res += mul(Get(s1,-dx,dy), float4x4(0.0527811609208584,-0.1052559167146683,0.0076619833707809,-0.0180573649704456,-0.0138677004724741,0.0097633814439178,0.0153093645349145,0.0121199321001768,-0.0398546792566776,-0.0543104484677315,-0.0421468131244183,0.0731272920966148,0.0722593069076538,0.0625000298023224,-0.0401749983429909,0.0902177393436432));
res += mul(Get(s2,-dx,dy), float4x4(-0.0851927027106285,-0.1340490281581879,-0.1183784902095795,0.0097558824345469,-0.0098551958799362,0.0003945897624362,0.0167184993624687,-0.0024059065617621,0.0252419561147690,-0.1043895632028580,-0.0787837877869606,0.0463302992284298,0.0127574615180492,0.0974948555231094,0.0232159104198217,0.0121535705402493));
res += mul(Get(s3,-dx,dy), float4x4(0.2347195595502853,0.0972751751542091,-0.1350675672292709,0.0846690386533737,0.0117869768291712,-0.0102229975163937,-0.0075231208465993,0.0242016837000847,-0.1494738310575485,0.0645908936858177,-0.0399185344576836,-0.0258485004305840,-0.1286644041538239,-0.0976314172148705,0.0021501628216356,0.0053678620606661));
res += mul(Get(s4,-dx,dy), float4x4(0.1054132953286171,0.1523799598217010,0.0151000991463661,0.0831947326660156,-0.0747189447283745,-0.0917166993021965,0.0365975648164749,-0.1180236265063286,0.0678524896502495,0.2011003494262695,0.0186252109706402,0.1210974082350731,-0.0028826023917645,0.0595912523567677,-0.0668535679578781,-0.0547366850078106));
res += mul(Get(s5,-dx,dy), float4x4(-0.0474673956632614,-0.0161382742226124,-0.0472093373537064,0.0007943195523694,-0.0027404795400798,0.0198572985827923,0.0077709062024951,-0.0394168384373188,0.0091220671311021,-0.0392998121678829,0.0045858859084547,0.0479484573006630,-0.0499770119786263,-0.0611013397574425,-0.0382109470665455,-0.0921667069196701));
res += mul(Get(s0,0,-dy), float4x4(0.0086862854659557,-0.1262030154466629,-0.0411783568561077,0.0102996667847037,0.0811912119388580,-0.0788731873035431,-0.0770399793982506,-0.1907695084810257,0.0394371785223484,0.0107398061081767,0.0819756016135216,0.1301702558994293,0.0170944686979055,-0.1355744004249573,0.0554662980139256,-0.1803832650184631));
res += mul(Get(s1,0,-dy), float4x4(0.0293351802974939,-0.0886725485324860,-0.0237225499004126,0.1065182015299797,0.0853909403085709,-0.0773920789361000,-0.1179609224200249,-0.0013438587775454,-0.0182418804615736,0.0751296952366829,-0.0385884083807468,0.0172849819064140,0.0855548083782196,-0.0617032088339329,-0.0355168879032135,-0.0134954983368516));
res += mul(Get(s2,0,-dy), float4x4(0.0970761254429817,-0.0219180453568697,0.0548554956912994,0.0496975816786289,0.0348667018115520,-0.0818051695823669,0.0929931998252869,0.0331952087581158,0.0502791889011860,0.1609867364168167,-0.0611692108213902,0.3603545725345612,0.0041254726238549,-0.0533189550042152,0.0706199258565903,0.0824585035443306));
res += mul(Get(s3,0,-dy), float4x4(0.0284072998911142,0.0580309070646763,-0.0012200553901494,-0.0199030712246895,0.0030184553470463,0.3654559552669525,0.0557970032095909,-0.0115872453898191,0.0267525445669889,0.0362381115555763,0.0275411196053028,-0.1361618638038635,0.1863477081060410,-0.2881012558937073,-0.2013205140829086,0.0202520266175270));
res += mul(Get(s4,0,-dy), float4x4(-0.0051382686942816,-0.0978917255997658,0.0456511080265045,0.1340850293636322,-0.0195968858897686,-0.1325428038835526,-0.0459251701831818,-0.0165856685489416,-0.0038753922563046,-0.0489450395107269,0.0913297683000565,-0.2651999890804291,0.0467170737683773,-0.2483631968498230,-0.0434257164597511,-0.1029138118028641));
res += mul(Get(s5,0,-dy), float4x4(-0.1028645783662796,-0.1055109500885010,-0.0490007884800434,-0.1240203082561493,0.0548424050211906,-0.1068688333034515,-0.0012806125450879,-0.0292929168790579,0.0339928306639194,-0.0610247999429703,-0.1634652763605118,-0.0771943554282188,-0.0519799366593361,-0.0893821492791176,-0.0072734076529741,-0.0472256503999233));
res += mul(Get(s0,0,0), float4x4(0.1604968309402466,-0.2006969004869461,-0.1165994405746460,-0.0713938325643539,0.0243898257613182,-0.1628155559301376,0.2504991888999939,0.1387039273977280,-0.0590870827436447,0.2120574712753296,0.0918917953968048,0.1408877670764923,-0.1681566387414932,0.1402303576469421,0.2482372969388962,0.1965928226709366));
res += mul(Get(s1,0,0), float4x4(0.0334883071482182,0.0316962450742722,-0.1502155512571335,0.1643892824649811,0.1588916033506393,0.1464093476533890,-0.1064167991280556,0.2879267632961273,0.0841783806681633,-0.2234296351671219,-0.0481820106506348,-0.3654403984546661,-0.0759734660387039,-0.0420302078127861,0.0961553603410721,-0.0353021882474422));
res += mul(Get(s2,0,0), float4x4(-0.1704744547605515,0.0907031595706940,0.0756340026855469,0.0567071326076984,-0.2259051054716110,0.0505737736821175,0.0297964904457331,0.0259373448789120,0.2688271105289459,0.0026850509457290,0.0727545097470284,-0.1326604634523392,0.1962903141975403,0.3349489867687225,0.2819069623947144,0.0135191017761827));
res += mul(Get(s3,0,0), float4x4(0.0566650554537773,-0.1290485560894012,0.5677256584167480,0.4648203253746033,-0.2544327378273010,0.0728017315268517,0.0143883284181356,0.2773990035057068,0.1829259097576141,0.1004250273108482,-0.1387238204479218,0.0846564471721649,-0.0147352721542120,-0.0873376727104187,0.3011237382888794,-0.0405215807259083));
res += mul(Get(s4,0,0), float4x4(-0.1422877609729767,0.1476564854383469,0.2073203474283218,0.2568274140357971,-0.0118056917563081,-0.1952797919511795,0.0454815737903118,0.1669232845306396,0.1318254917860031,-0.0889011099934578,0.1819278597831726,-0.4108058810234070,-0.4812685847282410,0.1530790179967880,-0.0437047891318798,0.1092493534088135));
res += mul(Get(s5,0,0), float4x4(-0.1484316140413284,-0.0062046269886196,0.0776777267456055,0.1346631646156311,-0.0340823605656624,0.2056766748428345,0.0050921305082738,0.1718042641878128,0.1646833419799805,-0.0256002452224493,-0.0171689279377460,-0.0027581418398768,0.0792887434363365,0.1117962971329689,-0.1618465483188629,-0.1337870657444000));
res += mul(Get(s0,0,dy), float4x4(-0.0336630158126354,-0.0491066724061966,0.1272902786731720,0.1232581511139870,0.1529346704483032,-0.0618959441781044,-0.1362034827470779,0.0270300917327404,0.0823314636945724,0.1803988665342331,0.0282957982271910,0.1146609410643578,0.2144157737493515,-0.1241012066602707,0.0207423940300941,-0.1088296547532082));
res += mul(Get(s1,0,dy), float4x4(0.0021273810416460,-0.0213898681104183,-0.0101099750027061,0.0784513279795647,-0.0834987461566925,-0.0404507666826248,0.0982369706034660,0.0685230344533920,-0.1389515250921249,-0.0568880327045918,-0.1301529705524445,-0.0764971151947975,-0.0779999941587448,0.0575880929827690,-0.0620630346238613,-0.1553223133087158));
res += mul(Get(s2,0,dy), float4x4(-0.0027182328049093,0.1344687789678574,0.1306833773851395,0.1019583269953728,-0.0696066915988922,-0.0445798896253109,0.0431386828422546,0.1180063039064407,-0.1875524073839188,-0.0643025338649750,0.0524999871850014,-0.1928424537181854,-0.0687429010868073,0.1413279771804810,0.0205251574516296,-0.1405525654554367));
res += mul(Get(s3,0,dy), float4x4(0.0583247207105160,0.1767901182174683,0.0274549182504416,0.1401962935924530,-0.1046995446085930,-0.0583890490233898,0.0040296786464751,0.0540872998535633,0.0070618935860693,-0.1028019860386848,-0.1814875155687332,-0.0512163974344730,0.0485097020864487,0.0228513907641172,-0.1582250893115997,0.1082829907536507));
res += mul(Get(s4,0,dy), float4x4(-0.0167756713926792,0.1323084682226181,-0.0269592646509409,-0.0959822237491608,0.2029844075441360,-0.0216404851526022,0.0253010354936123,-0.0333785302937031,0.0220845974981785,-0.0234013646841049,-0.0126673784106970,-0.0156226297840476,0.0364864729344845,0.0573451519012451,0.0351397916674614,-0.1702979207038879));
res += mul(Get(s5,0,dy), float4x4(0.1465096920728683,0.0780255123972893,0.1246092170476913,-0.1838525384664536,0.0131163466721773,0.0084113003686070,0.0204773377627134,-0.0379408076405525,-0.0424708798527718,0.0503847897052765,-0.0030201184563339,0.1036505550146103,0.0536601580679417,-0.0809104219079018,-0.1049416437745094,-0.0486754067242146));
res += mul(Get(s0,dx,-dy), float4x4(-0.0271483603864908,0.0806024223566055,-0.0909424200654030,-0.0613471455872059,-0.0705943554639816,0.0317933894693851,0.0255267415195704,-0.0475500412285328,0.0447748005390167,0.0496482476592064,0.0193032119423151,-0.0220019631087780,-0.0633366033434868,-0.0446884334087372,-0.0385157279670238,0.0034979474730790));
res += mul(Get(s1,dx,-dy), float4x4(-0.1011369600892067,0.0767392292618752,0.0577442273497581,-0.0037531359121203,0.1350883245468140,-0.0393627509474754,0.0744253620505333,0.0338605605065823,-0.0219668615609407,0.0262841247022152,0.0095358537510037,0.1338662058115005,-0.0154324267059565,-0.0069837444461882,0.0697206705808640,-0.0765345469117165));
res += mul(Get(s2,dx,-dy), float4x4(0.0348856896162033,-0.0039775031618774,-0.0136599810793996,0.0503022000193596,0.0003869524516631,-0.0068807359784842,-0.0478411950170994,-0.0411359146237373,0.0818078219890594,0.0283130705356598,0.0554496422410011,0.1649987697601318,-0.0294910296797752,-0.0440917648375034,0.0315000228583813,-0.0689810290932655));
res += mul(Get(s3,dx,-dy), float4x4(0.0234807319939137,-0.0670816302299500,-0.0036459085531533,-0.0060759317129850,0.1531031280755997,-0.1914235204458237,0.2285602986812592,0.1268496960401535,0.0571403130888939,-0.0260244756937027,-0.1418265551328659,-0.0878750607371330,0.0016188543522730,-0.1126658990979195,0.0377569198608398,-0.0234015528112650));
res += mul(Get(s4,dx,-dy), float4x4(-0.0039343736134470,0.0122305480763316,0.0974034965038300,-0.1765157282352448,-0.0183043740689754,-0.2352721840143204,-0.0255041997879744,-0.0962010174989700,-0.1854093372821808,-0.0042487713508308,0.0011143436422572,-0.1640479117631912,-0.0138712339103222,-0.0519847385585308,-0.0353867597877979,-0.0453696846961975));
res += mul(Get(s5,dx,-dy), float4x4(-0.0157379657030106,-0.0028074635192752,0.0732843279838562,0.0318602509796619,-0.1357863992452621,0.1791511923074722,-0.1000556126236916,-0.1381061375141144,0.0306401289999485,0.0551873818039894,0.0207138191908598,-0.1017945185303688,0.0059932554140687,-0.0341521538794041,0.0029796669259667,0.0377215221524239));
res += mul(Get(s0,dx,0), float4x4(0.1479986608028412,-0.1166947856545448,0.0439737550914288,-0.0869971141219139,-0.1209120526909828,0.0837520360946655,0.1114204227924347,-0.0815765261650085,0.0059029837138951,0.0739330723881721,-0.0963368192315102,0.0157122742384672,0.0093699898570776,0.0520458035171032,0.1272078901529312,0.1270053684711456));
res += mul(Get(s1,dx,0), float4x4(0.0212420672178268,0.1154787316918373,0.0300499089062214,-0.0616047680377960,0.0662397518754005,-0.1337071806192398,-0.0983592718839645,0.0665033608675003,0.0666037350893021,-0.3974740207195282,0.1040684208273888,-0.4144864380359650,-0.0236531738191843,0.0458029918372631,-0.0633121430873871,0.0626504868268967));
res += mul(Get(s2,dx,0), float4x4(0.0951542258262634,-0.1297102868556976,0.0481961481273174,-0.1160464212298393,0.1155160814523697,0.1918869912624359,0.1921524405479431,0.0593260936439037,0.2399034351110458,0.1153325363993645,0.0172561481595039,-0.0992131233215332,0.0572831928730011,-0.1482480168342590,0.0083569400012493,0.1753549873828888));
res += mul(Get(s3,dx,0), float4x4(-0.0170055255293846,0.1318231821060181,-0.0911086574196815,-0.0357636101543903,0.1312591135501862,-0.0342446230351925,0.0303849987685680,0.1240920498967171,0.0470534600317478,0.0216520875692368,0.0932395011186600,0.0463069453835487,-0.1750216931104660,0.1085242033004761,-0.0838976129889488,-0.1297541558742523));
res += mul(Get(s4,dx,0), float4x4(0.1081238240003586,0.0212380755692720,-0.1496191322803497,0.1037339791655540,-0.1003740727901459,-0.1914819777011871,0.0429757274687290,0.1690885871648788,0.3201442062854767,-0.1353921592235565,-0.0681113228201866,-0.2130818665027618,0.0322853513062000,-0.0154553903266788,0.0134502192959189,0.0798210576176643));
res += mul(Get(s5,dx,0), float4x4(0.0023253911640495,-0.0839043706655502,0.0632654950022697,-0.1295417398214340,-0.0812005624175072,0.0812524482607841,-0.1386815756559372,-0.1643793284893036,-0.0857323780655861,-0.1236092448234558,-0.0828844830393791,-0.0288538821041584,-0.0997186228632927,0.0740784034132957,0.0332226119935513,0.1571244150400162));
res += mul(Get(s0,dx,dy), float4x4(-0.0670588314533234,0.0272365603595972,-0.0270035080611706,-0.0820344537496567,0.0236713550984859,-0.0336537696421146,-0.0215059164911509,0.0347907915711403,0.1257859617471695,-0.0396946482360363,-0.0018471577204764,0.0244060698896646,0.0858754068613052,-0.0476126559078693,-0.0070866723544896,-0.1793892383575439));
res += mul(Get(s1,dx,dy), float4x4(0.0203439649194479,-0.0169359017163515,-0.0711167380213737,-0.0277176164090633,-0.0959231927990913,0.0342571884393692,0.0344267152249813,-0.0384973622858524,0.2473341822624207,0.1598297655582428,0.0373029857873917,-0.1855676174163818,-0.0921729207038879,-0.1037770509719849,-0.0718071535229683,0.0385726019740105));
res += mul(Get(s2,dx,dy), float4x4(0.1321329772472382,-0.0077618062496185,-0.0933042988181114,-0.0403685271739960,0.1018331721425056,0.0194843579083681,0.1355127692222595,-0.0137291941791773,-0.0581024363636971,-0.0803782939910889,-0.1672566086053848,0.0506444722414017,0.0205875840038061,0.0707173645496368,0.0254196487367153,0.0310651101171970));
res += mul(Get(s3,dx,dy), float4x4(-0.1366535574197769,0.0324222929775715,0.0258022174239159,-0.0079567739740014,0.0608660541474819,-0.0158452317118645,0.0715416073799133,0.0436743646860123,-0.0480650775134563,0.1329089254140854,-0.0692809969186783,-0.0730313658714294,0.1346657723188400,-0.0555185303092003,-0.0379299521446228,0.0079163275659084));
res += mul(Get(s4,dx,dy), float4x4(0.0495310835540295,-0.0183252338320017,0.0418561622500420,0.0289605949074030,0.2816915810108185,0.1631875038146973,0.1156610175967216,-0.0662442371249199,-0.0224702190607786,0.0400586724281311,-0.0273869019001722,0.0497390590608120,-0.0837423950433731,0.0696037039160728,0.0039654704742134,-0.0103006754070520));
res += mul(Get(s5,dx,dy), float4x4(0.1398110240697861,0.0442839935421944,0.0718289911746979,-0.0142911383882165,-0.3149627149105072,0.1126473397016525,-0.1536463201045990,0.0254228468984365,0.0345489755272865,-0.0543173216283321,-0.0701631978154182,-0.0894838273525238,-0.0489360764622688,0.0809760391712189,0.0440948233008385,0.0452559590339661));
res = max(float4(0, 0, 0, 0), res) + float4(1.0556316375732422,0.9657927751541138,2.6048257350921631,0.2059627622365952) * min(float4(0, 0, 0, 0), res);
return res;
}
