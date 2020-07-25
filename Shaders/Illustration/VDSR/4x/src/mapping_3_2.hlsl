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
res += mul(Get(s0,-dx,-dy), float4x4(0.012882210314274,-0.226269051432610,0.140316754579544,0.045681424438953,0.052539043128490,0.003700362518430,0.168935209512711,0.057476826012135,-0.120161183178425,0.021891053766012,0.055837184190750,0.317783266305923,0.006031704600900,0.008245850913227,-0.196388334035873,0.041337568312883));
res += mul(Get(s0,-dx,0), float4x4(0.021800799295306,-0.079019054770470,-0.027764786034822,0.100017964839935,0.019620947539806,0.212943896651268,0.178637504577637,-0.017841601744294,0.158685088157654,0.084422461688519,0.040849551558495,0.080313898622990,-0.123357810080051,-0.054154675453901,-0.006025309208781,0.037448886781931));
res += mul(Get(s0,-dx,dy), float4x4(0.000826986273751,-0.104692868888378,0.054746445268393,0.101448588073254,0.056104537099600,0.087669171392918,0.097428366541862,0.236304432153702,-0.013853899203241,-0.104511402547359,-0.079694196581841,0.130923211574554,0.039738658815622,-0.056644652038813,-0.121051013469696,-0.135707125067711));
res += mul(Get(s0,0,-dy), float4x4(-0.072462715208530,0.046261981129646,-0.166912257671356,0.012871949002147,-0.064410127699375,-0.111497402191162,0.063188768923283,-0.084516011178493,0.058463174849749,-0.065996922552586,-0.079753711819649,-0.078092262148857,0.181673780083656,0.035438831895590,-0.063216604292393,-0.036895081400871));
res += mul(Get(s0,0,0), float4x4(0.130197510123253,0.037481494247913,-0.206419393420219,-0.179936036467552,-0.081434249877930,0.153739616274834,-0.064165085554123,0.139036893844604,-0.164250999689102,0.107109978795052,-0.002551554003730,-0.050650138407946,0.094211123883724,0.213497072458267,-0.034842625260353,-0.063081964850426));
res += mul(Get(s0,0,dy), float4x4(-0.182258844375610,-0.137356430292130,0.094694308936596,-0.148134365677834,-0.035136241465807,-0.001899863709696,-0.107010342180729,0.167664438486099,0.114685483276844,0.105983220040798,0.026229038834572,-0.138405978679657,0.069206252694130,0.183239743113518,-0.059986520558596,-0.185155451297760));
res += mul(Get(s0,dx,-dy), float4x4(0.111580803990364,-0.003181973705068,0.052415892481804,0.246631667017937,-0.202609226107597,0.073422320187092,0.065044917166233,0.091693073511124,0.077819451689720,0.020590327680111,0.074234306812286,0.053900334984064,0.149967044591904,-0.069057151675224,0.126862436532974,0.046666976064444));
res += mul(Get(s0,dx,0), float4x4(0.045550547540188,-0.012191853486001,-0.001449964824133,0.001527901389636,0.086318537592888,-0.133432343602180,-0.051798321306705,-0.013860774226487,-0.079229570925236,0.041129309684038,-0.166420936584473,-0.161780819296837,-0.105750329792500,0.107839241623878,0.078539021313190,0.044024288654327));
res += mul(Get(s0,dx,dy), float4x4(0.075126826763153,0.033564928919077,-0.023996500298381,0.022593209519982,0.003251309739426,0.147148072719574,0.017622521147132,0.163477182388306,0.061119098216295,0.265728980302811,-0.081672452390194,0.069883935153484,0.082563728094101,-0.053304273635149,-0.070927366614342,0.205858066678047));
res += mul(Get(s1,-dx,-dy), float4x4(0.063672430813313,-0.019046472385526,-0.050606880337000,-0.009076811373234,0.013321468606591,-0.107937052845955,-0.054430283606052,0.130130380392075,0.061386547982693,0.086876772344112,-0.169487833976746,0.077321656048298,-0.067042201757431,0.054048389196396,-0.169903218746185,-0.184469208121300));
res += mul(Get(s1,-dx,0), float4x4(-0.282040297985077,-0.222618147730827,-0.042513962835073,-0.076440259814262,0.023053260520101,-0.007371045183390,0.044187039136887,0.179813116788864,0.181835979223251,0.110451757907867,0.129202425479889,-0.164643928408623,0.068067900836468,-0.028387181460857,-0.060793548822403,-0.096471630036831));
res += mul(Get(s1,-dx,dy), float4x4(-0.224550843238831,-0.108374163508415,0.087751343846321,-0.052591677755117,0.075812295079231,-0.147936850786209,0.226394698023796,0.008539174683392,-0.094744756817818,-0.012779557146132,-0.011332727037370,-0.123277820646763,0.041056223213673,0.112450674176216,0.003445588285103,0.053177732974291));
res += mul(Get(s1,0,-dy), float4x4(0.076457679271698,0.304082006216049,0.002127439714968,0.037682745605707,0.008548123762012,-0.123414881527424,-0.030978493392467,0.032869622111320,0.124868214130402,-0.045152418315411,-0.044881481677294,-0.148288130760193,0.153550416231155,-0.207506284117699,0.156650498509407,-0.178785607218742));
res += mul(Get(s1,0,0), float4x4(0.209541469812393,-0.101125016808510,-0.038787785917521,-0.039016678929329,-0.042974371463060,-0.013613841496408,-0.144750341773033,-0.020166920498013,0.065120279788971,-0.093672707676888,0.117039225995541,0.128514066338539,-0.041752692312002,0.025317892432213,-0.052747912704945,-0.013701933436096));
res += mul(Get(s1,0,dy), float4x4(-0.014750712551177,-0.213239029049873,0.054043933749199,-0.010868221521378,0.027492314577103,-0.213979437947273,0.215705886483192,0.021043794229627,-0.093925945460796,-0.181203722953796,0.076881572604179,-0.102531641721725,0.005936610512435,-0.063539169728756,0.043215122073889,0.106633357703686));
res += mul(Get(s1,dx,-dy), float4x4(0.011703801341355,-0.028108943253756,0.109120056033134,-0.109617948532104,-0.134327411651611,-0.168114155530930,0.148190483450890,-0.179296687245369,-0.058888822793961,0.160449787974358,-0.022350035607815,-0.182369127869606,-0.174678295850754,0.039492405951023,-0.084197849035263,-0.114990815520287));
res += mul(Get(s1,dx,0), float4x4(-0.247540205717087,-0.025503801181912,-0.148172229528427,-0.162203565239906,0.117078781127930,-0.009788087569177,0.051842868328094,0.190175324678421,0.059370029717684,-0.052304394543171,0.039145637303591,0.043883156031370,-0.056511737406254,-0.051796287298203,0.029711330309510,0.042188379913568));
res += mul(Get(s1,dx,dy), float4x4(0.170385882258415,-0.089623317122459,0.008136390708387,-0.064283221960068,0.215105488896370,0.013017543591559,-0.044225692749023,0.024815175682306,-0.166171461343765,0.158188000321388,0.055483236908913,-0.186543688178062,0.042330347001553,0.045460842549801,0.010794610716403,-0.040847517549992));
res += mul(Get(s2,-dx,-dy), float4x4(0.058389868587255,0.019207537174225,0.054627209901810,-0.141453549265862,-0.116463005542755,-0.193736717104912,-0.093911334872246,0.100747510790825,0.137956246733665,-0.008326129987836,0.207404375076294,-0.130020663142204,0.051403447985649,0.051646061241627,0.124949365854263,-0.094123207032681));
res += mul(Get(s2,-dx,0), float4x4(0.209371224045753,-0.092541396617889,0.042315710335970,-0.064001739025116,-0.265224754810333,0.003502005944028,-0.134212091565132,-0.107034943997860,-0.069085903465748,0.260855793952942,-0.110408037900925,0.094250306487083,-0.116354495286942,-0.042948003858328,-0.108614794909954,-0.036492452025414));
res += mul(Get(s2,-dx,dy), float4x4(0.207802087068558,-0.105131290853024,-0.045226868242025,0.141228586435318,0.036146648228168,-0.092031516134739,0.119226142764091,0.134882792830467,0.157352432608604,0.003555591451004,0.035136219114065,-0.047272376716137,0.148257657885551,0.268928945064545,0.073358416557312,-0.156723663210869));
res += mul(Get(s2,0,-dy), float4x4(0.054856855422258,0.021702170372009,0.172819212079048,-0.119896009564400,0.117281265556812,-0.156610444188118,-0.143524646759033,-0.300661832094193,-0.055936150252819,0.064447782933712,-0.162374824285507,0.005349835846573,0.024228455498815,-0.102889016270638,0.032770484685898,-0.042585566639900));
res += mul(Get(s2,0,0), float4x4(0.067092686891556,0.183097109198570,0.117513410747051,-0.070236086845398,0.168085336685181,0.157266765832901,0.060243513435125,-0.097903385758400,0.025709662586451,-0.053768262267113,-0.107667677104473,-0.082070678472519,0.191548973321915,0.118476599454880,-0.029197864234447,-0.060336206108332));
res += mul(Get(s2,0,dy), float4x4(-0.002519034314901,0.004677750635892,0.118744298815727,0.074966825544834,-0.086541868746281,0.067210100591183,0.188318222761154,-0.036390699446201,-0.346154242753983,0.050489384680986,0.099230438470840,-0.163632258772850,0.152216985821724,-0.181351229548454,-0.183442682027817,-0.032357912510633));
res += mul(Get(s2,dx,-dy), float4x4(0.011084639467299,0.047516345977783,0.037544723600149,0.002110617468134,-0.015380582772195,-0.200158789753914,0.230247974395752,-0.122532829642296,0.129861131310463,0.131298139691353,0.062462579458952,-0.029602682217956,-0.034949216991663,0.067177541553974,0.089925333857536,0.050067637115717));
res += mul(Get(s2,dx,0), float4x4(-0.094306387007236,0.229100361466408,-0.111567392945290,0.087221235036850,-0.054983094334602,-0.057826079428196,0.101128883659840,0.098586253821850,0.086069248616695,-0.060022562742233,0.105835035443306,0.116892091929913,0.024844856932759,0.016012690961361,-0.015416559763253,-0.177329540252686));
res += mul(Get(s2,dx,dy), float4x4(-0.111207351088524,0.041242182254791,0.215753808617592,-0.042336080223322,-0.211268931627274,0.090423211455345,-0.140539303421974,0.093758657574654,-0.209051266312599,0.041596516966820,-0.091279447078705,-0.170535743236542,-0.105576358735561,-0.145783796906471,0.142192691564560,0.056120578199625));
res += mul(Get(s3,-dx,-dy), float4x4(0.240457132458687,-0.042377542704344,-0.270666897296906,0.045031439512968,0.056390605866909,-0.149660676717758,0.011481492780149,0.093137159943581,-0.026290081441402,-0.095904424786568,-0.090548731386662,-0.151235416531563,0.246766597032547,0.029357248917222,0.064199000597000,-0.116566292941570));
res += mul(Get(s3,-dx,0), float4x4(-0.154558405280113,-0.028510613366961,0.068203538656235,-0.076072007417679,-0.140754967927933,0.039121314883232,-0.008158147335052,-0.008249655365944,-0.063164487481117,0.088121354579926,0.088676817715168,0.108293026685715,0.061884082853794,0.085239619016647,-0.027596313506365,-0.171567961573601));
res += mul(Get(s3,-dx,dy), float4x4(0.092350281774998,0.004682704340667,-0.105747185647488,0.026804249733686,-0.152745619416237,0.101973794400692,-0.272126048803329,0.005787190515548,-0.009168568998575,-0.199417233467102,0.160967409610748,0.143843233585358,-0.064073100686073,-0.028924526646733,-0.181170672178268,-0.319542795419693));
res += mul(Get(s3,0,-dy), float4x4(-0.004826182499528,0.132576763629913,0.034782353788614,0.326642304658890,-0.207209542393684,0.042956065386534,-0.032286729663610,0.123366929590702,-0.107701465487480,-0.069599337875843,-0.036265987902880,-0.186589136719704,0.299244970083237,0.084508910775185,0.029445195570588,0.064825952053070));
res += mul(Get(s3,0,0), float4x4(0.054807089269161,-0.092131182551384,-0.041027728468180,0.206268906593323,-0.113622941076756,-0.155634656548500,0.141689553856850,0.189982011914253,-0.040989566594362,-0.140618383884430,-0.172764346003532,0.280776351690292,-0.184320256114006,0.083555914461613,0.062991753220558,-0.169081911444664));
res += mul(Get(s3,0,dy), float4x4(0.042166031897068,-0.090534470975399,0.042522586882114,-0.137064322829247,-0.326883345842361,-0.107251219451427,-0.071451872587204,-0.106329403817654,-0.108545258641243,0.096230864524841,0.116651870310307,0.022323785349727,0.109882600605488,-0.089197911322117,-0.071078114211559,-0.057397916913033));
res += mul(Get(s3,dx,-dy), float4x4(0.171163916587830,-0.134769350290298,-0.040849670767784,0.125208258628845,0.165422618389130,-0.161958023905754,-0.227774888277054,-0.182848334312439,-0.209508091211319,0.212775841355324,0.007927952334285,0.265062153339386,-0.044594980776310,0.165852636098862,-0.011781851761043,-0.034144081175327));
res += mul(Get(s3,dx,0), float4x4(-0.288751184940338,0.158046409487724,0.085599116981030,-0.012060651555657,0.100545525550842,-0.046695303171873,-0.071187652647495,-0.028676195070148,-0.164761021733284,-0.016187049448490,-0.102853149175644,0.021234039217234,0.030525477603078,-0.010027977637947,0.190468817949295,-0.145632088184357));
res += mul(Get(s3,dx,dy), float4x4(0.008256345987320,0.047360237687826,0.027747105807066,-0.028387565165758,-0.027597822248936,0.069004736840725,-0.237703159451485,0.009465994313359,0.044294010847807,-0.106314070522785,-0.085471905767918,-0.052004624158144,-0.082150667905807,0.261286050081253,-0.070565618574619,0.216495469212532));
return max(float4(0,0,0,0), res);
}
