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
res += mul(Get(s0,-dx,-dy), float4x4(-0.281619757413864,0.090858317911625,-0.086177490651608,0.096917241811752,-0.153123050928116,-0.247986212372780,-0.149117156863213,0.375525861978531,0.033703543245792,-0.314042627811432,-0.103604502975941,-0.231968000531197,0.105998031795025,-0.109291620552540,0.054085757583380,0.031824294477701));
res += mul(Get(s0,-dx,0), float4x4(-0.237607672810555,0.054930601269007,-0.156446844339371,-0.047350905835629,-0.211524620652199,-0.076588518917561,-0.117130950093269,0.077841952443123,0.024665106087923,-0.036211676895618,0.078807041049004,-0.158106550574303,-0.069157145917416,-0.075301982462406,-0.009819943457842,0.021864347159863));
res += mul(Get(s0,-dx,dy), float4x4(-0.129538223147392,-0.027858415618539,-0.218794867396355,-0.127047881484032,-0.157799094915390,-0.084085285663605,-0.154412001371384,-0.123851433396339,0.026092832908034,0.010395604185760,-0.192745760083199,-0.041906405240297,0.022480577230453,-0.125989511609077,-0.141981303691864,-0.170918896794319));
res += mul(Get(s0,0,-dy), float4x4(0.076434187591076,0.001659912173636,0.276768416166306,-0.092448942363262,-0.119860112667084,-0.065431348979473,0.099515691399574,-0.017828628420830,-0.072742462158203,0.120704047381878,0.411103367805481,-0.015534220263362,-0.084337644279003,-0.129913493990898,0.240241423249245,-0.002464932622388));
res += mul(Get(s0,0,0), float4x4(0.258885890245438,-0.083269216120243,0.203605040907860,-0.166777372360229,-0.123594261705875,-0.060846641659737,0.019094046205282,-0.198740601539612,-0.125168919563293,0.546260476112366,0.025860538706183,-0.007390085607767,0.120125584304333,-0.068328343331814,0.006691236980259,-0.030253132805228));
res += mul(Get(s0,0,dy), float4x4(0.101915225386620,-0.085564546287060,-0.119665913283825,-0.040780458599329,-0.105496652424335,-0.058372080326080,-0.148247539997101,-0.131422057747841,-0.048870418220758,0.198469087481499,-0.047605436295271,-0.141428053379059,-0.010577023029327,-0.143941298127174,-0.159697920084000,-0.147576481103897));
res += mul(Get(s0,dx,-dy), float4x4(0.316480875015259,0.102807447314262,0.173739925026894,-0.177239239215851,-0.022722095251083,-0.125416561961174,0.089761495590210,-0.040896058082581,-0.063771173357964,0.045369274914265,0.088137961924076,0.068764276802540,-0.202192246913910,-0.280576467514038,0.393883615732193,-0.107616886496544));
res += mul(Get(s0,dx,0), float4x4(0.057725686579943,-0.027192607522011,0.061117146164179,0.078766144812107,-0.008481126278639,-0.111826427280903,0.042107794433832,-0.142071723937988,-0.117998130619526,0.399141967296600,-0.116152763366699,0.143698051571846,0.428409069776535,-0.144755035638809,-0.067311935126781,-0.090576417744160));
res += mul(Get(s0,dx,dy), float4x4(-0.098801329731941,0.034704785794020,-0.118693470954895,0.224307551980019,-0.217784672975540,-0.148447617888451,-0.160223945975304,-0.125203147530556,-0.093813419342041,0.402219682931900,-0.060890808701515,-0.053394533693790,0.123492710292339,-0.164330944418907,-0.213499277830124,-0.006980941165239));
res += mul(Get(s1,-dx,-dy), float4x4(-0.118144579231739,-0.059884779155254,0.083790190517902,-0.008765566162765,-0.143019333481789,-0.002566165989265,-0.016994474455714,0.209541037678719,-0.166874065995216,-0.091892145574093,-0.113739095628262,-0.036938790231943,0.004762877244502,0.216084808111191,-0.058348696678877,-0.116069830954075));
res += mul(Get(s1,-dx,0), float4x4(-0.072179399430752,-0.087696336209774,-0.079624295234680,0.134911358356476,-0.127934455871582,-0.019831528887153,-0.101238451898098,0.052533391863108,-0.120583102107048,-0.087296247482300,-0.101688235998154,-0.109701387584209,-0.008162667043507,0.150590047240257,-0.070523060858250,-0.081688672304153));
res += mul(Get(s1,-dx,dy), float4x4(-0.115724526345730,-0.025807688012719,-0.157438859343529,0.020461218431592,-0.011699710041285,-0.128944769501686,-0.252042114734650,0.203660696744919,0.039618078619242,0.101713560521603,-0.105955079197884,-0.099781595170498,-0.030922457575798,-0.011302904225886,0.017355058342218,-0.034660447388887));
res += mul(Get(s1,0,-dy), float4x4(-0.015984445810318,0.111681871116161,0.068894974887371,-0.212544307112694,0.002949796151370,-0.001948665129021,0.195732802152634,-0.058338709175587,-0.139641448855400,-0.104620926082134,-0.109416864812374,0.100152410566807,0.063366927206516,0.134371832013130,-0.008412063121796,-0.005427849944681));
res += mul(Get(s1,0,0), float4x4(0.010140734724700,0.032781649380922,-0.088358603417873,0.121540360152721,0.020025571808219,-0.040584485977888,-0.103648960590363,-0.077162250876427,0.131891667842865,-0.063469752669334,0.022478330880404,-0.004495733417571,0.095913775265217,-0.078523918986320,-0.014301400631666,-0.068959988653660));
res += mul(Get(s1,0,dy), float4x4(0.078318916261196,0.224782571196556,-0.133425742387772,0.102908916771412,0.114700607955456,0.003046564292163,-0.056019145995378,-0.038123670965433,-0.012804905883968,-0.108907386660576,0.157652392983437,-0.151079818606377,0.049509990960360,-0.089779622852802,-0.079470463097095,0.049871761351824));
res += mul(Get(s1,dx,-dy), float4x4(-0.078917674720287,0.060690205544233,0.078737311065197,-0.123550608754158,0.031192408874631,0.107962459325790,0.184939980506897,0.126636505126953,-0.027352247387171,-0.101690970361233,-0.147600859403610,0.215426325798035,-0.042342398315668,0.299336969852448,-0.058240823447704,0.456697732210159));
res += mul(Get(s1,dx,0), float4x4(0.038525614887476,0.162659540772438,-0.073567137122154,-0.010644393973053,0.042053047567606,0.077996499836445,-0.045037303119898,0.053742229938507,0.154214188456535,0.051034197211266,-0.029047511518002,0.039398491382599,-0.092673830688000,-0.049871612340212,-0.022700907662511,0.217263102531433));
res += mul(Get(s1,dx,dy), float4x4(-0.104947336018085,0.180620655417442,0.044223938137293,0.030281886458397,0.103310689330101,0.197491347789764,-0.003594734007493,0.073254600167274,0.183641597628593,0.134305819869041,-0.078565359115601,0.090825475752354,0.045980095863342,0.065086036920547,0.026074748486280,0.236016064882278));
res += mul(Get(s2,-dx,-dy), float4x4(-0.223359435796738,0.008201746270061,-0.082409113645554,0.101521074771881,-0.192722976207733,-0.276633083820343,-0.035471297800541,0.378527134656906,0.257148981094360,-0.070269532501698,0.057839807122946,0.022337181493640,0.070751480758190,0.123838119208813,-0.022927641868591,0.114099748432636));
res += mul(Get(s2,-dx,0), float4x4(-0.074939958751202,0.067872501909733,-0.003672337625176,0.050319895148277,-0.115961231291294,-0.068867750465870,-0.157011434435844,0.329520076513290,0.351723313331604,0.066352151334286,-0.000058478952269,-0.037034925073385,-0.004312573932111,0.012131789699197,0.059843972325325,0.073987893760204));
res += mul(Get(s2,-dx,dy), float4x4(0.034629244357347,0.143000200390816,-0.045733842998743,-0.062558479607105,-0.085765466094017,-0.106262214481831,-0.152115672826767,0.104109458625317,0.016359942033887,0.051721930503845,-0.248736530542374,0.007322314660996,-0.050229594111443,0.108982302248478,0.235249102115631,0.046048145741224));
res += mul(Get(s2,0,-dy), float4x4(-0.169652238488197,-0.063565723598003,0.012617171742022,0.034547541290522,-0.076018951833248,-0.132469326257706,-0.182964473962784,0.000646170170512,0.278154730796814,-0.120925381779671,0.243803724646568,0.178631633520126,0.171000227332115,0.101394921541214,-0.062997430562973,-0.034179877489805));
res += mul(Get(s2,0,0), float4x4(-0.007655091583729,-0.034924753010273,0.010455409996212,-0.053608611226082,0.131124183535576,-0.102197997272015,0.047600910067558,-0.118957892060280,0.380991369485855,0.005274100694805,0.152986913919449,-0.034780547022820,0.071641437709332,-0.067374430596828,-0.058642949908972,-0.123357944190502));
res += mul(Get(s2,0,dy), float4x4(0.029357170686126,-0.087624587118626,-0.074832215905190,-0.110970929265022,0.003178553888574,-0.035687439143658,0.194528475403786,-0.096628628671169,-0.014852754771709,-0.059472408145666,-0.088941805064678,-0.089147672057152,-0.002329466398805,-0.163497269153595,-0.000753883679863,0.194806173443794));
res += mul(Get(s2,dx,-dy), float4x4(0.130820959806442,-0.034276098012924,0.162971094250679,-0.035215333104134,-0.012029732577503,-0.106039531528950,0.092624992132187,-0.170670822262764,-0.047524642199278,-0.109201215207577,-0.021369384601712,-0.072922900319099,-0.100659914314747,0.138096228241920,-0.085881426930428,-0.148854672908783));
res += mul(Get(s2,dx,0), float4x4(0.170513555407524,-0.059702791273594,-0.026539165526628,-0.072532333433628,0.138820990920067,-0.091803073883057,0.031662594527006,-0.109550982713699,-0.087202660739422,-0.041861448436975,0.034303441643715,0.043416801840067,-0.025781469419599,0.077987432479858,-0.031298264861107,-0.304780691862106));
res += mul(Get(s2,dx,dy), float4x4(-0.004754581954330,-0.015556262806058,-0.027689835056663,0.014392342418432,0.245667591691017,-0.053613584488630,0.247453644871712,-0.101583309471607,-0.058724630624056,-0.141165673732758,-0.256683498620987,-0.027580237016082,-0.036081541329622,0.405451804399490,-0.175092503428459,0.584013640880585));
res += mul(Get(s3,-dx,-dy), float4x4(-0.082636959850788,-0.062096163630486,0.028767466545105,-0.129025191068649,-0.038133952766657,0.221637144684792,-0.105650745332241,0.070734925568104,-0.238983839750290,-0.201126858592033,-0.257539778947830,0.497370451688766,0.096893168985844,-0.087935596704483,-0.096588596701622,0.001868747291155));
res += mul(Get(s3,-dx,0), float4x4(-0.042269743978977,-0.014873594045639,0.039392217993736,0.160137951374054,-0.025690304115415,0.093880012631416,-0.075844869017601,-0.139124795794487,-0.223625585436821,-0.062740512192249,-0.135343313217163,0.065349861979485,0.147152274847031,-0.135824158787727,-0.015956785529852,-0.091106496751308));
res += mul(Get(s3,-dx,dy), float4x4(-0.023969782516360,0.112762093544006,-0.048797857016325,-0.017155479639769,-0.151064783334732,0.053086835891008,-0.054439887404442,-0.064367584884167,-0.264393687248230,-0.035296309739351,-0.115434125065804,-0.070940852165222,0.275368541479111,0.072845116257668,-0.143989771604538,-0.179563224315643));
res += mul(Get(s3,0,-dy), float4x4(-0.019033025950193,0.206718191504478,-0.029263820499182,0.170058995485306,-0.050167009234428,-0.026946628466249,-0.037355776876211,-0.170737206935883,-0.218089818954468,-0.103786319494247,-0.087619721889496,0.206328913569450,-0.030241493135691,0.032677639275789,-0.108895033597946,0.023685673251748));
res += mul(Get(s3,0,0), float4x4(0.017978422343731,0.128626853227615,-0.013131773099303,-0.025431137531996,-0.043499339371920,-0.153455123305321,0.030220897868276,-0.196269840002060,-0.102819338440895,-0.059781547635794,0.070209287106991,-0.033627279102802,0.074987538158894,0.024961961433291,-0.036176979541779,0.009731709025800));
res += mul(Get(s3,0,dy), float4x4(-0.018108902499080,-0.112605981528759,0.008487143553793,-0.085441693663597,-0.057407833635807,-0.220582410693169,-0.061194494366646,-0.105601288378239,-0.214306473731995,-0.052412625402212,-0.154394552111626,-0.136954650282860,0.140015855431557,0.294594258069992,0.030384380370378,-0.075817838311195));
res += mul(Get(s3,dx,-dy), float4x4(-0.096662335097790,0.159553304314613,0.032923206686974,0.087008282542229,-0.066864140331745,0.274141728878021,-0.015674155205488,-0.190513312816620,0.120434165000916,-0.111478812992573,-0.093110851943493,-0.014060801826417,-0.024396149441600,0.085955604910851,-0.037223409861326,0.257116794586182));
res += mul(Get(s3,dx,0), float4x4(-0.051311269402504,0.237878829240799,0.045696895569563,-0.137103781104088,-0.097360417246819,-0.185105845332146,-0.127978056669235,-0.132156357169151,0.093179643154144,-0.103356212377548,0.058714542537928,-0.049639720469713,0.018273822963238,0.066455222666264,-0.003895140951499,0.153555601835251));
res += mul(Get(s3,dx,dy), float4x4(-0.061166729778051,0.097851440310478,0.066549748182297,-0.068533644080162,-0.155365586280823,-0.159353211522102,-0.112622238695621,-0.063305199146271,0.163129225373268,-0.143850028514862,-0.151334583759308,-0.108889289200306,0.092172361910343,0.229135096073151,-0.135688766837120,0.105551481246948));
return max(float4(0,0,0,0), res);
}
