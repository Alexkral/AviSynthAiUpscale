sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.003918476402760,0.103826679289341,0.128230467438698,-0.000924595282413);
res += mul(Get(s0,-dx,-dy), float4x4(0.058151878416538,0.042279552668333,-0.018053699284792,-0.073896177113056,0.046593163162470,-0.194144859910011,0.002090463414788,0.105834715068340,-0.059932164847851,0.001179525163025,-0.020321251824498,0.152548953890800,-0.240933835506439,0.027237636968493,0.030426410958171,-0.205116257071495));
res += mul(Get(s0,-dx,0), float4x4(0.063097119331360,0.204659804701805,-0.267014294862747,0.169508099555969,0.006469513755292,-0.128191217780113,0.205758288502693,-0.252005726099014,-0.032070007175207,0.056717753410339,-0.329051673412323,-0.127635329961777,0.052335824817419,-0.034304942935705,-0.197113916277885,-0.202818706631660));
res += mul(Get(s0,-dx,dy), float4x4(0.126980692148209,-0.002889206167310,-0.120520934462547,-0.133177235722542,-0.005421789363027,-0.015942241996527,-0.010845581069589,0.038405444473028,-0.025557262822986,0.038489054888487,-0.084987483918667,0.013432677835226,-0.036579851061106,0.032036986202002,-0.126693204045296,0.022883625701070));
res += mul(Get(s0,0,-dy), float4x4(-0.267588824033737,-0.309689670801163,0.116534814238548,-0.197824209928513,0.239587843418121,-0.008094298653305,0.062673680484295,0.074732653796673,-0.672775030136108,0.024028005078435,-0.217718303203583,0.436041951179504,-1.250207066535950,-0.041058335453272,-0.033391550183296,-0.406772255897522));
res += mul(Get(s0,0,0), float4x4(-0.179512903094292,0.068148896098137,0.467957288026810,0.344234824180603,-0.362939476966858,-0.014109428040683,0.352024704217911,-0.162768572568893,0.070647642016411,-0.609525680541992,-0.173782229423523,-0.336775273084641,-0.073729418218136,-0.304296106100082,-0.410557985305786,-0.531384289264679));
res += mul(Get(s0,0,dy), float4x4(0.194757938385010,-0.061108801513910,0.083574093878269,-0.181352019309998,0.089165128767490,0.024257866665721,0.094073094427586,-0.072461798787117,-0.061305448412895,-0.092076912522316,-0.169675886631012,0.076645344495773,0.068176932632923,-0.018925979733467,-0.521398007869720,-0.053478691726923));
res += mul(Get(s0,dx,-dy), float4x4(0.046612229198217,0.181308567523956,-0.100537836551666,-0.158929616212845,0.100072786211967,0.241123855113983,0.070377342402935,0.108717150986195,-0.040476761758327,-0.153139829635620,0.053840365260839,-0.011839184910059,-0.474748879671097,0.031016563996673,-0.031141934916377,-0.015973363071680));
res += mul(Get(s0,dx,0), float4x4(-0.340561747550964,0.181932687759399,-0.239306315779686,0.018730571493506,-0.237989202141762,0.278240084648132,-0.387874752283096,0.061834882944822,-0.079471491277218,-0.206851080060005,-0.100241847336292,-0.062095671892166,-0.025953151285648,-0.572777092456818,0.101172745227814,-0.138171523809433));
res += mul(Get(s0,dx,dy), float4x4(0.065192520618439,-0.155159935355186,-0.041424199938774,-0.009390475228429,0.136296465992928,-0.021283674985170,-0.192197874188423,0.012214100919664,0.013714605011046,-0.049572493880987,-0.070914849638939,-0.026686808094382,0.038704421371222,-0.106144867837429,0.052364494651556,-0.077873259782791));
res += mul(Get(s1,-dx,-dy), float4x4(0.046898115426302,-0.175090163946152,0.064390324056149,0.146770671010017,-0.191308647394180,-0.030154667794704,0.132049217820168,-0.111995309591293,0.053452879190445,0.031429603695869,-0.116596378386021,0.114036038517952,-0.017467418685555,-0.012231745757163,0.004209974315017,0.016941413283348));
res += mul(Get(s1,-dx,0), float4x4(0.114173345267773,0.013209651224315,0.109718590974808,-0.209864273667336,-0.042242784053087,-0.157945632934570,0.540358185768127,-0.154973000288010,0.026450673118234,0.026499874889851,-0.129491031169891,0.252995640039444,0.045163996517658,0.239232197403908,-0.446003437042236,-0.082137688994408));
res += mul(Get(s1,-dx,dy), float4x4(-0.031464919447899,-0.027892021462321,-0.105982348322868,0.092194080352783,-0.029184076935053,-0.004543029237539,0.368520826101303,0.003396847518161,0.037715166807175,0.041162226349115,-0.115271404385567,0.050346251577139,0.000238848617300,-0.025658514350653,-0.102635875344276,0.032144036144018));
res += mul(Get(s1,0,-dy), float4x4(0.415673464536667,0.386196374893188,-0.215129405260086,0.193313777446747,-0.293922066688538,0.020333407446742,0.176774144172668,-0.402646958827972,0.004414633847773,0.063838019967079,-0.052474241703749,0.792967855930328,-0.320592194795609,-0.263799369335175,-0.015707837417722,-0.181303456425667));
res += mul(Get(s1,0,0), float4x4(-0.038773342967033,0.061262048780918,-0.351305335760117,0.123923689126968,-0.006548510398716,0.518215298652649,0.088908262550831,-0.322143286466599,0.188576921820641,-0.355959504842758,0.827029526233673,0.152894318103790,0.354598373174667,-0.677243590354919,-0.409567385911942,-0.445294976234436));
res += mul(Get(s1,0,dy), float4x4(-0.207035452127457,0.132545843720436,0.027976160869002,0.024333104491234,0.022338548675179,0.038516927510500,0.107239782810211,0.112381175160408,0.111510694026947,-0.060040030628443,0.296738773584366,-0.062256239354610,-0.277866333723068,0.011721178889275,-0.075613491237164,0.220491692423820));
res += mul(Get(s1,dx,-dy), float4x4(0.085583776235580,-0.256858348846436,-0.058675523847342,-0.027052521705627,-0.275883972644806,0.338607192039490,0.001374152139761,0.100726202130318,0.407756924629211,0.354018986225128,-0.008774324320257,0.120456114411354,-0.390208303928375,-0.061396591365337,-0.015424223616719,0.092184282839298));
res += mul(Get(s1,dx,0), float4x4(0.071207121014595,0.096685819327831,0.172661170363426,0.073430761694908,-0.045719843357801,0.171733453869820,-0.129918366670609,-0.032252397388220,0.038771331310272,0.460289388895035,-0.365577489137650,0.105835922062397,0.056088153272867,-0.115962542593479,0.186616763472557,-0.132956162095070));
res += mul(Get(s1,dx,dy), float4x4(-0.035112977027893,0.048423554748297,0.051835291087627,0.080583781003952,0.061027031391859,0.013763571158051,-0.000034097502066,-0.044735774397850,0.003302516182885,0.131804630160332,-0.015316074714065,0.059216745197773,-0.086977772414684,0.080024458467960,0.033234175294638,-0.023657677695155));
res += mul(Get(s2,-dx,-dy), float4x4(0.087235391139984,0.141587525606155,0.065405480563641,0.053369492292404,-0.059794746339321,-0.152678444981575,0.028962660580873,0.024634046480060,-0.174876108765602,-0.072917342185974,-0.085982270538807,-0.009571606293321,0.192325547337532,0.105466872453690,-0.094334498047829,-0.234128341078758));
res += mul(Get(s2,-dx,0), float4x4(0.072645433247089,0.371328860521317,-0.373352408409119,-0.050300385802984,0.040457390248775,-0.232530415058136,0.367852598428726,-0.048507064580917,-0.000268508447334,-0.192433923482895,-0.010251185856760,-0.344406247138977,0.149117901921272,0.053629186004400,-0.241139844059944,0.319825649261475));
res += mul(Get(s2,-dx,dy), float4x4(-0.011564652435482,0.030603049322963,0.098742283880711,-0.050995644181967,-0.019735900685191,-0.021564776077867,-0.005732630379498,0.003903682343662,-0.085055172443390,-0.018053106963634,0.005943478085101,0.123641483485699,0.029002467170358,0.063752762973309,-0.150114029645920,0.094112709164619));
res += mul(Get(s2,0,-dy), float4x4(0.526864528656006,-0.268174052238464,0.073775686323643,-0.100352764129639,0.056369207799435,0.357542097568512,0.030734851956367,-0.244541957974434,0.107762858271599,0.073305234313011,-0.083733655512333,0.169005900621414,-0.388769686222076,-0.335348367691040,-0.005146900191903,-0.462918788194656));
res += mul(Get(s2,0,0), float4x4(0.361201226711273,-0.001770720467903,0.090822681784630,-0.145476415753365,-0.102277860045433,0.220557078719139,-0.209374383091927,0.390527755022049,0.017500961199403,-0.024187501519918,-0.267329782247543,-0.308043539524078,0.129307612776756,0.090786904096603,-0.245961830019951,0.621169924736023));
res += mul(Get(s2,0,dy), float4x4(-0.200074046850204,0.072717219591141,0.052516795694828,0.217230275273323,0.033886551856995,0.006529870908707,0.131917208433151,-0.129527732729912,-0.186602145433426,0.000595582823735,-0.243354171514511,0.064181663095951,0.198172137141228,-0.236623898148537,0.093110501766205,-0.428365260362625));
res += mul(Get(s2,dx,-dy), float4x4(0.195518895983696,-0.346360474824905,0.056290961802006,-0.027355490252376,-0.157517910003662,0.124176986515522,0.052764069288969,-0.008114429190755,-0.094684153795242,-0.064125746488571,0.082625851035118,0.020187387242913,-0.285690277814865,-0.029513597488403,0.036216467618942,-0.058593053370714));
res += mul(Get(s2,dx,0), float4x4(0.058647654950619,-0.153026908636093,0.294931590557098,-0.064328320324421,0.066586315631866,0.155268386006355,0.132612988352776,0.094850726425648,0.033211492002010,-0.265427350997925,0.163785398006439,-0.196928858757019,0.244731411337852,0.046394258737564,0.194230437278748,0.197439491748810));
res += mul(Get(s2,dx,dy), float4x4(-0.152058959007263,-0.000259342690697,0.107128962874413,0.021706258878112,0.042748551815748,0.022927265614271,0.002904792781919,0.040269784629345,0.067327789962292,-0.031642727553844,-0.036023166030645,-0.078601986169815,0.131670355796814,-0.142693638801575,0.092514812946320,-0.048523798584938));
res = max(float4(0, 0, 0, 0), res) + float4(-0.070033900439739,-0.088223539292812,-0.046171627938747,-0.135323747992516) * min(float4(0, 0, 0, 0), res);
return res;
}
