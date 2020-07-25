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
res += mul(Get(s0,-dx,-dy), float4x4(-0.189562454819679,-0.166037559509277,0.077858135104179,0.016171030700207,0.016979016363621,-0.033947642892599,0.088304139673710,-0.010322985239327,0.142673671245575,0.031823787838221,-0.068541534245014,0.011842237785459,0.120768450200558,0.170049607753754,0.006850898265839,0.047322440892458));
res += mul(Get(s0,-dx,0), float4x4(-0.000537846470252,0.019292669370770,0.061714529991150,0.003056461457163,0.110879309475422,-0.221288666129112,-0.016431219875813,-0.063314408063889,0.018902383744717,-0.069235220551491,-0.165944144129753,0.032307446002960,0.140756338834763,0.002023286418989,0.014889242127538,-0.203560888767242));
res += mul(Get(s0,-dx,dy), float4x4(-0.204501092433929,-0.156155854463577,-0.063833095133305,-0.184334427118301,-0.042031120508909,0.171828389167786,-0.111299864947796,-0.174904733896255,-0.067702986299992,0.122148789465427,-0.168714478611946,-0.167579442262650,-0.070350356400013,0.015375456772745,-0.035133972764015,0.005024956539273));
res += mul(Get(s0,0,-dy), float4x4(0.276075452566147,0.014444280415773,-0.045426063239574,0.059708133339882,0.054005667567253,-0.053403459489346,-0.096163421869278,0.153627619147301,0.042711667716503,-0.046802215278149,0.061433695256710,-0.050004776567221,-0.017228918150067,0.057121608406305,0.029418891295791,0.111938573420048));
res += mul(Get(s0,0,0), float4x4(0.021495172753930,0.060143809765577,-0.056709550321102,0.182296767830849,-0.141167163848877,0.115661509335041,0.026492988690734,-0.073494769632816,0.125752583146095,0.179442569613457,-0.122321791946888,0.139604896306992,-0.026282133534551,0.099942885339260,0.101961567997932,-0.107962876558304));
res += mul(Get(s0,0,dy), float4x4(0.077445112168789,-0.002737055532634,-0.100603923201561,0.073119252920151,-0.167640507221222,0.129101946949959,-0.049069233238697,0.058647431433201,0.169345647096634,-0.011249666102231,-0.014246970415115,0.132187753915787,0.127514272928238,-0.054056216031313,-0.263853937387466,0.094103507697582));
res += mul(Get(s0,dx,-dy), float4x4(-0.136395335197449,0.073130011558533,-0.097367480397224,-0.176591157913208,-0.089244067668915,-0.053505666553974,0.238800510764122,0.125971153378487,0.000894871482160,0.153891548514366,-0.149459630250931,-0.018617482855916,0.312805950641632,0.003452081466094,0.052749976515770,-0.123851045966148));
res += mul(Get(s0,dx,0), float4x4(-0.126832678914070,0.137617573142052,0.041950110346079,-0.116489715874195,-0.221323996782303,0.125302493572235,-0.119203850626945,0.186778485774994,0.122861787676811,0.024815920740366,-0.073375388979912,0.164122968912125,0.025488315150142,0.063277341425419,0.108354903757572,-0.078584201633930));
res += mul(Get(s0,dx,dy), float4x4(0.032388318330050,-0.250816464424133,-0.088273033499718,0.061274893581867,-0.153512760996819,0.164596527814865,0.046408783644438,0.016222978010774,0.020255649462342,0.106349766254425,0.009850000031292,0.041304465383291,-0.154547676444054,0.028817025944591,-0.295183300971985,0.087981484830379));
res += mul(Get(s1,-dx,-dy), float4x4(-0.103544287383556,0.123004466295242,-0.201384827494621,0.129402935504913,-0.017814615741372,0.234266534447670,-0.198704123497009,-0.122887104749680,0.214491412043571,0.015354234725237,0.069076463580132,0.001250473083928,-0.027550078928471,0.052735444158316,0.110610008239746,-0.005968959536403));
res += mul(Get(s1,-dx,0), float4x4(-0.148952394723892,0.129582509398460,-0.053603690117598,0.234631225466728,0.108812279999256,0.002681532641873,0.050574753433466,-0.127180814743042,0.055232860147953,0.156762063503265,-0.179952695965767,-0.088034719228745,-0.136331915855408,0.000541612738743,-0.169685095548630,-0.104988694190979));
res += mul(Get(s1,-dx,dy), float4x4(-0.031673032790422,0.067350976169109,-0.119348831474781,-0.027082279324532,-0.004152636975050,0.063472419977188,-0.137163639068604,-0.043503992259502,0.012909615412354,-0.039967723190784,-0.009324735030532,0.107709847390652,-0.120147407054901,-0.019767247140408,0.075300246477127,0.021451270207763));
res += mul(Get(s1,0,-dy), float4x4(0.115620672702789,0.106628485023975,-0.010045172646642,0.145079821348190,-0.094215057790279,0.052561480551958,-0.059256907552481,-0.027693267911673,-0.065893135964870,0.001945899799466,-0.257800906896591,0.225719228386879,-0.031920518726110,-0.296381235122681,-0.168114155530930,-0.026609290391207));
res += mul(Get(s1,0,0), float4x4(0.029441528022289,-0.086673513054848,0.040598440915346,-0.034118112176657,0.068615011870861,-0.082157462835312,0.136823743581772,-0.109278082847595,-0.008234717883170,0.165453985333443,-0.216136857867241,0.194153770804405,-0.191681534051895,-0.029014268890023,-0.043907932937145,0.045891597867012));
res += mul(Get(s1,0,dy), float4x4(0.056355975568295,0.133341416716576,0.144449070096016,0.086455412209034,-0.145001932978630,-0.031493917107582,-0.045818775892258,0.053353417664766,-0.020438818261027,0.150261878967285,-0.080867029726505,0.108572974801064,0.113342240452766,-0.016730427742004,0.110684990882874,0.020447334274650));
res += mul(Get(s1,dx,-dy), float4x4(-0.213577166199684,-0.041104052215815,-0.062111265957355,0.138880506157875,-0.215780854225159,-0.095533788204193,-0.118581227958202,0.143345504999161,0.047138728201389,-0.021434064954519,0.045327022671700,-0.216357737779617,0.199913531541824,-0.004339519422501,-0.011026555672288,-0.013237228617072));
res += mul(Get(s1,dx,0), float4x4(-0.114866062998772,-0.018849868327379,0.081505537033081,0.068889066576958,0.196847841143608,-0.090015053749084,-0.150071173906326,0.003400979796425,-0.006136754993349,0.220770820975304,-0.012299367226660,-0.000445732759545,0.075691372156143,-0.313722729682922,-0.147643342614174,0.223498106002808));
res += mul(Get(s1,dx,dy), float4x4(0.212399154901505,0.093344487249851,0.214466273784637,-0.088454581797123,0.060797691345215,-0.032521549612284,-0.031003070995212,0.033153977245092,-0.170434206724167,0.242893636226654,0.038837637752295,0.140209242701530,-0.068368479609489,-0.009589624591172,-0.020366715267301,-0.095402888953686));
res += mul(Get(s2,-dx,-dy), float4x4(-0.023450400680304,0.016346916556358,-0.063603200018406,-0.022666497156024,-0.047071237117052,0.086853124201298,-0.016559023410082,0.108835719525814,0.032216921448708,-0.279905855655670,0.104091383516788,0.072327531874180,0.129989087581635,-0.082275077700615,-0.023565236479044,-0.009376972913742));
res += mul(Get(s2,-dx,0), float4x4(0.098262235522270,0.044347595423460,-0.136029049754143,-0.325204789638519,0.106155514717102,0.042482912540436,-0.135920137166977,0.131268084049225,-0.192885264754295,-0.122358337044716,0.100627966225147,-0.045317955315113,0.154827848076820,0.051446013152599,-0.096457563340664,0.127996772527695));
res += mul(Get(s2,-dx,dy), float4x4(-0.140379518270493,-0.040140274912119,-0.011496696621180,0.163166075944901,0.096926808357239,-0.028919273987412,0.023750562220812,0.134173944592476,0.194983035326004,-0.132167130708694,0.036499351263046,0.069415725767612,0.084239169955254,0.069731429219246,0.011475617066026,0.030763596296310));
res += mul(Get(s2,0,-dy), float4x4(-0.065566055476665,-0.104363068938255,0.050119686871767,0.124822497367859,0.015985319390893,0.115884192287922,-0.037178840488195,-0.073679357767105,0.222253695130348,-0.146054342389107,0.068261042237282,0.073194451630116,0.127482935786247,0.051681175827980,-0.053101349622011,0.105097427964211));
res += mul(Get(s2,0,0), float4x4(0.087588295340538,-0.114863187074661,-0.070587381720543,-0.020537968724966,-0.019444040954113,0.178145259618759,0.091926015913486,-0.026655651628971,0.083411462605000,0.027072316035628,0.110932089388371,0.170153677463531,0.067009277641773,0.070362903177738,0.167001679539680,-0.052930030971766));
res += mul(Get(s2,0,dy), float4x4(0.061617631465197,0.154900789260864,-0.135419979691505,-0.014289033599198,-0.233823105692863,-0.063058592379093,-0.072492472827435,0.010591736063361,-0.050097201019526,0.011886046268046,0.099625788629055,-0.032079569995403,0.006607860792428,-0.217924773693085,0.083632990717888,-0.096334561705589));
res += mul(Get(s2,dx,-dy), float4x4(-0.104412160813808,0.064682915806770,-0.021018978208303,0.024688392877579,0.029316674917936,0.135469511151314,-0.075260818004608,-0.066922612488270,-0.030912248417735,-0.021756734699011,-0.219050899147987,0.126818925142288,0.058189906179905,0.113611459732056,-0.060650091618299,-0.093605861067772));
res += mul(Get(s2,dx,0), float4x4(0.014822829514742,-0.150722026824951,-0.110036402940750,0.074706293642521,-0.001361238653772,-0.021798206493258,0.051670625805855,0.130878165364265,0.053185205906630,0.071344651281834,0.131661757826805,-0.023819237947464,0.052051175385714,0.049502976238728,-0.053962521255016,0.098776087164879));
res += mul(Get(s2,dx,dy), float4x4(0.100154563784599,0.182530283927917,0.050034202635288,-0.003706591436639,0.341751575469971,-0.014319203794003,0.009079179726541,-0.068276077508926,0.022939214482903,0.057544577866793,0.085093759000301,0.060710061341524,0.012855850160122,-0.166070282459259,-0.153657302260399,-0.294328629970551));
res += mul(Get(s3,-dx,-dy), float4x4(0.252893477678299,0.084806762635708,0.009704112075269,0.040677290409803,-0.086045585572720,-0.077998988330364,-0.080109678208828,-0.000673111469951,-0.262700438499451,-0.239057734608650,-0.019983159378171,0.061336450278759,0.059231959283352,0.016427297145128,0.128391891717911,-0.087744280695915));
res += mul(Get(s3,-dx,0), float4x4(0.016556512564421,0.057246215641499,0.222688823938370,-0.045226432383060,0.007567375432700,-0.137672469019890,-0.030869517475367,0.110086418688297,-0.029966376721859,-0.144911855459213,0.020976359024644,-0.040299046784639,-0.126679703593254,-0.032097708433867,0.009390682913363,0.104046590626240));
res += mul(Get(s3,-dx,dy), float4x4(0.048407487571239,-0.004502895753831,0.138066828250885,-0.026638602837920,0.036648035049438,0.108761250972748,-0.091221660375595,-0.008610242046416,-0.041922722011805,0.231527581810951,0.271575152873993,0.147525385022163,-0.109143905341625,-0.270491898059845,-0.093341745436192,0.095421262085438));
res += mul(Get(s3,0,-dy), float4x4(0.059188947081566,0.061791740357876,0.053478360176086,0.157509714365005,-0.061855498701334,-0.080125249922276,0.023581968620420,0.073940970003605,0.166646346449852,0.065036378800869,-0.066146403551102,0.006302374415100,-0.125494942069054,-0.033029813319445,0.220849052071571,0.050639618188143));
res += mul(Get(s3,0,0), float4x4(0.051269881427288,0.076778218150139,0.010513982735574,0.124806180596352,-0.020819550380111,-0.000845506845508,-0.058371800929308,-0.122759819030762,0.075971677899361,0.313522666692734,0.041605461388826,0.005108880344778,0.046720042824745,0.042612031102180,0.058664225041866,0.005338927265257));
res += mul(Get(s3,0,dy), float4x4(0.127452522516251,0.040607690811157,-0.028629513457417,-0.052547387778759,-0.123323746025562,0.067952521145344,-0.135794728994370,0.018125431612134,-0.103542119264603,-0.033050175756216,-0.048006515949965,0.073106870055199,-0.214257910847664,-0.088723175227642,-0.083513572812080,-0.020815158262849));
res += mul(Get(s3,dx,-dy), float4x4(0.082767426967621,-0.034039326012135,-0.028679482638836,0.093683667480946,-0.019240118563175,0.134478032588959,0.131906792521477,-0.100795224308968,0.035726539790630,-0.071191586554050,-0.045068278908730,0.019547600299120,-0.109412766993046,-0.119708150625229,-0.063000790774822,0.036500703543425));
res += mul(Get(s3,dx,0), float4x4(-0.015039758756757,-0.291963666677475,0.058030955493450,0.039078719913960,-0.059054650366306,-0.128822594881058,0.021539688110352,-0.001496231649071,0.188486933708191,-0.053749240934849,-0.050701521337032,0.078698486089706,0.002072150353342,-0.047016553580761,-0.060625698417425,-0.060996063053608));
res += mul(Get(s3,dx,dy), float4x4(0.278240114450455,-0.019561599940062,0.080429263412952,0.038792748004198,0.131742820143700,0.135045006871223,-0.135656133294106,0.028474733233452,0.148672208189964,0.062883667647839,0.060284145176411,-0.011388175189495,-0.076214432716370,0.027100645005703,-0.152114838361740,-0.099162049591541));
return max(float4(0,0,0,0), res);
}
