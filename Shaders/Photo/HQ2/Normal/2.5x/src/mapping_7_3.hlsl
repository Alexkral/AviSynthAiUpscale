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
res += mul(Get(s0,-dx,-dy), float4x4(-0.000326004024828,0.018236212432384,0.010084941051900,0.037847205996513,-0.015019294805825,-0.064831182360649,0.039729572832584,-0.067345626652241,0.021553469821811,0.009689616039395,0.055251535028219,0.052828069776297,0.007884408347309,0.022918347269297,0.038520541042089,-0.049404617398977));
res += mul(Get(s0,-dx,0), float4x4(-0.003225727938116,0.020269861444831,0.002058902289718,0.058865860104561,-0.043981749564409,-0.117434583604336,-0.013273717835546,-0.068470656871796,0.018552888184786,0.065763711929321,0.034805189818144,0.035786755383015,0.016549916937947,0.061573401093483,0.023282751441002,-0.030993739143014));
res += mul(Get(s0,-dx,dy), float4x4(-0.000463383388706,-0.004794046748430,-0.030146848410368,0.034227102994919,-0.038784038275480,-0.079590797424316,-0.000556870829314,-0.025155572220683,-0.009964983910322,0.061920780688524,-0.030539741739631,-0.022676981985569,0.015813862904906,0.072409518063068,-0.012693637050688,-0.040850181132555));
res += mul(Get(s0,0,-dy), float4x4(0.017790907993913,-0.003078097477555,0.008891197852790,-0.035263638943434,0.012099463492632,-0.038923814892769,0.041908614337444,0.040455862879753,0.017683913931251,-0.007513156160712,0.003896259469911,-0.004099111538380,-0.005792231764644,-0.032963268458843,0.036733519285917,-0.023299481719732));
res += mul(Get(s0,0,0), float4x4(0.045865032821894,-0.036047287285328,0.056316826492548,-0.055861812084913,0.030592486262321,0.035706121474504,-0.011981313116848,-0.036855805665255,-0.004177634604275,-0.007629162166268,-0.003364142030478,0.056234586983919,-0.011199165135622,-0.015064470469952,0.029017850756645,-0.011887859553099));
res += mul(Get(s0,0,dy), float4x4(0.021941522136331,0.000193997024326,0.029631480574608,-0.007423652336001,0.002612693700939,-0.008601612411439,-0.010777907446027,-0.084284789860249,-0.031569942831993,0.030580975115299,-0.065234139561653,0.056977093219757,-0.013457795605063,0.047502193599939,0.020704396069050,0.003109719837084));
res += mul(Get(s0,dx,-dy), float4x4(0.011770316399634,0.063850775361061,0.007154286839068,-0.010858079418540,0.033064421266317,-0.021176187321544,0.041804634034634,0.013100933283567,0.022257968783379,0.057808481156826,0.024288412183523,0.000587076356169,0.009652735665441,-0.058983750641346,-0.030720805749297,-0.080268301069736));
res += mul(Get(s0,dx,0), float4x4(0.017476703971624,0.085456274449825,0.039874657988548,-0.003990352153778,-0.008786070160568,0.049940288066864,-0.002881896216422,0.033851396292448,0.012582682073116,-0.002909924602136,0.004056124016643,0.039717454463243,0.008880325593054,-0.011108669452369,-0.042297553271055,-0.036404266953468));
res += mul(Get(s0,dx,dy), float4x4(0.006336341612041,0.053101856261492,0.017394909635186,-0.027756115421653,-0.004902595654130,-0.029041875153780,-0.024940630421042,-0.089203931391239,-0.032525222748518,0.013940887525678,-0.072545066475868,0.074655033648014,-0.015063483268023,0.045521434396505,-0.037411842495203,-0.026384733617306));
res += mul(Get(s1,-dx,-dy), float4x4(-0.004281798377633,0.025572286918759,-0.016878958791494,0.055605109781027,0.086389631032944,-0.067161649465561,-0.024159481748939,-0.034103568643332,0.015733584761620,0.007845430634916,0.010914046317339,0.000151567757712,0.006948779337108,-0.026065684854984,0.033369842916727,-0.025081025436521));
res += mul(Get(s1,-dx,0), float4x4(0.029244598001242,0.011292661540210,-0.015229462645948,-0.006056630983949,0.074521787464619,-0.019714303314686,0.010867205448449,-0.081286147236824,-0.002575925085694,0.010663590393960,0.010906304232776,0.026611095294356,0.023224616423249,-0.011855877004564,0.011744319461286,-0.011174755170941));
res += mul(Get(s1,-dx,dy), float4x4(0.007598498836160,-0.026419430971146,0.034024205058813,-0.036750640720129,-0.008823207579553,-0.002564955269918,0.018265277147293,-0.061403349041939,-0.003229427617043,-0.000700745498762,-0.010077855549753,-0.004840766079724,0.039397522807121,-0.010012755170465,0.013442496769130,-0.017518673092127));
res += mul(Get(s1,0,-dy), float4x4(0.022668091580272,-0.021843597292900,-0.010816010646522,0.035215660929680,0.036452781409025,0.008245927281678,-0.009673288092017,-0.002701624762267,0.001937239430845,0.006401961669326,0.047381468117237,-0.015985265374184,0.014355008490384,-0.003878836054355,-0.006988136097789,-0.020189370959997));
res += mul(Get(s1,0,0), float4x4(0.053833339363337,0.020433261990547,0.007896560244262,0.014530613087118,0.000885475019459,0.077038429677486,0.008902397006750,0.011510703712702,-0.010055201128125,0.001709966803901,-0.024320995435119,0.033049292862415,0.045059807598591,-0.000525903597008,-0.080797724425793,0.005178190767765));
res += mul(Get(s1,0,dy), float4x4(0.041172262281179,0.003788657020777,0.072771675884724,-0.048647902905941,-0.018540376797318,0.012534981593490,0.005250557791442,0.010486276820302,-0.007569173816592,-0.019168742001057,-0.050841547548771,0.011112541891634,0.021952202543616,-0.021987006068230,0.029241008684039,-0.012005719356239));
res += mul(Get(s1,dx,-dy), float4x4(-0.003332742489874,-0.011511906981468,0.014254351146519,-0.014312394894660,-0.032112836837769,-0.019226599484682,0.019047083333135,-0.020634355023503,0.004689793102443,-0.000834028411191,0.030824156478047,-0.016277866438031,0.032162640243769,-0.009763543494046,0.006762379780412,-0.025361537933350));
res += mul(Get(s1,dx,0), float4x4(-0.024833641946316,0.026943909004331,0.058817021548748,0.053474787622690,-0.044360723346472,0.017314756289124,0.007651357911527,0.040395472198725,0.001263598212972,-0.028314677998424,-0.028245881199837,0.027419723570347,0.021308368071914,-0.033038269728422,0.040950715541840,0.000020066687284));
res += mul(Get(s1,dx,dy), float4x4(-0.015575541183352,0.008120702579618,0.065410383045673,0.055101327598095,-0.046113461256027,0.007722303736955,-0.009723695926368,0.032446388155222,-0.002024558139965,-0.018882064148784,-0.022064914926887,0.020271163433790,0.016054533421993,-0.055164400488138,0.090118132531643,-0.024651879444718));
res += mul(Get(s2,-dx,-dy), float4x4(-0.020567018538713,0.123369432985783,-0.015434004366398,0.048404585570097,-0.000449730578111,0.026223015040159,0.041802678257227,0.051640521734953,-0.019834775477648,0.041933085769415,0.030851321294904,-0.035048767924309,0.012515174224973,-0.011213758029044,-0.014259704388678,0.001294169225730));
res += mul(Get(s2,-dx,0), float4x4(-0.006233931053430,0.092348761856556,-0.015980448573828,0.070163011550903,0.042630583047867,0.017795974388719,-0.014535732567310,-0.012932124547660,-0.065036512911320,0.002281606197357,0.035875082015991,0.006951864808798,-0.000153848013724,-0.012668360956013,-0.019939273595810,0.015355388633907));
res += mul(Get(s2,-dx,dy), float4x4(-0.012745223939419,0.058449491858482,-0.031969144940376,0.048002358525991,0.049746185541153,-0.015753701329231,-0.032013520598412,-0.047615230083466,-0.030576067045331,-0.014727997593582,0.062960468232632,-0.012403950095177,-0.008340192958713,-0.011182013899088,-0.019705794751644,-0.000296375830658));
res += mul(Get(s2,0,-dy), float4x4(0.001520813559182,0.031160408630967,-0.003193988697603,-0.013912199996412,-0.005838651210070,-0.036453731358051,-0.020192343741655,0.041816115379333,-0.003893945831805,-0.004826202988625,-0.008478043600917,0.010355253703892,0.047591403126717,-0.015002941712737,-0.022662010043859,-0.013717046938837));
res += mul(Get(s2,0,0), float4x4(0.032734528183937,-0.066156432032585,-0.001382412854582,-0.006798255722970,0.045876555144787,-0.029129462316632,-0.086834535002708,0.051522921770811,-0.027632594108582,-0.063336245715618,0.036991264671087,-0.067348614335060,0.017800096422434,-0.015747159719467,-0.005015105940402,-0.007102361414582));
res += mul(Get(s2,0,dy), float4x4(0.031881935894489,0.007856483571231,-0.000998468371108,0.008016837760806,0.075524747371674,0.012671822682023,-0.047025285661221,0.018576335161924,-0.014363766647875,-0.030917655676603,-0.017729444429278,-0.003881255863234,0.015802655369043,-0.012034748680890,-0.042100030928850,0.007495094556361));
res += mul(Get(s2,dx,-dy), float4x4(0.013536042533815,-0.005345020443201,-0.011943731456995,-0.015359780751169,0.022030403837562,-0.011674154549837,-0.055343825370073,0.030807565897703,-0.023041872307658,0.001129408134148,0.022830944508314,0.000190979553736,0.018923006951809,-0.028924189507961,0.036954060196877,-0.042992424219847));
res += mul(Get(s2,dx,0), float4x4(0.012044969946146,0.024905860424042,-0.000750228879042,-0.013662672601640,0.050383381545544,-0.020821310579777,-0.077659919857979,0.057363614439964,-0.025490069761872,0.030348066240549,-0.015269335359335,-0.011102680116892,0.035707630217075,-0.036860797554255,0.037119489163160,-0.048663891851902));
res += mul(Get(s2,dx,dy), float4x4(0.010060689412057,0.041068445891142,-0.012711396440864,-0.009605688042939,0.050555355846882,0.010111114010215,-0.034195028245449,0.028002850711346,-0.045172423124313,0.035445213317871,-0.068531386554241,-0.016190236434340,0.025529939681292,-0.036482185125351,-0.014248927123845,-0.001144134206697));
res += mul(Get(s3,-dx,-dy), float4x4(-0.008352138102055,0.000042911226046,0.029775436967611,-0.017517533153296,0.001906736521050,-0.008313085883856,-0.023335980251431,0.001165559398942,-0.028389191254973,0.021933609619737,-0.020233428105712,0.026983940973878,-0.015673998743296,0.003707856405526,0.022036017850041,0.007336829788983));
res += mul(Get(s3,-dx,0), float4x4(0.022203825414181,0.001749280141667,0.003484900109470,-0.015172832645476,0.013658935204148,0.012312194332480,0.011441743932664,0.028273485600948,-0.000676275114529,0.102457784116268,-0.030126767233014,0.037451423704624,0.024922162294388,0.012925989925861,0.017235090956092,0.001503203180619));
res += mul(Get(s3,-dx,dy), float4x4(0.007543587591499,-0.003315832465887,0.005610822699964,-0.024574873968959,-0.011393213644624,0.030327310785651,0.031229890882969,0.043989196419716,-0.010941183194518,0.091671131551266,-0.056779153645039,-0.022155582904816,0.018571797758341,-0.028183922171593,-0.023519754409790,-0.018336314707994));
res += mul(Get(s3,0,-dy), float4x4(0.017710963264108,0.007330727763474,0.061381772160530,-0.000216741536860,-0.009891005232930,-0.003645205870271,-0.007086959667504,-0.010724761523306,0.002548611490056,0.036379992961884,-0.004744437988847,0.015450486913323,-0.016272161155939,0.007619859185070,0.017055884003639,-0.034314367920160));
res += mul(Get(s3,0,0), float4x4(0.018332546576858,0.013108814135194,0.078472018241882,0.001971688121557,0.049886584281921,-0.058060102164745,0.028974020853639,-0.054096076637506,0.016076015308499,0.024732219055295,-0.027485588565469,0.003698910819367,-0.001269063912332,0.023331834003329,0.009319349192083,0.054574325680733));
res += mul(Get(s3,0,dy), float4x4(0.024458914995193,-0.010062780231237,0.044619843363762,0.007217628881335,0.045085575431585,-0.091052114963531,0.042355909943581,-0.029071930795908,-0.001088656252250,0.010598360560834,-0.036797255277634,-0.020492985844612,0.005912150721997,-0.027641793712974,-0.038361530750990,0.042904831469059));
res += mul(Get(s3,dx,-dy), float4x4(0.014581151306629,-0.012651887722313,-0.004459474701434,-0.070392794907093,-0.039510376751423,-0.020305693149567,-0.011791538447142,-0.033083785325289,-0.034407246857882,0.038671463727951,-0.090749002993107,0.032878223806620,-0.040383614599705,0.031950321048498,-0.027275413274765,0.008221143856645));
res += mul(Get(s3,dx,0), float4x4(-0.015670238062739,0.005313440226018,-0.013155470602214,-0.029181966558099,-0.002808057237417,-0.060530416667461,0.032705761492252,-0.019049046561122,0.017215671017766,-0.012416015379131,-0.064739428460598,0.010125603526831,0.008672735653818,0.012161535210907,-0.036792282015085,-0.033829923719168));
res += mul(Get(s3,dx,dy), float4x4(-0.000275373167824,-0.021330121904612,-0.002080708742142,-0.023512599989772,0.025792855769396,-0.076725140213966,0.086686708033085,-0.058782547712326,-0.008940410800278,0.019529568031430,-0.074406191706657,-0.008635816164315,-0.013150125741959,-0.012238991446793,-0.055549930781126,0.032288044691086));
return max(float4(0,0,0,0), res);
}
