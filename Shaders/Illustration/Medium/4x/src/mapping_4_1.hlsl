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
float4 res = float4(0.0523116067051888,0.0200263950973749,-0.0483754314482212,0.0336672700941563);
res += mul(Get(s0,-dx,-dy), float4x4(0.0655260309576988,0.0119943991303444,0.0913385003805161,-0.0328266806900501,0.0015569530660287,0.0021716107148677,0.0270899422466755,0.0197652373462915,0.1516550481319427,0.0113637391477823,-0.0883958488702774,-0.0076719555072486,0.0170119106769562,0.0468012876808643,0.0328623987734318,-0.0256231222301722));
res += mul(Get(s1,-dx,-dy), float4x4(0.0317184142768383,-0.0156127447262406,0.0541541539132595,-0.0023530465550721,0.0027993659023196,-0.0113257896155119,0.0174022167921066,-0.0575719922780991,-0.0526781566441059,-0.0705982893705368,0.0540941730141640,-0.0189531929790974,0.0315577164292336,0.0015188060933724,0.0998019054532051,0.0114919235929847));
res += mul(Get(s2,-dx,-dy), float4x4(0.0065587819553912,0.0058773029595613,-0.0460589714348316,0.0481670200824738,-0.0866210237145424,0.1284131109714508,-0.1442314833402634,0.0608523786067963,0.0240622721612453,-0.0069712703116238,-0.0042802821844816,0.0143958842381835,-0.0830508917570114,0.0050270585343242,0.0081324940547347,0.0064557520672679));
res += mul(Get(s3,-dx,-dy), float4x4(0.0518976636230946,0.0161537062376738,-0.1306616663932800,-0.0185291673988104,0.0030107651837170,0.0078952992334962,0.1460546106100082,0.0446094460785389,-0.0681566148996353,-0.0172895323485136,0.0849398747086525,0.0023545508738607,-0.0096207913011312,0.0006034733960405,0.2109705656766891,-0.0051609105430543));
res += mul(Get(s4,-dx,-dy), float4x4(-0.0898090824484825,-0.1377112418413162,0.1003403291106224,0.0567760653793812,0.0279071889817715,-0.0080387527123094,0.0398257821798325,-0.0037402359303087,0.0233088843524456,-0.0016828286461532,0.0114523414522409,-0.0155703136697412,0.0104495314881206,0.0186671465635300,-0.0305676143616438,0.0270981732755899));
res += mul(Get(s5,-dx,-dy), float4x4(0.0310291983187199,0.0234780181199312,0.0752902254462242,-0.0541596710681915,-0.0523348487913609,-0.0381266623735428,-0.1044506803154945,0.0180946271866560,-0.0129749849438667,-0.0336446873843670,-0.0804779008030891,0.0620104782283306,-0.0289417859166861,-0.0199069809168577,0.0178344398736954,0.0117059992626309));
res += mul(Get(s0,-dx,0), float4x4(0.1119952946901321,-0.0811410844326019,-0.0147390440106392,0.0266217235475779,-0.0190625898540020,-0.0405764989554882,-0.0615637004375458,0.0205106791108847,0.1134820282459259,0.0183164682239294,-0.0418721698224545,-0.0904429256916046,-0.0379967391490936,-0.0809697955846786,0.0100787356495857,-0.0129587762057781));
res += mul(Get(s1,-dx,0), float4x4(0.1377824842929840,-0.0084163723513484,-0.0498673617839813,-0.0282014328986406,-0.1199213787913322,0.0492903850972652,0.0450158901512623,0.1340799778699875,-0.0142460502684116,0.0428704321384430,0.0810377448797226,-0.1339544504880905,0.0487925969064236,0.0027765634004027,-0.1093272641301155,-0.0301319416612387));
res += mul(Get(s2,-dx,0), float4x4(0.0910035818815231,-0.0262351706624031,-0.0717335790395737,-0.0169297512620687,0.0228149034082890,-0.1248283609747887,0.0848819166421890,-0.0210003685206175,-0.0161280073225498,0.0629151910543442,-0.0519134812057018,0.0802155733108521,-0.1364714354276657,-0.0184442382305861,0.0419783890247345,0.1449437886476517));
res += mul(Get(s3,-dx,0), float4x4(0.0041397702880204,-0.0386138893663883,0.1074286177754402,-0.0711912885308266,-0.0290117450058460,0.1955665946006775,-0.1486786454916000,-0.0181279890239239,0.0225461497902870,0.0230378638952971,0.0277546253055334,-0.0268640480935574,-0.0692753791809082,0.0526214726269245,-0.1786333173513412,0.0816227570176125));
res += mul(Get(s4,-dx,0), float4x4(0.0069283936172724,0.0655266121029854,-0.1867592930793762,0.0135093647986650,-0.0481736771762371,-0.0406475812196732,0.0352408476173878,0.0806349739432335,-0.1131952330470085,0.0119393374770880,-0.0039531514048576,0.0587615631520748,-0.0739796534180641,0.1153187379240990,0.0201547499746084,0.0298395138233900));
res += mul(Get(s5,-dx,0), float4x4(0.0647716596722603,-0.0609374009072781,-0.0707098469138145,0.0029244187753648,0.1222320348024368,-0.1610668450593948,0.0944727212190628,-0.1171188503503799,0.0632779151201248,-0.0485740043222904,0.1686815023422241,-0.0587334297597408,0.0891807898879051,-0.0916181504726410,-0.2065142691135406,-0.0869149044156075));
res += mul(Get(s0,-dx,dy), float4x4(-0.0653307959437370,0.0368683636188507,0.0427681915462017,0.0066034998744726,0.0358335152268410,0.0300924964249134,-0.0280672274529934,-0.0716010704636574,-0.1077857762575150,-0.0401178486645222,0.0300180744379759,0.0188579224050045,0.0086642894893885,0.0453233681619167,-0.0122921327129006,0.0022241796832532));
res += mul(Get(s1,-dx,dy), float4x4(-0.0126388790085912,0.0356489494442940,0.0284386109560728,0.0019319237908348,0.0623028501868248,-0.0174768771976233,-0.2869687080383301,-0.1059613376855850,-0.0393635593354702,0.0247171744704247,0.1845945268869400,0.0631790459156036,0.0132934432476759,-0.0232337825000286,0.1442528218030930,-0.0056688566692173));
res += mul(Get(s2,-dx,dy), float4x4(-0.0486519820988178,0.0071210060268641,-0.1479611843824387,-0.0335108190774918,-0.0144204236567020,0.0067132785916328,-0.1046945378184319,0.0450157821178436,-0.0090995160862803,0.0203066430985928,-0.2548824548721313,-0.0002182004245697,0.0048411530442536,-0.0007267162436619,0.0116042066365480,-0.0313798710703850));
res += mul(Get(s3,-dx,dy), float4x4(-0.0686651691794395,-0.0230651702731848,0.0143950488418341,0.0364987701177597,0.0347951762378216,0.0554613731801510,-0.0337987318634987,0.0120296226814389,-0.0188396461308002,0.0176523476839066,0.1183952987194061,-0.0092504220083356,0.0934728235006332,0.0485312640666962,-0.0056898309849203,-0.0860656723380089));
res += mul(Get(s4,-dx,dy), float4x4(-0.0175648834556341,-0.0168895889073610,0.0842746123671532,-0.0452130325138569,0.0036853016354144,-0.0397791564464569,-0.0713740363717079,-0.0088275084272027,-0.0367238074541092,0.0153199061751366,0.0349583253264427,0.0131490547209978,-0.0195399094372988,-0.0125017724931240,-0.0015536472201347,0.0066182198934257));
res += mul(Get(s5,-dx,dy), float4x4(-0.0203467719256878,0.0223753042519093,0.1031571179628372,0.0353733040392399,-0.0497967600822449,0.0577604584395885,0.0992300212383270,-0.0066751036792994,-0.0766487866640091,0.0111199216917157,-0.0220610294491053,0.0097849955782294,0.0083587924018502,0.0063538472168148,0.1384477764368057,-0.0128063755109906));
res += mul(Get(s0,0,-dy), float4x4(0.0149433854967356,0.0776048898696899,0.1370686292648315,-0.0000325039218296,-0.0157535783946514,0.0015627410029992,0.0096503933891654,-0.0039860820397735,-0.1008286252617836,0.0374208725988865,0.1123947426676750,0.0224088709801435,0.0388458408415318,-0.0827417299151421,-0.2162472605705261,0.0502823069691658));
res += mul(Get(s1,0,-dy), float4x4(-0.0216511469334364,-0.0551018789410591,-0.1967200934886932,0.1407527327537537,-0.0316238291561604,-0.0624722726643085,0.0624435022473335,0.0235591661185026,0.0138682955875993,-0.0921275243163109,0.1442170888185501,-0.0713531747460365,0.0383975021541119,0.1236462369561195,0.1493175178766251,-0.0656206235289574));
res += mul(Get(s2,0,-dy), float4x4(-0.0196528974920511,-0.0338396839797497,0.0102183399721980,0.0728018879890442,-0.0112721761688590,-0.1397156566381454,0.4314150810241699,-0.0705634951591492,0.0460163652896881,0.0174649953842163,-0.1114220619201660,0.0674448236823082,0.0985979959368706,-0.0109428828582168,-0.0821128040552139,-0.0108143948018551));
res += mul(Get(s3,0,-dy), float4x4(-0.0847977027297020,-0.0723930075764656,-0.2102790027856827,0.0478139147162437,-0.0919350758194923,0.0231692604720592,0.1461811810731888,0.0861674100160599,-0.0773380920290947,0.0046007139608264,0.2604938149452209,-0.0398978367447853,-0.0124667929485440,0.0203519612550735,-0.0076034641824663,0.0300853643566370));
res += mul(Get(s4,0,-dy), float4x4(-0.0066421534866095,-0.0243040192872286,0.0542229339480400,0.0339557416737080,0.0825144425034523,0.0571447722613811,0.1769739836454391,-0.0623860172927380,-0.0499715879559517,0.0437615513801575,0.0270105358213186,-0.0191372931003571,-0.0929680764675140,0.0039241104386747,0.0276365727186203,0.0433784984052181));
res += mul(Get(s5,0,-dy), float4x4(0.1026073470711708,-0.0525928735733032,-0.2640846669673920,0.0433744117617607,0.0727422311902046,-0.0495151206851006,-0.0584218539297581,-0.0033234604634345,0.0213235318660736,-0.0140792485326529,-0.2764793038368225,0.0433148182928562,0.1003717854619026,0.0805894359946251,-0.0703454017639160,0.0878300368785858));
res += mul(Get(s0,0,0), float4x4(-0.0258251987397671,0.0194133091717958,-0.3369010090827942,-0.1433973908424377,-0.1596053242683411,-0.1658432930707932,-0.1199263334274292,-0.0390397459268570,-0.2079476863145828,0.1870516687631607,-0.1100855767726898,0.0505293272435665,0.0314842648804188,0.1564227640628815,0.0001017493341351,-0.3009909987449646));
res += mul(Get(s1,0,0), float4x4(-0.0370655767619610,0.0228518024086952,0.1913183927536011,-0.2442996203899384,0.0523221492767334,0.0990082994103432,-0.0504013001918793,0.0735713168978691,-0.1949556618928909,-0.0336529314517975,-0.0412550047039986,-0.2329576164484024,-0.0285006798803806,0.1287965178489685,-0.0002574061800260,0.1641105860471725));
res += mul(Get(s2,0,0), float4x4(-0.1271310001611710,-0.0150117073208094,-0.0527646318078041,-0.0381213016808033,0.0378250777721405,0.1095446571707726,-0.3456086218357086,0.1541604250669479,-0.0048426226712763,0.0547877140343189,-0.0047148098237813,-0.0121720219030976,0.1610961854457855,0.3146764039993286,0.4361420273780823,0.1548949778079987));
res += mul(Get(s3,0,0), float4x4(-0.1078122705221176,-0.0049512740224600,0.1430287361145020,-0.1395982354879379,-0.0566269606351852,-0.1467539370059967,-0.1347254067659378,0.0154901864007115,-0.0522909387946129,0.1079249307513237,-0.1109829321503639,-0.1043311804533005,0.0446398593485355,0.0381560958921909,0.0382982604205608,0.0468014366924763));
res += mul(Get(s4,0,0), float4x4(-0.2212923765182495,0.1134607568383217,-0.0704367458820343,-0.0050401170738041,-0.0386689975857735,0.0387687645852566,0.0275243166834116,0.2410855144262314,0.1409415155649185,0.1745195835828781,0.0242545772343874,0.1791876107454300,-0.1811528205871582,-0.1317681670188904,0.0653204321861267,-0.0392101220786572));
res += mul(Get(s5,0,0), float4x4(0.3453268110752106,0.1164599955081940,0.0436822399497032,-0.2157762944698334,-0.1792952865362167,0.0637127012014389,0.0462358705699444,-0.0070353355258703,-0.0319570042192936,0.1608473211526871,0.2364889681339264,-0.0446748733520508,-0.0076336958445609,-0.1221092119812965,0.1723486483097076,0.0182456318289042));
res += mul(Get(s0,0,dy), float4x4(0.0878117606043816,-0.0729430541396141,0.1860855817794800,0.1182448118925095,-0.0694612264633179,0.0060913483612239,-0.0274521335959435,-0.1060148850083351,0.0173756591975689,-0.0178852658718824,0.0558626689016819,-0.0525725260376930,-0.0878013595938683,0.0402844734489918,0.5839123725891113,0.1620895415544510));
res += mul(Get(s1,0,dy), float4x4(0.0232978686690331,0.0474522262811661,0.0474012084305286,0.1284596771001816,0.0551974698901176,-0.0937155932188034,-0.2160763293504715,-0.0610918216407299,-0.0093101263046265,0.0468210838735104,0.3034517467021942,0.1705983579158783,0.0440525375306606,0.0002840046363417,-0.0544109717011452,-0.0313798747956753));
res += mul(Get(s2,0,dy), float4x4(0.0281962845474482,-0.0076199569739401,-0.0011583270970732,0.0309624355286360,-0.0577345676720142,-0.0321020111441612,0.0287506114691496,-0.1060582920908928,-0.0257623698562384,0.0040117930620909,-0.0791844353079796,0.0729455202817917,-0.0642075538635254,0.1318351477384567,-0.3994514048099518,-0.1660816222429276));
res += mul(Get(s3,0,dy), float4x4(0.0168225672096014,0.0562518760561943,0.0914853364229202,0.0057397824712098,-0.0276732314378023,0.0222173444926739,-0.0779477357864380,-0.0045313490554690,0.0106971161440015,-0.0240326523780823,0.1602996438741684,0.0071330284699798,0.0439611412584782,0.0353328287601471,-0.2886872887611389,0.0703879073262215));
res += mul(Get(s4,0,dy), float4x4(-0.0101273776963353,-0.0653939545154572,-0.2412087917327881,0.0017275236314163,0.0308791734278202,0.0378342159092426,-0.3274556994438171,-0.0943423360586166,0.0100180832669139,-0.0014453905168921,-0.2467039674520493,-0.0207312442362309,-0.0063855419866741,0.0419027656316757,0.1567385494709015,-0.0190788041800261));
res += mul(Get(s5,0,dy), float4x4(0.0339870601892471,-0.0531576611101627,0.0421425104141235,0.1571505516767502,0.0778729245066643,0.0537238195538521,0.3051183521747589,0.0203525517135859,0.0804909467697144,-0.0096725001931190,-0.1286719590425491,0.0187211986631155,-0.0129662454128265,0.0597030520439148,-0.0959780588746071,-0.0230810642242432));
res += mul(Get(s0,dx,-dy), float4x4(0.0068090390414000,-0.0287236645817757,0.0173801183700562,-0.0249955244362354,-0.0188427679240704,0.0069468994624913,0.0163468737155199,0.0306513980031013,-0.0152937108650804,-0.0393654033541679,-0.0545729249715805,0.0265104528516531,-0.0120417783036828,0.0047762324102223,-0.1932677477598190,0.0291326735168695));
res += mul(Get(s1,dx,-dy), float4x4(-0.0211093928664923,-0.0054777730256319,-0.0141193820163608,0.0006302163237706,0.0199158079922199,-0.0202253833413124,-0.0757887810468674,-0.0017057375516742,-0.0125492196530104,0.0228848401457071,0.0645708367228508,-0.0301160868257284,-0.0186005439609289,-0.0391509421169758,0.0684403479099274,-0.0720704868435860));
res += mul(Get(s2,dx,-dy), float4x4(-0.0867079645395279,-0.0974534898996353,-0.0214908104389906,0.0641483440995216,-0.0158398710191250,0.1127531081438065,0.1895470023155212,0.0061209518462420,0.0029376619495451,0.0227508507668972,-0.0847660750150681,0.0171016994863749,-0.0344949625432491,0.0269688740372658,-0.0097877541556954,0.0178241822868586));
res += mul(Get(s3,dx,-dy), float4x4(-0.0373421534895897,-0.0508423559367657,-0.0697865411639214,0.0122017320245504,0.1040052324533463,-0.0493113584816456,-0.0636569485068321,0.0285643655806780,0.0001515796175227,0.0558028630912304,0.0554766319692135,0.0165852028876543,0.0492345876991749,0.1011547148227692,-0.2778023183345795,0.0998861268162727));
res += mul(Get(s4,dx,-dy), float4x4(-0.0287088770419359,0.0514317266643047,0.0640957653522491,-0.0187638420611620,0.0109036657959223,-0.0065464619547129,0.0515507310628891,-0.0389881320297718,0.0040477956645191,-0.0148814460262656,-0.0252947956323624,0.0027675614692271,0.0537536069750786,-0.0169677287340164,0.0166314356029034,0.0019110203720629));
res += mul(Get(s5,dx,-dy), float4x4(-0.0511658079922199,0.0087331552058458,-0.0331789031624794,0.0043007717467844,-0.0136362621560693,0.0850365757942200,0.0065627484582365,-0.0219222288578749,-0.0217208955436945,-0.0373389013111591,0.0145602002739906,-0.0481790564954281,-0.0225583780556917,-0.0175584368407726,0.0027114320546389,-0.0009021293371916));
res += mul(Get(s0,dx,0), float4x4(-0.1324062794446945,0.0747582837939262,-0.1438292562961578,-0.0849302932620049,-0.0701023414731026,-0.0537394881248474,-0.1122869327664375,0.0439558029174805,0.1456247866153717,-0.0711744502186775,-0.0297683198004961,0.0297016892582178,-0.0262220017611980,0.0304535944014788,0.0311045739799738,-0.1190581545233727));
res += mul(Get(s1,dx,0), float4x4(-0.0057875616475940,-0.0076029375195503,-0.0568905957043171,-0.0012429791968316,-0.1112927496433258,0.0424180105328560,-0.0065069962292910,-0.0091643566265702,-0.0970911830663681,-0.0341426655650139,0.1321935057640076,-0.0168181527405977,0.1319737434387207,0.0162873808294535,0.0474766343832016,-0.0413544550538063));
res += mul(Get(s2,dx,0), float4x4(-0.0138395652174950,-0.0924488455057144,0.0251925606280565,0.0651698186993599,-0.0209524892270565,0.0244288668036461,-0.2512365877628326,-0.0223716963082552,-0.0117485560476780,0.0815790742635727,-0.0055011683143675,-0.0107534453272820,0.1652418673038483,-0.1280181556940079,0.0433448888361454,-0.0049510975368321));
res += mul(Get(s3,dx,0), float4x4(-0.0123639535158873,-0.0470200628042221,0.0878566354513168,0.0147327482700348,0.0261320769786835,-0.0162105131894350,0.0141893522813916,-0.0118191288784146,-0.0950600951910019,-0.0354791171848774,0.0244716070592403,0.0013552666641772,-0.0279564522206783,0.0584950000047684,0.1968221664428711,-0.0403208471834660));
res += mul(Get(s4,dx,0), float4x4(0.1101855486631393,-0.0782257840037346,-0.1192042827606201,0.0190712958574295,0.0253610145300627,0.0946675762534142,-0.0145548172295094,0.0143693666905165,-0.0359838195145130,0.0422960110008717,-0.0016472395509481,-0.0159277301281691,0.0124727478250861,-0.0583623722195625,-0.0265568215399981,0.0055113160051405));
res += mul(Get(s5,dx,0), float4x4(-0.0307731218636036,0.0090892268344760,-0.0965604409575462,-0.0246259588748217,0.0302131008356810,-0.0201862510293722,0.0237373504787683,-0.0820827707648277,0.1230655238032341,-0.1581615805625916,0.0216370690613985,0.0907675400376320,-0.0219672583043575,-0.0659335181117058,-0.1280924379825592,-0.0296934936195612));
res += mul(Get(s0,dx,dy), float4x4(0.0279143862426281,0.0053243730217218,0.0816411077976227,0.0095540620386600,-0.0231748055666685,-0.0763192325830460,0.0917533785104752,-0.0224662944674492,0.0112916547805071,0.0438226498663425,0.0153099941089749,0.0060544861480594,0.0316209644079208,0.0308266431093216,0.1224729195237160,-0.0005422059912235));
res += mul(Get(s1,dx,dy), float4x4(-0.0097318133339286,-0.0477871224284172,-0.0021066232584417,0.0203288253396749,-0.0198484435677528,0.0125607652589679,-0.0164116974920034,-0.0564894676208496,-0.0766962468624115,-0.0266418475657701,0.1751418560743332,0.0191822033375502,0.0886773690581322,-0.0214584358036518,-0.0347677357494831,0.0020871057640761));
res += mul(Get(s2,dx,dy), float4x4(-0.0636845976114273,-0.0716657638549805,-0.0021345757413656,0.0494600385427475,0.0198250748217106,-0.0000209956670005,0.1953835189342499,-0.0209679789841175,0.0216859243810177,0.0026751786936074,-0.0774872079491615,0.0154558885842562,-0.0141754867509007,-0.0138840405270457,-0.1011205613613129,-0.0053846156224608));
res += mul(Get(s3,dx,dy), float4x4(-0.0038221229333431,0.0033189777750522,0.0953449606895447,0.0699779763817787,0.0006060566520318,-0.0326837077736855,-0.0700360313057899,0.0177292041480541,-0.0137985702604055,0.0369337312877178,0.0722066015005112,0.0052343076094985,0.0581972859799862,0.0688068643212318,-0.0628546476364136,-0.0458546802401543));
res += mul(Get(s4,dx,dy), float4x4(-0.0296153854578733,-0.1344207674264908,-0.1181900575757027,0.0268040020018816,0.0041979369707406,0.0420084148645401,-0.1569077223539352,-0.0187507010996342,0.0486447587609291,-0.0285569988191128,-0.0361994877457619,-0.0059206378646195,-0.0826307386159897,0.0215466413646936,0.0806243866682053,0.0499023422598839));
res += mul(Get(s5,dx,dy), float4x4(0.0057835164479911,-0.0400485433638096,0.0927831083536148,0.0025853014085442,0.0114260334521532,-0.0590760000050068,0.0387862361967564,-0.0541997365653515,0.0128981936722994,-0.0016301737632602,-0.1642325073480606,-0.0041984408162534,0.0054183113388717,0.0788390114903450,0.0594488605856895,0.0389804095029831));
res = max(float4(0, 0, 0, 0), res) + float4(1.4508982896804810,3.2374527454376221,0.0159862209111452,1.6357779502868652) * min(float4(0, 0, 0, 0), res);
return res;
}
