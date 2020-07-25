sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.1141315698623657,0.1352312266826630,-0.1103412583470345,-0.0179962702095509);
res += mul(Get(s0,-dx,-dy), float4x4(-0.1249905526638031,-0.0090180216357112,0.0761866420507431,0.0418660193681717,-0.0242479089647532,0.2622404396533966,0.0271633025258780,0.0525232255458832,0.0849692970514297,0.0934123471379280,0.0228098016232252,0.0934083983302116,0.3237242400646210,-0.1292945295572281,0.0892755463719368,0.3696598112583160));
res += mul(Get(s1,-dx,-dy), float4x4(-0.0372760184109211,0.0957242771983147,-0.0928893536329269,0.1193593740463257,0.1174162104725838,-0.0704854205250740,0.2470411062240601,-0.0652888789772987,-0.2020470499992371,0.0289289746433496,-0.1355633586645126,0.0238270554691553,0.0985320135951042,-0.0258390326052904,-0.0134889064356685,0.0991507545113564));
res += mul(Get(s2,-dx,-dy), float4x4(-0.0736891254782677,0.0718016326427460,-0.0330589823424816,-0.2016504555940628,0.0180992912501097,-0.0123552735894918,-0.0251609589904547,-0.1129376441240311,-0.1563682556152344,0.1487223207950592,-0.0576091557741165,0.2458789944648743,-0.2974810898303986,0.1442215144634247,-0.0826418548822403,0.1381787061691284));
res += mul(Get(s0,-dx,0), float4x4(0.0827029794454575,-0.0152868200093508,0.4927546083927155,0.0318529047071934,0.1158137172460556,-0.1198602616786957,-0.2774623930454254,0.2440359294414520,0.0537342019379139,0.0158784724771976,0.1257438063621521,0.3618466258049011,-0.0785954594612122,0.4150528311729431,-0.0411804653704166,-0.0063332756981254));
res += mul(Get(s1,-dx,0), float4x4(0.0315865129232407,0.2206817418336868,-0.2029827088117599,0.2070554494857788,0.1369036585092545,-0.1486801654100418,0.1601350307464600,-0.1824374049901962,0.0560997053980827,-0.1310671567916870,0.0229233168065548,0.3884184956550598,-0.0217900760471821,0.0545139275491238,-0.1148886978626251,0.1752205193042755));
res += mul(Get(s2,-dx,0), float4x4(-0.0469996109604836,-0.1868559122085571,0.1226255372166634,0.0191470179706812,0.0075511289760470,0.1899462938308716,0.2073073685169220,-0.2781149446964264,0.0271834246814251,-0.5005327463150024,0.3624442815780640,0.1904409825801849,-0.2349796891212463,0.1083353906869888,-0.0084606325253844,-0.0314359292387962));
res += mul(Get(s0,-dx,dy), float4x4(0.1467539519071579,0.2070302218198776,0.1532810777425766,0.0689549744129181,-0.0784430429339409,0.1122471392154694,-0.0691310092806816,0.1048234775662422,0.0579146519303322,0.0515391752123833,-0.1344039887189865,-0.1600313335657120,-0.1059210896492004,-0.1330574154853821,0.0286146569997072,0.2382695972919464));
res += mul(Get(s1,-dx,dy), float4x4(0.0385120511054993,-0.1715281158685684,-0.1045013219118118,-0.0237430091947317,-0.0106998998671770,0.0403580516576767,0.1055978611111641,0.1667549610137939,-0.1257788985967636,-0.1165613681077957,-0.2738705575466156,0.5973134636878967,0.0117942532524467,0.1415542960166931,-0.0603680573403835,0.0935689657926559));
res += mul(Get(s2,-dx,dy), float4x4(-0.0603500977158546,-0.1686774194240570,-0.1643040031194687,-0.2406582534313202,0.0951689779758453,-0.0101703181862831,0.0927924886345863,-0.1618486642837524,0.0747125670313835,-0.1893125921487808,0.0079751657322049,0.0328216440975666,0.0469639189541340,-0.2142180055379868,0.0096679031848907,-0.2107584923505783));
res += mul(Get(s0,0,-dy), float4x4(0.4260392189025879,0.0380309335887432,-0.3122690618038177,-0.1412917375564575,-0.1278913021087646,0.0365595780313015,-0.0536298565566540,-0.1085503846406937,-1.0048158168792725,-0.0245958901941776,0.1086645647883415,0.2063668370246887,0.2964932024478912,0.0330485552549362,-0.0869424939155579,-0.4053319692611694));
res += mul(Get(s1,0,-dy), float4x4(0.1229638308286667,-0.0520006939768791,-0.0407202877104282,0.0452865250408649,0.6194280385971069,-0.0981204137206078,-0.1487999856472015,-0.2337819039821625,-0.0777283534407616,-0.0313388817012310,0.2049226313829422,0.1632648110389709,0.0468944273889065,0.2424861639738083,-0.0225093215703964,0.0685436353087425));
res += mul(Get(s2,0,-dy), float4x4(0.2499841749668121,-0.0949040427803993,-0.0821891650557518,-0.2356756031513214,-0.0392574891448021,0.0315692685544491,0.1336525082588196,-0.4089245498180389,-0.1951860338449478,-0.2788891494274139,0.2472586780786514,0.2065085023641586,-0.5529070496559143,0.0051166247576475,0.0491321869194508,0.2847519218921661));
res += mul(Get(s0,0,0), float4x4(0.9797118306159973,-0.2889233827590942,-1.1078581809997559,0.2805192768573761,0.0510420016944408,-0.1218206062912941,-0.4369949996471405,0.0288286674767733,0.5546054244041443,0.0014740739716217,-0.4784594774246216,0.3098644912242889,-0.2926444709300995,-0.6275637745857239,0.2376153469085693,-0.1893270164728165));
res += mul(Get(s1,0,0), float4x4(-0.2916751503944397,-0.2714729309082031,0.5824324488639832,-0.3895191550254822,-0.2641193568706512,-0.1831576526165009,-0.3351951539516449,0.4346751570701599,0.5831021070480347,-0.0069660064764321,-0.0290072727948427,0.0406112670898438,0.0247094631195068,0.2366474568843842,-0.0103429984301329,-0.0692469477653503));
res += mul(Get(s2,0,0), float4x4(0.1137612760066986,0.2183548659086227,-0.3145548105239868,0.4373729228973389,-0.1277038455009460,0.3005241453647614,-0.1544021517038345,-0.9213741421699524,-0.0084014814347029,-1.4149699211120605,0.4179930686950684,0.6220575571060181,-1.8978660106658936,-0.0371710397303104,-0.0815418958663940,0.0123138427734375));
res += mul(Get(s0,0,dy), float4x4(0.0178738031536341,-0.0217265319079161,0.3557647168636322,0.0660336539149284,-0.0123433200642467,-0.0966915339231491,0.0406386181712151,-0.0464448668062687,-0.0524272695183754,0.1150374189019203,0.1660218387842178,0.0054212789982557,0.0921020954847336,-0.0395208969712257,0.0406927466392517,0.2195959240198135));
res += mul(Get(s1,0,dy), float4x4(0.1149591654539108,0.3190684020519257,0.1172116845846176,-0.0593077056109905,0.0043465774506330,-0.0652820020914078,0.1064628437161446,0.0619031861424446,0.3123831450939178,-0.8767920732498169,0.9412693977355957,-0.0881606116890907,-0.0024830095935613,0.1365573853254318,-0.0932997316122055,0.0907212197780609));
res += mul(Get(s2,0,dy), float4x4(-0.3190163075923920,0.2466780990362167,-0.3535159826278687,0.1251781135797501,0.0987092852592468,-0.0112931765615940,0.1185363978147507,-0.4248363077640533,0.1265336424112320,-0.4669539034366608,0.0494908168911934,-0.0044597540982068,-0.1482546329498291,-0.5989261865615845,0.0411448143422604,-0.0738705322146416));
res += mul(Get(s0,dx,-dy), float4x4(-0.1059467568993568,0.0465415045619011,-0.0471747219562531,0.0783711075782776,0.1328231990337372,0.1313336938619614,0.0228597316890955,-0.1501539349555969,-0.1089946925640106,-0.1604242473840714,0.1799708455801010,0.0690634176135063,0.0683060809969902,-0.0416931919753551,0.0060780812054873,-0.1464441865682602));
res += mul(Get(s1,dx,-dy), float4x4(-0.0586888715624809,0.0964308753609657,-0.0316571220755577,0.0353221260011196,0.0418312065303326,-0.0946963950991631,-0.1627527177333832,-0.0582032725214958,-0.2055693268775940,0.1467110663652420,0.0826548486948013,-0.1226999238133430,0.0029381909407675,0.2169261276721954,-0.0183346178382635,0.1705761104822159));
res += mul(Get(s2,dx,-dy), float4x4(0.2083426117897034,-0.0948635265231133,-0.1166468784213066,0.2026420086622238,-0.0545975677669048,-0.0201598927378654,-0.0504390709102154,-0.3332672417163849,0.0650341585278511,0.0953396707773209,0.0548491105437279,0.0485585257411003,-0.2091795504093170,0.2061073631048203,0.0299647543579340,0.1035267189145088));
res += mul(Get(s0,dx,0), float4x4(0.1863544434309006,0.1388632059097290,0.1391296833753586,0.1343794614076614,0.0539486780762672,-0.1679045706987381,0.0828442201018333,0.3426216542720795,-0.0210779625922441,-0.1216909289360046,-0.0944680795073509,-0.2236839532852173,0.0273043047636747,-0.0796339958906174,-0.1254910975694656,0.1580804586410522));
res += mul(Get(s1,dx,0), float4x4(0.0891351327300072,-0.0712581947445869,0.0612938553094864,0.1434368640184402,-0.0114729786291718,0.1664697825908661,-0.1659330725669861,0.0005582832964137,0.0223735831677914,0.0985788330435753,0.1576241850852966,-0.3140592575073242,0.0488390736281872,0.0004966055275872,0.0738779306411743,0.0631867796182632));
res += mul(Get(s2,dx,0), float4x4(0.2060817182064056,-0.0051975320093334,0.1862378865480423,0.1018394976854324,0.0001166580332210,0.1721110194921494,-0.1209324523806572,-0.6763449311256409,0.0656762272119522,-0.1492507159709930,-0.0368658415973186,-0.0766021087765694,-0.2146556973457336,-0.2226242423057556,0.2019638419151306,0.0374588593840599));
res += mul(Get(s0,dx,dy), float4x4(0.0179409570991993,-0.0880967304110527,0.0741663053631783,0.0378958284854889,0.0485463701188564,-0.3657432198524475,-0.3449094891548157,-0.2665834426879883,0.0252651497721672,-0.1483235061168671,0.2112861424684525,0.1611592024564743,0.1018127501010895,0.0522466190159321,-0.0823213458061218,-0.0733941942453384));
res += mul(Get(s1,dx,dy), float4x4(-0.0353032797574997,0.0065615577623248,-0.0524245202541351,0.1456373929977417,-0.0183631479740143,0.0362783372402191,-0.0165790803730488,-0.1339890062808990,-0.0448359660804272,0.8359375000000000,0.0344243086874485,-0.9889956116676331,0.0227056797593832,0.0978460833430290,-0.0879960879683495,0.0902358070015907));
res += mul(Get(s2,dx,dy), float4x4(0.0942877084016800,-0.1852535456418991,0.2619686722755432,0.5271052122116089,-0.0184897333383560,-0.4403921067714691,0.1494819223880768,-0.0232928059995174,0.1402416527271271,-0.0553089454770088,-0.0005812324234284,0.0958600491285324,-0.0024999806191772,-1.1402741670608521,0.1776817589998245,0.0796259716153145));
res = max(float4(0, 0, 0, 0), res) + float4(0.1626089215278625,0.1176103428006172,-0.4288903176784515,0.1674120575189590) * min(float4(0, 0, 0, 0), res);
return res;
}
