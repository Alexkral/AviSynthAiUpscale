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
float4 res = float4(0.113163694739342,0.182520002126694,-0.205848664045334,0.050862945616245);
res += mul(Get(s0,-dx,-dy), float4x4(0.142507791519165,0.051389802247286,0.162920519709587,-0.028415346518159,0.037583757191896,0.128463104367256,0.135399073362350,-0.081550151109695,-0.216245159506798,-0.039432752877474,0.017275635153055,-0.127564087510109,-0.052993483841419,0.152862608432770,-0.117246948182583,0.103999532759190));
res += mul(Get(s0,-dx,0), float4x4(-0.117637157440186,-0.097745887935162,0.178494125604630,0.037432271987200,-0.147195070981979,0.015883754938841,0.253173798322678,-0.045966051518917,0.208170905709267,0.128478705883026,0.117526695132256,0.171153157949448,0.227202340960503,-0.399161189794540,0.042468134313822,0.061031948775053));
res += mul(Get(s0,-dx,dy), float4x4(-0.014869225211442,-0.101507738232613,0.015750460326672,0.000820572895464,-0.095822930335999,-0.094203986227512,0.272961258888245,-0.106790877878666,-0.060082342475653,0.194405272603035,0.179347813129425,0.026177898049355,-0.022466478869319,0.065693497657776,-0.125976964831352,0.039957974106073));
res += mul(Get(s0,0,-dy), float4x4(0.207417890429497,-0.072040513157845,-0.080873489379883,-0.221322298049927,0.022503556683660,-0.201954245567322,0.082817196846008,-0.234075441956520,-0.288097590208054,-0.101319745182991,0.089401207864285,-0.133793994784355,0.056441858410835,-0.092792585492134,-0.022648656740785,0.038746319711208));
res += mul(Get(s0,0,0), float4x4(-0.333279192447662,-0.333817273378372,0.168842941522598,0.160600304603577,-0.306945621967316,0.017335714772344,-0.014242139644921,-0.003993272315711,0.227336809039116,0.119899764657021,-0.260719209909439,0.169764414429665,0.194175213575363,0.030021196231246,0.039520271122456,-0.074765726923943));
res += mul(Get(s0,0,dy), float4x4(-0.039337217807770,-0.136460095643997,0.137295499444008,-0.002473324770108,0.123119942843914,-0.089957043528557,0.084427453577518,0.047334376722574,0.113586239516735,0.147630512714386,-0.254942178726196,0.100800976157188,0.029335612431169,-0.037701640278101,-0.005496841389686,-0.259300619363785));
res += mul(Get(s0,dx,-dy), float4x4(0.044086731970310,-0.147554680705070,0.072704739868641,0.101839967072010,0.032256599515676,-0.069258339703083,0.124301992356777,-0.102886475622654,-0.200552701950073,0.076020538806915,0.026112936437130,-0.136589094996452,-0.011500799097121,-0.112957999110222,-0.057608004659414,0.050745408982038));
res += mul(Get(s0,dx,0), float4x4(0.063201203942299,-0.161677256226540,-0.067728310823441,-0.006189151201397,-0.125697255134583,-0.180139020085335,0.176171407103539,0.293624311685562,-0.135672062635422,-0.153570502996445,0.172534182667732,-0.009397404268384,-0.175420537590981,0.123698718845844,0.067103251814842,0.024562871083617));
res += mul(Get(s0,dx,dy), float4x4(0.068519860506058,0.063142113387585,-0.097103290259838,-0.017842656001449,0.077783219516277,0.018908744677901,0.067613199353218,-0.044968217611313,0.076695270836353,-0.451528280973434,0.047031275928020,0.026544231921434,0.034379586577415,0.038853920996189,0.069210864603519,-0.011984348297119));
res += mul(Get(s1,-dx,-dy), float4x4(-0.071553185582161,0.049681454896927,-0.067373685538769,-0.149277865886688,0.001062919269316,-0.060154411941767,-0.015328068286180,0.024274587631226,-0.123057164251804,0.175723269581795,0.096186645328999,-0.151082247495651,0.036795731633902,0.021348264068365,-0.015006448142231,-0.061796940863132));
res += mul(Get(s1,-dx,0), float4x4(-0.107541650533676,0.273435801267624,-0.053789492696524,-0.033755440264940,-0.260011047124863,0.523672580718994,-0.161585643887520,0.157742559909821,-0.015503342263401,-0.007767575792968,0.102551206946373,-0.056197274476290,0.149542704224586,-0.093310095369816,0.121714428067207,-0.079770080745220));
res += mul(Get(s1,-dx,dy), float4x4(-0.034914512187243,0.035998634994030,-0.054077867418528,-0.029445614665747,0.022772561758757,0.140751019120216,-0.179568290710449,-0.277910470962524,0.023547811433673,0.008582337759435,-0.028019454330206,-0.001773972529918,-0.073411323130131,0.045364018529654,0.066917933523655,0.118224009871483));
res += mul(Get(s1,0,-dy), float4x4(-0.132976323366165,0.254454344511032,-0.055690187960863,-0.335880368947983,-0.084858253598213,-0.096835948526859,-0.025644131004810,0.121150702238083,-0.107597827911377,0.088025361299515,0.259150564670563,-0.477829724550247,-0.102368049323559,0.064137369394302,0.100338645279408,-0.047566000372171));
res += mul(Get(s1,0,0), float4x4(-0.253292351961136,-0.798740744590759,0.825856387615204,0.533208549022675,0.112230867147446,-0.072703503072262,-0.146907448768616,0.001527442713268,0.180738791823387,-0.054023087024689,0.084735356271267,-0.319318801164627,-0.204412698745728,-0.148061066865921,0.130329787731171,0.451751679182053));
res += mul(Get(s1,0,dy), float4x4(-0.088182702660561,0.016566943377256,0.093640819191933,0.068087168037891,0.090968303382397,-0.211730763316154,0.006373261101544,-0.334873944520950,0.076090246438980,0.099882721900940,-0.109924606978893,0.092592388391495,-0.325683772563934,-0.318281590938568,0.253022402524948,0.024533389136195));
res += mul(Get(s1,dx,-dy), float4x4(0.115829274058342,-0.064693935215473,0.020994247868657,0.044238287955523,-0.146467283368111,-0.097441151738167,0.062408141791821,-0.084284760057926,0.268770456314087,0.003619899507612,-0.059106379747391,-0.052623860538006,0.000664322054945,-0.027593702077866,-0.006430048495531,-0.059611499309540));
res += mul(Get(s1,dx,0), float4x4(0.132840648293495,0.074719235301018,-0.127683833241463,0.057286214083433,-0.008937122300267,-0.009013052098453,-0.099487319588661,0.065935567021370,0.197654381394386,0.057397734373808,0.077602952718735,-0.111775279045105,0.123694822192192,-0.175557285547256,-0.024136966094375,-0.180124238133430));
res += mul(Get(s1,dx,dy), float4x4(-0.031665235757828,0.078578956425190,-0.116496317088604,0.163452491164207,0.145953103899956,-0.073387227952480,0.064817912876606,-0.157143846154213,-0.002849236829206,0.012652019970119,0.023141752928495,-0.121603555977345,0.171873703598976,-0.019572038203478,0.102753788232803,-0.020847590640187));
res += mul(Get(s2,-dx,-dy), float4x4(0.022237284108996,0.081413626670837,0.034752406179905,-0.078265860676765,0.097649663686752,0.021748594939709,0.171004861593246,0.174723163247108,0.052098840475082,-0.163842156529427,0.109077915549278,-0.007154216989875,0.121898889541626,-0.046008698642254,-0.021789235994220,0.030221393331885));
res += mul(Get(s2,-dx,0), float4x4(-0.117900155484676,0.023721110075712,-0.215107575058937,-0.033673021942377,-0.223417177796364,0.060499306768179,0.226457476615906,0.208753228187561,-0.053252834826708,-0.055650219321251,-0.125915184617043,0.161202132701874,-0.193550646305084,0.026160074397922,0.015077206306159,-0.125721186399460));
res += mul(Get(s2,-dx,dy), float4x4(0.054670929908752,-0.138807877898216,-0.078766457736492,0.008545402437449,-0.098746351897717,0.129369482398033,0.232128307223320,0.196486845612526,-0.128819361329079,0.150501161813736,-0.071621373295784,-0.112871445715427,-0.040628623217344,0.092337764799595,0.039215978235006,0.020147306844592));
res += mul(Get(s2,0,-dy), float4x4(-0.013944971375167,-0.179380208253860,-0.020544782280922,0.111530579626560,0.185873582959175,0.021516950801015,0.057718075811863,0.447223424911499,0.090546675026417,0.082414723932743,0.085453450679779,-0.008169770240784,-0.010501067154109,0.402107656002045,-0.333008170127869,0.149539753794670));
res += mul(Get(s2,0,0), float4x4(-0.298982352018356,0.153686702251434,0.145597502589226,0.149497181177139,-0.233430966734886,-0.173296183347702,0.145018935203552,-0.228092402219772,-0.083671696484089,-0.164775490760803,0.310305327177048,-0.019126746803522,0.176918938755989,-0.107287876307964,0.164951726794243,-0.243877679109573));
res += mul(Get(s2,0,dy), float4x4(-0.155906796455383,-0.057466264814138,0.153217822313309,-0.058245170861483,-0.352469563484192,-0.390673130750656,0.027203496545553,0.417463868856430,0.117703281342983,-0.221552670001984,-0.199738755822182,-0.211279079318047,-0.193369537591934,0.151024758815765,0.012378559447825,0.117611072957516));
res += mul(Get(s2,dx,-dy), float4x4(-0.020054075866938,0.091398037970066,0.032078783959150,0.101964585483074,0.297395616769791,-0.066673129796982,-0.033485781401396,0.282728552818298,0.044016916304827,-0.048701968044043,-0.025520347058773,-0.071124799549580,0.204337790608406,0.106405325233936,-0.021118609234691,-0.145560979843140));
res += mul(Get(s2,dx,0), float4x4(-0.140984356403351,-0.196971818804741,-0.138818323612213,0.148210510611534,-0.089509025216103,-0.086520671844482,0.138311550021172,0.260781049728394,0.115724988281727,-0.019353518262506,0.040968239307404,-0.045705672353506,-0.157967641949654,-0.183290332555771,0.051056530326605,0.123853936791420));
res += mul(Get(s2,dx,dy), float4x4(0.122058041393757,-0.243861824274063,-0.138043090701103,0.062042668461800,-0.032536614686251,0.044356111437082,0.106386199593544,0.282400578260422,-0.069671839475632,-0.050066407769918,0.107831545174122,0.056202087551355,-0.137015759944916,0.121617406606674,0.037333302199841,-0.007534766104072));
res += mul(Get(s3,-dx,-dy), float4x4(0.111135087907314,0.146467462182045,-0.113568477332592,0.121028609573841,-0.070274718105793,-0.171933293342590,0.103731244802475,-0.065631821751595,-0.079799450933933,-0.237236380577087,-0.009779732674360,-0.261068880558014,0.053570549935102,0.015626497566700,0.102149993181229,-0.180541694164276));
res += mul(Get(s3,-dx,0), float4x4(0.033723335713148,-0.026785628870130,-0.085033684968948,-0.092760913074017,0.062109611928463,-0.129686117172241,-0.118701219558716,0.058798331767321,-0.261250615119934,-0.078136913478374,-0.036576993763447,-0.228185907006264,-0.039653033018112,-0.007373257074505,0.163024157285690,-0.168229147791862));
res += mul(Get(s3,-dx,dy), float4x4(-0.011916981078684,-0.040062874555588,0.078775085508823,0.057204347103834,0.024957155808806,0.124958865344524,-0.141274541616440,0.017124883830547,-0.153502106666565,0.169138342142105,0.077392533421516,-0.160270214080811,0.074335247278214,-0.058211464434862,0.068601660430431,-0.191684454679489));
res += mul(Get(s3,0,-dy), float4x4(0.107109278440475,0.281362086534500,-0.193274721503258,0.362888425588608,0.122488357126713,0.011917507275939,0.079833313822746,-0.280020147562027,-0.165803328156471,-0.310075014829636,-0.114622391760349,-0.235970288515091,0.056401301175356,-0.116060942411423,0.147436603903770,-0.036318413913250));
res += mul(Get(s3,0,0), float4x4(0.169963896274567,0.269753098487854,-0.009006596170366,0.289444327354431,-0.026261121034622,0.040446359664202,-0.163225606083870,0.046788211911917,-0.087499715387821,-0.457708925008774,-0.172898054122925,-0.292033433914185,-0.370400905609131,-0.068977974355221,0.198022842407227,-0.057626415044069));
res += mul(Get(s3,0,dy), float4x4(-0.050929754972458,0.140361800789833,0.137810111045837,0.035531915724277,-0.035092130303383,0.019190831109881,-0.127209201455116,-0.278046816587448,-0.173580557107925,0.188160374760628,-0.003338038455695,-0.264559328556061,0.053310632705688,0.045238800346851,0.078785859048367,-0.069758243858814));
res += mul(Get(s3,dx,-dy), float4x4(0.312781959772110,-0.158585906028748,-0.107866339385509,-0.007494790945202,0.019761178642511,-0.193256273865700,0.041508555412292,-0.048470031470060,-0.039780728518963,0.164627760648727,-0.130120545625687,-0.026787316426635,-0.051015097647905,-0.000118928102893,0.071740686893463,0.038908954709768));
res += mul(Get(s3,dx,0), float4x4(0.086078956723213,-0.155957683920860,-0.048113550990820,-0.056094557046890,0.038442995399237,-0.458593130111694,-0.110608719289303,-0.179542645812035,-0.169920220971107,0.131840780377388,-0.104596935212612,-0.022354366257787,0.135987967252731,0.070924520492554,0.127063855528831,-0.353259742259979));
res += mul(Get(s3,dx,dy), float4x4(-0.021142939105630,0.203885748982430,-0.090917274355888,0.203441143035889,0.159425660967827,0.262916654348373,-0.073859035968781,-0.186070770025253,-0.106280140578747,0.023889785632491,-0.079640656709671,-0.199154391884804,-0.008394654840231,0.086784042418003,-0.116180740296841,-0.209717303514481));
res += mul(Get(s4,-dx,-dy), float4x4(0.157885715365410,-0.200017929077148,0.151206910610199,-0.131671249866486,0.217473477125168,-0.326699435710907,-0.016735175624490,0.082179300487041,0.049012199044228,-0.317243516445160,0.077871985733509,-0.211726158857346,0.150962054729462,-0.048804812133312,0.210026890039444,-0.087176233530045));
res += mul(Get(s4,-dx,0), float4x4(-0.080663643777370,0.061392448842525,-0.154276385903358,0.022208323702216,-0.176383718848228,-0.064352110028267,-0.096065096557140,0.088659800589085,0.080552354454994,-0.012162845581770,-0.119270011782646,-0.137070521712303,0.004807807505131,-0.100157544016838,0.144983485341072,-0.019488316029310));
res += mul(Get(s4,-dx,dy), float4x4(-0.082166209816933,0.032580770552158,0.058057278394699,-0.044023308902979,-0.030135577544570,-0.040839418768883,-0.113703288137913,0.068374931812286,0.006095561198890,0.008092928677797,-0.129236489534378,0.000194879437913,-0.055881395936012,0.163322880864143,0.044716808944941,0.204202726483345));
res += mul(Get(s4,0,-dy), float4x4(-0.186252549290657,0.045301765203476,0.020135799422860,-0.061343800276518,-0.043170507997274,0.157997071743011,0.266643851995468,0.027258658781648,-0.018837757408619,0.087240532040596,0.167939037084579,-0.162947565317154,-0.456555932760239,-0.629119753837585,0.083501145243645,0.143233284354210));
res += mul(Get(s4,0,0), float4x4(-0.217495277523994,0.116243250668049,-0.677881062030792,-0.254875183105469,-0.260287821292877,0.132991507649422,-0.028033895418048,-0.377755910158157,0.022175237536430,-0.172498226165771,0.041328582912683,0.031961742788553,0.339018553495407,-0.184253945946693,0.247876763343811,-0.271291732788086));
res += mul(Get(s4,0,dy), float4x4(-0.045684956014156,-0.212952867150307,-0.090826511383057,0.027013022452593,-0.262522727251053,-0.083852671086788,0.204826444387436,0.112844869494438,0.058395206928253,-0.271518468856812,-0.015355795621872,-0.182985424995422,-0.144372805953026,0.135170683264732,0.138924881815910,0.073778361082077));
res += mul(Get(s4,dx,-dy), float4x4(0.063722886145115,-0.150977358222008,0.184908777475357,-0.042345520108938,0.085830584168434,-0.003705111099407,-0.071976438164711,-0.010674933902919,-0.088391184806824,-0.138638913631439,0.160942807793617,-0.008013443090022,0.251146078109741,-0.044505536556244,-0.068817466497421,-0.051893137395382));
res += mul(Get(s4,dx,0), float4x4(0.038031227886677,-0.201610594987869,0.075519919395447,0.144078880548477,-0.237867012619972,0.025061814114451,-0.197699040174484,-0.035850387066603,-0.123418763279915,-0.260179728269577,-0.148386105895042,0.110612839460373,-0.094691917300224,0.163159400224686,-0.006878741551191,0.204786181449890));
res += mul(Get(s4,dx,dy), float4x4(0.023862188681960,-0.097075209021568,0.070353291928768,0.093173712491989,-0.191254630684853,-0.073615960776806,0.181724429130554,0.208758831024170,-0.159273341298103,-0.077018991112709,0.157465830445290,0.248555883765221,0.030239108949900,-0.156677201390266,-0.003107305848971,0.007061231881380));
res += mul(Get(s5,-dx,-dy), float4x4(-0.105034917593002,0.160479724407196,-0.185603424906731,0.266018629074097,0.031591333448887,0.243122622370720,-0.088616795837879,-0.005493965465575,0.039713833481073,0.169621452689171,-0.009111788123846,-0.110942512750626,0.076687715947628,-0.076220333576202,0.059697262942791,0.018135676160455));
res += mul(Get(s5,-dx,0), float4x4(-0.064170390367508,-0.053949832916260,0.003155262675136,-0.127739787101746,0.054573997855186,-0.158652082085609,0.157833144068718,-0.189021795988083,0.025177586823702,-0.198279187083244,-0.034374520182610,-0.291698247194290,0.146283671259880,-0.162149459123611,0.010588882490993,-0.064067088067532));
res += mul(Get(s5,-dx,dy), float4x4(0.078214168548584,0.062869526445866,-0.041963201016188,0.166197791695595,0.051449030637741,0.255953907966614,0.121009148657322,0.031143682077527,0.059723384678364,0.024157391861081,0.227997228503227,0.101625040173531,0.032047901302576,0.067578844726086,0.048821907490492,0.190918967127800));
res += mul(Get(s5,0,-dy), float4x4(0.170215636491776,-0.388994783163071,-0.227640122175217,0.128596752882004,0.291975557804108,0.004710731562227,-0.144414976239204,-0.006118756718934,0.121568553149700,0.178052291274071,0.182684600353241,-0.192658931016922,-0.006185824982822,-0.157502815127373,-0.031668256968260,-0.010843176394701));
res += mul(Get(s5,0,0), float4x4(0.034386295825243,-0.318439424037933,-0.115838408470154,0.172224983572960,-0.196452051401138,0.059846822172403,0.087976217269897,-0.151168838143349,-0.062193963676691,0.162306517362595,0.153210893273354,-0.027508724480867,-0.303518414497375,-0.073205649852753,-0.355225354433060,-0.363785654306412));
res += mul(Get(s5,0,dy), float4x4(-0.020243693143129,0.033534556627274,-0.083635576069355,0.000841600936837,-0.187411636114120,0.181448101997375,0.195772305130959,0.024777268990874,0.082748860120773,-0.135467201471329,0.178272336721420,0.180066004395485,-0.045236356556416,0.120165377855301,-0.160463139414787,0.164104074239731));
res += mul(Get(s5,dx,-dy), float4x4(0.077268704771996,0.170555666089058,0.098947294056416,0.119960702955723,-0.079920083284378,0.053440831601620,0.186413854360580,0.135000944137573,-0.025036584585905,-0.275313735008240,0.259396553039551,0.097833797335625,0.112408973276615,-0.050366129726171,0.012966387905180,0.054398663341999));
res += mul(Get(s5,dx,0), float4x4(-0.229844048619270,0.068336881697178,0.214589849114418,0.043608602136374,0.019585084170103,0.025982953608036,0.036709327250719,0.113776355981827,0.004002325236797,-0.103813424706459,-0.268265873193741,-0.061588786542416,-0.172137543559074,0.116478785872459,0.167423993349075,0.166469588875771));
res += mul(Get(s5,dx,dy), float4x4(-0.023007374256849,-0.127235323190689,0.065414309501648,-0.032839197665453,0.136496111750603,-0.027716560289264,-0.117707349359989,-0.005322506185621,0.024816064164042,0.394542813301086,-0.054522555321455,0.120857954025269,0.046224895864725,-0.078232556581497,0.093428842723370,0.226851612329483));
res = max(float4(0, 0, 0, 0), res) + float4(0.453420907258987,0.000815079605673,0.067054204642773,-0.127463638782501) * min(float4(0, 0, 0, 0), res);
return res;
}