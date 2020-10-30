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
res += mul(Get(s0,-dx,-dy), float4x4(-0.014764695428312,-0.183657795190811,-0.138234972953796,0.041259128600359,-0.113004438579082,-0.115572206676006,-0.030522905290127,-0.025206679478288,-0.181059226393700,0.100267961621284,0.080837763845921,0.016897991299629,0.143435090780258,0.082379072904587,-0.008458961732686,0.044175017625093));
res += mul(Get(s0,-dx,0), float4x4(-0.038086805492640,-0.159131675958633,0.036202989518642,-0.031374849379063,-0.140061557292938,0.069581471383572,0.005326547659934,-0.103012070059776,-0.096632629632950,0.075453884899616,0.130791231989861,-0.150354951620102,0.067634813487530,0.086123779416084,-0.138717383146286,-0.050990626215935));
res += mul(Get(s0,-dx,dy), float4x4(-0.022969212383032,-0.073718599975109,0.107306547462940,0.076240532100201,-0.007949561811984,0.048840861767530,0.086196556687355,0.068664193153381,-0.024629365652800,-0.127344191074371,-0.085872024297714,-0.122545905411243,-0.074140325188637,-0.047559451311827,-0.048910602927208,-0.079511843621731));
res += mul(Get(s0,0,-dy), float4x4(0.015034459531307,-0.232377186417580,-0.088765382766724,-0.146866559982300,0.016664199531078,-0.073384188115597,0.035934560000896,-0.018713999539614,0.078437313437462,-0.008695790544152,-0.072051398456097,-0.152948632836342,0.120037600398064,0.028790410608053,0.022445628419518,0.000675224582665));
res += mul(Get(s0,0,0), float4x4(0.010676971636713,-0.120691038668156,-0.071222782135010,-0.114490538835526,-0.142416402697563,0.117692932486534,0.025097917765379,-0.046827897429466,0.186627283692360,-0.011976207606494,0.012820915319026,-0.108474776148796,0.220091715455055,0.045753665268421,-0.066903702914715,0.072497472167015));
res += mul(Get(s0,0,dy), float4x4(0.025372561067343,0.002976114628837,-0.116983942687511,0.104121558368206,-0.184358879923820,0.078622817993164,0.012301715090871,-0.004748696461320,-0.059983946382999,-0.265005201101303,-0.004645122215152,0.140457376837730,0.089849889278412,-0.047531798481941,-0.094126790761948,0.172291040420532));
res += mul(Get(s0,dx,-dy), float4x4(0.130813762545586,-0.167577013373375,-0.012868855148554,-0.087104529142380,0.159334838390350,-0.057244397699833,-0.000645074178465,-0.138640135526657,-0.029652750119567,0.325521945953369,-0.113277710974216,-0.045252349227667,-0.030779140070081,-0.065109096467495,0.099895253777504,0.170397222042084));
res += mul(Get(s0,dx,0), float4x4(-0.246895298361778,-0.150663435459137,-0.037247136235237,-0.210166573524475,-0.119341813027859,0.079449377954006,0.026861215010285,-0.122790202498436,0.207563832402229,0.233435362577438,-0.044522643089294,-0.022594925016165,0.014287723228335,-0.054256536066532,-0.026395700871944,-0.010367358103395));
res += mul(Get(s0,dx,dy), float4x4(0.060558091849089,-0.113496772944927,-0.243275687098503,-0.062713667750359,0.027101611718535,0.076189778745174,0.001666865311563,0.024082621559501,0.003106345655397,-0.211953341960907,0.164280414581299,-0.141110882163048,0.117254853248596,0.003169970586896,-0.215384438633919,0.179089859127998));
res += mul(Get(s1,-dx,-dy), float4x4(-0.068875402212143,0.274639219045639,-0.031924661248922,0.111873939633369,-0.134319126605988,-0.059715308248997,0.073313519358635,-0.085466727614403,0.115311704576015,-0.186042279005051,0.045481059700251,-0.022441299632192,-0.200569987297058,-0.216349199414253,-0.099085628986359,0.125266641378403));
res += mul(Get(s1,-dx,0), float4x4(-0.023408152163029,0.239467516541481,-0.087631173431873,0.108192674815655,0.041225571185350,-0.065669126808643,-0.021714825183153,-0.000226746356930,0.004809133242816,0.008796111680567,-0.063099235296249,0.021961774677038,-0.001636627363041,-0.052206549793482,0.166495844721794,-0.049963902682066));
res += mul(Get(s1,-dx,dy), float4x4(-0.058874767273664,0.236947357654572,-0.088004544377327,0.133637353777885,-0.104341909289360,0.194798171520233,0.051477778702974,-0.069541521370411,0.024466302245855,0.126661151647568,-0.092005945742130,0.165221557021141,0.004661212209612,-0.005434178281575,-0.083299249410629,0.339144259691238));
res += mul(Get(s1,0,-dy), float4x4(-0.027432173490524,0.125617727637291,0.036644060164690,-0.014328043907881,-0.109911218285561,-0.109859779477119,-0.021633762866259,-0.109075352549553,0.055990412831306,0.048121728003025,-0.001070093596354,-0.084664754569530,0.044884011149406,0.030409293249249,-0.024874644353986,-0.027333104982972));
res += mul(Get(s1,0,0), float4x4(0.004636299796402,0.049256414175034,-0.059112295508385,0.022468769922853,0.047465302050114,-0.131603702902794,-0.073089689016342,-0.173545360565186,0.245239317417145,0.010231804102659,0.036325700581074,-0.123941227793694,0.162724897265434,0.056915026158094,0.120616495609283,-0.060106247663498));
res += mul(Get(s1,0,dy), float4x4(-0.134336516261101,-0.013769815675914,-0.078895241022110,0.104482904076576,-0.233974128961563,0.032201815396547,-0.000818561122287,-0.049898993223906,-0.026989923790097,-0.116931863129139,0.089632317423820,-0.003563346341252,0.081070154905319,-0.070547774434090,0.059799935668707,0.155435413122177));
res += mul(Get(s1,dx,-dy), float4x4(0.070379495620728,0.023380434140563,0.036429286003113,0.194509416818619,-0.032201282680035,0.089034982025623,0.029276393353939,0.144083052873611,-0.030410040169954,0.154737681150436,-0.040207825601101,-0.122149161994457,-0.163942798972130,0.291600435972214,-0.144091591238976,-0.166332691907883));
res += mul(Get(s1,dx,0), float4x4(0.193618968129158,0.196866214275360,-0.011025894433260,0.160296797752380,0.124534696340561,-0.003470778698102,0.048205140978098,0.026124821975827,0.138779416680336,0.104257874190807,-0.056910809129477,0.021429505199194,0.153946474194527,0.007016504649073,-0.106379993259907,-0.203984633088112));
res += mul(Get(s1,dx,dy), float4x4(0.032946746796370,0.219868943095207,-0.029438586905599,0.224960014224052,-0.072622142732143,0.223182678222656,-0.046609055250883,0.124831043183804,-0.059159439057112,-0.163682058453560,0.036398060619831,0.168006733059883,-0.040063265711069,0.002324591157958,0.069829508662224,0.135580524802208));
res += mul(Get(s2,-dx,-dy), float4x4(0.075192824006081,0.302646070718765,0.038210324943066,0.213270574808121,-0.220042765140533,0.220634356141090,-0.025604553520679,-0.147067859768867,-0.071388006210327,0.277929633855820,0.121896333992481,0.008052167482674,0.223872527480125,-0.006905836518854,-0.002737623639405,-0.021832600235939));
res += mul(Get(s2,-dx,0), float4x4(0.017747314646840,-0.014839106239378,-0.118656307458878,0.164258822798729,0.029670462012291,0.100984588265419,-0.033316992223263,-0.033059567213058,-0.163045376539230,0.110890969634056,0.426758050918579,0.130197852849960,0.276860177516937,0.090546704828739,0.128583043813705,0.201036930084229));
res += mul(Get(s2,-dx,dy), float4x4(0.015750063583255,-0.162435293197632,-0.003984865266830,0.046383179724216,-0.083884656429291,-0.044758155941963,0.098010666668415,-0.019620914012194,-0.009946328587830,0.196905463933945,0.089626349508762,0.147024676203728,0.199519425630569,0.013593137264252,-0.203907996416092,0.027742335572839));
res += mul(Get(s2,0,-dy), float4x4(0.194781035184860,0.094608359038830,-0.053920131176710,-0.074015907943249,-0.231015518307686,0.046665623784065,0.226981014013290,-0.122310370206833,0.119119361042976,0.049579545855522,-0.185188710689545,-0.105010598897934,0.005289419088513,-0.057380225509405,-0.100435897707939,-0.016706455498934));
res += mul(Get(s2,0,0), float4x4(-0.090276859700680,0.044699259102345,-0.170490652322769,0.093497574329376,-0.038252454251051,0.042107872664928,0.053792398422956,-0.033894162625074,-0.045384220778942,-0.060420431196690,0.158138796687126,-0.149826720356941,0.083706691861153,-0.066960036754608,-0.041098318994045,0.046293321996927));
res += mul(Get(s2,0,dy), float4x4(-0.030107114464045,0.168891355395317,-0.071591176092625,0.049719039350748,-0.127834767103195,-0.062768876552582,0.033196441829205,0.062173053622246,-0.088302783668041,-0.032151270657778,0.043328203260899,-0.099267080426216,-0.046807982027531,-0.127649590373039,-0.197732225060463,0.098374113440514));
res += mul(Get(s2,dx,-dy), float4x4(0.263942778110504,-0.058544434607029,0.003187345806509,-0.107809722423553,-0.146986141800880,-0.049903430044651,0.067507669329643,-0.040407530963421,0.075490862131119,-0.132055804133415,0.021524829789996,-0.147078678011894,0.078765384852886,-0.174957260489464,-0.179860666394234,-0.048249032348394));
res += mul(Get(s2,dx,0), float4x4(-0.084165543317795,-0.112269148230553,-0.198838323354721,0.085574790835381,-0.005687028635293,0.003573003225029,0.114046178758144,-0.033010464161634,-0.165394142270088,-0.201963499188423,0.140066862106323,0.016968343406916,0.001671050093137,-0.187204465270042,-0.072851113975048,0.008488027378917));
res += mul(Get(s2,dx,dy), float4x4(-0.034976683557034,0.162010356783867,-0.094392567873001,0.459504872560501,-0.113987743854523,0.032871957868338,-0.045934055000544,0.005724023096263,0.055971588939428,-0.151451542973518,0.089617297053337,0.136227667331696,0.046274498105049,-0.162836208939552,-0.210625410079956,0.125396117568016));
res += mul(Get(s3,-dx,-dy), float4x4(0.063149355351925,0.058114454150200,-0.112360469996929,-0.039685763418674,-0.143865630030632,-0.099865891039371,-0.151211336255074,-0.022943971678615,0.069973751902580,0.177525758743286,0.111307881772518,-0.013252732343972,-0.004382884129882,-0.082053497433662,-0.159298628568649,0.082641899585724));
res += mul(Get(s3,-dx,0), float4x4(0.087580405175686,-0.176701933145523,0.003638267051429,0.054238282144070,-0.172453954815865,0.018625382333994,0.233675420284271,-0.058188565075397,-0.135394915938377,0.102460026741028,0.068989656865597,0.136819109320641,0.189379036426544,0.052290938794613,0.271652072668076,0.039334464818239));
res += mul(Get(s3,-dx,dy), float4x4(-0.089126661419868,-0.292438089847565,0.252451360225677,0.101234115660191,-0.069217376410961,-0.129599824547768,0.471000611782074,-0.155079767107964,-0.108280368149281,0.076685249805450,0.084040805697441,-0.067226856946945,0.141496062278748,0.131705954670906,0.308698296546936,0.266392141580582));
res += mul(Get(s3,0,-dy), float4x4(-0.139030739665031,0.002494494430721,-0.126405164599419,-0.008192191831768,-0.134892478585243,-0.120311670005322,-0.067742258310318,-0.113206610083580,-0.097556665539742,0.082867652177811,-0.033416286110878,-0.166279181838036,-0.048510607331991,0.074578851461411,0.019563604146242,0.030947756022215));
res += mul(Get(s3,0,0), float4x4(0.135908707976341,-0.124767936766148,-0.113631777465343,0.010044283233583,-0.124836623668671,0.058076862245798,-0.032490596175194,-0.100142478942871,-0.077434942126274,-0.143808171153069,0.027162294834852,-0.042743232101202,0.192523971199989,0.021588191390038,0.110766530036926,-0.158758550882339));
res += mul(Get(s3,0,dy), float4x4(-0.021623613312840,-0.248777315020561,0.128131642937660,0.065511912107468,0.003927784971893,-0.006004114169627,0.008070834912360,-0.118012502789497,-0.151109576225281,-0.143147930502892,0.011803723871708,-0.106616735458374,0.242781087756157,-0.084222145378590,0.076322279870510,-0.020728725939989));
res += mul(Get(s3,dx,-dy), float4x4(0.000647516164463,-0.185410708189011,-0.073555037379265,-0.011013095267117,-0.108242817223072,-0.077040947973728,-0.229580804705620,0.087385043501854,0.325900077819824,-0.022047301754355,-0.223146378993988,-0.062536835670471,-0.156340464949608,-0.155571594834328,0.194028183817863,-0.069410532712936));
res += mul(Get(s3,dx,0), float4x4(0.267448276281357,-0.179681971669197,-0.179350659251213,-0.008284432813525,-0.218702912330627,-0.028754696249962,-0.192450180649757,-0.117334946990013,0.004631202202290,-0.052024345844984,-0.189773395657539,-0.044034168124199,-0.134188860654831,-0.020507395267487,-0.200519740581512,-0.044627625495195));
res += mul(Get(s3,dx,dy), float4x4(-0.005316482391208,-0.244272068142891,-0.039444562047720,-0.073873333632946,-0.121003888547421,-0.182966291904449,-0.212585672736168,-0.098526805639267,-0.142691329121590,-0.031643170863390,-0.109942615032196,-0.096005417406559,-0.107313051819801,-0.066854104399681,-0.167713046073914,-0.059510394930840));
return max(float4(0,0,0,0), res);
}
