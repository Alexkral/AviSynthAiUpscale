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
res += mul(Get(s0,-dx,-dy), float4x4(-0.076475210487843,0.073194615542889,0.084208786487579,-0.192088395357132,-0.072233073413372,0.054192662239075,0.061616476625204,-0.069991640746593,-0.103135146200657,0.024739200249314,0.049496561288834,0.027834530919790,-0.196902334690094,-0.042644109576941,0.082389622926712,-0.004030403681099));
res += mul(Get(s0,-dx,0), float4x4(-0.092204339802265,-0.141231492161751,0.096031382679939,-0.039968963712454,0.080540359020233,-0.186434015631676,-0.128550797700882,0.047843534499407,0.197208598256111,-0.002844804897904,-0.106533817946911,0.059874162077904,-0.122466497123241,-0.107380412518978,-0.054152328521013,0.143772915005684));
res += mul(Get(s0,-dx,dy), float4x4(-0.104051202535629,-0.009455788880587,-0.211311325430870,0.065714731812477,-0.020309343934059,-0.195935234427452,0.016862200573087,0.001311740255915,0.128641337156296,0.064145229756832,-0.108374141156673,0.016347412019968,0.028185693547130,-0.032334432005882,0.152864322066307,-0.043076250702143));
res += mul(Get(s0,0,-dy), float4x4(-0.045481313019991,-0.178893730044365,-0.115252919495106,0.052061948925257,-0.068697832524776,-0.001048065023497,-0.022876515984535,-0.099729776382446,0.024482166394591,0.043603513389826,0.074454635381699,0.034545667469501,0.033070262521505,0.054815869778395,-0.091254442930222,-0.000240869005211));
res += mul(Get(s0,0,0), float4x4(-0.168834000825882,0.080898895859718,-0.072772935032845,0.030010137706995,0.103363640606403,-0.084236823022366,0.083338543772697,-0.002588338917121,-0.109639398753643,0.078347772359848,0.111444965004921,0.043168727308512,0.038172475993633,0.069766245782375,0.016797110438347,0.077753953635693));
res += mul(Get(s0,0,dy), float4x4(0.083129718899727,0.072199642658234,0.037505753338337,-0.062755294144154,-0.035889770835638,0.032610520720482,0.038062203675508,-0.060103222727776,-0.070737935602665,-0.018073173239827,-0.097258448600769,0.107716612517834,-0.011010345071554,-0.085768669843674,-0.128495335578918,0.012664200738072));
res += mul(Get(s0,dx,-dy), float4x4(0.045533046126366,-0.006766897626221,0.168110534548759,0.060729149729013,-0.049475472420454,0.055815000087023,0.166250467300415,-0.046847641468048,-0.014323379844427,-0.018531406298280,-0.005366756115109,0.062151204794645,0.015524253249168,-0.039810452610254,-0.061135414987803,0.118729695677757));
res += mul(Get(s0,dx,0), float4x4(0.000556820479687,0.004468836355954,-0.000986496917903,-0.133450448513031,-0.024038972333074,0.059536300599575,-0.106671534478664,0.091961942613125,0.068073414266109,0.089613080024719,0.087076313793659,0.109935782849789,-0.040242526680231,0.011542418040335,-0.050156190991402,0.087415516376495));
res += mul(Get(s0,dx,dy), float4x4(-0.001032053725794,-0.206526413559914,0.086506344377995,-0.053188107907772,-0.072885878384113,-0.062507271766663,0.058376096189022,-0.017066568136215,-0.108629867434502,-0.179428011178970,-0.055344037711620,-0.000886455061845,0.072854228317738,-0.024675555527210,0.033886417746544,0.024656403809786));
res += mul(Get(s1,-dx,-dy), float4x4(-0.114985771477222,0.025503685697913,0.079191856086254,-0.065711908042431,-0.006256942637265,-0.120676331222057,0.048159588128328,0.022397961467505,-0.017680147662759,0.012639853172004,0.024847306311131,0.005633989814669,-0.081947922706604,0.023580558598042,-0.124530404806137,-0.088973395526409));
res += mul(Get(s1,-dx,0), float4x4(0.038657352328300,0.033801570534706,0.025551894679666,0.047901824116707,-0.016532987356186,-0.001527515007183,-0.055169623345137,0.053889483213425,0.050216224044561,0.063400566577911,-0.020379019901156,0.050455588847399,-0.016474630683661,-0.066153757274151,-0.127279266715050,-0.072934351861477));
res += mul(Get(s1,-dx,dy), float4x4(-0.071624800562859,-0.078591160476208,-0.031394913792610,-0.116842910647392,-0.019274780526757,-0.046749405562878,-0.051443412899971,0.034350879490376,0.014405277557671,-0.022958682850003,0.020242782309651,-0.115024171769619,-0.018095133826137,-0.154338508844376,-0.102009490132332,-0.095297358930111));
res += mul(Get(s1,0,-dy), float4x4(-0.028509071096778,-0.014891888014972,0.068173520267010,0.020687138661742,-0.030261900275946,0.176671996712685,0.009711122140288,-0.109167359769344,-0.087093815207481,0.131260126829147,0.031759738922119,0.029009627178311,-0.045822449028492,0.160641998052597,0.101445034146309,-0.151104316115379));
res += mul(Get(s1,0,0), float4x4(0.046415429562330,-0.180176183581352,0.066521830856800,0.068324491381645,-0.005669191945344,0.092697404325008,-0.011932153254747,-0.038143537938595,0.077161431312561,-0.041976582258940,-0.047310091555119,-0.015869008377194,0.140149086713791,-0.048310622572899,0.128722578287125,0.025748241692781));
res += mul(Get(s1,0,dy), float4x4(0.087903797626495,0.096836566925049,0.009905825369060,0.018010715022683,-0.006554561201483,-0.214592725038528,0.017298052087426,0.111793525516987,0.023684164509177,0.027895843610168,0.020470136776567,-0.079231783747673,-0.077641971409321,0.009653923101723,-0.020922224968672,-0.133520901203156));
res += mul(Get(s1,dx,-dy), float4x4(-0.094461299479008,-0.053068187087774,0.050262086093426,0.074261941015720,0.069673240184784,0.037633806467056,0.031765453517437,-0.006925466936082,0.011579885147512,0.054028168320656,0.032179836183786,-0.002509738551453,-0.040819320827723,0.054948538541794,0.039396926760674,0.006918740458786));
res += mul(Get(s1,dx,0), float4x4(0.106485597789288,-0.101732581853867,0.034804321825504,0.172389224171638,0.128386050462723,-0.121257603168488,0.089708052575588,0.046140614897013,0.042008560150862,0.008392297662795,0.010709123685956,-0.161450147628784,-0.060175620019436,0.024714697152376,0.113647490739822,0.049730818718672));
res += mul(Get(s1,dx,dy), float4x4(0.055721756070852,-0.021449672058225,-0.083947286009789,0.078094929456711,0.038545362651348,-0.024544397369027,0.002980863675475,-0.082266256213188,0.021056823432446,0.075088076293468,0.150085121393204,-0.179700881242752,-0.098775871098042,-0.080007277429104,0.079419814050198,0.011893323622644));
res += mul(Get(s2,-dx,-dy), float4x4(-0.016652148216963,-0.039514854550362,0.005126172676682,0.008427259512246,-0.041094172745943,0.003589854808524,-0.041254669427872,0.037928611040115,-0.042827680706978,-0.155360653996468,0.056747287511826,0.011331658810377,-0.003564866259694,0.065710283815861,-0.009293175302446,0.091794066131115));
res += mul(Get(s2,-dx,0), float4x4(-0.024305608123541,-0.010542274452746,0.036430694162846,-0.031821079552174,-0.021107723936439,-0.121364347636700,-0.005032429937273,-0.019174123182893,-0.026802705600858,0.086754508316517,-0.178860470652580,-0.060571257025003,0.012753579765558,-0.074477374553680,-0.039980649948120,0.093783423304558));
res += mul(Get(s2,-dx,dy), float4x4(0.129183501005173,0.125012114644051,0.008832670748234,-0.124743603169918,0.015702970325947,0.015498430468142,0.050593730062246,-0.094653688371181,0.001028059748933,0.206401854753494,0.007168788462877,0.064872562885284,-0.132695585489273,0.026546528562903,-0.103794738650322,0.005591752938926));
res += mul(Get(s2,0,-dy), float4x4(-0.021057879552245,-0.072763405740261,0.230904906988144,-0.002878424944356,-0.033506631851196,-0.075156547129154,0.095573537051678,0.169744238257408,-0.258579313755035,0.073024436831474,-0.030172195285559,0.062231604009867,-0.007163951173425,-0.045860495418310,0.012595467269421,-0.102149173617363));
res += mul(Get(s2,0,0), float4x4(-0.090458124876022,0.066304311156273,-0.098717197775841,0.081391625106335,0.014728361740708,-0.011221840977669,0.100937932729721,-0.208240494132042,-0.042497687041759,-0.033504702150822,0.152330070734024,0.059874806553125,0.135057106614113,-0.024944560602307,-0.099906757473946,-0.031018022447824));
res += mul(Get(s2,0,dy), float4x4(0.135428085923195,0.026231823489070,-0.156250461935997,0.146911919116974,0.012215399183333,0.023038595914841,0.104032777249813,-0.042125459760427,0.097614705562592,0.033187896013260,0.017741680145264,-0.038377668708563,0.008209249936044,-0.048187762498856,-0.088334016501904,-0.061619613319635));
res += mul(Get(s2,dx,-dy), float4x4(0.104407779872417,-0.019877806305885,-0.101405233144760,-0.037086766213179,-0.105652652680874,-0.071953378617764,0.131811141967773,-0.117454163730145,-0.090112209320068,-0.088485285639763,-0.031200176104903,0.093994498252869,0.003693036502227,-0.086676552891731,0.089335054159164,-0.039898369461298));
res += mul(Get(s2,dx,0), float4x4(-0.019755231216550,-0.089203625917435,-0.091777555644512,-0.137158706784248,-0.083011560142040,-0.019695580005646,-0.018934043124318,-0.066566765308380,0.078736446797848,0.157674357295036,0.011685415171087,0.061681587249041,-0.061919260770082,-0.074635408818722,-0.027758667245507,0.043970659375191));
res += mul(Get(s2,dx,dy), float4x4(-0.127404302358627,-0.023977492004633,-0.035353105515242,0.014137193560600,-0.062704801559448,0.022584982216358,-0.180257737636566,0.031263493001461,0.028270181268454,0.077751174569130,0.041133005172014,0.213350579142570,-0.002656811149791,-0.017737342044711,-0.012816710397601,-0.046536598354578));
res += mul(Get(s3,-dx,-dy), float4x4(0.019607752561569,-0.143645167350769,0.068434923887253,-0.075108252465725,-0.140622109174728,0.000260168511886,-0.021556599065661,-0.010346035473049,0.026821877807379,0.013216731138527,0.004280413035303,0.091043189167976,-0.004568080883473,-0.005398273933679,0.057237241417170,0.005049416329712));
res += mul(Get(s3,-dx,0), float4x4(0.036012027412653,0.047830719500780,-0.032834183424711,-0.033719912171364,-0.049991615116596,0.091710142791271,-0.045320607721806,-0.097828112542629,0.091891430318356,0.069171421229839,0.095205746591091,-0.023394299671054,0.077128231525421,0.051665384322405,0.119216948747635,-0.034738287329674));
res += mul(Get(s3,-dx,dy), float4x4(-0.031555339694023,-0.009647529572248,0.099134765565395,-0.013443024829030,-0.023618157953024,-0.021464407444000,-0.043907627463341,-0.115581922233105,0.085769101977348,-0.024729885160923,-0.035122565925121,-0.013184132054448,0.050309255719185,0.009258728474379,-0.136000499129295,-0.031019646674395));
res += mul(Get(s3,0,-dy), float4x4(-0.019962631165981,0.059179637581110,-0.034483935683966,0.034796148538589,0.031998895108700,0.101132579147816,0.059901189059019,0.046333346515894,-0.055263679474592,-0.045493114739656,-0.065784864127636,0.065392561256886,0.027382308617234,0.150066465139389,0.091326303780079,-0.115016840398312));
res += mul(Get(s3,0,0), float4x4(0.171057403087616,0.016972774639726,0.076956078410149,-0.080327004194260,-0.145599529147148,0.034154497087002,-0.045347996056080,-0.011143327690661,0.022371470928192,-0.025255775079131,0.158127695322037,0.041902281343937,0.102851688861847,0.025907007977366,0.114076629281044,0.065876297652721));
res += mul(Get(s3,0,dy), float4x4(-0.190885201096535,0.041380714625120,0.060499224811792,0.027305509895086,0.034836418926716,0.091995991766453,0.083365730941296,0.037136409431696,-0.079672478139400,-0.092616967856884,0.061753552407026,-0.094946898519993,0.076297655701637,0.152148917317390,0.003690477926284,0.037168588489294));
res += mul(Get(s3,dx,-dy), float4x4(0.188507750630379,-0.124988757073879,-0.017714995890856,0.006080413237214,-0.102421000599861,0.010554446838796,-0.041718658059835,-0.068415291607380,-0.111700609326363,-0.040619604289532,-0.032115448266268,-0.121837899088860,0.020267289131880,-0.060270793735981,0.164074733853340,-0.006729112938046));
res += mul(Get(s3,dx,0), float4x4(0.028474027290940,-0.084996022284031,-0.078783996403217,0.115360699594021,0.005603723227978,-0.055635288357735,0.081303857266903,0.167083382606506,0.078926526010036,-0.012263033539057,0.067089296877384,-0.096447966992855,-0.058358341455460,0.044418867677450,0.018504058942199,0.088589556515217));
res += mul(Get(s3,dx,dy), float4x4(0.084544882178307,-0.038742754608393,-0.078369870781898,-0.003209398826584,0.054897062480450,-0.125896781682968,-0.048451937735081,0.014625290408731,-0.000177947484190,0.004534473642707,-0.024329846724868,-0.119158163666725,-0.055176168680191,-0.022248085588217,-0.106893219053745,-0.072633750736713));
return max(float4(0,0,0,0), res);
}
