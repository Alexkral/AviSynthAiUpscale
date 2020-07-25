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
res += mul(Get(s0,-dx,-dy), float4x4(-0.011491092853248,0.072643294930458,0.133636459708214,0.008715877309442,0.085311599075794,-0.044479001313448,-0.047774057835340,-0.121276333928108,0.064689852297306,-0.141924455761909,0.007562790066004,-0.192188650369644,-0.072756893932819,-0.071992821991444,0.246648609638214,0.128603339195251));
res += mul(Get(s0,-dx,0), float4x4(0.108130455017090,-0.119346722960472,-0.041315436363220,0.102466382086277,0.094481714069843,0.100726269185543,0.020133817568421,-0.068014740943909,-0.047471735626459,0.207124233245850,-0.113821975886822,0.189761966466904,0.087356060743332,-0.222951322793961,-0.015867782756686,0.036147531121969));
res += mul(Get(s0,-dx,dy), float4x4(-0.005233675241470,-0.008739278651774,-0.015658646821976,0.169287338852882,0.036485906690359,-0.036998726427555,-0.048274766653776,0.119860887527466,0.112884476780891,-0.041273575276136,-0.016153622418642,0.147882521152496,0.130428642034531,-0.021815091371536,0.006533825770020,0.039599508047104));
res += mul(Get(s0,0,-dy), float4x4(-0.060906264930964,0.048692148178816,-0.072776526212692,-0.072503857314587,-0.037394654005766,-0.051668789237738,-0.129904016852379,0.011509616859257,0.048228379338980,0.059378925710917,0.131288006901741,0.049002446234226,-0.113566756248474,0.015281766653061,-0.152085840702057,-0.035361248999834));
res += mul(Get(s0,0,0), float4x4(0.095894739031792,-0.038126144558191,-0.041839849203825,0.095095001161098,0.021101724356413,-0.038246482610703,-0.087499082088470,0.064737200737000,0.143462672829628,0.135977640748024,0.036456551402807,0.145013585686684,0.084034532308578,0.150218144059181,0.110171146690845,-0.090233825147152));
res += mul(Get(s0,0,dy), float4x4(0.031816095113754,0.050491381436586,0.170003905892372,0.182486966252327,0.155822873115540,0.147253036499023,0.015499752946198,-0.164009854197502,-0.022310713306069,0.019298564642668,0.043779812753201,0.020423036068678,0.080000586807728,0.068343415856361,0.060431133955717,0.023758117109537));
res += mul(Get(s0,dx,-dy), float4x4(-0.104896277189255,0.045751538127661,-0.083234712481499,0.110747113823891,0.063654527068138,0.076924763619900,-0.033692616969347,-0.152499169111252,-0.040077354758978,-0.018827252089977,0.087347447872162,-0.190300866961479,0.132544636726379,0.103070072829723,0.019827213138342,-0.045298505574465));
res += mul(Get(s0,dx,0), float4x4(-0.099756710231304,0.234673574566841,0.136829853057861,0.122853778302670,-0.057330969721079,0.102373234927654,0.004145561717451,-0.189470291137695,0.196875795722008,0.063381008803844,0.054107058793306,0.022541072219610,0.074145935475826,-0.022496355697513,0.064876377582550,0.135661795735359));
res += mul(Get(s0,dx,dy), float4x4(-0.071492284536362,-0.130016416311264,-0.021862706169486,-0.008917457424104,-0.023643674328923,0.024795144796371,0.061171829700470,-0.036436509341002,-0.153810322284698,-0.028509894385934,-0.092824295163155,-0.043542422354221,0.032276451587677,0.138556614518166,0.086847566068172,-0.040612827986479));
res += mul(Get(s1,-dx,-dy), float4x4(-0.081069566309452,0.093712806701660,0.029319867491722,-0.071616634726524,0.081165544688702,-0.037984579801559,0.112032800912857,0.002480351133272,-0.114338874816895,-0.121319398283958,0.134650081396103,-0.192769438028336,-0.057915795594454,0.284578144550323,-0.199832320213318,-0.030019946396351));
res += mul(Get(s1,-dx,0), float4x4(0.134305000305176,-0.036535251885653,-0.251432925462723,-0.020373063161969,-0.061074562370777,-0.015154348686337,0.030215479433537,0.018279291689396,-0.041555847972631,-0.062292963266373,0.052582222968340,-0.106616489589214,0.073451504111290,0.024637598544359,0.071223102509975,-0.099013149738312));
res += mul(Get(s1,-dx,dy), float4x4(0.078357458114624,0.003178663086146,-0.012866779230535,0.107817269861698,-0.003255895106122,-0.142520383000374,-0.011517384089530,-0.007645057048649,-0.073811136186123,0.063717246055603,-0.102709904313087,-0.029658734798431,-0.057635113596916,0.151950657367706,0.185326710343361,-0.034600000828505));
res += mul(Get(s1,0,-dy), float4x4(-0.093374460935593,-0.143313899636269,-0.010634498670697,-0.049558505415916,0.021106284111738,0.068198524415493,-0.044955585151911,0.291182279586792,0.148712113499641,-0.016494445502758,0.041316021233797,-0.022109907120466,0.098290488123894,0.257873088121414,0.006739783566445,0.018246352672577));
res += mul(Get(s1,0,0), float4x4(0.064717054367065,-0.087131366133690,0.052050936967134,-0.008970685303211,-0.129678279161453,0.037808381021023,0.198924854397774,0.113214090466499,-0.072404287755489,-0.091876380145550,-0.087877459824085,0.026251668110490,0.224249765276909,0.118310682475567,-0.012448381632566,-0.046346351504326));
res += mul(Get(s1,0,dy), float4x4(-0.074955299496651,0.027579810470343,-0.038225073367357,-0.145234689116478,-0.044401030987501,-0.211597621440887,-0.167661800980568,0.183983996510506,-0.000622290652245,-0.021624347195029,-0.217152848839760,0.004725672770292,-0.017211157828569,-0.008907489478588,0.049093760550022,-0.049504537135363));
res += mul(Get(s1,dx,-dy), float4x4(-0.132107362151146,-0.081402361392975,0.004955559503287,0.018032750114799,-0.032413408160210,-0.058177713304758,-0.010489100590348,0.105032064020634,-0.034194827079773,0.072072021663189,-0.064051367342472,-0.124246880412102,-0.081373058259487,-0.224432900547981,-0.054799500852823,-0.046057149767876));
res += mul(Get(s1,dx,0), float4x4(-0.043544370681047,-0.017296826466918,0.016517460346222,-0.040325406938791,-0.059858269989491,-0.000683099264279,-0.148387417197227,-0.050849914550781,0.161418706178665,-0.010219008661807,0.173607721924782,-0.046418912708759,-0.120075352489948,-0.166752219200134,0.033351242542267,0.111700385808945));
res += mul(Get(s1,dx,dy), float4x4(0.003715809667483,0.118153199553490,-0.025339916348457,-0.050264850258827,-0.129790976643562,-0.243166252970695,-0.120406679809093,-0.053929552435875,0.145349577069283,-0.129079103469849,0.009637090377510,0.163036301732063,0.119794405996799,-0.063844420015812,0.248315036296844,0.078962668776512));
res += mul(Get(s2,-dx,-dy), float4x4(0.057752918452024,0.014830455183983,-0.089479744434357,-0.073560766875744,0.094107352197170,-0.086777843534946,-0.074714452028275,0.055899754166603,-0.048422560095787,-0.098383367061615,0.024710845202208,0.042891699820757,-0.066816151142120,0.142850488424301,-0.118214696645737,0.336447238922119));
res += mul(Get(s2,-dx,0), float4x4(0.086325682699680,0.182904884219170,0.006838607601821,-0.074280947446823,-0.070262417197227,0.049271274358034,0.229742839932442,0.014325466006994,-0.027036704123020,0.151547014713287,0.037024371325970,0.078530058264732,-0.113951340317726,0.073807872831821,-0.163711890578270,0.019087199121714));
res += mul(Get(s2,-dx,dy), float4x4(-0.022735955193639,0.240783438086510,0.042055804282427,-0.174965098500252,0.042105879634619,-0.113733805716038,-0.050030265003443,-0.194295972585678,0.131336927413940,0.058311782777309,0.030407948419452,-0.063783347606659,0.087315700948238,0.184850871562958,0.069166608154774,-0.107051476836205));
res += mul(Get(s2,0,-dy), float4x4(-0.089617677032948,0.085480853915215,0.043013364076614,0.115400418639183,-0.100253239274025,0.030473433434963,0.049755308777094,-0.085063382983208,0.052063401788473,-0.099142000079155,-0.022249169647694,0.131768569350243,-0.132823020219803,0.112046666443348,0.100178055465221,0.255702733993530));
res += mul(Get(s2,0,0), float4x4(-0.056829094886780,-0.126238003373146,0.087613932788372,-0.010108240880072,0.205147549510002,0.130034476518631,0.039468023926020,-0.002997143659741,0.007086479105055,0.158801108598709,-0.109782375395298,-0.118276625871658,0.066983707249165,-0.009940578602254,0.079262115061283,-0.000747863261495));
res += mul(Get(s2,0,dy), float4x4(-0.061173237860203,-0.020005308091640,-0.021243346855044,-0.023828631266952,0.023635929450393,0.170466631650925,0.054687809199095,0.088593773543835,-0.100526876747608,0.099877230823040,-0.097142323851585,0.012662481516600,-0.219447791576385,0.103509135544300,0.094358436763287,-0.091037206351757));
res += mul(Get(s2,dx,-dy), float4x4(-0.086597442626953,0.225275084376335,-0.075944684445858,0.019222050905228,0.012547225691378,-0.003371182829142,0.031383320689201,0.039031818509102,-0.175715416669846,0.049716435372829,0.040490161627531,0.017863191664219,0.044628210365772,-0.032266546040773,-0.021580636501312,0.038282182067633));
res += mul(Get(s2,dx,0), float4x4(0.003640895476565,0.002574870362878,-0.006764965131879,-0.130956754088402,-0.010421568527818,0.214080050587654,-0.084508933126926,0.010416310280561,0.184166565537453,0.025021063163877,0.098151408135891,0.174213260412216,0.041967336088419,0.111449435353279,-0.056504849344492,-0.088562481105328));
res += mul(Get(s2,dx,dy), float4x4(-0.026945238932967,-0.005573755130172,-0.195271894335747,-0.092340826988220,-0.027801146730781,0.169035941362381,0.002931886352599,-0.084150150418282,-0.010098543949425,-0.111918769776821,-0.046857696026564,-0.043296556919813,0.090993255376816,-0.101666502654552,0.080057084560394,-0.172087460756302));
res += mul(Get(s3,-dx,-dy), float4x4(-0.071487858891487,-0.029015183448792,0.107294991612434,-0.026425298303366,-0.020778622478247,0.061583444476128,-0.008130711503327,-0.027493849396706,0.021925577893853,-0.080010332167149,0.023120487108827,0.104990810155869,0.112615764141083,0.018594302237034,-0.054152548313141,0.052284382283688));
res += mul(Get(s3,-dx,0), float4x4(-0.248120293021202,0.028925519436598,0.265001475811005,0.051488224416971,-0.193701326847076,-0.125622436404228,-0.105973921716213,0.137800574302673,-0.016562832519412,0.123255439102650,0.156087577342987,-0.031544703990221,0.124482348561287,0.026059083640575,0.014332326129079,-0.045279722660780));
res += mul(Get(s3,-dx,dy), float4x4(-0.086584702134132,0.082263901829720,-0.139917105436325,0.118914932012558,0.126377493143082,-0.035937014967203,-0.011324509046972,-0.103808581829071,-0.018049998208880,0.201042726635933,-0.157768964767456,0.032389424741268,0.116607487201691,0.144942641258240,-0.003064280608669,-0.064907439053059));
res += mul(Get(s3,0,-dy), float4x4(0.234113991260529,-0.009932971559465,-0.055174779146910,0.143086388707161,0.104711532592773,-0.193010181188583,-0.000279592350125,-0.031948938965797,-0.102607145905495,-0.079786106944084,-0.070576526224613,0.056140091270208,-0.031222989782691,-0.032066926360130,-0.022530583664775,0.005705031566322));
res += mul(Get(s3,0,0), float4x4(0.093403220176697,0.040063876658678,0.091723434627056,0.093130916357040,0.158558219671249,-0.157304957509041,-0.237574532628059,-0.073982737958431,0.004254855681211,0.029046343639493,-0.078611098229885,-0.087777651846409,-0.067250542342663,-0.026590615510941,0.236520260572433,-0.239806249737740));
res += mul(Get(s3,0,dy), float4x4(-0.076814860105515,-0.267090529203415,-0.086683757603168,0.144097000360489,0.211912140250206,-0.145980060100555,0.078444324433804,-0.050714183598757,-0.135774821043015,-0.016047395765781,0.159075707197189,-0.035785712301731,0.106815308332443,0.020090278238058,-0.078010588884354,0.098075427114964));
res += mul(Get(s3,dx,-dy), float4x4(0.034309379756451,-0.175349682569504,-0.204054877161980,0.247271969914436,0.016883026808500,-0.180937975645065,-0.211843818426132,0.207155212759972,0.026398299261928,-0.118328996002674,0.134837880730629,0.194687038660049,-0.187347888946533,0.017715722322464,0.011784446425736,-0.258608788251877));
res += mul(Get(s3,dx,0), float4x4(0.052305903285742,0.229838728904724,0.013892550952733,0.032408699393272,-0.043977554887533,-0.137378498911858,0.016854800283909,-0.007412486243993,0.062035135924816,-0.103096641600132,0.072842478752136,0.013772471807897,-0.143947020173073,0.133004710078239,0.267992079257965,-0.123972132802010));
res += mul(Get(s3,dx,dy), float4x4(-0.247584342956543,0.036613032221794,-0.037817213684320,0.080128550529480,0.036507029086351,-0.120837479829788,0.007242170628160,-0.038923379033804,0.067237503826618,-0.188961595296860,-0.159632816910744,0.091841891407967,-0.147547453641891,-0.146005049347878,0.144297048449516,0.054070696234703));
res = max(float4(0,0,0,0), res);
return res;
}