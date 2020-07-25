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
float4 res = float4(0.0336567163467407,-0.1009255945682526,0.0198434777557850,-0.0122597916051745);
res += mul(Get(s0,-dx,-dy), float4x4(0.0496474020183086,-0.0171463619917631,-0.1469416022300720,0.0054768635891378,-0.0480414591729641,-0.1332600861787796,0.2111524343490601,0.0590819343924522,0.0726566612720490,-0.0030861224513501,-0.0495069585740566,-0.0342416092753410,-0.0588288716971874,0.2035262435674667,-0.0086646229028702,-0.0298824179917574));
res += mul(Get(s1,-dx,-dy), float4x4(0.0303535088896751,-0.0767020583152771,-0.1992319375276566,0.0060737994499505,-0.0884915739297867,0.0590641796588898,0.0513921119272709,-0.0621687285602093,0.1493289023637772,-0.0640154108405113,-0.0732030496001244,-0.0093700615689158,-0.0655811876058578,0.1515843421220779,0.3554039299488068,-0.0572902187705040));
res += mul(Get(s2,-dx,-dy), float4x4(0.0672035962343216,-0.0477909035980701,0.0491276867687702,-0.0222340449690819,0.0177929252386093,-0.0563777089118958,-0.2283705025911331,-0.1099456027150154,0.0626436397433281,-0.0902027338743210,-0.3851350843906403,-0.0442105866968632,-0.0592845045030117,-0.0636593028903008,-0.1494085341691971,0.1958718001842499));
res += mul(Get(s3,-dx,-dy), float4x4(-0.0262372680008411,0.0094560738652945,0.1088887155056000,-0.0063609341159463,0.0096768969669938,0.0086900526657701,0.0793643519282341,0.0133318640291691,-0.1315483003854752,0.0952447354793549,0.0695647746324539,0.0183784235268831,0.0188319794833660,-0.0670155808329582,-0.0362249799072742,-0.0040924525819719));
res += mul(Get(s4,-dx,-dy), float4x4(0.0606450214982033,0.1185718625783920,0.0923924222588539,0.0083426730707288,0.0381674580276012,-0.0787683352828026,-0.1054008826613426,0.0661400035023689,-0.0532210543751717,0.0906192511320114,-0.0347020775079727,-0.0759404525160789,-0.1227968782186508,0.0574864372611046,-0.0101270610466599,-0.0458610244095325));
res += mul(Get(s5,-dx,-dy), float4x4(-0.0756508931517601,-0.1116814017295837,-0.0236197914928198,0.0794846266508102,0.0320839434862137,-0.1871846616268158,-0.0355541519820690,-0.0241037812083960,0.0310543812811375,-0.0318364724516869,-0.2073534429073334,-0.0367118678987026,-0.0619503632187843,0.0896348953247070,0.2859396338462830,0.0906817838549614));
res += mul(Get(s0,-dx,0), float4x4(-0.0283840913325548,-0.1724915355443954,0.0051585691981018,-0.0949803665280342,0.1176950186491013,0.0876431763172150,-0.4106574952602386,-0.0253179557621479,0.1147161722183228,0.2913103997707367,-0.0888559073209763,0.0193874724209309,-0.0200282093137503,-0.0549870394170284,0.0691584125161171,0.0507657267153263));
res += mul(Get(s1,-dx,0), float4x4(0.0957406014204025,0.0742653906345367,0.0161021891981363,0.0119857322424650,0.0793226137757301,0.1140506193041801,-0.1331533789634705,0.1013577133417130,0.0933910757303238,0.0449995696544647,-0.0443732216954231,0.0402769222855568,0.0359863601624966,-0.0900907739996910,0.2688422501087189,-0.0440541282296181));
res += mul(Get(s2,-dx,0), float4x4(0.0233111865818501,-0.1736491024494171,0.1037868559360504,0.0798163488507271,0.0592915490269661,0.0632117465138435,-0.0314366035163403,-0.0331188887357712,0.0766262337565422,0.2182235568761826,-0.3427466750144958,0.1395352333784103,-0.1751586496829987,0.0195184238255024,-0.0692554861307144,-0.0836890414357185));
res += mul(Get(s3,-dx,0), float4x4(-0.0323422551155090,0.0846699401736259,-0.2461252957582474,-0.0507884509861469,0.0250119529664516,0.0369070395827293,-0.0400701686739922,0.0938917472958565,-0.0994101986289024,-0.0674403682351112,-0.0629843398928642,-0.1144344732165337,-0.1208120733499527,0.0701960846781731,0.1034681946039200,-0.0077761458232999));
res += mul(Get(s4,-dx,0), float4x4(-0.0665398612618446,-0.0801679417490959,-0.1608509123325348,0.0880137979984283,-0.1247031092643738,0.0327796712517738,0.2337930351495743,-0.0924748778343201,-0.0343215875327587,-0.1117792949080467,0.0444380827248096,0.0087931090965867,0.0134368808940053,0.0052816621027887,-0.0118888197466731,0.0771952494978905));
res += mul(Get(s5,-dx,0), float4x4(-0.0945390835404396,0.1163015514612198,-0.0075319856405258,-0.0756665095686913,0.1519281119108200,0.0071522607468069,-0.2019746303558350,-0.0306886341422796,0.0719903409481049,-0.0371094867587090,0.2157919853925705,0.0237504970282316,-0.0427121184766293,0.1130993440747261,0.0876967683434486,0.0853159502148628));
res += mul(Get(s0,-dx,dy), float4x4(0.0180609952658415,0.0763461440801620,0.0705699846148491,0.0636844635009766,0.0005440042004921,0.0373669266700745,0.1308946907520294,-0.1293620169162750,0.0548078380525112,-0.0414323881268501,0.2983009219169617,0.0205750521272421,-0.0119002005085349,-0.0485442541539669,-0.0663509219884872,-0.0361056998372078));
res += mul(Get(s1,-dx,dy), float4x4(0.0582358464598656,-0.0459363050758839,0.0143862310796976,0.0164090041071177,-0.0573951490223408,-0.1037631556391716,-0.0694514587521553,-0.0486165545880795,0.0501902773976326,-0.0795774757862091,-0.1597510278224945,0.0489435791969299,-0.0021446165628731,0.0064322412945330,0.1396202594041824,0.0297880098223686));
res += mul(Get(s2,-dx,dy), float4x4(0.0583272315561771,0.0182614903897047,-0.0777618438005447,0.0335277095437050,0.0514936856925488,-0.0790885910391808,0.0416153334081173,0.0150240557268262,-0.0246507190167904,-0.0187099538743496,-0.0981421023607254,0.0836215093731880,-0.0788995921611786,0.0562993213534355,0.0436663068830967,0.0516441501677036));
res += mul(Get(s3,-dx,dy), float4x4(0.0649077519774437,0.0377779640257359,0.0871892943978310,-0.0528408102691174,0.0455610677599907,-0.0048731169663370,-0.0026433577295393,-0.0199402961879969,-0.1079006046056747,0.0928691104054451,0.0716953054070473,0.0210356153547764,0.0549162141978741,0.0966269671916962,0.0857955366373062,-0.0310411266982555));
res += mul(Get(s4,-dx,dy), float4x4(-0.0506886616349220,0.1473266929388046,-0.2083376199007034,-0.0944258123636246,-0.0750164464116096,0.0670113191008568,-0.1792825013399124,-0.0322068668901920,-0.0129496976733208,-0.1524571329355240,0.0445106290280819,-0.0772328823804855,-0.0314365662634373,-0.0435919985175133,0.0253774188458920,0.0247655697166920));
res += mul(Get(s5,-dx,dy), float4x4(-0.1285877823829651,0.0258724428713322,-0.1372889131307602,-0.0895784869790077,-0.0714068710803986,0.0516023710370064,-0.0020665256306529,-0.0433879457414150,0.1277290433645248,-0.0267943739891052,-0.1052936688065529,0.0333472676575184,-0.0780180916190147,-0.1668848246335983,0.1693560481071472,-0.2596270143985748));
res += mul(Get(s0,0,-dy), float4x4(0.0286356620490551,0.4359306395053864,-0.0939244851469994,-0.0869152396917343,-0.1129481270909309,0.0425772964954376,0.1854510456323624,-0.0342078134417534,0.1049484089016914,-0.2318673282861710,-0.1605250537395477,0.0923297256231308,-0.0040833530947566,0.2677184343338013,-0.2308673113584518,-0.0972060039639473));
res += mul(Get(s1,0,-dy), float4x4(-0.0045311893336475,0.0587618574500084,-0.1730591505765915,-0.1369154155254364,-0.2341279834508896,0.4555244147777557,0.1207253038883209,-0.0064731966704130,0.0169954057782888,-0.1576719880104065,-0.2494394630193710,-0.0696805119514465,-0.0714727193117142,-0.1909440904855728,0.1710214316844940,0.1343101561069489));
res += mul(Get(s2,0,-dy), float4x4(-0.0002052153577097,0.2087857723236084,0.0198909826576710,-0.2373191863298416,0.0591832846403122,-0.2863495349884033,-0.1969540566205978,-0.0695809945464134,0.0673016533255577,-0.0344059690833092,-0.1539499312639236,-0.0213501416146755,-0.0053431559354067,0.2958980500698090,-0.0260968394577503,0.0441187918186188));
res += mul(Get(s3,0,-dy), float4x4(-0.0440002195537090,0.3034412562847137,0.2630719244480133,-0.2152887135744095,-0.0083273034542799,0.1284374147653580,-0.2339554280042648,-0.0455822348594666,-0.0779010429978371,0.0104717584326863,-0.2065386623144150,0.0779024958610535,-0.0326992347836494,0.1258035153150558,0.0249382648617029,-0.1874325871467590));
res += mul(Get(s4,0,-dy), float4x4(0.0927090048789978,0.5486691594123840,0.4148651659488678,0.1142958924174309,0.0072148521430790,-0.3278862237930298,0.0824353247880936,-0.1173313707113266,-0.0907063260674477,-0.0496468283236027,-0.1333272159099579,-0.0511086881160736,-0.0747309699654579,0.2006590962409973,0.0929533839225769,0.0802826732397079));
res += mul(Get(s5,0,-dy), float4x4(0.0499717108905315,-0.2676562964916229,-0.0708330571651459,-0.1274547576904297,-0.1829072684049606,0.0557447373867035,-0.0303624477237463,0.0243928339332342,0.0474403053522110,0.0518656149506569,-0.3466722071170807,0.1255491822957993,-0.1566156446933746,0.1420478969812393,0.2535231411457062,0.0369286611676216));
res += mul(Get(s0,0,0), float4x4(0.1213963255286217,-0.2889759242534637,0.1749505251646042,0.1727664023637772,-0.0290662981569767,-0.1302042454481125,-0.1699702292680740,-0.2198167443275452,0.1708553284406662,0.4331683218479156,0.2092784941196442,-0.2196784615516663,0.3377110362052917,0.2106265425682068,0.2334745228290558,0.2795908153057098));
res += mul(Get(s1,0,0), float4x4(-0.1899722814559937,0.4408496022224426,0.2259392738342285,0.4106069803237915,0.0080089736729860,-0.2468889802694321,-0.0068892226554453,-0.1149118319153786,-0.0424635708332062,0.4785697162151337,-0.0681804493069649,0.0403997674584389,0.0453443378210068,-0.3119315207004547,0.1820903122425079,-0.2470431029796600));
res += mul(Get(s2,0,0), float4x4(0.1466527432203293,-0.1281137764453888,0.1885306239128113,0.2353298217058182,-0.0835550427436829,0.5699296593666077,0.1661564260721207,0.2355359047651291,0.1599366366863251,-0.3968404233455658,-0.4015632867813110,-0.0373485758900642,0.0908096432685852,-0.4065108001232147,0.0906519368290901,0.0379019342362881));
res += mul(Get(s3,0,0), float4x4(0.1812412142753601,0.0160699412226677,-0.7537562251091003,0.2026196271181107,-0.0583871193230152,-0.0305196512490511,0.0219592917710543,0.0419533625245094,-0.0034767757169902,-0.0412714742124081,-0.2286868095397949,0.0078285709023476,0.4052352905273438,0.1686648726463318,-0.0970761030912399,0.2980971932411194));
res += mul(Get(s4,0,0), float4x4(0.0606818161904812,-0.8824487924575806,0.0910881236195564,0.0808999165892601,0.1155372783541679,-0.1223680302500725,0.0559518598020077,0.3006018400192261,0.2327334880828857,0.0938670337200165,-0.1092114970088005,0.4338741898536682,0.2355007678270340,-0.0813324749469757,-0.3039925396442413,0.0678655207157135));
res += mul(Get(s5,0,0), float4x4(0.0265078842639923,0.2118615657091141,0.1745390743017197,0.1430854052305222,0.0564571805298328,-0.6198310852050781,-0.2028887867927551,-0.1470059156417847,-0.1476155519485474,0.0197849012911320,0.1524073332548141,0.2741746902465820,0.0413382574915886,-0.2925942838191986,-0.1696208119392395,-0.0492805689573288));
res += mul(Get(s0,0,dy), float4x4(-0.0470363460481167,0.3214683234691620,-0.0483405888080597,0.1964152902364731,-0.1310889720916748,-0.1371650695800781,-0.0447413362562656,-0.1616104692220688,0.0313275046646595,-0.2871451973915100,0.2362610697746277,0.2476404756307602,0.0551518276333809,-0.1313887834548950,0.0174844972789288,-0.0421315170824528));
res += mul(Get(s1,0,dy), float4x4(0.1346312165260315,-0.1657307893037796,0.0504759252071381,0.0034525562077761,-0.0163900274783373,-0.0734548717737198,0.0235047377645969,-0.1239631175994873,-0.1387843191623688,-0.2386809885501862,0.0335177741944790,0.0198365878313780,0.0323458574712276,0.0404093414545059,0.1985288411378860,-0.0056632859632373));
res += mul(Get(s2,0,dy), float4x4(-0.0605460405349731,0.3260506689548492,-0.0014117367099971,0.1649693548679352,0.1330151110887527,-0.0898710414767265,0.0834214836359024,0.0097083915024996,-0.0616666898131371,0.0702121183276176,-0.1092566549777985,0.0289919227361679,-0.1562451124191284,0.3144154846668243,-0.0404445715248585,-0.0265680421143770));
res += mul(Get(s3,0,dy), float4x4(-0.0852217003703117,-0.1128626167774200,0.2141124159097672,0.0919192358851433,0.0392540358006954,0.0003292101901025,0.0587200336158276,-0.0825572907924652,0.0849301293492317,-0.2121332436800003,0.1221215054392815,-0.0565599910914898,0.0078369053080678,-0.1038540899753571,0.1625499725341797,-0.1015670001506805));
res += mul(Get(s4,0,dy), float4x4(-0.0278384033590555,-0.0392189398407936,-0.1770465821027756,-0.0314399898052216,-0.0953360646963120,0.4237769246101379,-0.2815370261669159,0.1154467239975929,0.0141144543886185,-0.1229307800531387,0.0013497117906809,-0.2033645510673523,0.0277097411453724,-0.2392919063568115,-0.0369668155908585,-0.1078317686915398));
res += mul(Get(s5,0,dy), float4x4(-0.0141658680513501,0.1951058506965637,0.2168403267860413,0.2511775493621826,-0.0554236620664597,-0.0085171069949865,-0.0675862878561020,-0.1480770111083984,-0.0359874293208122,0.0969209149479866,-0.2900313436985016,-0.1401666253805161,0.0512319356203079,0.0931978896260262,-0.2206314802169800,-0.1485090851783752));
res += mul(Get(s0,dx,-dy), float4x4(-0.0067352056503296,0.0823269635438919,0.0114765623584390,0.0363019257783890,-0.0338187813758850,0.1442429125308990,-0.0408699847757816,-0.0338150672614574,0.0158670712262392,0.0946072638034821,0.0576804317533970,0.0037955634761602,0.0965658798813820,0.0146581996232271,-0.0964356958866119,-0.1597938388586044));
res += mul(Get(s1,dx,-dy), float4x4(0.0382984615862370,0.0779237225651741,-0.0409245714545250,-0.0291914697736502,-0.0778489038348198,0.2545858919620514,0.2547684907913208,-0.0621229521930218,-0.0420656427741051,-0.2134677320718765,0.1656895577907562,-0.1212476491928101,-0.0909882336854935,0.0242817327380180,0.1751713901758194,-0.0361065752804279));
res += mul(Get(s2,dx,-dy), float4x4(0.0094293365254998,-0.0734754502773285,-0.1233676448464394,0.1184643283486366,0.0152111435309052,-0.0401510186493397,0.0221996139734983,-0.0705791041254997,0.0590676590800285,-0.1042604073882103,-0.1352318078279495,0.0972037538886070,0.0031760921701789,0.1510125994682312,-0.1284369975328445,0.1652777045965195));
res += mul(Get(s3,dx,-dy), float4x4(-0.0632166713476181,0.0926575809717178,-0.0300329346209764,-0.1051904931664467,-0.0093785030767322,-0.0756275504827499,-0.1510136723518372,0.0554812029004097,-0.0810149535536766,-0.0833745077252388,0.1831570416688919,-0.1366361379623413,-0.0372152104973793,-0.0944534465670586,0.0776913017034531,0.0569654740393162));
res += mul(Get(s4,dx,-dy), float4x4(0.1076043173670769,0.0838974788784981,-0.0452415570616722,0.1209219172596931,-0.0320952832698822,0.0568174086511135,-0.0391764082014561,0.1032652109861374,-0.1184657514095306,0.0203012228012085,-0.2191568464040756,-0.0506795421242714,-0.0963240563869476,-0.0059322328306735,0.0288865063339472,0.1058033481240273));
res += mul(Get(s5,dx,-dy), float4x4(-0.0229783188551664,0.0140684861689806,-0.0353362560272217,0.1390729397535324,0.0380656979978085,-0.2482014745473862,-0.0310883074998856,0.0407214835286140,-0.0473581179976463,-0.1045096069574356,-0.1363124400377274,0.1514323353767395,-0.0680765211582184,0.4694480299949646,0.0086318412795663,-0.1588250398635864));
res += mul(Get(s0,dx,0), float4x4(0.0067140106111765,-0.1375828683376312,0.1274765282869339,-0.0813806205987930,-0.0334896035492420,-0.5650976896286011,-0.0013628063024953,0.0390316508710384,0.1767899543046951,-0.0521889552474022,-0.1909694075584412,-0.0281517971307039,0.0187244769185781,0.0350473038852215,0.1619900315999985,0.1818026006221771));
res += mul(Get(s1,dx,0), float4x4(0.0552532188594341,0.0651455149054527,0.0865753069519997,0.1338195353746414,0.0898584276437759,-0.2618684172630310,0.0536003001034260,0.0446814857423306,-0.1422059237957001,0.0332527793943882,0.4182227849960327,-0.0753885060548782,0.0088316546753049,-0.1500387340784073,0.0583721287548542,-0.0538222417235374));
res += mul(Get(s2,dx,0), float4x4(0.1550614833831787,-0.1890499591827393,0.1308666467666626,-0.0004244006413501,0.0659656301140785,0.1530733704566956,0.0121997520327568,0.0364238619804382,0.1148051470518112,0.0602482631802559,-0.1145329922437668,0.0392775721848011,0.0019207654986531,-0.2003119289875031,-0.1728603243827820,-0.0660002529621124));
res += mul(Get(s3,dx,0), float4x4(-0.0123719619587064,-0.1261247396469116,-0.0800841674208641,-0.0223786346614361,0.0907980576157570,0.0866428688168526,0.1585592180490494,0.0129298586398363,0.1132044941186905,-0.1239618062973022,0.0848811715841293,0.0429873429238796,-0.0366204977035522,0.1189701557159424,0.1072576493024826,0.0659425556659698));
res += mul(Get(s4,dx,0), float4x4(0.0220012702047825,-0.1683752387762070,0.0361326336860657,0.0833604484796524,-0.0828344598412514,-0.0216783471405506,-0.0348351374268532,-0.0660293474793434,-0.0645061954855919,-0.0665930509567261,-0.1450800299644470,-0.1051748991012573,0.0081964563578367,0.0390903726220131,0.0872005596756935,-0.0803481116890907));
res += mul(Get(s5,dx,0), float4x4(-0.1641068011522293,-0.0849838778376579,0.0284366942942142,-0.1000497713685036,0.1486215591430664,-0.1256782412528992,-0.1006856188178062,0.0256208814680576,0.0994788855314255,0.0508482120931149,-0.1175289005041122,-0.0153252631425858,-0.0117923775687814,-0.3539032340049744,0.0474403575062752,0.0985306203365326));
res += mul(Get(s0,dx,dy), float4x4(0.0023992795031518,-0.0637155547738075,0.0607889369130135,0.0444588661193848,0.0198613721877337,0.1228092387318611,-0.4555177092552185,-0.2570453584194183,0.0453491322696209,0.1135481745004654,0.1108159720897675,0.1301461756229401,-0.0345068462193012,-0.0345782004296780,0.0098555935546756,-0.0176834706217051));
res += mul(Get(s1,dx,dy), float4x4(0.0580243021249771,0.0055965594947338,-0.1318012923002243,-0.0050453543663025,-0.0772924050688744,0.1236797422170639,0.0321688354015350,-0.0201812405139208,-0.0526372529566288,0.0556287951767445,0.3010973632335663,-0.0478258803486824,0.0051236376166344,-0.0432540737092495,0.1760761439800262,-0.0030710364226252));
res += mul(Get(s2,dx,dy), float4x4(0.0647716149687767,0.2765240669250488,0.1403913348913193,0.1196982637047768,-0.0319175794720650,-0.0774751827120781,-0.0768358111381531,-0.0680858120322227,0.0886929258704185,-0.0155230117961764,-0.1416834741830826,-0.0287219155579805,-0.0904505625367165,0.0903965160250664,-0.0931986495852470,-0.0282196793705225));
res += mul(Get(s3,dx,dy), float4x4(-0.0042617446742952,-0.0084240399301052,0.0933877900242805,0.0306981671601534,0.0428399071097374,-0.1094743609428406,-0.1164273917675018,-0.0121935652568936,-0.0212563741952181,0.0406888611614704,0.1881134808063507,-0.0241550132632256,-0.0359109267592430,-0.0997865945100784,0.1545901000499725,-0.0207229256629944));
res += mul(Get(s4,dx,dy), float4x4(0.0431853383779526,0.0688439607620239,-0.1193997934460640,0.0237452723085880,-0.0684421434998512,0.1558468937873840,0.1255432963371277,-0.0345282666385174,-0.0556433796882629,0.1975481808185577,0.1050133183598518,0.0487442985177040,-0.0144087057560682,-0.0763766244053841,-0.0611626170575619,-0.0851332545280457));
res += mul(Get(s5,dx,dy), float4x4(-0.0004263469309080,-0.0849110782146454,0.0092380745336413,-0.0548506937921047,-0.0071040336042643,0.0283962003886700,0.0534505583345890,-0.0958875417709351,0.0228781662881374,-0.0333056598901749,-0.0897572413086891,-0.0597348958253860,-0.0291842352598906,0.1786576509475708,-0.1569156497716904,-0.1044957563281059));
res = max(float4(0, 0, 0, 0), res) + float4(0.7996089458465576,-0.0348952226340771,0.2408079057931900,0.3935650289058685) * min(float4(0, 0, 0, 0), res);
return res;
}
