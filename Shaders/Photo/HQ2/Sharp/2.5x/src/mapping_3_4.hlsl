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
res += mul(Get(s0,-dx,-dy), float4x4(0.210154771804810,0.032209981232882,-0.060572642832994,0.005355725064874,0.067012630403042,0.081018857657909,-0.044982992112637,-0.046346057206392,0.079849340021610,0.162272199988365,-0.012439282611012,-0.268411397933960,-0.032626960426569,-0.016427235677838,0.091872416436672,0.123402498662472));
res += mul(Get(s0,-dx,0), float4x4(-0.047112587839365,-0.140663653612137,-0.073130592703819,0.105788208544254,0.085991531610489,0.000791710743215,0.060745179653168,0.176933556795120,0.132555261254311,-0.091466493904591,-0.097517557442188,-0.102571658790112,0.048462931066751,-0.089477479457855,-0.184358820319176,0.139366418123245));
res += mul(Get(s0,-dx,dy), float4x4(-0.032482117414474,-0.057673465460539,0.041877020150423,0.144603937864304,0.091457016766071,0.036952681839466,0.031115178018808,-0.113430380821228,-0.062059551477432,0.029322801157832,0.041895773261786,-0.171231254935265,0.090846240520477,-0.112183354794979,-0.112817361950874,-0.044858966022730));
res += mul(Get(s0,0,-dy), float4x4(0.057651866227388,0.099868327379227,-0.063094362616539,0.085942238569260,0.013922173529863,-0.056212749332190,0.035181611776352,-0.038612432777882,-0.074652850627899,-0.130564108490944,-0.109566345810890,0.062771514058113,0.111005723476410,-0.122419014573097,-0.061989240348339,-0.063577413558960));
res += mul(Get(s0,0,0), float4x4(-0.172801479697227,-0.115852676331997,0.177726879715919,-0.175873145461082,-0.139284238219261,-0.013155531138182,-0.040253594517708,-0.115310102701187,0.085859112441540,0.059159584343433,0.169088810682297,0.099289029836655,0.021774549037218,0.038347613066435,-0.019359057769179,-0.107232451438904));
res += mul(Get(s0,0,dy), float4x4(-0.051295105367899,-0.021952236071229,-0.023337319493294,0.120496563613415,-0.157714203000069,0.081106245517731,-0.014999894425273,0.050728268921375,-0.086214900016785,0.001181279658340,0.093879088759422,-0.217515870928764,-0.107671022415161,0.030429664999247,-0.124749593436718,0.049504190683365));
res += mul(Get(s0,dx,-dy), float4x4(-0.061111088842154,-0.095493391156197,-0.138783916831017,0.109300471842289,0.005260838661343,-0.126958087086678,-0.012624738737941,0.035820152610540,0.225738778710365,-0.102221339941025,-0.115959972143173,-0.172899335622787,0.002279624808580,-0.078865736722946,0.070816718041897,0.071399100124836));
res += mul(Get(s0,dx,0), float4x4(0.107552617788315,-0.100101560354233,0.048179201781750,0.008026688359678,0.164143949747086,-0.075168512761593,-0.010204396210611,-0.065874315798283,0.078165382146835,0.042267128825188,0.154338911175728,-0.054316751658916,-0.147020384669304,0.074299953877926,-0.038949582725763,-0.156864732503891));
res += mul(Get(s0,dx,dy), float4x4(0.054948553442955,-0.094070233404636,0.094421915709972,0.217618718743324,0.083971597254276,0.101332932710648,-0.138626798987389,-0.144050806760788,-0.076804734766483,0.113025926053524,0.061519641429186,0.072993405163288,0.046169072389603,-0.108162537217140,0.000291602453217,-0.016564078629017));
res += mul(Get(s1,-dx,-dy), float4x4(0.060233689844608,0.147378340363503,-0.052733939141035,-0.054651349782944,0.007815573364496,0.066238485276699,0.070222727954388,-0.083680830895901,-0.056466523557901,0.068093374371529,0.085703432559967,-0.022142333909869,-0.136277407407761,-0.077912323176861,0.159404844045639,-0.027069583535194));
res += mul(Get(s1,-dx,0), float4x4(0.016030475497246,-0.209612905979156,-0.006652790121734,0.057761002331972,0.030185444280505,0.116275340318680,-0.118115037679672,-0.185977667570114,-0.123270682990551,0.066614747047424,0.082157470285892,0.220084741711617,0.028997004032135,0.001501002116129,0.105128064751625,-0.129247248172760));
res += mul(Get(s1,-dx,dy), float4x4(-0.092037916183472,-0.027763655409217,0.138825669884682,0.113431073725224,0.068758018314838,-0.037544623017311,0.110346846282482,-0.074599832296371,0.109218835830688,-0.144145905971527,-0.016020631417632,0.100825600326061,0.099450379610062,0.039793714880943,0.016582438722253,0.201395735144615));
res += mul(Get(s1,0,-dy), float4x4(0.127781987190247,0.074818141758442,-0.183132767677307,0.117980070412159,-0.042071256786585,0.137882396578789,0.039412759244442,0.148985117673874,0.055436957627535,-0.151642948389053,0.155382439494133,-0.246181368827820,-0.004023719113320,0.008076724596322,-0.149542033672333,-0.016009798273444));
res += mul(Get(s1,0,0), float4x4(0.104486778378487,0.002005424117669,-0.094934366643429,0.046818591654301,0.157271519303322,0.037905644625425,0.062215164303780,0.031445126980543,0.236949086189270,0.129964500665665,0.030711693689227,-0.096475377678871,-0.062001574784517,0.011795886792243,-0.047592166811228,0.227777436375618));
res += mul(Get(s1,0,dy), float4x4(-0.060355987399817,0.005077773239464,-0.046686086803675,-0.041555877774954,0.039667718112469,-0.154212549328804,0.001813314040191,-0.030448928475380,-0.031866122037172,0.079603202641010,-0.025294467806816,-0.006861635483801,-0.031566042453051,0.013671361841261,0.036350186914206,-0.096101514995098));
res += mul(Get(s1,dx,-dy), float4x4(-0.137492865324020,-0.050299938768148,0.057960733771324,-0.046695817261934,-0.076867520809174,-0.051839552819729,-0.092932373285294,0.026785871013999,0.045990258455276,0.038500104099512,0.011290266178548,0.047823708504438,-0.200782299041748,0.107017375528812,-0.058388356119394,-0.021455954760313));
res += mul(Get(s1,dx,0), float4x4(0.094363160431385,0.194021463394165,-0.100032404065132,-0.116329990327358,-0.051101509481668,-0.020178448408842,-0.148074865341187,0.047178830951452,0.011469724588096,0.150179684162140,-0.072090640664101,-0.030229749158025,0.123233079910278,-0.273954451084137,0.124016672372818,-0.127336055040359));
res += mul(Get(s1,dx,dy), float4x4(0.068859115242958,-0.045948341488838,-0.050563856959343,0.114696152508259,0.140525445342064,0.055903691798449,0.019329814240336,0.050445754081011,0.056649878621101,0.178419932723045,0.078480824828148,-0.007842381484807,0.042928580194712,-0.002779904054478,0.062620066106319,-0.087828412652016));
res += mul(Get(s2,-dx,-dy), float4x4(0.026764791458845,-0.025997325778008,-0.151444360613823,0.080600716173649,-0.110475167632103,-0.020405650138855,0.005332936998457,0.022460952401161,-0.023503836244345,0.007154325488955,-0.135682314634323,0.012710889801383,-0.082805067300797,-0.056519489735365,0.024867400527000,-0.084881953895092));
res += mul(Get(s2,-dx,0), float4x4(0.059332806617022,-0.049660880118608,0.047245118767023,0.051735255867243,0.069105207920074,-0.110853299498558,-0.101034529507160,-0.160953253507614,-0.024413768202066,-0.026448197662830,0.120228156447411,-0.047373160719872,-0.008130802772939,-0.048295516520739,-0.134616583585739,-0.099863305687904));
res += mul(Get(s2,-dx,dy), float4x4(0.027564212679863,0.010273229330778,0.036439992487431,-0.102123945951462,0.120578214526176,-0.122937738895416,-0.114285282790661,-0.070570237934589,0.230310827493668,0.038925599306822,-0.007869864813983,0.045642260462046,0.068560734391212,0.175786212086678,-0.007270284462720,0.040748246014118));
res += mul(Get(s2,0,-dy), float4x4(0.143808007240295,0.043888811022043,0.204662829637527,-0.000961189274676,-0.212853491306305,0.050866890698671,0.030215095728636,-0.121619589626789,-0.004886880051345,0.077711991965771,0.119734056293964,0.099598258733749,0.205219671130180,0.045760400593281,0.034539397805929,0.164233505725861));
res += mul(Get(s2,0,0), float4x4(-0.107964560389519,-0.039507027715445,0.067929126322269,-0.068907871842384,-0.014720388688147,0.005079796072096,-0.077326506376266,0.138787552714348,0.029083717614412,-0.031294625252485,-0.064911581575871,-0.111766509711742,-0.026377266272902,0.036903154104948,-0.008786503225565,-0.035325728356838));
res += mul(Get(s2,0,dy), float4x4(-0.007924718782306,-0.009505258873105,0.055380880832672,0.060512945055962,-0.162604987621307,0.128013178706169,0.172418609261513,-0.016756584867835,-0.028464278206229,-0.000266998395091,0.060358613729477,-0.104290150105953,0.059785477817059,0.027549585327506,0.027784423902631,0.108988791704178));
res += mul(Get(s2,dx,-dy), float4x4(0.129468441009521,-0.168804123997688,-0.206860452890396,-0.076023116707802,-0.096376448869705,0.048273280262947,0.192726463079453,0.025466969236732,0.067644774913788,-0.086528792977333,0.032663613557816,0.028268711641431,-0.045525692403316,0.038498938083649,0.106200695037842,0.142038270831108));
res += mul(Get(s2,dx,0), float4x4(0.023897649720311,-0.115576319396496,-0.053457207977772,0.144768297672272,0.106964692473412,-0.119967818260193,-0.032278507947922,-0.146477550268173,-0.077928625047207,0.106267206370831,-0.000236254767515,-0.034321118146181,0.007253672927618,0.040393739938736,-0.130491763353348,0.097657293081284));
res += mul(Get(s2,dx,dy), float4x4(0.085485294461250,-0.044432889670134,-0.172110274434090,-0.164180621504784,0.124694213271141,-0.221812218427658,0.019845962524414,-0.094425588846207,0.006791469641030,-0.007474542595446,-0.040303125977516,-0.006314930971712,0.268765926361084,-0.007635509595275,-0.143852338194847,0.145784810185432));
res += mul(Get(s3,-dx,-dy), float4x4(0.020422918722034,0.168188601732254,-0.060565657913685,0.034395638853312,-0.024958441033959,-0.182211488485336,0.049137942492962,0.037859469652176,-0.091223910450935,0.052942711859941,0.141951695084572,0.029797311872244,-0.072505347430706,0.013962782919407,-0.016904888674617,-0.167615637183189));
res += mul(Get(s3,-dx,0), float4x4(-0.063800901174545,-0.024838559329510,0.051410648971796,-0.159625664353371,0.068702988326550,0.090571060776711,0.122710391879082,0.171104669570923,0.076605714857578,-0.021438585594296,-0.095020070672035,-0.066702097654343,0.011467617005110,-0.303689509630203,-0.042079530656338,0.015674233436584));
res += mul(Get(s3,-dx,dy), float4x4(0.095117583870888,-0.083213612437248,0.029271429404616,-0.085704348981380,0.059713065624237,-0.018201611936092,0.000758225796744,-0.025196464732289,-0.033952992409468,-0.155087277293205,-0.039531115442514,0.054993100464344,-0.096414759755135,-0.090921849012375,0.048537563532591,0.080176852643490));
res += mul(Get(s3,0,-dy), float4x4(0.107922367751598,-0.041908379644156,-0.031165137887001,-0.013205544091761,-0.078986227512360,-0.002868421841413,0.122484371066093,0.071051515638828,-0.004921020008624,-0.053131598979235,0.019706545397639,-0.066730722784996,-0.007963946089149,-0.144294291734695,0.029787525534630,-0.103189326822758));
res += mul(Get(s3,0,0), float4x4(-0.125449597835541,0.113882303237915,0.079552456736565,-0.140170097351074,0.058278691023588,0.088728010654449,0.001569850021042,-0.134996026754379,-0.019656211137772,0.287350594997406,-0.036849990487099,0.024169767275453,0.096005111932755,-0.021120099350810,-0.193680569529533,-0.018419519066811));
res += mul(Get(s3,0,dy), float4x4(-0.060005899518728,0.075066290795803,0.224413827061653,-0.054622747004032,-0.090596124529839,-0.042703572660685,0.045070905238390,-0.089573979377747,0.068358652293682,0.048574171960354,-0.044634386897087,0.033816665410995,-0.005380433984101,0.105344511568546,-0.030400503426790,0.122465588152409));
res += mul(Get(s3,dx,-dy), float4x4(-0.048825100064278,0.112545795738697,-0.118219852447510,0.130001336336136,0.051666278392076,0.030199345201254,0.107284545898438,0.041283942759037,0.170675799250603,0.020753210410476,0.071425572037697,0.143534988164902,0.116214863955975,0.050549380481243,-0.103135168552399,0.166552692651749));
res += mul(Get(s3,dx,0), float4x4(-0.010847033001482,-0.025118183344603,-0.083669528365135,-0.072144441306591,-0.040303397923708,-0.081492476165295,0.056148692965508,0.044248905032873,0.093902163207531,-0.041390135884285,-0.052485033869743,-0.109589025378227,-0.049247112125158,-0.043736618012190,0.014940250664949,0.003028081264347));
res += mul(Get(s3,dx,dy), float4x4(0.018684817478061,0.011818950064480,-0.173428341746330,0.019527703523636,0.069001965224743,-0.065623849630356,0.034885067492723,-0.044358965009451,0.011128313839436,-0.180010229349136,0.040462285280228,0.018990084528923,0.044251993298531,-0.161019280552864,-0.069817855954170,0.149210095405579));
res = max(float4(0,0,0,0), res);
return res;
}
