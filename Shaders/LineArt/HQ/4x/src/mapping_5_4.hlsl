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
float4 res = float4(-0.131433397531509,-0.135642349720001,-0.317196428775787,0.135740622878075);
res += mul(Get(s0,-dx,-dy), float4x4(0.015457095578313,0.043913353234529,0.050056576728821,0.278652936220169,-0.016462244093418,0.018235858529806,0.079852625727654,-0.175197273492813,0.121738195419312,0.089994587004185,-0.079542979598045,0.122720040380955,0.154372453689575,0.055492222309113,-0.262625902891159,0.102274008095264));
res += mul(Get(s0,-dx,0), float4x4(-0.076560258865356,-0.018898753449321,0.143719106912613,-0.001600840245374,0.041148770600557,-0.015741037204862,-0.055337119847536,0.114275299012661,-0.026606880128384,-0.010337854735553,-0.067850083112717,0.372366249561310,-0.057044662535191,0.115133389830589,-0.326341271400452,0.112057566642761));
res += mul(Get(s0,-dx,dy), float4x4(0.111543603241444,-0.060130681842566,-0.054112926125526,-0.174793452024460,-0.097038038074970,-0.037285581231117,0.149467632174492,-0.024728048592806,0.017238160595298,-0.079437851905823,-0.159350290894508,0.145919233560562,-0.016292631626129,0.016930643469095,-0.056079246103764,0.183222517371178));
res += mul(Get(s0,0,-dy), float4x4(-0.088281825184822,-0.135083675384521,0.265750616788864,0.000754352076910,0.076531194150448,0.110066972672939,-0.067135371267796,0.143380492925644,-0.265246599912643,-0.256613582372665,0.581898212432861,-0.274604469537735,0.179407536983490,0.168178439140320,-0.146360814571381,0.204790070652962));
res += mul(Get(s0,0,0), float4x4(0.109924316406250,0.033717058598995,0.022344417870045,-0.432026147842407,-0.399214923381805,-0.032444592565298,0.202815845608711,-0.038265500217676,-0.080435857176781,-0.197043746709824,0.022057022899389,-0.403685063123703,0.069315254688263,0.073217533528805,-0.180743217468262,0.158905386924744));
res += mul(Get(s0,0,dy), float4x4(-0.207775250077248,-0.217619806528091,0.013418625108898,0.100789539515972,0.274984359741211,0.066235877573490,0.154616519808769,-0.235198944807053,-0.105447798967361,-0.194911584258080,0.004747463390231,0.140693947672844,-0.048004124313593,-0.003493336727843,-0.119117073714733,-0.134910643100739));
res += mul(Get(s0,dx,-dy), float4x4(0.119642548263073,-0.040110848844051,0.019344737753272,0.134496852755547,0.029453180730343,-0.065640404820442,0.009059268981218,-0.067787662148476,0.179121389985085,0.031044041737914,0.065205067396164,0.011671775020659,0.023001281544566,-0.026344129815698,-0.148468405008316,0.049447607249022));
res += mul(Get(s0,dx,0), float4x4(0.304560184478760,-0.087603397667408,0.206787884235382,0.053694564849138,-0.054949589073658,0.012512304820120,0.114400222897530,0.240769848227501,-0.009631708264351,-0.037514556199312,-0.007563041523099,0.328654199838638,0.058857321739197,-0.005413895472884,-0.080699115991592,-0.048874638974667));
res += mul(Get(s0,dx,dy), float4x4(0.045413814485073,-0.034903459250927,0.062854528427124,-0.253202527761459,0.088381923735142,0.013363210484385,0.004426958970726,0.253420084714890,0.036556474864483,-0.061715926975012,0.078497499227524,-0.105219759047031,0.013366848230362,-0.121917597949505,-0.102786064147949,0.209144517779350));
res += mul(Get(s1,-dx,-dy), float4x4(-0.011203953064978,0.093214206397533,-0.001652238541283,0.165119349956512,-0.025623131543398,0.023463301360607,0.077815234661102,0.000413060624851,-0.028818307444453,-0.016657987609506,-0.001337757450528,-0.011522314511240,-0.042554717510939,-0.139416411519051,-0.060112528502941,0.055143415927887));
res += mul(Get(s1,-dx,0), float4x4(-0.123422488570213,0.098691672086716,-0.004007425624877,0.049755752086639,-0.024672441184521,0.094326138496399,-0.055173065513372,-0.096030190587044,-0.004651174414903,-0.048547051846981,0.087847813963890,0.120716579258442,0.288124203681946,-0.049770940095186,0.021463427692652,0.211651846766472));
res += mul(Get(s1,-dx,dy), float4x4(-0.096080884337425,0.104651957750320,0.001490966882557,-0.136872038245201,-0.067628227174282,-0.027442671358585,-0.080411918461323,-0.030352709814906,-0.011591715738177,0.084949508309364,0.026997368782759,-0.000703114608768,-0.099450089037418,-0.007374541368335,-0.024202499538660,-0.120160758495331));
res += mul(Get(s1,0,-dy), float4x4(-0.042882815003395,-0.271703332662582,0.279887825250626,0.070199884474277,-0.057522818446159,0.112137965857983,0.217936247587204,-0.139763593673706,-0.102308660745621,-0.258232235908508,0.147079661488533,0.068729393184185,0.134522035717964,0.041826479136944,-0.081772789359093,0.099314056336880));
res += mul(Get(s1,0,0), float4x4(0.190643712878227,-0.147024109959602,0.044311288744211,-0.309336096048355,0.186365514993668,0.266087710857391,-0.076487250626087,-0.249478861689568,-0.034424755722284,0.114073000848293,0.181151345372200,-0.210222601890564,-0.167806282639503,0.306727349758148,-0.081497550010681,0.178799748420715));
res += mul(Get(s1,0,dy), float4x4(-0.005737404339015,0.094218276441097,-0.065747708082199,-0.155941560864449,-0.013991995714605,0.082256563007832,-0.001213994575664,0.056399673223495,-0.072803109884262,0.219713568687439,-0.181429535150528,-0.052001837641001,-0.067499369382858,0.108504034578800,-0.040091723203659,0.081205926835537));
res += mul(Get(s1,dx,-dy), float4x4(-0.089975014328957,0.074510522186756,0.086075767874718,0.102634675800800,0.036274693906307,-0.029244439676404,-0.089246779680252,0.142323330044746,0.073170758783817,-0.139827504754066,-0.107804119586945,-0.009151182137430,0.150878891348839,-0.071200534701347,-0.035172235220671,-0.016156522557139));
res += mul(Get(s1,dx,0), float4x4(-0.096058301627636,0.028328942134976,-0.057092923671007,0.116998106241226,0.157843634486198,0.024937693029642,-0.050343293696642,0.037451110780239,0.232970699667931,-0.144540995359421,-0.147344455122948,0.074561730027199,-0.010878394357860,-0.001967960968614,-0.188672140240669,-0.065461836755276));
res += mul(Get(s1,dx,dy), float4x4(-0.012136884033680,0.138168826699257,-0.028407813981175,0.136758819222450,0.088591009378433,-0.005300110206008,0.077881246805191,-0.174848020076752,0.029165618121624,0.117188714444637,-0.048531219363213,-0.249289691448212,-0.105372048914433,-0.045575402677059,-0.055927768349648,0.101599372923374));
res += mul(Get(s2,-dx,-dy), float4x4(-0.131688371300697,0.052526686340570,-0.257740765810013,-0.054229483008385,0.063852414488792,0.074951834976673,0.016219731420279,-0.061544530093670,-0.156921416521072,-0.064604856073856,0.197702035307884,-0.102509856224060,0.124136604368687,-0.018138088285923,-0.005341506097466,-0.022568447515368));
res += mul(Get(s2,-dx,0), float4x4(-0.142180129885674,0.022725438699126,-0.104680433869362,0.186668381094933,-0.061642996966839,-0.020446948707104,0.156146630644798,0.012640125118196,0.330123275518417,0.144665211439133,0.121695816516876,-0.327297985553741,0.038225185126066,-0.000833355938084,-0.008592793717980,0.051064364612103));
res += mul(Get(s2,-dx,dy), float4x4(-0.235831812024117,-0.174142435193062,-0.072667226195335,-0.034255620092154,-0.144050896167755,-0.048474688082933,-0.004187920596451,-0.396454602479935,-0.105821177363396,0.066614679992199,-0.126832276582718,-0.231823429465294,0.136638194322586,0.025934014469385,0.064062416553497,-0.169815897941589));
res += mul(Get(s2,0,-dy), float4x4(-0.159968942403793,0.088192939758301,-0.067959897220135,-0.031487461179495,-0.147511169314384,-0.102631323039532,0.035954106599092,0.061110686510801,0.074654012918472,-0.047121670097113,-0.003964934963733,-0.130986854434013,0.125050112605095,-0.175664320588112,0.045389436185360,0.123741820454597));
res += mul(Get(s2,0,0), float4x4(-0.122202374041080,0.023803867399693,0.101625204086304,0.063934870064259,0.347431004047394,0.160599127411842,-0.058784969151020,-0.055818390101194,0.378518611192703,-0.106310494244099,0.334926992654800,0.078868322074413,0.154860541224480,-0.146499559283257,0.366686075925827,-0.049599997699261));
res += mul(Get(s2,0,dy), float4x4(-0.057019859552383,0.060783628374338,0.135204747319221,-0.222378075122833,0.143536627292633,0.126325964927673,-0.127134203910828,-0.021433819085360,0.060710817575455,-0.086505897343159,0.012593710795045,-0.025274928659201,0.161574244499207,0.032688163220882,-0.020744053646922,-0.257223099470139));
res += mul(Get(s2,dx,-dy), float4x4(-0.133474633097649,0.086866118013859,-0.025560051202774,0.030497208237648,0.039202071726322,0.003443999681622,0.031961251050234,-0.147680953145027,0.048725347965956,-0.002403097925708,-0.170477807521820,0.023156678304076,0.136741444468498,0.078733876347542,0.164491966366768,-0.086559392511845));
res += mul(Get(s2,dx,0), float4x4(-0.079588204622269,-0.039867050945759,0.043089829385281,-0.021736800670624,-0.065179757773876,0.032886378467083,-0.107269570231438,-0.081679210066795,0.264785945415497,-0.018853444606066,0.010728891007602,-0.146371349692345,0.078190304338932,0.092827893793583,0.036305360496044,-0.174586370587349));
res += mul(Get(s2,dx,dy), float4x4(-0.005173093173653,-0.015949260443449,0.022413507103920,-0.181453302502632,0.038812447339296,0.024909488856792,0.075704000890255,0.001248924876563,0.022622350603342,-0.008421560749412,0.074302598834038,-0.200268611311913,0.000304177694488,0.082534238696098,-0.068923436105251,0.282910138368607));
res += mul(Get(s3,-dx,-dy), float4x4(-0.030026745051146,0.128426551818848,0.130815997719765,0.117955401539803,-0.075330950319767,-0.091959111392498,0.030657907947898,-0.061986360698938,-0.017807576805353,0.115501224994659,0.045984018594027,0.053919810801744,-0.005847274325788,0.070189125835896,0.078449994325638,0.220467388629913));
res += mul(Get(s3,-dx,0), float4x4(0.075515277683735,-0.132398322224617,0.100717268884182,-0.066919527947903,0.032142866402864,-0.042163964360952,-0.004466544836760,-0.455248713493347,-0.014271502383053,0.059632685035467,0.159740775823593,-0.230656504631042,-0.063638783991337,0.170399978756905,-0.132427409291267,-0.128609314560890));
res += mul(Get(s3,-dx,dy), float4x4(0.159218832850456,-0.073364607989788,-0.135871022939682,-0.102473340928555,0.020790541544557,-0.033044092357159,-0.006004392169416,-0.028259761631489,0.051081843674183,0.082780718803406,-0.093160629272461,-0.030819380655885,-0.017491184175014,0.103653736412525,0.033141035586596,0.174979388713837));
res += mul(Get(s3,0,-dy), float4x4(0.047321122139692,0.055330131202936,-0.321930378675461,0.013691892847419,-0.068672098219395,0.035441320389509,0.120223850011826,0.141925126314163,-0.010651911608875,0.015781173482537,-0.302300840616226,-0.054495088756084,0.006817372515798,-0.041952092200518,0.168577894568443,0.091689094901085));
res += mul(Get(s3,0,0), float4x4(-0.142400011420250,-0.681982874870300,0.070956677198410,-0.004047880414873,-0.236888796091080,0.047359719872475,0.044054530560970,-0.383970946073532,0.223406493663788,-0.146747678518295,-0.003987957723439,0.230334073305130,0.311821103096008,-0.084267839789391,0.144279941916466,0.072283372282982));
res += mul(Get(s3,0,dy), float4x4(-0.081838116049767,0.053246650844812,0.016900425776839,0.180436283349991,-0.097944416105747,-0.049525436013937,-0.014862365089357,-0.096068851649761,0.040854763239622,-0.143257603049278,0.073321588337421,0.118208862841129,0.132300674915314,0.031270433217287,0.151981681585312,-0.088641382753849));
res += mul(Get(s3,dx,-dy), float4x4(-0.120181389153004,0.102846153080463,-0.001241682446562,-0.048020284622908,-0.018085373565555,-0.079077139496803,0.004749920684844,0.046834006905556,-0.175208806991577,0.120313964784145,0.036153122782707,-0.020665524527431,0.043662909418344,-0.071149982511997,-0.045795056968927,0.059011433273554));
res += mul(Get(s3,dx,0), float4x4(0.098519168794155,-0.094861604273319,0.013088584877551,0.013137564994395,-0.053707029670477,-0.058406434953213,-0.014280505478382,-0.104773052036762,-0.022817488759756,-0.010833540931344,0.004908180329949,0.033596560359001,-0.056427884846926,-0.042430236935616,0.056213654577732,-0.149496152997017));
res += mul(Get(s3,dx,dy), float4x4(-0.118022188544273,-0.047268297523260,-0.062535732984543,-0.026733249425888,-0.049212768673897,-0.080164544284344,-0.030915211886168,-0.040522061288357,-0.128667697310448,0.046680875122547,0.038899779319763,0.020747223868966,0.062211811542511,0.104493021965027,-0.022708766162395,0.080822117626667));
res += mul(Get(s4,-dx,-dy), float4x4(0.015314503572881,-0.023601753637195,0.068573221564293,-0.338142395019531,0.076382435858250,-0.067020617425442,0.154979258775711,-0.067281886935234,-0.025868918746710,-0.007399765308946,0.023623125627637,0.099734216928482,-0.004729004576802,-0.017151238396764,0.028816970065236,0.026839153841138));
res += mul(Get(s4,-dx,0), float4x4(0.137105271220207,0.112010709941387,0.050622507929802,0.135592579841614,0.109892226755619,-0.021250305697322,-0.046745982021093,-0.138983145356178,-0.181468769907951,0.122470572590828,0.141742512583733,0.177223771810532,0.205640763044357,-0.334315359592438,0.280667781829834,0.130476459860802));
res += mul(Get(s4,-dx,dy), float4x4(-0.146733209490776,0.161095827817917,0.186582162976265,0.405669271945953,0.193092912435532,0.040907707065344,0.024470310658216,0.197911679744720,0.025085596367717,0.066631674766541,-0.013093033805490,-0.027451122179627,0.096881337463856,-0.096810802817345,0.079219125211239,-0.033422440290451));
res += mul(Get(s4,0,-dy), float4x4(-0.009331632405519,0.023629367351532,0.194167286157608,-0.022523438557982,0.136216372251511,-0.093382120132446,0.031355578452349,-0.258933782577515,0.055669985711575,-0.182444438338280,-0.111228391528130,-0.122093871235847,-0.033230070024729,-0.278455197811127,0.034090071916580,-0.100505314767361));
res += mul(Get(s4,0,0), float4x4(-0.056116390973330,-0.231245413422585,0.398123115301132,-0.202399402856827,0.298671126365662,-0.151119664311409,0.152418673038483,-0.058625236153603,0.251617282629013,-0.154697701334953,-0.084032155573368,0.124368630349636,-0.377420127391815,0.718474686145782,-0.168210417032242,-0.213047385215759));
res += mul(Get(s4,0,dy), float4x4(0.308747082948685,-0.006846850737929,0.027806982398033,-0.671206057071686,0.136598676443100,0.067396797239780,0.133320584893227,0.134918883442879,-0.114302590489388,-0.029321422800422,-0.008127414621413,0.128947764635086,0.069694377481937,-0.115324094891548,-0.020147230476141,0.116519846022129));
res += mul(Get(s4,dx,-dy), float4x4(-0.078361377120018,-0.017488135024905,0.050353869795799,-0.191683158278465,0.154053643345833,0.093435220420361,0.025764292106032,0.015901306644082,-0.064467310905457,0.011621199548244,0.156964212656021,-0.140247702598572,0.030412452295423,0.115022972226143,-0.028601674363017,-0.071524575352669));
res += mul(Get(s4,dx,0), float4x4(0.024101709946990,0.096139922738075,-0.031379982829094,-0.165769636631012,0.025969062000513,0.087917543947697,0.096794582903385,0.088951274752617,-0.269061148166656,0.065449744462967,0.267096042633057,-0.219151243567467,-0.048938822001219,0.019504349678755,-0.031644809991121,-0.055643454194069));
res += mul(Get(s4,dx,dy), float4x4(-0.053330224007368,-0.007090020459145,-0.059446096420288,0.278846293687820,0.254461795091629,0.054774787276983,-0.077875025570393,-0.010077267885208,-0.066841207444668,0.082314476370811,0.112635999917984,0.255452036857605,-0.018486294895411,-0.016391025856137,0.166809231042862,-0.162391945719719));
res += mul(Get(s5,-dx,-dy), float4x4(0.145648628473282,-0.054167602211237,-0.083263657987118,-0.023680822923779,0.007297118660063,0.003234572475776,-0.131293311715126,-0.199982285499573,-0.056188516318798,0.079299099743366,-0.157361239194870,0.014180764555931,-0.110322862863541,0.036467533558607,0.033937603235245,-0.019281471148133));
res += mul(Get(s5,-dx,0), float4x4(0.059015080332756,-0.046144228428602,0.012196329422295,0.093376979231834,-0.134748458862305,0.046039540320635,-0.010404987260699,0.150486111640930,0.062529623508453,-0.009112006984651,-0.149359211325645,0.211412906646729,0.087547041475773,0.013691487722099,0.019165826961398,-0.096483126282692));
res += mul(Get(s5,-dx,dy), float4x4(0.067418336868286,-0.001061797607690,-0.017169905826449,0.024702372029424,-0.052847675979137,-0.011273170821369,0.098139010369778,0.038086451590061,-0.043578423559666,-0.074881091713905,0.068818353116512,-0.035690009593964,-0.130410715937614,0.041685700416565,-0.074577875435352,0.189342617988586));
res += mul(Get(s5,0,-dy), float4x4(0.020881043747067,-0.004790308885276,0.036886990070343,0.016364432871342,-0.078022502362728,-0.051190655678511,0.141900569200516,0.109703004360199,-0.228150770068169,0.156687557697296,-0.321012347936630,0.249224975705147,-0.172316372394562,0.105630189180374,0.072064556181431,0.266171634197235));
res += mul(Get(s5,0,0), float4x4(0.102753862738609,0.028028527274728,-0.054231427609921,-0.102288715541363,0.360395133495331,-0.172814831137657,0.056615471839905,0.009518568404019,0.280195951461792,-0.497312009334564,-0.027095526456833,0.162675708532333,-0.140377536416054,0.316820293664932,-0.132111519575119,-0.081093885004520));
res += mul(Get(s5,0,dy), float4x4(0.004631140269339,-0.082740642130375,0.067848779261112,-0.174485146999359,-0.081324845552444,0.149478107690811,-0.047408379614353,-0.079195201396942,0.052386637777090,-0.124402448534966,-0.068337261676788,-0.103148616850376,0.074729129672050,-0.120807476341724,0.208064630627632,-0.130997747182846));
res += mul(Get(s5,dx,-dy), float4x4(-0.005628802813590,-0.039978016167879,0.021400243043900,-0.074165217578411,-0.095304831862450,-0.101978756487370,0.124509759247303,-0.054444152861834,-0.085328415036201,0.298396676778793,-0.176408335566521,-0.010049396194518,0.170290678739548,-0.135975718498230,-0.135739430785179,0.137599006295204));
res += mul(Get(s5,dx,0), float4x4(0.269151002168655,-0.043731987476349,-0.137886255979538,-0.090388968586922,-0.011592566035688,-0.019960120320320,0.292596876621246,-0.152761086821556,-0.187844812870026,0.225835412740707,0.111965358257294,0.213329046964645,0.310925692319870,-0.075299881398678,-0.076774530112743,0.068174779415131));
res += mul(Get(s5,dx,dy), float4x4(0.009270409122109,-0.050880130380392,0.054010812193155,-0.191290110349655,0.057315062731504,0.001017831382342,0.021861147135496,0.273998796939850,-0.119898349046707,0.099080286920071,0.071073129773140,-0.087874397635460,0.185862973332405,0.074126519262791,0.057634536176920,-0.392759591341019));
res = max(float4(0, 0, 0, 0), res) + float4(0.362538486719131,0.611854732036591,-0.096884861588478,-0.002108508720994) * min(float4(0, 0, 0, 0), res);
return res;
}