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
res += mul(Get(s0,-dx,-dy), float4x4(-0.168351233005524,0.022084582597017,0.012480331584811,0.010969905182719,0.155826732516289,0.077010497450829,0.067734368145466,-0.037259817123413,0.012374873273075,-0.051000148057938,-0.148623406887054,0.018699400126934,0.026083519682288,-0.082094550132751,-0.158901751041412,0.229724615812302));
res += mul(Get(s0,-dx,0), float4x4(-0.223462134599686,-0.183118507266045,0.000829882803373,-0.219427719712257,0.116975106298923,0.157650232315063,0.086554206907749,-0.118155121803284,0.205579072237015,0.143872082233429,-0.004998336546123,0.100575596094131,-0.010302892886102,0.037782751023769,-0.011318541131914,0.135142162442207));
res += mul(Get(s0,-dx,dy), float4x4(-0.008332912810147,-0.126209706068039,-0.103369645774364,0.133130222558975,-0.132560133934021,0.001741124433465,-0.076364368200302,-0.107397317886353,0.049053125083447,0.041271422058344,-0.162172868847847,0.068550691008568,0.085724011063576,-0.075666613876820,-0.089157722890377,-0.121623069047928));
res += mul(Get(s0,0,-dy), float4x4(0.082399152219296,-0.194163501262665,0.128277689218521,0.010125118307769,0.176594495773315,0.102650709450245,0.046117868274450,0.158166259527206,-0.016870325431228,-0.154418051242828,0.078168295323849,0.091933034360409,0.103943340480328,0.218600869178772,0.046006567776203,-0.089656390249729));
res += mul(Get(s0,0,0), float4x4(-0.008323797956109,-0.004173376597464,-0.039658986032009,-0.042259968817234,-0.081940546631813,0.403781861066818,-0.072532147169113,-0.171670362353325,-0.027375474572182,-0.048578754067421,0.008032705634832,-0.233998179435730,0.117703579366207,-0.194205969572067,-0.200874745845795,-0.013160420581698));
res += mul(Get(s0,0,dy), float4x4(-0.018272176384926,-0.182736903429031,-0.050478123128414,-0.227727875113487,0.030756538733840,-0.095933325588703,-0.191748291254044,0.091757148504257,-0.028366867452860,-0.161239236593246,0.031230241060257,0.020084338262677,0.070020884275436,-0.071712791919708,0.092864990234375,-0.069669090211391));
res += mul(Get(s0,dx,-dy), float4x4(0.001624646247365,0.073551386594772,0.021081835031509,0.050798363983631,0.096425347030163,0.130254983901978,-0.298723816871643,-0.096031360328197,0.145883902907372,0.047422830015421,0.030530389398336,0.098396576941013,0.068574659526348,0.083293639123440,0.033191345632076,-0.008264568634331));
res += mul(Get(s0,dx,0), float4x4(-0.114496476948261,-0.107769936323166,-0.007990963757038,0.032098677009344,-0.127151295542717,-0.101644374430180,0.460096418857574,0.005886075086892,-0.027205234393477,0.181967571377754,0.082107409834862,0.025692934170365,0.206065773963928,-0.089083075523376,-0.120357215404510,0.132990419864655));
res += mul(Get(s0,dx,dy), float4x4(-0.179608523845673,-0.120335139334202,-0.055843509733677,0.037018541246653,-0.111505359411240,-0.040841184556484,0.269959360361099,0.098393894731998,-0.074056692421436,0.056307706981897,-0.106889739632607,0.088168323040009,-0.125703707337379,0.001432813471183,-0.034323461353779,-0.057545699179173));
res += mul(Get(s1,-dx,-dy), float4x4(-0.037395786494017,0.068543657660484,0.094208538532257,-0.028999531641603,-0.126213729381561,0.042668469250202,-0.155889391899109,0.351868331432343,0.179958462715149,-0.002082135993987,0.076024942100048,0.011686956509948,0.040689568966627,0.174817040562630,-0.034946341067553,0.151436910033226));
res += mul(Get(s1,-dx,0), float4x4(-0.183355733752251,0.139907225966454,0.264286667108536,-0.020712364464998,-0.081571787595749,-0.062243241816759,-0.040885254740715,0.003789663081989,0.048493657261133,-0.081825934350491,0.034724183380604,-0.071707405149937,0.083069548010826,0.054210305213928,-0.090877443552017,-0.192259714007378));
res += mul(Get(s1,-dx,dy), float4x4(0.099559739232063,-0.099827475845814,-0.037512619048357,0.072824038565159,-0.026655457913876,0.037212666124105,0.039333388209343,0.037620361894369,-0.016802519559860,0.113817580044270,-0.091678775846958,-0.048900499939919,0.164961010217667,-0.035140529274940,-0.179758071899414,0.035693850368261));
res += mul(Get(s1,0,-dy), float4x4(0.002140530617908,-0.017872035503387,0.151631996035576,0.114164017140865,-0.177619010210037,0.096588343381882,-0.053892884403467,-0.008678534999490,-0.087838351726532,0.150066301226616,0.194058373570442,-0.169345751404762,0.061986159533262,0.057447101920843,0.323823511600494,-0.116308867931366));
res += mul(Get(s1,0,0), float4x4(-0.032173428684473,-0.046212121844292,-0.092507213354111,-0.016396019607782,-0.021490359678864,0.089743435382843,-0.032383449375629,0.066874280571938,-0.030352188274264,-0.024671245366335,-0.035631004720926,-0.006726024206728,0.046630088239908,0.061733901500702,0.158472493290901,-0.069801338016987));
res += mul(Get(s1,0,dy), float4x4(-0.186418116092682,-0.009887110441923,0.021940905600786,-0.035272110253572,0.068345099687576,0.069232955574989,0.039760675281286,-0.055105507373810,0.103859812021255,0.259554922580719,-0.042890533804893,-0.096430979669094,-0.004345190245658,0.011697837151587,-0.039006602019072,0.029633035883307));
res += mul(Get(s1,dx,-dy), float4x4(0.020157847553492,0.041205551475286,-0.021459257230163,0.103578336536884,-0.041193731129169,-0.005425241775811,0.047552190721035,0.107687868177891,0.010467601940036,-0.110729493200779,-0.085298418998718,0.116802893579006,-0.135492756962776,-0.222468778491020,-0.014522385783494,0.096476979553699));
res += mul(Get(s1,dx,0), float4x4(-0.027816683053970,-0.065002016723156,0.036736130714417,0.078435905277729,-0.080809935927391,-0.087225079536438,-0.085984572768211,0.197846159338951,0.094313479959965,-0.038656961172819,-0.020036442205310,0.013187569566071,-0.055054184049368,0.097970642149448,0.040176589041948,-0.090703733265400));
res += mul(Get(s1,dx,dy), float4x4(-0.147136121988297,0.086710855364799,-0.054160233587027,0.052493613213301,0.034180030226707,0.018568014726043,-0.029094118624926,0.012876065447927,0.117784902453423,0.037541110068560,-0.044283691793680,0.010933707468212,0.036095004528761,-0.387436926364899,0.002448159968480,0.060630958527327));
res += mul(Get(s2,-dx,-dy), float4x4(-0.120333060622215,0.012199646793306,-0.061934527009726,0.157918214797974,-0.008048559539020,-0.054771136492491,0.104251526296139,-0.048772018402815,-0.022192832082510,0.129450455307961,-0.199316322803497,0.149255052208900,0.156526431441307,0.090672597289085,-0.138451203703880,-0.109975717961788));
res += mul(Get(s2,-dx,0), float4x4(0.050388213247061,-0.168001934885979,0.100720867514610,-0.092619277536869,-0.284128606319427,0.036716468632221,0.020422944799066,-0.120875969529152,0.003120682202280,0.100239433348179,0.064658120274544,-0.007880942896008,-0.093600988388062,-0.014946968294680,0.001158486003987,0.130281820893288));
res += mul(Get(s2,-dx,dy), float4x4(0.034549575299025,-0.038953296840191,-0.123469121754169,-0.107427604496479,-0.051893688738346,-0.258473187685013,-0.087613165378571,0.047784816473722,-0.002312581054866,-0.008950448594987,-0.214572086930275,-0.185883134603500,-0.057725984603167,0.126056775450706,0.031350493431091,-0.058474671095610));
res += mul(Get(s2,0,-dy), float4x4(0.010776126757264,0.151376053690910,0.211464449763298,-0.001427536481060,0.024519821628928,0.070269867777824,0.045657973736525,0.004193482454866,0.015949245542288,-0.063479498028755,-0.023620750755072,-0.040999546647072,0.151273369789124,-0.114439569413662,-0.047880299389362,0.032124422490597));
res += mul(Get(s2,0,0), float4x4(0.032625094056129,-0.056678239256144,-0.191122740507126,0.067734718322754,0.104229055345058,0.036122489720583,0.080507375299931,-0.037695370614529,0.026304529979825,0.029516320675611,-0.027807887643576,0.133646443486214,0.150189727544785,0.030422987416387,-0.163996636867523,-0.192512020468712));
res += mul(Get(s2,0,dy), float4x4(0.002470720326528,0.206236764788628,-0.034832037985325,0.000172011597897,0.149905309081078,0.091359280049801,0.233954772353172,-0.066657140851021,-0.071986280381680,-0.117199271917343,0.095547683537006,-0.056534387171268,-0.112279288470745,-0.107606425881386,0.124594107270241,-0.073631323873997));
res += mul(Get(s2,dx,-dy), float4x4(-0.002618513768539,0.083674229681492,0.094342745840549,-0.088345691561699,-0.101900920271873,0.227079406380653,-0.021530371159315,-0.051811870187521,-0.112965263426304,0.006777026224881,-0.294683068990707,0.205762088298798,0.023362815380096,0.072525210678577,0.017019798979163,0.070912212133408));
res += mul(Get(s2,dx,0), float4x4(-0.001309354323894,-0.027302581816912,0.012483821250498,0.012434532865882,0.082607157528400,-0.031978499144316,-0.034818321466446,-0.093517243862152,0.104591473937035,-0.068429343402386,0.099155858159065,-0.065155446529388,0.144801825284958,0.149099007248878,-0.084079369902611,-0.140642702579498));
res += mul(Get(s2,dx,dy), float4x4(0.100845515727997,-0.097178131341934,-0.162496849894524,0.022407397627831,0.025045551359653,-0.104803644120693,-0.056895121932030,-0.112470701336861,-0.023576462641358,-0.085757382214069,-0.052911445498466,-0.077916860580444,0.141960188746452,0.114537291228771,0.123973108828068,0.004106513690203));
res += mul(Get(s3,-dx,-dy), float4x4(-0.139119133353233,-0.228846505284309,0.041816249489784,0.059402488172054,0.020196190103889,0.013371186330914,0.093632563948631,0.087866097688675,0.029967088252306,0.025764260441065,0.096664078533649,0.162419125437737,-0.063931420445442,-0.124258965253830,0.051135953515768,-0.045060273259878));
res += mul(Get(s3,-dx,0), float4x4(0.185428366065025,0.070698529481888,-0.136232331395149,0.192800804972649,-0.019220294430852,0.279603123664856,0.137485817074776,0.108084961771965,-0.083699524402618,-0.173350423574448,0.142677441239357,0.016788337379694,0.096692189574242,0.027136387303472,-0.069618210196495,-0.054753024131060));
res += mul(Get(s3,-dx,dy), float4x4(0.080507457256317,0.007847353816032,0.056198813021183,0.068576537072659,-0.002149549312890,0.249516025185585,0.125222608447075,0.136127710342407,-0.129910260438919,-0.050678059458733,0.065490201115608,0.082902945578098,-0.261594533920288,0.161963343620300,0.040645819157362,0.117715619504452));
res += mul(Get(s3,0,-dy), float4x4(0.024202875792980,0.036197472363710,-0.194385305047035,0.100855968892574,-0.065939456224442,-0.140992835164070,-0.062201268970966,-0.008151732385159,0.204940676689148,0.051440902054310,0.030215309932828,-0.022316958755255,-0.086206309497356,-0.040691804140806,0.142394453287125,0.002759543946013));
res += mul(Get(s3,0,0), float4x4(-0.022138323634863,-0.053043801337481,-0.121069833636284,-0.040437087416649,0.226324737071991,-0.047503124922514,-0.043409917503595,-0.063673034310341,0.055849783122540,-0.012450992129743,0.012808419764042,0.077629432082176,0.163875028491020,-0.194094225764275,-0.094106756150723,0.204668208956718));
res += mul(Get(s3,0,dy), float4x4(-0.101579010486603,-0.168645814061165,0.005136835388839,-0.059870325028896,0.068983882665634,0.105312563478947,-0.110330112278461,0.056741073727608,-0.074407689273357,0.060818795114756,0.188432797789574,-0.219907864928246,-0.022468576207757,-0.144905790686607,-0.058776751160622,0.038059491664171));
res += mul(Get(s3,dx,-dy), float4x4(0.010288553312421,0.096675425767899,0.044526528567076,0.006114251445979,0.009572419337928,-0.221853002905846,0.027244381606579,0.125882461667061,0.090611688792706,-0.085066899657249,0.167038425803185,0.198155447840691,-0.199269592761993,-0.043224241584539,0.001803426421247,0.003290781984106));
res += mul(Get(s3,dx,0), float4x4(-0.027779031544924,-0.055017247796059,0.007750539574772,-0.096756272017956,0.121909976005554,0.135960489511490,0.027646997943521,0.092918790876865,-0.110663861036301,0.132733136415482,-0.093053415417671,-0.148824006319046,-0.016831483691931,0.071709841489792,0.011038078926504,-0.014097011648118));
res += mul(Get(s3,dx,dy), float4x4(0.250152498483658,-0.035787954926491,-0.209292650222778,0.121735207736492,-0.004184979479760,-0.034786518663168,-0.082939088344574,0.102424897253513,-0.097510933876038,0.016170809045434,-0.122498169541359,0.054543957114220,-0.060399059206247,-0.070678748190403,0.119150720536709,0.035775396972895));
return max(float4(0,0,0,0), res);
}
