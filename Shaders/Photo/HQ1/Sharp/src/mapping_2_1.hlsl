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
float4 res = float4(0.0386564768850803,-0.0291786137968302,0.0392363145947456,-0.0556007586419582);
res += mul(Get(s0,-dx,-dy), float4x4(0.0884570404887199,-0.0818185955286026,-0.0383856184780598,0.1164346188306808,0.0711321905255318,-0.1408415734767914,0.0062602418474853,0.2501915395259857,-0.0627201646566391,-0.0663033574819565,0.0115780169144273,0.0226461347192526,0.0638251453638077,0.1740235984325409,0.0001551286259200,0.0632002130150795));
res += mul(Get(s1,-dx,-dy), float4x4(0.0143066914752126,-0.1381224244832993,0.0973343551158905,-0.0050290552899241,-0.1292184591293335,0.0286597367376089,0.0965955555438995,-0.0112824337556958,-0.0230616349726915,0.1479429453611374,-0.0589297749102116,-0.0067083803005517,0.0000436818663729,-0.0429149568080902,-0.0615994222462177,0.0163335874676704));
res += mul(Get(s2,-dx,-dy), float4x4(-0.0689018815755844,0.0140366982668638,-0.0659917220473289,0.0764660015702248,-0.0467114038765430,-0.0041302810423076,-0.0007377879228443,0.0001646289310884,0.0261530932039022,0.0421759262681007,0.0200804844498634,-0.1405859589576721,0.0334521047770977,-0.0911753103137016,0.0131481532007456,0.1256183087825775));
res += mul(Get(s3,-dx,-dy), float4x4(0.0035700784064829,0.0054140589199960,-0.0558927021920681,-0.1293748170137405,-0.1107401326298714,0.0031870445236564,-0.0074658370576799,-0.1355574727058411,0.1667998433113098,0.1005020663142204,-0.0505884252488613,0.2265454977750778,-0.0273511428385973,0.0409794636070728,0.0369058735668659,-0.0315147005021572));
res += mul(Get(s4,-dx,-dy), float4x4(-0.1282010525465012,0.4406549036502838,0.1403518766164780,-0.0117302695289254,-0.1462944000959396,0.0679186135530472,0.1025697737932205,0.1446955353021622,0.1074903830885887,-0.1236372739076614,-0.1092367693781853,-0.2338429093360901,0.2037139683961868,0.0149838542565703,0.1192074418067932,0.1475063711404800));
res += mul(Get(s5,-dx,-dy), float4x4(-0.0172093417495489,0.0691542029380798,0.0392874814569950,0.1696192324161530,-0.1399463862180710,0.0431969240307808,-0.0289950016885996,-0.1180773898959160,-0.0003418203559704,0.0541704967617989,0.0050615696236491,0.0547572970390320,0.0342184789478779,-0.1157776564359665,0.0557778477668762,-0.0664288997650146));
res += mul(Get(s0,-dx,0), float4x4(-0.0048574530519545,0.4055728912353516,-0.0993536636233330,0.1062182858586311,-0.0197615213692188,0.0482459142804146,-0.0479809269309044,-0.1299540847539902,0.0259275622665882,0.0538899190723896,0.0609545484185219,0.1824246793985367,0.0787303075194359,0.0476296469569206,-0.0044075800105929,0.2584758698940277));
res += mul(Get(s1,-dx,0), float4x4(-0.0335099324584007,-0.3368631899356842,-0.1715898066759109,0.0287940222769976,-0.3116786777973175,-0.0259596295654774,0.1135620474815369,0.1948428750038147,-0.0825791507959366,-0.2804717421531677,0.2338508069515228,0.0716821774840355,-0.1120053157210350,0.0476690046489239,-0.1507974416017532,0.1446153968572617));
res += mul(Get(s2,-dx,0), float4x4(-0.0459983497858047,0.0703351497650146,-0.1814873963594437,0.0671250820159912,0.0793196409940720,0.0940280258655548,0.0124733624979854,0.0794692337512970,-0.1248189881443977,0.0210517998784781,0.0983311235904694,0.0846015661954880,0.1609534919261932,-0.0556157156825066,0.0618754476308823,-0.0368425473570824));
res += mul(Get(s3,-dx,0), float4x4(0.1196221783757210,-0.0351106487214565,-0.3137929141521454,0.0710065960884094,0.0195121672004461,0.0178946442902088,-0.1870062202215195,0.0108792083337903,0.3374873101711273,0.3427454233169556,0.2294737249612808,0.0867505446076393,-0.1033946499228477,0.0942466035485268,-0.2239254862070084,0.0423412024974823));
res += mul(Get(s4,-dx,0), float4x4(-0.2430604845285416,-0.0826378986239433,-0.1432506740093231,-0.2335586398839951,-0.0186455044895411,-0.0569045878946781,-0.0149553623050451,0.2096763998270035,0.2023490518331528,-0.0497848652303219,-0.1114133670926094,0.0217848960310221,0.1431618481874466,-0.1350596994161606,-0.0393530838191509,-0.0240776110440493));
res += mul(Get(s5,-dx,0), float4x4(-0.0937733426690102,-0.0261652730405331,0.0728713274002075,-0.1655856668949127,-0.0480108410120010,-0.2120946198701859,0.0224498603492975,-0.0168684888631105,-0.1588602811098099,-0.0695327892899513,-0.0125948945060372,-0.2342287003993988,-0.0692075714468956,-0.2577165961265564,-0.0808843597769737,-0.2155901789665222));
res += mul(Get(s0,-dx,dy), float4x4(0.0916060507297516,-0.0693662166595459,-0.0046961861662567,0.1029705777764320,-0.0124309258535504,-0.1263200044631958,0.0255873091518879,0.0915448218584061,-0.1839265227317810,0.1261809617280960,-0.0096204904839396,0.0393807217478752,0.0329852476716042,0.1063818410038948,-0.0621572397649288,0.0971893146634102));
res += mul(Get(s1,-dx,dy), float4x4(0.0530089698731899,0.0510907098650932,0.1150740459561348,-0.2671361863613129,-0.2594315111637115,0.0001089743745979,0.1967895627021790,0.1348026692867279,0.0244479216635227,0.0128439916297793,0.0669284313917160,-0.1739163249731064,-0.0227256678044796,0.0397116355597973,-0.0486374609172344,-0.0548789575695992));
res += mul(Get(s2,-dx,dy), float4x4(-0.0850716531276703,-0.0455461740493774,0.0438362322747707,-0.3039262294769287,0.0024158763699234,-0.1045489087700844,0.1070393696427345,-0.0620698370039463,0.0847396403551102,-0.1450555473566055,0.2162038236856461,-0.1815200895071030,-0.0367460846900940,0.1113912388682365,0.0214800816029310,0.0437164865434170));
res += mul(Get(s3,-dx,dy), float4x4(-0.1834139823913574,-0.0301121957600117,0.0208615008741617,0.1808467358350754,0.0962503254413605,0.0089311385527253,0.1153680011630058,-0.1001989394426346,0.1852976977825165,0.7806910872459412,0.2019243836402893,-0.1027829870581627,-0.0650856494903564,0.1028003171086311,-0.0803313255310059,-0.1238811612129211));
res += mul(Get(s4,-dx,dy), float4x4(-0.0756036564707756,-0.2303032726049423,-0.0072326194494963,0.0598360374569893,-0.1301560997962952,-0.0144446026533842,0.0823619142174721,-0.0523547977209091,0.1685131192207336,0.0229107961058617,0.0175151228904724,-0.1329568624496460,0.1766584664583206,0.0802843421697617,-0.0035554037895054,-0.2209638953208923));
res += mul(Get(s5,-dx,dy), float4x4(0.1260279119014740,-0.0103620989248157,-0.0503391101956367,-0.0285961460322142,0.0029252448584884,-0.0065468908287585,-0.0548381246626377,0.0045969970524311,-0.2569371163845062,0.0414782129228115,-0.0474689304828644,-0.0532283410429955,-0.0479673519730568,-0.1305174082517624,0.0147168338298798,-0.1975581049919128));
res += mul(Get(s0,0,-dy), float4x4(0.0084197642281651,-0.0595285855233669,-0.0202020630240440,-0.0268287584185600,0.1413524746894836,0.0767049714922905,-0.0733532309532166,-0.0345415547490120,0.0250019319355488,-0.0607342645525932,0.2045188695192337,0.1000307723879814,-0.0593369565904140,0.2003297954797745,-0.0050362055189908,-0.1389363110065460));
res += mul(Get(s1,0,-dy), float4x4(0.0055494746193290,-0.1633715480566025,-0.0802476778626442,-0.0675998553633690,-0.0442826189100742,0.0779719948768616,0.0956927314400673,0.1427624970674515,-0.0200807489454746,0.0275518372654915,-0.0118452338501811,-0.2254288792610168,-0.0713751912117004,-0.0160365421324968,0.0874056518077850,-0.0766344442963600));
res += mul(Get(s2,0,-dy), float4x4(0.0891140326857567,0.0613108314573765,-0.0396218411624432,0.0754965096712112,-0.0225191675126553,-0.2042630463838577,0.0438753850758076,0.0171476285904646,0.0772320404648781,-0.0942890644073486,0.0431833267211914,-0.2098952531814575,-0.0163848418742418,-0.2124861329793930,-0.0347127169370651,0.1031379997730255));
res += mul(Get(s3,0,-dy), float4x4(-0.0044020600616932,-0.0873269662261009,0.0927103087306023,-0.0167722571641207,0.1329872161149979,0.0926633253693581,0.0218591298907995,0.0284143015742302,-0.5245146155357361,0.1748478263616562,-0.0462878309190273,-0.0707506611943245,-0.0307954549789429,-0.0056665409356356,0.0789777487516403,0.1126806959509850));
res += mul(Get(s4,0,-dy), float4x4(0.0755645483732224,0.6901001334190369,0.0056497668847442,-0.3750774264335632,0.2164113372564316,0.0604629479348660,-0.0262069478631020,-0.0483979247510433,-0.0789682045578957,-0.2294249385595322,-0.1380139142274857,-0.0532823614776134,0.1230348125100136,-0.0697557479143143,0.0288622584193945,-0.0068637025542557));
res += mul(Get(s5,0,-dy), float4x4(0.0303779877722263,-0.1751813292503357,0.0764414817094803,0.0785054042935371,-0.0280764456838369,0.1505549699068069,-0.0505872443318367,0.0006153882713988,0.0308706965297461,0.0270436797291040,0.0249929782003164,0.0656519159674644,0.0139782503247261,-0.0702276751399040,-0.2078334838151932,-0.0142751261591911));
res += mul(Get(s0,0,0), float4x4(-0.0244878288358450,0.7668423652648926,-0.2801625430583954,0.2730853557586670,-0.0625646114349365,-0.1043697074055672,-0.0198153909295797,0.2131775170564651,0.0647438019514084,-0.0471526458859444,0.3263696730136871,-0.2050630450248718,0.0542837083339691,-0.0858801826834679,-0.0534305311739445,-0.0562936477363110));
res += mul(Get(s1,0,0), float4x4(0.0393431745469570,-0.1116740927100182,-0.0279167965054512,-0.1730113774538040,-0.3277572393417358,0.0627001449465752,0.2322235703468323,0.0171779636293650,0.2917124927043915,0.0245796684175730,0.1380553543567657,-0.1139736846089363,-0.0504783242940903,-0.1396738439798355,0.0550329200923443,0.2146221697330475));
res += mul(Get(s2,0,0), float4x4(0.0659255981445312,0.2771945297718048,0.0953839495778084,-0.0662791579961777,0.0881699100136757,-0.1439309865236282,-0.0570743605494499,-0.0556619837880135,0.0967336297035217,-0.1508982479572296,0.0715163946151733,0.1808215826749802,0.0688501745462418,0.0258945375680923,-0.0377598591148853,0.0220205709338188));
res += mul(Get(s3,0,0), float4x4(-0.0540233328938484,-0.2963584065437317,0.2356649339199066,-0.0749320685863495,-0.1557446420192719,0.0659466758370399,-0.0183221865445375,-0.0131619842723012,0.2002580314874649,0.1459043025970459,0.1181121841073036,0.0176560599356890,0.1228965297341347,-0.1717265993356705,0.2462390363216400,-0.0926448926329613));
res += mul(Get(s4,0,0), float4x4(0.1901309490203857,-0.2318664491176605,0.1823460161685944,0.0373367443680763,0.0569672025740147,0.0711350366473198,-0.2304852157831192,0.0745323449373245,-0.2235008329153061,-0.0478956364095211,-0.3365185558795929,-0.1058737859129906,-0.2001138329505920,0.0531845688819885,-0.1073714569211006,-0.1960237920284271));
res += mul(Get(s5,0,0), float4x4(0.1131145879626274,-0.1750639081001282,0.1014428511261940,-0.0795414596796036,-0.0410333313047886,-0.3497076034545898,0.0524743273854256,-0.0925491377711296,-0.0094751268625259,-0.2854948639869690,-0.1033907458186150,0.2695580422878265,-0.0691462308168411,-0.4486864805221558,-0.7402716875076294,-0.1582002043724060));
res += mul(Get(s0,0,dy), float4x4(0.0012891227379441,0.1732150763273239,-0.1698301136493683,0.0286824218928814,-0.0304713025689125,0.0174209941178560,0.0022348852362484,-0.0215690806508064,-0.0725626647472382,0.1267863065004349,0.0606969520449638,-0.1045326665043831,0.1888882070779800,0.1910565495491028,-0.1839944422245026,0.0160041116178036));
res += mul(Get(s1,0,dy), float4x4(0.0075126765295863,0.0787322223186493,0.0703981295228004,-0.2411871999502182,-0.3682738542556763,0.0075692981481552,0.1707793176174164,-0.0894114226102829,-0.0229614451527596,0.2327557504177094,0.0894649997353554,-0.0600520223379135,0.1014112085103989,-0.3409895896911621,0.2559489309787750,-0.1988028138875961));
res += mul(Get(s2,0,dy), float4x4(-0.2112597525119781,-0.1063538119196892,-0.1309375762939453,-0.3768896758556366,-0.0620307996869087,0.1033562645316124,0.0269641783088446,-0.2863770127296448,-0.0377413593232632,0.0539827160537243,0.0754461660981178,0.0033174913842231,0.1247370243072510,-0.1319283843040466,0.0108037749305367,-0.0863676369190216));
res += mul(Get(s3,0,dy), float4x4(0.0757994130253792,0.0339580290019512,0.0425767190754414,-0.0229423679411411,0.0905836001038551,-0.1539591550827026,0.0797899216413498,-0.0945059582591057,0.0081582721322775,0.4440147280693054,0.2307028621435165,0.1888973861932755,0.2525521218776703,-0.1081465780735016,-0.1433526873588562,0.0732927769422531));
res += mul(Get(s4,0,dy), float4x4(-0.0242712441831827,-0.1722165197134018,0.0473419390618801,-0.1618681699037552,-0.1676705330610275,-0.0861092284321785,0.1734899431467056,0.1191333085298538,-0.0029602169524878,0.0131584443151951,-0.0035647016484290,-0.1108945384621620,0.0687251314520836,0.0834657102823257,-0.1200615167617798,-0.1054918617010117));
res += mul(Get(s5,0,dy), float4x4(-0.1245007067918777,0.0181045662611723,0.2621066570281982,-0.0071307877078652,0.1435798108577728,-0.0818851515650749,0.1312782615423203,0.1417863517999649,-0.0306073464453220,-0.0570679791271687,-0.2373023331165314,-0.0804759860038757,-0.2041652798652649,-0.0693500265479088,-0.2467536181211472,-0.1122530475258827));
res += mul(Get(s0,dx,-dy), float4x4(-0.0252507440745831,-0.4135373830795288,0.0868895202875137,0.0476481653749943,-0.0207853503525257,-0.0549900382757187,0.0232306495308876,0.0213105380535126,-0.0384303629398346,-0.1449323147535324,-0.0238533690571785,0.1505164355039597,0.0416537486016750,0.0199352316558361,0.0070501533336937,-0.0400658287107944));
res += mul(Get(s1,dx,-dy), float4x4(0.2183294147253036,0.0990460738539696,-0.0657070279121399,0.0197249334305525,-0.0388168357312679,0.0866757407784462,0.1784183382987976,0.0491435565054417,-0.0371964201331139,0.1482465416193008,-0.1782517135143280,-0.0908666104078293,0.0371929816901684,-0.0005281466874294,0.0743232145905495,-0.0681492909789085));
res += mul(Get(s2,dx,-dy), float4x4(0.0097779817879200,0.1133961901068687,-0.0128981703892350,0.0683750882744789,0.0609850361943245,-0.0154394581913948,-0.1177365779876709,0.1081031858921051,0.0468716509640217,0.0610826611518860,0.0044416221790016,-0.2149876356124878,0.0276644006371498,0.0578589737415314,0.0324194915592670,-0.0264268349856138));
res += mul(Get(s3,dx,-dy), float4x4(0.0884238407015800,0.0548486486077309,-0.0916292071342468,-0.2114533782005310,-0.0477915182709694,0.0879593268036842,-0.0570160374045372,-0.0338237807154655,0.2777289748191833,0.0201923996210098,-0.0480942539870739,-0.1114729419350624,-0.0327685587108135,-0.0683967396616936,0.0352818407118320,0.1602204293012619));
res += mul(Get(s4,dx,-dy), float4x4(0.1163280382752419,-0.3827323019504547,-0.0207964833825827,0.2000650465488434,0.0194268096238375,-0.0807821750640869,-0.0988593921065331,-0.1425812244415283,-0.0436949022114277,0.1605446487665176,0.0120007907971740,-0.0591462627053261,-0.1127336844801903,0.0836793333292007,0.1368802189826965,0.0975589081645012));
res += mul(Get(s5,dx,-dy), float4x4(0.0784707888960838,0.1191709861159325,0.0369210131466389,-0.0480915717780590,-0.1564664393663406,-0.1494411826133728,0.0944213196635246,-0.0622570887207985,0.0334539972245693,0.0135226249694824,0.0132287535816431,0.1031458675861359,0.1332902461290359,0.0328864865005016,-0.0822703465819359,-0.0006421562284231));
res += mul(Get(s0,dx,0), float4x4(-0.0343668237328529,-0.2607699334621429,-0.0936265736818314,-0.0556317567825317,0.1321461796760559,0.2713291347026825,0.1619893312454224,-0.1289785206317902,-0.2676818370819092,-0.1264359205961227,0.1651861667633057,-0.0045286607928574,0.0228339787572622,0.0002777652698569,0.0953457430005074,-0.0560440272092819));
res += mul(Get(s1,dx,0), float4x4(0.1887089163064957,-0.0999661460518837,0.2044133841991425,0.0344109162688255,-0.0417612381279469,0.1257845312356949,0.2238834500312805,0.0509828403592110,-0.2273163944482803,-0.0325862690806389,-0.0167404022067785,-0.2366821467876434,-0.0544965602457523,0.1811838597059250,0.2041939944028854,0.1023323908448219));
res += mul(Get(s2,dx,0), float4x4(0.2473979294300079,0.4093907773494720,0.2450760155916214,-0.5295963883399963,0.0859786346554756,-0.0529786124825478,-0.0370558612048626,-0.1326027363538742,-0.0079151438549161,-0.0310412105172873,0.0338631793856621,-0.0396601408720016,0.1572605520486832,-0.0279110781848431,0.0473581291735172,-0.0198491085320711));
res += mul(Get(s3,dx,0), float4x4(-0.0173155386000872,0.1686585694551468,-0.0619302950799465,-0.0302080735564232,-0.1202508881688118,0.0783975422382355,0.0829015895724297,-0.1806125342845917,0.1847915798425674,-0.2045932263135910,0.1809600442647934,0.0637208521366119,0.0683929473161697,-0.0397119894623756,0.1345290988683701,0.2097328752279282));
res += mul(Get(s4,dx,0), float4x4(-0.0146702900528908,-0.0965638682246208,0.0806813836097717,0.2337473779916763,0.2916922867298126,-0.0935045108199120,-0.0054448330774903,0.0823287889361382,0.0584406889975071,0.0871359929442406,-0.1395956873893738,-0.0432635247707367,-0.0276158768683672,0.0663631036877632,-0.1101983562111855,0.1367206871509552));
res += mul(Get(s5,dx,0), float4x4(-0.1592893749475479,0.0349344201385975,-0.2344829142093658,0.0075461617670953,0.0381143912672997,0.0485286302864552,-0.0921624600887299,-0.0763795673847198,-0.0709092020988464,0.0272678807377815,0.0955453217029572,-0.0660259202122688,0.1403030902147293,-0.1934659779071808,-0.5292184948921204,-0.1758689284324646));
res += mul(Get(s0,dx,dy), float4x4(0.1260007321834564,-0.2529700398445129,-0.0116838403046131,0.1486411541700363,-0.1104438528418541,0.0813047662377357,-0.0928665772080421,-0.1579249352216721,-0.2013359665870667,0.0030823501292616,-0.0356562770903111,-0.0135644944384694,0.0518842265009880,-0.0108373574912548,0.0703220218420029,0.1238810345530510));
res += mul(Get(s1,dx,dy), float4x4(0.0167851112782955,0.2190960198640823,0.0995368584990501,-0.0899939686059952,-0.1324936747550964,0.1102081686258316,0.1273827999830246,0.0656467154622078,0.2311691492795944,-0.0657097920775414,-0.2186747938394547,0.1578312814235687,0.0404933653771877,-0.0165974032133818,-0.8325630426406860,-0.0222101602703333));
res += mul(Get(s2,dx,dy), float4x4(0.1310987472534180,-0.0816901624202728,-0.0777979791164398,0.2928578853607178,-0.1646279841661453,0.0980293899774551,-0.0655080974102020,-0.0817092657089233,0.0385629683732986,-0.0233116988092661,0.0652864351868629,-0.2652077674865723,0.1324908435344696,0.0009816731326282,0.0768327862024307,0.0470899529755116));
res += mul(Get(s3,dx,dy), float4x4(-0.0140462974086404,-0.0364132560789585,0.1698321253061295,0.1368997842073441,-0.1164545640349388,-0.0615898780524731,0.0904843658208847,0.1236964985728264,-0.2211886793375015,0.0818106904625893,-0.0069673485122621,0.1902100890874863,-0.1096700504422188,-0.0383295379579067,0.0921330749988556,-0.0237317308783531));
res += mul(Get(s4,dx,dy), float4x4(-0.0747730582952499,-0.0896533653140068,-0.0572028756141663,-0.0220749229192734,-0.0938302725553513,0.1949466764926910,0.1008668988943100,-0.2827612459659576,0.0369958616793156,0.0725484415888786,0.1002624183893204,0.1279433220624924,0.1866599768400192,0.0074475216679275,-0.0026088198646903,-0.1034011393785477));
res += mul(Get(s5,dx,dy), float4x4(0.1871432214975357,0.2311335504055023,-0.2548508942127228,-0.0443008020520210,-0.0605027191340923,0.0163052771240473,-0.0256622526794672,0.1182870790362358,-0.1555433571338654,-0.0007501234649681,0.1435550004243851,0.0511124618351460,0.0115571720525622,0.1764380186796188,-0.3638823330402374,-0.0706835165619850));
res = max(float4(0, 0, 0, 0), res) + float4(0.5797768235206604,0.0746953040361404,-0.0996708795428276,0.2728826999664307) * min(float4(0, 0, 0, 0), res);
return res;
}
