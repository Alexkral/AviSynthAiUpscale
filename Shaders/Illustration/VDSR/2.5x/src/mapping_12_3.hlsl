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
res += mul(Get(s0,-dx,-dy), float4x4(0.028070410713553,0.083965018391609,0.078575104475021,0.105683468282223,0.192704960703850,-0.090860061347485,0.083084814250469,0.109592296183109,-0.062930442392826,-0.069267675280571,0.103283338248730,0.122947998344898,0.023290304467082,0.019710024818778,0.124836072325706,-0.059453252702951));
res += mul(Get(s0,-dx,0), float4x4(0.133437037467957,0.114000216126442,0.114295393228531,-0.150409951806068,-0.060260955244303,0.075822696089745,-0.059774301946163,0.022015810012817,0.084277532994747,0.085870824754238,-0.011555043980479,0.004797873552889,0.015237827785313,-0.061226230114698,0.068100273609161,-0.050920072942972));
res += mul(Get(s0,-dx,dy), float4x4(0.094922609627247,0.214228555560112,-0.050204124301672,-0.135842055082321,-0.051057089120150,0.035582609474659,0.065141230821609,-0.079077653586864,0.013207922689617,0.014710507355630,0.040842775255442,0.070221386849880,-0.130083143711090,-0.075670480728149,-0.136911198496819,0.041827321052551));
res += mul(Get(s0,0,-dy), float4x4(0.104597240686417,0.079715639352798,-0.102947488427162,-0.026799861341715,0.001679032109678,0.085290960967541,-0.010115248151124,-0.035530906170607,0.171711742877960,0.051583379507065,-0.043515786528587,-0.060487005859613,-0.055093612521887,0.021423405036330,0.009656387381256,-0.048474263399839));
res += mul(Get(s0,0,0), float4x4(-0.004415318835527,0.020110353827477,-0.203620746731758,-0.115288905799389,0.051878739148378,0.086431331932545,-0.048802956938744,-0.182516172528267,-0.090256959199905,-0.084707729518414,-0.088973276317120,-0.014611181803048,-0.100170299410820,0.076496839523315,-0.040872789919376,0.153017535805702));
res += mul(Get(s0,0,dy), float4x4(0.035234563052654,0.123786509037018,-0.236160650849342,-0.183323785662651,0.047674417495728,-0.084556624293327,-0.191093489527702,0.064157962799072,0.096316412091255,-0.141027197241783,0.125688061118126,-0.238134324550629,-0.046473920345306,0.133102864027023,0.143149569630623,-0.019309582188725));
res += mul(Get(s0,dx,-dy), float4x4(-0.061986345797777,0.032722447067499,-0.065315835177898,-0.053780827671289,0.052565328776836,-0.022555453702807,-0.084549635648727,0.031658332794905,-0.025511439889669,-0.053409501910210,-0.163052499294281,-0.106164544820786,-0.017559066414833,0.032000921666622,-0.054081510752439,-0.048373922705650));
res += mul(Get(s0,dx,0), float4x4(-0.001544557511806,-0.174287930130959,0.041628688573837,-0.131622180342674,0.180056944489479,0.070923916995525,0.083350703120232,0.100286819040775,-0.010931487195194,-0.023930260911584,0.054885391145945,-0.124373868107796,0.200137928128242,0.113334141671658,-0.173362463712692,-0.016766976565123));
res += mul(Get(s0,dx,dy), float4x4(0.108363479375839,-0.044161148369312,-0.090117141604424,-0.076474405825138,0.058109715580940,0.034477550536394,-0.092253021895885,-0.146576687693596,-0.187904462218285,0.091319635510445,0.123086266219616,-0.095099210739136,0.047633625566959,0.183154582977295,-0.122741870582104,-0.008695276454091));
res += mul(Get(s1,-dx,-dy), float4x4(0.024909745901823,-0.043595861643553,-0.055113561451435,-0.025960698723793,0.115707777440548,-0.033267814666033,0.111180797219276,0.007171452976763,-0.002272742800415,-0.063042953610420,0.014358097687364,0.154995217919350,0.059682708233595,0.000605216482654,0.044047005474567,0.221016258001328));
res += mul(Get(s1,-dx,0), float4x4(-0.018432790413499,-0.112451501190662,-0.165310919284821,-0.035875950008631,0.254292488098145,0.018082752823830,-0.047320738434792,0.113135091960430,0.224196135997772,0.123933702707291,-0.010196899995208,-0.043735798448324,-0.225012898445129,0.095292396843433,0.079749323427677,0.008231261745095));
res += mul(Get(s1,-dx,dy), float4x4(-0.056049160659313,-0.005244919564575,0.125570714473724,-0.126725196838379,0.125021532177925,-0.193439766764641,-0.192628294229507,-0.215423285961151,-0.159884959459305,-0.065865196287632,-0.146080583333969,-0.177827090024948,-0.108364664018154,0.263727903366089,0.011248141527176,-0.037321347743273));
res += mul(Get(s1,0,-dy), float4x4(0.262561142444611,-0.137570366263390,0.053777173161507,0.066681005060673,0.022356910631061,-0.003521675243974,-0.001116872997954,0.245692238211632,-0.054614644497633,0.041309535503387,-0.034099604934454,0.020037379115820,0.087400853633881,-0.018545569851995,-0.087752252817154,0.047526530921459));
res += mul(Get(s1,0,0), float4x4(-0.090071432292461,-0.044427983462811,0.054765988141298,-0.047709591686726,0.101844206452370,0.089246526360512,-0.147094115614891,0.168573230504990,0.113916069269180,0.035753991454840,0.118163466453552,-0.009637448005378,-0.095887497067451,0.045603536069393,0.096686199307442,0.040422171354294));
res += mul(Get(s1,0,dy), float4x4(-0.050011295825243,0.130264595150948,0.063990399241447,0.046181377023458,0.026898657903075,-0.066588893532753,-0.195471495389938,0.048430357128382,-0.021226292476058,-0.217734068632126,0.124866113066673,0.034616470336914,-0.051476541906595,-0.199034646153450,0.095829844474792,-0.067951172590256));
res += mul(Get(s1,dx,-dy), float4x4(0.151808634400368,0.053090494126081,-0.056544005870819,-0.005948355887085,0.123366795480251,0.050577931106091,0.034371260553598,-0.149929270148277,-0.007264867424965,0.240108251571655,-0.030816268175840,0.042192723602057,-0.169533893465996,0.029156457632780,0.023653071373701,0.179874047636986));
res += mul(Get(s1,dx,0), float4x4(-0.117881543934345,0.374875426292419,0.115620292723179,0.049550887197256,-0.107758961617947,0.008123686537147,0.030172115191817,0.080313585698605,-0.023517677560449,0.066663287580013,0.109965130686760,0.053658533841372,0.007096560671926,-0.078351356089115,0.111305817961693,0.060790199786425));
res += mul(Get(s1,dx,dy), float4x4(0.067811727523804,0.065718151628971,-0.022421495988965,-0.182278931140900,0.005643074400723,-0.059879768639803,-0.132020935416222,-0.037934586405754,-0.007458633277565,0.134232446551323,-0.011760388500988,-0.048955924808979,-0.008544411510229,0.147259771823883,-0.056887041777372,-0.186972528696060));
res += mul(Get(s2,-dx,-dy), float4x4(0.001403725240380,-0.065250433981419,-0.143949687480927,0.073462575674057,0.066459700465202,-0.153078749775887,-0.210279807448387,0.054748166352510,0.112916044890881,0.184196025133133,0.016962684690952,-0.031595278531313,0.265962272882462,0.169871106743813,-0.110248796641827,-0.008426268585026));
res += mul(Get(s2,-dx,0), float4x4(-0.029647354036570,0.015558770857751,-0.012935512699187,0.118811160326004,0.216436475515366,0.154590860009193,0.204438850283623,0.063641779124737,-0.197099655866623,0.212834611535072,-0.159012630581856,0.001452898723073,0.087316170334816,0.159686237573624,0.091615259647369,-0.247267559170723));
res += mul(Get(s2,-dx,dy), float4x4(-0.032413449138403,0.169366046786308,0.017984844744205,-0.166293054819107,0.110343456268311,0.022421980276704,0.054628785699606,0.216715916991234,0.027546547353268,-0.112020567059517,-0.127982914447784,0.049170073121786,0.076470635831356,0.076476432383060,-0.144421696662903,-0.003460319479927));
res += mul(Get(s2,0,-dy), float4x4(-0.085645206272602,-0.156159743666649,-0.223576202988625,-0.026388032361865,-0.132531225681305,0.021867504343390,0.006894786842167,-0.010995137505233,0.090578429400921,0.227160021662712,0.011149636469781,0.036983110010624,0.026957090944052,-0.001177006051876,-0.107014469802380,-0.099022962152958));
res += mul(Get(s2,0,0), float4x4(-0.098354034125805,-0.216416776180267,-0.165200486779213,-0.022978033870459,-0.004381156060845,0.059008896350861,0.173127278685570,0.086291134357452,-0.045223288238049,-0.000413133791881,0.034488718956709,-0.121345587074757,-0.006290956400335,0.136077895760536,-0.003964092116803,0.082520246505737));
res += mul(Get(s2,0,dy), float4x4(-0.051418285816908,0.072055079042912,-0.138284012675285,-0.115869194269180,0.010234579443932,0.052242506295443,0.138869911432266,0.087233409285545,-0.002440188545734,-0.042799759656191,0.116413637995720,0.118571281433105,0.136618152260780,-0.059472423046827,0.015902908518910,0.209698468446732));
res += mul(Get(s2,dx,-dy), float4x4(0.066507726907730,0.029622316360474,0.049873329699039,0.299665361642838,-0.181851103901863,0.031285781413317,-0.053587321192026,0.166600227355957,-0.068269804120064,0.175568625330925,-0.005932082422078,0.148303553462029,0.105640649795532,0.049975302070379,-0.050349451601505,0.079983249306679));
res += mul(Get(s2,dx,0), float4x4(0.110407762229443,0.061814676970243,0.080629073083401,0.054694518446922,-0.051184773445129,0.127242147922516,-0.119013801217079,0.001325806486420,-0.120330482721329,0.056055486202240,0.061664652079344,-0.106852047145367,0.068607181310654,0.070391818881035,0.035011738538742,0.315019667148590));
res += mul(Get(s2,dx,dy), float4x4(0.190482273697853,0.047163169831038,-0.085039988160133,-0.088282428681850,-0.087791152298450,-0.014267209917307,0.055940099060535,0.083635605871677,-0.271308690309525,-0.124800443649292,-0.132596418261528,-0.051441770046949,0.122335672378540,0.188329786062241,0.128089293837547,0.289145529270172));
res += mul(Get(s3,-dx,-dy), float4x4(-0.079891853034496,-0.016091115772724,0.193596720695496,-0.035007558763027,-0.010940724983811,0.192934677004814,0.152750730514526,0.122217871248722,-0.100773908197880,0.141239047050476,0.298528939485550,-0.063811682164669,0.026237456128001,0.047856308519840,0.068789340555668,0.070576153695583));
res += mul(Get(s3,-dx,0), float4x4(-0.157807126641273,-0.119028441607952,-0.032689351588488,-0.104974254965782,-0.113290630280972,0.104830645024776,-0.087934225797653,0.093502677977085,0.151725515723228,0.058458395302296,0.001597576425411,-0.010216384194791,-0.074807189404964,-0.125314593315125,0.108806528151035,0.173837751150131));
res += mul(Get(s3,-dx,dy), float4x4(-0.157825589179993,0.143623456358910,-0.098787628114223,-0.187314480543137,-0.012072423473001,-0.047712251543999,-0.022289989516139,0.121086247265339,0.183379024267197,0.139271304011345,-0.066109448671341,-0.032967064529657,0.087202437222004,-0.053990513086319,0.070990070700645,-0.050705812871456));
res += mul(Get(s3,0,-dy), float4x4(0.276915907859802,-0.022601203992963,-0.022852072492242,-0.193553611636162,-0.277933686971664,0.028491925448179,0.121725492179394,0.011378802359104,0.205818176269531,0.056278996169567,-0.075935333967209,0.162598595023155,-0.208502367138863,0.020409286022186,-0.031168645247817,0.186724007129669));
res += mul(Get(s3,0,0), float4x4(-0.154183819890022,-0.120397731661797,-0.023351952433586,0.052826832979918,0.057328395545483,0.179695278406143,0.103682935237885,0.047332793474197,-0.001743711763993,-0.169182524085045,-0.124230884015560,0.022367024794221,0.128049924969673,-0.126156046986580,0.051887303590775,0.151623204350471));
res += mul(Get(s3,0,dy), float4x4(-0.010708127170801,-0.160379156470299,0.104377999901772,0.082363247871399,-0.001363995368592,0.204438999295235,0.005090818740427,-0.074720762670040,-0.019496181979775,0.031616322696209,-0.074432641267776,0.000465379969683,0.108849942684174,-0.002890530973673,-0.092458263039589,-0.107402727007866));
res += mul(Get(s3,dx,-dy), float4x4(0.125694409012794,0.009575666859746,-0.008198277093470,0.004823706578463,-0.047845304012299,-0.327320873737335,0.068638108670712,-0.143293261528015,0.051556359976530,0.072392813861370,0.052684858441353,-0.100347079336643,-0.136097148060799,-0.020672054961324,-0.046697340905666,0.024932885542512));
res += mul(Get(s3,dx,0), float4x4(0.211649522185326,-0.035263001918793,0.051478967070580,-0.027298906818032,0.167701259255409,-0.040440190583467,-0.075071722269058,0.054598700255156,0.062090180814266,-0.024575177580118,0.165603652596474,0.101590730249882,-0.093360543251038,0.060834094882011,0.028278851881623,-0.026545474305749));
res += mul(Get(s3,dx,dy), float4x4(0.105416275560856,-0.202098816633224,0.064420633018017,0.027242364361882,-0.112286575138569,0.072374954819679,-0.069544881582260,0.059056747704744,0.106474407017231,0.073984123766422,0.108822718262672,0.194702908396721,-0.164432749152184,-0.087698474526405,-0.080223023891449,-0.177802041172981));
return max(float4(0,0,0,0), res);
}
