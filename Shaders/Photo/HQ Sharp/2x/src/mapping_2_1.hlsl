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
float4 res = float4(-0.277732938528061,-0.070704035460949,-0.259953200817108,-0.048259146511555);
res += mul(Get(s0,-dx,-dy), float4x4(-0.000152504726429,-0.000017086473235,-0.000104103703052,-0.000528273347300,-0.172830596566200,-0.054806910455227,-0.254121303558350,0.043837379664183,-0.006792275700718,-0.024860823526978,-0.007039417978376,0.008207281120121,0.021126443520188,-0.051093477755785,0.045482598245144,-0.030043030157685));
res += mul(Get(s0,-dx,0), float4x4(-0.000164323559147,-0.000006427565495,-0.000127900813823,-0.000525723153260,0.157678082585335,-0.028603671118617,0.113992981612682,-0.054386939853430,0.028294874355197,-0.090689949691296,-0.043555170297623,0.013846823945642,-0.006388026289642,-0.085608571767807,0.113409578800201,-0.108463123440742));
res += mul(Get(s0,-dx,dy), float4x4(-0.000142519871588,0.000022813033866,-0.000118908559671,-0.000504398485646,0.175298407673836,-0.040108174085617,-0.003793984884396,0.031912900507450,-0.039991579949856,-0.089326456189156,0.035958427935839,0.100303813815117,0.004069531336427,-0.109940737485886,0.104028277099133,-0.053434256464243));
res += mul(Get(s0,0,-dy), float4x4(-0.000173284250195,0.000013529894204,-0.000113862668513,-0.000525610696059,-0.061074778437614,0.039888162165880,-0.375188231468201,0.024911144748330,-0.034635454416275,0.078992389142513,-0.013241446577013,-0.030805125832558,-0.024124527350068,0.002228122903034,0.022066395729780,-0.171089217066765));
res += mul(Get(s0,0,0), float4x4(-0.000186644901987,0.000016830059394,-0.000139132011100,-0.000523283088114,-0.029104154556990,-0.050773810595274,0.074838705360889,-0.031658865511417,-0.007560642436147,0.076434656977654,0.006544444244355,-0.070869334042072,-0.008557440713048,-0.067198090255260,0.025829279795289,-0.146163910627365));
res += mul(Get(s0,0,dy), float4x4(-0.000161763426149,0.000039548576751,-0.000129038584419,-0.000502046023030,0.080455332994461,-0.011412393301725,0.043806165456772,0.028721498325467,0.003131168661639,0.032581817358732,-0.032663874328136,0.001620319089852,0.045140929520130,-0.071417659521103,0.143266215920448,-0.058649808168411));
res += mul(Get(s0,dx,-dy), float4x4(-0.000160945885000,0.000016376845451,-0.000109196625999,-0.000561388616916,-0.052956443279982,0.024015657603741,-0.062198273837566,-0.071143388748169,0.094753600656986,0.056834749877453,-0.041946113109589,-0.108651541173458,0.002450552303344,-0.005024590063840,-0.006277586799115,-0.076211929321289));
res += mul(Get(s0,dx,0), float4x4(-0.000171372215846,0.000019336885089,-0.000133484092657,-0.000562839210033,-0.043348997831345,0.008375733159482,-0.076709643006325,-0.111354552209377,0.022107303142548,0.045316256582737,0.016104185953736,-0.100038960576057,-0.023260321468115,0.018923502415419,-0.064196549355984,-0.155300870537758));
res += mul(Get(s0,dx,dy), float4x4(-0.000148775478010,0.000040318882384,-0.000124424041132,-0.000545821967535,-0.055087387561798,-0.009923621080816,-0.046836353838444,-0.025841407477856,0.108462445437908,0.025997189804912,-0.010059661231935,-0.010936323553324,0.039933618158102,-0.013967544771731,0.016831967979670,-0.066633902490139));
res += mul(Get(s1,-dx,-dy), float4x4(-0.087179616093636,-0.016932794824243,-0.018056593835354,0.002847455907613,0.001739178434946,-0.004400643520057,0.006150195840746,-0.008765459060669,-0.000964963692240,0.013672393746674,-0.012037729844451,-0.052203495055437,-0.099990352988243,-0.014877374283969,-0.085672609508038,0.080863356590271));
res += mul(Get(s1,-dx,0), float4x4(0.107549525797367,-0.021407496184111,0.264804899692535,-0.119088336825371,-0.055257569998503,0.095255449414253,0.018453283235431,-0.015508628450334,0.006981634069234,-0.051124893128872,0.021020369604230,-0.043059449642897,-0.124286971986294,-0.038948751986027,-0.096359699964523,0.178717613220215));
res += mul(Get(s1,-dx,dy), float4x4(0.033496644347906,-0.046611793339252,0.044152431190014,-0.043612875044346,-0.033068757504225,-0.014375565573573,-0.033187221735716,-0.018917452543974,0.006984621752053,-0.011146804317832,-0.009791325777769,0.013873924501240,-0.064706869423389,-0.012780130840838,-0.048173539340496,-0.009689365513623));
res += mul(Get(s1,0,-dy), float4x4(0.035218972712755,-0.000422684533987,0.042798385024071,0.046668883413076,0.021811855956912,-0.033980075269938,0.047681830823421,-0.067355528473854,-0.002322183689103,0.013169044628739,0.019956005737185,-0.161950841546059,-0.034002680331469,-0.074051059782505,0.061549179255962,0.083983249962330));
res += mul(Get(s1,0,0), float4x4(-0.101564146578312,-0.008735580369830,0.092890508472919,0.027572887018323,-0.071517057716846,0.027359828352928,-0.051869139075279,0.007772821933031,0.008286559022963,0.012547291815281,0.061422374099493,-0.027705930173397,-0.014772986061871,-0.092482119798660,0.101551085710526,-0.124333433806896));
res += mul(Get(s1,0,dy), float4x4(-0.075455524027348,0.038440540432930,0.034877534955740,0.019754784181714,-0.014564220793545,0.095917470753193,-0.039087746292353,0.075113557279110,0.005411013029516,-0.017587201669812,-0.014226234517992,0.035633511841297,0.031280260533094,-0.028728608042002,0.079085223376751,-0.073352314531803));
res += mul(Get(s1,dx,-dy), float4x4(-0.012106719426811,0.003143124282360,0.089809574186802,-0.003096915315837,-0.050299298018217,-0.011893078684807,0.022704353556037,0.030534997582436,0.037254523485899,-0.077208906412125,0.170840457081795,-0.046194668859243,-0.058870710432529,0.033648099750280,-0.012982917949557,-0.055709153413773));
res += mul(Get(s1,dx,0), float4x4(-0.042755238711834,0.008143962360919,0.027936520054936,-0.115105591714382,-0.071821652352810,0.064291559159756,-0.069463968276978,0.046456482261419,-0.089501634240150,-0.087731957435608,-0.039871603250504,0.035850591957569,0.054000299423933,-0.036982916295528,0.014714459888637,-0.075346790254116));
res += mul(Get(s1,dx,dy), float4x4(-0.070897482335567,-0.032403923571110,0.067133419215679,0.032662358134985,-0.077551990747452,0.014997042715549,-0.019677137956023,0.035296659916639,-0.018648335710168,-0.051193207502365,0.048417109996080,-0.032938640564680,0.027891134843230,-0.009025515988469,0.058260194957256,-0.013705783523619));
res += mul(Get(s2,-dx,-dy), float4x4(0.019567105919123,-0.092313989996910,-0.114522419869900,0.389387726783752,0.060633126646280,-0.009417445398867,0.017445430159569,-0.029069608077407,0.000287561852019,0.000247984600719,-0.000002018493888,0.000895506527741,-0.025794705376029,-0.143869400024414,-0.135017827153206,-0.064459122717381));
res += mul(Get(s2,-dx,0), float4x4(0.088808886706829,-0.014254068024457,0.064568467438221,-0.171320304274559,0.061894219368696,0.024450028315187,0.032728265970945,-0.023598901927471,0.000230332967476,0.000425679289037,0.000049981543270,0.000896707933862,-0.156246602535248,-0.295920640230179,-0.195738077163696,0.233974650502205));
res += mul(Get(s2,-dx,dy), float4x4(0.003470274619758,-0.138110965490341,-0.018543269485235,-0.040295526385307,0.008361531421542,-0.012496596202254,-0.062782347202301,-0.019072432070971,0.000304321118165,0.000373675778974,0.000032589818147,0.000908637419343,-0.039400070905685,-0.072652392089367,-0.099608227610588,0.130034416913986));
res += mul(Get(s2,0,-dy), float4x4(0.284629911184311,-0.090820357203484,0.125994086265564,-0.097287915647030,0.110805206000805,-0.000275523518212,0.108992747962475,-0.000149232611875,0.000332166498993,0.000311810174026,-0.000014128212570,0.000900282058865,-0.103020951151848,0.043344143778086,0.051545768976212,0.046886999160051));
res += mul(Get(s2,0,0), float4x4(-0.010050550103188,0.027656042948365,-0.064934834837914,-0.066100500524044,0.061785258352757,-0.001963993068784,0.012371552176774,-0.065023057162762,0.000257065781625,0.000397818308556,0.000031834602851,0.000895890174434,0.028752347454429,-0.024827729910612,-0.004247280303389,0.131026178598404));
res += mul(Get(s2,0,dy), float4x4(0.052196346223354,0.073559269309044,-0.001423470559530,-0.005628663115203,0.036526955664158,0.038235247135162,-0.008747154846787,-0.049665857106447,0.000344735133694,0.000391690526158,0.000014840115000,0.000897343212273,-0.051584992557764,-0.026775542646646,0.021956477314234,-0.001140023698099));
res += mul(Get(s2,dx,-dy), float4x4(0.038192901760340,-0.036298479884863,0.104899831116199,-0.125216379761696,0.000215986015974,0.024050962179899,0.016858037561178,0.009350880980492,0.000307453185087,0.000269061565632,-0.000001517324563,0.000882748223376,-0.118094898760319,-0.006632689386606,0.015528396703303,0.024647317826748));
res += mul(Get(s2,dx,0), float4x4(0.041917812079191,-0.021963104605675,-0.046266835182905,-0.084150835871696,-0.000822789210360,0.012027429416776,-0.028025347739458,-0.018223619088531,0.000235753279412,0.000268206174951,0.000038639391278,0.000885618967004,-0.051166381686926,-0.000210930331377,0.076179921627045,-0.018177527934313));
res += mul(Get(s2,dx,dy), float4x4(0.096228644251823,-0.021719204261899,0.064068108797073,-0.038621969521046,-0.045337475836277,0.002935481257737,-0.002062318846583,0.005435236264020,0.000326676177792,0.000249223608989,0.000020899271476,0.000875495432410,-0.103056050837040,0.020378453657031,0.062634557485580,0.034222237765789));
res += mul(Get(s3,-dx,-dy), float4x4(0.039126362651587,0.003893327433616,0.027388697490096,0.027105037122965,-0.057247940450907,0.021994434297085,-0.105898998677731,0.038053382188082,-0.056315779685974,-0.011585374362767,0.008126809261739,0.015154276043177,0.044828239828348,-0.035423543304205,0.056007448583841,-0.033786181360483));
res += mul(Get(s3,-dx,0), float4x4(0.056471060961485,0.037342909723520,0.057589545845985,0.002190489089116,0.036805666983128,0.101561799645424,0.141391560435295,-0.304774969816208,-0.035019472241402,-0.014317828230560,0.008382180705667,0.014833710156381,0.092112287878990,-0.056581903249025,0.092789910733700,-0.004251386038959));
res += mul(Get(s3,-dx,dy), float4x4(0.005586191546172,-0.028531072661281,0.023381747305393,0.036470729857683,-0.033985566347837,-0.086063534021378,0.084547609090805,0.100523151457310,-0.038586392998695,-0.003118412569165,-0.001517708064057,-0.028385212644935,0.062115322798491,-0.031244764104486,0.049339365214109,-0.123060449957848));
res += mul(Get(s3,0,-dy), float4x4(0.049208752810955,0.019560700282454,0.028077060356736,0.012830575928092,0.211069151759148,0.067124828696251,-0.009382563643157,-0.038045197725296,-0.111646451056004,0.015088583342731,0.012393230572343,-0.016870407387614,-0.014071974903345,-0.000761941540986,-0.039734512567520,-0.018013920634985));
res += mul(Get(s3,0,0), float4x4(0.002655508462340,0.100043751299381,-0.016823533922434,-0.009273936972022,-0.272032946348190,0.418415606021881,-0.185914099216461,0.081431932747364,-0.055015660822392,0.044029340147972,0.004656265955418,-0.042050793766975,-0.033083200454712,0.033812373876572,0.032035730779171,0.044965822249651));
res += mul(Get(s3,0,dy), float4x4(0.008093918673694,-0.009902855381370,0.007080673705786,0.034625109285116,0.059982214123011,0.130687087774277,0.073288522660732,-0.015310054644942,-0.106596536934376,0.009905720129609,-0.011445947922766,-0.040102977305651,0.085367590188980,-0.041752189397812,0.055747933685780,0.004467069637030));
res += mul(Get(s3,dx,-dy), float4x4(0.051659129559994,-0.011730208061635,0.006940944585949,-0.012920111417770,0.048807442188263,0.035049766302109,-0.011956212110817,-0.025489967316389,-0.005074785556644,-0.032329797744751,0.052336581051350,0.016670605167747,0.009435110725462,0.052529308944941,-0.020332688465714,0.032273016870022));
res += mul(Get(s3,dx,0), float4x4(0.040373049676418,0.085281483829021,0.017565319314599,-0.017894098535180,0.103905372321606,-0.180704042315483,-0.087411299347878,0.033608648926020,-0.012900955043733,-0.040687933564186,0.056277599185705,-0.005812447983772,0.044852767139673,0.149954706430435,0.022958263754845,-0.030707348138094));
res += mul(Get(s3,dx,dy), float4x4(0.032705206423998,-0.024354973807931,0.020166264846921,-0.016349231824279,-0.044021230190992,-0.046447940170765,0.021065438166261,0.023007135838270,0.015877231955528,0.008710827678442,0.069212988018990,-0.019337410107255,0.014526226557791,0.032594740390778,0.024133944883943,0.025458127260208));
res += mul(Get(s4,-dx,-dy), float4x4(-0.040003411471844,-0.053446259349585,-0.023344142362475,0.003389300080016,-0.000343754712958,-0.000200440175831,-0.000238446431467,-0.000639059988316,0.045352261513472,-0.058462694287300,0.059593252837658,-0.011211927048862,-0.106973119080067,-0.002314392710105,-0.004177485127002,-0.053733292967081));
res += mul(Get(s4,-dx,0), float4x4(0.004038434009999,-0.062718383967876,-0.072598680853844,-0.018759878352284,-0.000355854106601,-0.000218798755668,-0.000248374475632,-0.000673995702527,0.006111333146691,-0.037397123873234,0.028065903112292,0.029653696343303,0.046570606529713,-0.025282954797149,-0.023719169199467,0.101937688887119));
res += mul(Get(s4,-dx,dy), float4x4(0.065335489809513,-0.002383716870099,-0.068911820650101,-0.010452763177454,-0.000322470295941,-0.000198152411031,-0.000246376701398,-0.000659729936160,0.038466524332762,-0.071480244398117,-0.050976894795895,-0.007875489071012,-0.058076981455088,-0.013457451015711,-0.036560632288456,-0.034874230623245));
res += mul(Get(s4,0,-dy), float4x4(-0.028356580063701,0.046140499413013,-0.038968235254288,-0.036261096596718,-0.000365696556401,-0.000215377163840,-0.000246981391683,-0.000616179138888,0.008319709450006,-0.037956543266773,0.001731922966428,0.019777322188020,-0.084406197071075,0.365645766258240,-0.049239717423916,0.016534339636564));
res += mul(Get(s4,0,0), float4x4(-0.012804269790649,0.018436653539538,-0.056481491774321,-0.033038966357708,-0.000377475662390,-0.000220437388634,-0.000257868057815,-0.000656959309708,0.029560789465904,0.053811427205801,-0.023432597517967,-0.020925149321556,0.257325828075409,-0.225071087479591,0.146688401699066,0.009576607495546));
res += mul(Get(s4,0,dy), float4x4(0.047160249203444,0.004439510870725,-0.048386048525572,-0.100012689828873,-0.000344622676494,-0.000213700783206,-0.000255740451394,-0.000630524591543,-0.082216650247574,0.140444681048393,-0.006034613121301,-0.108851499855518,0.060911789536476,0.303643405437469,0.041529640555382,-0.094601325690746));
res += mul(Get(s4,dx,-dy), float4x4(0.003107065102085,0.066560141742229,-0.027073459699750,-0.055381570011377,-0.000357316079317,-0.000209030215046,-0.000249096308835,-0.000602542422712,0.054818488657475,-0.062010318040848,0.085000604391098,0.020009133964777,0.047882214188576,0.007072116248310,0.015665795654058,0.011581875383854));
res += mul(Get(s4,dx,0), float4x4(0.012157358229160,0.027620175853372,-0.015363273210824,-0.012393507175148,-0.000368144392269,-0.000214281026274,-0.000259332096903,-0.000640260695945,0.065372876822948,0.017298726364970,0.024845384061337,-0.048556994646788,0.187916085124016,0.037535913288593,0.119704619050026,-0.102594614028931));
res += mul(Get(s4,dx,dy), float4x4(0.030286638066173,0.008500863797963,-0.038648728281260,-0.112463012337685,-0.000336436583893,-0.000202146256925,-0.000257032050285,-0.000609979731962,0.013460782356560,0.058052942156792,-0.006053576711565,-0.061380855739117,0.053130909800529,-0.066650331020355,-0.015354774892330,-0.078640252351761));
res += mul(Get(s5,-dx,-dy), float4x4(0.017765657976270,0.077041238546371,0.034664694219828,0.031805906444788,0.063230715692043,-0.061042480170727,0.035296685993671,0.046513196080923,0.046707198023796,-0.013484232127666,0.050079390406609,-0.005267827305943,-0.031614076346159,-0.038759719580412,0.008305624127388,-0.003399305511266));
res += mul(Get(s5,-dx,0), float4x4(0.207988545298576,0.055726677179337,-0.011757392436266,0.329635083675385,0.143791913986206,-0.087257452309132,0.138821184635162,0.011795440688729,-0.017025325447321,-0.027940878644586,-0.036376122385263,0.054640810936689,-0.135446116328239,-0.025719329714775,-0.044453591108322,0.005281180143356));
res += mul(Get(s5,-dx,dy), float4x4(0.217603355646133,0.123940691351891,0.014710727147758,0.097752347588539,0.049232244491577,-0.047391846776009,0.045353062450886,-0.192147210240364,0.004807930905372,-0.022322598844767,0.019021218642592,0.126057937741280,-0.079659983515739,0.004183069802821,-0.067974664270878,-0.040235985070467));
res += mul(Get(s5,0,-dy), float4x4(-0.073665253818035,0.104705445468426,-0.017039354890585,0.014899456873536,-0.123496912419796,0.099464036524296,-0.090205714106560,-0.060475111007690,0.067612677812576,0.068179793655872,0.021708076819777,0.048766203224659,0.067698396742344,-0.073023028671741,0.032394673675299,0.037344578653574));
res += mul(Get(s5,0,0), float4x4(0.353189438581467,-0.018791297450662,0.290661811828613,-0.104331754148006,0.140553578734398,0.150332584977150,-0.087103337049484,0.093517936766148,0.041390590369701,0.003356823464856,-0.021055094897747,-0.037490740418434,-0.082461282610893,0.040320131927729,-0.007280349731445,0.413134157657623));
res += mul(Get(s5,0,dy), float4x4(0.332022458314896,0.026712220162153,0.157350882887840,0.004401363898069,-0.105439499020576,0.018432890996337,0.045012339949608,-0.118930697441101,0.023784123361111,0.043610081076622,0.002023552078754,0.066904418170452,-0.043623905628920,0.116518668830395,-0.052110858261585,-0.232073396444321));
res += mul(Get(s5,dx,-dy), float4x4(0.010076275095344,0.003611004445702,0.088390216231346,0.037451401352882,-0.092138066887856,0.014377022162080,-0.101679600775242,-0.021823901683092,0.092592112720013,0.025949979200959,-0.016653381288052,-0.044813424348831,0.032824441790581,0.004417193122208,-0.103268340229988,0.019687768071890));
res += mul(Get(s5,dx,0), float4x4(0.004195247776806,0.018514728173614,0.090324677526951,0.051039490848780,0.047117248177528,-0.183260157704353,0.086823597550392,-0.024639952927828,0.057687200605869,0.023487851023674,-0.004450873471797,-0.051325429230928,0.471414208412170,0.035239715129137,0.228183746337891,-0.034722160547972));
res += mul(Get(s5,dx,dy), float4x4(-0.065116457641125,0.106995858252048,0.066231802105904,0.038149379193783,-0.007970653474331,-0.000384699786082,-0.099513374269009,-0.052107155323029,0.056980695575476,-0.001156826969236,-0.020020367577672,-0.045617364346981,0.177975952625275,0.044379901140928,-0.102412499487400,-0.035510119050741));
res = max(float4(0, 0, 0, 0), res) + float4(0.004884965717793,0.013195275329053,0.000042296444008,-0.042221479117870) * min(float4(0, 0, 0, 0), res);
return res;
}
