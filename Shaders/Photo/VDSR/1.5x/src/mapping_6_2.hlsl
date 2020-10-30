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
res += mul(Get(s0,-dx,-dy), float4x4(-0.003469678340480,-0.026937657967210,0.045883487910032,0.003151378128678,0.002139967866242,0.080932192504406,-0.012203928083181,0.008313628844917,0.044678322970867,-0.000899530772585,-0.029224781319499,0.026347456499934,-0.001576058566570,0.037046950310469,-0.007633131928742,-0.033462215214968));
res += mul(Get(s0,-dx,0), float4x4(0.030825244262815,0.078131400048733,0.087904796004295,-0.089433126151562,-0.005463229492307,0.020127395167947,-0.024994127452374,-0.003583974437788,0.022988792508841,0.038065943866968,-0.009383950382471,-0.125849753618240,0.009811502881348,0.047281399369240,-0.000207366581890,-0.020078208297491));
res += mul(Get(s0,-dx,dy), float4x4(-0.004965051542968,-0.006501871161163,0.033117279410362,0.146167829632759,0.004946576431394,-0.032145127654076,0.119823701679707,-0.037941861897707,0.092820972204208,0.072180546820164,-0.057164374738932,-0.097291283309460,-0.001079841633327,0.003239538287744,0.009894705377519,-0.005533769261092));
res += mul(Get(s0,0,-dy), float4x4(0.050937030464411,0.075959883630276,0.016473406925797,-0.018510324880481,-0.055608283728361,-0.047555424273014,-0.089665248990059,0.073633365333080,-0.020461054518819,0.022886300459504,-0.011956331320107,-0.034696362912655,0.065390795469284,0.145840838551521,0.064237922430038,0.022110639140010));
res += mul(Get(s0,0,0), float4x4(0.004187325481325,0.042458433657885,0.152379930019379,0.002704446436837,0.076096951961517,-0.091718532145023,0.180160015821457,0.030894063413143,-0.024111233651638,-0.020070442929864,0.040335830301046,-0.023408062756062,0.043418589979410,0.062828123569489,0.072310857474804,0.034194245934486));
res += mul(Get(s0,0,dy), float4x4(0.095076300203800,0.049708630889654,0.066506065428257,0.038691096007824,0.054829187691212,0.154055744409561,0.007321227807552,-0.001931002363563,0.003845382714644,-0.140352696180344,0.093489706516266,-0.033116858452559,0.057805597782135,-0.048797603696585,0.117698632180691,0.030756944790483));
res += mul(Get(s0,dx,-dy), float4x4(0.060685865581036,0.047248277813196,-0.006775081623346,-0.069256439805031,-0.003168241353706,-0.064659513533115,-0.225540682673454,-0.015415620058775,0.083062306046486,0.012850151397288,-0.069565728306770,-0.039004500955343,-0.032964151352644,-0.010404848493636,0.072177365422249,0.066691435873508));
res += mul(Get(s0,dx,0), float4x4(0.180487215518951,0.092253386974335,0.103762835264206,-0.070537708699703,-0.087725088000298,0.043841827660799,-0.075879603624344,-0.075338214635849,0.077694982290268,-0.006438446696848,-0.027162319049239,-0.017893765121698,-0.017408646643162,-0.071367628872395,0.111267335712910,0.089224271476269));
res += mul(Get(s0,dx,dy), float4x4(0.051959961652756,-0.003899798728526,0.015329251997173,0.073158197104931,-0.108864091336727,-0.070775724947453,0.049099802970886,0.073615111410618,0.163435056805611,0.118565827608109,-0.088537484407425,-0.095410853624344,0.029653284698725,-0.077776998281479,0.052906740456820,0.090784557163715));
res += mul(Get(s1,-dx,-dy), float4x4(-0.055411387234926,-0.038379732519388,0.001171976677142,0.072612710297108,0.056415226310492,-0.079368457198143,0.095557361841202,0.065409213304520,-0.033708296716213,0.057372923940420,0.022969078272581,0.026098310947418,0.012479103170335,-0.129501566290855,0.068007186055183,-0.051621187478304));
res += mul(Get(s1,-dx,0), float4x4(-0.033805008977652,-0.062317296862602,0.075225435197353,0.102404460310936,0.035237744450569,0.053173892199993,0.037974517792463,0.201450645923615,-0.044111616909504,-0.047276150435209,0.022963503375649,0.103514574468136,0.013414952903986,-0.068610727787018,0.021245805546641,-0.040061548352242));
res += mul(Get(s1,-dx,dy), float4x4(0.018164945766330,0.014824767597020,0.099222801625729,0.006236521527171,0.004104885272682,0.024231474846601,-0.033618479967117,0.249069303274155,-0.135424166917801,0.028917159885168,-0.116087801754475,0.033847641199827,0.060282554477453,-0.112546026706696,-0.016069477424026,0.053998015820980));
res += mul(Get(s1,0,-dy), float4x4(-0.056233923882246,-0.091082528233528,-0.052974071353674,0.135529831051826,0.038000296801329,-0.045369725674391,0.087532334029675,0.003274327376857,-0.003421167610213,0.064875885844231,0.078344583511353,0.035778570920229,-0.044796768575907,-0.080631911754608,0.026782257482409,-0.055167667567730));
res += mul(Get(s1,0,0), float4x4(0.082566916942596,-0.156825080513954,0.265652507543564,0.060503043234348,-0.054179262369871,-0.015559714287519,0.016288561746478,0.041266050189734,0.034331712871790,-0.054326251149178,0.121777862310410,0.045104946941137,-0.106248706579208,-0.076333865523338,0.075956575572491,-0.132468625903130));
res += mul(Get(s1,0,dy), float4x4(0.102946549654007,0.097756274044514,-0.095750495791435,-0.094790861010551,-0.023161845281720,-0.047014884650707,0.052981898188591,0.076062858104706,0.021280702203512,-0.007005657535046,0.123369470238686,-0.028116129338741,-0.009826134890318,-0.006991440895945,0.112735755741596,0.015021080151200));
res += mul(Get(s1,dx,-dy), float4x4(0.002437714254484,0.070108912885189,-0.131918653845787,-0.089730046689510,0.076607637107372,-0.046570695936680,0.089672297239304,0.143208920955658,-0.071113817393780,0.115783192217350,-0.029038341715932,-0.056781258434057,-0.077722229063511,-0.077194370329380,-0.010744675993919,-0.036631450057030));
res += mul(Get(s1,dx,0), float4x4(0.109933368861675,-0.118722587823868,0.064767584204674,0.047147776931524,0.063587635755539,0.030070161446929,0.000023880789740,0.124210573732853,-0.072789624333382,0.123625792562962,0.021919563412666,0.009063911624253,0.007453469559550,-0.048845306038857,0.067727029323578,0.057665884494781));
res += mul(Get(s1,dx,dy), float4x4(0.021568801254034,0.071140967309475,0.006230222526938,-0.099407918751240,0.062167026102543,0.049292974174023,0.066305600106716,0.141993671655655,0.005922466982156,0.059671342372894,0.054634559899569,-0.010484613478184,0.096353851258755,-0.008305027149618,0.030161334201694,0.024848934262991));
res += mul(Get(s2,-dx,-dy), float4x4(-0.007974470034242,-0.006121757440269,-0.075995199382305,0.032603763043880,-0.141452088952065,0.019114026799798,-0.174335300922394,-0.072491072118282,0.007609847467393,-0.039367545396090,-0.014373150654137,0.090653240680695,0.042885459959507,0.063883073627949,-0.013702882453799,0.029002070426941));
res += mul(Get(s2,-dx,0), float4x4(0.002784993033856,0.079076610505581,0.126884207129478,-0.030148375779390,0.018779175356030,-0.088349565863609,0.011585953645408,0.032741893082857,-0.063146285712719,-0.045747846364975,0.147035211324692,0.007604776881635,0.049265980720520,0.141102582216263,0.017859801650047,0.092354997992516));
res += mul(Get(s2,-dx,dy), float4x4(0.010655614547431,0.017147652804852,0.082070685923100,-0.039907075464725,-0.114284977316856,-0.072293609380722,0.027871273458004,-0.032083563506603,-0.044213805347681,0.040247004479170,0.009534565731883,-0.065092712640762,-0.017695639282465,0.016684696078300,-0.028132217004895,0.061385583132505));
res += mul(Get(s2,0,-dy), float4x4(0.014157668687403,0.086698569357395,-0.093859113752842,-0.123784899711609,0.068911954760551,-0.083754979074001,-0.096377298235893,-0.131594642996788,0.112359836697578,-0.070505619049072,-0.149448335170746,0.055096339434385,0.007671650499105,0.036621253937483,-0.045848928391933,-0.016293954104185));
res += mul(Get(s2,0,0), float4x4(0.043491262942553,0.057127483189106,0.044898699969053,-0.171146616339684,0.127086728811264,0.125971883535385,0.145759254693985,-0.052320372313261,0.077981017529964,0.092180028557777,-0.073779582977295,0.111149094998837,0.013294438831508,0.163315981626511,-0.044460199773312,0.014472612179816));
res += mul(Get(s2,0,dy), float4x4(0.018420480191708,-0.004639944061637,0.066641703248024,0.003384180366993,-0.092896685004234,0.075349368155003,0.016649074852467,-0.043883532285690,-0.020569367334247,0.046484097838402,-0.020308539271355,0.107602775096893,-0.040449365973473,0.041674841195345,0.005302393808961,0.038914840668440));
res += mul(Get(s2,dx,-dy), float4x4(-0.070234738290310,-0.058581706136465,-0.153925582766533,-0.012883638963103,-0.028562294319272,0.038089431822300,-0.069818750023842,-0.107661411166191,-0.089104153215885,-0.098993681371212,-0.098660811781883,0.076584070920944,-0.010625720024109,-0.004029207862914,0.086816549301147,0.019805114716291));
res += mul(Get(s2,dx,0), float4x4(-0.029010418802500,-0.089356601238251,0.063672989606857,0.137182787060738,0.060136996209621,0.098951317369938,-0.011029406450689,0.144197329878807,0.031182130798697,0.001345464959741,-0.028153479099274,-0.029666321352124,0.016704894602299,0.072556152939796,0.023170029744506,0.118956089019775));
res += mul(Get(s2,dx,dy), float4x4(0.026296561583877,-0.046346716582775,0.000563185370993,-0.022393746301532,-0.045212376862764,-0.046160664409399,0.008320016786456,0.011873740702868,0.020751642063260,0.070800103247166,-0.047555640339851,0.015551704913378,-0.042307067662477,0.053611122071743,0.029131958261132,0.020287832245231));
res += mul(Get(s3,-dx,-dy), float4x4(0.021504225209355,0.052969854325056,-0.007720472291112,-0.019056838005781,-0.136762842535973,-0.018070476129651,-0.006909448187798,0.044780779629946,-0.031525075435638,-0.078650452196598,-0.041671719402075,-0.048812605440617,0.013778733089566,0.131599873304367,-0.121814996004105,-0.088144704699516));
res += mul(Get(s3,-dx,0), float4x4(0.082773119211197,0.038565147668123,0.022228956222534,-0.039639148861170,-0.146529540419579,0.051731817424297,-0.031517706811428,0.046933412551880,0.071888789534569,0.145091265439987,-0.013655909337103,-0.038693469017744,-0.127491503953934,0.167276963591576,-0.022746281698346,-0.079215131700039));
res += mul(Get(s3,-dx,dy), float4x4(-0.029256347566843,0.049105420708656,0.019061576575041,0.020199405029416,0.008075184188783,-0.072917066514492,0.021536843851209,0.177028268575668,0.011673454195261,0.077553227543831,0.061889857053757,0.030062984675169,-0.073644898831844,0.028963489457965,0.000128077954287,-0.006154098082334));
res += mul(Get(s3,0,-dy), float4x4(-0.022004088386893,0.049770668148994,0.006074148230255,0.042157929390669,-0.005313301924616,-0.051579836755991,0.008600879460573,0.106153793632984,0.156191498041153,-0.095342628657818,-0.102251850068569,0.062187228351831,0.045354779809713,-0.037452727556229,0.053727202117443,0.011918800882995));
res += mul(Get(s3,0,0), float4x4(0.092864595353603,-0.101372301578522,0.042467616498470,-0.043966405093670,-0.027343785390258,-0.050666678696871,-0.108710438013077,-0.023140039294958,0.041655022650957,0.112563177943230,-0.077600792050362,-0.013965878635645,-0.000718117633369,-0.005307807587087,0.113160990178585,0.009088283404708));
res += mul(Get(s3,0,dy), float4x4(-0.041241314262152,0.009656872600317,0.060456614941359,0.077340133488178,-0.055220481008291,0.002079864731058,-0.039485044777393,-0.057312283664942,0.032131820917130,0.117535129189491,-0.031942930072546,-0.024230381473899,-0.031552005559206,-0.146491616964340,-0.001511157141067,0.061858709901571));
res += mul(Get(s3,dx,-dy), float4x4(0.012418647296727,0.044773422181606,-0.046104777604342,0.047031972557306,-0.023983214050531,-0.052140101790428,-0.099045336246490,-0.002230690559372,0.097221240401268,-0.102366447448730,-0.155218407511711,-0.022211268544197,0.135328248143196,0.058644231408834,-0.135549440979958,-0.078748568892479));
res += mul(Get(s3,dx,0), float4x4(0.138421565294266,0.067528031766415,-0.102709077298641,-0.013527207076550,-0.050953183323145,-0.112684294581413,0.088535986840725,0.043953899294138,-0.038584750145674,-0.061502061784267,0.021381067112088,0.118258997797966,-0.029218677431345,-0.080682225525379,0.057769078761339,-0.111800424754620));
res += mul(Get(s3,dx,dy), float4x4(-0.009080687537789,0.022029284387827,-0.013891387730837,-0.027061639353633,-0.011416827328503,-0.086581438779831,-0.019527196884155,-0.044762291014194,-0.018988639116287,-0.038524642586708,-0.027724355459213,0.016487380489707,-0.000378982367693,-0.078840613365173,0.017545787617564,-0.017311120405793));
return max(float4(0,0,0,0), res);
}
