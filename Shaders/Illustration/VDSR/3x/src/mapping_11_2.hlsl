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
res += mul(Get(s0,-dx,-dy), float4x4(-0.034105774015188,0.006225304212421,0.166977912187576,-0.039247583597898,0.029372557997704,-0.076354101300240,0.065602898597717,0.024676280096173,0.284430623054504,0.060120575129986,0.069140344858170,0.033704090863466,0.042188450694084,-0.139084979891777,0.071260578930378,0.099408805370331));
res += mul(Get(s0,-dx,0), float4x4(0.051037412136793,-0.155110746622086,0.016556564718485,0.121932715177536,-0.089507296681404,-0.131658583879471,-0.139824479818344,0.072793938219547,0.023025142028928,-0.113288804888725,-0.025138305500150,0.005289622116834,-0.065662302076817,0.071519628167152,0.009499691426754,0.096783243119717));
res += mul(Get(s0,-dx,dy), float4x4(-0.105264537036419,-0.126335725188255,-0.053237937390804,-0.009803619235754,-0.045849639922380,0.210512608289719,0.014503389596939,0.019412627443671,0.112110495567322,0.008349584415555,0.008728203363717,0.077810883522034,-0.005905248690397,0.128700211644173,-0.004107758868486,-0.080457344651222));
res += mul(Get(s0,0,-dy), float4x4(0.118253745138645,-0.133719548583031,0.104880899190903,0.022259803488851,-0.080695211887360,-0.189448684453964,0.265932708978653,-0.027522604912519,0.232664585113525,-0.169776275753975,-0.123272493481636,-0.070104144513607,0.059555172920227,-0.000441040436272,0.018964294344187,-0.047143306583166));
res += mul(Get(s0,0,0), float4x4(0.051223535090685,-0.134138464927673,0.026080528274179,0.086779966950417,0.166510790586472,0.164419054985046,0.020466668531299,0.152831315994263,-0.047133095562458,0.208521813154221,-0.142867311835289,-0.152440145611763,0.053648039698601,0.222298145294189,0.095643088221550,0.041149262338877));
res += mul(Get(s0,0,dy), float4x4(-0.152820959687233,-0.133927971124649,-0.037671741098166,-0.128437042236328,0.057871185243130,0.154820322990417,0.029257245361805,-0.113788053393364,0.017144756391644,0.086892858147621,-0.105088010430336,0.138413846492767,-0.062907248735428,-0.038393706083298,0.213078528642654,-0.072119481861591));
res += mul(Get(s0,dx,-dy), float4x4(0.149443209171295,-0.106912128627300,-0.094391040503979,0.120671443641186,-0.128477036952972,-0.130064085125923,0.028542378917336,0.035592064261436,-0.009307312779129,-0.138571247458458,-0.084227487444878,0.372002393007278,-0.066339306533337,-0.096151210367680,0.098279647529125,0.053783904761076));
res += mul(Get(s0,dx,0), float4x4(0.053335584700108,-0.040246721357107,0.063297323882580,0.001205049455166,-0.048499818891287,-0.190648525953293,0.017511632293463,-0.134972423315048,0.074248284101486,0.171880096197128,0.012633324600756,-0.038796864449978,-0.074116431176662,0.032519247382879,0.084157489240170,0.116987928748131));
res += mul(Get(s0,dx,dy), float4x4(-0.080553852021694,-0.079221427440643,0.019230227917433,-0.031630378216505,0.103256039321423,0.116827607154846,-0.269735991954803,0.023859767243266,0.213115647435188,-0.178458631038666,-0.076139770448208,0.027946177870035,-0.023727128282189,-0.149795338511467,0.179748028516769,0.133886143565178));
res += mul(Get(s1,-dx,-dy), float4x4(0.094368427991867,-0.063140220940113,-0.026575766503811,-0.110416129231453,-0.147567525506020,-0.050321895629168,0.043541464954615,-0.028168667107821,-0.051680043339729,0.120621524751186,0.046387244015932,-0.003158045932651,0.031372349709272,0.137586519122124,0.024413006380200,-0.065368860960007));
res += mul(Get(s1,-dx,0), float4x4(0.149166688323021,0.112743601202965,-0.083141833543777,0.133565261960030,0.040155611932278,-0.042719267308712,0.004908608272672,-0.008061520755291,0.042035561054945,0.058945350348949,0.032449625432491,-0.038457788527012,-0.223836421966553,-0.105033874511719,0.130225911736488,-0.060437779873610));
res += mul(Get(s1,-dx,dy), float4x4(-0.013385303318501,0.010798355564475,-0.028973262757063,-0.083226233720779,-0.169622257351875,0.030635569244623,0.079783588647842,-0.045337647199631,-0.133330971002579,0.052086833864450,0.174636721611023,0.105541527271271,0.017841652035713,-0.168279543519020,0.059686832129955,-0.117221444845200));
res += mul(Get(s1,0,-dy), float4x4(0.043296188116074,-0.017189370468259,0.050790678709745,-0.098338603973389,-0.023617455735803,0.011612907983363,-0.019422205165029,-0.000622947001830,0.001320065464824,-0.104646801948547,-0.058986485004425,-0.301159679889679,-0.020141880959272,-0.028187533840537,0.110798180103302,-0.006630330346525));
res += mul(Get(s1,0,0), float4x4(0.159998491406441,-0.066003300249577,-0.169296070933342,0.057210229337215,-0.094234153628349,-0.023406758904457,-0.090487733483315,0.013286595232785,0.209481552243233,0.009546750225127,0.066104732453823,-0.021870905533433,-0.168682843446732,0.063680477440357,0.134685203433037,-0.042974192649126));
res += mul(Get(s1,0,dy), float4x4(-0.100113958120346,0.180798768997192,-0.018824677914381,-0.036879874765873,-0.108650133013725,-0.104835212230682,0.139976590871811,-0.033827666193247,-0.091124482452869,-0.088304623961449,0.004004430491477,0.239476665854454,0.053054355084896,0.132808372378349,-0.053572155535221,-0.127889245748520));
res += mul(Get(s1,dx,-dy), float4x4(0.036553274840117,0.018619466573000,0.055239789187908,-0.063321553170681,0.170957893133163,0.087549872696400,-0.123319543898106,0.117602042853832,0.040234971791506,-0.048421174287796,-0.015112120658159,0.097436659038067,0.176053851842880,0.167154639959335,-0.046818397939205,-0.159005939960480));
res += mul(Get(s1,dx,0), float4x4(-0.192661434412003,0.120429962873459,0.158922687172890,0.054306924343109,-0.153180196881294,-0.000545020564459,-0.143516078591347,-0.079199761152267,-0.030495923012495,0.101199477910995,-0.194110155105591,0.162883058190346,-0.076410323381424,-0.090686537325382,-0.027361776679754,-0.110419169068336));
res += mul(Get(s1,dx,dy), float4x4(-0.052585814148188,-0.144944444298744,0.118488356471062,-0.040562972426414,-0.083859756588936,0.095276892185211,-0.001012737979181,0.135028749704361,-0.002855479018763,0.111300744116306,-0.200609847903252,-0.069317661225796,0.124696046113968,-0.183168604969978,-0.021985428407788,-0.105037033557892));
res += mul(Get(s2,-dx,-dy), float4x4(-0.050037339329720,0.044452548027039,-0.089742042124271,-0.059037659317255,-0.102820143103600,-0.074783928692341,0.159652173519135,-0.007204813882709,-0.074567832052708,0.042438682168722,0.127558350563049,0.127938747406006,-0.091002643108368,-0.144740045070648,0.164072051644325,0.129982605576515));
res += mul(Get(s2,-dx,0), float4x4(-0.164728015661240,0.101285494863987,0.067163504660130,-0.120690949261189,-0.048506025224924,0.031552933156490,0.001948546152562,0.228105425834656,-0.002879245672375,-0.148527592420578,-0.102040804922581,-0.126231685280800,-0.007818192243576,0.058464825153351,-0.040798787027597,0.309419214725494));
res += mul(Get(s2,-dx,dy), float4x4(0.064607739448547,-0.088781446218491,-0.158243715763092,-0.012956981547177,-0.062055680900812,0.102766484022141,-0.257006883621216,0.053892564028502,0.018337775021791,0.159362748265266,-0.146264463663101,-0.059133462607861,-0.005377832800150,0.047837767750025,0.053960684686899,0.165812432765961));
res += mul(Get(s2,0,-dy), float4x4(0.126360133290291,0.186127215623856,-0.115198552608490,-0.026663515716791,-0.020772079005837,-0.021761586889625,0.003163910703734,0.071244619786739,0.105421431362629,-0.015654781833291,-0.011819326318800,0.150444045662880,0.076728165149689,-0.069719575345516,-0.056279834359884,0.076483793556690));
res += mul(Get(s2,0,0), float4x4(0.118725508451462,-0.000902516942006,0.034916635602713,-0.035082235932350,-0.161366865038872,0.037972301244736,0.102767214179039,-0.143867075443268,0.057141192257404,0.112897314131260,0.098797149956226,0.063208200037479,-0.072761058807373,-0.112387381494045,-0.162443637847900,0.009149481542408));
res += mul(Get(s2,0,dy), float4x4(-0.005562320351601,-0.169404909014702,-0.001517234370112,0.061061296612024,-0.023478895425797,-0.118741497397423,0.113647684454918,0.033696513622999,0.077583402395248,0.049081157892942,-0.108362503349781,-0.122509784996510,-0.098956026136875,-0.029636664316058,-0.018184099346399,-0.262448072433472));
res += mul(Get(s2,dx,-dy), float4x4(-0.017669226974249,0.041119500994682,-0.007567451335490,-0.012912084348500,0.112639628350735,0.020880592986941,-0.023919072002172,-0.075592383742332,0.096715033054352,-0.195346981287003,0.043913669884205,0.168963029980659,-0.014291645027697,0.048228941857815,0.098808504641056,0.135834336280823));
res += mul(Get(s2,dx,0), float4x4(0.114734105765820,-0.090972088277340,-0.169031515717506,-0.020150056108832,-0.133918985724449,0.039659544825554,-0.026374280452728,0.051272746175528,0.005811639595777,0.042859982699156,-0.081057190895081,-0.101048871874809,0.018871221691370,0.004930746741593,0.047963216900826,-0.149071305990219));
res += mul(Get(s2,dx,dy), float4x4(-0.119890272617340,-0.046867325901985,-0.027592416852713,-0.173967629671097,-0.188412144780159,0.046587716788054,-0.083836652338505,-0.146515175700188,-0.084808699786663,0.179812848567963,0.176072850823402,0.060789264738560,-0.005449160002172,-0.086274370551109,0.242107480764389,0.008364488370717));
res += mul(Get(s3,-dx,-dy), float4x4(0.083529360592365,0.035914584994316,-0.106991514563560,0.086546279489994,0.012797989882529,0.091627284884453,-0.081689946353436,-0.039123147726059,-0.000190344333532,-0.137572377920151,0.037109591066837,0.047599699348211,0.028218001127243,0.060569021850824,-0.035393178462982,0.034644454717636));
res += mul(Get(s3,-dx,0), float4x4(-0.066730268299580,0.012546060606837,0.260187417268753,0.042425170540810,-0.047798391431570,-0.094195708632469,0.116564713418484,-0.071861371397972,0.036232288926840,-0.004279023502022,0.052395787090063,0.069101765751839,-0.003695835126564,0.086284577846527,-0.000848731433507,-0.075585506856441));
res += mul(Get(s3,-dx,dy), float4x4(-0.143681615591049,0.113464735448360,-0.008951298892498,0.028285633772612,0.043095700442791,-0.047037269920111,0.065043114125729,-0.098554424941540,0.009814049117267,-0.078523106873035,-0.027697831392288,-0.103873766958714,0.020548518747091,-0.024630306288600,-0.058301255106926,-0.149582877755165));
res += mul(Get(s3,0,-dy), float4x4(0.045538567006588,0.049905262887478,-0.049830425530672,-0.063552759587765,-0.011299231089652,0.136381193995476,-0.080372244119644,0.005309598986059,0.211632326245308,-0.144659042358398,0.001234408002347,0.065998271107674,0.077418550848961,-0.114690586924553,-0.109425097703934,-0.016837695613503));
res += mul(Get(s3,0,0), float4x4(-0.098068803548813,-0.027347182855010,0.196689367294312,-0.074693977832794,-0.030858198180795,-0.144418820738792,0.109630584716797,0.065348617732525,0.010194816626608,-0.046603191643953,0.020249782130122,-0.037659529596567,0.154304802417755,-0.136546090245247,-0.065492898225784,-0.075618527829647));
res += mul(Get(s3,0,dy), float4x4(0.048754181712866,0.014356603845954,0.086960688233376,-0.024829432368279,0.061700504273176,0.190505191683769,0.023618416860700,-0.132713794708252,0.160414129495621,0.166755631566048,0.092819638550282,0.012510880827904,-0.106436051428318,0.164275631308556,-0.143400967121124,0.037289548665285));
res += mul(Get(s3,dx,-dy), float4x4(0.124037474393845,0.082539379596710,-0.094658300280571,0.089543633162975,-0.074783958494663,0.042932681739330,0.039927870035172,-0.103556133806705,-0.061082188040018,-0.102888070046902,0.140303298830986,-0.098910704255104,0.181655183434486,-0.148430913686752,-0.090027585625648,-0.049367360770702));
res += mul(Get(s3,dx,0), float4x4(-0.073172114789486,-0.021376462653279,0.091186165809631,-0.068037994205952,0.086128197610378,0.111857809126377,-0.069370195269585,0.060229059308767,-0.110378347337246,-0.067442946135998,0.110491707921028,0.012734106741846,-0.091666452586651,-0.126528203487396,-0.014021360315382,0.088277705013752));
res += mul(Get(s3,dx,dy), float4x4(-0.020977107807994,-0.098771676421165,0.012606445699930,0.010302934795618,-0.019320042803884,0.021613303571939,-0.099243052303791,-0.067572601139545,0.018407130613923,-0.056877613067627,-0.058002933859825,-0.070250444114208,-0.050318561494350,-0.085530728101730,0.158869504928589,0.017919410020113));
return max(float4(0,0,0,0), res);
}