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
res += mul(Get(s0,-dx,-dy), float4x4(0.050719249993563,0.082031413912773,-0.038675013929605,-0.065224871039391,-0.032084003090858,-0.073472939431667,-0.097741737961769,-0.163326933979988,-0.183644652366638,-0.105322487652302,0.046489819884300,0.032456818968058,-0.050948541611433,0.058470297604799,0.021383173763752,-0.014927706681192));
res += mul(Get(s0,-dx,0), float4x4(0.013978011906147,-0.024126257747412,-0.135191246867180,0.009817603975534,-0.133178442716599,0.136097863316536,0.182705387473106,-0.177568003535271,-0.093310594558716,0.060638163238764,-0.037171874195337,-0.027230720967054,-0.169880777597427,0.012543877586722,-0.011417039670050,0.125965476036072));
res += mul(Get(s0,-dx,dy), float4x4(-0.048150133341551,-0.007346830330789,0.028810562565923,-0.028926307335496,-0.018457308411598,-0.127404510974884,0.125229910016060,-0.206101372838020,0.088019654154778,-0.080336838960648,0.007625153288245,0.174253389239311,0.131605446338654,-0.055719010531902,-0.028794314712286,0.062878191471100));
res += mul(Get(s0,0,-dy), float4x4(-0.146997109055519,0.105127476155758,-0.038748346269131,-0.118820026516914,0.051114719361067,-0.148091241717339,0.071739293634892,0.145647585391998,-0.073448106646538,0.034006986767054,0.106537260115147,-0.153018817305565,-0.108787611126900,0.039530072361231,-0.172882735729218,-0.141688495874405));
res += mul(Get(s0,0,0), float4x4(-0.061317417770624,0.150763958692551,-0.004149343818426,0.099190875887871,-0.057185020297766,-0.010600868612528,0.035019103437662,-0.035686701536179,-0.020702689886093,0.022318555042148,-0.012161996215582,-0.049352053552866,0.084120124578476,-0.096241451799870,0.174993321299553,-0.027492543682456));
res += mul(Get(s0,0,dy), float4x4(-0.061796549707651,-0.063813686370850,-0.035754140466452,-0.172585934400558,-0.001083129085600,0.006440333090723,-0.046997021883726,0.003689093980938,-0.043957721441984,-0.063445173203945,-0.131133586168289,-0.078078888356686,0.140137046575546,-0.103702068328857,0.114755406975746,0.043133564293385));
res += mul(Get(s0,dx,-dy), float4x4(0.038924176245928,0.045979909598827,0.037562590092421,0.067561760544777,0.013002861291170,-0.080982811748981,-0.060512065887451,0.058537267148495,-0.056292116641998,0.028755368664861,-0.081603623926640,-0.099770061671734,-0.033088136464357,-0.027360090985894,0.116661377251148,0.003831106703728));
res += mul(Get(s0,dx,0), float4x4(0.121064089238644,-0.104411795735359,-0.043505661189556,-0.029025042429566,-0.027459152042866,-0.063219197094440,0.085226587951183,0.005249274894595,0.043714936822653,-0.099876590073109,-0.195769429206848,0.101389467716217,0.083817362785339,-0.072707608342171,0.098405346274376,0.050093792378902));
res += mul(Get(s0,dx,dy), float4x4(0.081725068390369,-0.064203672111034,0.100916959345341,0.016875946894288,0.005411853082478,0.042655486613512,-0.009199157357216,-0.041515819728374,-0.175108343362808,-0.028865614905953,0.012406252324581,-0.040352620184422,0.112169176340103,0.190753161907196,-0.122607193887234,-0.042185205966234));
res += mul(Get(s1,-dx,-dy), float4x4(0.199389591813087,0.003629202255979,0.064693696796894,0.011934138834476,-0.031488720327616,0.057147588580847,0.033159069716930,-0.103418827056885,-0.082932151854038,0.061072558164597,0.013725620694458,-0.101151511073112,-0.178299456834793,0.022479992359877,0.088686503469944,0.009890824556351));
res += mul(Get(s1,-dx,0), float4x4(0.078137867152691,-0.050474021583796,0.027557423338294,0.019519802182913,-0.065213561058044,0.125429347157478,0.037176009267569,-0.100512780249119,0.031733833253384,0.035641971975565,-0.032404433935881,-0.033719375729561,0.077310763299465,0.097312971949577,0.067125365138054,-0.014417668804526));
res += mul(Get(s1,-dx,dy), float4x4(-0.035190340131521,0.072012439370155,-0.117275290191174,-0.082812435925007,-0.221107915043831,0.050855584442616,0.086323387920856,-0.048617582768202,-0.081111624836922,0.093722268939018,-0.125012904405594,0.002421209588647,0.084302403032780,0.121037058532238,-0.032950196415186,0.041192572563887));
res += mul(Get(s1,0,-dy), float4x4(0.072950556874275,0.091008424758911,0.023551834747195,-0.053444027900696,0.059530790895224,0.056733772158623,-0.168021738529205,-0.076153077185154,0.049094054847956,0.107691831886768,0.063848212361336,0.030739445239305,0.033831976354122,0.113940916955471,0.044175826013088,0.011274481192231));
res += mul(Get(s1,0,0), float4x4(-0.040543530136347,-0.089378893375397,0.014180561527610,-0.005232060793787,0.148554608225822,-0.001845338614658,-0.008084689266980,-0.038656007498503,0.063499502837658,0.025445083156228,0.167924717068672,0.071454368531704,0.025192882865667,0.057491708546877,0.029430203139782,-0.052449412643909));
res += mul(Get(s1,0,dy), float4x4(-0.059774108231068,-0.162186011672020,0.026553533971310,0.007689461112022,0.016407392919064,0.037153348326683,0.020026111975312,-0.043294250965118,0.053876254707575,-0.199017494916916,0.033781323581934,-0.049569047987461,0.154045686125755,-0.221398502588272,0.068430371582508,-0.022151460871100));
res += mul(Get(s1,dx,-dy), float4x4(0.021808333694935,-0.007713470142335,-0.014988260343671,0.027157383039594,0.039073329418898,-0.015595325268805,0.028135508298874,-0.038726866245270,0.087230749428272,-0.041961215436459,0.259430140256882,0.095385655760765,-0.045385770499706,-0.078891925513744,0.088469848036766,0.020367598161101));
res += mul(Get(s1,dx,0), float4x4(-0.038897387683392,0.004230617079884,-0.181527256965637,-0.059129159897566,-0.020152514800429,-0.043164823204279,-0.080394998192787,0.019766991958022,0.065564461052418,0.056402284651995,0.220279589295387,-0.025902135297656,-0.003484969958663,0.087529927492142,0.045824524015188,-0.054623499512672));
res += mul(Get(s1,dx,dy), float4x4(0.025137139484286,-0.007316975854337,0.049590155482292,-0.147555515170097,0.018610306084156,0.107824370265007,-0.028024099767208,0.001598887261935,0.108794987201691,0.020857589319348,0.138824909925461,0.014946654438972,0.116458512842655,-0.163309380412102,-0.092413544654846,-0.049837801605463));
res += mul(Get(s2,-dx,-dy), float4x4(0.064240150153637,-0.078942567110062,-0.171958237886429,-0.037527337670326,-0.044980145990849,0.040474653244019,0.014359703287482,-0.003915356937796,0.060072600841522,-0.178406924009323,0.123506575822830,0.003813782008365,-0.093218781054020,0.166810870170593,-0.004605341237038,0.025724574923515));
res += mul(Get(s2,-dx,0), float4x4(-0.029492869973183,-0.072744332253933,0.070367448031902,0.098589092493057,-0.065452530980110,-0.034636978060007,0.009653272107244,0.056602109223604,0.063039645552635,-0.076927170157433,0.100205227732658,0.012875598855317,-0.168746545910835,-0.045369815081358,-0.017327567562461,-0.042435485869646));
res += mul(Get(s2,-dx,dy), float4x4(0.013702500611544,-0.107794791460037,-0.091121159493923,-0.127021983265877,-0.052682224661112,-0.065161682665348,-0.017618320882320,0.002976872958243,-0.046801622956991,0.011630763299763,-0.116331465542316,-0.071169197559357,-0.024537472054362,-0.016715675592422,-0.136867150664330,0.075266934931278));
res += mul(Get(s2,0,-dy), float4x4(0.080903857946396,-0.033446311950684,-0.087471321225166,-0.018366888165474,0.023899087682366,0.017273768782616,0.039869885891676,0.000070581074397,-0.168320775032043,0.090761892497540,0.041724663227797,-0.133378162980080,-0.045583967119455,0.006124651059508,-0.035866156220436,-0.087801799178123));
res += mul(Get(s2,0,0), float4x4(-0.011391950771213,-0.137470841407776,-0.091205164790154,0.032838966697454,0.003667043987662,0.057350203394890,0.030796838924289,0.006262140348554,-0.061645835638046,-0.064166292548180,-0.181327551603317,-0.048901081085205,-0.015193588100374,-0.074922926723957,-0.005157815292478,0.093248516321182));
res += mul(Get(s2,0,dy), float4x4(0.038468968123198,0.105514906346798,-0.051584392786026,-0.033351033926010,0.090691998600960,0.122290939092636,0.068340122699738,0.161071687936783,0.058507379144430,-0.069268994033337,-0.019207743927836,0.036763925105333,-0.091132380068302,-0.113595023751259,0.030694060027599,0.053055018186569));
res += mul(Get(s2,dx,-dy), float4x4(-0.037194065749645,0.057135954499245,-0.069732241332531,0.029806070029736,0.012100032530725,0.075340539216995,-0.092271365225315,-0.025783948600292,0.067259103059769,-0.115933008491993,-0.024601645767689,-0.176565393805504,0.101218521595001,-0.060338389128447,-0.116084434092045,0.080467492341995));
res += mul(Get(s2,dx,0), float4x4(-0.072300530970097,-0.042507577687502,0.098030701279640,-0.026449976488948,0.026293605566025,0.004844983574003,0.090130656957626,-0.123655825853348,-0.001521971309558,-0.130030944943428,-0.033132385462523,-0.118234649300575,-0.094150885939598,-0.042734369635582,0.026709295809269,0.076729066669941));
res += mul(Get(s2,dx,dy), float4x4(-0.086496777832508,-0.155662536621094,0.017197715118527,0.077853515744209,0.055217735469341,-0.056631725281477,-0.014570118859410,0.073566906154156,0.172826215624809,0.011795796453953,0.011707779020071,0.023767067119479,-0.009018946439028,-0.003772239200771,0.011818856000900,0.036459866911173));
res += mul(Get(s3,-dx,-dy), float4x4(0.010045434348285,-0.033941376954317,-0.065302848815918,-0.090772032737732,-0.132501423358917,-0.072699964046478,-0.029139535501599,0.046833358705044,-0.152853593230247,-0.116197876632214,0.065640382468700,-0.020835561677814,-0.077214062213898,0.096800409257412,0.077473580837250,-0.077521204948425));
res += mul(Get(s3,-dx,0), float4x4(0.101588405668736,-0.056779429316521,0.138226434588432,-0.058413222432137,-0.169712930917740,-0.092752523720264,-0.031754888594151,-0.017875656485558,0.056079979985952,-0.025056270882487,0.087958618998528,-0.012676814571023,-0.043929472565651,0.034737724810839,0.107611224055290,-0.053314350545406));
res += mul(Get(s3,-dx,dy), float4x4(0.097502186894417,-0.026702281087637,0.040833178907633,-0.001096358755603,-0.122124895453453,-0.093609623610973,0.012790154665709,-0.101102702319622,0.013731861487031,0.067567624151707,0.112651638686657,0.050889529287815,-0.052387036383152,0.061350788921118,-0.042734794318676,0.016700040549040));
res += mul(Get(s3,0,-dy), float4x4(0.024635398760438,0.129877775907516,-0.047098733484745,0.005040619056672,-0.038929894566536,-0.061076879501343,0.082900561392307,-0.083597153425217,0.058267880231142,-0.017847595736384,0.121004834771156,-0.058055404573679,-0.115704745054245,-0.020116865634918,0.002862882800400,-0.017857644706964));
res += mul(Get(s3,0,0), float4x4(0.004866016097367,0.049497574567795,0.117891855537891,0.002726972335950,-0.158780112862587,0.013424213975668,-0.048084639012814,-0.062398001551628,0.098062798380852,-0.000951781636104,0.047543298453093,0.044771566987038,-0.093401931226254,-0.083736158907413,-0.028209729120135,-0.031323876231909));
res += mul(Get(s3,0,dy), float4x4(-0.021067829802632,-0.009713932871819,0.110904075205326,-0.136411830782890,-0.063355103135109,0.032981649041176,-0.177856802940369,0.080774582922459,-0.095311090350151,0.005431481171399,0.194145336747169,-0.045888371765614,0.069102622568607,0.152843520045280,0.032211638987064,-0.044115986675024));
res += mul(Get(s3,dx,-dy), float4x4(0.016187535598874,0.077724166214466,-0.100376062095165,0.015808036550879,-0.064180657267570,0.056384321302176,-0.072386845946312,-0.035742010921240,0.206959515810013,0.045142494142056,-0.095478154718876,0.053128816187382,0.212826415896416,0.086276039481163,-0.010369956493378,0.088111363351345));
res += mul(Get(s3,dx,0), float4x4(0.120290800929070,0.072040691971779,-0.187385231256485,-0.054277397692204,0.056162785738707,-0.001580353127792,0.119479306042194,-0.084821417927742,0.172171041369438,-0.081754274666309,0.037359263747931,-0.014863439835608,0.106775633990765,-0.146360680460930,-0.000310761970468,0.009670360945165));
res += mul(Get(s3,dx,dy), float4x4(-0.029532667249441,0.172427877783775,-0.144815266132355,0.014343610033393,0.218894824385643,0.016542235389352,0.048816379159689,0.035535942763090,-0.016548402607441,0.091828159987926,0.056365925818682,0.000844556954689,0.153141021728516,-0.005520431324840,0.065919712185860,-0.109741635620594));
return max(float4(0,0,0,0), res);
}
