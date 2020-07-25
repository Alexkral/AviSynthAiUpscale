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
res += mul(Get(s0,-dx,-dy), float4x4(-0.125254556536674,0.042651109397411,-0.208534821867943,-0.005657715257257,-0.090513333678246,0.075225770473480,0.024081155657768,-0.088806904852390,-0.064420208334923,0.074437871575356,-0.054158329963684,-0.060251913964748,-0.007067221682519,0.115832105278969,-0.044449653476477,-0.027126744389534));
res += mul(Get(s0,-dx,0), float4x4(0.001667269039899,0.067499652504921,-0.150422692298889,0.001839212724008,0.056830018758774,-0.103936880826950,-0.167255938053131,-0.062933169305325,-0.255835801362991,-0.008142354898155,0.034927565604448,0.057089477777481,0.028791837394238,0.029667744413018,-0.054572798311710,0.035138215869665));
res += mul(Get(s0,-dx,dy), float4x4(-0.060598105192184,0.100851498544216,0.039932224899530,-0.095413036644459,0.008103207685053,0.015616686083376,-0.059358257800341,-0.059361558407545,-0.134589985013008,0.005361779592931,-0.176163449883461,0.123955778777599,0.159665450453758,-0.027390755712986,0.077640503644943,-0.046005260199308));
res += mul(Get(s0,0,-dy), float4x4(-0.119422681629658,0.029761932790279,-0.067483484745026,0.026915319263935,0.027401965111494,-0.181866243481636,0.009501742199063,0.018155328929424,0.118602618575096,0.125514328479767,0.048419289290905,0.091198131442070,-0.086005173623562,0.133380651473999,0.129122987389565,-0.066103681921959));
res += mul(Get(s0,0,0), float4x4(0.056209329515696,-0.183070465922356,-0.038547892123461,-0.067454650998116,0.098234228789806,0.016379825770855,0.203399866819382,0.006594450213015,0.064693249762058,0.183447927236557,-0.113727636635303,0.029360178858042,0.060069352388382,0.034000214189291,0.020007098093629,-0.094655849039555));
res += mul(Get(s0,0,dy), float4x4(0.262678503990173,-0.003142597619444,-0.112072736024857,0.071266628801823,0.197720602154732,0.082933045923710,0.030355604365468,-0.198305413126945,0.003953217063099,-0.085948593914509,-0.022334881126881,0.103089861571789,0.006685825530440,-0.000680351222400,-0.098049491643906,-0.073798045516014));
res += mul(Get(s0,dx,-dy), float4x4(-0.054314255714417,-0.038685265928507,0.193247064948082,0.090350896120071,-0.176291868090630,0.129161998629570,0.020852373912930,-0.102089144289494,0.073247373104095,-0.047777544707060,0.019549477845430,0.108525782823563,0.131157577037811,0.060048446059227,0.100242935121059,-0.127523317933083));
res += mul(Get(s0,dx,0), float4x4(-0.137952238321304,-0.228734865784645,-0.014857781119645,-0.040792033076286,-0.044151920825243,-0.040154043585062,0.062005069106817,-0.048346564173698,-0.137218236923218,0.007513460703194,-0.084399387240410,0.046097815036774,0.086457297205925,-0.009239615872502,-0.075733236968517,-0.025214264169335));
res += mul(Get(s0,dx,dy), float4x4(-0.208140313625336,-0.066874735057354,-0.074880748987198,0.022888114675879,-0.066913239657879,-0.090442009270191,0.096833124756813,-0.017869329079986,-0.016841338947415,0.066586166620255,0.123162090778351,0.191181242465973,-0.049765370786190,0.162728995084763,-0.198709413409233,-0.069057852029800));
res += mul(Get(s1,-dx,-dy), float4x4(0.262941271066666,-0.043721742928028,-0.097494848072529,0.130077108740807,-0.090620100498199,0.020190590992570,-0.093176811933517,0.095474943518639,0.088461421430111,-0.017916059121490,0.167053818702698,0.040040545165539,0.090765848755836,-0.088389173150063,0.108364172279835,0.137418076395988));
res += mul(Get(s1,-dx,0), float4x4(-0.132956445217133,0.129953131079674,0.149164944887161,0.022047605365515,-0.005616119131446,-0.170319542288780,-0.079156905412674,-0.117907904088497,0.045514695346355,0.041834276169538,-0.043970819562674,0.118799030780792,-0.144783005118370,-0.012858677655458,-0.019334096461535,-0.160932272672653));
res += mul(Get(s1,-dx,dy), float4x4(0.016237419098616,0.166304051876068,0.188953965902328,-0.198638498783112,0.166046842932701,-0.143603280186653,-0.076859228312969,-0.062351562082767,-0.004645299166441,0.104369029402733,0.039040606468916,0.161567568778992,0.130718544125557,0.038270123302937,-0.038390770554543,-0.052816249430180));
res += mul(Get(s1,0,-dy), float4x4(0.166947424411774,-0.009594946168363,0.016327690333128,0.092925325036049,0.111628159880638,-0.202277824282646,0.003227155655622,0.041426844894886,-0.128980949521065,0.112070754170418,-0.054319012910128,0.223859146237373,0.014608108438551,-0.139727443456650,-0.058195509016514,-0.097849495708942));
res += mul(Get(s1,0,0), float4x4(-0.180593982338905,0.118899382650852,-0.002742760116234,-0.077693849802017,0.176242515444756,0.109473459422588,-0.114947833120823,-0.071143619716167,-0.117839314043522,0.149677783250809,0.166133671998978,-0.120303735136986,0.109864830970764,-0.040625609457493,-0.019544722512364,0.107977166771889));
res += mul(Get(s1,0,dy), float4x4(-0.049203418195248,0.149871453642845,-0.194289863109589,-0.153664857149124,0.037547018378973,-0.060764659196138,0.005043381825089,0.024854844436049,-0.007646782323718,0.166727080941200,-0.059474736452103,-0.087685674428940,0.064029924571514,-0.031920433044434,-0.049052488058805,0.191689088940620));
res += mul(Get(s1,dx,-dy), float4x4(-0.026114260777831,0.157099589705467,-0.199591517448425,0.047395613044500,-0.067049816250801,0.241314232349396,0.051004890352488,-0.039884373545647,0.050953038036823,0.051574315875769,0.089643456041813,0.208694696426392,-0.066207841038704,0.008807809092104,-0.189872846007347,0.071092799305916));
res += mul(Get(s1,dx,0), float4x4(0.037248678505421,-0.131896242499352,0.063132517039776,0.113035514950752,0.060109611600637,0.047694679349661,0.075974524021149,-0.077218309044838,0.164034530520439,-0.025809606537223,-0.039059881120920,0.019314846023917,-0.115915328264236,-0.032925914973021,-0.027597185224295,0.141001850366592));
res += mul(Get(s1,dx,dy), float4x4(0.067007400095463,-0.071818426251411,-0.033734794706106,0.035025745630264,0.037275217473507,0.067876644432545,-0.066749192774296,-0.075413241982460,-0.029296102002263,0.064302265644073,0.084367163479328,-0.065355934202671,-0.245205700397491,-0.014391362667084,0.024961745366454,0.151952266693115));
res += mul(Get(s2,-dx,-dy), float4x4(-0.012216174975038,-0.123112298548222,-0.074987873435020,0.069626890122890,0.056904114782810,0.019937280565500,-0.117756791412830,-0.076214686036110,-0.203599542379379,-0.005458588711917,0.080928653478622,-0.032735276967287,0.002536493120715,-0.097788736224174,0.073258809745312,0.051774993538857));
res += mul(Get(s2,-dx,0), float4x4(-0.008262844756246,-0.116551250219345,-0.063983097672462,-0.050637401640415,-0.046323835849762,0.085110314190388,0.199284479022026,0.053257513791323,-0.040363725274801,-0.225266635417938,-0.055826880037785,-0.198517009615898,0.021179223433137,0.090233251452446,0.109138756990433,0.145003452897072));
res += mul(Get(s2,-dx,dy), float4x4(-0.031943880021572,-0.140949919819832,-0.061016328632832,0.091863341629505,-0.148023352026939,-0.138862580060959,0.000672766356729,-0.100969187915325,0.091835975646973,-0.100863419473171,-0.058734163641930,0.000335445860401,0.013809763826430,-0.072356797754765,-0.106614820659161,0.025562426075339));
res += mul(Get(s2,0,-dy), float4x4(0.091316655278206,0.031932383775711,-0.004459902644157,0.033815562725067,0.095765382051468,-0.066522285342216,0.117145828902721,-0.126733079552650,0.319889575242996,-0.017638836055994,-0.026623172685504,0.220123469829559,0.172791421413422,-0.089517623186111,-0.189084663987160,-0.030284464359283));
res += mul(Get(s2,0,0), float4x4(-0.003125491086394,0.048634428530931,-0.080652073025703,-0.111429445445538,0.239581003785133,-0.134217545390129,0.080268196761608,0.018822779878974,0.304201751947403,0.030139029026031,0.074211254715919,0.033743821084499,0.008188402280211,0.015550944954157,-0.154794111847878,-0.100642293691635));
res += mul(Get(s2,0,dy), float4x4(0.080695480108261,-0.191276311874390,-0.124982655048370,-0.055368434637785,-0.079208455979824,0.002973520895466,-0.001244002021849,-0.090891189873219,0.086642801761627,0.021995387971401,-0.101226411759853,-0.099067240953445,0.163310378789902,0.065128430724144,-0.117284074425697,0.006812805775553));
res += mul(Get(s2,dx,-dy), float4x4(0.078160174190998,-0.118308819830418,0.154980912804604,0.151491940021515,0.002410901943222,-0.081460863351822,0.032055210322142,0.131166964769363,0.049044266343117,-0.178933858871460,-0.110641196370125,0.032051727175713,0.067766837775707,0.047161251306534,-0.130438029766083,-0.101135149598122));
res += mul(Get(s2,dx,0), float4x4(0.029517890885472,-0.038662813603878,-0.054720330983400,-0.115546420216560,0.122913934290409,0.077223807573318,-0.061586216092110,0.051010407507420,-0.063266724348068,0.035772752016783,-0.031955875456333,0.076215997338295,0.068408824503422,0.024802805855870,-0.008325982838869,-0.028954582288861));
res += mul(Get(s2,dx,dy), float4x4(-0.087027117609978,0.058718591928482,0.054946053773165,0.032788820564747,-0.213007524609566,-0.171203747391701,0.011474166996777,-0.036061875522137,-0.185945689678192,0.064155399799347,-0.030419671908021,-0.131007179617882,-0.154105380177498,0.076661705970764,-0.039932049810886,-0.042079705744982));
res += mul(Get(s3,-dx,-dy), float4x4(0.081454373896122,-0.027501525357366,0.162746593356133,-0.002918189391494,0.080495066940784,0.084893427789211,0.152035385370255,0.074717804789543,-0.051779028028250,-0.007182441186160,0.139919668436050,-0.066637150943279,0.171608746051788,-0.003803861793131,0.160165309906006,-0.038311220705509));
res += mul(Get(s3,-dx,0), float4x4(0.073898538947105,0.070394620299339,0.074137508869171,0.048438448458910,0.030158950015903,-0.144057333469391,-0.065856672823429,-0.093531765043736,-0.054510083049536,0.003388276556507,-0.027027942240238,0.023258522152901,-0.154082715511322,0.068621158599854,-0.146463841199875,-0.091639690101147));
res += mul(Get(s3,-dx,dy), float4x4(-0.054724153131247,0.051892347633839,-0.005670066922903,-0.042714249342680,0.108998060226440,0.030464474111795,-0.006406280677766,0.008674084208906,0.018783738836646,0.003928829450160,-0.016581455245614,0.059336636215448,-0.134797289967537,-0.090499505400658,-0.074457287788391,-0.100066140294075));
res += mul(Get(s3,0,-dy), float4x4(0.036711715161800,-0.156788587570190,-0.124130539596081,0.008593759499490,0.009494815021753,0.061833851039410,0.074922092258930,-0.083260059356689,0.081744357943535,0.021063759922981,-0.066813126206398,-0.037068553268909,0.132394596934319,0.101860940456390,-0.046378433704376,-0.083854764699936));
res += mul(Get(s3,0,0), float4x4(0.045425809919834,-0.051166836172342,0.014896626584232,-0.171431675553322,0.097014531493187,0.092569492757320,-0.001885551260784,-0.122588567435741,0.061997059732676,0.103801727294922,0.242490172386169,0.186420232057571,-0.003932126332074,-0.093092501163483,-0.103170618414879,0.000661124126054));
res += mul(Get(s3,0,dy), float4x4(0.055480595678091,0.101992219686508,0.034934677183628,0.099936209619045,-0.131805732846260,-0.034935999661684,-0.084768190979958,0.003130582859740,0.033277027308941,0.056069489568472,0.165257900953293,-0.112824507057667,0.082131721079350,-0.043740637600422,-0.111710309982300,-0.029199784621596));
res += mul(Get(s3,dx,-dy), float4x4(0.071090504527092,-0.037472080439329,0.044925283640623,-0.099230945110321,0.121457211673260,-0.105765230953693,0.156917542219162,-0.037999723106623,0.107448332011700,0.006321869790554,-0.014583937823772,-0.148356214165688,0.173137649893761,0.054178368300200,0.068366684019566,0.097098097205162));
res += mul(Get(s3,dx,0), float4x4(0.115431934595108,-0.061117216944695,-0.037596456706524,-0.027753844857216,-0.049017418175936,0.150406107306480,-0.284344434738159,-0.010894061066210,0.001226541586220,0.085083775222301,-0.033423569053411,0.149929285049438,-0.067537508904934,-0.046935018151999,0.001122663845308,-0.028239328414202));
res += mul(Get(s3,dx,dy), float4x4(0.004784817807376,-0.023875316604972,-0.100721433758736,0.016251886263490,-0.017106587067246,0.095311246812344,0.047667391598225,-0.095815941691399,0.097938947379589,0.207989215850830,-0.088042363524437,-0.106112182140350,-0.113408856093884,-0.194955214858055,-0.036909379065037,0.132303789258003));
res = max(float4(0,0,0,0), res);
return res;
}
