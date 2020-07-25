sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.0277994554489851,0.0986488386988640,-0.0166489388793707,-0.0201423224061728);
res += mul(Get(s0,-dx,-dy), float4x4(-0.0785297453403473,0.0176685955375433,-0.0986356884241104,-0.0411484763026237,-0.0507225543260574,-0.0065774642862380,-0.0677841380238533,0.0053591714240611,-0.2134331017732620,-0.0505025684833527,-0.0010428181849420,-0.1637756675481796,0.1519137918949127,0.0425951443612576,0.1014371439814568,0.0698997676372528));
res += mul(Get(s1,-dx,-dy), float4x4(-0.1033551022410393,-0.2554522752761841,-0.0347770452499390,-0.0713399946689606,0.2039508521556854,-0.0541870556771755,0.0323219001293182,-0.0054981010034680,0.1327942907810211,-0.0100126778706908,0.0103822704404593,-0.0447943173348904,0.0400739088654518,0.0353962816298008,-0.0025253423955292,0.0424175634980202));
res += mul(Get(s2,-dx,-dy), float4x4(-0.0066116536036134,0.0092329634353518,-0.0407216362655163,-0.0389037989079952,-0.0306053739041090,0.0018610608531162,-0.1328733414411545,-0.0340064875781536,0.0411825701594353,-0.0331223495304585,0.0257459189742804,0.0356939211487770,0.1104221865534782,0.2235625535249710,-0.0853851065039635,0.0141966147348285));
res += mul(Get(s0,-dx,0), float4x4(0.1349906474351883,0.1381389796733856,-0.0324597358703613,-0.0910262092947960,-0.2288818359375000,-0.1787686794996262,-0.2868126034736633,-0.1403401643037796,0.2255571484565735,-0.0641584098339081,-0.1481741517782211,-0.1244746595621109,-0.0311936959624290,-0.1873594671487808,0.1048058867454529,0.0153872976079583));
res += mul(Get(s1,-dx,0), float4x4(-0.1540096104145050,-0.0885152369737625,0.1972066015005112,0.1997717320919037,-0.0355910733342171,-0.1466971486806870,-0.1386902183294296,-0.0478643774986267,-0.1107278540730476,0.1315917968750000,0.1587591320276260,0.0979984775185585,0.3543409407138824,0.0648044720292091,0.0932894647121429,0.1864258199930191));
res += mul(Get(s2,-dx,0), float4x4(-0.0461958050727844,-0.0565517209470272,-0.0398756675422192,0.0840057805180550,0.0032107704319060,0.0945155024528503,-0.1112401634454727,-0.0145141119137406,0.1072534397244453,-0.1703492999076843,0.1281687468290329,0.0183107126504183,-0.1331608593463898,0.2233689129352570,0.0272061023861170,-0.1144551411271095));
res += mul(Get(s0,-dx,dy), float4x4(-0.1011899039149284,-0.0088528431952000,0.0812323018908501,0.1295264363288879,-0.2409989386796951,-0.2782028019428253,-0.1357437968254089,-0.0859853103756905,0.0585004277527332,-0.0726534724235535,0.0926341637969017,0.0588810369372368,-0.0214281603693962,0.1463338285684586,-0.0995760485529900,0.0250734817236662));
res += mul(Get(s1,-dx,dy), float4x4(0.1771817356348038,0.0416031479835510,-0.0371130816638470,-0.0989005416631699,-0.0037982889916748,0.0414933003485203,0.1154439374804497,-0.0517706722021103,0.0029281489551067,0.0688490271568298,-0.0260851811617613,0.0200845301151276,0.2340703010559082,0.2147722840309143,0.1243253275752068,0.0704376250505447));
res += mul(Get(s2,-dx,dy), float4x4(0.0848253667354584,0.0634211078286171,0.0932866707444191,0.0730952247977257,-0.0541085265576839,0.0936598628759384,-0.0326316729187965,-0.0203324947506189,-0.0796971470117569,-0.0812403485178947,-0.0206399690359831,-0.0107376044616103,-0.0967054888606071,0.3746432662010193,-0.1931100934743881,-0.1101855859160423));
res += mul(Get(s0,0,-dy), float4x4(-0.0799289196729660,0.6080296039581299,0.1245471611618996,0.3364803493022919,0.0324366353452206,-0.1069734990596771,-0.1016418859362602,0.0354325957596302,-0.6070823073387146,-0.1044670268893242,0.1325076967477798,-0.1138003766536713,0.2970974147319794,-0.1838176995515823,-0.1633911728858948,-0.0264436583966017));
res += mul(Get(s1,0,-dy), float4x4(-0.0651487112045288,-0.0313041917979717,0.0445676706731319,-0.1876670122146606,-0.2362928539514542,-0.4317468702793121,0.1451177448034286,-0.3306169509887695,-0.0189125686883926,0.1472924947738647,0.0139288464561105,-0.0920060425996780,0.0328790135681629,0.0107307489961386,-0.0037113926373422,0.0003280334058218));
res += mul(Get(s2,0,-dy), float4x4(0.1416934430599213,-0.1226238012313843,0.0898566618561745,0.0395142957568169,-0.2740195989608765,0.0962240397930145,-0.0471303984522820,-0.1535678058862686,-0.2290941923856735,-0.1526817977428436,0.0777344331145287,-0.1242583245038986,0.2416464239358902,0.1753294765949249,-0.0869261473417282,0.1719334870576859));
res += mul(Get(s0,0,0), float4x4(0.4684045314788818,-0.7078133821487427,-0.5079391002655029,-0.3345825672149658,-0.3675483167171478,-0.4282668828964233,-0.1748311668634415,-0.0721296519041061,0.0602923743426800,1.0491617918014526,-0.1522883027791977,0.1110223755240440,0.0093221683055162,-0.3651273846626282,0.4622366428375244,-0.0475446656346321));
res += mul(Get(s1,0,0), float4x4(-0.0527179911732674,0.4172546565532684,0.1618794649839401,0.1767839342355728,0.2019296139478683,0.1897014677524567,0.1124195978045464,0.1252936571836472,0.3152186572551727,0.4878374934196472,0.0495378747582436,-0.2532241642475128,0.4735634028911591,0.0341040305793285,-0.1257929056882858,0.4068672955036163));
res += mul(Get(s2,0,0), float4x4(-0.2197370380163193,0.2512584924697876,0.3828998804092407,-0.0055003995075822,0.0559181161224842,-0.0444663017988205,0.0263011064380407,-0.0024668604601175,0.0082528712227941,0.4821581244468689,-0.1862700879573822,0.1261194795370102,0.1721982806921005,0.1180221810936928,0.1930217295885086,-0.1431167274713516));
res += mul(Get(s0,0,dy), float4x4(-0.3301871418952942,0.0226655397564173,0.2228142768144608,0.1639022678136826,-0.1915891468524933,-0.4183756113052368,-0.1130631640553474,-0.0354959443211555,-0.1125201955437660,-0.1602547317743301,0.3362850844860077,0.1876841038465500,-0.1699632406234741,0.1824401617050171,-0.1806829422712326,0.0543015301227570));
res += mul(Get(s1,0,dy), float4x4(0.1162615567445755,0.2439043074846268,-0.0565002784132957,0.1323060095310211,0.1812777519226074,0.0966454371809959,-0.1110595613718033,-0.0714261382818222,-0.1718170195817947,-0.3140661418437958,0.1269449442625046,0.2356738299131393,0.5412928462028503,-0.1710182577371597,0.0327326506376266,0.6080436706542969));
res += mul(Get(s2,0,dy), float4x4(0.0191309731453657,0.5268089771270752,0.1201582029461861,0.1670450419187546,-0.0066820573993027,-0.0354956947267056,-0.0645021423697472,-0.0188681408762932,0.1141141876578331,-0.0363492816686630,0.0010851481929421,0.0279103759676218,-0.0221489612013102,0.4801183640956879,-0.0697039514780045,-0.0844418257474899));
res += mul(Get(s0,dx,-dy), float4x4(0.1152746081352234,-0.2141201794147491,-0.0714366510510445,-0.0574179887771606,-0.0078670820221305,-0.1978216618299484,-0.0670160278677940,0.0883392989635468,0.1101122349500656,-0.0357667915523052,0.0007879469776526,-0.0529932118952274,0.0048418939113617,0.0409265123307705,-0.1379737257957458,0.0673988237977028));
res += mul(Get(s1,dx,-dy), float4x4(-0.1374099254608154,-0.0634768903255463,0.1112333834171295,-0.2335483282804489,-0.0363255739212036,0.0387852638959885,-0.0083535797894001,-0.0929854139685631,0.0158905889838934,-0.0779778957366943,-0.0241091437637806,0.1351881623268127,0.0439364314079285,0.0226860009133816,0.0265704263001680,0.0214665569365025));
res += mul(Get(s2,dx,-dy), float4x4(0.1566247045993805,-0.0660781413316727,-0.0096903871744871,0.1308878511190414,-0.0285822637379169,0.1451349556446075,0.0260023009032011,0.0940527245402336,-0.0746276825666428,-0.0306666940450668,0.0145641453564167,-0.1497163027524948,0.2278469651937485,0.2637107074260712,-0.0385311171412468,0.1454847306013107));
res += mul(Get(s0,dx,0), float4x4(-0.1985298991203308,0.0724892467260361,0.2308502197265625,-0.0117081766948104,-0.2847494184970856,-0.2474802583456039,-0.0394072867929935,-0.0878584906458855,0.1313134133815765,0.1308758407831192,-0.0889639481902122,0.2324406206607819,-0.1931070983409882,0.0530703216791153,0.0613637380301952,-0.0521147176623344));
res += mul(Get(s1,dx,0), float4x4(-0.1025770977139473,0.3308222293853760,0.0381431728601456,0.0552804470062256,-0.0942614674568176,-0.1266124844551086,0.0951823666691780,-0.0240854099392891,-0.0928402394056320,-0.1043138578534126,-0.0388493053615093,-0.0782905966043472,0.1460200101137161,0.0177217889577150,0.0139836482703686,0.1952139437198639));
res += mul(Get(s2,dx,0), float4x4(-0.1601818799972534,0.0372558645904064,-0.1591583490371704,0.1535498052835464,0.3679501116275787,0.0460340455174446,0.0705893412232399,0.0827290043234825,-0.0311254691332579,0.1264724731445312,0.0057068895548582,0.0759132653474808,0.0664331614971161,-0.0522700957953930,0.0922230109572411,0.0213823113590479));
res += mul(Get(s0,dx,dy), float4x4(0.1085054576396942,0.0589954480528831,0.0385974235832691,0.0024625952355564,-0.2045474946498871,-0.1088622063398361,0.0457137227058411,-0.0581013150513172,-0.0913494378328323,-0.0378693416714668,0.1509605497121811,-0.0127531681209803,0.0120298890396953,-0.0225812327116728,-0.0250594951212406,-0.1455418765544891));
res += mul(Get(s1,dx,dy), float4x4(0.1365216821432114,-0.0169131103903055,-0.0523812845349312,0.1418831646442413,-0.1215663254261017,0.0189821142703295,-0.2522689998149872,0.0507164746522903,-0.0619335398077965,-0.1014828234910965,0.0576925650238991,0.0276684854179621,0.0639998614788055,-0.0897920057177544,-0.0553422681987286,0.2044198065996170));
res += mul(Get(s2,dx,dy), float4x4(0.0307158995419741,-0.0917849615216255,-0.1637629121541977,0.0307360347360373,0.0505929738283157,-0.1585986018180847,0.1217227578163147,0.0043482813052833,0.0365764088928699,0.0002717482566368,0.0163119807839394,-0.0111724436283112,0.0236432310193777,0.2148712724447250,0.0228632465004921,-0.0391278751194477));
res = max(float4(0, 0, 0, 0), res) + float4(2.4490039348602295,-0.6943922042846680,0.9996569752693176,3.3228416442871094) * min(float4(0, 0, 0, 0), res);
return res;
}
