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
float4 res = float4(-0.625957012176514,0.113645166158676,0.013814968056977,-0.060825269669294);
res += mul(Get(s0,-dx,-dy), float4x4(-0.131896734237671,-0.068125247955322,-0.126411765813828,0.029594086110592,-0.033213075250387,0.105369836091995,-0.059049110859632,0.019629638642073,-0.117327459156513,-0.094433017075062,0.228733345866203,-0.056730549782515,0.095407672226429,-0.076163023710251,0.094167023897171,0.046646662056446));
res += mul(Get(s0,-dx,0), float4x4(-0.281826287508011,-0.062706306576729,0.012759905308485,0.048029322177172,0.166335642337799,-0.091952882707119,-0.275562554597855,-0.148212224245071,0.072396844625473,-0.090743966400623,0.011369742453098,0.032982155680656,0.047317720949650,-0.034342542290688,0.123413018882275,0.039886083453894));
res += mul(Get(s0,-dx,dy), float4x4(-0.050663430243731,0.054483495652676,0.084201261401176,0.122446313500404,0.088345095515251,-0.044798817485571,-0.163053393363953,0.082390032708645,-0.008582317270339,0.093911774456501,-0.147248432040215,0.036599624902010,-0.064791522920132,-0.040482517331839,-0.099170416593552,0.019477257505059));
res += mul(Get(s0,0,-dy), float4x4(-0.258668482303619,0.021212797611952,-0.149209290742874,-0.042630705982447,0.048765979707241,0.002090886700898,-0.330865055322647,-0.081530652940273,0.093417614698410,0.013555246405303,0.005378454923630,0.108383774757385,0.132697775959969,-0.080917455255985,0.044129244983196,0.060978848487139));
res += mul(Get(s0,0,0), float4x4(-0.228391513228416,-0.069103814661503,-0.035247616469860,0.087439343333244,0.084919787943363,-0.046942804008722,-0.360890805721283,0.046936232596636,0.064403004944324,0.064518958330154,-0.305597215890884,0.013202033936977,0.011192898266017,-0.014401779510081,-0.076356910169125,0.056768164038658));
res += mul(Get(s0,0,dy), float4x4(-0.155513778328896,-0.062045633792877,0.090083315968513,0.020606510341167,0.070940583944321,0.028114801272750,0.142773762345314,-0.011112033389509,-0.036579236388206,0.000499642104842,0.022377705201507,-0.003852658905089,0.003185241250321,0.060880731791258,-0.089063458144665,0.023847322911024));
res += mul(Get(s0,dx,-dy), float4x4(-0.158953636884689,0.094220928847790,0.118998445570469,-0.032836433500051,-0.003472411073744,-0.045195501297712,0.001254060189240,0.069850772619247,0.082064859569073,0.158296301960945,-0.170172035694122,-0.153618201613426,-0.115050598978996,-0.048270177096128,-0.083465926349163,0.101729847490788));
res += mul(Get(s0,dx,0), float4x4(-0.049538269639015,-0.076533891260624,0.088663719594479,-0.042181245982647,0.069346174597740,0.008336418308318,0.051439329981804,-0.042168267071247,-0.126414507627487,-0.173725560307503,0.073380440473557,0.066601812839508,-0.048834100365639,0.039997778832912,-0.038427885621786,0.031674530357122));
res += mul(Get(s0,dx,dy), float4x4(0.021828085184097,0.030446428805590,-0.066629014909267,0.061894498765469,0.031773895025253,0.033953566104174,0.162384450435638,-0.006114754360169,-0.000227381737204,0.151586115360260,0.236412152647972,-0.071668341755867,-0.052118148654699,0.001240048906766,-0.019466888159513,0.081518158316612));
res += mul(Get(s1,-dx,-dy), float4x4(-0.060033462941647,-0.136622026562691,0.132661387324333,0.017007006332278,-0.040419511497021,0.010325941257179,0.085171669721603,-0.122475497424603,-0.002213217783719,-0.055513095110655,0.061084743589163,0.072829283773899,0.015033505856991,-0.268852472305298,0.070117287337780,0.158023253083229));
res += mul(Get(s1,-dx,0), float4x4(0.068683117628098,-0.290449947118759,-0.175338372588158,0.060303688049316,0.040860317647457,-0.018244588747621,-0.089118167757988,-0.227210313081741,0.163930669426918,-0.061655834317207,0.106042444705963,0.053348973393440,0.084423795342445,-0.177929446101189,0.029419237747788,0.058387465775013));
res += mul(Get(s1,-dx,dy), float4x4(0.339811056852341,-0.246235445141792,0.186911016702652,0.068418033421040,0.043168686330318,-0.038840714842081,-0.136072427034378,-0.170764937996864,0.079359740018845,0.115006558597088,0.027756871655583,0.198685184121132,0.022069321945310,-0.071333304047585,-0.119567699730396,0.242422670125961));
res += mul(Get(s1,0,-dy), float4x4(-0.073823980987072,-0.024056529626250,-0.042621780186892,-0.010062354616821,0.251415342092514,-0.111268065869808,0.051883038133383,-0.232051432132721,0.018306929618120,-0.083737090229988,0.070229873061180,0.146007627248764,0.110468551516533,0.047416895627975,-0.057636644691229,0.024509970098734));
res += mul(Get(s1,0,0), float4x4(0.050746563822031,-0.083438724279404,0.067907355725765,0.181261867284775,-0.010846382938325,-0.077608093619347,-0.195590361952782,-0.306128948926926,0.111293710768223,-0.016623230651021,-0.086083151400089,0.025750402361155,-0.241041004657745,0.128520801663399,-0.080300562083721,0.116400942206383));
res += mul(Get(s1,0,dy), float4x4(0.698205769062042,0.211141034960747,-0.083097591996193,-0.023066641762853,0.092808991670609,0.116323024034500,-0.061402227729559,-0.144047915935516,-0.000726051745005,0.016938544809818,0.009009708650410,0.000267108523985,-0.114795364439487,-0.087767191231251,-0.018369607627392,0.238115847110748));
res += mul(Get(s1,dx,-dy), float4x4(-0.098678112030029,-0.086356140673161,-0.205329656600952,-0.038565821945667,0.171739131212234,0.293739408254623,-0.048775173723698,-0.040882099419832,0.044849660247564,-0.065937697887421,-0.033553466200829,-0.079802729189396,0.064640745520592,-0.181416064500809,-0.095145359635353,-0.078608512878418));
res += mul(Get(s1,dx,0), float4x4(0.177488535642624,0.077676028013229,0.090030141174793,-0.161276355385780,0.021078001707792,0.213690593838692,-0.360932320356369,-0.093239270150661,-0.057807039469481,0.010499778203666,0.021535381674767,-0.048598356544971,-0.029220236465335,0.096417605876923,-0.147702381014824,0.060842800885439));
res += mul(Get(s1,dx,dy), float4x4(0.077256582677364,0.024436945095658,-0.181746765971184,-0.066068671643734,-0.024063685908914,0.067326135933399,0.000453931803349,0.174732446670532,-0.003548423293978,0.079685792326927,0.212958753108978,0.026649229228497,0.045500718057156,0.073872268199921,-0.219550386071205,0.226073354482651));
res += mul(Get(s2,-dx,-dy), float4x4(0.001704153022729,-0.098175257444382,-0.005707174539566,0.053510054945946,0.072277463972569,-0.048439078032970,-0.304904699325562,-0.081628866493702,-0.050823513418436,0.008905710652471,0.247994571924210,-0.046995144337416,0.039037715643644,-0.012478237971663,0.172785013914108,0.001760523300618));
res += mul(Get(s2,-dx,0), float4x4(0.000318859791150,-0.280071884393692,-0.041466861963272,0.021743407472968,0.110131651163101,0.078688032925129,0.056602951139212,-0.003791850991547,-0.010673807002604,-0.105080097913742,0.235747173428535,-0.066526129841805,0.020967291668057,0.072844460606575,-0.050246834754944,-0.051999844610691));
res += mul(Get(s2,-dx,dy), float4x4(-0.060046378523111,-0.151673644781113,-0.078690603375435,-0.042179338634014,-0.040633302181959,-0.098944775760174,0.104545474052429,-0.091573156416416,0.005409440025687,0.057430036365986,-0.408768445253372,-0.046453457325697,-0.019084775820374,-0.008232137188315,-0.210278242826462,-0.188506647944450));
res += mul(Get(s2,0,-dy), float4x4(0.089173018932343,-0.003944094292819,0.089235141873360,0.116269990801811,-0.079812407493591,-0.242177665233612,-0.114866025745869,-0.049582101404667,0.069893263280392,-0.077495343983173,-0.055259220302105,0.090209409594536,0.057439502328634,-0.198032960295677,0.129728615283966,0.045221235603094));
res += mul(Get(s2,0,0), float4x4(0.130962178111076,-0.035944640636444,0.143931016325951,0.094069965183735,-0.466732770204544,0.075987979769707,0.067955955862999,0.210374698042870,-0.060773350298405,-0.059956345707178,-0.073673963546753,0.085442923009396,0.074792310595512,-0.117413118481636,0.056690864264965,0.087526053190231));
res += mul(Get(s2,0,dy), float4x4(0.065749257802963,0.014488385990262,0.037968009710312,0.057620692998171,0.035223897546530,0.019941199570894,0.135446697473526,0.112559296190739,0.029370112344623,-0.030159078538418,0.095856301486492,-0.020342323929071,0.110721521079540,0.075655661523342,-0.036894232034683,-0.076889969408512));
res += mul(Get(s2,dx,-dy), float4x4(-0.009589177556336,0.061242599040270,0.033523805439472,0.037971395999193,-0.117117762565613,-0.162631705403328,0.106245502829552,0.013533975929022,-0.061274640262127,-0.146770790219307,-0.416975438594818,-0.022243268787861,-0.052726205438375,0.275844305753708,-0.018391991034150,-0.086919426918030));
res += mul(Get(s2,dx,0), float4x4(0.026576641947031,-0.016625152900815,0.208203479647636,0.105321772396564,-0.018423575907946,0.012472369708121,0.150364562869072,0.074474669992924,-0.038895051926374,0.149239182472229,-0.039776384830475,-0.130686432123184,0.077184386551380,-0.027404123917222,0.051881685853004,-0.013563394546509));
res += mul(Get(s2,dx,dy), float4x4(0.044434584677219,0.028329048305750,0.081464454531670,0.133751273155212,-0.081384889781475,-0.123294569551945,-0.122429132461548,0.150948002934456,-0.003739877836779,-0.108110114932060,0.230170518159866,0.053420182317495,0.017354447394609,-0.044354569166899,-0.034823253750801,0.080470129847527));
res += mul(Get(s3,-dx,-dy), float4x4(-0.153967112302780,-0.196470960974693,0.162389531731606,-0.023009624332190,-0.051824435591698,0.014460667967796,0.133489370346069,0.071017719805241,0.035962320864201,0.025853026658297,-0.149918407201767,0.071445412933826,-0.089769907295704,-0.057178240269423,0.148010477423668,-0.071428596973419));
res += mul(Get(s3,-dx,0), float4x4(0.131064265966415,0.104861386120319,0.199600204825401,-0.040334604680538,-0.288090705871582,-0.145305827260017,-0.106214322149754,-0.025637183338404,0.125332519412041,0.003147664945573,0.064509339630604,0.032753303647041,0.078665152192116,-0.258848935365677,-0.045484121888876,-0.190075099468231));
res += mul(Get(s3,-dx,dy), float4x4(-0.080614209175110,-0.120051950216293,-0.220379754900932,-0.009656742215157,-0.152916714549065,0.177353650331497,-0.045960094779730,-0.127204820513725,0.049021605402231,0.005679700057954,0.125730827450752,-0.101456306874752,-0.074125409126282,-0.087595947086811,0.062600597739220,-0.055437278002501));
res += mul(Get(s3,0,-dy), float4x4(0.227908253669739,0.039018224924803,0.199951916933060,0.021225947886705,-0.249110266566277,-0.094715021550655,-0.106262333691120,0.096234127879143,0.040957503020763,-0.265183299779892,0.127274945378304,-0.009182887151837,-0.061574742197990,0.227050393819809,-0.187705531716347,0.002027229871601));
res += mul(Get(s3,0,0), float4x4(-0.194665178656578,-0.035049166530371,-0.164858683943748,0.114275597035885,-0.258620858192444,0.036399986594915,-0.013329884037375,0.020255390554667,0.395029872655869,-0.091964483261108,0.089797183871269,-0.002491420367733,0.036001402884722,-0.161199912428856,-0.100035071372986,0.051629532128572));
res += mul(Get(s3,0,dy), float4x4(-0.010274003259838,0.037505418062210,-0.107710242271423,-0.033586323261261,-0.214624613523483,-0.197626024484634,0.151024430990219,-0.060252368450165,0.031115436926484,-0.196872279047966,-0.071785926818848,-0.175632447004318,0.018407344818115,0.050797738134861,0.068355575203896,-0.047110561281443));
res += mul(Get(s3,dx,-dy), float4x4(-0.201064765453339,-0.040954776108265,-0.232020631432533,-0.009054590016603,-0.069642007350922,0.096890956163406,-0.058576468378305,-0.231018096208572,0.152101442217827,0.080230280756950,-0.057389587163925,0.003347710939124,0.108397610485554,0.028953867033124,-0.148905292153358,-0.193599149584770));
res += mul(Get(s3,dx,0), float4x4(0.045017447322607,0.062254484742880,0.024488743394613,-0.174658387899399,-0.243803471326828,0.091840900480747,0.023161331191659,0.008327667601407,-0.089421190321445,0.043924082070589,-0.035194534808397,0.044167276471853,0.070833951234818,0.032921094447374,-0.035315632820129,0.083931572735310));
res += mul(Get(s3,dx,dy), float4x4(0.023177368566394,0.011511313728988,0.091978751122952,0.009829632937908,-0.297061532735825,-0.022629829123616,-0.021801630035043,-0.181410580873489,-0.102685227990150,-0.099089615046978,-0.020012650638819,-0.016816364601254,-0.046107288450003,0.070711620151997,-0.073254890739918,0.002334449673072));
res += mul(Get(s4,-dx,-dy), float4x4(0.129305914044380,-0.007244415115565,-0.178885683417320,0.145677924156189,0.196635454893112,-0.142187282443047,0.112947791814804,0.147845298051834,-0.028651382774115,0.026691203936934,-0.018708150833845,0.018030615523458,0.092485964298248,-0.134574845433235,-0.040240645408630,-0.295205444097519));
res += mul(Get(s4,-dx,0), float4x4(-0.017483258619905,-0.051367543637753,0.049419604241848,-0.039148274809122,-0.142602220177650,-0.024060763418674,-0.292661517858505,-0.042408775538206,0.055903851985931,-0.024858094751835,0.156836494803429,-0.027960626408458,0.088948175311089,0.285913228988647,0.036818087100983,-0.219748541712761));
res += mul(Get(s4,-dx,dy), float4x4(0.014617446810007,-0.133694171905518,0.142064228653908,0.017595224082470,0.065848164260387,-0.101125165820122,-0.062404476106167,0.035929672420025,-0.059434361755848,-0.165736958384514,0.082415431737900,0.031466819345951,0.090012483298779,-0.154702648520470,0.062643520534039,-0.197510808706284));
res += mul(Get(s4,0,-dy), float4x4(0.028638502582908,-0.064024455845356,0.005396027583629,-0.085657715797424,-0.078614249825478,-0.027787638828158,-0.342988580465317,0.077286057174206,0.013529711402953,0.108285002410412,0.129841670393944,0.048554796725512,0.007724313065410,-0.166593030095100,-0.095077484846115,-0.088822275400162));
res += mul(Get(s4,0,0), float4x4(-0.048624742776155,0.005512177478522,-0.016335317865014,-0.029272187501192,-0.434998780488968,-0.033738281577826,-0.349426150321960,-0.097546033561230,0.031206250190735,0.055696241557598,-0.081780895590782,0.055784549564123,0.067837089300156,0.154360800981522,0.173217624425888,-0.278386831283569));
res += mul(Get(s4,0,dy), float4x4(0.136640086770058,0.116487905383110,-0.070281937718391,-0.266100078821182,-0.077849395573139,-0.068834580481052,0.086511485278606,0.144408807158470,0.038710542023182,-0.096748068928719,0.034115578979254,0.008269444108009,-0.002991835121065,-0.053467150777578,-0.207026422023773,-0.083889156579971));
res += mul(Get(s4,dx,-dy), float4x4(0.137420088052750,-0.068375632166862,0.059742346405983,0.032846394926310,0.017392519861460,-0.021867346018553,-0.215437531471252,0.009169103577733,-0.011997854337096,-0.102843627333641,-0.171904593706131,0.063290581107140,-0.024712515994906,-0.162215203046799,-0.042917404323816,0.074149005115032));
res += mul(Get(s4,dx,0), float4x4(-0.176231443881989,0.173443987965584,0.206511780619621,0.025005934759974,0.047986857593060,0.049542069435120,0.065194070339203,0.009885678067803,-0.024635402485728,-0.081098698079586,-0.036317363381386,-0.080497138202190,0.141382053494453,0.153422296047211,-0.064716510474682,-0.067394778132439));
res += mul(Get(s4,dx,dy), float4x4(-0.127189218997955,-0.056143503636122,-0.133453905582428,0.141095682978630,-0.027828747406602,-0.060375809669495,0.297779113054276,-0.060658052563667,0.018719490617514,-0.019535169005394,-0.084742248058319,-0.075522132217884,0.070184819400311,-0.005432845093310,-0.013943498954177,0.098195634782314));
res += mul(Get(s5,-dx,-dy), float4x4(0.081485703587532,0.137215554714203,0.089402720332146,-0.027862394228578,-0.044809248298407,0.064370788633823,-0.134186804294586,0.044089075177908,-0.017713643610477,-0.006137524731457,0.029720336198807,-0.004500276874751,0.058576315641403,-0.064162388443947,0.132879182696342,0.090142816305161));
res += mul(Get(s5,-dx,0), float4x4(0.052383892238140,0.193875432014465,-0.224103480577469,-0.073005251586437,-0.017640048637986,-0.050431776791811,0.042820625007153,0.002929094480351,-0.012077378109097,-0.036618579179049,-0.167829334735870,0.093433998525143,-0.014544805511832,-0.066200271248817,-0.157904803752899,0.080169036984444));
res += mul(Get(s5,-dx,dy), float4x4(0.055197954177856,-0.024863393977284,-0.027550328522921,-0.000567827373743,-0.100216038525105,0.094908960163593,-0.012175177223980,-0.188775330781937,0.035390585660934,-0.010588205419481,-0.030280735343695,0.096368931233883,-0.020607488229871,0.027095843106508,0.172311693429947,0.018259154632688));
res += mul(Get(s5,0,-dy), float4x4(-0.072748214006424,-0.154761984944344,-0.101840205490589,0.113181859254837,0.182392850518227,-0.043296750634909,-0.016407247632742,-0.017732616513968,-0.030622022226453,-0.092722579836845,0.074377313256264,-0.010199160315096,0.078119128942490,-0.012199085205793,-0.186825215816498,0.075930632650852));
res += mul(Get(s5,0,0), float4x4(-0.050587762147188,-0.101498544216156,0.034829653799534,-0.072367914021015,-0.353659391403198,-0.011123800650239,0.106257870793343,0.107259929180145,-0.051366787403822,0.014827696606517,-0.219306871294975,-0.036319330334663,-0.050921943038702,-0.002502600196749,-0.141481205821037,-0.150848418474197));
res += mul(Get(s5,0,dy), float4x4(0.053921770304441,0.070251770317554,0.028768591582775,0.069126114249229,-0.080016918480396,0.104382231831551,0.119676493108273,0.039856459945440,-0.002469832310453,-0.003380408743396,0.024274699389935,0.052177742123604,-0.019528103992343,-0.075569912791252,0.096217051148415,-0.248836934566498));
res += mul(Get(s5,dx,-dy), float4x4(-0.003426472889259,0.060034189373255,0.087961934506893,-0.014418881386518,-0.024277394637465,0.015227887779474,0.054569680243731,0.062455043196678,0.030378149822354,-0.138439625501633,-0.092812076210976,-0.007656326051801,-0.033101484179497,0.124206088483334,0.047299098223448,-0.104497455060482));
res += mul(Get(s5,dx,0), float4x4(-0.040428519248962,-0.051783412694931,-0.045272212475538,-0.075227521359921,-0.093666397035122,0.049202546477318,-0.047696784138680,-0.124782368540764,0.074954353272915,0.055094610899687,-0.092178009450436,0.063737824559212,0.068596251308918,0.267535477876663,0.217667460441589,0.031417459249496));
res += mul(Get(s5,dx,dy), float4x4(0.047987446188927,0.039227429777384,0.032699186354876,0.139920353889465,-0.058016229420900,0.040393665432930,0.058287020772696,-0.059764340519905,0.090266816318035,-0.064407594501972,0.050050184130669,0.018942357972264,0.084469884634018,0.038491703569889,-0.043485794216394,-0.047405943274498));
res = max(float4(0, 0, 0, 0), res) + float4(-0.001972650876269,0.436769515275955,-0.261586785316467,0.206430628895760) * min(float4(0, 0, 0, 0), res);
return res;
}
