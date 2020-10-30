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
res += mul(Get(s0,-dx,-dy), float4x4(-0.017262294888496,0.048756681382656,-0.073327779769897,-0.089535124599934,0.066200174391270,0.095452137291431,0.775224328041077,-0.095947712659836,-0.098246097564697,-0.027017928659916,-0.165328890085220,0.013477171771228,0.023957127705216,0.135443866252899,-0.107377395033836,-0.153857871890068));
res += mul(Get(s0,-dx,0), float4x4(0.002543128095567,-0.089616335928440,0.078406862914562,-0.217693477869034,-0.075029462575912,0.235296025872231,0.721919953823090,0.583406329154968,-0.139129027724266,-0.031771507114172,-0.107258662581444,0.104251049458981,0.141197368502617,-0.086593486368656,0.051715232431889,-0.033090502023697));
res += mul(Get(s0,-dx,dy), float4x4(-0.177350074052811,0.000663107261062,0.049098782241344,-0.220907926559448,-0.054946996271610,0.131783142685890,0.378582894802094,1.007962584495544,-0.155865460634232,0.009115883149207,0.012487347237766,-0.021680183708668,0.193010613322258,0.175917357206345,0.082612514495850,-0.219324916601181));
res += mul(Get(s0,0,-dy), float4x4(-0.068445503711700,0.097411960363388,-0.124450467526913,0.244992583990097,-0.002363325562328,0.132373273372650,0.128204688429832,-0.238021925091743,-0.064449489116669,-0.061157971620560,-0.106379665434361,-0.168521180748940,0.115710005164146,0.038773164153099,-0.140903100371361,-0.074208863079548));
res += mul(Get(s0,0,0), float4x4(0.131616026163101,-0.054174803197384,0.349959403276443,0.052108682692051,-0.078989081084728,-0.274939626455307,-0.109988197684288,0.123529829084873,0.005746687296778,-0.019004207104445,0.052972767502069,-0.030153708532453,0.017690984532237,-0.191706553101540,0.008549770340323,0.142450124025345));
res += mul(Get(s0,0,dy), float4x4(-0.132984131574631,0.078518465161324,0.426511645317078,0.028576085343957,-0.075383298099041,-0.239343836903572,-0.110590033233166,0.703393220901489,-0.023769596591592,-0.022065490484238,0.135775074362755,-0.014692133292556,0.071069277822971,-0.194987058639526,0.173066481947899,0.129901185631752));
res += mul(Get(s0,dx,-dy), float4x4(-0.103270977735519,0.061136484146118,0.222417175769806,0.338029444217682,-0.087462313473225,0.139138385653496,-0.236117020249367,-0.109468676149845,-0.037956196814775,-0.126751080155373,-0.121188022196293,-0.181139260530472,-0.070322908461094,0.105429798364639,-0.165402650833130,-0.108493193984032));
res += mul(Get(s0,dx,0), float4x4(0.247747451066971,-0.047841507941484,0.262689769268036,-0.092209532856941,-0.123697094619274,-0.256448864936829,-0.178324118256569,-0.061930853873491,-0.011260440573096,-0.118046544492245,0.035265550017357,-0.095131412148476,-0.089918531477451,0.043348263949156,-0.092017680406570,-0.070261247456074));
res += mul(Get(s0,dx,dy), float4x4(-0.017104463651776,0.113925151526928,0.159089922904968,-0.104805082082748,-0.161526784300804,-0.131851926445961,-0.191551581025124,0.315955340862274,-0.051727280020714,-0.107871972024441,0.005953556392342,0.003754717530683,0.032030276954174,-0.030342536047101,0.072449728846550,-0.023438997566700));
res += mul(Get(s1,-dx,-dy), float4x4(0.149307683110237,-0.153065219521523,-0.148937270045280,0.136446610093117,0.325021356344223,-0.052605260163546,0.027635594829917,-0.084296718239784,0.153057396411896,-0.047083009034395,-0.083583697676659,0.198417201638222,0.258093118667603,0.271484971046448,-0.123388551175594,-0.052671890705824));
res += mul(Get(s1,-dx,0), float4x4(0.172526732087135,-0.067881867289543,0.028095522895455,-0.155570790171623,0.166010543704033,-0.131700053811073,-0.047611333429813,-0.038751602172852,0.236651524901390,-0.007175345905125,0.322464048862457,-0.022818528115749,0.053765326738358,-0.039202466607094,-0.120366267859936,0.114007122814655));
res += mul(Get(s1,-dx,dy), float4x4(0.091403678059578,-0.097874097526073,-0.059914845973253,-0.217583909630775,0.243748053908348,-0.131614610552788,0.009578851982951,0.044598326086998,0.085024230182171,-0.022008908912539,-0.037823200225830,-0.093795992434025,0.050046816468239,-0.061287250369787,0.190828680992126,0.063212998211384));
res += mul(Get(s1,0,-dy), float4x4(-0.127398446202278,-0.046525262296200,-0.033958464860916,0.257712632417679,0.019702086225152,-0.123036816716194,-0.069341629743576,-0.283892303705215,-0.122489809989929,0.044740639626980,0.030152270570397,0.180694818496704,-0.183452114462852,-0.038268823176622,0.007027783431113,-0.043063685297966));
res += mul(Get(s1,0,0), float4x4(0.028357366099954,0.160654097795486,0.213387861847878,-0.028816577047110,0.148034542798996,-0.106002666056156,-0.040888588875532,-0.096137903630733,0.132121771574020,0.117153644561768,0.370614290237427,0.061630036681890,-0.117058463394642,-0.074325494468212,-0.034058775752783,0.149967059493065));
res += mul(Get(s1,0,dy), float4x4(-0.018508894369006,0.071277618408203,-0.019648009911180,-0.117905341088772,0.374352663755417,-0.076374076306820,-0.097963944077492,0.175499856472015,0.320277810096741,0.026845239102840,0.048996269702911,0.038878753781319,-0.027308169752359,-0.136948585510254,0.260548621416092,0.099210239946842));
res += mul(Get(s1,dx,-dy), float4x4(-0.066232711076736,-0.125586465001106,0.081979312002659,0.032793868333101,-0.071759112179279,-0.053338605910540,-0.072702080011368,-0.238965526223183,-0.087905280292034,-0.038642153143883,0.125063359737396,-0.138115540146828,-0.105329498648643,0.009195737540722,-0.179961577057838,-0.186106130480766));
res += mul(Get(s1,dx,0), float4x4(-0.005909657105803,-0.052173640578985,0.385443121194839,0.087619476020336,-0.013305711559951,-0.103934824466705,-0.041471224278212,-0.097960330545902,0.183784902095795,-0.049345623701811,0.231888949871063,0.080192372202873,-0.050210025161505,-0.048023551702499,0.046047709882259,0.036415699869394));
res += mul(Get(s1,dx,dy), float4x4(0.001350555685349,0.129530116915703,0.136219859123230,-0.136680841445923,0.161745086312294,0.009066150523722,-0.045897327363491,0.038016997277737,-0.047311905771494,-0.081255920231342,0.091842226684093,0.078395880758762,-0.118248336017132,-0.132330656051636,0.590072989463806,0.054397515952587));
res += mul(Get(s2,-dx,-dy), float4x4(0.125954940915108,-0.221828073263168,-0.124022834002972,-0.013819579035044,0.137071698904037,-0.163963153958321,-0.209947377443314,-0.136285319924355,0.014102244749665,-0.193209633231163,-0.024743359535933,-0.134949252009392,0.364483863115311,0.104771897196770,-0.175372228026390,-0.146752297878265));
res += mul(Get(s2,-dx,0), float4x4(0.153806462883949,0.026749331504107,0.154211461544037,0.066463924944401,0.024579564109445,-0.185341060161591,-0.048642624169588,-0.057635508477688,0.024067418649793,-0.127216130495071,-0.005909035913646,-0.042067028582096,-0.074656173586845,0.193982452154160,-0.120876990258694,-0.011881205253303));
res += mul(Get(s2,-dx,dy), float4x4(-0.033133484423161,0.228504374623299,0.061606675386429,-0.185712695121765,0.001664884737693,0.241552099585533,-0.080422632396221,-0.144856721162796,-0.019357779994607,-0.019100727513433,-0.135269761085510,-0.153130233287811,-0.125165581703186,0.541801273822784,-0.253378868103027,0.028259279206395));
res += mul(Get(s2,0,-dy), float4x4(-0.151364296674728,0.045959256589413,0.100548438727856,-0.159599125385284,0.283855587244034,-0.100760214030743,-0.108372882008553,-0.114789739251137,-0.011837780475616,-0.171679466962814,-0.209798857569695,-0.118912935256958,0.014099541120231,0.060522701591253,0.172767952084541,-0.022131796926260));
res += mul(Get(s2,0,0), float4x4(-0.126123309135437,0.026642566546798,0.329994767904282,0.251919239759445,0.026195483282208,0.038044121116400,0.064723506569862,-0.045888118445873,0.095388308167458,0.059410843998194,0.107431054115295,-0.004300748463720,-0.025106934830546,0.646708965301514,-0.004123819991946,-0.102668054401875));
res += mul(Get(s2,0,dy), float4x4(-0.081360675394535,0.244676545262337,0.092223957180977,0.155200973153114,-0.047644168138504,0.267187297344208,0.036912713199854,-0.140650093555450,0.146961063146591,0.283945113420486,0.018786353990436,-0.130874961614609,-0.052098020911217,0.477004557847977,0.103377059102058,0.002673881361261));
res += mul(Get(s2,dx,-dy), float4x4(-0.127512231469154,0.158475965261459,0.409243851900101,-0.200220152735710,-0.111492320895195,0.015140777453780,-0.027929445728660,-0.095833063125610,0.094964392483234,-0.068992853164673,-0.077807985246181,-0.194937869906425,-0.060337219387293,0.569044351577759,0.409784555435181,0.015945028513670));
res += mul(Get(s2,dx,0), float4x4(-0.173304274678230,-0.005276546347886,0.372122108936310,0.071283511817455,-0.041999284178019,0.228725299239159,-0.039642360061407,-0.040246639400721,-0.039760619401932,0.103960931301117,0.055326722562313,-0.165237039327621,-0.057345442473888,0.555098414421082,0.007805404253304,0.050883222371340));
res += mul(Get(s2,dx,dy), float4x4(-0.124742358922958,-0.065121866762638,0.260273784399033,0.305014938116074,-0.044235352426767,-0.037974949926138,-0.121887639164925,-0.085925363004208,0.016402006149292,0.166573688387871,-0.035061791539192,-0.130008324980736,-0.027760216966271,-0.188286870718002,0.077422596514225,0.118412487208843));
res += mul(Get(s3,-dx,-dy), float4x4(-0.075287297368050,0.143392518162727,0.061065483838320,0.166009098291397,0.025647826492786,0.103825286030769,0.175123602151871,-0.036182649433613,0.124183215200901,-0.092487685382366,0.071854144334793,-0.177924737334251,-0.138472035527229,-0.182298988103867,-0.175325453281403,-0.110161095857620));
res += mul(Get(s3,-dx,0), float4x4(-0.028923181816936,0.231460005044937,0.026344353333116,0.253362804651260,-0.017706224694848,0.033041115850210,0.271103382110596,-0.059124995023012,-0.035679161548615,-0.075607940554619,0.029925482347608,-0.223293885588646,-0.146825179457664,-0.038366973400116,-0.110313430428505,-0.082727238535881));
res += mul(Get(s3,-dx,dy), float4x4(-0.255031198263168,0.177324116230011,-0.016674900427461,0.019161688163877,-0.024067500606179,-0.259901434183121,0.328137964010239,-0.084454007446766,-0.022597843781114,-0.123355500400066,0.151791289448738,0.639318823814392,-0.060872286558151,-0.052590541541576,-0.148567631840706,0.066087268292904));
res += mul(Get(s3,0,-dy), float4x4(-0.128177270293236,0.104902997612953,-0.067301720380783,0.167847856879234,-0.031208693981171,0.488312751054764,0.093691378831863,-0.080320790410042,0.575829148292542,0.069824412465096,0.018161075189710,-0.192626610398293,-0.048108447343111,-0.055907152593136,-0.105820477008820,-0.066254258155823));
res += mul(Get(s3,0,0), float4x4(-0.084404349327087,0.114752300083637,0.215221613645554,0.505632579326630,-0.064715430140495,-0.166538745164871,-0.079318135976791,-0.004891039337963,0.206304550170898,0.029152374714613,-0.115767419338226,-0.216096624732018,-0.058662798255682,0.020750582218170,-0.027174634858966,-0.020370149984956));
res += mul(Get(s3,0,dy), float4x4(-0.071585834026337,-0.122169919312000,0.185288622975349,0.236176952719688,-0.019811360165477,-0.151284456253052,-0.075612455606461,-0.123596139252186,-0.035985641181469,-0.201998010277748,-0.213033899664879,0.371675759553909,-0.020434388890862,-0.000419620773755,0.059055145829916,-0.075467869639397));
res += mul(Get(s3,dx,-dy), float4x4(-0.180069968104362,0.034837618470192,0.036761198192835,0.006518452893943,-0.111364886164665,0.309420466423035,-0.130163043737411,-0.009906304068863,0.435406208038330,-0.070948369801044,-0.197831943631172,-0.343054980039597,-0.267266809940338,-0.113773055374622,-0.153098359704018,-0.170160070061684));
res += mul(Get(s3,dx,0), float4x4(-0.126787841320038,0.153619512915611,0.013666875660419,0.212620213627815,-0.113866060972214,-0.111571066081524,-0.096508890390396,-0.091047510504723,0.658677875995636,-0.129133835434914,-0.153948530554771,-0.071155235171318,-0.118487097322941,-0.219013556838036,-0.074257344007492,-0.034150242805481));
res += mul(Get(s3,dx,dy), float4x4(-0.047185085713863,-0.016844786703587,0.475299417972565,0.084841951727867,-0.162942588329315,-0.203326001763344,-0.016305008903146,-0.188935175538063,0.322720289230347,-0.217150822281837,-0.285576432943344,0.455043524503708,-0.094410337507725,-0.076136626303196,-0.073606714606285,-0.077736780047417));
return max(float4(0,0,0,0), res);
}
