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
float4 res = float4(-0.018374674022198,0.064257808029652,-0.011926083825529,0.249347850680351);
res += mul(Get(s0,-dx,-dy), float4x4(-0.117814324796200,0.007288548629731,0.079562850296497,0.010480484925210,-0.152855575084686,0.303426027297974,-0.022848490625620,-0.040046747773886,-0.005447967443615,0.098825603723526,-0.005618339404464,-0.029656870290637,0.160624966025352,-0.130409777164459,-0.006341140717268,-0.143034890294075));
res += mul(Get(s0,-dx,0), float4x4(-0.082594461739063,0.282338976860046,0.101443164050579,-0.075000964105129,0.131861656904221,0.091047078371048,-0.169086977839470,0.017354425042868,-0.105317562818527,0.264744669198990,0.030433949083090,-0.038897674530745,-0.131488338112831,-0.118725053966045,0.061791747808456,-0.055449560284615));
res += mul(Get(s0,-dx,dy), float4x4(0.126395553350449,-0.022435996681452,0.075488008558750,-0.046912264078856,-0.003345082746819,0.050677005201578,-0.145918279886246,0.046063859015703,-0.001324188080616,0.021199248731136,-0.010822237469256,-0.032788820564747,-0.103560037910938,-0.096402294933796,0.143840372562408,-0.049118392169476));
res += mul(Get(s0,0,-dy), float4x4(0.252625793218613,-0.126336380839348,-0.028436634689569,-0.146857067942619,-0.208950027823448,-0.145848393440247,0.005433515179902,0.007623301818967,-0.045655533671379,0.019848134368658,-0.071996435523033,-0.034190610051155,0.077180154621601,-0.261810153722763,-0.208489120006561,-0.100361675024033));
res += mul(Get(s0,0,0), float4x4(-0.328142672777176,-0.058830790221691,-0.143033683300018,0.161689445376396,0.157713726162910,0.020451739430428,0.011253465898335,-0.135358348488808,0.034518256783485,-0.227855131030083,-0.053116735070944,-0.148051545023918,-0.178975090384483,0.065240040421486,-0.026434574276209,0.063627250492573));
res += mul(Get(s0,0,dy), float4x4(-0.008460646495223,0.001275914371945,-0.046989079564810,-0.162309691309929,-0.021914577111602,-0.282404661178589,0.192293986678123,0.091744452714920,0.067669220268726,-0.034138012677431,-0.018553851172328,0.017366388812661,-0.110560409724712,-0.139156952500343,0.149298951029778,-0.019018808379769));
res += mul(Get(s0,dx,-dy), float4x4(0.068468362092972,0.018372094258666,-0.106820434331894,-0.034451901912689,-0.034783978015184,-0.241554483771324,-0.083517119288445,0.007027624174953,-0.025198519229889,-0.010737873613834,-0.057421542704105,0.040753610432148,-0.121194221079350,-0.020028490573168,0.060554843395948,-0.051771920174360));
res += mul(Get(s0,dx,0), float4x4(0.092528961598873,0.062973834574223,-0.017659565433860,-0.144912049174309,0.201504126191139,-0.364697277545929,-0.033627096563578,-0.144771814346313,-0.006108944769949,0.188984960317612,0.047485545277596,0.015449469909072,-0.074278250336647,0.091766633093357,0.091663196682930,-0.082283899188042));
res += mul(Get(s0,dx,dy), float4x4(0.033615298569202,0.015764608979225,0.029213747009635,-0.055063087493181,-0.110377028584480,-0.071973852813244,-0.101896494626999,-0.048592578619719,0.107717737555504,-0.119209289550781,-0.153494417667389,0.068401820957661,-0.066920928657055,0.011754989624023,0.127216771245003,0.016540497541428));
res += mul(Get(s1,-dx,-dy), float4x4(-0.012961992062628,0.047630317509174,-0.161130771040916,-0.033957708626986,0.002194495173171,0.072509638965130,-0.005286793690175,0.011481261812150,-0.076473914086819,-0.131716370582581,0.010594773106277,-0.066340103745461,0.049474380910397,0.431701749563217,0.007672894280404,-0.039279893040657));
res += mul(Get(s1,-dx,0), float4x4(0.134921655058861,0.177050963044167,-0.321246087551117,0.158921241760254,0.023519050329924,0.157135292887688,0.078794345259666,0.006145943421870,-0.023512031883001,-0.267766267061234,0.022181529551744,0.043396107852459,0.216919466853142,0.350179731845856,-0.021383741870522,0.008156675845385));
res += mul(Get(s1,-dx,dy), float4x4(0.063924357295036,-0.042328063398600,-0.250851005315781,0.070196911692619,0.111217930912971,-0.084650263190269,-0.028923021629453,-0.002247676253319,-0.049361664801836,-0.108770959079266,-0.059014890342951,-0.069892413914204,-0.037200815975666,-0.169305130839348,0.025344954803586,0.030723540112376));
res += mul(Get(s1,0,-dy), float4x4(-0.306414455175400,0.017665555700660,0.080977141857147,-0.107149146497250,0.055039398372173,-0.064735442399979,0.127623736858368,-0.048942130059004,-0.084815613925457,-0.171062335371971,-0.010029166005552,0.031408187001944,-0.055259298533201,0.050414171069860,0.080429628491402,-0.014013719744980));
res += mul(Get(s1,0,0), float4x4(-0.014173395000398,0.024671381339431,0.176803857088089,-0.288994610309601,-0.180379077792168,0.098775520920753,-0.013005046173930,0.078684300184250,-0.133535340428352,-0.039874047040939,-0.010579071007669,-0.147137850522995,-0.061990849673748,0.106017611920834,0.094596832990646,-0.142249941825867));
res += mul(Get(s1,0,dy), float4x4(0.212627306580544,-0.135496109724045,0.107356265187263,-0.410466462373734,-0.086389869451523,-0.289146870374680,-0.226448461413383,0.141786798834801,0.030223254114389,-0.014061266556382,0.071962259709835,0.044818423688412,0.078685328364372,-0.101066216826439,-0.061675772070885,-0.005844168830663));
res += mul(Get(s1,dx,-dy), float4x4(-0.174376040697098,-0.028462063521147,0.217370375990868,0.047865249216557,0.243761047720909,0.108207747340202,0.042670618742704,-0.018891748040915,0.139135748147964,0.009555371478200,-0.036820594221354,-0.013488603755832,-0.268674045801163,-0.179352402687073,-0.058133672922850,0.098968498408794));
res += mul(Get(s1,dx,0), float4x4(0.206437826156616,-0.106396533548832,-0.110754877328873,-0.188001826405525,0.034566767513752,-0.104307569563389,-0.111525073647499,0.042792633175850,-0.319958686828613,0.043310470879078,-0.104854717850685,0.230879902839661,-0.086381748318672,-0.243495881557465,-0.066544421017170,-0.023263299837708));
res += mul(Get(s1,dx,dy), float4x4(0.064983569085598,-0.018436692655087,0.133653894066811,-0.109326906502247,-0.108998745679855,0.005932977423072,-0.213224902749062,0.054693929851055,-0.076626196503639,0.012696596793830,-0.046819109469652,0.053563609719276,0.133439093828201,-0.176779255270958,0.099259003996849,0.009484732523561));
res += mul(Get(s2,-dx,-dy), float4x4(-0.019311593845487,-0.089459367096424,0.063817612826824,-0.035708118230104,-0.022197140380740,0.147065058350563,0.004498272668570,-0.027586327865720,0.267121940851212,0.318385809659958,-0.025881238281727,-0.075783342123032,-0.088112689554691,0.117099128663540,0.093215413391590,0.017160750925541));
res += mul(Get(s2,-dx,0), float4x4(0.083048895001411,0.116386383771896,0.075720071792603,-0.019358335062861,-0.028109872713685,0.387875467538834,0.118055969476700,-0.078723244369030,0.066752009093761,0.273932516574860,-0.092920497059822,0.023281281813979,-0.014109761454165,0.209313422441483,0.089212365448475,-0.100766576826572));
res += mul(Get(s2,-dx,dy), float4x4(-0.054604645818472,-0.114760719239712,-0.067240498960018,0.000277485494735,-0.235897839069366,-0.002213313011453,0.126770824193954,-0.004240103531629,-0.051660511642694,-0.139984220266342,0.122314803302288,-0.051285341382027,0.073270268738270,0.068373128771782,0.000081257829152,-0.024180501699448));
res += mul(Get(s2,0,-dy), float4x4(-0.047084685415030,0.162822872400284,0.004834451712668,0.050140921026468,-0.194824352860451,-0.017260227352381,0.112765215337276,0.109630122780800,0.017954438924789,-0.163131833076477,0.125486955046654,-0.264210671186447,-0.028433917090297,0.013862599618733,0.070917718112469,-0.039202392101288));
res += mul(Get(s2,0,0), float4x4(0.046014353632927,0.091834880411625,0.143228709697723,0.010152461938560,0.259455800056458,0.012833440676332,0.178916051983833,-0.236522763967514,0.058119617402554,-0.045158058404922,0.057874795049429,-0.268763184547424,-0.181520596146584,0.044277809560299,0.037718407809734,-0.034907352179289));
res += mul(Get(s2,0,dy), float4x4(0.138862788677216,0.197286203503609,-0.033449556678534,-0.075001716613770,0.287392228841782,-0.135805055499077,-0.018461657688022,0.078386820852757,-0.019491821527481,-0.065484486520290,0.007951907813549,-0.195928275585175,0.057419843971729,-0.230334833264351,-0.032274354249239,0.110510304570198));
res += mul(Get(s2,dx,-dy), float4x4(-0.074079334735870,0.030396914109588,-0.111036136746407,0.027595024555922,-0.190232753753662,-0.031070355325937,-0.190569221973419,-0.047441624104977,-0.333246946334839,-0.173736408352852,0.096367187798023,0.057852733880281,0.048464071005583,0.049913592636585,-0.097881898283958,0.015558484941721));
res += mul(Get(s2,dx,0), float4x4(-0.166905313730240,0.132594466209412,-0.219280421733856,-0.039325535297394,-0.042621660977602,-0.123711459338665,-0.359039962291718,-0.023560658097267,-0.025163767859340,-0.253274232149124,0.026853838935494,-0.077196955680847,-0.068508699536324,-0.115960732102394,-0.087668463587761,-0.000577086699195));
res += mul(Get(s2,dx,dy), float4x4(0.047676853835583,0.027067610993981,-0.204451486468315,-0.010680745355785,0.244258373975754,-0.052906446158886,-0.285185694694519,-0.070890218019485,0.108572505414486,-0.033761214464903,-0.194728538393974,-0.030027212575078,-0.030274616554379,0.039345938712358,-0.074165731668472,-0.007123847492039));
res += mul(Get(s3,-dx,-dy), float4x4(0.034171383827925,0.158966079354286,0.093311659991741,-0.035654600709677,-0.134082868695259,0.305460721254349,0.022094327956438,-0.005402553826571,-0.258682459592819,0.196936920285225,0.145608291029930,0.042530875653028,-0.041840933263302,0.294602900743484,0.026505423709750,-0.003983999136835));
res += mul(Get(s3,-dx,0), float4x4(-0.160277962684631,-0.078831925988197,0.144822657108307,-0.068313077092171,-0.059562280774117,0.029131827875972,0.095699593424797,-0.178906485438347,0.163041934370995,0.014391424134374,0.081362619996071,-0.086293421685696,0.103386074304581,-0.170631691813469,0.112698405981064,-0.070619761943817));
res += mul(Get(s3,-dx,dy), float4x4(0.009808888658881,0.053652796894312,0.176520124077797,-0.051990050822496,-0.154873698949814,-0.027979470789433,0.162257075309753,-0.037073832005262,0.079465195536613,-0.011681262403727,0.004003052599728,0.086473256349564,0.010120028629899,0.223097845911980,0.024092467501760,-0.008209998719394));
res += mul(Get(s3,0,-dy), float4x4(0.125540703535080,0.243706122040749,0.033835060894489,-0.133832633495331,0.077327162027359,-0.145317569375038,0.051756300032139,-0.069562256336212,-0.259527891874313,0.022254355251789,-0.196759134531021,0.050389558076859,0.037236284464598,-0.114737488329411,0.014652701094747,-0.096271470189095));
res += mul(Get(s3,0,0), float4x4(-0.084011793136597,0.223443731665611,-0.298238605260849,0.168353036046028,0.001843921723776,-0.082748048007488,0.133477315306664,0.045641534030437,-0.139392331242561,-0.119052410125732,0.019860211759806,0.008877278305590,-0.091627880930901,0.223915398120880,-0.001574892317876,0.125279918313026));
res += mul(Get(s3,0,dy), float4x4(-0.133806154131889,-0.047821298241615,-0.070502206683159,0.028981214389205,0.027689697220922,0.072197988629341,0.188803344964981,0.125174969434738,0.035278566181660,-0.039892446249723,-0.063058920204639,0.046740412712097,-0.159506082534790,-0.169639632105827,-0.076983004808426,0.055309992283583));
res += mul(Get(s3,dx,-dy), float4x4(-0.093003384768963,0.013176353648305,-0.018644222989678,0.180759593844414,0.009597881697118,-0.041639238595963,-0.055595163255930,-0.125279709696770,0.072362892329693,-0.203998312354088,0.171268165111542,-0.005936827044934,0.013796167448163,-0.038396243005991,0.037608902901411,-0.046735085546970));
res += mul(Get(s3,dx,0), float4x4(0.211903184652328,-0.368703961372375,-0.067448668181896,-0.360836327075958,-0.206995502114296,-0.112594194710255,0.001361141912639,0.078721076250076,-0.212503030896187,-0.391037851572037,-0.177850857377052,0.084624670445919,-0.052592974156141,-0.183562144637108,0.003018187126145,0.068321675062180));
res += mul(Get(s3,dx,dy), float4x4(-0.033931314945221,-0.039259064942598,0.021113710477948,-0.007149613462389,-0.002871546661481,-0.045654959976673,-0.002988973865286,0.031849753111601,-0.233058869838715,-0.044795673340559,-0.019298883154988,0.001411014702171,-0.019767919555306,0.314890593290329,-0.014838037081063,0.013111500069499));
res += mul(Get(s4,-dx,-dy), float4x4(0.120803423225880,0.080066993832588,0.096715144813061,-0.085399523377419,0.046793006360531,-0.011648842133582,-0.016491141170263,0.002475889166817,0.249835312366486,0.292534500360489,-0.061785567551851,-0.075627982616425,0.036817435175180,-0.073766648769379,0.055881500244141,0.082373805344105));
res += mul(Get(s4,-dx,0), float4x4(0.153603613376617,-0.304819703102112,-0.012352834455669,-0.059719089418650,-0.035927243530750,-0.035625167191029,-0.013132630847394,0.018001833930612,0.016041973605752,0.066856257617474,-0.227984368801117,0.138394862413406,-0.020487783476710,-0.067891247570515,-0.013135544955730,-0.155071407556534));
res += mul(Get(s4,-dx,dy), float4x4(-0.069741576910019,-0.066234283149242,0.025497311726213,0.041741002351046,-0.026174280792475,-0.079198889434338,-0.029991913586855,0.014017790555954,0.075825914740562,0.026432285085320,-0.112674266099930,-0.001848187413998,0.056836508214474,-0.086009971797466,0.002278186380863,-0.018732450902462));
res += mul(Get(s4,0,-dy), float4x4(0.193600296974182,-0.020058784633875,-0.026672922074795,0.010787585750222,0.098588533699512,-0.081704698503017,-0.073168173432350,-0.154208377003670,0.179386198520660,0.115863375365734,-0.220187515020370,-0.051066271960735,-0.102769099175930,-0.018552782014012,-0.052332315593958,-0.046434566378593));
res += mul(Get(s4,0,0), float4x4(0.051250699907541,-0.004615112207830,-0.063997149467468,0.201594978570938,0.046096108853817,0.025388984009624,-0.119210220873356,0.012038163840771,-0.106389202177525,-0.155397370457649,-0.205559894442558,0.056184958666563,-0.005182490684092,-0.051873434334993,-0.032790932804346,-0.107658840715885));
res += mul(Get(s4,0,dy), float4x4(0.183777973055840,-0.077149316668510,0.008772849105299,0.059939060360193,-0.075446344912052,-0.015645151957870,-0.021851629018784,-0.104051239788532,0.054675094783306,-0.031457457691431,-0.152892798185349,-0.052205689251423,-0.104588344693184,-0.038752354681492,-0.023200288414955,-0.014803882688284));
res += mul(Get(s4,dx,-dy), float4x4(-0.178839430212975,-0.074379533529282,0.012702278792858,-0.038118410855532,0.075439184904099,0.034586094319820,0.005079892463982,-0.056493043899536,-0.127343267202377,0.038028225302696,-0.133979082107544,0.016623776406050,0.028480689972639,0.042231239378452,-0.021800698712468,0.063833795487881));
res += mul(Get(s4,dx,0), float4x4(-0.190794751048088,-0.101521119475365,-0.079282462596893,0.138473540544510,0.059606395661831,-0.036776281893253,-0.018419411033392,-0.005647181998938,0.124379321932793,-0.075016796588898,-0.035787247121334,-0.033966951072216,0.108240127563477,-0.160201370716095,-0.154419958591461,0.048774801194668));
res += mul(Get(s4,dx,dy), float4x4(0.016995603218675,0.099910371005535,-0.177169218659401,-0.054138418287039,0.026879329234362,0.032223865389824,0.041349727660418,-0.074979685246944,-0.194303706288338,0.056941129267216,-0.025657068938017,-0.022283757105470,-0.067287318408489,0.093739897012711,0.020411727949977,0.019466172903776));
res += mul(Get(s5,-dx,-dy), float4x4(0.092045091092587,0.180736988782883,0.033101882785559,0.043164223432541,-0.160043179988861,0.120570018887520,-0.036430709064007,0.000637106830254,0.220574274659157,0.172973692417145,0.017192345112562,-0.012913515791297,0.236873805522919,0.175561472773552,-0.092186532914639,-0.013241370208561));
res += mul(Get(s5,-dx,0), float4x4(-0.113924995064735,-0.048841368407011,-0.075493387877941,0.168705344200134,-0.034045632928610,0.050176497548819,-0.060918450355530,-0.071621686220169,-0.020469835028052,-0.024797456339002,0.060160860419273,-0.028040215373039,-0.059304654598236,0.308999150991440,-0.153607517480850,-0.018900996074080));
res += mul(Get(s5,-dx,dy), float4x4(0.002893618773669,0.063531510531902,-0.000146984617459,-0.065832637250423,0.083130069077015,0.015924120321870,-0.064959719777107,-0.021622706204653,-0.081984303891659,-0.102645024657249,0.092684164643288,0.057404160499573,-0.043494369834661,0.024523170664907,-0.207262024283409,0.037965327501297));
res += mul(Get(s5,0,-dy), float4x4(-0.092705219984055,-0.112934872508049,0.046653207391500,0.100992292165756,-0.330191552639008,0.102894358336926,-0.095041505992413,-0.074437081813812,0.138519853353500,-0.158913388848305,0.037802930921316,-0.001539266086183,0.059450916945934,-0.128686040639877,-0.107833698391914,-0.079607993364334));
res += mul(Get(s5,0,0), float4x4(0.056287869811058,-0.090002842247486,0.063572436571121,-0.080034017562866,0.090075045824051,-0.103623762726784,-0.014556201174855,-0.076207190752029,0.188543975353241,-0.014457252807915,0.049877539277077,-0.020096240565181,-0.076679497957230,0.066548228263855,-0.029815049842000,-0.113708868622780));
res += mul(Get(s5,0,dy), float4x4(0.060584932565689,-0.011699383147061,0.155146181583405,-0.022151831537485,0.085813932120800,-0.189582005143166,0.120373584330082,0.063806697726250,-0.041680883616209,0.048366647213697,-0.124796420335770,0.150215014815331,0.116735398769379,0.105783358216286,-0.221808046102524,-0.033946689218283));
res += mul(Get(s5,dx,-dy), float4x4(0.044658623635769,-0.264120846986771,-0.067830830812454,-0.022544696927071,-0.013717724941671,-0.191949874162674,0.202774658799171,0.049120370298624,-0.100149415433407,-0.000117968644190,-0.203115642070770,0.071717947721481,-0.088226340711117,0.118298761546612,-0.052619434893131,-0.004206317942590));
res += mul(Get(s5,dx,0), float4x4(-0.059737484902143,-0.275144696235657,-0.040371902287006,-0.045159257948399,0.005392205435783,-0.274414449930191,-0.010196119546890,0.082039102911949,-0.072674050927162,-0.077379986643791,-0.025487489998341,-0.033522382378578,-0.069456823170185,-0.129959553480148,-0.161766529083252,0.015893956646323));
res += mul(Get(s5,dx,dy), float4x4(-0.189653322100639,0.079518780112267,-0.120878793299198,0.043784443289042,0.112511709332466,-0.096331454813480,-0.108112655580044,0.013071273453534,0.086993508040905,0.142920657992363,-0.098348617553711,0.084658019244671,0.201974257826805,-0.070014208555222,-0.183459341526031,-0.178299829363823));
res = max(float4(0, 0, 0, 0), res) + float4(-0.185761317610741,-0.237688228487968,0.014623931609094,0.459564745426178) * min(float4(0, 0, 0, 0), res);
return res;
}