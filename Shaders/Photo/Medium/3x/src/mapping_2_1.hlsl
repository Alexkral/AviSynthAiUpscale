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
float4 res = float4(0.0818695500493050,0.0176204089075327,-0.1234650164842606,0.0111374426633120);
res += mul(Get(s0,-dx,-dy), float4x4(0.0301814693957567,-0.0272579248994589,-0.0904929935932159,-0.0432507283985615,-0.0158024001866579,0.1387193202972412,0.0268453117460012,0.0835569277405739,0.0074515128508210,0.0366151779890060,0.1109410300850868,-0.2205033302307129,-0.0562739446759224,0.4118281602859497,-0.4552047848701477,-0.3313702344894409));
res += mul(Get(s1,-dx,-dy), float4x4(-0.0204163659363985,0.0085969921201468,0.0464385859668255,0.0407439470291138,-0.1486905217170715,0.1548009812831879,-0.2077428102493286,0.0191764198243618,0.1101206466555595,-0.0847519263625145,0.1302177608013153,-0.1262886226177216,-0.1273317933082581,-0.0470549352467060,0.0112179089337587,-0.0219303742051125));
res += mul(Get(s2,-dx,-dy), float4x4(0.1382229775190353,-0.1283140033483505,-0.0212439037859440,-0.0230590421706438,-0.1610576361417770,0.1439491957426071,0.0215224418789148,0.0454016067087650,-0.0408741347491741,0.0352100245654583,0.0516542531549931,-0.0410460270941257,0.0648272112011909,-0.1205883398652077,0.0516620054841042,0.1082534044981003));
res += mul(Get(s3,-dx,-dy), float4x4(-0.0241963546723127,0.0801402032375336,-0.0859539583325386,0.0094575211405754,-0.0145312203094363,0.1019483655691147,-0.1733470410108566,0.1098852455615997,-0.0497801527380943,-0.0299357492476702,-0.0796216055750847,0.0811961144208908,0.0394768752157688,-0.0111171351745725,-0.0167922750115395,0.0249905344098806));
res += mul(Get(s4,-dx,-dy), float4x4(-0.0901330187916756,0.1324982196092606,-0.0861380398273468,0.0044090193696320,-0.0251413825899363,-0.0608386732637882,-0.0106281572952867,0.0575123876333237,-0.0017692487454042,0.0649011880159378,-0.0766075178980827,0.0405532643198967,-0.0406221561133862,0.0304840914905071,-0.1113454550504684,0.0733576342463493));
res += mul(Get(s5,-dx,-dy), float4x4(0.0157955270260572,0.0427792072296143,-0.0033749756403267,0.0182212498039007,-0.0417884439229965,-0.0325353555381298,0.1813843250274658,-0.0663598403334618,-0.1377594023942947,0.1128653660416603,-0.0208455380052328,-0.1622267663478851,-0.1147370785474777,-0.0258267521858215,0.0997903943061829,-0.0127506209537387));
res += mul(Get(s0,-dx,0), float4x4(0.0056583131663501,-0.1294632256031036,0.2095670998096466,0.0507303141057491,0.0009401598945260,-0.1089711934328079,-0.0830355733633041,-0.0196974482387304,-0.2116347402334213,0.1240352541208267,0.2359217256307602,-0.0318420007824898,0.2683283686637878,-0.1371416002511978,-0.1863722950220108,-0.0144788157194853));
res += mul(Get(s1,-dx,0), float4x4(0.0866890624165535,-0.0306694768369198,-0.0641349628567696,-0.0226643104106188,-0.1148663535714149,0.0799677446484566,-0.0557084940373898,-0.0214702561497688,-0.0977425500750542,0.0490733534097672,-0.1219563111662865,-0.0274310298264027,-0.0799013152718544,0.0584572106599808,-0.2333417981863022,0.0598707757890224));
res += mul(Get(s2,-dx,0), float4x4(-0.1354845613241196,0.0222124010324478,0.0044403811916709,-0.0498159565031528,0.0179094560444355,-0.0377527810633183,-0.0830071121454239,0.0329587422311306,0.0265181437134743,-0.0204595495015383,-0.0194271747022867,-0.0552835129201412,0.0168323293328285,-0.1945081502199173,-0.1313541978597641,-0.0754349380731583));
res += mul(Get(s3,-dx,0), float4x4(-0.1293518692255020,-0.0224111452698708,0.1819575577974319,-0.0348313935101032,-0.0464117936789989,0.0506935901939869,-0.0628749057650566,-0.0911807194352150,0.0151060177013278,0.0215905681252480,0.1355362534523010,0.0102455047890544,0.0805130004882812,-0.0214576907455921,0.0474482700228691,-0.0082710748538375));
res += mul(Get(s4,-dx,0), float4x4(-0.1234254166483879,0.0433274582028389,0.0226529352366924,0.0041026691906154,0.0474489368498325,-0.2493423074483871,0.1229860708117485,-0.1011907756328583,-0.0705868750810623,0.1269846260547638,-0.1379422247409821,-0.1021994426846504,-0.2271743118762970,0.0716181844472885,-0.1797308176755905,0.0150516638532281));
res += mul(Get(s5,-dx,0), float4x4(0.0606791898608208,-0.0288134329020977,0.1007747203111649,-0.0851075947284698,-0.1048876047134399,0.2610391974449158,0.0924661979079247,-0.0090717617422342,-0.0084418039768934,-0.0187615733593702,-0.0494798831641674,0.0018941932357848,0.0035048311110586,0.1787621378898621,0.2625622451305389,-0.1310141384601593));
res += mul(Get(s0,-dx,dy), float4x4(0.1077600792050362,0.0769962966442108,-0.1758356839418411,-0.0873176828026772,-0.0081521077081561,-0.0287601836025715,0.2018343061208725,-0.0190247464925051,-0.0640008747577667,0.0903625711798668,0.0817318409681320,-0.1224419772624969,0.0099027436226606,0.6125912070274353,0.0985072478652000,-0.1992806494235992));
res += mul(Get(s1,-dx,dy), float4x4(0.0273275561630726,-0.0220992006361485,-0.1153813600540161,0.0569897182285786,0.1058603897690773,0.1561738252639771,-0.1026826724410057,-0.0526437871158123,0.0228512790054083,-0.1198190674185753,0.0337544493377209,-0.0705528035759926,0.0097714113071561,0.1209348514676094,0.1310010552406311,0.1189718618988991));
res += mul(Get(s2,-dx,dy), float4x4(-0.0717593580484390,0.0435152240097523,0.1006576120853424,0.1725211739540100,-0.1445740908384323,0.0382679887115955,-0.1676181703805923,0.0029079723171890,-0.0339847654104233,-0.0119246160611510,-0.0624469444155693,-0.0625300407409668,0.1052898392081261,-0.3672483861446381,0.2574505209922791,-0.0247742217034101));
res += mul(Get(s3,-dx,dy), float4x4(0.0156571399420500,0.0545069873332977,0.0485310778021812,0.0495671555399895,0.0330453403294086,0.0633576586842537,-0.1551575660705566,0.0911375954747200,0.1047382205724716,-0.0411137342453003,-0.1490537375211716,0.0448418520390987,0.0299105681478977,-0.0380581915378571,0.0073159406892955,-0.0721499472856522));
res += mul(Get(s4,-dx,dy), float4x4(0.0397867597639561,-0.0601893663406372,-0.0111250365152955,-0.0231425091624260,0.0553619712591171,-0.3164800703525543,0.0740241482853889,0.0634752288460732,0.0555708296597004,0.2374455332756042,-0.2266282588243484,0.0129138128831983,0.0010164609411731,0.0917790159583092,0.1290894150733948,0.0582595653831959));
res += mul(Get(s5,-dx,dy), float4x4(0.0583120398223400,-0.1191256865859032,-0.0247024372220039,-0.1111598908901215,0.0238954983651638,0.0852700620889664,-0.1058237776160240,-0.0795966312289238,-0.0259515102952719,-0.0597826614975929,0.1808543801307678,0.0046861171722412,-0.0023476982023567,0.0927849188446999,-0.0193654578179121,-0.0824832096695900));
res += mul(Get(s0,0,-dy), float4x4(0.1861489266157150,0.0313455350697041,-0.0841090679168701,0.0122135914862156,-0.0639340654015541,-0.0487225763499737,-0.0924379080533981,-0.1139436513185501,0.1408767998218536,-0.0469232834875584,0.1802512556314468,-0.2445494383573532,-0.2104867249727249,0.1747564971446991,0.0360052622854710,-0.1045870780944824));
res += mul(Get(s1,0,-dy), float4x4(0.2149900943040848,-0.2397226095199585,-0.0111211156472564,0.0124503793194890,0.2991298139095306,0.0216348655521870,-0.1535531580448151,-0.0509452000260353,-0.1047964543104172,0.8685793876647949,-0.4301080703735352,0.1885179579257965,-0.0978203862905502,0.1759263277053833,0.1910975873470306,-0.0402552224695683));
res += mul(Get(s2,0,-dy), float4x4(0.2114427983760834,-0.0316468626260757,0.1143512576818466,-0.2208776473999023,-0.1754728108644485,0.0338033474981785,0.0924633890390396,-0.0046933912672102,-0.0746541023254395,0.2208620607852936,0.0689380541443825,-0.1281868368387222,0.1330475956201553,-0.1664192676544189,0.0086506800726056,0.0818559303879738));
res += mul(Get(s3,0,-dy), float4x4(-0.0440223775804043,-0.0629852265119553,-0.0558124333620071,0.0060437833890319,-0.0198103990405798,0.0906160399317741,-0.3619818091392517,-0.0166800785809755,0.0822034478187561,0.1028506681323051,0.0346941500902176,0.1033514738082886,0.0038932496681809,0.0624226480722427,0.1563979983329773,0.0482948161661625));
res += mul(Get(s4,0,-dy), float4x4(-0.0942441299557686,-0.0046691442839801,0.0061854342930019,0.0562605969607830,0.1734388470649719,0.0703539773821831,-0.0930237099528313,0.1162249073386192,-0.1817262470722198,-0.2363405227661133,0.0413575582206249,0.0555335953831673,0.1289100050926208,0.0221345201134682,-0.0478660501539707,-0.0278145279735327));
res += mul(Get(s5,0,-dy), float4x4(0.2437983155250549,0.1230562254786491,-0.0555075705051422,-0.0376532599329948,0.0163955725729465,-0.1498056352138519,0.1164256930351257,0.0043694614432752,-0.6642268300056458,-0.1484041363000870,0.1949037760496140,0.0573646016418934,-0.3008164465427399,0.0885492339730263,-0.0333107076585293,-0.0602013394236565));
res += mul(Get(s0,0,0), float4x4(0.0841745585203171,-0.0745450779795647,0.0851799547672272,-0.0432839579880238,-0.1199590712785721,-0.0827631950378418,0.1133079156279564,0.1397491097450256,-0.2226699292659760,0.1851285994052887,0.4709365963935852,-0.0298892054706812,-0.1440269351005554,-0.0219193678349257,-0.2427544891834259,0.1106873899698257));
res += mul(Get(s1,0,0), float4x4(-0.0242752674967051,-0.2341652959585190,-0.0677414909005165,0.2056186944246292,0.1443373560905457,-0.0602393858134747,-0.1679741442203522,-0.0899126008152962,0.1564089357852936,-0.0662212893366814,-0.4953343272209167,-0.1595841497182846,0.3170103430747986,-0.3617787659168243,0.1209201365709305,0.2514857947826385));
res += mul(Get(s2,0,0), float4x4(0.0704814568161964,-0.2934859395027161,-0.1950480639934540,-0.2591502964496613,-0.2660246789455414,0.0642924383282661,-0.1965907514095306,0.1003324314951897,0.1040891259908676,0.1037088483572006,0.1045055314898491,-0.0349450558423996,0.3258629441261292,-0.1668278127908707,0.2848571240901947,0.1464476138353348));
res += mul(Get(s3,0,0), float4x4(0.2684421241283417,-0.3781527876853943,-0.2615879774093628,0.4168069064617157,0.0886410251259804,-0.3113618791103363,0.2834667563438416,-0.0664339512586594,-0.0648911148309708,0.0458009727299213,-0.0407416038215160,0.1246370896697044,-0.0561311952769756,0.0483689904212952,-0.2036620974540710,0.1573841869831085));
res += mul(Get(s4,0,0), float4x4(0.0432347506284714,0.1126471161842346,0.1904564946889877,-0.0882170796394348,0.1204779148101807,0.1292951107025146,0.1943551003932953,0.0863807126879692,0.3864103257656097,-0.1866476386785507,0.2522139549255371,0.3327169120311737,-0.1506094038486481,-0.2606942653656006,0.1695686280727386,0.4340020418167114));
res += mul(Get(s5,0,0), float4x4(0.3446964919567108,-0.1125562340021133,-0.2066078186035156,-0.1648001819849014,-0.0071404888294637,0.0541901141405106,-0.2344719022512436,-0.0465519987046719,-0.3165912926197052,0.1021599620580673,-0.0093479389324784,0.1240376532077789,0.2853100597858429,-0.4010021686553955,0.1648926287889481,0.3784904181957245));
res += mul(Get(s0,0,dy), float4x4(0.0064971605315804,0.0636554881930351,0.0180624797940254,0.1164771616458893,0.0889615342020988,-0.0647553056478500,-0.0952084884047508,0.1113015711307526,-0.1122573688626289,0.1215995848178864,0.1897995620965958,-0.1273176968097687,0.1095890328288078,0.1926105767488480,-0.0077926074154675,-0.0264567304402590));
res += mul(Get(s1,0,dy), float4x4(-0.0287045873701572,-0.1235858127474785,-0.2057658880949020,-0.1090127155184746,-0.1473253965377808,-0.1268266439437866,0.0468850694596767,0.0625886842608452,-0.1149347797036171,-0.4673745632171631,0.4330016672611237,-0.0071538249030709,0.0253221150487661,0.0282229445874691,-0.0073075997643173,0.0966121330857277));
res += mul(Get(s2,0,dy), float4x4(-0.1978119760751724,-0.0061634187586606,-0.0714156553149223,0.1016949266195297,0.0090208370238543,-0.0125258415937424,-0.1573646664619446,-0.0773513615131378,0.1601391285657883,-0.1310061961412430,0.1231527179479599,0.0149635253474116,0.3504716157913208,0.1500219851732254,-0.1439120471477509,0.1002756059169769));
res += mul(Get(s3,0,dy), float4x4(0.0633722022175789,-0.1886717975139618,0.3579168021678925,0.1133580952882767,0.0107183288782835,0.0590267628431320,0.1353261619806290,0.0779025703668594,-0.0776544585824013,0.0129852443933487,0.0485730394721031,0.0982748195528984,0.0051009198650718,0.0962082594633102,-0.0526516810059547,-0.0375235751271248));
res += mul(Get(s4,0,dy), float4x4(0.1034197881817818,-0.0324764177203178,0.1180173456668854,0.1249916553497314,-0.0461367964744568,-0.0477555617690086,-0.0442712232470512,-0.0259022936224937,-0.0268662497401237,-0.1331646889448166,0.0608655884861946,0.0208763070404530,0.0335400737822056,0.1075722202658653,0.1554068177938461,-0.0364385768771172));
res += mul(Get(s5,0,dy), float4x4(-0.0464066378772259,-0.0397415459156036,-0.1220484524965286,0.1801074445247650,-0.0113152218982577,0.0051582376472652,0.0210383608937263,-0.0709149837493896,-0.0536179542541504,-0.0327273085713387,-0.0181010998785496,-0.1154996827244759,-0.0696350485086441,0.1310470998287201,0.0431668087840080,0.0015837227692828));
res += mul(Get(s0,dx,-dy), float4x4(0.0656497403979301,-0.0403480790555477,0.0404891073703766,-0.0428248569369316,-0.0412457026541233,0.0917831808328629,-0.0602145269513130,-0.1036088466644287,0.1186868622899055,0.1236482262611389,0.0733383744955063,-0.1566708087921143,0.1360150277614594,0.0397919863462448,0.0133577473461628,0.0886548683047295));
res += mul(Get(s1,dx,-dy), float4x4(-0.0571087524294853,-0.2059269100427628,0.0872106775641441,0.0244863107800484,-0.0281924419105053,-0.0972896665334702,-0.0213873647153378,-0.0676895976066589,0.0307959653437138,0.0747975334525108,0.5779030919075012,0.2694668471813202,0.0503231659531593,0.0568671971559525,0.0141460951417685,0.0145450141280890));
res += mul(Get(s2,dx,-dy), float4x4(-0.0194615609943867,-0.0231276564300060,-0.0774620622396469,-0.1713882982730865,0.0468258038163185,-0.0126434173434973,0.0393024273216724,0.0141706727445126,-0.2228434830904007,0.0065418886952102,0.0400977395474911,0.0591826140880585,0.1678943485021591,-0.2759919166564941,-0.0247786957770586,0.0899252519011497));
res += mul(Get(s3,dx,-dy), float4x4(0.0097319632768631,0.1301559060811996,0.0157596934586763,0.1033147200942039,-0.0663846731185913,0.0484680198132992,-0.2065280526876450,-0.0598834492266178,0.1340658515691757,-0.0254802647978067,0.1504575610160828,-0.0999386012554169,-0.0006618431070819,0.0712050795555115,0.1104345023632050,-0.0870101824402809));
res += mul(Get(s4,dx,-dy), float4x4(-0.0371803753077984,-0.0958682745695114,-0.0276100113987923,-0.0067824055440724,0.0059556346386671,0.0026560476981103,-0.0048862034454942,0.0020494577474892,0.0319371446967125,-0.0247988961637020,0.0145643334835768,0.0248611103743315,-0.0221545286476612,-0.0071557830087841,-0.0530282855033875,-0.0634372606873512));
res += mul(Get(s5,dx,-dy), float4x4(0.1750582456588745,-0.0542278215289116,0.0431508086621761,-0.0718859136104584,0.0891499966382980,-0.3050723671913147,0.0082523720338941,-0.0407009683549404,-0.0986559763550758,0.0949482098221779,-0.0581557080149651,0.0007579324883409,0.0578373298048973,-0.0757136717438698,-0.0832153707742691,-0.0919412747025490));
res += mul(Get(s0,dx,0), float4x4(-0.0020691766403615,-0.1081991642713547,0.1085177212953568,0.1238147690892220,0.0599433891475201,0.0758214294910431,-0.0032944071572274,0.0542789921164513,0.0458028651773930,-0.0669344365596771,0.1776015162467957,-0.0549680665135384,-0.0598985552787781,0.0152572505176067,-0.0240835174918175,-0.1820822209119797));
res += mul(Get(s1,dx,0), float4x4(0.0005280129844323,-0.0339167639613152,-0.0259144101291895,0.1107610538601875,-0.0047297319397330,-0.0700077936053276,-0.0184737965464592,-0.1286175101995468,-0.1657924950122833,-0.1328753381967545,-0.0590481348335743,-0.1332354992628098,0.0536314994096756,0.0312869772315025,-0.0275870747864246,-0.1277223229408264));
res += mul(Get(s2,dx,0), float4x4(-0.0746728852391243,0.0448071248829365,-0.0726603642106056,-0.1245970353484154,0.1212034970521927,-0.2244441807270050,0.2353334873914719,0.0761516690254211,-0.0340264029800892,-0.0223364233970642,0.0092213852331042,-0.0572116374969482,-0.3444518744945526,-0.1244124472141266,0.2874713540077209,0.0585705712437630));
res += mul(Get(s3,dx,0), float4x4(-0.0214458890259266,0.0635237395763397,0.0376557782292366,-0.1286793947219849,0.0757314786314964,-0.0051177134737372,0.1293801218271255,-0.0938890203833580,-0.1199280023574829,-0.0601516179740429,0.0370134562253952,0.0841357260942459,0.1269298046827316,-0.0672156065702438,-0.1585408151149750,-0.0738050714135170));
res += mul(Get(s4,dx,0), float4x4(-0.0356102958321571,0.0039094286039472,-0.1402926295995712,0.1620109528303146,0.1540809571743011,0.1101626306772232,-0.0602330155670643,-0.0720422491431236,-0.1553615480661392,0.0928050205111504,-0.0493180267512798,-0.2003659456968307,0.1964846700429916,-0.2334458678960800,0.0961997583508492,0.0608352310955524));
res += mul(Get(s5,dx,0), float4x4(-0.0126486327499151,-0.1185255497694016,0.1669686734676361,0.0262721050530672,0.0259423572570086,-0.7370346784591675,0.0180622357875109,-0.0963559150695801,0.0381446257233620,0.0914289578795433,-0.0439933054149151,-0.1157738789916039,-0.0546776093542576,-0.1733532398939133,-0.0240541491657495,0.1261764615774155));
res += mul(Get(s0,dx,dy), float4x4(-0.0529378205537796,-0.0071377251297235,-0.0334737785160542,0.0074097947217524,0.0185033623129129,0.0963595807552338,0.1515077650547028,-0.1385290026664734,0.0979180112481117,0.3674057424068451,0.1190885901451111,0.0590644329786301,0.0387501642107964,0.0602284558117390,0.0106714256107807,-0.0208464767783880));
res += mul(Get(s1,dx,dy), float4x4(0.0513434894382954,-0.0530804283916950,-0.0310908332467079,0.0475986823439598,-0.0894005969166756,0.0973888412117958,-0.0053315768018365,0.0269698500633240,-0.0168985761702061,-0.2914156913757324,0.1713911294937134,-0.0602313466370106,-0.0478016883134842,-0.0146637503057718,0.1617441177368164,-0.0562255829572678));
res += mul(Get(s2,dx,dy), float4x4(0.0990443676710129,0.0968381837010384,-0.1552926599979401,-0.0368560068309307,0.0054046465083957,-0.0833147615194321,0.1214986741542816,-0.1105701252818108,0.0347111672163010,-0.1986174434423447,-0.0030565299093723,0.0189462117850780,0.1321319490671158,1.1077086925506592,-0.1802957653999329,0.0512791424989700));
res += mul(Get(s3,dx,dy), float4x4(-0.0238832924515009,0.1458040028810501,-0.1753452122211456,-0.0108747612684965,0.0583404041826725,0.1029046550393105,0.0902821794152260,-0.0208083074539900,0.0624247044324875,-0.0677361935377121,-0.0704578831791878,-0.0175306573510170,-0.0111681157723069,0.0730763301253319,-0.4398199021816254,0.0615359507501125));
res += mul(Get(s4,dx,dy), float4x4(0.0331771671772003,0.0244067423045635,0.0909565240144730,0.0740026235580444,0.0198031663894653,-0.0061160451732576,-0.0428675487637520,-0.0396528840065002,0.0556455962359905,-0.0425622127950191,0.1168581545352936,-0.0257133003324270,0.1351099610328674,-0.0820773020386696,0.1261683404445648,-0.0230802018195391));
res += mul(Get(s5,dx,dy), float4x4(-0.0031920950859785,0.1546610742807388,-0.0697395727038383,0.0727336704730988,-0.0103934369981289,-0.1244756057858467,-0.0405118279159069,0.0032251693774015,-0.0685592144727707,-0.0458371862769127,0.0624563284218311,-0.0377582013607025,0.0470042899250984,0.0458034612238407,0.1519907861948013,0.0897446423768997));
res = max(float4(0, 0, 0, 0), res) + float4(0.7931083440780640,-0.1409650146961212,0.1860369443893433,0.9808617234230042) * min(float4(0, 0, 0, 0), res);
return res;
}
