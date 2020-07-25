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
res += mul(Get(s0,-dx,-dy), float4x4(0.004701920319349,0.003422185778618,-0.002385839121416,0.009158926084638,-0.017573596909642,-0.065841883420944,0.007855704985559,0.002124864840880,-0.092609502375126,-0.075407527387142,0.075173050165176,0.172243058681488,0.018665991723537,0.011527755297720,0.024023842066526,-0.001624489785172));
res += mul(Get(s0,-dx,0), float4x4(-0.006114565301687,0.006001077126712,0.016601987183094,0.022753471508622,0.011868427507579,-0.013821665197611,-0.001725114649162,-0.021273348480463,-0.001747279195115,-0.010890030302107,-0.037521764636040,0.348294407129288,0.011125732213259,0.045397952198982,0.001968266442418,-0.018933108076453));
res += mul(Get(s0,-dx,dy), float4x4(-0.014721754938364,-0.009412470273674,-0.010462829843163,-0.001651165192015,0.013267315924168,-0.019163554534316,-0.008205655962229,-0.021621683612466,-0.107317432761192,0.024182604625821,-0.063214376568794,0.203252077102661,-0.011127805337310,0.067206948995590,0.012516618706286,-0.076236069202423));
res += mul(Get(s0,0,-dy), float4x4(-0.001987154828385,-0.018049255013466,-0.004331605508924,-0.032007917761803,-0.023835640400648,-0.069189235568047,0.008472274057567,0.013523284345865,-0.106521666049957,-0.019617203623056,0.072830490767956,-0.152908071875572,0.006341035477817,-0.013753364793956,0.062602773308754,0.005474657751620));
res += mul(Get(s0,0,0), float4x4(0.006304166745394,0.020415425300598,0.016368130221963,-0.000754982582293,0.017617953941226,-0.020509216934443,0.004889572504908,0.003053767373785,-0.014567757956684,0.225192859768867,-0.152832061052322,-0.180290207266808,0.006525169126689,-0.018258200958371,0.072328835725784,0.062048282474279));
res += mul(Get(s0,0,dy), float4x4(0.019226167351007,-0.007522049825639,-0.014580816030502,0.002510422375053,0.017233805730939,-0.008836786262691,-0.025198400020599,-0.056631013751030,-0.191940426826477,0.027616107836366,-0.166668683290482,-0.152212142944336,-0.007135862018913,-0.003820225829259,0.078814454376698,-0.006205658428371));
res += mul(Get(s0,dx,-dy), float4x4(0.033407613635063,0.008977736346424,-0.009590799920261,-0.030956504866481,0.013631731271744,-0.041672762483358,-0.008178449235857,-0.038422688841820,0.010449809953570,-0.093345418572426,0.052749358117580,-0.052616599947214,0.022595327347517,-0.000598138605710,0.066318213939667,-0.069795124232769));
res += mul(Get(s0,dx,0), float4x4(0.013210537843406,-0.012947370298207,-0.014263886027038,-0.023189244791865,0.029507966712117,-0.026992022991180,0.007933429442346,-0.018538357689977,0.179067373275757,-0.000847482297104,-0.137346789240837,-0.147775068879128,0.030935851857066,-0.023679375648499,-0.003811121452600,-0.026710540056229));
res += mul(Get(s0,dx,dy), float4x4(0.014771157875657,0.006959259975702,-0.023657819256186,-0.028840171173215,0.036284908652306,0.080019809305668,-0.045053966343403,-0.038642656058073,-0.023198526352644,-0.029758799821138,-0.124367304146290,-0.119696900248528,-0.011997805908322,-0.014483541250229,0.026408564299345,-0.037968568503857));
res += mul(Get(s1,-dx,-dy), float4x4(-0.009779412299395,0.002473738742992,-0.006043910048902,0.009756469167769,-0.064325101673603,-0.044059403240681,0.023365234956145,0.162751376628876,-0.045674573630095,0.069115735590458,-0.001844795770012,0.010683836415410,0.001983958762139,-0.012618256732821,-0.010639324784279,0.004653089679778));
res += mul(Get(s1,-dx,0), float4x4(-0.003351465100423,0.006196723785251,0.013002920895815,0.023588918149471,-0.014637195505202,0.031788617372513,-0.048614151775837,0.276298999786377,-0.035049047321081,0.058631230145693,-0.018213424831629,0.095272973179817,0.001599042443559,-0.002547947689891,0.005135944578797,0.000992725952528));
res += mul(Get(s1,-dx,dy), float4x4(0.005469221156090,-0.003526363754645,0.010363990440965,0.005937724839896,-0.046244844794273,0.031171629205346,-0.022739391773939,0.107318103313446,-0.035018224269152,-0.002426852704957,-0.018387980759144,0.087724640965462,0.009567252360284,0.009284435771406,-0.004082826897502,-0.009275168180466));
res += mul(Get(s1,0,-dy), float4x4(-0.022159028798342,0.003106032032520,0.011520938947797,-0.009960955940187,-0.067306965589523,-0.032014932483435,0.036757025867701,-0.071634404361248,-0.010652328841388,0.006852730643004,0.096434384584427,-0.016934290528297,-0.008805580437183,-0.015919370576739,-0.001736900652759,-0.002297071041539));
res += mul(Get(s1,0,0), float4x4(-0.008530290797353,0.020677953958511,-0.014003801159561,-0.001223076018505,-0.028223073109984,0.117872558534145,-0.091894477605820,-0.051380202174187,0.017507197335362,-0.022150691598654,0.099404007196426,0.139531761407852,0.002428661100566,0.013444748707116,0.013821377418935,0.014826592989266));
res += mul(Get(s1,0,dy), float4x4(-0.012029851786792,-0.005934777669609,0.015118421986699,0.010877626016736,-0.066766545176506,0.046140149235725,-0.076254554092884,-0.095033891499043,0.006188642233610,0.047255370765924,0.029391482472420,0.095136769115925,-0.020927483215928,-0.017600985243917,0.022172866389155,-0.002267597243190));
res += mul(Get(s1,dx,-dy), float4x4(-0.005697675049305,0.002500237897038,0.002507078228518,0.002748549915850,-0.027161741629243,-0.048676434904337,0.024937959387898,-0.112744003534317,0.028382427990437,-0.011868203058839,0.004351947922260,0.042873740196228,0.005934327375144,-0.010154237039387,-0.003743372624740,0.008085047826171));
res += mul(Get(s1,dx,0), float4x4(0.005116083193570,-0.004638039972633,-0.006173468194902,0.020897803828120,0.056042414158583,0.031876411288977,-0.091669514775276,-0.174551442265511,0.062838129699230,0.018822947517037,-0.000171467923792,0.171815574169159,0.016862893477082,-0.010758398100734,0.011032179929316,0.007399734109640));
res += mul(Get(s1,dx,dy), float4x4(-0.013120255433023,0.002254263032228,0.012716731987894,-0.013065877370536,-0.024612054228783,0.007528394460678,-0.074728794395924,-0.156819790601730,0.020661236718297,0.019261980429292,-0.048763759434223,0.046385753899813,0.025200808420777,0.007366029545665,0.009542657993734,0.010913199745119));
res += mul(Get(s2,-dx,-dy), float4x4(-0.051155198365450,-0.070269271731377,0.017629740759730,-0.105130985379219,0.006045931018889,0.025646179914474,-0.010243289172649,-0.017826318740845,0.015669204294682,0.048250898718834,-0.023112410679460,-0.070824526250362,-0.041805811226368,-0.001268617226742,0.016335427761078,0.011180615983903));
res += mul(Get(s2,-dx,0), float4x4(-0.049912601709366,-0.071079075336456,0.055382743477821,-0.141428917646408,0.013168204575777,0.014124149456620,-0.000663856510073,0.009100948460400,0.022727884352207,-0.012123147025704,0.022817423567176,-0.080517984926701,-0.015437297523022,0.031837929040194,-0.038211200386286,-0.015669912099838));
res += mul(Get(s2,-dx,dy), float4x4(-0.065212219953537,-0.079042591154575,-0.005655068904161,-0.168051078915596,0.018056757748127,-0.011952544562519,0.017326235771179,0.018320469185710,0.103215165436268,-0.000416440016124,0.076023310422897,0.016783609986305,-0.049951601773500,0.022008948028088,-0.062694668769836,0.011087853461504));
res += mul(Get(s2,0,-dy), float4x4(0.023467857390642,-0.016751945018768,0.040556788444519,0.007304185535759,0.009604788385332,-0.011890476569533,0.015248194336891,0.007852125912905,0.004656423348933,0.049331426620483,0.019063472747803,-0.080476492643356,-0.003721213433892,0.013045253232121,0.027488596737385,0.028612956404686));
res += mul(Get(s2,0,0), float4x4(0.081852018833160,-0.073695451021194,0.073237136006355,-0.028915025293827,0.002123782644048,-0.014779851771891,0.026000218465924,0.025089593604207,0.018258750438690,-0.034775603562593,0.114944137632847,-0.016564728692174,0.023662544786930,0.033003527671099,-0.030879752710462,-0.013122589327395));
res += mul(Get(s2,0,dy), float4x4(0.064003422856331,-0.075696349143982,-0.003132974728942,-0.055001720786095,0.037747878581285,-0.019994806498289,0.038407813757658,0.058023050427437,0.138867869973183,-0.009517163038254,0.147294893860817,0.040972609072924,-0.047045208513737,-0.019539734348655,-0.073798142373562,0.013344788923860));
res += mul(Get(s2,dx,-dy), float4x4(-0.002858704421669,-0.019064130261540,0.001570043386891,-0.042571149766445,0.016674555838108,0.025065882131457,0.023098666220903,0.007808910682797,0.009781928732991,0.030211469158530,-0.002660026308149,-0.032654613256454,-0.008435596711934,-0.065326057374477,-0.004838081076741,-0.044029887765646));
res += mul(Get(s2,dx,0), float4x4(0.055092897266150,-0.067996427416801,0.022952225059271,-0.078943505883217,-0.018339267000556,-0.008858597837389,0.017110055312514,0.047410055994987,0.053541943430901,-0.054928641766310,0.072160191833973,-0.001790610491298,0.073316782712936,-0.044878534972668,-0.027022810652852,-0.050341147929430));
res += mul(Get(s2,dx,dy), float4x4(0.079244591295719,-0.075280830264091,-0.014771769754589,-0.055036716163158,0.016353417187929,0.015858028084040,0.025595743209124,0.008791620843112,0.113486312329769,-0.006588604301214,0.067380897700787,0.009408309124410,0.004449921660125,-0.005095597356558,-0.027651563286781,-0.041527550667524));
res += mul(Get(s3,-dx,-dy), float4x4(-0.006904105655849,0.021298065781593,-0.003086886834353,0.005979735404253,0.044617667794228,-0.009080362506211,0.000612243369687,-0.012689345516264,-0.005557890050113,-0.013332732953131,0.085345916450024,-0.019568393006921,-0.022382520139217,-0.026160340756178,-0.014715950936079,0.002738851821050));
res += mul(Get(s3,-dx,0), float4x4(-0.000691949564498,0.000329116941430,0.009904533624649,0.002030813600868,0.037590421736240,-0.019653012976050,0.002021172083914,-0.018975052982569,0.032469224184752,0.003917907830328,0.058318771421909,-0.004232022445649,0.022935925051570,0.037540905177593,0.003120550652966,-0.074407882988453));
res += mul(Get(s3,-dx,dy), float4x4(0.019561767578125,0.000298836705042,-0.000542278983630,0.006534749176353,0.005064981989563,0.002885569818318,-0.004540442954749,-0.015926014631987,0.023009451106191,-0.020868269726634,0.001514402450994,-0.022718464955688,-0.010332508012652,0.051327042281628,0.008678611367941,-0.041025545448065));
res += mul(Get(s3,0,-dy), float4x4(0.003404005430639,-0.002557263709605,-0.005239388439804,0.002177114365622,0.024172250181437,-0.003138746367767,-0.002499621827155,-0.010171923786402,0.022443879395723,-0.008366215042770,0.067715875804424,-0.009701764211059,-0.005057936068624,-0.039547942578793,0.016243031248450,0.066821210086346));
res += mul(Get(s3,0,0), float4x4(-0.003563903039321,0.006448588334024,0.011945577338338,-0.028132600709796,0.032825119793415,-0.004078509751707,-0.016228670254350,0.010177799500525,0.015089211985469,0.006890316028148,0.019550638273358,-0.018587226048112,-0.004055502358824,-0.002777317306027,0.018410418182611,0.049902074038982));
res += mul(Get(s3,0,dy), float4x4(0.018829038366675,-0.011835308745503,0.008104780688882,-0.028951546177268,0.076104514300823,0.024249026551843,0.025522103533149,0.000486813631142,-0.016808388754725,0.001032354659401,-0.009139765985310,0.017224879935384,0.008675816468894,0.031341589987278,0.023871421813965,0.013052661903203));
res += mul(Get(s3,dx,-dy), float4x4(-0.004920770879835,0.000899909820873,-0.002144056605175,0.018261454999447,0.032485432922840,0.030947400256991,0.008145172148943,-0.015196238644421,0.024786669760942,0.009107001125813,0.016518443822861,-0.008358408696949,0.027791207656264,-0.042797025293112,0.031286183744669,0.012978647835553));
res += mul(Get(s3,dx,0), float4x4(-0.002148037077859,0.003924965392798,-0.008853078819811,-0.013320454396307,0.020977027714252,0.014692203141749,0.001287776278332,-0.017365284264088,0.029453858733177,-0.014649235643446,0.005125429015607,-0.006891439203173,0.001980749191716,-0.029514163732529,0.024009943008423,0.080249823629856));
res += mul(Get(s3,dx,dy), float4x4(-0.001571015687659,-0.010027710348368,-0.013233260251582,0.014153230004013,0.009234764613211,-0.010594860650599,0.011897255666554,-0.006535892840475,0.008628184907138,0.013830235227942,0.006638673134148,0.003165494883433,0.028048187494278,0.039629358798265,0.009637580253184,0.051711332052946));
res = max(float4(0,0,0,0), res);
return res;
}