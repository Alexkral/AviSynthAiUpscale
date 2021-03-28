sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
sampler s4 : register(s4);
sampler s5 : register(s5);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.034541830420494,-0.083384037017822,-0.124072059988976,-0.090209878981113);
res += mul(Get(s0,-dx,-dy), float4x4(-0.035131774842739,0.005852057598531,-0.033589012920856,-0.045026607811451,-0.018486173823476,-0.023255232721567,-0.051778312772512,0.053492370992899,0.107692904770374,0.015364193357527,0.023818440735340,-0.042332109063864,-0.064069285988808,0.064305804669857,-0.037069261074066,0.009043117053807));
res += mul(Get(s0,-dx,0), float4x4(-0.098565652966499,-0.007850238122046,-0.021049136295915,-0.018692355602980,0.025835091248155,0.011990766040981,0.079367265105247,-0.027878932654858,-0.020031023770571,0.022111106663942,0.041403707116842,-0.019986936822534,0.034561827778816,-0.044286899268627,-0.050304148346186,-0.007017261814326));
res += mul(Get(s0,-dx,dy), float4x4(-0.032465592026711,-0.265544921159744,0.007763286586851,-0.057924721390009,0.023035554215312,0.054046638309956,0.010789792984724,-0.009409972466528,-0.037186548113823,0.016456101089716,0.001702267676592,0.004489643033594,0.010080173611641,-0.116121336817741,-0.025904826819897,-0.060725472867489));
res += mul(Get(s0,0,-dy), float4x4(0.069254808127880,-0.057649433612823,-0.035777401179075,-0.084020540118217,0.134554341435432,0.124176055192947,-0.016876891255379,-0.135245934128761,0.060924727469683,0.055679261684418,-0.053235907107592,0.055546667426825,0.124329492449760,0.103237085044384,0.051198519766331,-0.077614679932594));
res += mul(Get(s0,0,0), float4x4(0.051461372524500,-0.183122962713242,0.106641151010990,-0.003045839490369,0.001325140241534,0.121241673827171,-0.045771915465593,0.090030208230019,0.213910907506943,-0.077214479446411,0.079698227345943,0.165222376585007,0.082656733691692,-0.239345505833626,-0.079595908522606,0.065394349396229));
res += mul(Get(s0,0,dy), float4x4(-0.132292598485947,0.079532444477081,0.042735107243061,0.102946311235428,0.049212526530027,-0.107711270451546,0.000818837550469,0.021445369347930,0.031526692211628,-0.004868875723332,-0.031627804040909,-0.054084423929453,-0.093969777226448,0.077853724360466,-0.033046368509531,0.088465817272663));
res += mul(Get(s0,dx,-dy), float4x4(-0.016022628173232,0.009206087328494,0.069933958351612,0.080118343234062,-0.049153018742800,0.058700099587440,0.114498957991600,0.165804922580719,-0.020431088283658,-0.014150009490550,0.031096087768674,-0.006347834132612,-0.041308514773846,0.052420336753130,0.089974336326122,0.076030597090721));
res += mul(Get(s0,dx,0), float4x4(-0.004922137595713,0.030232803896070,-0.013442896306515,0.055362399667501,-0.039629630744457,0.104697242379189,-0.110519364476204,-0.111636698246002,0.050918944180012,0.071926660835743,0.007888164371252,0.113449327647686,-0.118278466165066,-0.045410487800837,0.068669639527798,-0.084468387067318));
res += mul(Get(s0,dx,dy), float4x4(0.080713704228401,0.001243497710675,0.030713938176632,0.035262916237116,0.017248466610909,-0.021397413685918,-0.043426956981421,-0.045169774442911,0.032894041389227,0.030111078172922,-0.010383559390903,-0.025196557864547,0.037942461669445,0.053428459912539,-0.016009736806154,-0.104692123830318));
res += mul(Get(s1,-dx,-dy), float4x4(-0.008611174300313,-0.037151105701923,-0.084005586802959,-0.092797033488750,0.013834537006915,-0.037897538393736,0.008144391700625,0.002990423468873,0.122023589909077,-0.030089471489191,0.065071448683739,-0.024383276700974,0.008389104157686,0.010746854357421,-0.034088421612978,-0.028097687289119));
res += mul(Get(s1,-dx,0), float4x4(0.024050962179899,0.048228036612272,-0.010702745988965,0.017516061663628,-0.051328383386135,0.024995099753141,-0.011281104758382,0.003899420145899,-0.128865227103233,-0.046568088233471,0.014496179297566,0.068325512111187,0.024996317923069,0.046797372400761,-0.030042108148336,-0.049067463725805));
res += mul(Get(s1,-dx,dy), float4x4(0.110630184412003,0.020078936591744,-0.007765045389533,-0.082555264234543,0.037163108587265,-0.036611016839743,-0.019483406096697,0.014137199148536,-0.010583089664578,0.152565345168114,0.046932820230722,-0.024456270039082,-0.064810678362846,0.008841275237501,-0.026878163218498,-0.057050298899412));
res += mul(Get(s1,0,-dy), float4x4(0.049647442996502,0.053987644612789,-0.041935428977013,-0.073071278631687,-0.097534447908401,-0.040759615600109,-0.086115725338459,-0.038014855235815,-0.125168457627296,-0.057479694485664,-0.095005594193935,0.057335257530212,-0.041354045271873,-0.075240448117256,-0.015766011551023,0.120673239231110));
res += mul(Get(s1,0,0), float4x4(0.166293397545815,-0.105760201811790,0.006110167130828,-0.066489368677139,-0.061847168952227,0.040878213942051,-0.019306428730488,0.050581436604261,0.142769873142242,0.132451146841049,0.097363740205765,-0.190408259630203,-0.190277159214020,0.073671936988831,-0.061374228447676,-0.089870363473892));
res += mul(Get(s1,0,dy), float4x4(0.014632905833423,0.003476934507489,-0.003811192233115,-0.134296268224716,-0.001163910957985,0.099670983850956,0.077494405210018,0.043714135885239,-0.101366803050041,0.164896667003632,0.067276187241077,0.099219232797623,-0.031956460326910,-0.063956797122955,-0.061247937381268,-0.011464034207165));
res += mul(Get(s1,dx,-dy), float4x4(0.109467297792435,-0.032431595027447,-0.010924955829978,-0.056049033999443,0.051487505435944,0.071514062583447,0.114478506147861,0.077253133058548,-0.014391009695828,-0.101779162883759,-0.071849368512630,-0.002853070851415,0.101487711071968,-0.049353789538145,0.008316442370415,0.026082048192620));
res += mul(Get(s1,dx,0), float4x4(0.092438958585262,-0.010261363349855,-0.213783025741577,0.087643526494503,-0.163712605834007,-0.058262791484594,-0.014556406065822,-0.222195431590080,-0.053159631788731,-0.243995711207390,0.036343507468700,0.008300690911710,0.133105695247650,0.037932787090540,-0.022733375430107,0.034512639045715));
res += mul(Get(s1,dx,dy), float4x4(-0.015858979895711,-0.005488791037351,0.064673073589802,-0.026446044445038,-0.013347715139389,-0.008598687127233,0.009555816650391,0.032389413565397,0.067067429423332,0.222248494625092,-0.127928510308266,0.030040673911572,-0.004885470494628,0.073515348136425,-0.045491900295019,0.053180385380983));
res += mul(Get(s2,-dx,-dy), float4x4(0.068855546414852,-0.022998526692390,-0.012290040962398,-0.093618050217628,0.005378917790949,-0.037719879299402,0.006459118798375,-0.003253722796217,-0.103371061384678,0.026529926806688,-0.097239911556244,-0.039708606898785,0.073090590536594,-0.031949490308762,0.062899678945541,0.035273749381304));
res += mul(Get(s2,-dx,0), float4x4(0.189366206526756,-0.102966688573360,-0.084343999624252,-0.062755376100540,0.113981761038303,0.014335692860186,-0.017023490741849,-0.010017693042755,0.003137724008411,0.062558658421040,0.005780949722975,0.042446181178093,-0.095918677747250,-0.040906280279160,0.041304372251034,-0.042133331298828));
res += mul(Get(s2,-dx,dy), float4x4(0.034245457500219,0.040311742573977,0.002691559027880,-0.001592441112734,-0.010788806714118,-0.001117208390497,0.028759909793735,0.031449355185032,-0.015650946646929,0.025532653555274,-0.015756897628307,0.021836880594492,-0.068907782435417,0.045495577156544,0.005696674808860,0.043321579694748));
res += mul(Get(s2,0,-dy), float4x4(0.015818389132619,0.001489737653174,-0.039154570549726,-0.005904050543904,-0.072715602815151,-0.025788195431232,-0.034995988011360,-0.034218065440655,0.015004819259048,0.173616558313370,0.068560637533665,-0.132269740104675,-0.234540402889252,0.066016070544720,-0.198190569877625,0.030459621921182));
res += mul(Get(s2,0,0), float4x4(0.005673699080944,0.002730646636337,-0.043970424681902,0.025604667142034,0.075215883553028,-0.042888358235359,0.027985449880362,-0.008671202696860,-0.087677091360092,0.319840610027313,-0.091103859245777,0.009701632894576,-0.156612604856491,0.000562827510294,0.099113695323467,0.008401307277381));
res += mul(Get(s2,0,dy), float4x4(-0.017825119197369,-0.113316014409065,0.026643430814147,-0.086291469633579,0.037522118538618,-0.093843802809715,0.059843003749847,-0.065427348017693,0.067162826657295,-0.116163544356823,0.065012805163860,-0.027672993019223,0.123666889965534,-0.059059850871563,0.009766311384737,-0.081371605396271));
res += mul(Get(s2,dx,-dy), float4x4(-0.069586232304573,-0.015414439141750,0.008122743107378,0.053692102432251,-0.043503940105438,0.009939613752067,-0.088512770831585,0.009220134466887,-0.084729105234146,0.077611997723579,-0.101615898311138,0.009370387531817,0.040291778743267,0.077766753733158,0.062675945460796,-0.060486234724522));
res += mul(Get(s2,dx,0), float4x4(-0.086554400622845,-0.020018577575684,0.084880448877811,-0.054109483957291,-0.054460745304823,-0.031148670241237,0.198349431157112,0.000744044664316,0.078956030309200,0.052982553839684,-0.002849508076906,-0.000744353863411,0.169077694416046,-0.055258683860302,-0.248425304889679,0.002540669171140));
res += mul(Get(s2,dx,dy), float4x4(-0.044619794934988,0.015142723917961,-0.029318535700440,-0.059839237481356,-0.051602296531200,-0.016931515187025,-0.088224567472935,-0.029617574065924,-0.068823479115963,0.009808029979467,0.031703066080809,-0.024475403130054,0.003077350324020,-0.083925522863865,0.070185437798500,-0.008211125619709));
res += mul(Get(s3,-dx,-dy), float4x4(-0.101185023784637,-0.042369201779366,-0.010801842436194,0.003088173223659,-0.012323891744018,0.010898131877184,-0.112694911658764,-0.156950071454048,-0.012364639900625,-0.074105121195316,-0.004771224223077,-0.032477032393217,-0.010719174519181,0.043359342962503,-0.010268311016262,0.025773691013455));
res += mul(Get(s3,-dx,0), float4x4(0.139230623841286,0.073838844895363,0.110883086919785,0.190711155533791,0.138948217034340,0.008932853117585,-0.003442871384323,0.184466376900673,-0.070436783134937,-0.043569467961788,-0.005534063093364,0.021939244121313,-0.008943649008870,-0.054664067924023,0.080251567065716,-0.013898593373597));
res += mul(Get(s3,-dx,dy), float4x4(0.059575568884611,0.017184281721711,-0.019666824489832,0.085570357739925,0.015132170170546,-0.021406183019280,0.026986710727215,-0.072718851268291,-0.049896609038115,0.042735241353512,0.049936376512051,0.052037768065929,0.023851146921515,-0.027210306376219,-0.065086975693703,-0.013610606081784));
res += mul(Get(s3,0,-dy), float4x4(-0.022651333361864,0.005591928958893,-0.010228526778519,0.007935045287013,-0.122424423694611,0.037547744810581,0.090766809880733,0.134974464774132,-0.226319760084152,0.081854067742825,-0.081834055483341,-0.288834005594254,0.004224325530231,-0.041475936770439,0.102272175252438,-0.110786974430084));
res += mul(Get(s3,0,0), float4x4(-0.062449179589748,-0.020898113027215,0.090518154203892,-0.367919296026230,-0.145074158906937,0.080722153186798,0.148806497454643,-0.236608251929283,0.020646955817938,-0.228875458240509,0.114318668842316,0.022177133709192,0.081438444554806,-0.006636591628194,-0.047485932707787,-0.022507319226861));
res += mul(Get(s3,0,dy), float4x4(0.062886960804462,0.111319631338120,0.048331957310438,0.135451927781105,-0.013717625290155,0.000373228045646,-0.084063373506069,-0.022526502609253,0.036612737923861,0.073621056973934,-0.008692939765751,0.038839947432280,-0.034978438168764,-0.079980574548244,0.007355278823525,-0.021159613505006));
res += mul(Get(s3,dx,-dy), float4x4(0.026431499049067,-0.006739991717041,0.050516251474619,-0.064308427274227,-0.053745817393064,-0.000911850424018,-0.053365435451269,-0.088101409375668,0.125378251075745,0.030927030369639,-0.153832361102104,0.014031658880413,0.013507837429643,-0.062249824404716,-0.194629654288292,0.048956371843815));
res += mul(Get(s3,dx,0), float4x4(0.101521342992783,-0.073870085179806,-0.210162043571472,-0.029189534485340,-0.006921562366188,-0.005531369242817,-0.082226373255253,-0.102609917521477,0.059186954051256,-0.059337943792343,-0.014852547086775,0.005003734491765,-0.038223519921303,-0.098577998578548,0.144269734621048,0.095752961933613));
res += mul(Get(s3,dx,dy), float4x4(0.016971487551928,0.033527426421642,0.071147054433823,0.039848700165749,0.004234471358359,-0.065578654408455,-0.021207721903920,0.024958306923509,0.026017257943749,-0.003304916433990,-0.017829913645983,0.026341490447521,0.007916739210486,-0.074584521353245,-0.049131911247969,-0.068154841661453));
res += mul(Get(s4,-dx,-dy), float4x4(-0.088757000863552,0.029303671792150,-0.017475590109825,0.041823457926512,-0.001700274879113,0.009241940453649,0.126965075731277,0.171711176633835,0.060724157840014,0.079334907233715,0.007486912887543,0.029662694782019,0.040796887129545,0.036224074661732,0.016505265608430,-0.034267649054527));
res += mul(Get(s4,-dx,0), float4x4(0.011520141735673,-0.038914639502764,0.061433985829353,-0.056399840861559,0.019121484830976,-0.045807894319296,-0.102011092007160,-0.013907419517636,0.124193690717220,-0.006936449557543,0.052389405667782,-0.015939759090543,0.051143169403076,-0.126554504036903,0.017407594248652,0.061540883034468));
res += mul(Get(s4,-dx,dy), float4x4(0.043302599340677,-0.071499817073345,-0.059233527630568,-0.045164447277784,0.057562317699194,0.055392719805241,-0.010407876223326,0.094433836638927,0.024738976731896,-0.112569183111191,0.077149361371994,-0.100139491260052,0.007388249039650,-0.037866711616516,-0.037497777491808,0.028258413076401));
res += mul(Get(s4,0,-dy), float4x4(0.054043222218752,-0.053578335791826,-0.077361151576042,-0.013124853372574,0.126902431249619,-0.018136993050575,0.212105572223663,0.077464260160923,-0.078173100948334,-0.090586416423321,-0.058420073240995,-0.014793618582189,-0.099898234009743,-0.063982017338276,0.099234692752361,0.098448872566223));
res += mul(Get(s4,0,0), float4x4(0.192022353410721,0.031705915927887,-0.113044187426567,-0.046577166765928,-0.110464490950108,-0.068910099565983,0.088337711989880,0.176904127001762,-0.050254695117474,0.034126196056604,-0.156396985054016,-0.030585948377848,0.160708665847778,0.034865938127041,-0.162742838263512,0.142998307943344));
res += mul(Get(s4,0,dy), float4x4(0.032630596309900,0.031546004116535,0.021286182105541,0.020810715854168,-0.071820072829723,-0.044893577694893,-0.009972985833883,0.000237834421569,0.069778911769390,-0.185818091034889,0.000134218935273,-0.041017856448889,0.004600257612765,0.131233528256416,0.021784087643027,-0.023229792714119));
res += mul(Get(s4,dx,-dy), float4x4(0.142505273222923,-0.106367655098438,-0.140326589345932,0.024818154051900,0.031064879149199,0.022538734599948,-0.029463363811374,-0.074835166335106,0.111104466021061,0.094799764454365,-0.138491719961166,-0.027901403605938,0.032101590186357,-0.049712490290403,0.007373406551778,-0.037140958011150));
res += mul(Get(s4,dx,0), float4x4(-0.007528972811997,-0.028615428134799,0.124350860714912,-0.014938573352993,0.104561299085617,0.019177626818419,0.218284294009209,0.193293869495392,0.047846894711256,-0.068191640079021,-0.053203810006380,-0.010020453482866,-0.030683320015669,-0.105812951922417,0.216414481401443,0.017613749951124));
res += mul(Get(s4,dx,dy), float4x4(0.116122096776962,0.059885032474995,-0.182158678770065,-0.142425626516342,-0.109733060002327,0.009120857343078,0.029416482895613,0.128036797046661,-0.034274261444807,0.093115888535976,-0.024028034880757,-0.040836211293936,-0.048671979457140,-0.058340050280094,-0.013383260928094,-0.059109523892403));
res += mul(Get(s5,-dx,-dy), float4x4(-0.049023736268282,-0.002492767525837,-0.004865074995905,0.010587105527520,0.036771629005671,0.043352887034416,0.096199743449688,-0.027388265356421,0.051192183047533,0.057239878922701,-0.027731958776712,-0.046420428901911,-0.026640754193068,0.063994824886322,0.003913966007531,-0.030629884451628));
res += mul(Get(s5,-dx,0), float4x4(-0.077379696071148,-0.037948083132505,-0.017252959311008,0.115554861724377,-0.176277711987495,0.019761687144637,0.010871739126742,0.016694763675332,0.002885674359277,-0.102718956768513,0.011298058554530,-0.076196707785130,-0.063235200941563,-0.092614144086838,-0.004638256505132,-0.047343295067549));
res += mul(Get(s5,-dx,dy), float4x4(-0.015867220237851,-0.063731066882610,0.009990287013352,-0.041629884392023,-0.012615302577615,0.005272950045764,0.026023019105196,-0.020572440698743,0.006955801043659,0.079407356679440,0.046685386449099,0.016784965991974,-0.021328726783395,-0.028650874271989,0.015448344871402,-0.009238748811185));
res += mul(Get(s5,0,-dy), float4x4(-0.057501211762428,-0.019475363194942,0.070128329098225,0.168989226222038,-0.010777406394482,-0.045561458915472,-0.017115306109190,0.052868183702230,0.008213844150305,0.087778106331825,0.072783455252647,-0.071560896933079,-0.021427245810628,0.084448292851448,0.030256738886237,-0.038869764655828));
res += mul(Get(s5,0,0), float4x4(-0.140450030565262,-0.043458554893732,0.083702504634857,0.023026105016470,0.118484631180763,0.034613601863384,-0.133212730288506,-0.030204733833671,0.089589312672615,-0.140896007418633,0.020869139581919,0.128910735249519,0.053058777004480,-0.124780163168907,0.009224557317793,0.056346546858549));
res += mul(Get(s5,0,dy), float4x4(-0.014641620218754,0.050222251564264,0.053755693137646,-0.004032139200717,0.003895880421624,0.048940110951662,0.044320844113827,0.019840823486447,-0.112483546137810,0.082305908203125,-0.110877193510532,-0.074633553624153,0.080039165914059,-0.070589169859886,0.026507979258895,-0.078088931739330));
res += mul(Get(s5,dx,-dy), float4x4(-0.152302339673042,-0.003609332256019,0.159424796700478,0.091324590146542,-0.004304167348891,0.018055792897940,-0.039185289293528,-0.068894207477570,-0.029823310673237,-0.009397375397384,-0.001654933788814,0.067632198333740,0.001777377561666,0.042877424508333,-0.119342394173145,0.040650393813848));
res += mul(Get(s5,dx,0), float4x4(-0.115901350975037,0.020753433927894,0.013543683104217,-0.008252766914666,0.029744768515229,-0.138952419161797,0.035607535392046,0.018512578681111,-0.042019367218018,-0.012568958103657,-0.026657298207283,-0.064757935702801,0.000507175514940,-0.069735012948513,-0.062460623681545,-0.046619772911072));
res += mul(Get(s5,dx,dy), float4x4(-0.061815287917852,-0.066529445350170,-0.035427678376436,-0.004776497837156,0.013340989127755,-0.024440456181765,-0.082281231880188,-0.087252341210842,0.034070070832968,0.069880306720734,0.000096190211480,-0.074505120515823,-0.049468416720629,0.032591067254543,0.026278205215931,-0.012244922108948));
res = max(float4(0, 0, 0, 0), res) + float4(-0.075685828924179,-0.021378096193075,-0.076370775699615,0.020302696153522) * min(float4(0, 0, 0, 0), res);
return res;
}