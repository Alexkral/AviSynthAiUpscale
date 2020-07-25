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
float4 res = float4(-0.1989523917436600,0.1062386706471443,0.0815088748931885,-0.0484710037708282);
res += mul(Get(s0,-dx,-dy), float4x4(-0.1767421662807465,0.0605605803430080,0.1136920824646950,-0.0029263210017234,0.1508845686912537,-0.0556312128901482,-0.0905755311250687,-0.0126580288633704,0.1325812190771103,0.2051218152046204,-0.0785255208611488,-0.0596963353455067,-0.1994953900575638,-0.0616383254528046,0.0194413736462593,-0.0356990136206150));
res += mul(Get(s1,-dx,-dy), float4x4(0.2523562014102936,0.0762413144111633,-0.0051841856911778,-0.0536683350801468,0.1833537071943283,0.0396628230810165,-0.1310760080814362,-0.2055119574069977,0.0104470215737820,-0.2627570927143097,0.0913303568959236,0.0586639158427715,0.0522608645260334,-0.0933929756283760,-0.0632437244057655,0.0508498549461365));
res += mul(Get(s2,-dx,-dy), float4x4(0.0206756256520748,0.0849116519093513,-0.1146298199892044,-0.0029566599987447,-0.1552312523126602,0.1440498232841492,0.0044341855682433,0.0482959821820259,-0.1161159425973892,-0.0157259330153465,0.0095694102346897,0.0437059924006462,0.0432903915643692,-0.1469347178936005,0.2709538638591766,-0.1010170653462410));
res += mul(Get(s3,-dx,-dy), float4x4(0.0699005201458931,0.1248392090201378,0.1096184253692627,0.0739453881978989,0.0624510645866394,-0.1852295845746994,0.1152164265513420,0.0133696449920535,-0.2679508030414581,0.0618639737367630,0.0358486473560333,0.0080456528812647,0.3410485088825226,0.0909751877188683,0.1487978249788284,0.1297873556613922));
res += mul(Get(s4,-dx,-dy), float4x4(-0.5668225884437561,0.1450877040624619,0.2566617727279663,0.3132609426975250,-0.0978111922740936,-0.1168090477585793,0.0850362330675125,-0.0286718178540468,-0.2453148961067200,0.0473250895738602,-0.1488802880048752,-0.0226328745484352,-0.0408226475119591,0.1896463930606842,0.0948339849710464,-0.0493600703775883));
res += mul(Get(s5,-dx,-dy), float4x4(-0.1465580612421036,0.1809195876121521,0.1155219674110413,0.0543501265347004,0.1302107721567154,0.0976210758090019,0.0247189961373806,-0.1157664433121681,-0.0489390976727009,-0.0744074359536171,-0.0025813367683440,-0.0565884150564671,-0.0448421724140644,-0.1085311472415924,-0.1326604336500168,-0.2480573803186417));
res += mul(Get(s0,-dx,0), float4x4(-0.5661548376083374,0.0271034166216850,0.0958308428525925,-0.2924585044384003,-0.0813906192779541,0.1731015443801880,-1.0530369281768799,-0.0668874979019165,-0.0514671802520752,-0.2766562402248383,0.2276370525360107,-0.0387411266565323,0.2112998068332672,-0.0779298245906830,0.0398749560117722,0.1486040204763412));
res += mul(Get(s1,-dx,0), float4x4(0.2104964405298233,0.1238859444856644,0.1307099014520645,0.0600443258881569,0.1021304279565811,-0.1955232918262482,-0.0290390849113464,0.1074747443199158,0.1646203547716141,0.1983944326639175,-0.0564258024096489,-0.1295858323574066,0.2292699962854385,0.0029218329582363,0.1754461526870728,-0.1673184335231781));
res += mul(Get(s2,-dx,0), float4x4(0.2927081286907196,0.0272993147373199,-0.0397475846111774,0.1089285314083099,0.1540972739458084,-0.1371635943651199,-0.0163075253367424,0.1998808085918427,0.0402228310704231,-0.0688148140907288,0.0393884964287281,-0.1726938933134079,-0.7035631537437439,0.5056776404380798,-0.0422812141478062,-0.0125017650425434));
res += mul(Get(s3,-dx,0), float4x4(0.1144204512238503,0.2231200486421585,0.1323691904544830,0.1712998151779175,-0.0435994192957878,-0.6854430437088013,-0.1122248172760010,-0.0341304279863834,-0.0750371068716049,-0.0925182998180389,-0.0594710595905781,-0.0498666502535343,-0.0917585790157318,-0.2383346408605576,-0.1898826956748962,0.0076838443055749));
res += mul(Get(s4,-dx,0), float4x4(0.0042921081185341,-0.0988888591527939,0.1744609326124191,0.0064721908420324,-0.1565642356872559,-0.2175585776567459,-0.2604889869689941,-0.0147339329123497,0.4965184628963470,-0.3602280616760254,-0.0536282546818256,0.1265892982482910,-0.1196836382150650,-0.0037987919058651,0.0002704536018427,-0.0575838834047318));
res += mul(Get(s5,-dx,0), float4x4(-0.2752485275268555,-0.1018732637166977,0.1000998765230179,0.2333455085754395,0.0353135988116264,-0.1931657195091248,-0.3031876087188721,-0.0777808576822281,0.1514620333909988,-0.4325264096260071,0.1767708212137222,0.1135220155119896,-0.3953787088394165,-0.1585072875022888,0.0178635511547327,-0.0477950200438499));
res += mul(Get(s0,-dx,dy), float4x4(-0.0326536633074284,-0.0187956467270851,0.0805719494819641,-0.1623127162456512,0.0104720937088132,0.1259406954050064,-0.7077026963233948,-0.0137106506153941,-0.1155958324670792,-0.1325170546770096,-0.3719066977500916,-0.1213226690888405,0.0291932243853807,0.1175541803240776,0.0630289018154144,0.0101382620632648));
res += mul(Get(s1,-dx,dy), float4x4(-0.1571864187717438,-0.0422290898859501,0.1369879394769669,0.0776944756507874,0.1903151571750641,0.1164493486285210,0.0124662276357412,-0.0895364135503769,-0.1928887963294983,0.2625939846038818,-0.3748312592506409,-0.1570023447275162,0.1269402652978897,0.2691317796707153,0.0598282888531685,-0.0813602879643440));
res += mul(Get(s2,-dx,dy), float4x4(0.1704101860523224,0.3969154655933380,-0.0454020313918591,0.0771797671914101,0.0215486865490675,0.1486563384532928,0.1093515902757645,0.0779812261462212,0.2645289599895477,-0.2529971003532410,-0.0005939783295617,-0.2051913291215897,0.0164660364389420,0.0064430814236403,-0.3608270883560181,0.0300407558679581));
res += mul(Get(s3,-dx,dy), float4x4(-0.1164331436157227,0.0776165351271629,0.1334449201822281,0.1001923456788063,-0.0825084447860718,0.0144685218110681,-0.1729260832071304,-0.1082669571042061,0.1406119018793106,-0.0497308261692524,0.1724933087825775,-0.0989602431654930,0.4143442213535309,0.1402434408664703,0.1245135590434074,0.0073650386184454));
res += mul(Get(s4,-dx,dy), float4x4(0.0350179634988308,-0.2423572093248367,0.3569189310073853,0.0563478693366051,0.1980520486831665,-0.2104754447937012,0.2598774135112762,0.0917987227439880,-0.3319712877273560,-0.0575612895190716,-0.1573783010244370,0.1421158313751221,0.0199532248079777,-0.1211920827627182,0.2374147176742554,-0.0682584270834923));
res += mul(Get(s5,-dx,dy), float4x4(-0.0059742848388851,0.0826403796672821,0.2123626768589020,-0.0144233899191022,0.1580342054367065,-0.1159279942512512,-0.0536514408886433,0.1527438163757324,0.0101042753085494,0.2369589507579803,-0.0866872891783714,0.0903005450963974,-0.1896831393241882,-0.3636204898357391,-0.1640994399785995,-0.1047350242733955));
res += mul(Get(s0,0,-dy), float4x4(-0.0741185322403908,-0.0140918130055070,0.0515605621039867,0.0133919445797801,-0.0623126924037933,0.1260344833135605,0.1872832626104355,-0.0173525400459766,-0.0095966160297394,-0.1260796785354614,-0.0300282854586840,-0.0719541534781456,0.0131113138049841,0.1513052135705948,0.0233771931380033,-0.0193654503673315));
res += mul(Get(s1,0,-dy), float4x4(0.1602773219347000,-0.0347327031195164,-0.0180636774748564,0.0726283788681030,0.4293997883796692,0.0640023127198219,-0.0888116285204887,0.0516263730823994,-0.1143452897667885,-0.2452768683433533,-0.0712560415267944,-0.2592363357543945,-0.1097778901457787,-0.0171987507492304,-0.0881580263376236,0.0374880321323872));
res += mul(Get(s2,0,-dy), float4x4(0.0283573102205992,0.2628558576107025,-0.0338738970458508,-0.0167023222893476,-0.1118487343192101,-0.0325551405549049,0.0185716543346643,0.0147445965558290,-0.0935227796435356,0.1117172688245773,-0.1710110902786255,-0.2258900254964828,0.9396563172340393,-1.0959922075271606,-0.1263964921236038,-0.3487832844257355));
res += mul(Get(s3,0,-dy), float4x4(-0.0252906959503889,-0.0060539669357240,-0.0422790423035622,0.1656751185655594,-0.0539207868278027,-0.0214646235108376,-0.1708308905363083,-0.0566353090107441,-0.0286474376916885,0.0647260099649429,-0.0617362186312675,0.1254897117614746,0.0963090136647224,-0.0229383762925863,-0.0199346523731947,-0.0099188871681690));
res += mul(Get(s4,0,-dy), float4x4(0.0006410577916540,-0.3315694332122803,0.0984493121504784,-0.1559730768203735,0.0280343648046255,-0.1363328695297241,0.0505738072097301,0.0923521295189857,0.1108865663409233,0.0094473846256733,-0.2982527315616608,-0.1491946429014206,-0.2160263955593109,-0.5701548457145691,0.2622792124748230,0.0779994428157806));
res += mul(Get(s5,0,-dy), float4x4(0.0693329349160194,0.0154459672048688,0.0486900359392166,0.0010767905041575,0.1879431754350662,-0.1795182824134827,0.0482386611402035,0.1679919511079788,0.2673036158084869,-0.2554711401462555,-0.2673551142215729,-0.1791784465312958,0.0943132787942886,-0.0609492324292660,0.0497973859310150,0.0191370230168104));
res += mul(Get(s0,0,0), float4x4(-0.4105969965457916,0.1482624262571335,-0.1841737180948257,-0.0400653220713139,-0.2127855569124222,-0.0808167010545731,-1.4008908271789551,-0.0760655850172043,0.5262904167175293,-0.0631150901317596,0.0303692054003477,0.1732185781002045,0.2432358711957932,0.1399134248495102,0.1825082302093506,0.3421390652656555));
res += mul(Get(s1,0,0), float4x4(-0.1440473794937134,0.0272356513887644,-0.2682006359100342,0.2615814805030823,0.4009706974029541,0.2636456489562988,0.2991371452808380,0.0491524748504162,0.1292326152324677,0.8991184234619141,0.1999578624963760,0.4849869608879089,-0.2180144935846329,-0.1295402646064758,-0.3868367671966553,0.0383934751152992));
res += mul(Get(s2,0,0), float4x4(-0.0386970154941082,0.3304801285266876,-0.0714547112584114,0.2158740460872650,-0.2525973618030548,-0.2668924927711487,-0.1242222636938095,-0.2748601138591766,-0.3569224178791046,0.0022318721748888,0.0701311528682709,0.2543521821498871,0.5371881723403931,-0.9257062077522278,-0.1495713293552399,0.2399578392505646));
res += mul(Get(s3,0,0), float4x4(0.0167861934751272,0.0298499129712582,0.0128787560388446,0.0609342567622662,0.0380758270621300,0.0522318296134472,0.2637976408004761,0.2954284846782684,-0.0119945937767625,-0.3789971768856049,0.4194198846817017,0.3032803535461426,0.1030333787202835,-0.6084410548210144,0.4135711491107941,0.1945270597934723));
res += mul(Get(s4,0,0), float4x4(0.3114944696426392,-0.4940330386161804,-0.1796026080846786,-0.1019173339009285,0.4340038299560547,0.1762298643589020,0.0065174777992070,0.1065057739615440,0.6839949488639832,-0.4177970290184021,-0.0239445529878139,-0.1214517876505852,-0.2431629896163940,-0.7313399910926819,-0.2928389906883240,-0.0184851996600628));
res += mul(Get(s5,0,0), float4x4(-0.2625066041946411,0.1758148819208145,0.0632878914475441,-0.1393637508153915,0.1906497329473495,0.0877783522009850,0.1833314001560211,0.1682198494672775,0.0482436157763004,-0.6371783018112183,0.4263726472854614,0.1830230802297592,0.2908742427825928,0.0432661361992359,-0.0605106800794601,-0.1084363535046577));
res += mul(Get(s0,0,dy), float4x4(-0.3492701351642609,-0.0084023578092456,-0.4636589884757996,-0.3568961918354034,0.0532302521169186,0.2277960032224655,-0.8598535656929016,0.0009520608582534,-0.1647563278675079,0.1109522134065628,0.2418818175792694,0.2344635576009750,0.1968866586685181,0.1382120102643967,0.2056221365928650,0.1658055037260056));
res += mul(Get(s1,0,dy), float4x4(0.0436920896172523,0.1564452648162842,-1.0124678611755371,-0.3084346652030945,0.1213439702987671,0.1464451849460602,0.1571690738201141,0.0621853657066822,-0.0771720260381699,-0.3290422558784485,0.2052758187055588,0.0651918500661850,0.1506952047348022,0.1104392707347870,0.0189574453979731,-0.1761180907487869));
res += mul(Get(s2,0,dy), float4x4(0.0425659939646721,0.0346614681184292,0.3661723732948303,0.1847211420536041,-0.0104217259213328,0.0459678731858730,-0.0239314250648022,0.1659337878227234,-0.0477960444986820,0.0381980650126934,0.1647307574748993,-0.0737380236387253,-0.1124214679002762,-0.0745326355099678,-0.6094595193862915,-0.4436274766921997));
res += mul(Get(s3,0,dy), float4x4(-0.1147761568427086,-0.2445337474346161,0.3449946939945221,-0.0548283271491528,0.0498373620212078,0.0801899582147598,0.2323607504367828,0.0830762237310410,-0.1281949281692505,-0.1776597499847412,-0.0635855868458748,0.0380056761205196,0.2132522463798523,0.0225641485303640,0.0972718819975853,0.2105201631784439));
res += mul(Get(s4,0,dy), float4x4(0.0912846103310585,-0.3349698185920715,0.4060933291912079,0.0012495010159910,-0.0014352397993207,0.0308419521898031,-0.0576543360948563,-0.1949134618043900,0.0201857388019562,-0.2623676955699921,-0.2615199685096741,0.0288830641657114,-0.1627663671970367,-0.5784829854965210,-0.3524183034896851,-0.0029181321151555));
res += mul(Get(s5,0,dy), float4x4(-0.1806769371032715,-0.0649512112140656,0.0835356414318085,-0.0436046682298183,-0.0859776139259338,0.2669652998447418,0.1263904124498367,-0.2136227637529373,-0.0774134248495102,0.1295223832130432,0.1582450568675995,-0.0471823811531067,0.0062902234494686,-0.1748214513063431,-0.2036357372999191,-0.0346430800855160));
res += mul(Get(s0,dx,-dy), float4x4(0.0016559038776904,0.1467161625623703,0.0939052179455757,0.0613562725484371,-0.0718843415379524,0.0795534700155258,0.0794156566262245,0.0492209643125534,-0.0173002630472183,-0.0108169466257095,0.0021484978497028,0.1472038924694061,-0.1367017477750778,-0.0046734535135329,-0.0489784814417362,-0.0553010962903500));
res += mul(Get(s1,dx,-dy), float4x4(0.1351464688777924,-0.2233443111181259,-0.0390796065330505,-0.0905902534723282,0.2023633867502213,0.0791131034493446,0.0452840551733971,-0.1304901689291000,-0.0822352394461632,0.0320194810628891,0.0212956760078669,0.0178957767784595,-0.0354799665510654,0.0547315888106823,0.0750752910971642,0.0761552974581718));
res += mul(Get(s2,dx,-dy), float4x4(-0.0097189182415605,0.0758832618594170,-0.0567658059298992,0.0274453200399876,-0.1972971856594086,-0.0642246901988983,-0.0340667851269245,-0.0164255313575268,0.0170619841665030,0.1069020777940750,-0.0115714110434055,-0.0726501122117043,0.0531333833932877,0.0822386369109154,0.0445807017385960,-0.2662583887577057));
res += mul(Get(s3,dx,-dy), float4x4(-0.1494700163602829,0.0923728272318840,0.0734680145978928,0.1687532067298889,0.0551015287637711,0.0859780535101891,0.0877868458628654,0.0268548857420683,-0.0854548737406731,-0.1264735311269760,0.0039119883440435,-0.1812846362590790,0.2320628464221954,0.0915451124310493,0.0056931530125439,0.0585777014493942));
res += mul(Get(s4,dx,-dy), float4x4(-0.2314998805522919,-0.0067142155021429,0.0440060123801231,-0.0005998229607940,-0.0250058490782976,-0.0593866109848022,-0.0287193134427071,-0.0716615915298462,-0.0829537361860275,-0.1043048873543739,-0.0544475317001343,0.1390089690685272,0.0428397953510284,-0.2729553878307343,0.0103282965719700,-0.2361077964305878));
res += mul(Get(s5,dx,-dy), float4x4(-0.0436620339751244,0.0459082834422588,0.0336433425545692,0.0171124059706926,-0.0523867011070251,0.1477002352476120,0.0155286258086562,-0.0729590654373169,0.0074305599555373,-0.3150610029697418,0.0421642176806927,0.1011418178677559,-0.0469389706850052,0.0773250907659531,0.1021460369229317,-0.0533873699605465));
res += mul(Get(s0,dx,0), float4x4(0.1852894425392151,0.1167657524347305,-0.0330662056803703,-0.0580070689320564,0.0441136173903942,0.2183601409196854,-0.4443768858909607,0.2013555914163589,-0.1644133776426315,0.0068640275858343,0.1237783208489418,-0.0337765067815781,0.1414821147918701,0.0288250539451838,-0.0702047348022461,-0.0165210459381342));
res += mul(Get(s1,dx,0), float4x4(0.2064335346221924,-0.0023141605779529,0.0705622732639313,0.0607545897364616,0.3100116550922394,0.1694459319114685,-0.0043649259023368,-0.0031652194447815,0.0613250248134136,-0.0257961023598909,0.1889935880899429,0.0875000357627869,0.2039691805839539,0.0574057735502720,-0.0691604316234589,-0.0161249078810215));
res += mul(Get(s2,dx,0), float4x4(0.1940021067857742,-0.1389817595481873,-0.1191912591457367,-0.1176767647266388,-0.1717280596494675,-0.0925502404570580,0.0294610466808081,-0.0366203375160694,0.2997649908065796,0.0367578864097595,-0.0459981411695480,-0.1533268541097641,0.2095597386360168,-0.1199511736631393,-0.0049085803329945,-0.0262810532003641));
res += mul(Get(s3,dx,0), float4x4(-0.3487339019775391,-0.4501610398292542,-0.2741014361381531,-0.0679734498262405,-0.0401906706392765,0.1476362943649292,-0.0221538618206978,0.1574852168560028,0.1493872404098511,0.2015475481748581,-0.0531553626060486,-0.1491407305002213,0.3229008913040161,-0.1908774971961975,-0.0668886154890060,-0.0353287979960442));
res += mul(Get(s4,dx,0), float4x4(-0.2015433162450790,0.0252021513879299,-0.0606496185064316,0.0498297587037086,0.1246852129697800,0.0430318526923656,-0.0515390671789646,-0.0694825723767281,-0.0092398049309850,-0.0156101658940315,-0.3555361628532410,-0.1396454274654388,0.1806970685720444,-1.1939860582351685,0.1514741480350494,-0.1435541212558746));
res += mul(Get(s5,dx,0), float4x4(0.0501571409404278,0.0128473397344351,-0.2023985087871552,0.1452161669731140,0.0397608652710915,-0.0052676657214761,-0.2567090392112732,-0.0087901344522834,-0.3372506499290466,0.4347448647022247,0.1006021201610565,0.0127682369202375,-0.0210917424410582,0.1843758821487427,0.2313627451658249,0.1299592107534409));
res += mul(Get(s0,dx,dy), float4x4(0.2899151742458344,-0.0041540302336216,0.0767043158411980,0.0138423312455416,0.0028347182087600,0.0893765240907669,-0.2176564335823059,0.0763283967971802,-0.1070468649268150,0.1911398768424988,0.0179964751005173,0.0223434921354055,-0.0371537581086159,0.0342789217829704,0.0678252801299095,0.0496044084429741));
res += mul(Get(s1,dx,dy), float4x4(-0.3692570626735687,0.1885575503110886,-0.0445623993873596,0.0023159673437476,0.2419539839029312,0.0664252862334251,0.0301576312631369,0.0357449240982533,0.1028255224227905,-0.3821557164192200,-0.0013636312214658,-0.0100659774616361,0.1394269615411758,0.0209011267870665,-0.0146706439554691,-0.0972764045000076));
res += mul(Get(s2,dx,dy), float4x4(0.1825900077819824,0.2429924458265305,0.1248818933963776,-0.0299510248005390,-0.0820660293102264,-0.0714563503861427,0.0245269741863012,0.0928844586014748,0.2091534882783890,0.0688271671533585,0.0120259113609791,0.1248153820633888,-0.3841999769210815,0.5949659943580627,0.1709828674793243,0.0497640669345856));
res += mul(Get(s3,dx,dy), float4x4(-0.2740422487258911,-0.3525624275207520,-0.2429998666048050,-0.0402796454727650,-0.1437705755233765,-0.2967428565025330,0.1007147803902626,-0.1552718430757523,0.0032500864472240,0.2755908966064453,-0.0525480955839157,-0.0274895597249269,0.2641562223434448,0.1174221038818359,-0.2119064331054688,0.0478244274854660));
res += mul(Get(s4,dx,dy), float4x4(0.0836416035890579,0.0472311750054359,0.0096884258091450,-0.0057371365837753,-0.0952035337686539,0.0635976493358612,-0.1333225816488266,0.0954930856823921,-0.1345933973789215,-0.0182291902601719,-0.0847858265042305,-0.1344032436609268,-0.0936739593744278,-0.8046588301658630,-0.0847887024283409,-0.1002706959843636));
res += mul(Get(s5,dx,dy), float4x4(-0.1371559351682663,-0.2741963863372803,-0.1962020993232727,-0.0874457880854607,0.1050536110997200,-0.0459252037107944,0.0609874688088894,-0.0062026237137616,-0.0047193109057844,-0.3908172249794006,0.1301062554121017,-0.0894563272595406,-0.0988937616348267,0.1030191630125046,0.2836233377456665,-0.0123305935412645));
res = max(float4(0, 0, 0, 0), res) + float4(-0.0846099779009819,0.0374016650021076,0.0540254637598991,1.0071117877960205) * min(float4(0, 0, 0, 0), res);
return res;
}