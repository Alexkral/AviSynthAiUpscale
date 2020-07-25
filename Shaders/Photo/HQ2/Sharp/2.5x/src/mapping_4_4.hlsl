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
res += mul(Get(s0,-dx,-dy), float4x4(-0.047752663493156,0.045128278434277,0.260360866785049,-0.206357449293137,-0.000872597913258,-0.084853254258633,0.038224454969168,0.227266371250153,-0.001151032629423,-0.062436547130346,-0.103248760104179,-0.069857500493526,-0.073114261031151,0.162721052765846,0.030777152627707,0.024477740749717));
res += mul(Get(s0,-dx,0), float4x4(-0.058399658650160,0.126826941967010,0.000002047272574,0.052393760532141,-0.063924066722393,-0.065269410610199,-0.084637075662613,0.020282333716750,-0.065499439835548,0.071672350168228,0.088485091924667,-0.217676848173141,-0.146097317337990,0.072648860514164,0.072872497141361,-0.022025756537914));
res += mul(Get(s0,-dx,dy), float4x4(-0.057475324720144,0.007352108601481,0.017633011564612,-0.119954563677311,-0.152089446783066,-0.107767358422279,-0.056262653321028,0.029815193265676,0.077751047909260,0.143798276782036,0.027105614542961,-0.096269257366657,-0.077904954552650,0.022117409855127,-0.046888601034880,0.009470497258008));
res += mul(Get(s0,0,-dy), float4x4(0.000915762328077,0.043272718787193,0.151965484023094,0.069948568940163,-0.061288490891457,-0.135732054710388,-0.055826548486948,0.140121087431908,-0.077906563878059,-0.015861921012402,0.048934109508991,-0.009378920309246,0.047351095825434,0.059284955263138,-0.008064026013017,0.074136041104794));
res += mul(Get(s0,0,0), float4x4(-0.107336670160294,-0.105872184038162,-0.207001596689224,0.090909205377102,-0.060253530740738,0.006742893718183,-0.007955401204526,-0.103440821170807,-0.084819741547108,0.035012770444155,-0.018707303330302,0.034139923751354,0.208403587341309,-0.095696277916431,-0.042130175977945,-0.039365071803331));
res += mul(Get(s0,0,dy), float4x4(-0.074983052909374,-0.133611142635345,0.141711041331291,0.118681117892265,0.142357453703880,-0.035002503544092,-0.054246030747890,0.280728578567505,0.047129571437836,-0.256831884384155,-0.026847137138247,0.032608270645142,-0.065991245210171,-0.027632137760520,0.101617284119129,0.085190109908581));
res += mul(Get(s0,dx,-dy), float4x4(-0.013083907775581,0.011761792935431,0.099299155175686,0.094345264136791,0.100078023970127,0.125527471303940,0.076210662722588,-0.110717266798019,-0.063689008355141,-0.059694763273001,-0.159515738487244,-0.059507653117180,0.055082146078348,0.063751049339771,-0.125401675701141,-0.106905981898308));
res += mul(Get(s0,dx,0), float4x4(0.026433756574988,0.053487285971642,-0.108096182346344,0.110316611826420,0.051867548376322,-0.064903564751148,0.019413538277149,0.159973248839378,-0.107986874878407,0.036543548107147,0.086511410772800,-0.012696637772024,0.173792019486427,0.014592454768717,0.103401072323322,-0.067843928933144));
res += mul(Get(s0,dx,dy), float4x4(-0.030871776863933,0.052011366933584,-0.044840026646852,-0.028741829097271,0.122914321720600,0.070660986006260,0.145267978310585,0.141658708453178,-0.083199419081211,0.034298501908779,-0.036694578826427,0.175963386893272,-0.005346766673028,-0.224842920899391,0.082513563334942,-0.088238790631294));
res += mul(Get(s1,-dx,-dy), float4x4(-0.038047738373280,0.072809375822544,0.147198766469955,-0.178219467401505,0.045620411634445,0.042878933250904,-0.046840853989124,0.096781961619854,-0.131886422634125,0.016820874065161,0.039280440658331,-0.081766679883003,0.161371469497681,0.089741662144661,0.071802742779255,-0.023975105956197));
res += mul(Get(s1,-dx,0), float4x4(0.021111665293574,-0.136671200394630,0.028905967250466,0.145893678069115,-0.012797314673662,0.019886199384928,-0.030031839385629,0.062842503190041,-0.145911246538162,-0.030622610822320,-0.003930974751711,-0.026544647291303,0.114643216133118,-0.118450462818146,0.017622586339712,-0.035158272832632));
res += mul(Get(s1,-dx,dy), float4x4(0.020733889192343,-0.129585728049278,0.142099529504776,0.130393475294113,0.061452724039555,-0.095692157745361,-0.235927775502205,0.013032044284046,-0.101440832018852,-0.008583895862103,0.186040014028549,-0.022016303613782,-0.049324449151754,-0.049703799188137,-0.091399393975735,0.053137157112360));
res += mul(Get(s1,0,-dy), float4x4(-0.081835232675076,0.041930794715881,-0.007749815937132,-0.064576193690300,0.094918832182884,-0.005197519436479,-0.005355825647712,0.065788008272648,0.010417078621686,0.128949701786041,0.080406285822392,0.029111843556166,0.220595777034760,-0.050776321440935,-0.165787950158119,-0.082798980176449));
res += mul(Get(s1,0,0), float4x4(0.011395950801671,-0.025708721950650,-0.019495885819197,0.055825348943472,-0.023982448503375,0.337484449148178,-0.133702248334885,-0.102900817990303,-0.004255525302142,0.011495703831315,-0.014229496009648,0.027550444006920,0.094970747828484,0.181038007140160,-0.089622192084789,0.171140983700752));
res += mul(Get(s1,0,dy), float4x4(-0.059214077889919,-0.078736223280430,-0.042620107531548,0.137407898902893,-0.043253313750029,0.016543921083212,0.027821943163872,-0.070132166147232,-0.019944891333580,0.060593031346798,0.061179365962744,0.029637981206179,0.021712617948651,-0.100184865295887,-0.009464787319303,-0.079229928553104));
res += mul(Get(s1,dx,-dy), float4x4(-0.109982363879681,-0.157669588923454,0.043829157948494,-0.084648266434669,0.063252776861191,0.011870717629790,0.057504918426275,-0.026012118905783,0.089488342404366,0.004259110428393,0.057995133101940,-0.076572947204113,-0.106552995741367,-0.124598130583763,0.040544543415308,0.005401495378464));
res += mul(Get(s1,dx,0), float4x4(0.011514721438289,-0.061415404081345,-0.040802195668221,-0.099467687308788,-0.003977358341217,0.163005828857422,-0.067572124302387,0.044848985970020,-0.014013598673046,0.096158549189568,0.157185375690460,0.049495145678520,0.169484734535217,0.024658245965838,0.067179165780544,-0.077851988375187));
res += mul(Get(s1,dx,dy), float4x4(0.089673534035683,-0.218327909708023,-0.006429330911487,-0.041693266481161,0.176990345120430,0.025431454181671,0.064983293414116,0.032463088631630,0.053409170359373,-0.072298258543015,-0.146480217576027,0.100186221301556,-0.011764490045607,-0.120153546333313,-0.031744379550219,-0.046737927943468));
res += mul(Get(s2,-dx,-dy), float4x4(-0.013665405102074,-0.105615399777889,-0.013852616772056,-0.000428846979048,-0.050169546157122,-0.187127560377121,-0.025730345398188,-0.125199556350708,0.176836982369423,0.019283453002572,0.120758637785912,0.009806483052671,-0.088018648326397,-0.102953031659126,0.108220562338829,0.097610406577587));
res += mul(Get(s2,-dx,0), float4x4(0.000944480183534,0.045983120799065,0.080876417458057,0.115820623934269,-0.062472119927406,-0.009251649491489,-0.008413642644882,0.004649295937270,0.005358084104955,-0.017503203824162,-0.015019338577986,-0.071513958275318,0.084810979664326,0.001323349657468,0.004844593815506,-0.011338096112013));
res += mul(Get(s2,-dx,dy), float4x4(0.021649094298482,0.023842439055443,0.098617151379585,-0.030836716294289,-0.015403422527015,0.024255091324449,0.013674446381629,-0.008125599473715,0.041365064680576,0.145978108048439,0.005739097483456,0.184793964028358,0.024823231622577,-0.048404525965452,0.081229485571384,-0.013201751746237));
res += mul(Get(s2,0,-dy), float4x4(0.219207704067230,0.120661288499832,0.120329432189465,0.007403079885989,-0.013209421187639,0.039506483823061,-0.039456855505705,-0.001944835763425,-0.073622368276119,0.052176371216774,-0.044365424662828,-0.020000552758574,-0.130265519022942,0.112460449337959,-0.005245317239314,0.013015063479543));
res += mul(Get(s2,0,0), float4x4(0.133896037936211,0.031819038093090,-0.186921969056129,-0.011081042699516,0.084778368473053,-0.016656924039125,0.081060364842415,0.053849529474974,0.015979174524546,0.076346062123775,0.076128207147121,0.115536585450172,-0.196312204003334,-0.051281012594700,0.029126293957233,-0.017421200871468));
res += mul(Get(s2,0,dy), float4x4(-0.007092392072082,0.137503430247307,-0.116298019886017,0.125507965683937,-0.068266600370407,0.090466804802418,-0.153501018881798,-0.003976436797529,-0.090222865343094,-0.020745413377881,0.031265310943127,0.092348329722881,-0.147976905107498,-0.120624475181103,0.006224041339010,-0.096168808639050));
res += mul(Get(s2,dx,-dy), float4x4(0.157969191670418,0.075568884611130,0.027948170900345,-0.200321763753891,0.096144236624241,0.040303733199835,0.192608863115311,0.074870117008686,-0.021138913929462,0.099595598876476,0.019237022846937,0.083440497517586,-0.095575258135796,-0.005410164594650,0.059700530022383,-0.030299074947834));
res += mul(Get(s2,dx,0), float4x4(-0.035688135772943,0.164994448423386,0.107023894786835,0.055242106318474,-0.030219644308090,0.213278532028198,-0.155648514628410,0.180979043245316,-0.075333058834076,0.172826334834099,0.086195766925812,0.032005690038204,-0.003720071399584,-0.085745036602020,-0.047899384051561,0.133289486169815));
res += mul(Get(s2,dx,dy), float4x4(-0.106730252504349,0.015045602805912,-0.087371118366718,0.009185044094920,0.050594616681337,-0.078372329473495,0.092244096100330,0.071601249277592,0.001718002371490,-0.069547802209854,-0.013799708336592,-0.056329485028982,0.037236031144857,-0.143793880939484,0.108732230961323,0.211715415120125));
res += mul(Get(s3,-dx,-dy), float4x4(-0.122814290225506,0.047018554061651,-0.060377921909094,0.042154271155596,-0.096721410751343,-0.008639644831419,0.041116710752249,0.013169719837606,-0.075060963630676,-0.125045433640480,-0.046995364129543,-0.000025693349016,0.162941619753838,0.059676337987185,-0.075346522033215,0.084391884505749));
res += mul(Get(s3,-dx,0), float4x4(-0.179787799715996,-0.068448230624199,0.006764816585928,0.126067399978638,0.173169329762459,-0.008076615631580,0.061611134558916,-0.105452798306942,-0.070358142256737,0.021152192726731,-0.000959988392424,-0.108623363077641,-0.052532326430082,0.019441833719611,0.183228716254234,-0.126115292310715));
res += mul(Get(s3,-dx,dy), float4x4(-0.053070761263371,0.039669550955296,-0.141174748539925,0.043421462178230,0.007941410876811,-0.105180270969868,-0.059810858219862,0.075397714972496,0.158757939934731,-0.007944484241307,-0.068062774837017,-0.022851482033730,-0.081225045025349,-0.087345294654369,0.009236596524715,0.062616236507893));
res += mul(Get(s3,0,-dy), float4x4(-0.175488799810410,0.138117119669914,0.146070510149002,-0.126491367816925,-0.026920385658741,-0.012981083244085,-0.000245416507823,0.049317158758640,0.055536366999149,0.004851669073105,-0.114421099424362,0.021140994504094,0.030100559815764,-0.007859976962209,-0.068378187716007,0.023300055414438));
res += mul(Get(s3,0,0), float4x4(-0.028411854058504,0.009603025391698,0.075637914240360,0.077919647097588,-0.131617411971092,-0.000692882982548,-0.021429901942611,-0.030918033793569,0.132166177034378,-0.226539999246597,-0.014116528443992,-0.005350698716938,-0.124889209866524,-0.106532417237759,0.059039704501629,0.141764745116234));
res += mul(Get(s3,0,dy), float4x4(-0.120100952684879,-0.061661362648010,-0.052488595247269,-0.078483335673809,0.033873815089464,0.063286215066910,-0.065778397023678,0.055804330855608,-0.267890334129333,0.076395288109779,-0.051558878272772,-0.151381775736809,0.162802442908287,-0.091896526515484,0.040535263717175,0.020670255646110));
res += mul(Get(s3,dx,-dy), float4x4(0.046190332621336,0.045150667428970,-0.099177025258541,-0.112274982035160,-0.109479181468487,0.075190111994743,0.078747957944870,-0.027786368504167,-0.037755701690912,0.041037637740374,-0.033367987722158,0.030785307288170,0.098655499517918,0.149619996547699,-0.051825970411301,-0.068403810262680));
res += mul(Get(s3,dx,0), float4x4(-0.065017305314541,0.101560994982719,-0.053707476705313,-0.018086936324835,-0.116565175354481,0.022571818903089,0.032118059694767,-0.129405826330185,-0.016163643449545,-0.013563080690801,0.031087595969439,-0.024048453196883,0.230867564678192,-0.190817743539810,0.011648145504296,-0.201024800539017));
res += mul(Get(s3,dx,dy), float4x4(0.002763346768916,0.044249050319195,0.014906402677298,0.177863463759422,-0.070663154125214,-0.079122617840767,-0.037783954292536,-0.128097727894783,-0.027316829189658,-0.040276963263750,0.151363700628281,0.071104228496552,0.054820414632559,-0.131372436881065,-0.141246497631073,-0.102027334272861));
res = max(float4(0,0,0,0), res);
return res;
}
