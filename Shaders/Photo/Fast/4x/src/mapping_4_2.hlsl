sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.0389116071164608,-0.0401398092508316,-0.0350387692451477,-0.0099563961848617);
res += mul(Get(s0,-dx,-dy), float4x4(-0.0061664171516895,0.0117888385429978,-0.2466502636671066,-0.0497492030262947,-0.0453539639711380,0.0357430651783943,0.0310497842729092,-0.0094178868457675,-0.0182054396718740,-0.0277331676334143,0.0448712855577469,-0.0194148514419794,0.0451751947402954,-0.0670506581664085,0.1534031182527542,-0.0617587566375732));
res += mul(Get(s1,-dx,-dy), float4x4(-0.0344395563006401,0.0478162318468094,0.0856141522526741,0.0277178920805454,0.0159252788871527,-0.1643520891666412,0.0717933773994446,0.0196624752134085,-0.0546712391078472,0.0413521192967892,0.0954122915863991,-0.0192894600331783,0.0596884563565254,-0.0661510974168777,-0.1308455467224121,-0.1705039739608765));
res += mul(Get(s2,-dx,-dy), float4x4(-0.0200783237814903,0.0293177645653486,0.0620537921786308,0.0446375608444214,0.0566948875784874,0.0086889555677772,0.0583292581140995,0.1005200296640396,0.1739672571420670,0.0201303903013468,-0.0465819463133812,-0.0198097359389067,0.0260104779154062,0.0632028207182884,0.0051440065726638,0.0991261675953865));
res += mul(Get(s0,-dx,0), float4x4(-0.2602227330207825,-0.0764395743608475,0.2578369677066803,-0.0787247717380524,0.0319078564643860,-0.0174264386296272,0.2071903049945831,0.0838936343789101,0.1109881177544594,-0.0261115953326225,-0.1282445937395096,-0.0458191484212875,-0.0937808528542519,-0.0876669138669968,0.1428834497928619,0.1502136886119843));
res += mul(Get(s1,-dx,0), float4x4(0.1219774931669235,0.0019153574248776,-0.0760033428668976,0.0353944301605225,-0.0102329477667809,0.0359485261142254,0.2004941850900650,0.0766700655221939,0.0596072636544704,0.0675005391240120,-0.2343684881925583,-0.0074182213284075,-0.2381018400192261,-0.1953786462545395,0.1386334002017975,-0.5986931920051575));
res += mul(Get(s2,-dx,0), float4x4(0.0582852177321911,-0.1107590273022652,-0.1165984347462654,0.0649138689041138,0.1112296208739281,-0.0652859285473824,0.0411380007863045,0.0091685326769948,0.0448805727064610,-0.0026168709155172,0.1086913719773293,0.0011689866660163,0.1650393009185791,-0.0716158151626587,-0.2061444371938705,-0.1002749130129814));
res += mul(Get(s0,-dx,dy), float4x4(-0.0239009708166122,-0.0475932322442532,-0.0220217797905207,0.1860249638557434,0.0228704288601875,-0.1393666565418243,0.0234788395464420,-0.0066573331132531,0.0762150883674622,0.0054872618056834,0.0387962348759174,-0.0351199097931385,0.0616207383573055,-0.2549835741519928,0.2898042500019073,0.1208718270063400));
res += mul(Get(s1,-dx,dy), float4x4(0.1125753521919250,-0.1616338044404984,0.0745193660259247,0.0225344821810722,-0.0237170364707708,0.2043311446905136,0.0823590755462646,0.0463254898786545,0.0486484281718731,-0.1100074574351311,-0.0926328152418137,-0.1348022371530533,0.0328056961297989,0.0382622033357620,0.0602224022150040,-0.0058389003388584));
res += mul(Get(s2,-dx,dy), float4x4(0.0773105919361115,-0.1311643123626709,-0.0318074412643909,0.0089855017140508,-0.0660836175084114,-0.0241564959287643,0.1223621368408203,0.1026105880737305,-0.0048349397256970,0.0504071153700352,-0.0629972368478775,-0.0624931715428829,0.0144817875698209,-0.1423787176609039,-0.0170813538134098,-0.1645749062299728));
res += mul(Get(s0,0,-dy), float4x4(-0.1762554198503494,-0.2990516424179077,-0.0132803972810507,0.2794482707977295,0.1179392337799072,-0.0044383066706359,-0.0233136788010597,0.0419731214642525,-0.0809627845883369,0.1554501503705978,0.1146716102957726,-0.0848276317119598,0.1157961264252663,0.1726749092340469,0.2252659052610397,0.0751481875777245));
res += mul(Get(s1,0,-dy), float4x4(-0.0690374970436096,0.1589753180742264,0.0812638625502586,-0.1007144898176193,-0.0089815929532051,-0.2183274030685425,-0.0316231250762939,0.0015862234868109,0.1335386484861374,-0.0062358183786273,-0.0374317578971386,0.1032351106405258,0.0793592631816864,-0.0177557189017534,0.1472547352313995,0.0975442528724670));
res += mul(Get(s2,0,-dy), float4x4(-0.1064101681113243,-0.1474858820438385,-0.0518546663224697,-0.0154894525185227,-0.2109070718288422,-0.3658396303653717,-0.0583232305943966,0.1191400438547134,-0.0014782249927521,-0.3796020448207855,0.1408005803823471,0.3398332595825195,0.1098305806517601,0.2830002903938293,0.0833124145865440,-0.1216681897640228));
res += mul(Get(s0,0,0), float4x4(-0.2730165719985962,0.0827594399452209,-0.2110782563686371,0.1076589375734329,0.0146654676645994,-0.1611508727073669,0.2933875620365143,-0.1044994369149208,-0.0200757440179586,-0.1869621425867081,-0.3626933693885803,-0.1715223491191864,0.1705769896507263,-0.0515744052827358,-0.3057293593883514,-0.2030326426029205));
res += mul(Get(s1,0,0), float4x4(0.3404436409473419,-0.0591026954352856,-0.1872574239969254,-0.0633278861641884,0.0870176106691360,0.3621948063373566,-0.1332133710384369,-0.3443126082420349,-0.2451569139957428,-0.1341206282377243,-0.1921948641538620,-0.0309086795896292,0.2473345398902893,0.3740359842777252,-0.1762423962354660,0.3928334116935730));
res += mul(Get(s2,0,0), float4x4(-0.5418699383735657,0.6550160050392151,-0.2833714187145233,-0.2286648452281952,0.2137807607650757,0.5711597204208374,-0.3820639550685883,0.2179149836301804,0.1636429578065872,0.7184775471687317,0.1375463306903839,0.0915191471576691,0.1345440000295639,-0.2630230486392975,0.3796106576919556,0.0011184483300894));
res += mul(Get(s0,0,dy), float4x4(-0.1490401178598404,-0.0986674204468727,0.1130248680710793,0.0965420380234718,0.0223471224308014,-0.1059283390641212,0.0140363536775112,-0.1318702548742294,0.0685533136129379,0.1220254823565483,0.1759159117937088,0.0401493310928345,-0.0032079925294966,0.0288701914250851,0.1405560970306396,0.0059210085310042));
res += mul(Get(s1,0,dy), float4x4(0.0273989234119654,-0.0874391645193100,0.0989563539624214,-0.0746426582336426,0.0105626853182912,0.2332357913255692,-0.0488652437925339,0.0033719080965966,0.1287000328302383,0.0358468778431416,-0.0622554384171963,0.1049933731555939,-0.0019015498692170,0.0810882747173309,-0.0998903587460518,0.1128139719367027));
res += mul(Get(s2,0,dy), float4x4(0.0512318052351475,-0.0827359408140182,0.4198935925960541,0.2413201332092285,0.0493821911513805,0.0160278584808111,0.1559582203626633,0.1158800795674324,0.0113267218694091,-0.0362280681729317,0.0803769305348396,0.0939854755997658,-0.0798672065138817,-0.3679625391960144,0.0886709764599800,-0.0823954269289970));
res += mul(Get(s0,dx,-dy), float4x4(0.0361400023102760,-0.1147609055042267,-0.2958959937095642,-0.1543642282485962,0.0250389855355024,0.0633887797594070,0.1405824720859528,-0.0813160538673401,-0.0246052648872137,-0.0951563566923141,0.0021765993442386,0.0402519069612026,0.0470090769231319,0.0716988965868950,0.1114258170127869,-0.0714261904358864));
res += mul(Get(s1,dx,-dy), float4x4(-0.0266564618796110,0.0735279992222786,0.0675288960337639,0.1260248869657516,-0.0314045101404190,-0.0396061763167381,0.0212435759603977,-0.0843882635235786,-0.0019589869771153,-0.0705897510051727,-0.0061351191252470,0.0959507822990417,-0.0174766313284636,-0.0482086576521397,0.1060546711087227,0.1017681434750557));
res += mul(Get(s2,dx,-dy), float4x4(0.0100163221359253,-0.0660410970449448,0.1508239656686783,-0.0082103433087468,-0.0597852393984795,-0.3045905530452728,-0.0666323900222778,-0.1737916171550751,-0.2035587728023529,0.0432823710143566,0.1095939800143242,-0.4015093147754669,0.0974171832203865,0.1320697218179703,0.0526632145047188,0.0405071936547756));
res += mul(Get(s0,dx,0), float4x4(0.0355170257389545,-0.0057234526611865,0.1683874428272247,-0.6895264983177185,0.0329234600067139,-0.0057426774874330,0.0806036293506622,0.1130373254418373,0.0007872739224695,-0.0062856646254659,-0.0283292420208454,0.0001596021756995,-0.0213452167809010,0.1147736012935638,-0.0905225202441216,0.0114847691729665));
res += mul(Get(s1,dx,0), float4x4(-0.1351431906223297,-0.0417556576430798,-0.0803564116358757,0.1432525664567947,-0.0036300276406109,-0.1653355211019516,0.1013082787394524,0.1073953807353973,0.0207943338900805,-0.0148744788020849,0.2815800905227661,0.2631123661994934,0.0794336497783661,-0.1938022524118423,0.1052886247634888,0.2886760830879211));
res += mul(Get(s2,dx,0), float4x4(0.0352565981447697,-0.0656891316175461,0.1099505275487900,0.0180579815059900,-0.0424853563308716,0.0625027567148209,0.0868487656116486,-0.4434824585914612,-0.0358352176845074,0.2057043910026550,0.0188949909061193,-0.2037444263696671,0.0919927805662155,0.2167540639638901,-0.0181225072592497,-0.1200204268097878));
res += mul(Get(s0,dx,dy), float4x4(-0.0563969947397709,-0.0775301456451416,0.0230521727353334,-0.1171998754143715,-0.0371467359364033,-0.1174528151750565,-0.0157636124640703,-0.0113196251913905,0.0504529215395451,0.0716098919510841,0.0400661751627922,-0.0708805695176125,0.0046398583799601,-0.0787552297115326,-0.0933088362216949,0.0221343394368887));
res += mul(Get(s1,dx,dy), float4x4(-0.0699893310666084,-0.0134197873994708,0.0275453869253397,-0.1204008311033249,0.0294420979917049,-0.0021799509413540,0.0871005803346634,0.0087317544966936,0.0203678235411644,-0.0679504200816154,-0.1802941113710403,0.1261610984802246,0.0571661628782749,-0.0230954550206661,-0.0605811439454556,0.1160933971405029));
res += mul(Get(s2,dx,dy), float4x4(0.0666923001408577,0.0822720453143120,-0.1508539170026779,-0.1307226270437241,0.0262646507471800,0.0670449063181877,-0.0611404515802860,-0.0710497051477432,-0.0280943922698498,0.0269615519791842,-0.0564681477844715,-0.0059911496937275,-0.0883635208010674,-0.0179727282375097,-0.1127616986632347,0.0434672050178051));
res = max(float4(0, 0, 0, 0), res) + float4(0.5484243035316467,0.4392587244510651,0.2518103718757629,-0.2326721549034119) * min(float4(0, 0, 0, 0), res);
return res;
}
