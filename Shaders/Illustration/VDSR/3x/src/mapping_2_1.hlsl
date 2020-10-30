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
res += mul(Get(s0,-dx,-dy), float4x4(-0.002731145592406,-0.054356753826141,0.047954734414816,-0.017802705988288,0.080935873091221,0.055228177458048,0.100236788392067,0.094453923404217,-0.019665582105517,-0.052418075501919,-0.010140653699636,0.088733091950417,-0.122562788426876,-0.167973905801773,0.134519457817078,-0.069091126322746));
res += mul(Get(s0,-dx,0), float4x4(-0.009354191832244,-0.060998104512691,0.002236181870103,-0.032639928162098,0.282249122858047,0.568141222000122,-0.090723566710949,-0.354704111814499,0.063090085983276,0.001627992489375,0.275765240192413,0.045921772718430,-0.297528982162476,-0.079080834984779,0.077031351625919,0.262860357761383));
res += mul(Get(s0,-dx,dy), float4x4(-0.024624252691865,-0.022516731172800,0.007925237528980,0.004678945057094,0.103148274123669,-0.096726968884468,-0.079769276082516,-0.033290080726147,0.131310433149338,-0.000093897280749,0.124470576643944,-0.081997707486153,-0.054840192198753,-0.191533908247948,0.035858817398548,-0.240012452006340));
res += mul(Get(s0,0,-dy), float4x4(0.050881460309029,-0.078174829483032,0.002415107795969,-0.010534441098571,0.074116319417953,-0.213129878044128,-0.117683574557304,0.150465562939644,-0.059667799621820,-0.030253840610385,0.106177851557732,-0.042270630598068,-0.136756852269173,-0.117108695209026,-0.136562824249268,-0.076407261192799));
res += mul(Get(s0,0,0), float4x4(0.034749217331409,-0.036489553749561,-0.031654056161642,-0.016295900568366,-0.061796084046364,0.085587657988071,0.532140374183655,-0.270347684621811,0.012742175720632,0.043980222195387,0.119909398257732,-0.025426438078284,-0.199062064290047,-0.049335926771164,-0.020149663090706,0.223891451954842));
res += mul(Get(s0,0,dy), float4x4(0.009207549504936,-0.036123331636190,-0.051994536072016,0.002877838443965,-0.210224494338036,0.172486230731010,-0.290233284235001,0.005349643528461,0.014959768392146,0.023989081382751,0.015999507158995,-0.133936807513237,-0.175446510314941,-0.156459346413612,0.007613962050527,-0.006329466123134));
res += mul(Get(s0,dx,-dy), float4x4(0.028329361230135,0.022406624630094,0.067515447735786,-0.006484153214842,0.272201597690582,0.176244884729385,-0.080893784761429,-0.067877687513828,-0.022113997489214,-0.062092028558254,0.069720081984997,0.073173105716705,0.089687034487724,-0.056159533560276,0.004990569781512,0.100346565246582));
res += mul(Get(s0,dx,0), float4x4(-0.012430174276233,0.022948112338781,0.056879125535488,0.032855987548828,0.116421647369862,-0.287559449672699,-0.099691540002823,0.452057600021362,0.019787900149822,-0.030242759734392,-0.027894176542759,0.214486971497536,0.219304963946342,-0.103511571884155,-0.183277070522308,-0.024601142853498));
res += mul(Get(s0,dx,dy), float4x4(-0.007333549205214,0.031646013259888,0.041473135352135,0.055869121104479,0.067236766219139,0.105767227709293,0.074508406221867,-0.057437792420387,-0.016617828980088,-0.042933065444231,0.016324490308762,0.227436617016792,0.248451530933380,-0.134872317314148,-0.236243918538094,0.045651584863663));
res += mul(Get(s1,-dx,-dy), float4x4(-0.046607084572315,-0.360598355531693,-0.154006302356720,0.078227028250694,-0.138778641819954,-0.001151164760813,0.028388861566782,-0.133919268846512,0.146909385919571,-0.118020989000797,-0.145507737994194,0.169789060950279,-0.178197130560875,-0.088257052004337,0.080513916909695,-0.244602650403976));
res += mul(Get(s1,-dx,0), float4x4(-0.303750067949295,-0.005531352944672,0.089664049446583,-0.074075624346733,-0.032239452004433,0.111756436526775,0.074346542358398,-0.114836536347866,-0.247246846556664,-0.145681068301201,-0.148074164986610,0.090446792542934,0.228614971041679,0.137644201517105,0.194507747888565,-0.174719676375389));
res += mul(Get(s1,-dx,dy), float4x4(-0.303321450948715,-0.069162532687187,-0.080951251089573,-0.064010448753834,0.019151326268911,0.028773836791515,-0.068411923944950,-0.035260688513517,-0.130124554038048,-0.134806901216507,0.433694571256638,0.012664602138102,0.242997571825981,0.017976159229875,-0.085143238306046,-0.152351588010788));
res += mul(Get(s1,0,-dy), float4x4(0.012131242081523,-0.110879994928837,-0.181201383471489,0.056229539215565,0.047536596655846,-0.030978474766016,-0.059903301298618,-0.051150940358639,-0.078800745308399,-0.090924486517906,0.033877182751894,0.014834629371762,-0.246314093470573,0.003803916973993,0.243695676326752,0.113989487290382));
res += mul(Get(s1,0,0), float4x4(-0.136219009757042,0.036768469959497,-0.084025122225285,0.041733108460903,-0.026140484958887,0.013280156999826,0.052912417799234,-0.062197297811508,-0.269030392169952,0.089145377278328,0.103086851537228,-0.233231589198112,-0.173687681555748,-0.070941619575024,-0.085798598825932,0.076877042651176));
res += mul(Get(s1,0,dy), float4x4(-0.059305287897587,0.076272964477539,-0.207414492964745,0.327421039342880,-0.003659091191366,-0.015255412086844,0.038616206496954,-0.130488574504852,-0.059933748096228,0.228213906288147,-0.041860759258270,-0.080303788185120,-0.074903085827827,-0.174480438232422,-0.232504233717918,0.076063074171543));
res += mul(Get(s1,dx,-dy), float4x4(-0.047355417162180,-0.099445365369320,0.008986586704850,-0.014981800690293,0.273092329502106,0.068062700331211,0.069638237357140,-0.084172070026398,0.074014082551003,0.047306101769209,0.084155887365341,-0.082598879933357,0.044069811701775,-0.036293342709541,-0.017197482287884,0.062121894210577));
res += mul(Get(s1,dx,0), float4x4(-0.247249633073807,-0.049906060099602,0.055536750704050,-0.273503392934799,0.050196390599012,0.144773587584496,-0.077689073979855,-0.032026443630457,0.140609487891197,0.299006223678589,0.103923298418522,-0.207589313387871,-0.011349047534168,-0.402907043695450,-0.105593129992485,0.164509654045105));
res += mul(Get(s1,dx,dy), float4x4(-0.211870029568672,-0.059183713048697,-0.145851254463196,-0.246189072728157,-0.073440402746201,-0.052657991647720,-0.039057064801455,-0.108303897082806,0.118397794663906,-0.008878641761839,-0.158841788768768,0.244834616780281,0.090800002217293,-0.307264953851700,0.126246511936188,-0.079272270202637));
res += mul(Get(s2,-dx,-dy), float4x4(-0.026343941688538,-0.032294996082783,0.174316614866257,0.134140193462372,-0.198163360357285,0.273199349641800,0.055439058691263,0.254788219928741,-0.085444226861000,0.151323765516281,-0.002092554233968,-0.204391583800316,-0.090806104242802,-0.152719929814339,-0.052591841667891,0.054240040481091));
res += mul(Get(s2,-dx,0), float4x4(-0.054359409958124,-0.001731180236675,0.037637170404196,0.083647407591343,-0.108643159270287,0.069101370871067,-0.109099149703979,0.331357657909393,0.023198232054710,0.008500015363097,-0.216158241033554,-0.340333044528961,-0.118130028247833,-0.119644775986671,0.041531324386597,0.297145068645477));
res += mul(Get(s2,-dx,dy), float4x4(-0.073269918560982,0.104756474494934,-0.011746791191399,0.039628650993109,-0.233014702796936,-0.236624643206596,0.054346568882465,0.037488866597414,-0.190374910831451,0.162688255310059,-0.266006439924240,0.265134423971176,0.015809539705515,-0.077587783336639,0.155320644378662,-0.091466747224331));
res += mul(Get(s2,0,-dy), float4x4(-0.135727033019066,-0.180683687329292,-0.167407661676407,0.053424883633852,-0.014769226312637,0.021529514342546,-0.015581908635795,-0.149480178952217,-0.364404529333115,-0.076190762221813,0.167160093784332,-0.312103688716888,-0.013263122178614,-0.101825334131718,-0.109178721904755,0.011076936498284));
res += mul(Get(s2,0,0), float4x4(-0.119427502155304,-0.131631731987000,-0.051988396793604,0.005208488553762,-0.009710602462292,-0.143171370029449,-0.035356082022190,-0.076843291521072,-0.175459608435631,-0.087047658860683,-0.047310903668404,-0.336667954921722,-0.053483981639147,-0.125413239002228,-0.185966253280640,0.256991147994995));
res += mul(Get(s2,0,dy), float4x4(-0.126875445246696,0.020118134096265,0.130055919289589,-0.190658450126648,-0.195514589548111,-0.201029047369957,0.086639717221260,-0.299342781305313,-0.244487106800079,-0.235936284065247,-0.257272481918335,0.123305700719357,-0.146206274628639,-0.126575142145157,-0.098312951624393,0.057713381946087));
res += mul(Get(s2,dx,-dy), float4x4(-0.101533368229866,-0.164044126868248,-0.029813686385751,-0.049835391342640,0.016054358333349,-0.033768262714148,0.018435046076775,-0.224810674786568,-0.032490454614162,-0.113358698785305,-0.008580607362092,0.007889005355537,-0.095891162753105,-0.069616533815861,-0.006385041400790,-0.090682409703732));
res += mul(Get(s2,dx,0), float4x4(-0.032524548470974,-0.063718572258949,0.007569291628897,-0.010693421587348,-0.050616614520550,0.272148758172989,0.026549153029919,-0.094029746949673,0.038126159459352,0.201730906963348,-0.143924444913864,0.010737977921963,-0.051167309284210,-0.112052559852600,-0.002631143899634,-0.089759401977062));
res += mul(Get(s2,dx,dy), float4x4(-0.060298353433609,-0.062133613973856,-0.075653217732906,-0.222609356045723,-0.334208786487579,0.126419916749001,-0.131616055965424,-0.377333492040634,-0.064382120966911,-0.169102475047112,-0.299502909183502,0.119939759373665,-0.117026790976524,-0.080209940671921,-0.021342875435948,-0.281078398227692));
res += mul(Get(s3,-dx,-dy), float4x4(0.005729000084102,0.158927723765373,-0.019273014739156,-0.073299467563629,-0.075211256742477,-0.279271841049194,0.141440197825432,-0.024982105940580,-0.032373178750277,0.083623602986336,-0.038586929440498,0.050594121217728,0.028652455657721,-0.076153948903084,0.018085954710841,0.008084758184850));
res += mul(Get(s3,-dx,0), float4x4(-0.110227800905704,0.092337481677532,-0.013617030344903,-0.127895563840866,-0.054158248007298,-0.096477836370468,0.055871721357107,-0.002921879291534,0.081243962049484,0.081710658967495,-0.121502302587032,0.322866052389145,-0.011137510649860,-0.031196225434542,0.009781860746443,0.113779999315739));
res += mul(Get(s3,-dx,dy), float4x4(0.137722760438919,0.121915474534035,-0.038622319698334,-0.099044851958752,0.032449737191200,-0.071710079908371,-0.006174032576382,0.090284004807472,0.173475831747055,0.036930393427610,-0.192452579736710,0.098063148558140,0.041586399078369,-0.036742508411407,0.032130241394043,-0.053676836192608));
res += mul(Get(s3,0,-dy), float4x4(-0.012769326567650,-0.017506785690784,0.009185155853629,-0.001589115825482,-0.137876480817795,-0.238302588462830,0.052913855761290,0.047408033162355,-0.038977477699518,-0.081789039075375,0.094004563987255,0.151200070977211,-0.015199393965304,-0.068795070052147,0.042466480284929,-0.232269451022148));
res += mul(Get(s3,0,0), float4x4(-0.103648208081722,-0.060937162488699,-0.079012647271156,0.014271057210863,-0.235300987958908,-0.145172700285912,0.070829659700394,-0.083579778671265,-0.169744461774826,0.046545654535294,-0.049549534916878,-0.170920580625534,-0.030605966225266,-0.086971290409565,0.050900083035231,0.027397703379393));
res += mul(Get(s3,0,dy), float4x4(0.028575479984283,-0.051341168582439,-0.055473644286394,-0.039278563112020,-0.182980209589005,-0.078062787652016,0.146747276186943,-0.116371981799603,0.087772361934185,0.025587635114789,-0.021030051633716,-0.331388711929321,-0.004066786728799,-0.095229081809521,0.050819516181946,0.010737244039774));
res += mul(Get(s3,dx,-dy), float4x4(-0.015331028029323,-0.094048231840134,0.011628214269876,0.036901284009218,0.090201877057552,-0.170617446303368,-0.109559655189514,-0.132400766015053,0.308034151792526,0.036766190081835,-0.178997561335564,0.080781765282154,-0.036081589758396,-0.016260448843241,0.040226880460978,-0.011969855055213));
res += mul(Get(s3,dx,0), float4x4(-0.074428722262383,-0.107833541929722,-0.097083926200867,0.174580827355385,0.162764370441437,-0.179286822676659,-0.161637544631958,0.146852642297745,0.072482891380787,0.022054182365537,0.239718437194824,-0.228726267814636,-0.046293191611767,-0.058081693947315,-0.046581022441387,0.296749472618103));
res += mul(Get(s3,dx,dy), float4x4(0.024427022784948,-0.139534488320351,-0.066610708832741,0.000299103005091,0.069330774247646,-0.027150467038155,-0.098329924046993,0.181948751211166,0.055370677262545,0.080694235861301,0.297019839286804,-0.166563078761101,-0.044216673821211,-0.102001212537289,-0.092305876314640,0.237612724304199));
return max(float4(0,0,0,0), res);
}
