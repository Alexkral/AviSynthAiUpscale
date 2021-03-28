sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.000350954622263,0.000903776090126,0.000849987962283,0.000127458682982);
res += mul(Get(s0,-dx,-dy), float4x4(0.026237031444907,-0.003388090990484,-0.026416616514325,-0.008941396139562,-0.014930843375623,-0.016945082694292,0.003642948577181,0.015802472829819,-0.001492454670370,-0.001327375881374,0.000189664613572,-0.000360447767889,0.008955397643149,0.002231337828562,-0.000680927536450,0.000229715282330));
res += mul(Get(s0,-dx,0), float4x4(-0.006651846691966,-0.010041959583759,-0.007832122035325,0.013483297079802,0.001166705158539,0.001843914971687,0.004963752347976,-0.000684246129822,0.000283557339571,0.003109289100394,-0.003661073045805,-0.007922800257802,0.006662904750556,0.012409882619977,0.019288234412670,0.018721122294664));
res += mul(Get(s0,-dx,dy), float4x4(0.004189629107714,0.004572120495141,0.002035373589024,-0.002997162751853,-0.001994733931497,-0.002619907492772,-0.000853630772326,0.002420280827209,0.004313531797379,0.001062083872966,-0.007359873969108,-0.007383616175503,-0.000919030979276,0.000006491104614,0.001383296679705,0.003420466324314));
res += mul(Get(s0,0,-dy), float4x4(0.006629944778979,0.001166255329736,-0.006321993190795,0.000635233300272,-0.042446691542864,0.033471979200840,0.031883273273706,0.003641125746071,0.006446479354054,-0.007897750474513,-0.003652613610029,-0.000446366029792,-0.012451348826289,0.005594168789685,-0.000526747200638,-0.004349564667791));
res += mul(Get(s0,0,0), float4x4(-0.000498796114698,-0.006557540968060,-0.019529445096850,-0.015226191841066,0.021935109049082,0.048733409494162,-0.000820133427624,-0.082255892455578,-0.127413988113403,-0.067013323307037,0.038166891783476,0.048467949032784,-0.021105989813805,-0.067117065191269,-0.103943012654781,-0.072872675955296));
res += mul(Get(s0,0,dy), float4x4(0.003290228778496,0.003033449174836,0.000009483805115,-0.002640518127009,-0.007390827406198,-0.008867615833879,-0.003696627449244,0.003019968979061,0.002397299045697,0.023581994697452,0.027817739173770,-0.044041063636541,-0.004624078515917,-0.003283414524049,-0.005217862315476,-0.009430821053684));
res += mul(Get(s0,dx,-dy), float4x4(-0.000230250268942,-0.000598892511334,0.000578847364523,0.001834938535467,-0.002882431494072,-0.011439610272646,-0.002274460392073,0.005009255371988,-0.000466581521323,0.001788590336218,0.000236036939896,0.000331691320753,-0.000184759395779,-0.000343699153746,-0.000002832740847,0.000165967940120));
res += mul(Get(s0,dx,0), float4x4(0.002772954991087,0.002491897437721,0.001628457335755,0.001676445244811,0.003055481472984,-0.001767871319316,-0.000965300365351,0.004086114466190,0.003340983530506,0.006872827652842,-0.000237025466049,-0.005948718637228,-0.002680948469788,-0.006533742882311,-0.003005458042026,0.000801608315669));
res += mul(Get(s0,dx,dy), float4x4(-0.001632867963053,-0.000826225732453,0.000436224800069,0.001672174548730,-0.001564559759572,-0.000465619843453,0.001681171008386,0.003069165628403,-0.000964070903137,-0.001583080855198,-0.003562685567886,-0.003911847248673,0.001126191928051,0.002099550329149,0.001664007897489,0.001786206034012));
res += mul(Get(s1,-dx,-dy), float4x4(0.000775720691308,0.000282462278847,-0.003246971406043,-0.005609156098217,-0.006102168932557,-0.001362261711620,-0.000679774559103,0.001487536588684,0.018661148846149,-0.000594549288508,-0.002094774506986,-0.000783070572652,-0.003661331022158,0.001042297924869,0.005097970366478,0.004366412758827));
res += mul(Get(s1,-dx,0), float4x4(0.026598539203405,0.038892425596714,-0.002969943219796,-0.012071115896106,0.015525848604739,0.009394048713148,0.012852645479143,-0.004709519911557,0.035701841115952,0.075067535042763,0.092431977391243,0.066060483455658,0.022928090766072,-0.001960986293852,-0.011989947408438,-0.011039596050978));
res += mul(Get(s1,-dx,dy), float4x4(0.013359983451664,0.017887612804770,-0.027054408565164,-0.037060469388962,-0.005608025006950,-0.014274530112743,0.010136860422790,0.035183195024729,0.001319878385402,-0.001497362041846,-0.001982555259019,0.006016594357789,-0.007073579356074,-0.024334695190191,-0.008987579494715,0.026990801095963));
res += mul(Get(s1,0,-dy), float4x4(0.010492601431906,0.000298760511214,-0.005342635326087,-0.006043106317520,-0.004115481860936,0.001124330563471,-0.001372259226628,-0.000626871129498,-0.001731745782308,0.000561197462957,-0.000326936133206,0.000022323036319,-0.008979485370219,0.000453245942481,0.005628963932395,0.005954794120044));
res += mul(Get(s1,0,0), float4x4(0.020700251683593,0.002927307272330,-0.015458506532013,0.002949850866571,0.017252204939723,0.002469578757882,0.010080491192639,-0.001689316472039,-0.000433099980000,-0.004037681035697,-0.005921428557485,-0.006312811747193,0.023384373635054,-0.006721847224981,-0.018736334517598,-0.017279988154769));
res += mul(Get(s1,0,dy), float4x4(0.003731331788003,0.008572797290981,-0.002317131264135,0.003052686341107,-0.004971528891474,-0.012498673051596,0.018420156091452,0.045275330543518,-0.001493526739068,0.000469941733172,0.001543712336570,0.001962444279343,-0.011402884498239,-0.023095207288861,-0.000359994155588,0.032477870583534));
res += mul(Get(s1,dx,-dy), float4x4(-0.000288214389002,0.001070751110092,-0.000076399817772,0.000002526933258,0.000710868567694,-0.001110895536840,0.000503906805534,0.000867513241246,-0.000258603802649,-0.001540078199469,-0.001499251113273,-0.001528294640593,0.000843914167490,-0.001421570545062,-0.001590886851773,-0.001573465764523));
res += mul(Get(s1,dx,0), float4x4(0.004406252410263,0.007024705875665,-0.000386922736652,-0.003573013469577,-0.006769035011530,-0.002296037971973,0.002015064703301,0.000307422655169,-0.000983496312983,-0.000151842614287,0.001110566314310,0.001566836028360,-0.002991608576849,0.000863836670760,0.004088423680514,0.003382875118405));
res += mul(Get(s1,dx,dy), float4x4(-0.002019741805270,0.001986185787246,0.000759528833441,-0.004277011379600,-0.000022075617380,-0.001088853226975,-0.000683669175487,0.000012165883163,-0.001807955908589,-0.002924342872575,-0.003780560102314,-0.002847664756700,0.001844299375080,0.000946556450799,-0.000280022621155,-0.002199605340138));
res += mul(Get(s2,-dx,-dy), float4x4(-0.008650906383991,-0.004998571705073,0.001717907260172,0.001940472982824,-0.014479222707450,-0.006365779321641,0.006239625159651,0.006494121626019,0.019786909222603,0.012136443518102,0.005621737334877,0.002204690594226,0.004494934808463,0.003841442987323,0.000676458294038,0.000785646203440));
res += mul(Get(s2,-dx,0), float4x4(0.026499010622501,0.030982811003923,0.022079803049564,0.004595313686877,0.001218425109982,0.004062180873007,-0.000272363395197,-0.012087927199900,0.009303325787187,-0.000143837722135,0.000839160755277,0.013392721302807,-0.015014561824501,-0.020175293087959,-0.013974658213556,-0.003089823527262));
res += mul(Get(s2,-dx,dy), float4x4(-0.004092509392649,-0.004672089125961,0.000947204243857,0.011524068191648,-0.002567903604358,-0.001039445283823,-0.002280233427882,-0.003145704511553,0.003831521607935,0.013482715003192,0.017720270901918,0.014379048720002,-0.000236270134337,-0.001792929950170,-0.004640594124794,-0.007087783887982));
res += mul(Get(s2,0,-dy), float4x4(-0.008684591390193,-0.000702230550814,0.002504867501557,0.001581351505592,0.047570392489433,0.013734000734985,-0.019186506047845,-0.017999442294240,0.011049655266106,0.011851052753627,0.005842437967658,0.002262992318720,0.012205993756652,0.006584381684661,0.001862145378254,0.001802862621844));
res += mul(Get(s2,0,0), float4x4(-0.029639529064298,-0.036089796572924,-0.035085685551167,-0.022063916549087,-0.012611597776413,-0.010022263042629,0.015439059585333,0.046799622476101,-0.011542784050107,-0.040826030075550,-0.045168019831181,-0.015662444755435,0.054296243935823,0.042698048055172,0.017252750694752,0.011469986289740));
res += mul(Get(s2,0,dy), float4x4(0.003683018498123,0.003269760403782,-0.005189310293645,-0.019091829657555,-0.000595303252339,0.003795501310378,0.005021375603974,-0.002158274874091,0.000549957447220,0.007145303767174,0.011628146283329,0.007869787514210,0.001287271850742,0.003409752622247,0.009281733073294,0.029403189197183));
res += mul(Get(s2,dx,-dy), float4x4(0.005438806954771,0.002406410174444,0.000974423834123,-0.000242994647124,-0.004953535739332,-0.003896269947290,0.000771224906202,0.001574799534865,-0.001911732368171,-0.000753637112211,0.001243350794539,-0.000195960601559,0.000830457429402,-0.002865441143513,0.000053078849305,0.002426874591038));
res += mul(Get(s2,dx,0), float4x4(0.008949438109994,0.014204902574420,0.016412209719419,0.012253840453923,-0.002277352614328,-0.002391271060333,-0.000221177178901,-0.001211157068610,0.005227173678577,0.005475766025484,0.005180368665606,0.002422495977953,0.016103379428387,0.033401828259230,0.032319802790880,0.013944868929684));
res += mul(Get(s2,dx,dy), float4x4(0.001505686435848,0.000060288693930,0.001271061832085,0.004954081028700,0.000658258330077,-0.000025225175705,-0.001668398617767,-0.001925936900079,0.000633898016531,-0.001957314554602,-0.002338191494346,0.001135295839049,0.002665781183168,0.002132925204933,0.003042929340154,0.005389161407948));
return res;
}