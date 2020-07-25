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
float4 res = float4(-0.1187130361795425,-0.2224257737398148,-0.3046360015869141,0.1114717200398445);
res += mul(Get(s0,-dx,-dy), float4x4(0.0577191226184368,-0.0287681855261326,-0.0528398454189301,0.0609212964773178,-0.1597093194723129,0.2058663964271545,0.0879593268036842,0.0786225348711014,-0.2561192810535431,-0.0761096924543381,0.1063695549964905,0.0244551543146372,0.2898380756378174,0.0286417677998543,0.0938923731446266,-0.0772794932126999));
res += mul(Get(s1,-dx,-dy), float4x4(-0.1808649599552155,-0.2893984317779541,-0.3003653585910797,0.2756494581699371,-0.2053826451301575,0.1964971572160721,0.6134603619575500,0.0920878425240517,0.0584688633680344,0.0074948142282665,0.0147806117311120,-0.0643735006451607,0.0673111006617546,-0.1249888390302658,0.1212480291724205,-0.0872216522693634));
res += mul(Get(s2,-dx,-dy), float4x4(-0.1777439564466476,-0.0485585220158100,0.1674498468637466,0.0087088476866484,0.1750449985265732,0.4121989011764526,-0.0302343480288982,0.0448218472301960,0.0625704973936081,0.1376840174198151,-0.0332167260348797,-0.0474154874682426,-0.0174493193626404,-0.1842726171016693,-0.0200795140117407,-0.0407778248190880));
res += mul(Get(s3,-dx,-dy), float4x4(0.1249224990606308,-0.0476401560008526,0.1141128093004227,-0.0185075420886278,-0.1726961135864258,-0.2403115481138229,0.2091966718435287,0.0667799636721611,-0.0911340564489365,-0.1484378576278687,0.0292435325682163,-0.0003245502884965,-0.3046025037765503,0.1101736426353455,0.0619022175669670,0.0646772310137749));
res += mul(Get(s4,-dx,-dy), float4x4(0.1363537162542343,0.0062221121042967,-0.0125854760408401,-0.0003424705064390,-0.1432338356971741,0.2206438630819321,-0.0596204586327076,-0.0165038816630840,-0.0519984923303127,-0.1301824897527695,-0.0725439414381981,-0.0474835410714149,0.0085665537044406,0.0031562857329845,0.0670378282666206,-0.0338570065796375));
res += mul(Get(s5,-dx,-dy), float4x4(-0.4073233306407928,0.1218162924051285,0.3024173676967621,0.0116550391539931,0.1491624414920807,0.3695187866687775,0.0786476880311966,0.1451456099748611,0.0809095352888107,0.1975935101509094,0.2756342589855194,-0.0255745276808739,-0.0608921013772488,-0.1486547291278839,0.0540409572422504,0.0183804146945477));
res += mul(Get(s0,-dx,0), float4x4(-0.4874916374683380,0.1199729070067406,0.1672727763652802,0.2018520981073380,-0.1499432921409607,0.1336194276809692,0.0154490601271391,0.0075542321428657,-0.2136010080575943,0.1711965650320053,0.0422591753304005,-0.0196816530078650,0.3981532752513885,-0.0354795232415199,-0.0215740930289030,-0.1880168318748474));
res += mul(Get(s1,-dx,0), float4x4(-0.0128119308501482,-0.2301139086484909,-0.2636787295341492,-0.2338743060827255,-0.1557075828313828,0.0793056562542915,0.2685293555259705,0.0135824540629983,-0.1878013908863068,0.1522300988435745,0.0101799508556724,0.0883787572383881,-0.0006789624458179,0.0079791285097599,0.2580578029155731,-0.0984872952103615));
res += mul(Get(s2,-dx,0), float4x4(-0.4359122812747955,0.3665771484375000,0.0987706556916237,-0.3353625833988190,0.0650761798024178,0.1220275536179543,-0.2229670733213425,0.0439939312636852,0.0916676074266434,0.0152894351631403,-0.1141043603420258,-0.1110003069043159,-0.5439873933792114,-0.0768878906965256,0.0208277106285095,-0.0064182784408331));
res += mul(Get(s3,-dx,0), float4x4(0.2210769057273865,-0.0544730983674526,0.1168048456311226,-0.0860804989933968,-0.1000238806009293,-0.4240990579128265,0.0355884730815887,0.0104192038998008,0.3251443505287170,0.1660155653953552,-0.0439626649022102,-0.0625179633498192,-0.4496261179447174,0.2519847154617310,0.1226573362946510,-0.0450199320912361));
res += mul(Get(s4,-dx,0), float4x4(-0.0597560256719589,-0.0570535622537136,-0.0311856530606747,-0.0429053008556366,-0.0280233323574066,0.2949738204479218,-0.3543187081813812,-0.1118745431303978,0.0468535199761391,0.1771751791238785,-0.1353228539228439,0.0586185306310654,0.1760135442018509,0.1486885547637939,0.0772089064121246,-0.0252120047807693));
res += mul(Get(s5,-dx,0), float4x4(-0.4266311526298523,-0.2851437032222748,0.2117129862308502,0.1253690123558044,0.3978157937526703,0.3302716910839081,-0.1951511651277542,-0.0831336304545403,0.1029926985502243,0.1303968131542206,0.4171994626522064,-0.1388422548770905,-0.3451166152954102,0.0560170337557793,0.0269945077598095,0.1091765165328979));
res += mul(Get(s0,-dx,dy), float4x4(0.2956448793411255,-0.0574095882475376,-0.2311756312847137,-0.0070975255221128,-0.1537578552961349,-0.0668845772743225,0.0434559360146523,-0.0475740581750870,0.2359008789062500,0.1745137870311737,-0.0085983630269766,0.1264284402132034,-0.1047675237059593,-0.1111489310860634,-0.0290776360780001,-0.0231462661176920));
res += mul(Get(s1,-dx,dy), float4x4(0.0904343053698540,-0.0799481868743896,-0.1004960164427757,0.0192323029041290,-0.0275301039218903,0.0663153305649757,0.1569734513759613,-0.0315421670675278,-0.0941714793443680,0.0442922860383987,0.0154417119920254,-0.0309909246861935,-0.3406615555286407,0.0088489735499024,0.2297745198011398,0.1069131121039391));
res += mul(Get(s2,-dx,dy), float4x4(-0.1118100583553314,0.0483825914561749,0.0021395424846560,0.0674360096454620,0.0588370002806187,0.0853783562779427,-0.0542286150157452,0.0297951903194189,0.0521824061870575,-0.0232481416314840,0.0368662215769291,0.0635585188865662,-0.0648564994335175,0.0980768352746964,-0.1097005978226662,0.2911229431629181));
res += mul(Get(s3,-dx,dy), float4x4(0.0380740873515606,0.0407136268913746,0.0348115749657154,0.0201812554150820,-0.3301705420017242,0.0364535935223103,0.0970655977725983,0.1071493625640869,0.1179884299635887,-0.1146666109561920,-0.1078811436891556,-0.1331052184104919,0.1681126505136490,0.0227818060666323,0.0524440370500088,-0.1918869465589523));
res += mul(Get(s4,-dx,dy), float4x4(-0.1577749997377396,0.0412845201790333,-0.0013794952537864,0.0607226267457008,0.0707991346716881,0.0291006565093994,0.0566559880971909,-0.0662525445222855,0.0569071657955647,-0.1441000998020172,-0.0093528153374791,-0.1703593581914902,-0.0228254869580269,0.1271355152130127,0.1014727875590324,-0.0024025447200984));
res += mul(Get(s5,-dx,dy), float4x4(0.1139847040176392,-0.0586035512387753,0.2160834968090057,-0.0039540510624647,0.0139792654663324,-0.1597170084714890,-0.0408668778836727,-0.0016697366954759,-0.0518835261464119,0.1050592362880707,-0.1586853712797165,-0.1838710159063339,-0.2041669785976410,-0.1138582676649094,0.1518024206161499,0.1098226830363274));
res += mul(Get(s0,0,-dy), float4x4(0.0827677175402641,0.1476383209228516,-0.0077804047614336,-0.1209808066487312,-0.0301632508635521,0.1391173303127289,-0.0907404795289040,-0.0010586685966700,0.1278691291809082,-0.3036868870258331,0.0165669806301594,0.0406645238399506,0.1118547692894936,-0.1247437521815300,-0.0429946966469288,0.0250258985906839));
res += mul(Get(s1,0,-dy), float4x4(-0.2184729129076004,0.0834965854883194,-0.4293447434902191,0.0025557540357113,-0.0040551628917456,0.4980846643447876,0.3309506475925446,-0.1880116164684296,0.1476516425609589,-0.4666586816310883,-0.0393227264285088,0.0386041514575481,-0.0976031646132469,0.2603487670421600,0.1147366687655449,-0.0940302684903145));
res += mul(Get(s2,0,-dy), float4x4(-0.2001913934946060,-0.0326604247093201,-0.0917015522718430,0.0488183982670307,-0.0688963234424591,0.5086662173271179,-0.2449971139431000,0.0701732113957405,-0.1406668722629547,0.2265852391719818,0.0349767170846462,-0.0695641413331032,0.4098061621189117,0.0943388864398003,-0.0448766946792603,0.0018004718003795));
res += mul(Get(s3,0,-dy), float4x4(-0.2638863623142242,-0.3552365005016327,-0.1020160615444183,-0.1181095987558365,0.3813605606555939,-0.2757821381092072,0.1951124966144562,0.1538062691688538,0.0808915644884109,0.2155222445726395,0.0976571068167686,0.0034255527425557,-0.0037902852054685,0.1078588515520096,0.0390343032777309,-0.0483450666069984));
res += mul(Get(s4,0,-dy), float4x4(0.0658922865986824,0.3467996120452881,-0.1833125501871109,0.0685890391469002,-0.1331655979156494,-0.3580514490604401,0.0680586621165276,0.1433155834674835,0.2891324162483215,0.0128233730792999,-0.0651276558637619,0.0728019848465919,-0.1084145754575729,0.2427826225757599,-0.0915685072541237,-0.0082481708377600));
res += mul(Get(s5,0,-dy), float4x4(0.0982063114643097,0.3394600152969360,0.2887836098670959,-0.1165887862443924,-0.4978037178516388,-0.1724812537431717,-0.1846488416194916,0.1102177724242210,0.2490988671779633,0.7357711195945740,0.0122043229639530,0.1208983957767487,0.1324744522571564,-0.1517630219459534,0.1308545619249344,0.0223767366260290));
res += mul(Get(s0,0,0), float4x4(0.2939021587371826,0.2858700752258301,0.1769759804010391,0.0082562034949660,-0.1098545789718628,-0.1934695094823837,-0.5062669515609741,-0.0706696584820747,-0.4192065000534058,0.1815570890903473,0.2324859499931335,0.1521733254194260,-0.6482580304145813,-0.7812048196792603,0.1504805535078049,-0.0167500562965870));
res += mul(Get(s1,0,0), float4x4(-0.0330917276442051,-0.1942673325538635,-0.2835915684700012,0.0185746159404516,0.0166157428175211,0.0287798475474119,0.3555164039134979,0.0580103732645512,0.3087479472160339,-0.2502006590366364,0.0954586490988731,0.0490613989531994,0.1673801392316818,-0.3391758203506470,-0.1082453355193138,-0.0084981061518192));
res += mul(Get(s2,0,0), float4x4(-0.4288460016250610,-0.0687540322542191,-0.0768534839153290,0.0687052085995674,-0.4033420085906982,-0.1289282441139221,-0.2653442323207855,0.2828890383243561,0.2419498711824417,-0.1269672513008118,-0.1659610569477081,-0.0704643428325653,-0.1334955245256424,0.1944940537214279,0.0309642385691404,-0.1983001083135605));
res += mul(Get(s3,0,0), float4x4(-0.0555997267365456,-0.0604574307799339,-0.9083431363105774,0.2086184769868851,0.5119320750236511,0.0720719173550606,0.2413420081138611,0.0580016449093819,-0.2562003433704376,0.1345988214015961,0.1531075686216354,-0.0544262267649174,0.0311006568372250,0.2434651851654053,0.1072278395295143,0.0446953810751438));
res += mul(Get(s4,0,0), float4x4(-0.2258402705192566,-0.0069846021942794,-0.5040184259414673,-0.1025850623846054,-0.4318872988224030,-0.1985554546117783,0.1944163590669632,-0.0645646303892136,-0.1008935496211052,0.0244070198386908,0.0729726254940033,-0.1836694478988647,0.2473218739032745,-0.0744565427303314,-0.4987768828868866,0.0255388654768467));
res += mul(Get(s5,0,0), float4x4(0.2290390282869339,0.4310268163681030,-0.0189764723181725,-0.2828944623470306,-0.5634804964065552,0.3749465048313141,0.1269545555114746,0.3354556560516357,0.2086774855852127,0.1431835144758224,-0.0893213003873825,-0.5437322854995728,0.2677817046642303,-0.0010297575499862,0.0553738027811050,0.0550061017274857));
res += mul(Get(s0,0,dy), float4x4(-0.1106948330998421,-0.0939723178744316,-0.0346560552716255,0.0773559510707855,-0.0874163135886192,0.1079967692494392,0.0055261454544961,-0.0313304103910923,-0.6501673460006714,0.1467393487691879,-0.0157277863472700,0.3749037683010101,-0.1523606777191162,0.1707186102867126,0.0461649335920811,-0.0565036945044994));
res += mul(Get(s1,0,dy), float4x4(0.2783458530902863,-0.0844652503728867,-0.0943398326635361,-0.0048655737191439,0.1379919797182083,0.0739731714129448,0.1264524310827255,0.0320225134491920,0.0445015802979469,0.1812876015901566,0.1527561843395233,-0.0040556406602263,0.3744593262672424,0.2649303674697876,0.1088037118315697,-0.0833122357726097));
res += mul(Get(s2,0,dy), float4x4(-0.0461644828319550,-0.0171829443424940,-0.0567351505160332,0.0839104056358337,-0.0339210331439972,0.1422576457262039,0.0530352033674717,-0.1851324886083603,0.3240397870540619,0.1619148999452591,0.2035693228244781,0.1677461713552475,0.0133110526949167,-0.0819294154644012,-0.1260808408260345,0.0288395304232836));
res += mul(Get(s3,0,dy), float4x4(0.0639248266816139,0.0378462560474873,0.1023523733019829,-0.1134229451417923,0.0558445528149605,-0.0061473012901843,0.3173826634883881,-0.0743941441178322,0.0490671321749687,-0.1314448416233063,-0.0390999242663383,-0.0960595235228539,-0.1697770059108734,-0.2269515842199326,0.0564935766160488,-0.1995448470115662));
res += mul(Get(s4,0,dy), float4x4(0.0456617549061775,-0.0395002588629723,-0.0887919962406158,-0.0349770039319992,-0.1275551170110703,-0.1085397973656654,0.1184852197766304,-0.0166592542082071,0.2362731546163559,0.0477648936212063,-0.0214028134942055,-0.2822026312351227,-0.1085272580385208,0.1306281834840775,0.1094341352581978,0.1492799669504166));
res += mul(Get(s5,0,dy), float4x4(-0.2848100066184998,0.0496363081037998,0.2686506509780884,-0.0277657285332680,0.1259638667106628,-0.0336886048316956,-0.1007292941212654,-0.1101554408669472,-0.3482084572315216,0.0111868325620890,-0.0255217552185059,-0.3649667203426361,0.1717069149017334,0.0925012901425362,0.0531111769378185,-0.1919778138399124));
res += mul(Get(s0,dx,-dy), float4x4(0.3186087906360626,-0.1911907643079758,-0.0981710776686668,0.0377171374857426,0.0278667416423559,0.0176563765853643,0.0167164560407400,0.0603199638426304,-0.5328421592712402,-0.2067193984985352,0.0609042085707188,0.0529235266149044,-0.3172450959682465,0.0112305022776127,0.0331165045499802,-0.0595419853925705));
res += mul(Get(s1,dx,-dy), float4x4(-0.2180251181125641,-0.1361653357744217,-0.0539549067616463,-0.0563234724104404,0.0666722431778908,0.0283229816704988,-0.0607653632760048,-0.0681048855185509,0.1356474459171295,-0.0592038072645664,-0.0114607783034444,-0.0750697851181030,-0.0483781583607197,0.0829929560422897,0.0783589482307434,0.0070852809585631));
res += mul(Get(s2,dx,-dy), float4x4(-0.0351947918534279,-0.1024593859910965,-0.0509345829486847,-0.0090976068750024,-0.1523385792970657,-0.1754207164049149,-0.1215483024716377,-0.0139355594292283,-0.2138692438602448,-0.0419134832918644,0.1663026064634323,0.0264279618859291,-0.2149481624364853,0.1006536185741425,-0.1477294713258743,0.1001309677958488));
res += mul(Get(s3,dx,-dy), float4x4(-0.0772337466478348,-0.1665138453245163,0.0798797458410263,-0.0444450266659260,-0.1239048168063164,-0.2681703567504883,-0.0491355992853642,0.0703340023756027,0.0652651488780975,0.0822817757725716,-0.0075219618156552,-0.0236987192183733,-0.7713738083839417,0.0475126616656780,0.2271640002727509,0.1161561906337738));
res += mul(Get(s4,dx,-dy), float4x4(0.0700352638959885,0.1011759564280510,-0.1209918931126595,0.0360103361308575,-0.1803660690784454,-0.1300892531871796,0.0430415570735931,0.0382098183035851,0.0117582408711314,0.0330417826771736,-0.0330211035907269,0.0185208022594452,-0.0090294443070889,0.2020645439624786,-0.0967643409967422,-0.0889191105961800));
res += mul(Get(s5,dx,-dy), float4x4(-0.0217054598033428,-0.1245992034673691,0.1257250159978867,-0.0674004927277565,0.1959806084632874,-0.0707638263702393,-0.0694272518157959,0.0283913481980562,-0.5506966710090637,-0.1382816880941391,0.3409566283226013,-0.1338633000850677,0.0969289690256119,-0.0877701938152313,-0.0759095624089241,0.0228397585451603));
res += mul(Get(s0,dx,0), float4x4(0.2093025296926498,-0.1678005903959274,-0.2035644203424454,-0.0685174539685249,0.2680387198925018,-0.1350584775209427,-0.0914849862456322,-0.1151169091463089,0.0384718738496304,0.0354318805038929,0.0156938806176186,0.1599703282117844,-0.1167047172784805,-0.0932859033346176,0.0934712737798691,0.0586713552474976));
res += mul(Get(s1,dx,0), float4x4(0.0357126966118813,-0.2345489859580994,-0.0761356428265572,-0.1274479925632477,0.2404970526695251,0.1356407403945923,0.1738424301147461,-0.0160280000418425,-0.4674636721611023,-0.0621883422136307,-0.1748230457305908,0.0378248728811741,-0.1245500147342682,0.2608289420604706,0.1539887338876724,-0.0732566490769386));
res += mul(Get(s2,dx,0), float4x4(-0.2512215077877045,-0.0436192341148853,-0.0273018945008516,-0.0839675664901733,-0.1593836247920990,-0.3503022491931915,-0.1319322139024734,-0.0792338028550148,0.1511006355285645,-0.3610180914402008,0.0541289299726486,0.0722946226596832,0.2013341188430786,-0.0169429536908865,-0.1068814918398857,0.2597734630107880));
res += mul(Get(s3,dx,0), float4x4(-0.0632838606834412,-0.1218146309256554,-0.0501713566482067,-0.0371874384582043,-0.4035343527793884,0.1735476404428482,0.0264391750097275,-0.0451839044690132,0.1623962223529816,-0.0090445652604103,0.1648655086755753,0.1497647613286972,-0.3110309839248657,-0.0117581235244870,0.2811628878116608,-0.1377634704113007));
res += mul(Get(s4,dx,0), float4x4(0.0301100593060255,0.0106921624392271,-0.2415354549884796,0.1155716627836227,0.0095032770186663,0.0656215623021126,0.0022318658884615,-0.0377895832061768,0.0853058099746704,-0.0333326496183872,-0.0178864151239395,0.0763052180409431,-0.1680797636508942,0.1484456509351730,-0.2388219386339188,-0.0196396876126528));
res += mul(Get(s5,dx,0), float4x4(0.0514468438923359,-0.1976438164710999,0.1101364716887474,-0.1294615715742111,0.0958890244364738,-0.1202734857797623,-0.1286253780126572,-0.0071821790188551,-0.1661797016859055,-0.4660634100437164,0.1699160486459732,0.3444327116012573,0.1167330741882324,-0.1505773514509201,-0.0720202624797821,0.1196332052350044));
res += mul(Get(s0,dx,dy), float4x4(-0.0336062014102936,-0.2063593417406082,-0.0446619167923927,-0.1539950966835022,-0.0895926654338837,-0.0176274627447128,-0.0388686619699001,-0.0634072422981262,-0.0552278086543083,0.0492288656532764,0.0112300673499703,0.1803413629531860,0.0661887675523758,0.0840322971343994,-0.0185054186731577,-0.1034152358770370));
res += mul(Get(s1,dx,dy), float4x4(-0.0492926873266697,-0.0920758619904518,-0.0572034753859043,-0.0310232695192099,0.1228462979197502,0.2514924108982086,-0.0144883850589395,0.1097258254885674,-0.2093439996242523,-0.0789340063929558,-0.0560309886932373,-0.0814220607280731,-0.3015504479408264,0.1521568298339844,0.0280237309634686,-0.0708824470639229));
res += mul(Get(s2,dx,dy), float4x4(-0.0624527707695961,0.0373738557100296,-0.0344947688281536,0.0031891504768282,-0.1050748527050018,0.1066118031740189,-0.0725188180804253,0.0647846981883049,0.0877988561987877,0.1049518808722496,0.1346464306116104,0.0907442793250084,0.3480955660343170,0.1439073681831360,-0.0770023986697197,0.0611198060214520));
res += mul(Get(s3,dx,dy), float4x4(-0.1458745002746582,-0.0262697264552116,0.2453630417585373,0.0220976490527391,-0.3787360787391663,0.0251378249377012,0.1037275269627571,0.0719214081764221,0.1099363565444946,0.0099311377853155,-0.0231050010770559,0.0034181387163699,-0.5422129631042480,-0.2941888570785522,0.2780118584632874,0.0247161388397217));
res += mul(Get(s4,dx,dy), float4x4(0.1999257951974869,-0.0966207012534142,-0.1531709730625153,0.0786147937178612,-0.3711414039134979,-0.0441282391548157,-0.0977836921811104,0.0862814262509346,-0.2751608788967133,-0.0798981189727783,-0.0317239612340927,-0.2144962400197983,-0.0198944117873907,0.1127705723047256,0.0818815529346466,-0.0323063135147095));
res += mul(Get(s5,dx,dy), float4x4(0.0683729201555252,-0.0468120463192463,0.1610385924577713,-0.0171093735843897,0.1573283970355988,0.0185702145099640,-0.0291381534188986,-0.0664752647280693,-0.3463194370269775,0.0338188633322716,0.3720391094684601,-0.0920090228319168,0.1608468294143677,0.0136672332882881,0.1646615117788315,0.0054757203906775));
res = max(float4(0, 0, 0, 0), res) + float4(-0.0012721712701023,0.0292966216802597,-0.0975930839776993,2.1318368911743164) * min(float4(0, 0, 0, 0), res);
return res;
}
