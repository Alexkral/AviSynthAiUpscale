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
res += mul(Get(s0,-dx,-dy), float4x4(-0.077978201210499,0.124132037162781,0.065969668328762,-0.132875949144363,0.076097548007965,0.016379434615374,-0.008782622404397,-0.036730702966452,0.022243961691856,-0.027297686785460,-0.049741677939892,-0.011002408340573,0.063132621347904,0.146498143672943,0.045472651720047,0.135253071784973));
res += mul(Get(s0,-dx,0), float4x4(-0.151303276419640,0.148941352963448,0.148792266845703,-0.149775922298431,0.012765841558576,0.008673747070134,0.027489779517055,0.008821173571050,-0.314866930246353,-0.114121295511723,-0.103530630469322,0.102188810706139,0.051541272550821,-0.103290423750877,-0.078173898160458,0.200607627630234));
res += mul(Get(s0,-dx,dy), float4x4(0.131735399365425,-0.084156982600689,0.049215149134398,0.142111480236053,0.082178227603436,-0.033588368445635,-0.026301983743906,0.012397739104927,-0.115799188613892,-0.129870757460594,0.116819545626640,0.251245498657227,-0.029516028240323,-0.159118920564651,0.275977194309235,-0.177541732788086));
res += mul(Get(s0,0,-dy), float4x4(0.075152195990086,-0.114641688764095,-0.089167863130569,-0.052331347018480,0.016574451699853,-0.064054600894451,0.068640321493149,0.064386323094368,-0.028329642489552,-0.165655508637428,0.064638279378414,0.106937430799007,-0.039160054177046,-0.139764294028282,-0.045444384217262,0.007493225857615));
res += mul(Get(s0,0,0), float4x4(-0.006021348759532,-0.167604923248291,0.017157392576337,-0.151582747697830,-0.155227467417717,0.153044551610947,0.013825950212777,0.051606874912977,-0.032804574817419,-0.141733974218369,-0.007878421805799,0.098722696304321,-0.230905741453171,-0.036382228136063,-0.068177185952663,-0.074324466288090));
res += mul(Get(s0,0,dy), float4x4(-0.057562597095966,-0.147654980421066,-0.014184003695846,0.061803326010704,0.127369448542595,0.031936466693878,-0.063143469393253,-0.156049683690071,0.021517863497138,-0.059264250099659,0.100688241422176,0.006786279380322,-0.138474911451340,-0.134755358099937,-0.137447223067284,-0.135139867663383));
res += mul(Get(s0,dx,-dy), float4x4(-0.044034313410521,0.074173785746098,0.261349916458130,0.339261353015900,0.117233462631702,-0.001990680815652,-0.009034413844347,0.068107679486275,0.262132436037064,-0.119761824607849,0.243639305233955,0.123534999787807,-0.203591138124466,-0.250406324863434,-0.079639740288258,0.203313678503036));
res += mul(Get(s0,dx,0), float4x4(0.015713213011622,0.120908349752426,0.116986609995365,0.114267237484455,0.035759642720222,0.014240241609514,-0.082247741520405,-0.040947668254375,-0.173893868923187,0.017080876976252,-0.019450783729553,0.016559567302465,-0.019721264019608,0.082813911139965,0.022272719070315,-0.014833079650998));
res += mul(Get(s0,dx,dy), float4x4(0.301363050937653,-0.062932685017586,0.211082607507706,0.129125878214836,-0.285233497619629,-0.092416398227215,-0.207057967782021,-0.091973379254341,-0.097234256565571,-0.018781095743179,-0.022651858627796,-0.139594614505768,0.066614843904972,-0.129628092050552,-0.028694486245513,0.100672259926796));
res += mul(Get(s1,-dx,-dy), float4x4(0.160656571388245,0.069294370710850,-0.073224887251854,0.106124162673950,0.018927894532681,0.023783262819052,0.038495738059282,0.064486309885979,-0.071911074221134,0.092854298651218,0.009625512175262,0.095873832702637,0.135880425572395,0.236786857247353,-0.081330761313438,-0.077156752347946));
res += mul(Get(s1,-dx,0), float4x4(0.197120681405067,0.164677992463112,-0.147407382726669,0.085882671177387,-0.092779316008091,-0.160830080509186,-0.274525940418243,0.008136717602611,0.066316902637482,0.133645102381706,0.140513882040977,0.108165577054024,0.068308860063553,0.098163142800331,-0.142116859555244,0.036310371011496));
res += mul(Get(s1,-dx,dy), float4x4(0.093932516872883,0.039647493511438,-0.077447392046452,-0.060698091983795,-0.142345145344734,0.097432792186737,0.146360576152802,0.139903500676155,0.114185124635696,0.169572472572327,-0.143266007304192,0.015960264950991,-0.170158699154854,0.039029445499182,0.065539732575417,-0.071672230958939));
res += mul(Get(s1,0,-dy), float4x4(0.059130255132914,0.231257706880569,0.079897202551365,-0.243817403912544,-0.015543302521110,-0.209818050265312,-0.122859872877598,0.022675726562738,-0.007045201957226,-0.081856973469257,-0.049059383571148,-0.171602874994278,0.191135123372078,0.177548155188560,-0.066201888024807,-0.128772795200348));
res += mul(Get(s1,0,0), float4x4(-0.021943910047412,0.018037743866444,-0.039413783699274,-0.126815676689148,0.038939975202084,0.125775039196014,0.106554597616196,0.228352546691895,-0.074094310402870,0.003165565663949,-0.003396296873689,0.012943755835295,0.073517449200153,-0.017559178173542,-0.036697734147310,-0.040157239884138));
res += mul(Get(s1,0,dy), float4x4(0.052893102169037,-0.027347549796104,-0.062487006187439,0.066402085125446,0.124937199056149,0.064654953777790,0.019334224984050,0.020012596622109,-0.086788780987263,-0.180893361568451,-0.053214132785797,-0.124106623232365,0.183840647339821,0.004012292250991,0.053233545273542,0.010472110472620));
res += mul(Get(s1,dx,-dy), float4x4(0.085682421922684,0.100391626358032,0.069450736045837,-0.163469225168228,0.119418509304523,0.083561055362225,0.029903016984463,-0.105162918567657,-0.070755563676357,-0.000527960422914,-0.039454329758883,-0.006983360741287,-0.021691020578146,0.078117035329342,0.046939428895712,0.121597886085510));
res += mul(Get(s1,dx,0), float4x4(0.045499820262194,-0.226248979568481,-0.042229454964399,-0.026144385337830,-0.011518000625074,0.110426902770996,-0.115292623639107,-0.184615314006805,-0.036093115806580,-0.142942249774933,0.070011861622334,-0.008233734406531,-0.097141206264496,-0.076687477529049,0.000774758867919,-0.121787317097187));
res += mul(Get(s1,dx,dy), float4x4(-0.168835356831551,0.129834249615669,-0.040331091731787,-0.047818142920732,0.150889724493027,-0.124489173293114,-0.126594141125679,-0.052268140017986,-0.034006658941507,-0.184216693043709,0.016696084290743,0.072982490062714,-0.007550558540970,0.003694596933201,-0.032151956111193,0.039491284638643));
res += mul(Get(s2,-dx,-dy), float4x4(0.004146579187363,-0.017200414091349,-0.110969372093678,0.115016296505928,-0.151728659868240,0.018754566088319,0.079366512596607,0.078610442578793,-0.154481440782547,0.019852882251143,-0.042332503944635,-0.295685976743698,0.068922571837902,-0.116273544728756,-0.064609430730343,0.100727193057537));
res += mul(Get(s2,-dx,0), float4x4(-0.030757281929255,-0.021358130499721,-0.133012294769287,0.258347064256668,-0.289308935403824,-0.126455530524254,-0.015609309077263,0.056379541754723,0.095431491732597,0.134731858968735,0.050306007266045,0.018557088449597,-0.162898749113083,-0.077052213251591,0.148089885711670,0.042252365499735));
res += mul(Get(s2,-dx,dy), float4x4(-0.131714731454849,0.116170093417168,0.000535651866812,0.125290870666504,-0.000571035896428,0.034800101071596,-0.052989277988672,0.170138373970985,-0.030334006994963,0.024321876466274,0.060542199760675,-0.154484987258911,-0.333860099315643,-0.072366967797279,-0.115150056779385,0.011522248387337));
res += mul(Get(s2,0,-dy), float4x4(-0.084235593676567,0.101395048201084,-0.174264937639236,-0.025964623317122,-0.030417757108808,-0.001584875746630,-0.049170892685652,-0.025689393281937,0.267672538757324,-0.012906732968986,-0.174632638692856,0.048019368201494,0.149804115295410,-0.018127735704184,-0.003240846795961,0.170288532972336));
res += mul(Get(s2,0,0), float4x4(-0.180384576320648,0.045893337577581,0.042037352919579,-0.052555438131094,-0.057332497090101,0.021331774070859,0.165818020701408,-0.128128156065941,-0.106240272521973,0.047584109008312,0.120426312088966,0.054569736123085,0.100426539778709,0.073059216141701,-0.149090170860291,0.235431179404259));
res += mul(Get(s2,0,dy), float4x4(-0.057366743683815,-0.146320804953575,-0.136530652642250,-0.077774837613106,-0.157946079969406,-0.018757889047265,-0.019916675984859,0.056663118302822,-0.100588135421276,0.192362233996391,0.086255028843880,0.010404107160866,0.087331555783749,0.020526982843876,-0.244827643036842,-0.124370485544205));
res += mul(Get(s2,dx,-dy), float4x4(0.182699605822563,-0.175123289227486,0.064346529543400,-0.245415464043617,0.239962235093117,-0.018544632941484,0.276118397712708,0.028564240783453,0.009435958229005,0.120033822953701,-0.003876046743244,0.117047168314457,-0.147208034992218,0.125458255410194,-0.076502248644829,-0.133919209241867));
res += mul(Get(s2,dx,0), float4x4(-0.101435601711273,0.153530627489090,-0.161342948675156,0.068329624831676,0.055580209940672,0.020763965323567,-0.052442736923695,-0.158086463809013,0.086480639874935,-0.040131554007530,-0.086240157485008,-0.077568024396896,-0.013901364989579,-0.081241525709629,0.012143456377089,0.149736553430557));
res += mul(Get(s2,dx,dy), float4x4(0.184057816863060,0.067276462912560,-0.010226441547275,-0.061534665524960,0.160477980971336,-0.016865100711584,0.014925950206816,-0.130598798394203,-0.085643343627453,-0.051265627145767,-0.125459790229797,-0.037178449332714,0.195729941129684,-0.060856830328703,-0.124196946620941,0.006045931484550));
res += mul(Get(s3,-dx,-dy), float4x4(0.160132765769958,0.003570637665689,-0.073377154767513,0.149076372385025,0.106305256485939,0.033179212361574,-0.031925123184919,0.127751454710960,-0.034948464483023,0.022907437756658,-0.033304173499346,0.060188170522451,-0.015508437529206,0.053099725395441,0.175082236528397,-0.113463737070560));
res += mul(Get(s3,-dx,0), float4x4(0.051084619015455,0.176660165190697,-0.044931802898645,0.078563898801804,0.125125259160995,0.059434887021780,-0.079346939921379,-0.200559288263321,-0.127292841672897,0.096909321844578,0.157533526420593,-0.000665615021717,0.060616377741098,-0.108810648322105,-0.118185423314571,0.075962550938129));
res += mul(Get(s3,-dx,dy), float4x4(-0.049899101257324,0.065006308257580,0.195291280746460,-0.015160004608333,0.090123929083347,-0.042310122400522,0.096046723425388,-0.220459237694740,-0.270386129617691,-0.102490939199924,0.087332315742970,0.072884418070316,-0.314569592475891,0.057376429438591,0.208576753735542,-0.034714069217443));
res += mul(Get(s3,0,-dy), float4x4(0.245816782116890,-0.043127607554197,0.025622565299273,0.102474361658096,-0.075410023331642,-0.053008399903774,-0.152888342738152,0.216260850429535,-0.112779594957829,0.154531285166740,-0.144645079970360,-0.046884186565876,0.023500289767981,0.121013768017292,-0.013511610217392,0.089049160480499));
res += mul(Get(s3,0,0), float4x4(-0.089783012866974,0.055579628795385,0.007866077125072,0.073810949921608,0.097260296344757,0.147152975201607,-0.103209085762501,-0.063888706266880,-0.030205801129341,-0.092921458184719,0.040179736912251,-0.056211460381746,-0.072890080511570,-0.134254857897758,-0.123945862054825,-0.101655684411526));
res += mul(Get(s3,0,dy), float4x4(0.064396165311337,0.066236726939678,-0.092935189604759,-0.042298473417759,-0.160228610038757,0.197249963879585,-0.022488130256534,-0.287072688341141,-0.106797695159912,0.036671228706837,-0.089487493038177,-0.068390376865864,0.025901068001986,0.047953564673662,-0.176277354359627,-0.134750097990036));
res += mul(Get(s3,dx,-dy), float4x4(0.097358986735344,-0.200452640652657,-0.248605370521545,0.058488383889198,0.213047504425049,-0.065448798239231,0.068069495260715,-0.146490082144737,-0.081162758171558,0.015677437186241,0.126864805817604,-0.110357001423836,-0.029175145551562,0.062961824238300,0.205551579594612,-0.082791291177273));
res += mul(Get(s3,dx,0), float4x4(-0.103151448071003,-0.129102304577827,0.025348478928208,-0.182296320796013,0.055495802313089,-0.188489809632301,0.033215243369341,-0.018998961895704,-0.035671927034855,0.072996191680431,0.115796387195587,0.114961281418800,-0.073090925812721,-0.071797020733356,0.193355783820152,0.020289266481996));
res += mul(Get(s3,dx,dy), float4x4(0.020596290007234,-0.082241199910641,0.045664574950933,-0.197423204779625,0.130447477102280,0.067278929054737,0.097691625356674,-0.227114602923393,-0.056285463273525,0.136930570006371,0.106750503182411,-0.091664940118790,0.145605161786079,0.087516382336617,0.117824457585812,-0.226919189095497));
return max(float4(0,0,0,0), res);
}