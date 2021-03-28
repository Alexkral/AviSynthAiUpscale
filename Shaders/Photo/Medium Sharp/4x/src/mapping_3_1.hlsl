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
float4 res = float4(-0.151173710823059,0.032073047012091,-0.161191821098328,-0.011168388649821);
res += mul(Get(s0,-dx,-dy), float4x4(-0.083951085805893,0.009210419841111,-0.038046635687351,0.138356477022171,-0.006607867311686,0.014004277996719,0.104522220790386,-0.226753816008568,-0.156889960169792,-0.037479031831026,-0.052854418754578,0.070072047412395,-0.006419808603823,-0.182007223367691,0.025907207280397,0.066499620676041));
res += mul(Get(s0,-dx,0), float4x4(0.106026887893677,-0.080274604260921,0.012193134054542,0.043122950941324,0.138004824519157,0.368884652853012,-0.054394703358412,0.101682215929031,0.158933833241463,-0.056157331913710,-0.106905810534954,-0.090751975774765,-0.149291127920151,-0.471981048583984,0.076434567570686,-0.169713094830513));
res += mul(Get(s0,-dx,dy), float4x4(-0.100474216043949,-0.095178976655006,0.178029969334602,0.050485949963331,-0.112211443483829,-0.082984603941441,0.154071286320686,-0.048202857375145,0.067374050617218,0.098318181931973,0.176292493939400,0.229249164462090,-0.063557498157024,-0.178230673074722,0.015997642651200,-0.030228720977902));
res += mul(Get(s0,0,-dy), float4x4(0.020559612661600,-0.067467041313648,-0.077721253037453,-0.037295702844858,-0.027763884514570,-0.225106611847878,0.189327523112297,-0.310552597045898,0.089713692665100,-0.055210255086422,0.071904346346855,0.061713717877865,-0.016702977940440,-0.006202470511198,-0.030653411522508,0.049669861793518));
res += mul(Get(s0,0,0), float4x4(0.156965076923370,0.083311423659325,-0.114368930459023,0.076376058161259,-0.288545608520508,-0.216142341494560,0.036683727055788,-0.004976951982826,0.218722075223923,0.168965429067612,-0.095767237246037,0.062338314950466,-0.086405724287033,0.059115588665009,0.052209295332432,-0.197423249483109));
res += mul(Get(s0,0,dy), float4x4(0.022212967276573,0.048040419816971,0.356544464826584,-0.005618787370622,-0.206447750329971,-0.123647004365921,0.087708458304405,-0.114335685968399,0.296347469091415,-0.175881266593933,-0.191081181168556,0.215337917208672,0.133271604776382,0.010557857342064,-0.030540009960532,0.044271063059568));
res += mul(Get(s0,dx,-dy), float4x4(-0.005926833022386,0.008402561768889,0.007526075933129,0.144590422511101,-0.139496281743050,-0.012317029759288,0.063175968825817,-0.012642213143408,0.106464624404907,0.011152822524309,0.016435591503978,0.123010255396366,-0.105403587222099,0.044037412852049,0.031452868133783,-0.153260976076126));
res += mul(Get(s0,dx,0), float4x4(-0.010475644841790,0.101665876805782,0.192640945315361,0.099900819361210,-0.102600492537022,-0.117484800517559,0.050693664699793,-0.091417536139488,-0.132097005844116,-0.047982648015022,0.044983722269535,0.039850525557995,-0.085896089673042,-0.154901996254921,-0.066234804689884,-0.146900981664658));
res += mul(Get(s0,dx,dy), float4x4(-0.123642407357693,0.005123440176249,-0.183520063757896,0.064163476228714,-0.084296248853207,-0.069780260324478,-0.168915003538132,0.084850423038006,0.017558841034770,-0.061080221086740,-0.061509873718023,-0.035432603210211,-0.127121523022652,0.046640872955322,0.137613311409950,-0.028816897422075));
res += mul(Get(s1,-dx,-dy), float4x4(0.108909606933594,0.059786897152662,-0.051688950508833,0.027638966217637,0.126455456018448,-0.354056626558304,-0.168025672435760,0.055952537804842,0.096860997378826,-0.595852553844452,0.002039616694674,-0.025048863142729,0.099844828248024,-0.097564890980721,-0.045079275965691,0.055505637079477));
res += mul(Get(s1,-dx,0), float4x4(0.005513474810869,0.094279348850250,-0.003448834642768,-0.054820522665977,0.143472880125046,-0.353401362895966,-0.169227361679077,0.113430008292198,-0.137832924723625,-0.955963671207428,-0.080745808780193,0.101741254329681,0.107395134866238,0.112521722912788,0.122523553669453,-0.128602072596550));
res += mul(Get(s1,-dx,dy), float4x4(-0.012457808479667,0.139173910021782,0.046608574688435,0.142419382929802,-0.059701826423407,-0.121100522577763,0.034688614308834,0.023021288216114,0.013467554003000,-0.273139148950577,0.006729702465236,0.080877184867859,-0.068967618048191,0.102199025452137,0.036166507750750,-0.124771237373352));
res += mul(Get(s1,0,-dy), float4x4(0.132689252495766,0.209233507514000,-0.028299175202847,0.136555209755898,-0.047922279685736,0.122063323855400,0.092606581747532,0.150897100567818,0.052736133337021,-0.363313853740692,0.011379945091903,0.121172487735748,-0.060006521642208,-0.044480621814728,-0.073166154325008,0.047514617443085));
res += mul(Get(s1,0,0), float4x4(0.024163832888007,-0.062146268785000,0.031608905643225,-0.183964565396309,0.017208855599165,0.240471795201302,-0.061671148985624,0.083031423389912,0.205457001924515,-0.268660217523575,-0.169012576341629,-0.165939748287201,0.201971814036369,-0.133940115571022,-0.053135942667723,-0.079618453979492));
res += mul(Get(s1,0,dy), float4x4(0.180288597941399,0.047292202711105,0.044635891914368,0.128922864794731,-0.043586131185293,0.112639896571636,0.034789834171534,0.048937663435936,-0.165080875158310,-0.088546201586723,-0.066266037523746,0.036682646721601,0.002369448309764,0.044563274830580,0.023315200582147,-0.053705025464296));
res += mul(Get(s1,dx,-dy), float4x4(-0.086995966732502,0.006198137067258,0.026644477620721,0.039345629513264,-0.088614217936993,0.271518647670746,0.177328675985336,0.059299632906914,-0.026921426877379,0.010107272304595,0.089355714619160,0.123975917696953,-0.057814780622721,-0.079744495451450,-0.154520750045776,0.198608964681625));
res += mul(Get(s1,dx,0), float4x4(-0.057847678661346,-0.004755726084113,0.017132323235273,-0.313801258802414,-0.101245336234570,0.152785509824753,0.120381154119968,0.119422905147076,-0.244153350591660,-0.093211427330971,-0.066073745489120,-0.028247341513634,0.314899384975433,0.187056362628937,-0.103432029485703,-0.121157824993134));
res += mul(Get(s1,dx,dy), float4x4(-0.093443736433983,0.018384894356132,-0.033301860094070,-0.048857569694519,-0.078047499060631,0.099826619029045,0.149551972746849,0.014860964380205,0.172428250312805,0.032567903399467,0.158661529421806,-0.052420198917389,0.134689137339592,-0.025245785713196,-0.191909164190292,0.096450008451939));
res += mul(Get(s2,-dx,-dy), float4x4(-0.053390692919493,0.184334263205528,-0.080450154840946,0.371245414018631,0.062178060412407,-0.134651437401772,0.143617540597916,-0.238652423024178,-0.098969131708145,-0.229855209589005,-0.018547063693404,-0.056278470903635,-0.252404183149338,0.010926400311291,0.039647400379181,-0.113013505935669));
res += mul(Get(s2,-dx,0), float4x4(-0.068491972982883,-0.060045197606087,0.026658797636628,0.050278335809708,0.100899562239647,0.054217394441366,0.143621981143951,-0.099985964596272,0.038401782512665,-0.423946768045425,-0.121103495359421,-0.207275167107582,0.211175411939621,-0.151894703507423,-0.100441947579384,-0.063933521509171));
res += mul(Get(s2,-dx,dy), float4x4(0.155481487512589,-0.012673530727625,-0.012189385481179,0.038638785481453,-0.101269051432610,-0.106126144528389,0.034221027046442,-0.035157557576895,-0.093838922679424,-0.056573417037725,-0.057634342461824,-0.280199855566025,-0.049546830356121,0.136613264679909,0.126850038766861,0.127403229475021));
res += mul(Get(s2,0,-dy), float4x4(-0.011977485381067,-0.100639611482620,-0.099173471331596,0.345995962619781,0.117019899189472,0.067908450961113,0.049551032483578,0.329168140888214,-0.023483777418733,-0.170451581478119,-0.128266394138336,-0.267484426498413,-0.285521298646927,-0.071343183517456,0.079320304095745,-0.114198841154575));
res += mul(Get(s2,0,0), float4x4(0.101308569312096,-0.037605151534081,-0.147657215595245,-0.102019257843494,0.088824778795242,0.158569738268852,-0.205270901322365,-0.063451193273067,-0.102481625974178,0.184943437576294,-0.099632330238819,-0.101741313934326,-0.041475914418697,0.006967245601118,0.064041428267956,-0.064255513250828));
res += mul(Get(s2,0,dy), float4x4(0.355363130569458,-0.114653021097183,-0.059130083769560,0.004109980538487,-0.010601967573166,0.096128180623055,0.140148356556892,0.029381182044744,-0.178047880530357,0.064982526004314,0.144990354776382,-0.272246956825256,0.025957711040974,-0.214705944061279,-0.003526623127982,0.177074581384659));
res += mul(Get(s2,dx,-dy), float4x4(0.032572388648987,0.028515337035060,-0.071225017309189,0.310223966836929,0.052402742207050,0.117781728506088,-0.027706405147910,0.106170445680618,-0.116327248513699,-0.013428399339318,0.071519456803799,0.049029204994440,0.112744130194187,-0.031300894916058,0.139913350343704,-0.098544023931026));
res += mul(Get(s2,dx,0), float4x4(-0.074337750673294,0.083326734602451,0.164425849914551,-0.149811834096909,-0.087196990847588,-0.024111397564411,0.040218472480774,0.099715933203697,-0.007923109456897,0.190953329205513,0.060879245400429,0.049326229840517,0.097907699644566,0.011633084155619,-0.082350879907608,0.056050363928080));
res += mul(Get(s2,dx,dy), float4x4(0.048177998512983,0.077081046998501,0.056521963328123,0.085301995277405,0.139210909605026,0.010390781797469,-0.131584316492081,-0.163639411330223,0.070423111319542,0.046489015221596,-0.023276912048459,-0.039489481598139,-0.015758372843266,-0.021706126630306,-0.084633551537991,0.111336126923561));
res += mul(Get(s3,-dx,-dy), float4x4(-0.058976430445910,-0.045931167900562,-0.094878807663918,0.059410061687231,0.068121060729027,-0.019699141383171,-0.093173123896122,0.007137974724174,0.111251592636108,0.030427513644099,0.023810781538486,0.111718900501728,0.019958352670074,-0.333711862564087,-0.084198869764805,0.093615204095840));
res += mul(Get(s3,-dx,0), float4x4(0.163945600390434,-0.303400188684464,-0.312966465950012,0.025185475125909,-0.156577467918396,-0.086588554084301,0.039781879633665,0.063265003263950,0.018867727369070,0.129944577813148,0.057959128171206,-0.076347462832928,0.102779105305672,-0.343820154666901,-0.175967678427696,-0.074853718280792));
res += mul(Get(s3,-dx,dy), float4x4(0.012116769328713,-0.126204073429108,0.090971447527409,0.008164623752236,0.159313052892685,-0.046149987727404,-0.014021323062479,0.096048772335052,0.069889716804028,-0.201892420649529,-0.179254427552223,-0.303751051425934,0.008612650446594,-0.054336186498404,-0.012393279932439,0.069681063294411));
res += mul(Get(s3,0,-dy), float4x4(-0.007750420831144,-0.008909245021641,0.055790700018406,0.131062850356102,-0.038963131606579,-0.399194300174713,-0.113226480782032,0.003343984950334,-0.039572276175022,0.175301268696785,-0.061183247715235,0.116442196071148,-0.056751187890768,0.139326974749565,-0.211677283048630,-0.093515224754810));
res += mul(Get(s3,0,0), float4x4(-0.315410226583481,0.235098198056221,0.333804339170456,0.159720361232758,-0.116618074476719,-0.357227921485901,0.391935169696808,0.027920495718718,-0.287949502468109,0.020329201593995,-0.046246360987425,-0.162715151906013,0.021997032687068,0.231993019580841,-0.071943469345570,-0.039195794612169));
res += mul(Get(s3,0,dy), float4x4(0.223554864525795,0.076315432786942,-0.027428895235062,-0.015160144306719,0.338457882404327,-0.228726759552956,-0.282027781009674,0.118842855095863,0.178170308470726,-0.011644974350929,0.013435977511108,-0.435461670160294,0.139778867363930,0.023910993710160,-0.137594386935234,0.050036046653986));
res += mul(Get(s3,dx,-dy), float4x4(-0.043761905282736,-0.021842086687684,-0.011981465853751,-0.104742355644703,-0.057935915887356,0.279911458492279,0.227146610617638,-0.066803082823753,-0.136455342173576,-0.034450143575668,-0.092166356742382,0.005247781984508,0.097156181931496,0.091029547154903,-0.056293949484825,-0.033235039561987));
res += mul(Get(s3,dx,0), float4x4(-0.135665550827980,-0.209523096680641,-0.358300685882568,-0.267075806856155,-0.170279935002327,0.312570929527283,0.152134120464325,0.030561715364456,-0.097367554903030,0.090807572007179,-0.092915371060371,-0.038101121783257,-0.161361068487167,-0.013047066517174,0.085260108113289,0.194487944245338));
res += mul(Get(s3,dx,dy), float4x4(0.051307577639818,-0.021975627169013,-0.037075970321894,-0.089737109839916,0.240535140037537,0.091974511742592,-0.023046076297760,-0.017633892595768,0.039893139153719,0.158928409218788,0.281909525394440,-0.063623897731304,-0.038189090788364,0.184531494975090,0.033933006227016,-0.031597957015038));
res += mul(Get(s4,-dx,-dy), float4x4(-0.048649642616510,0.206625610589981,-0.005764623638242,-0.229777231812477,0.031600866466761,0.406357556581497,0.234979271888733,-0.026658581569791,-0.034022688865662,0.034483660012484,0.092048525810242,-0.137601822614670,-0.181695446372032,-0.144459381699562,-0.016415657475591,0.351299822330475));
res += mul(Get(s4,-dx,0), float4x4(-0.115796357393265,-0.186373725533485,-0.017295159399509,-0.107716031372547,-0.054907049983740,0.280784994363785,0.458097845315933,-0.010594496503472,-0.128298759460449,0.005500657018274,-0.008866233751178,0.068364545702934,0.161534845829010,-0.814952969551086,-0.170061901211739,0.415904641151428));
res += mul(Get(s4,-dx,dy), float4x4(0.113938428461552,0.019742108881474,0.036814562976360,-0.133412450551987,-0.062091145664454,0.227904826402664,0.194886684417725,0.095651052892208,0.002086984692141,-0.036853063851595,0.040807235985994,-0.005441940389574,0.105711147189140,0.057011995464563,-0.083566099405289,0.152252510190010));
res += mul(Get(s4,0,-dy), float4x4(0.032492522150278,-0.018547700718045,0.000889790127985,-0.204260513186455,-0.052158903330564,0.067644841969013,-0.067929409444332,0.029964789748192,0.106586612761021,-0.091365233063698,0.033575657755136,-0.217800945043564,0.019914260134101,0.082917019724846,0.020054321736097,-0.182383954524994));
res += mul(Get(s4,0,0), float4x4(0.120834447443485,-0.172074034810066,0.079222120344639,0.142699241638184,0.275054842233658,-0.045801438391209,-0.111537195742130,0.027228552848101,-0.229181110858917,0.124976627528667,0.393617928028107,0.189677223563194,-0.131255745887756,0.097531266510487,0.123144149780273,-0.028047667816281));
res += mul(Get(s4,0,dy), float4x4(-0.092713154852390,0.067786276340485,-0.029174426570535,-0.148749113082886,-0.001171401818283,-0.221540793776512,-0.048285793513060,0.050496969372034,-0.199037477374077,0.030420960858464,0.003545929910615,-0.002675546100363,0.123303040862083,0.102352723479271,-0.073014102876186,0.023672051727772));
res += mul(Get(s4,dx,-dy), float4x4(0.015715362504125,0.013187597505748,-0.128972694277763,-0.147455036640167,0.243771493434906,-0.057306095957756,0.070100210607052,-0.002664651256055,0.027529787272215,0.033110037446022,-0.021291751414537,-0.109441362321377,0.013890845701098,0.075119823217392,0.106316350400448,0.170129954814911));
res += mul(Get(s4,dx,0), float4x4(-0.007265460677445,-0.151323959231377,-0.024874811992049,0.048795774579048,-0.161522939801216,-0.049048870801926,0.104238264262676,0.052256636321545,0.085380896925926,-0.146761655807495,-0.148851945996284,-0.078883349895477,0.047968130558729,0.271588057279587,0.259432256221771,0.076726436614990));
res += mul(Get(s4,dx,dy), float4x4(-0.079734645783901,0.088958583772182,-0.068573117256165,-0.174016639590263,0.101831234991550,-0.057533595710993,-0.047809381037951,-0.189878031611443,-0.182983279228210,-0.018207512795925,-0.198840394616127,-0.028112951666117,0.070466294884682,0.060408614575863,0.140616193413734,0.103467524051666));
res += mul(Get(s5,-dx,-dy), float4x4(0.105962827801704,-0.073753513395786,0.074602477252483,-0.005739690735936,-0.018914220854640,-0.051153119653463,-0.032563976943493,-0.275896251201630,-0.016580497846007,0.129912972450256,0.000187580997590,-0.124598681926727,0.032692316919565,-0.118879914283752,0.067973643541336,0.079750619828701));
res += mul(Get(s5,-dx,0), float4x4(0.137729182839394,0.167234271764755,-0.160915881395340,-0.035380177199841,-0.158912554383278,0.114636719226837,0.057177316397429,0.137026473879814,0.114675447344780,-0.292333513498306,-0.189992353320122,-0.018629875034094,0.044374044984579,-0.056128550320864,0.085900790989399,0.079782128334045));
res += mul(Get(s5,-dx,dy), float4x4(0.070405051112175,-0.091430008411407,0.037779171019793,0.095637872815132,-0.117682211101055,0.114296376705170,-0.075553074479103,-0.011359425261617,0.025977473706007,0.128942608833313,0.076318509876728,0.050177223980427,0.015327384695411,-0.010256236419082,0.069885186851025,-0.007974056527019));
res += mul(Get(s5,0,-dy), float4x4(0.157316341996193,0.145829260349274,0.137319281697273,-0.156563088297844,0.116055980324745,-0.048592336475849,0.088298566639423,0.222500756382942,0.021767994388938,0.084170162677765,0.119501374661922,0.067723251879215,-0.035310462117195,0.019636437296867,0.214753538370132,0.148958727717400));
res += mul(Get(s5,0,0), float4x4(-0.268849611282349,0.240301638841629,0.096985042095184,-0.051680922508240,-0.188179656863213,-0.033489171415567,-0.241651058197021,0.136507228016853,-0.391560137271881,0.172509267926216,0.542511880397797,-0.153385519981384,-0.069499887526035,0.016596229746938,0.157206356525421,-0.172832384705544));
res += mul(Get(s5,0,dy), float4x4(0.065850354731083,-0.036946229636669,0.086685128509998,0.120361179113388,-0.134212106466293,-0.104312434792519,-0.159820884466171,-0.023259883746505,0.267958700656891,-0.030460940673947,-0.184946775436401,0.008988044224679,0.025254573673010,0.004647063557059,0.001615115441382,0.039073098450899));
res += mul(Get(s5,dx,-dy), float4x4(0.005201414693147,-0.014167137444019,0.028057586401701,-0.008087618276477,-0.108497411012650,0.014052909798920,0.019177213311195,0.069227837026119,0.113784439861774,0.029136033728719,-0.032287184149027,0.026375528424978,0.145566627383232,0.043836399912834,0.033526811748743,-0.006194552406669));
res += mul(Get(s5,dx,0), float4x4(-0.027302213013172,-0.044258058071136,-0.132579371333122,0.064291737973690,0.024676356464624,-0.017952073365450,-0.168992877006531,-0.077435366809368,-0.115254960954189,0.118639193475246,-0.109400235116482,-0.011479366570711,-0.302500247955322,-0.110865116119385,0.281305700540543,-0.013167494907975));
res += mul(Get(s5,dx,dy), float4x4(0.101588301360607,-0.124821901321411,-0.017269767820835,0.133471772074699,-0.017400916665792,0.058279171586037,0.012367624789476,-0.095174185931683,0.014772300608456,0.089940108358860,0.175982296466827,0.030596168711782,0.072199836373329,-0.094770155847073,-0.236960142850876,0.006282874383032));
res = max(float4(0, 0, 0, 0), res) + float4(0.040355894714594,0.018047224730253,0.588201045989990,0.223139166831970) * min(float4(0, 0, 0, 0), res);
return res;
}
