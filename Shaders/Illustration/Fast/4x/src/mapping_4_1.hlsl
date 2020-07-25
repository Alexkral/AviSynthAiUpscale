sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.1589055657386780,-0.2595136165618896,-0.4675244987010956,-0.2665177285671234);
res += mul(Get(s0,-dx,-dy), float4x4(0.0596358552575111,0.0746749565005302,0.0199716482311487,-0.1248364225029945,-0.1209543719887733,-0.1543878316879272,-0.0186922606080770,0.0205579772591591,0.1858069747686386,0.0008451924659312,-0.0945454314351082,-0.2041289806365967,-0.0366697460412979,-0.0674629583954811,0.0090765869244933,-0.0338317640125751));
res += mul(Get(s1,-dx,-dy), float4x4(-0.0420624203979969,-0.1224202513694763,0.0862506702542305,0.0688628926873207,-0.1936779916286469,-0.1846439242362976,-0.0526228360831738,-0.1618522405624390,0.0754972621798515,0.1938144266605377,-0.0630612522363663,0.1091803163290024,-0.0112356608733535,-0.1107409521937370,-0.0264213178306818,0.0120191099122167));
res += mul(Get(s2,-dx,-dy), float4x4(-0.0886382460594177,0.0109407585114241,0.0418959371745586,0.0076658660545945,0.0470324754714966,-0.0945808887481689,0.0192019976675510,0.0467730127274990,-0.0064084376208484,0.1640952974557877,-0.0145929828286171,0.0051471302285790,0.0790798887610435,0.0609449185431004,0.0314248129725456,0.0665451884269714));
res += mul(Get(s0,-dx,0), float4x4(0.1801682263612747,0.5897454619407654,0.0981795638799667,-0.0516183115541935,0.1087739765644073,0.1442329287528992,-0.1787810921669006,-0.0928531065583229,-0.1714566349983215,-0.0956334695219994,0.0583412535488605,0.0554934591054916,0.0137734403833747,-0.0364935435354710,-0.0117845991626382,0.0022627611178905));
res += mul(Get(s1,-dx,0), float4x4(-0.0489763878285885,0.1143348589539528,-0.1636742055416107,-0.1230441555380821,-0.1961217373609543,0.2020872086286545,-0.3368070423603058,-0.3376534283161163,0.1002726703882217,-0.4287657737731934,-0.0122095346450806,0.0358986295759678,-0.0836656987667084,0.1410057693719864,-0.0247462186962366,-0.1099719330668449));
res += mul(Get(s2,-dx,0), float4x4(-0.0973614752292633,-0.4930901229381561,-0.1117173135280609,0.0713645741343498,-0.1742603629827499,-0.1082495898008347,0.0399339012801647,0.0411875769495964,-0.1279152184724808,-0.3562925457954407,-0.0703264772891998,-0.0275476668030024,-0.0144506981596351,0.0631072744727135,-0.0138716464862227,-0.0533164888620377));
res += mul(Get(s0,-dx,dy), float4x4(0.1528301090002060,0.4468995034694672,-0.2027030289173126,-0.0128394784405828,-0.0351982228457928,-0.0538484267890453,-0.0160800386220217,-0.0592824630439281,0.0375047139823437,-0.0657548606395721,-0.0184214562177658,-0.0228604730218649,-0.0149069242179394,0.0375123880803585,0.0874810516834259,0.0967734009027481));
res += mul(Get(s1,-dx,dy), float4x4(-0.0039928215555847,-0.0277464874088764,0.0515626184642315,0.0360419712960720,-0.0069428919814527,-0.0814710110425949,0.0495163872838020,-0.0121669443324208,-0.0506566911935806,-0.0972486659884453,-0.1358212679624557,-0.0700927004218102,-0.0306647680699825,-0.1366048008203506,0.0126870470121503,0.1421191394329071));
res += mul(Get(s2,-dx,dy), float4x4(0.0028187020216137,-0.0274217072874308,-0.0377001836895943,-0.0471941232681274,-0.0259913727641106,-0.0294216815382242,0.0026837701443583,0.0265229083597660,0.0407584458589554,-0.0992058590054512,-0.0015989951789379,0.0345065817236900,0.0239569693803787,0.0154224010184407,0.0006665815017186,-0.0456122159957886));
res += mul(Get(s0,0,-dy), float4x4(0.0554571524262428,0.0388738587498665,0.0950514152646065,0.0527349710464478,-0.1233038157224655,0.0211863052099943,-0.0501787066459656,-0.2778984904289246,0.1736426651477814,-0.2476677149534225,-0.0428594015538692,-0.6672562360763550,0.0479255430400372,-0.0011913623893633,-0.0231193117797375,0.1716208606958389));
res += mul(Get(s1,0,-dy), float4x4(0.0090276198461652,0.2217247188091278,-0.1438445746898651,0.2699111998081207,-0.1922011524438858,0.2973902225494385,0.0761314854025841,-0.3876744806766510,0.0033778406213969,-0.0717820674180984,-0.0098184309899807,-0.1141329705715179,-0.1507198661565781,0.0163107551634312,0.0311598051339388,-0.1177819594740868));
res += mul(Get(s2,0,-dy), float4x4(0.1358224898576736,0.1600804179906845,-0.0044415732845664,0.1469072401523590,-0.1501460969448090,-0.0476973578333855,0.1646426618099213,-0.0200712606310844,-0.2092567384243011,-0.2949440181255341,-0.0610626414418221,-0.1820936352014542,0.0506992749869823,0.1264253854751587,0.0541977323591709,-0.0490759350359440));
res += mul(Get(s0,0,0), float4x4(0.1768254339694977,0.2339907437562943,-0.4823727905750275,-0.2786681950092316,0.0450176373124123,0.1467243432998657,0.2948299348354340,0.0199200436472893,-0.5309093594551086,0.3875526189804077,0.0741815194487572,0.0920294746756554,-0.1113178208470345,-0.4885887205600739,0.0188674610108137,-0.0836576446890831));
res += mul(Get(s1,0,0), float4x4(0.2981268465518951,0.1632077693939209,0.3393852412700653,-0.1640613973140717,-0.2152344137430191,-0.4376468956470490,-1.0607703924179077,-0.6011931896209717,-0.5059645771980286,-0.5565085411071777,-0.0340431854128838,0.2985728085041046,0.4015648365020752,0.5556557774543762,0.0109516698867083,-0.1657503694295883));
res += mul(Get(s2,0,0), float4x4(-0.6995369195938110,-0.3409393131732941,-0.2910104691982269,-0.3509707748889923,0.6689356565475464,0.5593092441558838,-0.1830390393733978,-0.4512031674385071,0.0085445614531636,0.3270568847656250,-0.5357952713966370,-0.0718022137880325,0.0337758101522923,0.1257731318473816,0.0390609279274940,-0.1889906972646713));
res += mul(Get(s0,0,dy), float4x4(-0.1620960682630539,-0.0268731340765953,0.4234794080257416,-0.1592077165842056,-0.0570775121450424,-0.1952960789203644,-0.0159976352006197,0.0706195682287216,-0.0114426100626588,0.0905195549130440,-0.1763413250446320,-0.2330858260393143,-0.0672596320509911,-0.0160326287150383,0.2591893970966339,0.2217804640531540));
res += mul(Get(s1,0,dy), float4x4(0.0576524063944817,0.1218282803893089,-0.0758153498172760,-0.0818097367882729,-0.0365592986345291,0.0618457533419132,0.0122196348384023,0.0421144627034664,0.0734542533755302,0.1104601919651031,-0.0967768058180809,0.0462498106062412,-0.1370300203561783,-0.1395010650157928,-0.1958072930574417,-0.1943772882223129));
res += mul(Get(s2,0,dy), float4x4(-0.0592027455568314,0.1635017246007919,0.1818321496248245,-0.0043970439583063,-0.0685762465000153,0.0624084100127220,0.1886793822050095,0.2676903307437897,-0.0069338395260274,0.1524614691734314,-0.1361222863197327,-0.1213811412453651,0.0194379724562168,-0.1033743917942047,-0.0147899482399225,-0.0181163270026445));
res += mul(Get(s0,dx,-dy), float4x4(0.0259886849671602,0.0241365637630224,-0.1208563446998596,0.0785714834928513,-0.0800308287143707,-0.1191571429371834,-0.0465508550405502,0.0284725651144981,0.0643687397241592,0.1337057948112488,0.0787729099392891,-0.1869852989912033,0.0271685682237148,0.0038717100396752,-0.0401784814894199,0.0703891590237617));
res += mul(Get(s1,dx,-dy), float4x4(0.0181086100637913,0.0316296331584454,-0.0015432940563187,-0.0201920773833990,0.1055186018347740,-0.0017384855309501,-0.2236546576023102,0.0213740412145853,-0.0818354189395905,0.0116559956222773,-0.1400895416736603,-0.0336143150925636,0.0171832013875246,0.0408734679222107,-0.0016557944472879,0.0314791090786457));
res += mul(Get(s2,dx,-dy), float4x4(0.0551531128585339,0.0195459481328726,0.0106732090935111,-0.0271652936935425,0.0111060617491603,0.0332260578870773,-0.1190596595406532,0.0130365248769522,-0.0326573885977268,0.0514968149363995,0.1093482002615929,-0.0780624896287918,0.0146784726530313,-0.0026782182976604,-0.0108028938993812,0.0038463422097266));
res += mul(Get(s0,dx,0), float4x4(-0.2192509919404984,-0.0785479843616486,0.0090587316080928,-0.1580691188573837,-0.1917008459568024,-0.2988941669464111,-0.3956397473812103,-0.1000655889511108,0.0739041417837143,0.0062742708250880,-0.2545505762100220,-0.0189485978335142,-0.0735257193446159,-0.0386389344930649,0.1969259530305862,-0.0574523806571960));
res += mul(Get(s1,dx,0), float4x4(-0.0115806851536036,0.0203131865710020,-0.1949538737535477,-0.0657601654529572,-0.1644653528928757,-0.0974609404802322,-0.0460711568593979,-0.1565746068954468,0.1435981243848801,-0.0109671158716083,-0.0692982599139214,0.0611980669200420,0.0293276794254780,-0.0876785442233086,-0.1262040585279465,-0.0002030029863818));
res += mul(Get(s2,dx,0), float4x4(-0.0397172830998898,0.0193165894597769,-0.1708503216505051,-0.0514947213232517,-0.1097130775451660,-0.1611232459545135,0.0101995393633842,-0.1005472317337990,0.1907224804162979,0.1112322434782982,-0.0953492373228073,0.0392601191997528,-0.1338650137186050,-0.1089662238955498,-0.0416180603206158,-0.0391552932560444));
res += mul(Get(s0,dx,dy), float4x4(0.0772513449192047,-0.1207330673933029,0.1192448586225510,0.0584608875215054,0.0904463455080986,0.1074813008308411,-0.0217607356607914,0.0215832237154245,-0.0690426826477051,-0.1855636835098267,-0.0198649782687426,-0.0418339483439922,0.1518629342317581,0.0797516927123070,0.0495907999575138,0.0743699297308922));
res += mul(Get(s1,dx,dy), float4x4(-0.0109015600755811,-0.1055141538381577,-0.0357305109500885,0.0436302497982979,0.0678250938653946,0.0058082896284759,-0.0461229085922241,0.1722123473882675,-0.0637934356927872,0.1082973629236221,-0.0475207157433033,-0.1147226542234421,-0.0019964119419456,0.0391140989959240,-0.0302550587803125,-0.0551232360303402));
res += mul(Get(s2,dx,dy), float4x4(-0.1055242419242859,-0.0421815663576126,-0.0649482682347298,-0.0320144779980183,0.1104611083865166,0.0538893342018127,-0.0488565303385258,0.1495067328214645,-0.1233094483613968,-0.0428804568946362,0.0131045831367373,-0.0937656462192535,-0.0119115645065904,-0.0196812395006418,-0.0320697017014027,0.0581902600824833));
res = max(float4(0, 0, 0, 0), res) + float4(1.7737724781036377,0.4212094247341156,0.3271458148956299,0.5342556238174438) * min(float4(0, 0, 0, 0), res);
return res;
}