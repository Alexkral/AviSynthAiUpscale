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
res += mul(Get(s0,-dx,-dy), float4x4(0.039279710501432,-0.027867600321770,0.177064493298531,0.149291023612022,-0.108096778392792,0.045553524047136,0.235024958848953,-0.135870829224586,-0.015650317072868,-0.087392516434193,-0.053814120590687,0.172961816191673,0.020538505166769,0.011546211317182,0.283527672290802,0.009775533340871));
res += mul(Get(s0,-dx,0), float4x4(-0.058936689049006,0.053610082715750,-0.111031994223595,0.142064005136490,-0.052383132278919,-0.116238720715046,-0.124326363205910,-0.289844334125519,0.144724816083908,-0.001260884804651,-0.193613097071648,-0.049314446747303,-0.203657448291779,0.133157551288605,-0.168819338083267,-0.102542482316494));
res += mul(Get(s0,-dx,dy), float4x4(-0.149749949574471,-0.004153810907155,0.017863886430860,0.065344564616680,0.059210769832134,-0.227580741047859,-0.044614613056183,0.039060112088919,0.029931785538793,-0.143095344305038,0.030919598415494,-0.170446053147316,0.054053742438555,-0.202550381422043,-0.164919704198837,-0.074483484029770));
res += mul(Get(s0,0,-dy), float4x4(-0.103421106934547,0.071816578507423,-0.020020695403218,0.117716953158379,0.039205320179462,-0.097058840095997,0.178476333618164,0.028972188010812,-0.068758033216000,0.042837169021368,-0.010592131875455,-0.121323473751545,-0.119993001222610,0.200016513466835,-0.033928938210011,0.112862810492516));
res += mul(Get(s0,0,0), float4x4(0.194971039891243,0.040228746831417,0.011329413391650,0.020444490015507,0.078490026295185,0.154074862599373,0.148854836821556,-0.014723882079124,-0.274601340293884,-0.123674795031548,0.031955711543560,-0.086869500577450,0.016322724521160,-0.040343098342419,0.061456769704819,0.141903176903725));
res += mul(Get(s0,0,dy), float4x4(-0.155781477689743,-0.007898400537670,0.004569602198899,0.046628452837467,-0.072071298956871,0.042016535997391,0.044314581900835,0.023092595860362,0.087281852960587,-0.138060152530670,-0.100882343947887,-0.044338051229715,0.027952138334513,0.116964675486088,-0.071644827723503,0.024689361453056));
res += mul(Get(s0,dx,-dy), float4x4(0.011094484478235,0.003969589248300,0.005473416764289,0.006350757554173,-0.003462029853836,0.151361182332039,0.018178783357143,0.247181102633476,-0.013411779887974,0.047924678772688,-0.139502599835396,-0.034367188811302,-0.005122700240463,-0.023977447301149,0.094377182424068,-0.233278885483742));
res += mul(Get(s0,dx,0), float4x4(0.215959772467613,0.026598025113344,-0.278001010417938,0.075450152158737,-0.045152861624956,-0.096688807010651,-0.007327654398978,0.135342940688133,-0.212806686758995,0.057373613119125,-0.090215094387531,-0.048156939446926,-0.159278810024261,0.144356846809387,-0.064303994178772,-0.095987699925900));
res += mul(Get(s0,dx,dy), float4x4(-0.001809745561332,0.148197308182716,0.114683143794537,0.076271668076515,0.108436360955238,-0.171829253435135,-0.065836302936077,-0.081434175372124,0.099674969911575,-0.020023280754685,0.103676944971085,-0.044384930282831,-0.242555618286133,-0.113417401909828,0.152050495147705,-0.028090938925743));
res += mul(Get(s1,-dx,-dy), float4x4(-0.157701313495636,-0.058532029390335,-0.126246884465218,0.009534488432109,-0.193588018417358,-0.087275274097919,-0.054639246314764,0.110024325549603,-0.006706101354212,-0.036780379712582,0.133964538574219,-0.196463257074356,-0.111832864582539,0.164788395166397,0.021283587440848,0.050348367542028));
res += mul(Get(s1,-dx,0), float4x4(-0.053033724427223,-0.107156381011009,-0.213352069258690,-0.205168336629868,-0.132979214191437,0.184183612465858,0.125115513801575,-0.064908683300018,0.115156091749668,-0.095679007470608,0.024104569107294,0.192736774682999,0.130091920495033,0.165037140250206,-0.067169837653637,-0.038027375936508));
res += mul(Get(s1,-dx,dy), float4x4(0.002888927236199,0.097937397658825,-0.054843518882990,0.021607933565974,0.035086456686258,0.026053162291646,-0.172944501042366,-0.032304126769304,0.153273716568947,0.189414456486702,-0.162409827113152,0.054280150681734,-0.106258042156696,0.240108743309975,-0.002221589209512,-0.063369698822498));
res += mul(Get(s1,0,-dy), float4x4(0.101629003882408,-0.036901663988829,0.045147519558668,0.224817246198654,0.063205279409885,0.051385834813118,-0.057393789291382,-0.166790261864662,-0.021202614530921,0.059953559190035,0.119333714246750,0.060222808271646,0.090487383306026,0.137851178646088,0.273200750350952,-0.115857802331448));
res += mul(Get(s1,0,0), float4x4(-0.109652549028397,0.041032340377569,0.005836701486260,-0.170720905065536,-0.037757597863674,-0.335658371448517,0.071319021284580,0.034019753336906,-0.038944806903601,0.102598309516907,0.135528847575188,0.093483202159405,-0.065564148128033,0.163429096341133,-0.085523471236229,0.062205888330936));
res += mul(Get(s1,0,dy), float4x4(0.070876188576221,0.073577195405960,-0.112103492021561,-0.123235665261745,-0.133240416646004,0.043763685971498,-0.047343578189611,0.162211596965790,-0.056484654545784,-0.136348634958267,-0.055748626589775,-0.185847267508507,-0.064229466021061,0.148196801543236,0.098887674510479,-0.153914645314217));
res += mul(Get(s1,dx,-dy), float4x4(-0.010410309769213,-0.168732777237892,0.059911925345659,0.112924478948116,0.197500750422478,0.082040213048458,0.103339508175850,0.045273538678885,0.138653248548508,0.047852337360382,-0.038222096860409,-0.040888778865337,0.155038312077522,-0.073223970830441,-0.009940477088094,0.042511310428381));
res += mul(Get(s1,dx,0), float4x4(-0.071080081164837,-0.039458442479372,-0.189466223120689,-0.152242898941040,0.034513119608164,0.054860517382622,-0.276449471712112,0.148593559861183,0.056850358843803,0.191906064748764,-0.074830897152424,-0.074745640158653,0.009661387652159,-0.004382288549095,-0.008502346463501,-0.092453330755234));
res += mul(Get(s1,dx,dy), float4x4(0.109650500118732,0.203354820609093,-0.037914905697107,0.030243908986449,-0.102955460548401,-0.000264060625341,-0.080357469618320,-0.082942545413971,0.143654644489288,-0.018517313525081,0.054678939282894,0.026082051917911,0.178095132112503,0.089203380048275,-0.081707932054996,-0.001421032939106));
res += mul(Get(s2,-dx,-dy), float4x4(0.031326308846474,0.095655314624310,-0.013277107849717,-0.062232598662376,-0.042073205113411,-0.014343179762363,0.108249180018902,-0.016143897548318,0.071449473500252,0.252644181251526,-0.054236754775047,0.078414052724838,-0.071446590125561,0.213321566581726,-0.194029331207275,-0.010475489310920));
res += mul(Get(s2,-dx,0), float4x4(0.146617487072945,0.021326571702957,-0.192102193832397,0.056140877306461,-0.109741210937500,-0.136594057083130,0.083486273884773,-0.026655603200197,0.170606449246407,-0.135768517851830,-0.081350035965443,0.097958602011204,0.043174002319574,0.127902075648308,-0.013082531280816,0.007735782302916));
res += mul(Get(s2,-dx,dy), float4x4(-0.010572789236903,-0.082866311073303,0.053102623671293,-0.117720484733582,0.165156230330467,-0.089620158076286,0.010117365978658,-0.135802686214447,-0.146583124995232,0.028066910803318,0.182384997606277,-0.059927202761173,-0.072176575660706,0.070097431540489,-0.103320956230164,0.079683132469654));
res += mul(Get(s2,0,-dy), float4x4(-0.019140552729368,0.014666866511106,-0.155866831541061,-0.045721922069788,0.030795205384493,-0.005445539485663,0.004690507426858,0.039281912147999,-0.087219946086407,-0.085449114441872,0.024703966453671,0.028167353942990,0.026825472712517,-0.143792673945427,0.001873718691058,-0.120552279055119));
res += mul(Get(s2,0,0), float4x4(-0.109350778162479,0.018057497218251,-0.030917370691895,0.047146491706371,-0.108485408127308,-0.014945132657886,0.025017790496349,0.132098138332367,0.032213445752859,0.157137095928192,0.060974974185228,-0.035061728209257,0.059262059628963,-0.135092973709106,-0.104456044733524,-0.099552430212498));
res += mul(Get(s2,0,dy), float4x4(-0.060680635273457,0.088484533131123,-0.247077569365501,-0.069429807364941,-0.111830934882164,-0.181065276265144,0.079203598201275,0.115091532468796,-0.139338567852974,-0.038982134312391,0.129631444811821,-0.283924460411072,-0.127487733960152,-0.030660148710012,0.011705983430147,0.092312186956406));
res += mul(Get(s2,dx,-dy), float4x4(-0.057235818356276,0.165851101279259,-0.007168056908995,-0.180148437619209,0.182102113962173,0.019632933661342,-0.276794135570526,0.075051665306091,-0.016600294038653,-0.273462444543839,-0.129042863845825,-0.035962618887424,-0.018892174586654,0.069087564945221,-0.306138485670090,-0.147343039512634));
res += mul(Get(s2,dx,0), float4x4(0.098841443657875,-0.021075105294585,0.061406001448631,-0.055033620446920,0.111337862908840,0.000072399307101,0.041105378419161,-0.050242982804775,0.079118311405182,-0.174734100699425,-0.020511200651526,-0.131007894873619,0.043908018618822,0.009985568933189,-0.064944587647915,0.016963355243206));
res += mul(Get(s2,dx,dy), float4x4(-0.052841883152723,0.066422894597054,0.001730828196742,0.189118415117264,-0.011150973848999,0.053825523704290,-0.090916857123375,0.052095647901297,0.031588800251484,-0.023741155862808,-0.191878527402878,-0.123722404241562,0.055770125240088,-0.050643522292376,-0.191760346293449,-0.008248540572822));
res += mul(Get(s3,-dx,-dy), float4x4(-0.015647772699594,0.148686498403549,-0.108791932463646,-0.231176033616066,0.104664862155914,0.046366330236197,0.129631027579308,-0.072198785841465,0.046614579856396,-0.021445661783218,-0.027758548036218,0.063552752137184,0.226068466901779,-0.144840002059937,-0.085159301757813,-0.079228110611439));
res += mul(Get(s3,-dx,0), float4x4(-0.249569043517113,0.084737226366997,0.034611236304045,0.047746952623129,0.049033980816603,-0.245091825723648,-0.057326555252075,-0.113816618919373,0.114687032997608,0.119038313627243,0.084750212728977,-0.036580655723810,-0.028415303677320,-0.242813333868980,0.065834142267704,-0.126040324568748));
res += mul(Get(s3,-dx,dy), float4x4(-0.256720691919327,-0.118597589433193,-0.089542299509048,0.010236651636660,0.036328461021185,0.082779526710510,0.250657737255096,-0.033856898546219,0.014320918358862,0.050205178558826,0.098176546394825,-0.197428628802299,-0.082759313285351,0.073977716267109,0.057904575020075,0.098326392471790));
res += mul(Get(s3,0,-dy), float4x4(0.028874631971121,-0.035781878978014,-0.250240653753281,0.071625247597694,-0.097101144492626,0.011423610150814,-0.113821290433407,0.146101102232933,-0.278671562671661,-0.052714347839355,0.018409201875329,0.021994344890118,0.006309187505394,-0.028741765767336,-0.034852448850870,0.052596684545279));
res += mul(Get(s3,0,0), float4x4(-0.095737643539906,0.065152868628502,-0.051774375140667,0.211066529154778,0.149756729602814,0.018467640504241,0.052175927907228,0.131423100829124,0.006347730755806,0.188016146421432,-0.002831637626514,0.192583739757538,-0.136505886912346,0.067838363349438,-0.011043433099985,0.100466735661030));
res += mul(Get(s3,0,dy), float4x4(0.074756488204002,0.060111161321402,0.124191150069237,0.071734696626663,-0.019209951162338,-0.072330072522163,-0.128882974386215,-0.243372619152069,0.200893193483353,0.145011425018311,0.030961891636252,-0.043008040636778,-0.042373239994049,0.007538914680481,0.031705878674984,0.194804400205612));
res += mul(Get(s3,dx,-dy), float4x4(-0.204979717731476,-0.079004645347595,-0.178131178021431,0.279517889022827,0.082740440964699,0.038699086755514,0.086272887885571,0.091793760657310,0.032545752823353,-0.034120000898838,-0.145567893981934,-0.013840104453266,-0.078274361789227,0.123077131807804,0.046308390796185,0.029645159840584));
res += mul(Get(s3,dx,0), float4x4(-0.080852739512920,-0.013676946982741,0.035874783992767,-0.081568561494350,-0.078494459390640,-0.070060774683952,0.004455586895347,0.037436313927174,0.025835406035185,0.054458901286125,-0.004106938838959,0.001727548311464,0.122445888817310,-0.094894371926785,-0.047044031322002,0.232316568493843));
res += mul(Get(s3,dx,dy), float4x4(-0.220121413469315,0.155929386615753,-0.126737579703331,-0.169533416628838,0.131806671619415,-0.042081881314516,0.157767072319984,-0.028691004961729,0.083433985710144,0.012460109777749,0.009607414714992,-0.036169514060020,-0.081797696650028,-0.050626441836357,-0.053793799132109,-0.083352059125900));
return max(float4(0,0,0,0), res);
}