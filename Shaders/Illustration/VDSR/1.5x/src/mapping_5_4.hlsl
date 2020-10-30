sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += mul(Get(s0,-dx,-dy), float4x4(-0.004039059858769,0.028868852183223,-0.013542903587222,-0.030903197824955,-0.008169403299689,-0.066872335970402,0.001437493134290,-0.000177968948265,0.000448466918897,0.011849326081574,0.060374386608601,0.017786717042327,-0.002867066767067,0.030468799173832,-0.036147940903902,-0.020659787580371));
res += mul(Get(s0,-dx,0), float4x4(0.002635427750647,0.009319073520601,-0.010666519403458,0.000923404120840,-0.009744021110237,-0.083840742707253,0.043991237878799,0.022284720093012,0.003627951489761,0.066111557185650,0.053793590515852,0.044907506555319,0.005867737811059,-0.036104299128056,0.010281383059919,0.062241494655609));
res += mul(Get(s0,-dx,dy), float4x4(0.000870135729201,-0.043254755437374,-0.006943193264306,-0.019234471023083,-0.003981275483966,-0.066053241491318,-0.007050475105643,-0.030074320733547,0.005791424773633,0.034240383654833,0.086274795234203,0.022788055241108,-0.005343055818230,-0.037493482232094,-0.065188489854336,-0.038609933108091));
res += mul(Get(s0,0,-dy), float4x4(-0.001228834851645,-0.070033013820648,-0.040371898561716,0.014114709571004,-0.009207936003804,-0.070501632988453,-0.021827895194292,0.014540629461408,0.000684177153744,-0.104271315038204,0.002759499009699,0.028880689293146,0.003388250246644,-0.101405173540115,-0.082634225487709,0.077232085168362));
res += mul(Get(s0,0,0), float4x4(0.002384883584455,-0.043491728603840,-0.025891693308949,-0.006675301119685,0.007314140908420,-0.073082625865936,-0.018717691302299,-0.001406415132806,0.012895081192255,-0.029953317716718,-0.003983376082033,0.036085695028305,0.003554437542334,-0.042403489351273,-0.048207812011242,-0.002609569812194));
res += mul(Get(s0,0,dy), float4x4(0.001811526832171,-0.006610732991248,-0.033898465335369,-0.012012106366456,-0.004883709829301,-0.047866325825453,0.010268664918840,-0.025626689195633,0.007635651621968,-0.030564110726118,0.012105145491660,-0.004397060722113,-0.004913228563964,-0.062367349863052,-0.019210821017623,-0.033832985907793));
res += mul(Get(s0,dx,-dy), float4x4(-0.002602708293125,0.130358681082726,-0.015642005950212,0.016901042312384,-0.010743094608188,0.036090046167374,0.014227421954274,-0.010717974975705,0.009831408970058,-0.006078961770982,0.015163634903729,0.000253067759331,-0.010842096991837,0.031612571328878,0.018074592575431,0.026593260467052));
res += mul(Get(s0,dx,0), float4x4(0.008179175667465,-0.013877669349313,-0.054350551217794,0.011928804218769,-0.011428202502429,-0.032848998904228,0.034051921218634,-0.001298649236560,0.011958782561123,-0.001004219171591,0.017577555030584,-0.001076948246919,0.001854536472820,0.008973260410130,0.009969034232199,0.049436643719673));
res += mul(Get(s0,dx,dy), float4x4(0.006327916868031,-0.021610602736473,-0.059333320707083,0.063213303685188,-0.006034824531525,-0.017321068793535,-0.010893759317696,-0.003282813122496,0.005853531882167,0.042061071842909,0.028298767283559,0.028834152966738,0.004824442323297,-0.026816885918379,-0.042674858123064,0.075763575732708));
res += mul(Get(s1,-dx,-dy), float4x4(0.004334714263678,0.166051611304283,0.082084074616432,-0.007949467748404,0.005833744537085,0.072883568704128,-0.021081697195768,-0.026225082576275,-0.006995480041951,-0.005197469610721,0.144627243280411,-0.202017545700073,0.004836616106331,-0.043290253728628,0.012287613935769,-0.056441199034452));
res += mul(Get(s1,-dx,0), float4x4(0.001748198294081,0.200576201081276,0.038894318044186,0.086161233484745,0.000076970369264,-0.017594050616026,-0.050721328705549,-0.024122985079885,-0.010027307085693,-0.073419958353043,-0.026629116386175,0.166503623127937,0.009471930563450,0.055651314556599,0.007092671468854,0.242886781692505));
res += mul(Get(s1,-dx,dy), float4x4(-0.003917742986232,-0.052371669560671,0.057153098285198,-0.069045007228851,-0.002080183709040,0.053855560719967,-0.048350721597672,0.020532585680485,0.008642103523016,0.069938644766808,0.111691728234291,-0.006174401845783,0.000368226348655,0.063086390495300,0.019238321110606,0.025636505335569));
res += mul(Get(s1,0,-dy), float4x4(-0.004357225261629,0.015857342630625,0.036920771002769,-0.062760144472122,0.003172973869368,-0.015572282485664,0.061946593225002,0.095354333519936,-0.010526598431170,0.008342550136149,-0.022545263171196,0.036976803094149,0.006184040568769,0.067757979035378,-0.037299383431673,-0.010252619162202));
res += mul(Get(s1,0,0), float4x4(0.004917716141790,-0.006618833635002,0.116565078496933,0.005961421411484,0.001613527769223,-0.043251562863588,0.022379787638783,-0.039320006966591,-0.007628041785210,0.125247880816460,-0.086539432406425,0.020014984533191,-0.009284620173275,0.255023837089539,0.021806435659528,0.075981177389622));
res += mul(Get(s1,0,dy), float4x4(-0.005537322256714,-0.035023421049118,0.107553347945213,-0.047122817486525,-0.003178360173479,-0.031803853809834,0.001394390827045,0.065803781151772,-0.014227841980755,0.008950890041888,-0.013952230103314,-0.147428244352341,-0.017915006726980,0.024589961394668,-0.009103656746447,-0.020293565467000));
res += mul(Get(s1,dx,-dy), float4x4(-0.005530395079404,0.015254341997206,-0.031622450798750,-0.090857185423374,-0.001867106184363,0.163629502058029,0.065867736935616,-0.005452336277813,-0.006964312866330,0.093223258852959,-0.030499283224344,-0.067007444798946,-0.000128075334942,0.069421172142029,0.131349042057991,-0.127173766493797));
res += mul(Get(s1,dx,0), float4x4(-0.004177497699857,-0.090254656970501,-0.031847417354584,-0.026271516457200,-0.010126152075827,-0.054506845772266,-0.063486509025097,-0.068552196025848,-0.008060677908361,-0.045900110155344,-0.009439744986594,-0.081380136311054,0.003417239058763,0.118441954255104,0.036890681833029,-0.079304352402687));
res += mul(Get(s1,dx,dy), float4x4(-0.011389392428100,-0.149112299084663,-0.050602294504642,-0.016131227836013,-0.000297071703244,0.220371842384338,-0.188646674156189,-0.026524186134338,-0.008112613111734,-0.017480228096247,0.010646661743522,0.079000301659107,0.002511280123144,0.025853412225842,0.032315418124199,0.042305927723646));
res += mul(Get(s2,-dx,-dy), float4x4(0.009979689493775,-0.006865798030049,0.076891906559467,0.024648740887642,0.004386832937598,0.022048845887184,-0.037809576839209,0.000991090666503,0.012157251127064,-0.086179628968239,-0.074626728892326,0.004132147878408,0.022877823561430,0.001438034931198,0.079702459275723,-0.031406715512276));
res += mul(Get(s2,-dx,0), float4x4(0.008208882994950,0.111692227423191,0.048323336988688,0.183110237121582,0.004653071518987,0.041808903217316,0.001526819425635,0.019942726939917,0.003582993056625,-0.004229980520904,-0.057610481977463,-0.019514614716172,0.021536201238632,-0.023599516600370,0.025853646919131,0.002488635247573));
res += mul(Get(s2,-dx,dy), float4x4(-0.003926706034690,0.008696161210537,-0.043432131409645,-0.060394294559956,-0.006653485819697,0.001243132515810,-0.006862268317491,0.004576287232339,-0.000041472107114,0.064411491155624,0.040995460003614,0.054834023118019,0.025137992575765,0.022031592205167,0.032319765537977,-0.013065927661955));
res += mul(Get(s2,0,-dy), float4x4(-0.002534054918215,0.177068650722504,-0.137409672141075,-0.069659791886806,-0.003537053940818,-0.024372752755880,-0.037814170122147,0.043144371360540,0.010613692924380,-0.048608675599098,-0.002136427210644,0.043620608747005,0.006450082641095,0.016818441450596,-0.019158953800797,0.002396063413471));
res += mul(Get(s2,0,0), float4x4(0.008216789923608,-0.004835281986743,-0.031274814158678,0.016022190451622,0.002172684296966,-0.001465564477257,-0.040210336446762,0.024624157696962,-0.000788235978689,-0.027139812707901,-0.055940076708794,0.070936061441898,0.011344168335199,-0.024896906688809,0.015733430162072,-0.022536084055901));
res += mul(Get(s2,0,dy), float4x4(0.001645715674385,0.038656119257212,-0.149604737758636,-0.058320164680481,0.005175442434847,-0.020143143832684,-0.019636461511254,-0.004465028177947,-0.002924212021753,-0.005489492323250,0.144797548651695,0.140927478671074,0.010858576744795,-0.031077833846211,-0.016059510409832,0.012864388525486));
res += mul(Get(s2,dx,-dy), float4x4(0.000845448754262,-0.020996609702706,0.143498092889786,-0.090318202972412,-0.003858043812215,0.045039650052786,0.029649896547198,0.020574223250151,0.011538873426616,-0.037325508892536,-0.090522371232510,0.029869025573134,0.006055737845600,0.001584856188856,0.099197246134281,-0.010274657979608));
res += mul(Get(s2,dx,0), float4x4(0.006861929316074,0.048889879137278,0.009805427864194,0.042249593883753,0.000002383899755,0.041314750909805,0.029111055657268,0.023934936150908,0.008380242623389,-0.074341796338558,-0.066123344004154,0.011373613961041,0.003310345811769,-0.020679524168372,0.026913434267044,0.023187451064587));
res += mul(Get(s2,dx,dy), float4x4(-0.014110599644482,-0.144912689924240,0.142720922827721,-0.002994575537741,0.002892703749239,0.038590982556343,-0.004394492600113,0.022254999727011,0.003090023295954,0.050347570329905,0.023889340460300,0.023530287668109,0.011803634464741,-0.007599298376590,0.083686709403992,0.124113470315933));
res += mul(Get(s3,-dx,-dy), float4x4(-0.001598093658686,-0.000825903029181,-0.068620674312115,-0.085780881345272,-0.003075886983424,-0.018950453028083,-0.044758293777704,-0.008206487633288,-0.001998211257160,0.049451071768999,0.023295281454921,-0.022375995293260,0.015490342862904,-0.027157632634044,-0.014547560364008,0.001265565515496));
res += mul(Get(s3,-dx,0), float4x4(-0.010761470533907,0.019748369231820,-0.041546180844307,0.111255407333374,-0.003950097598135,-0.004384754225612,0.002015626989305,0.039756514132023,0.025602718815207,0.004040873143822,0.065721355378628,0.035143703222275,0.007076145149767,-0.133335530757904,0.003756876802072,-0.018473127856851));
res += mul(Get(s3,-dx,dy), float4x4(-0.005107359029353,0.116623133420944,0.002646739361808,-0.029475012794137,-0.001150107476860,-0.060826111584902,-0.025786204263568,-0.012915208935738,0.015423218719661,0.071824416518211,0.006664944812655,-0.049000684171915,0.013170979917049,-0.064784020185471,-0.031642179936171,-0.008263621479273));
res += mul(Get(s3,0,-dy), float4x4(-0.001890345709398,-0.081381686031818,-0.089380204677582,0.012637714855373,0.004238702822477,-0.024166138842702,0.028416687622666,0.023346841335297,-0.006380968261510,0.069557353854179,-0.005879749543965,-0.059730317443609,0.021006383001804,-0.069401063024998,-0.028012184426188,-0.008797921240330));
res += mul(Get(s3,0,0), float4x4(0.000441696727648,0.004585801623762,-0.048649895936251,0.108405567705631,-0.001329100807197,0.024230265989900,0.016310125589371,0.082207344472408,0.007541377563030,-0.198252454400063,-0.039922047406435,0.051485642790794,0.000798564404249,-0.020569082349539,-0.022694867104292,-0.000452024105471));
res += mul(Get(s3,0,dy), float4x4(-0.012617927044630,-0.049226392060518,-0.034155908972025,-0.050109468400478,-0.002431578934193,-0.054216932505369,-0.110903762280941,-0.028286926448345,0.005582365673035,-0.036241363734007,0.037417788058519,0.066116891801357,-0.000563270470593,-0.008381641469896,0.002639689948410,0.031737264245749));
res += mul(Get(s3,dx,-dy), float4x4(0.016340851783752,-0.100899949669838,0.083385340869427,0.051486227661371,-0.002774105872959,-0.015941727906466,0.006456506438553,0.022256998345256,-0.007206765469164,-0.014157244935632,0.099243439733982,-0.094103299081326,0.018965018913150,-0.032107360661030,-0.062311097979546,-0.010465877130628));
res += mul(Get(s3,dx,0), float4x4(0.015427812002599,0.153664126992226,0.119325734674931,0.022402973845601,0.000244747905526,0.047646299004555,0.028448717668653,0.026954744011164,-0.002383830957115,0.231397673487663,-0.007960594259202,0.133232578635216,0.013535577803850,-0.113500192761421,0.013662977144122,0.011255783028901));
res += mul(Get(s3,dx,dy), float4x4(-0.014686372131109,-0.014065423049033,-0.040021374821663,0.005567478016019,0.003513523377478,-0.051688425242901,-0.062572993338108,-0.017295397818089,-0.002953481860459,0.078125238418579,0.287975966930389,-0.117584571242332,0.009073259308934,0.003682240610942,-0.022153956815600,-0.019555807113647));
return max(float4(0,0,0,0), res);
}
