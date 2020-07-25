sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.1203113719820976,0.1061849221587181,-0.0110321678221226,0.1269334703683853);
res += mul(Get(s0,-dx,-dy), float4x4(-0.0384128466248512,-0.1386533379554749,-0.0037561855278909,0.1410507410764694,0.2435492575168610,0.0470909588038921,0.2491260468959808,0.0568231828510761,0.0044953119941056,0.0103266946971416,0.0468792505562305,-0.0597482547163963,-0.0834036245942116,-0.2019391953945160,-0.1317228525876999,-0.1237053796648979));
res += mul(Get(s1,-dx,-dy), float4x4(0.0069008753634989,0.0659772157669067,-0.0066380477510393,0.0183142516762018,-0.0114247640594840,-0.2122292071580887,0.0274582952260971,-0.0278612431138754,-0.0385424159467220,0.0350428558886051,-0.0183246433734894,-0.1685744673013687,-0.1519042551517487,0.2388835102319717,-0.1518004089593887,-0.4808819591999054));
res += mul(Get(s2,-dx,-dy), float4x4(0.0528617128729820,0.0374186001718044,0.1060898974537849,-0.0720841586589813,0.0724610909819603,-0.3311654031276703,-0.0176565647125244,0.0341739244759083,-0.0367051288485527,0.0486942641437054,0.0054220319725573,-0.1137480437755585,0.2849475443363190,0.2943174242973328,0.2953979671001434,-0.4597460031509399));
res += mul(Get(s0,-dx,0), float4x4(-0.0092344228178263,-0.0667853951454163,-0.2736826837062836,-0.1075812503695488,0.0291300397366285,-0.1436247825622559,0.1638543009757996,-0.1303211450576782,-0.0650185495615005,-0.2719487249851227,0.2042656987905502,-0.0064552798867226,0.1236402690410614,-0.0596672743558884,0.3918426036834717,-0.3913011550903320));
res += mul(Get(s1,-dx,0), float4x4(-0.0149517841637135,0.2300644367933273,-0.2317866832017899,0.0982124730944633,0.2095842659473419,-0.4752593040466309,0.0938304364681244,-1.2806394100189209,0.1268799155950546,0.2045540660619736,0.0098875816911459,-0.2591703236103058,-0.0107930032536387,0.2650814950466156,0.0678029060363770,0.0316514596343040));
res += mul(Get(s2,-dx,0), float4x4(0.0449810437858105,-0.0224966425448656,-0.1589711755514145,-0.0280456952750683,0.1387597918510437,-0.1625850945711136,0.0032243244349957,0.4194444715976715,0.0171252731233835,-0.0491207949817181,-0.0544607751071453,0.3261200785636902,-0.0032667156774551,0.2656177282333374,0.1132946759462357,0.4234529137611389));
res += mul(Get(s0,-dx,dy), float4x4(-0.0112011572346091,-0.0413505770266056,0.0701072812080383,-0.1052336469292641,0.0446461997926235,0.0980197787284851,0.3345460891723633,0.0939062833786011,-0.0588170699775219,0.0254223737865686,-0.0583551935851574,0.1845740377902985,-0.0644357874989510,-0.0465875975787640,-0.0799618512392044,0.0847225710749626));
res += mul(Get(s1,-dx,dy), float4x4(-0.0486078374087811,0.0063171121291816,-0.0843471810221672,0.0791405811905861,0.0481954663991928,-0.1239289492368698,0.1532409340143204,-0.0487235710024834,0.0235471185296774,0.0414969287812710,-0.0744680464267731,0.0765753015875816,0.0004733897512779,0.0493758469820023,-0.0953994840383530,-0.1777335554361343));
res += mul(Get(s2,-dx,dy), float4x4(0.0389174781739712,-0.0111356005072594,-0.0287754200398922,0.0280939508229494,-0.0254799742251635,-0.0158497858792543,-0.0063791256397963,-0.0242545045912266,-0.0141480034217238,-0.0006530422251672,0.1944352835416794,0.0284015852957964,-0.0533487536013126,-0.1799228191375732,-0.0557082407176495,-0.0695811435580254));
res += mul(Get(s0,0,-dy), float4x4(-0.1773282736539841,-0.1559998691082001,0.3644066154956818,-0.0251720473170280,0.2277831435203552,0.5371943712234497,0.2892692983150482,0.1812533289194107,-0.0016042725183070,-0.0948841795325279,-0.0858517587184906,0.0869305953383446,-0.0595588237047195,-0.3393258452415466,0.0252882745116949,-0.1279599666595459));
res += mul(Get(s1,0,-dy), float4x4(0.0237854495644569,0.0136510226875544,0.0910185649991035,-0.0011674476554617,0.1013857871294022,0.1827533990144730,0.1039493530988693,-0.0903691425919533,0.0727931484580040,0.1285383552312851,-0.0368799008429050,0.0642696321010590,0.1086329594254494,0.2445468306541443,-0.0169721916317940,-0.1638137102127075));
res += mul(Get(s2,0,-dy), float4x4(0.0105248261243105,-0.1148198619484901,-0.1523071676492691,0.0963145196437836,0.0661688521504402,-0.0821594223380089,0.0396611019968987,-0.3264590799808502,0.0412809029221535,0.0199851430952549,0.1983272582292557,0.1470045745372772,-0.0792680680751801,-0.3222643733024597,-0.2107719928026199,-0.2071181684732437));
res += mul(Get(s0,0,0), float4x4(0.1169104203581810,-0.3593416810035706,-0.0832341834902763,0.0476856492459774,-0.3461192846298218,0.3970860540866852,0.2196136713027954,-0.4088155925273895,0.1151282042264938,0.4193128943443298,0.0385573394596577,0.3086356222629547,-0.6652575731277466,0.0005342048825696,-0.5759509205818176,0.0354099310934544));
res += mul(Get(s1,0,0), float4x4(0.1602772772312164,0.4382507205009460,-0.2394366711378098,0.2170177400112152,0.0303731467574835,-0.5343504548072815,0.5040395259857178,-0.2585834562778473,0.0477985031902790,-0.3610565960407257,0.1959539800882339,0.6876120567321777,0.8637361526489258,0.5152847170829773,0.0568295009434223,-0.0337313078343868));
res += mul(Get(s2,0,0), float4x4(0.1430050581693649,-0.5027647018432617,0.3093130588531494,0.1555863320827484,0.2373328208923340,-0.0451828092336655,-0.3270102143287659,-0.0154095934703946,0.2942442595958710,0.1519587039947510,0.0198735538870096,-0.0417797863483429,0.2300024628639221,0.5534467101097107,-0.0343728549778461,0.1501815319061279));
res += mul(Get(s0,0,dy), float4x4(-0.1614627391099930,-0.2520664334297180,-0.0850624367594719,0.0560156628489494,0.2066372781991959,0.2779323160648346,-0.3988443911075592,-0.2401188015937805,0.0244354009628296,-0.0106187229976058,0.0268054008483887,0.0329353287816048,-0.1079210564494133,-0.0995639041066170,0.1131387352943420,0.0311245024204254));
res += mul(Get(s1,0,dy), float4x4(0.1219442412257195,0.0753911063075066,-0.1046409383416176,-0.0537729896605015,0.1053427830338478,-0.0343999974429607,0.0897619128227234,0.0456912778317928,0.1344835013151169,0.0350383222103119,0.1924135833978653,-0.1325856298208237,0.1302739679813385,0.1346451342105865,0.0764908865094185,0.0197093039751053));
res += mul(Get(s2,0,dy), float4x4(0.1403277814388275,0.0800942406058311,0.0928814038634300,-0.1005232706665993,0.0673683360219002,-0.1599231660366058,-0.0287781842052937,-0.0594685152173042,0.1167507097125053,-0.1021977886557579,0.0265257060527802,0.1856036633253098,-0.0357792973518372,-0.3081973195075989,-0.0188808422535658,-0.0014847588026896));
res += mul(Get(s0,dx,-dy), float4x4(-0.0645421445369720,-0.1790460497140884,-0.0888299345970154,-0.0488197095692158,-0.2092985063791275,-0.1982112526893616,-0.0601581819355488,-0.0481986962258816,-0.0237276945263147,-0.0513950847089291,-0.1533872932195663,0.0102384686470032,-0.0388960614800453,0.1366404891014099,-0.0174119751900434,0.1452340781688690));
res += mul(Get(s1,dx,-dy), float4x4(0.0057907490991056,0.0121293617412448,0.0192404575645924,0.0504228249192238,0.1294957995414734,-0.0176432896405458,0.1160835474729538,-0.1003831401467323,-0.0569228976964951,0.0549360215663910,-0.1489260792732239,0.0849629491567612,0.2847780883312225,0.1986167877912521,-0.0574974194169044,0.0663149878382683));
res += mul(Get(s2,dx,-dy), float4x4(-0.0361067391932011,0.0584762319922447,0.0413348563015461,0.0824515670537949,0.0337190702557564,0.1048392429947853,0.0371163897216320,-0.0235288683325052,0.0702230110764503,-0.1021093800663948,0.0986493602395058,-0.0843758508563042,-0.0142726302146912,-0.0853791460394859,-0.0500793233513832,0.0351624600589275));
res += mul(Get(s0,dx,0), float4x4(-0.0222820136696100,-0.0542027316987514,0.0431705787777901,0.0225323252379894,-0.0565000027418137,-0.0586323663592339,-0.2350104153156281,0.1866838335990906,-0.3012557625770569,0.0488405972719193,0.0226417388767004,-0.1697330623865128,0.1938098222017288,0.1118934676051140,0.1301633268594742,0.1058798059821129));
res += mul(Get(s1,dx,0), float4x4(-0.1337083876132965,-0.0809971019625664,-0.0234972592443228,0.0141344219446182,0.0292306095361710,0.0314314849674702,0.1454790234565735,-0.2151013761758804,-0.1502980142831802,-0.0045585259795189,-0.0880320295691490,0.0172557327896357,0.5510719418525696,0.2460532486438751,0.1971409022808075,0.1617700904607773));
res += mul(Get(s2,dx,0), float4x4(-0.2242830693721771,0.0280277691781521,-0.2879015207290649,0.0635298043489456,-0.2997893691062927,-0.1272226423025131,-0.1175111383199692,0.0203105919063091,-0.0730216428637505,-0.0544630140066147,-0.1542808115482330,-0.0762380510568619,-0.1552676111459732,-0.1591944843530655,-0.1262750327587128,0.1303155273199081));
res += mul(Get(s0,dx,dy), float4x4(-0.1742385476827621,-0.1723971813917160,0.0418320447206497,-0.0221798941493034,-0.2840388119220734,0.0141984336078167,-0.0396661907434464,-0.1081592515110970,-0.0176126547157764,0.0060462658293545,0.0621012151241302,-0.1111016348004341,0.0527934096753597,0.0758480057120323,-0.1730167567729950,0.1012879386544228));
res += mul(Get(s1,dx,dy), float4x4(-0.0130683826282620,-0.0099588222801685,0.0700782909989357,0.0314213149249554,0.0451324693858624,0.0113018937408924,0.1257153153419495,-0.0218237154185772,0.0453821904957294,-0.0406174398958683,-0.0915085971355438,-0.1048101633787155,0.1332251578569412,0.1592475324869156,0.0145204439759254,0.1026615351438522));
res += mul(Get(s2,dx,dy), float4x4(-0.1050098314881325,-0.0431919917464256,0.0350441709160805,-0.0360676720738411,-0.0878725200891495,-0.0100064240396023,-0.0122552691027522,-0.0192328933626413,-0.0822258144617081,0.0538496635854244,0.2183701843023300,-0.0627688765525818,-0.1442874222993851,-0.1062308475375175,-0.0685072466731071,-0.0756707936525345));
res = max(float4(0, 0, 0, 0), res) + float4(-0.2683009803295135,0.5262165069580078,1.0875781774520874,-0.0244189295917749) * min(float4(0, 0, 0, 0), res);
return res;
}
