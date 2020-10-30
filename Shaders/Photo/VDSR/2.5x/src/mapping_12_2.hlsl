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
res += mul(Get(s0,-dx,-dy), float4x4(0.138567313551903,0.020814834162593,-0.101653724908829,-0.047957967966795,-0.006977165583521,-0.058941926807165,-0.151494577527046,-0.000548024661839,-0.074164636433125,0.011058152653277,-0.050663452595472,-0.019983977079391,-0.057291306555271,0.160945028066635,0.083439722657204,0.038736831396818));
res += mul(Get(s0,-dx,0), float4x4(0.169698461890221,-0.066869661211967,-0.134382635354996,-0.025300044566393,0.003960529342294,0.048564162105322,-0.032408349215984,-0.053320180624723,-0.065588109195232,-0.038678146898746,-0.044741336256266,0.136911198496819,0.000559813110158,-0.046647164970636,-0.062663301825523,0.025198131799698));
res += mul(Get(s0,-dx,dy), float4x4(-0.115115106105804,0.114725321531296,-0.206072285771370,-0.017440849915147,0.071884088218212,0.015104390680790,0.036060117185116,-0.011729247868061,-0.078395284712315,0.009387499652803,0.001826010062359,-0.034736655652523,-0.093321852385998,-0.051017064601183,-0.058085683733225,-0.031565498560667));
res += mul(Get(s0,0,-dy), float4x4(-0.015976669266820,-0.030854485929012,0.072613403201103,-0.002389660105109,-0.009912278503180,-0.057937692850828,0.021046327427030,0.006578894797713,0.060053635388613,0.045460253953934,0.050472769886255,-0.001030495623127,0.111130401492119,0.020651284605265,0.082657754421234,-0.050575070083141));
res += mul(Get(s0,0,0), float4x4(0.120095923542976,-0.076609306037426,0.099965952336788,0.009505061432719,-0.069378517568111,0.081986665725708,0.022923346608877,0.042710743844509,-0.056509260088205,-0.039724674075842,0.056822814047337,-0.011359112337232,0.181931689381599,-0.108785256743431,0.082701265811920,-0.058887876570225));
res += mul(Get(s0,0,dy), float4x4(-0.001465206616558,0.132542267441750,-0.116837650537491,0.013136247172952,-0.035590026527643,-0.004615063779056,0.008901409804821,-0.001655071158893,-0.087758623063564,-0.041946947574615,0.012829512357712,-0.010436574928463,0.058422561734915,-0.008782989345491,-0.038222931325436,-0.097787737846375));
res += mul(Get(s0,dx,-dy), float4x4(-0.020270880311728,0.038587830960751,-0.017376502975821,0.000681869394612,-0.076442822813988,-0.071625307202339,0.024435024708509,-0.065460577607155,0.065708361566067,0.029899535700679,-0.036383908241987,-0.063627734780312,-0.079606302082539,0.057385340332985,0.047000177204609,-0.096215583384037));
res += mul(Get(s0,dx,0), float4x4(0.036415454000235,0.072782859206200,0.049273576587439,-0.011444578878582,0.100418724119663,-0.028121363371611,-0.049257684499025,-0.034622944891453,0.075527966022491,0.033873714506626,0.008226955309510,-0.086258299648762,0.057310599833727,0.079991713166237,-0.002268448006362,-0.098407328128815));
res += mul(Get(s0,dx,dy), float4x4(-0.015093738213181,-0.036419525742531,-0.052497465163469,0.030395356938243,0.163203492760658,0.001044561737217,0.003231403185055,0.152875825762749,0.078645735979080,0.049552515149117,0.005573854781687,-0.120688349008560,-0.046646419912577,0.140935778617859,-0.046113166958094,-0.098974399268627));
res += mul(Get(s1,-dx,-dy), float4x4(-0.065050244331360,-0.041422467678785,-0.133878916501999,-0.014742558822036,-0.032599404454231,-0.001503254636191,-0.077007696032524,0.078998424112797,-0.101088047027588,-0.010043749585748,-0.105115555226803,0.026142265647650,0.056759882718325,-0.007487394846976,0.062948577105999,-0.014043811708689));
res += mul(Get(s1,-dx,0), float4x4(-0.031661901623011,-0.119554333388805,-0.122704893350601,0.119206182658672,-0.181095823645592,0.072068385779858,-0.027176368981600,0.039299599826336,0.001665487885475,-0.012450844049454,-0.032653927803040,0.010154724121094,0.009348954074085,-0.050914209336042,0.017652489244938,0.004422112368047));
res += mul(Get(s1,-dx,dy), float4x4(0.067783892154694,0.090837292373180,-0.016990849748254,0.070514298975468,-0.158934116363525,-0.060352351516485,-0.039225220680237,0.139552846550941,0.042204517871141,0.034536566585302,-0.133582159876823,0.032954450696707,-0.089946493506432,-0.109168678522110,-0.131837159395218,0.001562988734804));
res += mul(Get(s1,0,-dy), float4x4(-0.055074185132980,-0.006304315757006,0.098731756210327,-0.082579627633095,0.172242313623428,0.028960656374693,-0.110484682023525,0.067122347652912,-0.083887897431850,-0.026903457939625,0.050394043326378,0.001890585292131,0.107781246304512,-0.146322041749954,0.126044541597366,-0.088034428656101));
res += mul(Get(s1,0,0), float4x4(0.116335503757000,0.051539096981287,0.048340920358896,-0.078642249107361,0.088107593357563,0.028709715232253,0.079871594905853,-0.089155286550522,-0.116980418562889,0.043873876333237,-0.049143828451633,-0.063578128814697,0.014609882608056,-0.083396412432194,0.061080407351255,0.011384766548872));
res += mul(Get(s1,0,dy), float4x4(0.121044665575027,0.135213389992714,0.020392959937453,0.049077689647675,-0.094681195914745,-0.004186945036054,0.083515167236328,-0.034292478114367,-0.098980516195297,-0.107448086142540,-0.178653657436371,-0.051957111805677,0.003766708541662,-0.008084722794592,-0.141865342855453,-0.001601028838195));
res += mul(Get(s1,dx,-dy), float4x4(0.046938698738813,-0.021490013226867,-0.070300683379173,-0.049704506993294,-0.290997624397278,0.013847452588379,-0.039610356092453,0.094581283628941,-0.023779956623912,-0.062120050191879,0.014474298804998,0.001582952681929,-0.037738982588053,-0.097479663789272,0.107170805335045,0.055929690599442));
res += mul(Get(s1,dx,0), float4x4(-0.051680706441402,0.063795708119869,-0.069162696599960,-0.119151212275028,0.094582110643387,0.095775641500950,-0.005496486090124,-0.007291949354112,-0.084361709654331,-0.063869155943394,-0.054156735539436,0.140741094946861,-0.006214091554284,0.023342771455646,-0.038774736225605,0.038699172437191));
res += mul(Get(s1,dx,dy), float4x4(0.050969686359167,-0.032246585935354,-0.005116082262248,-0.009354097768664,0.111393772065639,-0.006367309950292,-0.008069344796240,0.034626320004463,-0.082395322620869,-0.009190543554723,0.039475247263908,0.106377273797989,-0.033418327569962,-0.043534751981497,-0.078018672764301,0.003514159470797));
res += mul(Get(s2,-dx,-dy), float4x4(-0.055882018059492,0.001908339210786,-0.183280915021896,-0.020830307155848,-0.006883929483593,0.080117277801037,0.071540877223015,-0.115888193249702,-0.023194925859571,0.011224524118006,0.058088336139917,0.042618222534657,0.055747013539076,-0.086126804351807,-0.117231912910938,0.080143392086029));
res += mul(Get(s2,-dx,0), float4x4(0.206819236278534,0.080943524837494,0.191949278116226,0.010821327567101,-0.057434391230345,0.009396623820066,-0.001507590990514,-0.130627945065498,-0.092036545276642,-0.057414531707764,-0.114147752523422,-0.034373003989458,-0.032850980758667,-0.067822925746441,-0.036673337221146,0.014273933134973));
res += mul(Get(s2,-dx,dy), float4x4(0.053099296987057,-0.021696195006371,-0.292856007814407,-0.127375379204750,-0.143417373299599,0.057123262435198,-0.143458083271980,0.013219541870058,0.012326136231422,-0.093551829457283,0.048592776060104,0.173859864473343,0.117840602993965,0.005176934879273,-0.054154749959707,0.046917933970690));
res += mul(Get(s2,0,-dy), float4x4(-0.060778435319662,-0.044562600553036,0.023853508755565,-0.074086852371693,0.028654320165515,-0.029594955965877,0.120759673416615,0.074987031519413,-0.027206839993596,-0.095450952649117,-0.098071128129959,0.063903838396072,0.033694967627525,-0.103576481342316,0.002771490020677,-0.043374057859182));
res += mul(Get(s2,0,0), float4x4(0.020013919100165,-0.052216805517673,0.291295289993286,0.007766847498715,0.017822990193963,-0.130463033914566,0.074527472257614,0.063872471451759,0.070909224450588,0.083396039903164,-0.037926621735096,-0.092721261084080,0.108948834240437,-0.079432986676693,0.038428880274296,0.162608534097672));
res += mul(Get(s2,0,dy), float4x4(0.072682261466980,0.009310963563621,-0.096815742552280,0.062256954610348,-0.067338332533836,0.067735552787781,-0.069458283483982,0.068000391125679,-0.092433191835880,0.024278651922941,-0.113952860236168,0.039756242185831,0.003390982979909,-0.002024634741247,-0.055310659110546,-0.019969657063484));
res += mul(Get(s2,dx,-dy), float4x4(-0.038337979465723,-0.022125260904431,0.051988109946251,0.054633185267448,-0.127773463726044,0.044543161988258,-0.115686155855656,-0.067310318350792,-0.048522572964430,0.010008945129812,0.097198419272900,0.124602518975735,0.051993142813444,0.059715367853642,0.077668555080891,-0.078977257013321));
res += mul(Get(s2,dx,0), float4x4(-0.021678159013391,0.080578848719597,0.106372453272343,0.027848897501826,-0.002735657384619,-0.048319656401873,0.002153870649636,0.046714697033167,-0.027058482170105,0.162581741809845,-0.025961607694626,0.122036308050156,0.136266246438026,-0.015052095986903,0.167978197336197,-0.097082339227200));
res += mul(Get(s2,dx,dy), float4x4(0.064703948795795,0.032719139009714,-0.048816621303558,0.020986711606383,-0.118489064276218,0.209170892834663,-0.080340616405010,-0.117735132575035,-0.021567178890109,0.006547723431140,0.203356429934502,0.128888964653015,0.091090306639671,0.110419049859047,-0.039042055606842,-0.064342483878136));
res += mul(Get(s3,-dx,-dy), float4x4(-0.044801730662584,0.068589948117733,0.046143651008606,-0.023318782448769,0.081154257059097,-0.029975388199091,0.096442647278309,0.050352815538645,0.251468658447266,-0.153016299009323,0.054134652018547,0.092554204165936,-0.104065075516701,-0.022995404899120,-0.228092059493065,-0.079090267419815));
res += mul(Get(s3,-dx,0), float4x4(-0.076570175588131,0.196669012308121,0.006446053739637,-0.102583274245262,-0.016582654789090,-0.037359397858381,-0.093729391694069,0.086223244667053,0.134530797600746,0.064071126282215,-0.082783937454224,0.057903446257114,-0.120138503611088,0.000902747327928,-0.144795551896095,-0.038475282490253));
res += mul(Get(s3,-dx,dy), float4x4(-0.103750251233578,-0.054617427289486,-0.026438182219863,-0.023376330733299,0.032806362956762,0.077135384082794,-0.099197857081890,0.037218190729618,-0.175868973135948,-0.105575405061245,-0.026932906359434,0.163316011428833,-0.032768078148365,-0.142922416329384,-0.083479888737202,0.035660821944475));
res += mul(Get(s3,0,-dy), float4x4(-0.067463614046574,-0.105332307517529,0.116135768592358,0.010307638905942,0.028311638161540,0.056405991315842,0.151384279131889,-0.006224533542991,0.055211763828993,-0.179771676659584,-0.030110504478216,0.025191929191351,-0.026577902957797,-0.029845127835870,0.103698812425137,-0.018654288724065));
res += mul(Get(s3,0,0), float4x4(-0.066744476556778,0.036031223833561,0.035628430545330,0.018025521188974,-0.024777242913842,0.122962221503258,0.057560984045267,-0.026912795379758,0.019626740366220,0.089630156755447,-0.010923602618277,-0.113618329167366,-0.017738996073604,-0.047927670180798,0.335522532463074,-0.019097326323390));
res += mul(Get(s3,0,dy), float4x4(-0.074448905885220,-0.055177200585604,0.209200426936150,-0.060648005455732,0.043866116553545,-0.012849010527134,-0.058629091829062,0.125891193747520,0.051137577742338,-0.098788782954216,0.052670512348413,-0.018610261380672,-0.100092276930809,-0.034372616559267,0.130664497613907,0.198838248848915));
res += mul(Get(s3,dx,-dy), float4x4(-0.110172569751740,-0.058827113360167,0.022682569921017,0.040585819631815,-0.052066575735807,0.288953423500061,0.092342682182789,-0.011150454171002,0.005918078590184,-0.121658138930798,-0.060207091271877,0.018436349928379,-0.008668216876686,-0.148891612887383,-0.088873542845249,-0.014509204775095));
res += mul(Get(s3,dx,0), float4x4(-0.006311272736639,-0.076577499508858,-0.067639924585819,0.094710253179073,-0.006857493426651,0.055984932929277,0.180555760860443,-0.008993939496577,-0.075843967497349,0.020835535600781,-0.036198820918798,0.013390933163464,0.066327936947346,-0.061985041946173,-0.053700581192970,-0.049829088151455));
res += mul(Get(s3,dx,dy), float4x4(-0.039089646190405,0.119422048330307,0.088200576603413,0.013267802074552,-0.025440929457545,0.086448639631271,0.016945688053966,-0.001846531056799,0.141330018639565,-0.054304432123899,-0.055150154978037,-0.053344093263149,-0.014433770440519,0.149995952844620,-0.039020039141178,0.002532840706408));
return max(float4(0,0,0,0), res);
}
