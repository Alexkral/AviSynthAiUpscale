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
res += mul(Get(s0,-dx,-dy), float4x4(-0.045618791133165,-0.002549580764025,-0.051530163735151,0.111917786300182,-0.074114799499512,0.006639630999416,0.035409662872553,-0.036401148885489,0.226017162203789,-0.121090382337570,0.000478105619550,0.105805061757565,-0.008799065835774,-0.004206647630781,0.015740348026156,-0.098171018064022));
res += mul(Get(s0,-dx,0), float4x4(0.231977134943008,-0.048650346696377,0.093910329043865,0.013544863089919,0.013577803038061,-0.117913573980331,-0.112797990441322,-0.231211781501770,0.021080903708935,-0.109726421535015,0.123882070183754,-0.001375233987346,-0.002180928131565,0.222353622317314,0.026380371302366,-0.179991379380226));
res += mul(Get(s0,-dx,dy), float4x4(0.055634766817093,0.002126646926627,-0.011448154225945,0.159605473279953,0.015142059884965,-0.141583725810051,-0.012418767437339,0.048969015479088,-0.118048593401909,-0.093972116708755,0.056832946836948,0.102182365953922,0.008407055400312,0.104330435395241,0.180598512291908,0.007734669838101));
res += mul(Get(s0,0,-dy), float4x4(-0.004821764305234,0.048294931650162,-0.014534454792738,0.071390688419342,0.090162649750710,0.009781633503735,-0.182860687375069,-0.029918983578682,0.037705983966589,-0.243055194616318,-0.048139009624720,-0.067967727780342,0.085478812456131,-0.044529423117638,-0.021883714944124,0.112546809017658));
res += mul(Get(s0,0,0), float4x4(0.001728850649670,-0.020682552829385,0.068440079689026,0.064948603510857,-0.006274842191488,0.065878547728062,-0.298490971326828,-0.316810995340347,0.181536167860031,0.066750079393387,0.359693855047226,0.023327816277742,-0.055332552641630,-0.074468970298767,-0.073718629777431,0.230335578322411));
res += mul(Get(s0,0,dy), float4x4(-0.015753382816911,-0.052328970283270,0.096417255699635,0.021554728969932,-0.059214830398560,-0.056380845606327,-0.080069504678249,-0.084575876593590,0.112068973481655,-0.177299499511719,-0.080162510275841,-0.020827304571867,0.116469018161297,-0.029045157134533,-0.041449654847383,0.050469286739826));
res += mul(Get(s0,dx,-dy), float4x4(0.028243983164430,0.069490224123001,-0.322799891233444,-0.029155397787690,-0.190354615449905,0.044869013130665,0.064600609242916,0.138108983635902,0.010046275332570,-0.026871578767896,-0.046326894313097,0.066031776368618,0.014890696853399,-0.098661467432976,-0.129614606499672,-0.082305647432804));
res += mul(Get(s0,dx,0), float4x4(-0.131495326757431,-0.084684193134308,-0.114757031202316,-0.015124799683690,0.156394511461258,-0.132446408271790,-0.099873438477516,0.207731604576111,-0.015380406752229,0.022495657205582,-0.055746078491211,0.001257217256352,-0.139997258782387,0.052288029342890,-0.177072525024414,0.002322315005586));
res += mul(Get(s0,dx,dy), float4x4(-0.092291355133057,-0.141524791717529,0.070419624447823,-0.175732731819153,-0.222028732299805,0.009452337399125,-0.085855819284916,-0.015435012988746,-0.090505674481392,-0.081414982676506,0.026788350194693,-0.058964904397726,0.064646340906620,-0.037166755646467,0.081964574754238,0.053516797721386));
res += mul(Get(s1,-dx,-dy), float4x4(0.126740664243698,-0.245890766382217,0.078303262591362,-0.096770860254765,-0.144654378294945,0.256770431995392,0.118094779551029,-0.094518877565861,-0.218746349215508,0.112021744251251,0.041227240115404,0.017723318189383,0.049005519598722,-0.166419506072998,0.092606149613857,0.076852381229401));
res += mul(Get(s1,-dx,0), float4x4(-0.144307628273964,0.156251981854439,0.012227101251483,0.017941713333130,-0.025283111259341,0.030836077407002,0.113748177886009,0.081693083047867,-0.123053200542927,0.006212960463017,0.173565253615379,0.208579435944557,0.148750483989716,0.027652958407998,-0.116858169436455,0.016582610085607));
res += mul(Get(s1,-dx,dy), float4x4(-0.027641229331493,0.015187976881862,0.217877447605133,-0.060990590602160,-0.004158419556916,0.072702519595623,-0.005135827697814,-0.027738917618990,0.046230345964432,0.033508036285639,0.009277407079935,-0.133799061179161,0.057046014815569,0.014088001102209,-0.017319185659289,-0.080645546317101));
res += mul(Get(s1,0,-dy), float4x4(0.093742497265339,0.088345408439636,-0.114200137555599,-0.026013648137450,0.015351478010416,0.121837556362152,-0.036465212702751,0.067675128579140,-0.101748988032341,0.077396631240845,0.041556976735592,0.168144777417183,-0.018102679401636,-0.062710359692574,-0.080379776656628,0.065602235496044));
res += mul(Get(s1,0,0), float4x4(-0.081688977777958,-0.010725350119174,-0.112613424658775,0.011109702289104,0.078136101365089,0.044950149953365,0.124004274606705,0.067467287182808,0.083028711378574,0.114005833864212,-0.086415924131870,-0.105209551751614,0.204142510890961,0.031911030411720,-0.054118584841490,0.095595382153988));
res += mul(Get(s1,0,dy), float4x4(-0.006589441094548,-0.064591243863106,0.071329221129417,-0.024852927774191,-0.041984040290117,0.127493068575859,0.026621978729963,-0.041506100445986,-0.237183451652527,0.012195335701108,0.310355752706528,-0.130355089902878,-0.171927437186241,0.098713092505932,0.070239499211311,0.133725881576538));
res += mul(Get(s1,dx,-dy), float4x4(-0.049675196409225,-0.058776177465916,0.257656037807465,-0.081646025180817,0.157838657498360,0.129008442163467,-0.140800461173058,-0.211325526237488,-0.080468520522118,0.055210541933775,0.053092814981937,-0.119733437895775,0.131379678845406,0.005017759744078,-0.031015980988741,-0.198572665452957));
res += mul(Get(s1,dx,0), float4x4(-0.121778585016727,-0.244205310940742,0.070573724806309,-0.120267696678638,0.065966911613941,-0.123955555260181,0.055111031979322,0.080610588192940,0.118903681635857,-0.178607761859894,-0.006137636490166,0.071152292191982,-0.241912528872490,-0.060937296599150,0.048398409038782,-0.100898072123528));
res += mul(Get(s1,dx,dy), float4x4(-0.030772930011153,0.056132547557354,0.028847001492977,-0.064149163663387,0.221904784440994,0.053970996290445,0.107760637998581,0.016825377941132,-0.112807430326939,0.059918418526649,0.016359223052859,-0.089606709778309,-0.198671773076057,-0.115434236824512,-0.059788819402456,-0.013649081811309));
res += mul(Get(s2,-dx,-dy), float4x4(-0.153126180171967,0.042176008224487,0.121696315705776,-0.127039596438408,-0.022753447294235,0.009809782728553,0.093926556408405,0.061505775898695,-0.100369103252888,0.177505642175674,-0.030383415520191,0.069628886878490,-0.147164702415466,-0.053058348596096,-0.121020279824734,-0.091574475169182));
res += mul(Get(s2,-dx,0), float4x4(-0.192907795310020,-0.127235919237137,0.023375749588013,0.136459082365036,0.117226578295231,0.008371574804187,-0.018020372837782,-0.061143241822720,0.040444221347570,-0.122788876295090,-0.073783159255981,-0.043608281761408,-0.036551997065544,-0.037574645131826,0.042373601347208,-0.157564908266068));
res += mul(Get(s2,-dx,dy), float4x4(0.055626176297665,-0.098597243428230,0.078194372355938,-0.001522661419585,0.065225966274738,0.153936237096786,0.069529414176941,-0.101458370685577,-0.016949923709035,0.052264291793108,0.065060958266258,0.029950726777315,-0.031645197421312,-0.052212513983250,-0.148279428482056,0.010803363285959));
res += mul(Get(s2,0,-dy), float4x4(0.074029296636581,0.000070554153353,-0.021828534081578,-0.052519202232361,0.104195460677147,-0.005690691992640,-0.081050604581833,-0.020532146096230,0.008939075283706,-0.046644303947687,-0.010381434112787,-0.015579984523356,0.006972011178732,0.137829422950745,-0.030549352988601,0.009017481468618));
res += mul(Get(s2,0,0), float4x4(0.043417543172836,-0.197217851877213,0.139243319630623,0.019908925518394,0.079583130776882,0.124355629086494,0.011419852264225,-0.046413641422987,0.005005090963095,-0.094112277030945,0.019699705764651,0.054741196334362,0.056790661066771,0.221985384821892,0.197094127535820,-0.170302763581276));
res += mul(Get(s2,0,dy), float4x4(0.039863042533398,-0.019876118749380,0.012350876815617,-0.056343816220760,0.014827318489552,0.095644176006317,-0.310702115297318,-0.031987618654966,0.028665184974670,0.015111192129552,0.015032061375678,-0.041038215160370,-0.063181303441525,-0.113732688128948,0.109115436673164,0.086296513676643));
res += mul(Get(s2,dx,-dy), float4x4(-0.149454966187477,-0.211637631058693,0.149681866168976,0.066833131015301,-0.106498949229717,-0.212004259228706,-0.060938842594624,0.010321649722755,0.022466760128736,-0.146061062812805,-0.119650013744831,0.040146514773369,-0.159843936562538,-0.057687785476446,-0.119843535125256,0.097473114728928));
res += mul(Get(s2,dx,0), float4x4(0.127335190773010,0.168825745582581,0.056793417781591,-0.071403868496418,-0.130205526947975,-0.009046722203493,0.011845473200083,-0.094436928629875,-0.007919925265014,-0.076826743781567,-0.048482064157724,0.021699398756027,0.028340343385935,0.241508439183235,-0.089681938290596,-0.079346604645252));
res += mul(Get(s2,dx,dy), float4x4(-0.107260197401047,0.011459005996585,0.098875150084496,-0.037186872214079,-0.115897335112095,-0.057417504489422,-0.175043702125549,0.055137611925602,-0.042975619435310,0.165272265672684,-0.166579008102417,0.046734653413296,-0.081322357058525,-0.039969701319933,-0.181287348270416,-0.117063924670219));
res += mul(Get(s3,-dx,-dy), float4x4(0.153829097747803,-0.182994410395622,0.069357104599476,-0.039160951972008,-0.097109459340572,0.126270607113838,-0.001563367317431,0.098491229116917,-0.053578700870275,-0.108920678496361,-0.011379967443645,-0.040938232094049,0.075589463114738,-0.095200471580029,-0.150804176926613,0.029284343123436));
res += mul(Get(s3,-dx,0), float4x4(0.115995675325394,0.040658567100763,0.035630039870739,-0.081028498709202,0.019526459276676,0.068029016256332,-0.190691754221916,0.115306839346886,-0.035009238868952,0.046249371021986,0.226718842983246,-0.145646363496780,0.073653049767017,-0.187435001134872,0.079844184219837,0.047495715320110));
res += mul(Get(s3,-dx,dy), float4x4(-0.005632049869746,-0.090281717479229,0.044152259826660,-0.035201299935579,-0.019159812480211,0.098465077579021,0.004194151144475,-0.141546100378036,0.029816966503859,0.003418363397941,-0.040711894631386,0.000805922376458,-0.026150643825531,-0.119131937623024,-0.005324841942638,-0.042783755809069));
res += mul(Get(s3,0,-dy), float4x4(-0.161315709352493,-0.206426471471786,0.095679298043251,0.027370683848858,0.098243609070778,-0.118219383060932,-0.052122708410025,-0.108575932681561,-0.002878142753616,0.004785456229001,-0.058121293783188,0.115855515003204,-0.134463086724281,-0.212459236383438,-0.073421925306320,0.096175618469715));
res += mul(Get(s3,0,0), float4x4(0.033481106162071,0.021535841748118,0.008011134341359,0.011361026205122,-0.083249300718307,0.070347897708416,-0.042556226253510,0.120602302253246,-0.058127686381340,0.181622430682182,-0.068926520645618,0.154324173927307,0.043263521045446,-0.030570324510336,-0.086436770856380,0.006526066455990));
res += mul(Get(s3,0,dy), float4x4(-0.041712250560522,0.057987205684185,0.128416821360588,0.154468640685081,-0.095597602427006,-0.128947496414185,0.109944716095924,0.100546687841415,0.082221575081348,-0.147340714931488,0.219389081001282,-0.214437097311020,-0.008611077442765,0.029395658522844,0.016295868903399,0.111402533948421));
res += mul(Get(s3,dx,-dy), float4x4(-0.040261901915073,-0.114120371639729,0.152640372514725,-0.091517217457294,-0.040229201316833,-0.118228249251842,0.182744979858398,-0.172498479485512,0.025296110659838,0.071205839514732,-0.007548567838967,0.143555477261543,0.122564189136028,0.031028084456921,0.103791125118732,0.111705459654331));
res += mul(Get(s3,dx,0), float4x4(-0.076251305639744,-0.181236118078232,-0.068150177598000,-0.146935701370239,0.041827499866486,-0.034067109227180,0.240352898836136,-0.198104843497276,0.104043394327164,0.014923725277185,-0.037542097270489,0.002577651757747,-0.026314524933696,-0.071291208267212,-0.037813063710928,0.012450757436454));
res += mul(Get(s3,dx,dy), float4x4(-0.104785978794098,-0.212174266576767,0.085968278348446,-0.035711094737053,0.080826610326767,-0.008570197969675,0.064695104956627,0.080561891198158,-0.011428837664425,-0.074085034430027,0.147226303815842,-0.087814919650555,0.038747977465391,-0.020801942795515,-0.087961867451668,0.177335873246193));
return max(float4(0,0,0,0), res);
}
