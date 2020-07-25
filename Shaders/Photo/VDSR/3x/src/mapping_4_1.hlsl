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
res += mul(Get(s0,-dx,-dy), float4x4(-0.016681775450706,-0.004575707018375,0.070991292595863,-0.022741205990314,-0.105751052498817,0.023369159549475,0.004630242008716,0.121858634054661,0.108470007777214,0.095332294702530,0.000712321081664,-0.009579188190401,-0.029191464185715,0.126288071274757,0.016064869239926,0.036667704582214));
res += mul(Get(s0,-dx,0), float4x4(0.056158907711506,-0.086825922131538,0.119761064648628,-0.153783723711967,0.192086651921272,-0.133577287197113,-0.099282659590244,0.063672080636024,0.056445918977261,-0.183581918478012,-0.081816583871841,0.130504846572876,-0.035613019019365,-0.087691321969032,-0.032123610377312,-0.108986623585224));
res += mul(Get(s0,-dx,dy), float4x4(0.201271608471870,-0.107744604349136,-0.112152472138405,0.042155489325523,0.187325552105904,0.030359124764800,-0.161873221397400,0.010860965587199,0.120434366166592,-0.203543215990067,-0.038813591003418,0.040169231593609,0.100949391722679,0.213897645473480,0.055219817906618,0.147807583212852));
res += mul(Get(s0,0,-dy), float4x4(0.070032462477684,-0.004357297904789,0.074507959187031,-0.119958490133286,0.000622189487331,-0.065866574645042,-0.122571535408497,0.037663880735636,-0.133759975433350,-0.046125233173370,0.028271945193410,0.208375826478004,-0.129621386528015,0.115720167756081,-0.072251468896866,0.096030712127686));
res += mul(Get(s0,0,0), float4x4(0.191248059272766,-0.212621212005615,-0.098023794591427,-0.234566971659660,0.025142159312963,-0.064885839819908,-0.248043790459633,0.060132987797260,0.157304406166077,-0.072216734290123,0.211536630988121,-0.139505296945572,0.171949058771133,0.011960513889790,-0.123059310019016,0.086264163255692));
res += mul(Get(s0,0,dy), float4x4(-0.081569314002991,-0.071392707526684,0.172263771295547,-0.067825369536877,-0.024767581373453,0.022418614476919,-0.241748273372650,-0.120696485042572,0.043336119502783,0.091237522661686,0.036526784300804,0.052856203168631,0.121121764183044,0.014500949531794,-0.214551910758018,-0.042770564556122));
res += mul(Get(s0,dx,-dy), float4x4(0.058837629854679,-0.050453044474125,0.139293864369392,0.117551647126675,0.083189822733402,-0.288314789533615,0.138057246804237,-0.026432333514094,-0.082222342491150,0.038941111415625,-0.028010558336973,-0.047091737389565,-0.218030840158463,-0.107628688216209,0.134385749697685,-0.023003097623587));
res += mul(Get(s0,dx,0), float4x4(-0.053263019770384,-0.160822093486786,0.008166748099029,0.097592093050480,0.073626294732094,-0.182495355606079,0.028578884899616,-0.171107545495033,0.014012013562024,0.105740405619144,0.187223494052887,-0.013761260546744,-0.097784116864204,0.018252247944474,0.156779423356056,0.106787323951721));
res += mul(Get(s0,dx,dy), float4x4(-0.098394148051739,0.075644411146641,0.088038250803947,0.010228974744678,-0.135468989610672,-0.067055515944958,0.070075139403343,-0.116136856377125,0.080761015415192,0.027014164254069,-0.150006473064423,0.091004513204098,0.021632833406329,0.183853164315224,-0.121987268328667,-0.017745187506080));
res += mul(Get(s1,-dx,-dy), float4x4(0.150180056691170,-0.023703446611762,-0.002937302924693,0.024622453376651,0.164200663566589,0.006974050309509,-0.103985503315926,-0.025076769292355,-0.066593579947948,-0.018216855823994,0.125415965914726,-0.105104856193066,0.123707354068756,-0.154173940420151,-0.155719816684723,-0.027107810601592));
res += mul(Get(s1,-dx,0), float4x4(0.235241353511810,0.015019946731627,-0.067718058824539,-0.000050049111451,-0.019278302788734,-0.043098788708448,-0.042401395738125,0.026614276692271,0.305936634540558,-0.036635741591454,-0.094941720366478,0.013846131041646,-0.053436871618032,-0.219418928027153,0.064767710864544,-0.076400279998779));
res += mul(Get(s1,-dx,dy), float4x4(-0.004134808667004,-0.042117837816477,-0.145740479230881,0.065836369991302,-0.001805819571018,-0.132814884185791,0.001506821950898,0.052960406988859,0.134502843022346,-0.154605090618134,-0.024095399305224,-0.051338903605938,-0.149038583040237,0.068159699440002,0.094890795648098,-0.160001516342163));
res += mul(Get(s1,0,-dy), float4x4(-0.117138646543026,-0.028540179133415,-0.041125718504190,0.178595274686813,-0.005021099466830,-0.157810643315315,0.119925081729889,-0.097922183573246,-0.007902856916189,-0.116606406867504,-0.063652627170086,-0.101809315383434,-0.004442393779755,-0.196219056844711,0.044078912585974,-0.054334558546543));
res += mul(Get(s1,0,0), float4x4(0.033602900803089,-0.053513154387474,0.051449235528708,0.298793047666550,0.021689126268029,-0.023997910320759,-0.069567888975143,-0.071232602000237,-0.037145279347897,-0.011376858688891,0.144669860601425,-0.152659222483635,0.049662508070469,-0.106506116688251,-0.226393759250641,0.007192689459771));
res += mul(Get(s1,0,dy), float4x4(-0.188137426972389,0.103680461645126,0.040984649211168,-0.089594729244709,-0.095680072903633,-0.099979288876057,-0.205268666148186,-0.105146728456020,0.091492116451263,0.094277925789356,0.030455127358437,-0.118481613695621,-0.125701114535332,-0.209041178226471,0.013117966242135,0.066079892218113));
res += mul(Get(s1,dx,-dy), float4x4(-0.100499115884304,0.027611238881946,-0.204234376549721,-0.119502037763596,0.164654955267906,0.157382577657700,0.007595430128276,0.082339137792587,-0.060192745178938,0.041402366012335,-0.217613279819489,0.141828894615173,-0.073193162679672,0.038974136114120,-0.049893628805876,0.068117655813694));
res += mul(Get(s1,dx,0), float4x4(0.034010361880064,0.070824526250362,0.248967558145523,-0.154092475771904,0.007326751947403,0.104732066392899,-0.123296707868576,-0.025266604498029,-0.165307387709618,0.049809895455837,0.071688733994961,-0.027557360008359,0.115397937595844,-0.057042557746172,-0.141226068139076,0.306736350059509));
res += mul(Get(s1,dx,dy), float4x4(0.018043348565698,0.027318311855197,0.040955565869808,-0.057469218969345,0.059929918497801,0.048198703676462,0.063366800546646,-0.028122650459409,0.001794109004550,0.197474002838135,-0.078678146004677,-0.179975479841232,0.062887869775295,0.072766020894051,0.048639528453350,0.228818133473396));
res += mul(Get(s2,-dx,-dy), float4x4(0.064401246607304,-0.026713395491242,-0.045635480433702,-0.186172962188721,-0.056159965693951,0.156288579106331,0.052163999527693,-0.042811419814825,-0.206798300147057,0.027107210829854,0.046355854719877,-0.106896661221981,-0.002813256811351,0.017857965081930,0.051604647189379,0.112262271344662));
res += mul(Get(s2,-dx,0), float4x4(-0.135017037391663,0.016510408371687,-0.016973238438368,-0.027561742812395,0.125657305121422,-0.041793711483479,-0.131020754575729,0.006803339812905,0.178524076938629,0.058343242853880,-0.140485227108002,0.287143647670746,-0.058194689452648,-0.159705623984337,0.062408499419689,-0.033444769680500));
res += mul(Get(s2,-dx,dy), float4x4(0.057959228754044,0.035454344004393,-0.105373889207840,-0.107083350419998,0.106203079223633,-0.045296929776669,0.046749699860811,-0.086520306766033,0.018815832212567,-0.020710995420814,-0.209453821182251,0.022400371730328,0.184150978922844,-0.057764157652855,0.204346224665642,-0.083380557596684));
res += mul(Get(s2,0,-dy), float4x4(0.042040508240461,0.094526506960392,0.039032232016325,-0.029521951451898,-0.189285650849342,-0.053430911153555,-0.084472492337227,0.214524239301682,0.024767220020294,0.114265546202660,-0.094370953738689,-0.066600963473320,0.131004542112350,0.170216292142868,-0.148981750011444,-0.089936390519142));
res += mul(Get(s2,0,0), float4x4(0.069904737174511,-0.306238949298859,-0.204741433262825,0.083250634372234,-0.000307959446218,0.000076351345342,-0.021381447091699,0.034699868410826,0.222925662994385,-0.102200381457806,0.020234858617187,0.095273293554783,-0.089365109801292,0.082831606268883,0.026409257203341,0.045562840998173));
res += mul(Get(s2,0,dy), float4x4(-0.069297067821026,0.014973643235862,0.033552624285221,0.087534271180630,0.191963553428650,-0.056527581065893,0.182406365871429,-0.025451445952058,0.224070593714714,0.016186129301786,-0.073336385190487,0.206810578703880,0.283270448446274,0.021993381902575,0.100659511983395,0.034735534340143));
res += mul(Get(s2,dx,-dy), float4x4(-0.028821695595980,-0.245667964220047,0.198887720704079,-0.056136727333069,-0.043803557753563,-0.089115001261234,-0.175691515207291,-0.038962334394455,-0.012214520946145,-0.015847522765398,0.045149728655815,0.157355040311813,-0.019816525280476,-0.276544719934464,0.094110459089279,-0.039217915385962));
res += mul(Get(s2,dx,0), float4x4(-0.029253795742989,-0.185781314969063,-0.047819815576077,0.079165838658810,-0.026551753282547,-0.015638817101717,-0.093047671020031,0.083637498319149,0.064288176596165,0.033221203833818,-0.012613930739462,0.020100349560380,0.060931451618671,-0.006059053819627,0.358378201723099,0.042355190962553));
res += mul(Get(s2,dx,dy), float4x4(0.320024430751801,0.029839187860489,0.088905595242977,0.073200978338718,0.018026292324066,-0.106535673141479,0.184587776660919,0.152904033660889,-0.057848200201988,0.101354472339153,0.131360679864883,0.057116933166981,0.092035174369812,0.044938776642084,0.058936059474945,0.161323934793472));
res += mul(Get(s3,-dx,-dy), float4x4(-0.130707085132599,-0.001558249816298,0.163965314626694,-0.156418591737747,0.184629052877426,-0.079973973333836,-0.104962840676308,0.118410296738148,0.237599834799767,-0.090691171586514,-0.088834077119827,-0.090602338314056,0.033595487475395,0.003892232896760,0.019989205524325,0.056866645812988));
res += mul(Get(s3,-dx,0), float4x4(0.113213606178761,-0.281767517328262,0.071307711303234,-0.249350905418396,0.138298436999321,-0.125500574707985,0.162306144833565,0.156156614422798,0.083365820348263,-0.021597616374493,-0.104525908827782,0.187543258070946,0.040424358099699,-0.021655766293406,0.013175923377275,0.071992605924606));
res += mul(Get(s3,-dx,dy), float4x4(-0.293089061975479,-0.025468101724982,-0.136918842792511,-0.103063248097897,0.016288401558995,-0.156584054231644,0.135761782526970,0.152590721845627,-0.087436772882938,0.135934352874756,-0.020403377711773,0.108556114137173,-0.061621665954590,0.100153371691704,0.182205960154533,0.198209539055824));
res += mul(Get(s3,0,-dy), float4x4(0.033302139490843,0.026784574612975,0.053947098553181,0.015679143369198,0.182239443063736,0.028554722666740,-0.072141133248806,0.083530813455582,-0.007669605314732,-0.049028106033802,0.073222570121288,-0.033125087618828,-0.112072356045246,-0.074274770915508,-0.128441035747528,0.168423861265182));
res += mul(Get(s3,0,0), float4x4(0.110223039984703,0.034845076501369,0.043012399226427,0.044471405446529,-0.052434902638197,0.108676522970200,-0.050267204642296,-0.193482920527458,0.049520578235388,0.041370797902346,0.011229269206524,0.071418158710003,0.194943323731422,0.029868239536881,0.196098938584328,0.077295824885368));
res += mul(Get(s3,0,dy), float4x4(0.038983713835478,-0.005395794287324,0.018227986991405,0.102139227092266,-0.148265078663826,0.180478721857071,-0.039401844143867,0.050288885831833,0.031900905072689,-0.078846767544746,-0.059187702834606,0.009894646704197,-0.001664066570811,-0.003429713658988,-0.176454678177834,-0.048932764679193));
res += mul(Get(s3,dx,-dy), float4x4(-0.001502353232354,0.032631851732731,-0.001029327278957,0.027146583423018,-0.140864610671997,0.028134789317846,0.056451283395290,-0.026572154834867,-0.078471839427948,-0.026046477258205,-0.234207242727280,0.099681042134762,-0.147217139601707,-0.092314794659615,0.048877570778131,-0.005975898355246));
res += mul(Get(s3,dx,0), float4x4(-0.253838002681732,-0.027108374983072,-0.039225086569786,0.107429496943951,0.259104877710342,0.061217017471790,-0.108986675739288,-0.123165912926197,0.027666173875332,0.004726695362478,0.062927126884460,0.069378159940243,-0.031108714640141,0.039565131068230,0.007488851435483,0.074552185833454));
res += mul(Get(s3,dx,dy), float4x4(0.110828056931496,0.134738057851791,0.030906058847904,-0.057335115969181,-0.036181055009365,0.012421458028257,-0.087375119328499,-0.092374272644520,-0.103887617588043,0.262532651424408,-0.027911998331547,0.028283534571528,0.152671784162521,-0.037232514470816,0.102969475090504,-0.044172331690788));
return max(float4(0,0,0,0), res);
}