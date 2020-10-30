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
res += mul(Get(s0,-dx,-dy), float4x4(-0.074051573872566,0.330370217561722,0.234350636601448,-0.123586185276508,-0.206861704587936,-0.129201978445053,0.168960466980934,-0.090398326516151,0.106593362987041,0.109857052564621,0.012695550918579,0.045202665030956,-0.074720516800880,0.087078697979450,-0.035004451870918,0.034831166267395));
res += mul(Get(s0,-dx,0), float4x4(0.013923420570791,0.164530545473099,0.200304582715034,0.151578187942505,-0.133411645889282,-0.079551644623280,0.090524986386299,-0.093631528317928,0.121086075901985,0.227684423327446,0.039374832063913,0.028542125597596,0.161259755492210,0.168211206793785,-0.097356691956520,0.035116020590067));
res += mul(Get(s0,-dx,dy), float4x4(-0.069198988378048,0.006318838335574,-0.250058650970459,0.073285885155201,-0.063427962362766,0.081402525305748,-0.074269458651543,-0.084161862730980,0.088002473115921,-0.033863965421915,0.027385499328375,-0.043738700449467,-0.098725922405720,0.054412472993135,0.099515363574028,-0.111595585942268));
res += mul(Get(s0,0,-dy), float4x4(0.020075762644410,0.007904558442533,0.076273769140244,-0.066765122115612,0.004546058829874,-0.110626451671124,0.181721329689026,-0.087563186883926,-0.078423991799355,0.022033965215087,-0.046268280595541,-0.058786038309336,-0.066420331597328,-0.140913560986519,-0.063608579337597,-0.037804193794727));
res += mul(Get(s0,0,0), float4x4(0.101860627532005,-0.116216197609901,-0.085111834108829,0.029580755159259,0.100834421813488,-0.149778917431831,0.366934448480606,-0.126856073737144,0.263040155172348,0.402468353509903,-0.072603650391102,-0.071261197328568,0.212371841073036,0.062241349369287,-0.210898607969284,0.010138325393200));
res += mul(Get(s0,0,dy), float4x4(-0.033815145492554,-0.043279159814119,-0.202830553054810,0.018208511173725,0.029451180249453,0.047455731779337,0.130117252469063,-0.038946788758039,0.266574710607529,0.280908793210983,-0.168025299906731,-0.114027224481106,0.111597485840321,0.122091673314571,-0.143911972641945,0.007764672394842));
res += mul(Get(s0,dx,-dy), float4x4(-0.126098856329918,-0.261796057224274,0.229414924979210,-0.107909731566906,0.042015437036753,0.035821620374918,0.248094365000725,-0.067350625991821,-0.090013563632965,0.048127412796021,0.121206223964691,0.087503574788570,0.086484082043171,0.020064678043127,-0.103404976427555,0.040132604539394));
res += mul(Get(s0,dx,0), float4x4(-0.075313277542591,-0.244987353682518,0.158426284790039,-0.055654071271420,-0.006397024728358,-0.096142664551735,0.390217304229736,0.147445350885391,0.281277716159821,0.221731871366501,0.139067053794861,-0.035940647125244,0.085867002606392,-0.035177949815989,-0.071004614233971,0.035364691168070));
res += mul(Get(s0,dx,dy), float4x4(-0.048274546861649,-0.100605353713036,-0.106987960636616,0.023600790649652,-0.000241686648224,-0.002775755478069,0.432883143424988,0.016767546534538,0.105686977505684,-0.015246368013322,0.186382979154587,0.035340618342161,0.088349744677544,-0.023881228640676,-0.066102527081966,-0.050802219659090));
res += mul(Get(s1,-dx,-dy), float4x4(-0.438357174396515,-0.255948692560196,-0.040167480707169,-0.155714824795723,0.064325898885727,0.246253177523613,0.029413485899568,-0.048091765493155,0.029291233047843,-0.037150654941797,0.074810363352299,-0.094940453767776,-0.040628861635923,-0.112644016742706,0.021761370822787,0.076173417270184));
res += mul(Get(s1,-dx,0), float4x4(-0.075450114905834,-0.151705816388130,-0.023507947102189,0.002811950864270,0.261436223983765,0.277811557054520,-0.114637240767479,-0.004846150521189,-0.005783542990685,0.215998291969299,0.161732062697411,0.078536346554756,-0.040048539638519,0.114880234003067,-0.232266902923584,0.304439604282379));
res += mul(Get(s1,-dx,dy), float4x4(0.172292783856392,0.118855252861977,0.009393837302923,0.123533584177494,0.225035667419434,0.282660692930222,-0.016384452581406,0.143926069140434,-0.157060578465462,0.082415029406548,0.047487508505583,-0.047589965164661,0.130698263645172,0.109592013061047,0.277072787284851,0.052608422935009));
res += mul(Get(s1,0,-dy), float4x4(-0.224336236715317,-0.261303633451462,-0.141225606203079,-0.046431019902229,-0.193057850003242,0.153705924749374,0.071804612874985,0.039117597043514,-0.038440831005573,0.122099794447422,0.022944875061512,-0.053478546440601,-0.204936727881432,-0.137925013899803,-0.051887046545744,-0.099684454500675));
res += mul(Get(s1,0,0), float4x4(-0.001790782669559,-0.133495092391968,-0.098969176411629,0.046378295868635,-0.059774365276098,0.056368652731180,-0.179379597306252,0.029817726463079,0.047592982649803,0.143787518143654,0.035093437880278,-0.148185700178146,0.076441235840321,0.187995031476021,-0.128857746720314,0.070580407977104));
res += mul(Get(s1,0,dy), float4x4(0.254209667444229,0.369544714689255,0.002198881004006,-0.006771851796657,-0.002067634603009,0.046082455664873,-0.074658118188381,0.052144091576338,-0.164440125226974,0.010848979465663,-0.121993511915207,-0.025498686358333,0.106294684112072,-0.032783772796392,0.133934065699577,-0.047235410660505));
res += mul(Get(s1,dx,-dy), float4x4(-0.038004267960787,-0.149940505623817,-0.173083961009979,-0.107631340622902,-0.231807425618172,-0.002742369193584,-0.000922574952710,0.032006546854973,-0.035999581217766,-0.154527246952057,-0.016844639554620,-0.039730530232191,0.078488700091839,0.126829713582993,0.023475727066398,-0.033204663544893));
res += mul(Get(s1,dx,0), float4x4(0.060281474143267,0.002398453885689,-0.197610259056091,0.063860662281513,-0.236152336001396,-0.116251669824123,-0.041931495070457,0.095931723713875,-0.143288582563400,-0.152589261531830,-0.038093909621239,-0.020617026835680,0.390226542949677,0.197950005531311,-0.034913506358862,-0.006668618414551));
res += mul(Get(s1,dx,dy), float4x4(0.140660315752029,0.144639059901237,-0.071175329387188,0.051222667098045,-0.241795212030411,-0.046158470213413,0.089835569262505,-0.051267523318529,-0.224658533930779,-0.239071130752563,-0.212220609188080,-0.065629407763481,0.008380473591387,0.120021522045135,-0.005466225557029,0.019859245046973));
res += mul(Get(s2,-dx,-dy), float4x4(0.209229856729507,0.261898070573807,0.115018025040627,-0.125812977552414,-0.028670592233539,0.012721770443022,0.001536785974167,-0.013927003368735,0.056639268994331,0.021416008472443,0.230670556426048,0.040072169154882,0.236328363418579,0.072536699473858,0.136439695954323,-0.037377264350653));
res += mul(Get(s2,-dx,0), float4x4(0.281524032354355,0.338722288608551,0.032156854867935,-0.092746473848820,0.080218061804771,-0.121100060641766,-0.007209752686322,-0.133496046066284,0.121103584766388,-0.247770801186562,0.169938638806343,-0.010196346789598,-0.064323820173740,-0.126827582716942,0.259390980005264,0.001758461236022));
res += mul(Get(s2,-dx,dy), float4x4(0.220971137285233,0.145298346877098,0.158635318279266,0.036461465060711,0.072370976209641,-0.178291320800781,-0.033199306577444,-0.172785013914108,-0.075968064367771,-0.146482601761818,-0.093352921307087,-0.025229923427105,-0.196688592433929,-0.282109141349792,-0.005244030617177,-0.120258569717407));
res += mul(Get(s2,0,-dy), float4x4(-0.009566374123096,0.042148169130087,-0.174772068858147,-0.069447517395020,0.223802015185356,0.439779698848724,0.153707578778267,-0.048456121236086,0.035176903009415,0.060305096209049,0.238702088594437,0.034763876348734,0.153348490595818,0.179472118616104,-0.094311900436878,-0.025325372815132));
res += mul(Get(s2,0,0), float4x4(0.095439016819000,-0.037376638501883,-0.219528928399086,-0.052010919898748,0.268574237823486,0.244079291820526,0.186657935380936,-0.046178311109543,-0.015583268366754,-0.188008800148964,0.197463944554329,-0.057016242295504,-0.075234092772007,-0.109030351042747,0.037305310368538,-0.028851805254817));
res += mul(Get(s2,0,dy), float4x4(0.027052057906985,0.138589531183243,-0.241121560335159,-0.077498741447926,0.091700553894043,0.053260933607817,0.206421270966530,-0.122311800718307,-0.019391708076000,-0.144570782780647,-0.137790620326996,-0.006355707999319,0.004434574395418,-0.169933483004570,0.188437744975090,-0.074005044996738));
res += mul(Get(s2,dx,-dy), float4x4(0.010844749398530,-0.220839828252792,-0.054035652428865,-0.123296767473221,0.173921272158623,0.197950050234795,-0.041683025658131,0.082197792828083,0.150353372097015,-0.025044545531273,0.109927929937840,0.029352299869061,0.226221561431885,-0.060765955597162,0.098913267254829,-0.051248628646135));
res += mul(Get(s2,dx,0), float4x4(-0.352454960346222,-0.290243327617645,-0.105425022542477,-0.042271863669157,0.161668658256531,0.176067590713501,-0.232113823294640,0.138694822788239,0.068806044757366,-0.206651508808136,-0.008362183347344,-0.022957598790526,0.204121544957161,0.041889082640409,-0.010318565182388,0.057816773653030));
res += mul(Get(s2,dx,dy), float4x4(-0.248344138264656,0.050363726913929,-0.037194743752480,-0.031832143664360,0.072846882045269,-0.107431769371033,-0.013521180488169,0.047670707106590,-0.053933251649141,-0.020643573254347,-0.176345869898796,-0.057000488042831,0.264142304658890,0.116848558187485,0.051997512578964,-0.016994625329971));
res += mul(Get(s3,-dx,-dy), float4x4(0.091572381556034,0.239354357123375,0.099952608346939,0.118597790598869,0.102132663130760,-0.049802120774984,0.090068645775318,-0.012800621800125,0.085285335779190,-0.261770069599152,0.062650248408318,-0.144179582595825,-0.033161796629429,-0.196617469191551,-0.218699499964714,0.012314638122916));
res += mul(Get(s3,-dx,0), float4x4(0.043962486088276,0.143853381276131,0.223398700356483,-0.108731642365456,-0.045837938785553,-0.049069747328758,0.031929589807987,0.028918493539095,0.108087353408337,-0.217584386467934,-0.131131917238235,-0.030677981674671,-0.009226618334651,-0.108517408370972,-0.116047464311123,-0.006288636475801));
res += mul(Get(s3,-dx,dy), float4x4(-0.292562723159790,-0.020471753552556,0.175073370337486,-0.083746947348118,0.009486361406744,0.038821462541819,0.076875008642673,0.029154103249311,-0.030950939282775,-0.076896056532860,-0.229807764291763,-0.156191527843475,-0.422958642244339,-0.110778234899044,-0.236451238393784,-0.197882279753685));
res += mul(Get(s3,0,-dy), float4x4(0.100430361926556,0.186333701014519,-0.138992592692375,-0.031935449689627,0.064766831696033,-0.088021323084831,0.246693193912506,-0.010548164136708,0.042174737900496,-0.148471489548683,0.069025561213493,-0.170710921287537,-0.009801765903831,-0.184219732880592,0.185140341520309,0.027562182396650));
res += mul(Get(s3,0,0), float4x4(0.177088260650635,-0.040897764265537,0.010289156809449,-0.005556243937463,0.149408712983131,-0.090760566294193,0.256400227546692,0.098990492522717,0.045153036713600,0.034301795065403,0.073014751076698,0.036576248705387,-0.121622622013092,-0.148891136050224,0.264346331357956,-0.016110355034471));
res += mul(Get(s3,0,dy), float4x4(-0.156644716858864,0.009861985221505,-0.243411406874657,0.048656143248081,0.000681890989654,-0.001336965011433,0.176891520619392,0.036143261939287,-0.031836669892073,0.049292124807835,-0.076597474515438,-0.079487860202789,-0.095650039613247,-0.168902531266212,0.205057874321938,-0.252053976058960));
res += mul(Get(s3,dx,-dy), float4x4(0.062313929200172,0.184343710541725,0.030720012262464,-0.050285339355469,0.071087352931499,0.194954827427864,0.143405258655548,0.116571433842182,0.037877552211285,0.056696780025959,0.097632057964802,-0.084224283695221,0.016883876174688,0.263526588678360,0.258573710918427,0.001356103690341));
res += mul(Get(s3,dx,0), float4x4(-0.056688185781240,-0.094767294824123,0.063984774053097,-0.034455377608538,0.145023807883263,-0.018222356215119,0.099251642823219,0.085539929568768,0.056023955345154,-0.152797654271126,0.179887399077415,-0.025937406346202,0.009794212877750,0.152398869395256,0.168856456875801,0.050037123262882));
res += mul(Get(s3,dx,dy), float4x4(-0.232314720749855,-0.092243380844593,-0.068966940045357,0.053264431655407,-0.090106412768364,0.042688835412264,0.005068424157798,0.106251753866673,0.134886339306831,0.014215027913451,0.095140047371387,-0.022627189755440,-0.101400189101696,0.043522354215384,0.192196115851402,0.029898090288043));
return max(float4(0,0,0,0), res);
}
