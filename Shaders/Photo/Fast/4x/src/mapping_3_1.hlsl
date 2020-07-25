sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.0308345425873995,0.0201996155083179,0.0572779849171638,0.0392137393355370);
res += mul(Get(s0,-dx,-dy), float4x4(0.2801335453987122,-0.1344670802354813,-0.0213164687156677,0.0321326553821564,-0.1080316603183746,-0.0140306958928704,-0.0507655702531338,0.0239186026155949,0.1236667037010193,0.1396403312683105,-0.0513174757361412,0.0001594146597199,-0.0386587865650654,-0.0279286261647940,0.0428540110588074,0.0386807769536972));
res += mul(Get(s1,-dx,-dy), float4x4(0.0952411219477654,0.0224335659295321,0.0774480998516083,-0.1824820786714554,0.0688600018620491,0.0547879114747047,-0.1125221922993660,0.0785749778151512,-0.2830080986022949,-0.0968099683523178,0.0759535133838654,0.0402538292109966,-0.0004787493380718,0.0036288981791586,-0.0046151475980878,0.2105091363191605));
res += mul(Get(s2,-dx,-dy), float4x4(-0.0377033799886703,-0.0833132416009903,0.0911695808172226,-0.2786257565021515,0.1654668599367142,0.0576476119458675,0.0202052388340235,0.0307027306407690,-0.0801677182316780,-0.1520756483078003,0.1032748743891716,-0.0430738478899002,-0.0697214230895042,-0.1612125784158707,-0.1147835254669189,-0.2625665068626404));
res += mul(Get(s0,-dx,0), float4x4(-0.1662790775299072,-0.1385259479284286,-0.1888955384492874,0.0803740546107292,-0.0365665256977081,0.0324400998651981,-0.0206458754837513,-0.0364987738430500,-0.0458738431334496,0.0909621566534042,-0.0827054828405380,0.0346917659044266,-0.0732936114072800,-0.0448996052145958,-0.1398435682058334,0.0058051552623510));
res += mul(Get(s1,-dx,0), float4x4(0.0103814005851746,-0.1299940049648285,-0.1883488297462463,0.0357723496854305,0.2964318096637726,0.6022008657455444,0.0033274409361184,0.0762142539024353,-0.0306377094238997,0.1249942928552628,0.1859012395143509,-0.0746931582689285,-0.2946703732013702,-0.2481709867715836,0.0258716363459826,-0.0698523297905922));
res += mul(Get(s2,-dx,0), float4x4(0.2908930480480194,-0.1275124698877335,-0.1652557551860809,0.1477500945329666,-0.9051886796951294,-0.1981398016214371,-0.0215279646217823,0.1272585839033127,-0.4491898417472839,-0.1828722357749939,-0.0515545085072517,0.0407019369304180,-0.0755050107836723,0.1675690710544586,0.0596172399818897,0.2068010270595551));
res += mul(Get(s0,-dx,dy), float4x4(-0.0686381310224533,-0.0820703282952309,-0.0295638106763363,0.0575926676392555,0.1245881840586662,0.0088053587824106,-0.0105501608923078,-0.1018818691372871,0.0810348689556122,0.0567601062357426,0.0441766716539860,-0.0003163466753904,0.0325567200779915,-0.0467429570853710,-0.0103160077705979,-0.0658475086092949));
res += mul(Get(s1,-dx,dy), float4x4(0.1092433035373688,0.0142735755071044,-0.0944848582148552,0.2263173609972000,0.1127415969967842,0.2864924073219299,0.0315880104899406,0.0489932373166084,-0.1338863223791122,0.1487355232238770,0.0040002316236496,-0.0827765241265297,0.1512180566787720,-0.1140632703900337,-0.0209109485149384,-0.0353295952081680));
res += mul(Get(s2,-dx,dy), float4x4(0.1874035596847534,0.1948548406362534,-0.0880330726504326,0.3720888197422028,0.0088374698534608,-0.1200104877352715,0.0573897771537304,0.1284325122833252,-0.1145544126629829,0.0287922099232674,0.0194659084081650,0.0981202572584152,-0.0507782809436321,0.0746104717254639,-0.0671759098768234,0.0547838322818279));
res += mul(Get(s0,0,-dy), float4x4(-0.0338853299617767,0.0669193044304848,-0.2343787848949432,0.3878566026687622,-0.0643367171287537,-0.1682267487049103,-0.1305315494537354,0.0815198644995689,0.0623199716210365,0.0062749884091318,-0.1916405409574509,-0.2312163114547729,-0.1157867982983589,-0.0749609619379044,0.2758782505989075,0.0192666985094547));
res += mul(Get(s1,0,-dy), float4x4(-0.1255106180906296,0.0044871638529003,-0.2064154595136642,-0.1623740792274475,0.0215923991054296,-0.0307015925645828,-0.0830043032765388,0.0525093264877796,0.0870448648929596,-0.0668726488947868,0.3822637200355530,-0.0442525744438171,-0.2818593978881836,-0.0464579761028290,0.0121681783348322,-0.3208428621292114));
res += mul(Get(s2,0,-dy), float4x4(0.1340676099061966,0.0071449126116931,0.1887725293636322,-0.1888089776039124,0.0808922052383423,0.1770644038915634,-0.1791152358055115,-0.0287734661251307,0.1336720883846283,-0.0261006075888872,0.0981141924858093,0.2653005123138428,0.2837533950805664,-0.0739291682839394,-0.1788287162780762,0.2485186755657196));
res += mul(Get(s0,0,0), float4x4(0.0373502448201180,-0.1901976317167282,0.2131910771131516,0.0232455972582102,-0.2957327365875244,0.0315951369702816,0.1145352348685265,0.2421290427446365,0.0794744938611984,0.1073731705546379,0.2422667592763901,-0.2396030128002167,0.1319635361433029,-0.2261718511581421,-0.2737564444541931,0.1316714137792587));
res += mul(Get(s1,0,0), float4x4(-0.2757843732833862,0.0849965810775757,0.0493891388177872,-0.0426352992653847,-0.0300397966057062,0.3219814002513885,-0.1063499450683594,0.1797387152910233,-0.2557168006896973,-0.3376132547855377,-0.2393653541803360,0.2682362198829651,0.3692486584186554,0.1820460110902786,-0.0162144713103771,0.0157096311450005));
res += mul(Get(s2,0,0), float4x4(-0.0370881520211697,-0.1707176268100739,0.0094381198287010,-0.3446412980556488,0.8912853598594666,-0.0542104169726372,0.0237116310745478,-0.2588717937469482,0.0097936363890767,-0.1526650488376617,-0.0463242270052433,-0.1568801850080490,0.0784618258476257,0.1484971940517426,0.4507850408554077,-0.4509145021438599));
res += mul(Get(s0,0,dy), float4x4(0.2547670006752014,-0.3084430992603302,-0.0306091420352459,-0.3309125602245331,-0.0799921825528145,0.0214424934238195,-0.0556984469294548,0.0373838953673840,0.1656209975481033,-0.2699630260467529,0.0265162941068411,-0.1435070037841797,0.0945054665207863,-0.0255373120307922,-0.1803270131349564,-0.1414343714714050));
res += mul(Get(s1,0,dy), float4x4(-0.3464384675025940,-0.0734609439969063,0.1076463460922241,0.1587571054697037,0.1064932495355606,0.2484138160943985,0.1018755435943604,0.1124423071742058,-0.3432573676109314,0.4000757634639740,-0.3640856146812439,0.0566260665655136,-0.1276293396949768,0.1398189961910248,0.1044021323323250,-0.1184787601232529));
res += mul(Get(s2,0,dy), float4x4(0.0465565063059330,0.0809747204184532,-0.0883565396070480,-0.2702523469924927,-0.1888224780559540,0.1479786783456802,0.0718197524547577,0.0395502746105194,-0.0115906782448292,-0.0512521825730801,-0.0195779781788588,-0.0816564485430717,0.0906354188919067,-0.0235774796456099,-0.0333469212055206,0.1008033156394958));
res += mul(Get(s0,dx,-dy), float4x4(-0.1769248843193054,0.0622966475784779,-0.1905211061239243,0.0617155767977238,0.0566640123724937,-0.0447585992515087,-0.0061109797097743,0.0319653376936913,0.0384560525417328,0.0424819104373455,-0.0570634342730045,0.0024832275230438,-0.0134752206504345,0.0247617717832327,0.1802485138177872,0.1643302142620087));
res += mul(Get(s1,dx,-dy), float4x4(0.0664130896329880,-0.0882452800869942,-0.0839323028922081,-0.3427765965461731,-0.1192166879773140,-0.0396500080823898,0.0033568469807506,0.0376924760639668,-0.0366455949842930,0.0889734551310539,0.2132947444915771,0.2575289309024811,-0.1422667950391769,-0.1846471577882767,0.0434851422905922,-0.2679073512554169));
res += mul(Get(s2,dx,-dy), float4x4(0.0957299098372459,-0.0736880972981453,-0.1266806572675705,0.0170985721051693,-0.0460266768932343,-0.0300877150148153,-0.1028016582131386,-0.0073097199201584,-0.1180853918194771,-0.0188055895268917,-0.0186162721365690,0.0087470933794975,0.0814546272158623,-0.0514397360384464,-0.1057650148868561,0.0390336140990257));
res += mul(Get(s0,dx,0), float4x4(-0.2222311049699783,0.0071205003187060,0.1377317905426025,0.4785419106483459,0.0811273008584976,-0.1647915840148926,-0.0988998338580132,-0.0338345468044281,0.0306819602847099,0.0152386398985982,-0.0102766556665301,-0.0699515864253044,-0.0354293175041676,-0.0822398513555527,-0.1061555445194244,-0.5138455629348755));
res += mul(Get(s1,dx,0), float4x4(0.0108576947823167,-0.0029691238887608,0.0105802835896611,0.1503127962350845,-0.0342375636100769,0.1430468410253525,-0.0640367716550827,0.3493465185165405,-0.1464511603116989,-0.1900145113468170,-0.1247911527752876,-0.0004448898835108,0.0368101857602596,0.0553739182651043,0.0045303795486689,0.2470339089632034));
res += mul(Get(s2,dx,0), float4x4(0.1867468059062958,0.1138120070099831,0.1932317763566971,0.4146619439125061,0.0691324695944786,0.1044524684548378,0.2553643286228180,-0.1137523278594017,-0.1682738959789276,0.0248695090413094,0.0576618127524853,0.0525552146136761,-0.0991582348942757,0.0707564577460289,0.0312865301966667,-0.0330753251910210));
res += mul(Get(s0,dx,dy), float4x4(0.1790312379598618,0.0171368122100830,-0.0133648337796330,0.1126261726021767,0.0908368229866028,0.0167330447584391,0.0177686531096697,-0.1362796723842621,0.0112875085324049,0.0682395398616791,0.0270190257579088,-0.1241204664111137,0.0317339412868023,0.0945746824145317,-0.0557874031364918,-0.0895117074251175));
res += mul(Get(s1,dx,dy), float4x4(0.0214659385383129,-0.0267544519156218,-0.0182360950857401,0.1310156434774399,0.1039468720555305,0.1392476707696915,0.0403362177312374,0.1199393570423126,0.1563723534345627,0.0830807462334633,-0.2047189772129059,0.0173628684133291,-0.1000354588031769,-0.0744303539395332,0.0774684920907021,-0.0827933326363564));
res += mul(Get(s2,dx,dy), float4x4(-0.0905810594558716,0.0008905699360184,-0.1524506062269211,-0.0744267627596855,-0.2024199813604355,-0.0112821729853749,0.0392223596572876,-0.0448934808373451,-0.0400127992033958,-0.0804255008697510,-0.0665401145815849,0.0550158284604549,0.0029539561364800,0.0013920187484473,-0.0287584699690342,0.0664728060364723));
res = max(float4(0, 0, 0, 0), res) + float4(0.3809874355792999,2.5138530731201172,3.0837068557739258,0.2209513038396835) * min(float4(0, 0, 0, 0), res);
return res;
}
