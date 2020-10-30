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
res += mul(Get(s0,-dx,-dy), float4x4(0.071338184177876,-0.116048760712147,-0.167079508304596,0.010049619711936,-0.127437815070152,0.076271995902061,-0.012193313799798,0.064479060471058,-0.074761159718037,-0.005494654644281,-0.292325407266617,-0.094230860471725,0.084178425371647,0.045257825404406,0.048184659332037,0.148330301046371));
res += mul(Get(s0,-dx,0), float4x4(0.063156388700008,0.042614299803972,0.322413414716721,-0.134898692369461,0.011200121603906,0.040546786040068,0.105395674705505,0.007949502207339,0.116375416517258,0.113011233508587,-0.120862312614918,-0.076708793640137,0.012787832878530,0.134923458099365,-0.082090139389038,-0.076220370829105));
res += mul(Get(s0,-dx,dy), float4x4(0.184174641966820,0.095297895371914,-0.047073032706976,0.048806879669428,0.119458764791489,0.182582721114159,0.032281924039125,-0.095515377819538,-0.088161863386631,0.052705451846123,-0.043796151876450,0.171705082058907,-0.059615500271320,0.032448053359985,-0.122771181166172,0.097571432590485));
res += mul(Get(s0,0,-dy), float4x4(-0.009970936924219,-0.273963063955307,-0.134073123335838,-0.099133841693401,-0.058206863701344,-0.049841575324535,0.706274390220642,-0.018670320510864,-0.005695435218513,-0.162401571869850,0.144506394863129,0.151203632354736,0.063950724899769,0.011441638693213,0.007363789249212,0.143610090017319));
res += mul(Get(s0,0,0), float4x4(-0.013157822191715,-0.012714090757072,0.229075834155083,0.105063490569592,0.060771338641644,-0.060138374567032,0.211430534720421,-0.133450895547867,0.062728866934776,-0.051487620919943,0.156110092997551,-0.112547568976879,0.066348768770695,0.222237139940262,-0.011308313347399,0.120073258876801));
res += mul(Get(s0,0,dy), float4x4(0.167274966835976,0.188668295741081,0.267461538314819,0.086316719651222,0.323984056711197,-0.005475770682096,0.356330007314682,-0.095249012112617,-0.115322485566139,0.133620530366898,0.064612969756126,0.037919685244560,-0.053276836872101,-0.075355045497417,-0.073550149798393,0.218349963426590));
res += mul(Get(s0,dx,-dy), float4x4(-0.121485322713852,-0.031603645533323,-0.195116966962814,-0.029274377971888,0.074843406677246,-0.088410779833794,0.007463374640793,-0.068656101822853,-0.083028532564640,-0.098818682134151,-0.235084593296051,0.057894267141819,0.121121272444725,-0.037493828684092,0.173384994268417,0.184509754180908));
res += mul(Get(s0,dx,0), float4x4(-0.080823473632336,0.150018498301506,-0.103733204305172,0.028222488239408,-0.080772206187248,-0.065021656453609,-0.030391516163945,-0.021039903163910,-0.114829584956169,-0.175515249371529,-0.071273729205132,-0.117385193705559,0.234563082456589,-0.062433041632175,0.137151166796684,0.015472419559956));
res += mul(Get(s0,dx,dy), float4x4(0.164510458707809,0.144578740000725,-0.009201616980135,0.137404456734657,0.045968793332577,-0.057063613086939,0.119445376098156,-0.055778689682484,-0.027692418545485,-0.047516129910946,0.101824186742306,-0.156802028417587,-0.213842123746872,-0.025748372077942,0.109020359814167,0.213550016283989));
res += mul(Get(s1,-dx,-dy), float4x4(-0.107646964490414,-0.178823322057724,-0.051462583243847,-0.125669017434120,-0.146012380719185,0.180062606930733,-0.133164510130882,-0.087098002433777,-0.028843993321061,-0.128407150506973,-0.053271342068911,0.110874176025391,-0.199955582618713,0.025466885417700,0.097428247332573,-0.098718091845512));
res += mul(Get(s1,-dx,0), float4x4(-0.056326858699322,0.051348093897104,-0.152915775775909,0.120424218475819,0.006202958524227,-0.029826775193214,0.093626856803894,0.166987419128418,0.089852906763554,0.167815923690796,0.213384225964546,-0.004772116895765,-0.037817683070898,0.112315393984318,0.102263353765011,-0.196455970406532));
res += mul(Get(s1,-dx,dy), float4x4(-0.026159767061472,0.146345213055611,-0.264476090669632,-0.033681403845549,-0.017394227907062,-0.020898293703794,0.259831935167313,0.350944131612778,0.181731596589088,0.158762976527214,0.170363932847977,0.011954085901380,0.073638521134853,-0.112513847649097,-0.015679597854614,-0.069829083979130));
res += mul(Get(s1,0,-dy), float4x4(-0.018952969461679,0.118760168552399,0.352911680936813,-0.112941965460777,0.006847678218037,0.308402299880981,-0.301534622907639,-0.183067023754120,-0.009184706024826,0.074862770736217,0.076103068888187,-0.032228738069534,0.102250784635544,-0.310111969709396,0.154416874051094,-0.028431100770831));
res += mul(Get(s1,0,0), float4x4(-0.051596533507109,0.190338179469109,0.371785491704941,0.040645424276590,0.051659878343344,0.429769068956375,0.247716754674911,-0.152472063899040,0.194992244243622,0.231385245919228,0.348458200693130,0.078507192432880,0.221438303589821,-0.106823623180389,0.157013043761253,-0.170133784413338));
res += mul(Get(s1,0,dy), float4x4(0.167914360761642,0.094549372792244,0.206698000431061,0.191137641668320,-0.080732010304928,0.184280946850777,0.336340218782425,0.163077458739281,0.162465900182724,0.105720736086369,0.109514974057674,0.028385873883963,0.379671156406403,0.033815547823906,-0.087797552347183,-0.172729969024658));
res += mul(Get(s1,dx,-dy), float4x4(0.116024866700172,0.074176803231239,-0.034605346620083,0.011276536621153,-0.094711698591709,-0.022686406970024,-0.219491571187973,-0.003746876725927,0.066316358745098,0.011976042762399,-0.044213749468327,-0.002019314561039,0.320291757583618,-0.053202662616968,0.101614899933338,0.102288328111172));
res += mul(Get(s1,dx,0), float4x4(0.221730798482895,-0.002954905619845,-0.044363427907228,0.035182412713766,-0.243270143866539,0.264112055301666,-0.066226869821548,-0.113169074058533,0.082588888704777,0.236243471503258,0.250379800796509,0.127655759453773,0.183571919798851,-0.000396658928366,0.005690168123692,-0.013069070875645));
res += mul(Get(s1,dx,dy), float4x4(0.208136677742004,-0.019434468820691,-0.117539837956429,0.192982703447342,-0.139599919319153,0.365364432334900,0.166609898209572,0.021083289757371,0.095335252583027,0.134032264351845,-0.001096646185033,0.123230315744877,-0.066368289291859,-0.005621257703751,-0.123971961438656,-0.175761297345161));
res += mul(Get(s2,-dx,-dy), float4x4(-0.216892749071121,0.035551648586988,0.054703570902348,-0.061366990208626,0.176944017410278,-0.087074443697929,-0.076548524200916,-0.099348589777946,-0.255068957805634,-0.155600965023041,0.011862135492265,0.119674533605576,-0.225687816739082,-0.004920971114188,-0.069774791598320,-0.010459860786796));
res += mul(Get(s2,-dx,0), float4x4(-0.180193737149239,0.036058414727449,0.374436080455780,-0.081454508006573,-0.101391643285751,-0.136407852172852,0.087556555867195,0.142563521862030,-0.001774720964022,0.041343431919813,0.152529045939445,-0.143463194370270,-0.348876953125000,0.074535064399242,-0.012385783717036,-0.242329552769661));
res += mul(Get(s2,-dx,dy), float4x4(0.149426802992821,0.034474905580282,0.031638707965612,-0.048105601221323,-0.060591120272875,0.117449812591076,-0.172862112522125,-0.043404299765825,0.146915048360825,0.044687386602163,-0.017734348773956,-0.022643523290753,-0.264722377061844,0.011417568661273,0.135406851768494,-0.253781139850616));
res += mul(Get(s2,0,-dy), float4x4(-0.115279361605644,-0.097729541361332,0.122132979333401,0.061506558209658,-0.106698587536812,0.256756037473679,-0.061826981604099,-0.062629602849483,-0.120488889515400,-0.124676533043385,-0.058273542672396,-0.048636965453625,-0.276356846094131,-0.039754606783390,0.017964560538530,0.161549404263496));
res += mul(Get(s2,0,0), float4x4(0.018253104761243,-0.100663058459759,0.446335643529892,-0.034195829182863,-0.053315907716751,0.104335613548756,0.088895812630653,-0.219591140747070,0.530708730220795,0.004696884658188,-0.039268922060728,-0.072611980140209,-0.227345108985901,-0.000754143460654,0.172819793224335,-0.126834079623222));
res += mul(Get(s2,0,dy), float4x4(0.305517286062241,0.015128988772631,0.014175621792674,0.012309032492340,0.029532495886087,0.295506238937378,0.206372350454330,0.053403362631798,-0.100287415087223,0.047672268003225,-0.077321447432041,0.000043624149839,-0.065395422279835,0.006969901267439,-0.028609570115805,-0.169130936264992));
res += mul(Get(s2,dx,-dy), float4x4(0.314330905675888,-0.135747283697128,-0.253645896911621,0.005771692376584,-0.063532210886478,0.183671906590462,0.127021133899689,0.025474395602942,0.218094274401665,0.032781083136797,0.074327372014523,-0.058101389557123,-0.122763209044933,-0.229064032435417,-0.289333820343018,0.127407208085060));
res += mul(Get(s2,dx,0), float4x4(0.085643686354160,-0.096981912851334,0.361876070499420,0.040059227496386,-0.066266484558582,0.210224941372871,0.256754189729691,0.037483491003513,0.197849854826927,0.217217400670052,0.086383700370789,-0.104904584586620,-0.075597755610943,-0.249301970005035,0.044392079114914,0.069904178380966));
res += mul(Get(s2,dx,dy), float4x4(0.048637837171555,-0.012608975172043,-0.108917400240898,0.033825580030680,0.192224189639091,0.018311591818929,0.139816030859947,-0.028689213097095,-0.088944256305695,0.114502988755703,-0.067245304584503,0.188221231102943,0.037943970412016,-0.031245229765773,-0.094150461256504,-0.034944735467434));
res += mul(Get(s3,-dx,-dy), float4x4(-0.247943505644798,-0.109538324177265,0.107019633054733,-0.281322509050369,-0.121360115706921,0.105303026735783,-0.101255893707275,-0.017149502411485,-0.143800199031830,-0.048102818429470,0.082049153745174,-0.051861621439457,-0.059802323579788,-0.105243660509586,-0.036452628672123,0.120510689914227));
res += mul(Get(s3,-dx,0), float4x4(-0.251956224441528,-0.108595684170723,0.093914873898029,-0.337984979152679,0.021721487864852,0.041376531124115,0.061686959117651,0.047911979258060,-0.001306740101427,-0.002082253340632,-0.041385568678379,-0.014005296863616,-0.008377810940146,0.013054586015642,0.117650926113129,-0.064984813332558));
res += mul(Get(s3,-dx,dy), float4x4(-0.040431939065456,-0.200331225991249,0.044977176934481,-0.270643919706345,-0.104931712150574,0.009019210003316,-0.105953052639961,-0.022097384557128,0.107445187866688,0.101981312036514,-0.200122281908989,-0.058111038058996,0.123405888676643,0.176437929272652,-0.105443105101585,-0.070482365787029));
res += mul(Get(s3,0,-dy), float4x4(-0.452694952487946,-0.182818904519081,0.642409205436707,-0.052093155682087,-0.010232011787593,0.118234157562256,0.122778043150902,0.088058851659298,0.057872034609318,-0.031497333198786,-0.160615131258965,0.005887088831514,-0.071607977151871,-0.038066163659096,0.053305543959141,-0.060969751328230));
res += mul(Get(s3,0,0), float4x4(-0.301518857479095,-0.202174693346024,0.298593580722809,-0.265203863382339,0.076813638210297,0.094163320958614,0.156532183289528,0.027534544467926,0.114143013954163,-0.040472306311131,0.061773456633091,0.074345335364342,-0.034948091953993,-0.023981988430023,0.151807412505150,0.431100428104401));
res += mul(Get(s3,0,dy), float4x4(0.216236263513565,0.415381997823715,-0.157778382301331,-0.153754055500031,-0.053888119757175,-0.082755275070667,0.365216463804245,-0.080962672829628,0.139908075332642,-0.008647918701172,-0.009455584920943,-0.149154350161552,-0.066159076988697,0.084386169910431,0.275069653987885,-0.018635436892509));
res += mul(Get(s3,dx,-dy), float4x4(0.017145641148090,-0.326475352048874,-0.045626126229763,0.254969090223312,0.114022798836231,0.079132430255413,-0.099340744316578,0.081559047102928,0.072610095143318,0.112363733351231,-0.307581007480621,0.006670610979199,-0.238501891493797,0.032535765320063,-0.198183223605156,-0.049717292189598));
res += mul(Get(s3,dx,0), float4x4(0.246927633881569,-0.246250927448273,0.103936329483986,0.030212208628654,-0.058828901499510,0.265019357204437,0.126093178987503,0.006773008499295,-0.021167624741793,0.017324335873127,0.176530942320824,-0.206907778978348,-0.049554679542780,-0.052674733102322,0.119798198342323,-0.013578982092440));
res += mul(Get(s3,dx,dy), float4x4(0.380350857973099,-0.051159299910069,-0.104623630642891,-0.072803549468517,-0.075786441564560,0.044826138764620,0.022044949233532,-0.134206458926201,-0.021182352676988,0.090232133865356,0.115741729736328,-0.154134705662727,-0.155653282999992,-0.073014907538891,-0.038232401013374,0.063070043921471));
return max(float4(0,0,0,0), res);
}
