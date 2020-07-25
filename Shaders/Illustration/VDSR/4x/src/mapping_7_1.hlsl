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
res += mul(Get(s0,-dx,-dy), float4x4(-0.064260847866535,-0.066350080072880,0.200481161475182,-0.094235524535179,-0.162432014942169,-0.259209752082825,-0.094612516462803,0.126208364963531,0.121538825333118,-0.068078704178333,0.157788380980492,-0.069174177944660,0.029197311028838,0.247793167829514,-0.081922240555286,0.062615051865578));
res += mul(Get(s0,-dx,0), float4x4(-0.084820568561554,0.116063788533211,0.001430135685951,-0.061058003455400,0.023270549252629,0.066972590982914,-0.075329765677452,0.082240812480450,-0.020152350887656,-0.006209904327989,-0.160670563578606,0.039707064628601,-0.139575272798538,0.003413556143641,0.080572903156281,0.183884516358376));
res += mul(Get(s0,-dx,dy), float4x4(-0.093592666089535,0.126132398843765,-0.073385603725910,0.174624875187874,-0.120602495968342,-0.036792013794184,-0.044170819222927,0.221898823976517,0.144132852554321,-0.069363027811050,0.086886197328568,-0.088497489690781,-0.040587637573481,-0.000960587582085,-0.161824464797974,-0.171873673796654));
res += mul(Get(s0,0,-dy), float4x4(-0.085583068430424,0.049361508339643,-0.138735368847847,-0.186817616224289,-0.356065034866333,-0.028397358953953,0.085842020809650,-0.026159655302763,0.132103949785233,0.190121442079544,-0.096839673817158,0.227461218833923,0.018262710422277,0.049658082425594,-0.263242393732071,0.042899422347546));
res += mul(Get(s0,0,0), float4x4(0.062744706869125,-0.112386517226696,-0.100985951721668,-0.009137651883066,-0.053343720734119,-0.286993712186813,0.192133158445358,-0.153292223811150,0.088605515658855,0.034863840788603,-0.091296255588531,-0.066157199442387,0.120665214955807,0.017306722700596,-0.170321539044380,-0.008863358758390));
res += mul(Get(s0,0,dy), float4x4(-0.050251148641109,-0.018650809302926,0.101964719593525,0.098521143198013,-0.073617100715637,-0.166883587837219,0.083986729383469,0.065245747566223,-0.140037983655930,0.017694322392344,-0.141137704253197,0.114082574844360,0.053154084831476,0.050609815865755,-0.052030324935913,-0.035999115556479));
res += mul(Get(s0,dx,-dy), float4x4(0.025556957349181,0.065411455929279,0.146573811769485,-0.079885154962540,0.096923187375069,-0.166094288229942,0.115225799381733,-0.108358487486839,0.134873881936073,-0.216005399823189,-0.026602169498801,0.049034271389246,-0.000101670586446,-0.003210600465536,0.035128973424435,-0.114220038056374));
res += mul(Get(s0,dx,0), float4x4(0.016378890722990,-0.078249558806419,-0.014879755675793,0.208488211035728,0.066453225910664,0.054974116384983,-0.173351496458054,-0.025375874713063,-0.141185432672501,0.029987215995789,-0.017721462994814,-0.138823658227921,-0.051770634949207,0.075961947441101,-0.035736434161663,0.000125359438243));
res += mul(Get(s0,dx,dy), float4x4(-0.008905245922506,-0.001145783113316,0.135292097926140,-0.034922357648611,-0.052925292402506,-0.035853572189808,-0.033198725432158,0.218609780073166,-0.173515096306801,-0.026581730693579,-0.201986789703369,-0.113319762051105,0.043285340070724,0.003880630247295,0.004620179068297,-0.102593831717968));
res += mul(Get(s1,-dx,-dy), float4x4(-0.218376278877258,-0.145497277379036,-0.134594872593880,0.032441198825836,0.018543088808656,-0.011665511876345,-0.007598750293255,0.102397263050079,-0.078092306852341,0.066917881369591,0.078185528516769,0.230016484856606,0.022662945091724,-0.038791164755821,0.087135590612888,0.083627894520760));
res += mul(Get(s1,-dx,0), float4x4(-0.107310026884079,-0.066473223268986,0.142422452569008,-0.059605598449707,-0.082053378224373,-0.007467129267752,-0.039896603673697,0.085320450365543,-0.120934404432774,0.066656671464443,-0.211619809269905,-0.029232604429126,-0.085993058979511,0.114720128476620,-0.021942378953099,-0.059977065771818));
res += mul(Get(s1,-dx,dy), float4x4(0.016202136874199,0.019116025418043,-0.032608062028885,-0.127081990242004,0.033070929348469,0.041013129055500,0.026390384882689,-0.038018297404051,-0.026722878217697,-0.003949428442866,0.015748407691717,-0.204289332032204,0.003970442339778,-0.147814735770226,0.145612478256226,-0.261938750743866));
res += mul(Get(s1,0,-dy), float4x4(0.057440407574177,0.084891937673092,0.063937105238438,-0.023803237825632,-0.021162640303373,-0.004923888482153,0.068011008203030,0.161359250545502,-0.047879513353109,-0.099195234477520,0.109804540872574,0.060162208974361,0.065850593149662,0.021259883418679,0.288918405771255,0.055501855909824));
res += mul(Get(s1,0,0), float4x4(-0.009800513274968,-0.033495366573334,-0.063706740736961,-0.146238178014755,0.127209290862083,0.055119171738625,0.016373680904508,0.062961310148239,0.060589376837015,-0.023218037560582,0.073340266942978,-0.100842908024788,-0.086115151643753,-0.046998288482428,-0.062908947467804,0.100918881595135));
res += mul(Get(s1,0,dy), float4x4(0.138774767518044,0.050508625805378,-0.002330623567104,-0.235534429550171,0.071789376437664,-0.112652666866779,0.023421015590429,-0.119097761809826,-0.042403973639011,-0.052527483552694,-0.012083427980542,-0.105562016367912,-0.064594790339470,0.008501438423991,-0.130704969167709,-0.112268589437008));
res += mul(Get(s1,dx,-dy), float4x4(-0.218638762831688,-0.084620624780655,0.152112558484077,-0.032392438501120,-0.013237161561847,-0.153187915682793,0.163970649242401,-0.123341642320156,-0.000526821298990,0.126025199890137,0.037061858922243,-0.115903437137604,0.111904032528400,-0.048582002520561,-0.032335046678782,-0.030247585847974));
res += mul(Get(s1,dx,0), float4x4(-0.120011650025845,-0.089135251939297,-0.121420860290527,0.098233632743359,0.101306229829788,0.214282751083374,-0.070000171661377,0.059304092079401,0.151137590408325,-0.130188405513763,-0.172112479805946,-0.140157863497734,0.076120473444462,-0.115161500871181,-0.036324471235275,0.121299996972084));
res += mul(Get(s1,dx,dy), float4x4(-0.055955354124308,-0.034799855202436,-0.051821317523718,0.033578552305698,-0.200582534074783,-0.033367346972227,-0.020084245130420,0.015774823725224,-0.095446176826954,-0.017916485667229,0.231166735291481,-0.021183313801885,0.010985018685460,-0.044379286468029,0.058910876512527,0.143058046698570));
res += mul(Get(s2,-dx,-dy), float4x4(0.220960766077042,-0.216045960783958,-0.108224876224995,-0.122773528099060,0.049959771335125,0.055660590529442,-0.020322667434812,-0.147313311696053,0.000796862295829,0.027304770424962,-0.091450877487659,0.203042432665825,0.077659934759140,-0.067327670753002,-0.204807326197624,0.064137034118176));
res += mul(Get(s2,-dx,0), float4x4(-0.245399802923203,-0.167681574821472,-0.175658494234085,0.084359675645828,-0.039356689900160,0.000485006923554,0.046650685369968,-0.171091288328171,0.125269651412964,-0.077868029475212,0.155709683895111,-0.139282375574112,-0.138609230518341,-0.125979229807854,0.098037645220757,-0.234543964266777));
res += mul(Get(s2,-dx,dy), float4x4(-0.016818506643176,0.190333962440491,-0.046293150633574,0.115325555205345,0.083373501896858,-0.005843438208103,0.119351483881474,0.206246778368950,0.065198764204979,0.101469539105892,0.093421652913094,-0.133782133460045,0.157129928469658,0.109719149768353,-0.195135578513145,-0.066829629242420));
res += mul(Get(s2,0,-dy), float4x4(0.040572941303253,-0.249989092350006,-0.062553808093071,0.038306046277285,-0.052879314869642,-0.081676781177521,0.028491074219346,-0.079259805381298,-0.061787314713001,0.167497545480728,-0.152361139655113,-0.134440019726753,0.211656928062439,0.023914253339171,0.076876051723957,-0.087010681629181));
res += mul(Get(s2,0,0), float4x4(0.012997938320041,-0.038710255175829,-0.006337454076856,0.198466241359711,-0.171411469578743,-0.198215186595917,-0.111339837312698,0.119352176785469,-0.075014591217041,0.000495573796798,-0.034790005534887,-0.018259445205331,0.116753391921520,-0.228657156229019,0.014216243289411,-0.096497870981693));
res += mul(Get(s2,0,dy), float4x4(0.014038396999240,-0.142007350921631,0.044749308377504,-0.010741392150521,0.123546808958054,-0.150831207633018,-0.049038957804441,0.183973446488380,0.123707167804241,-0.090130835771561,0.071207351982594,-0.006150475703180,-0.023386154323816,-0.053730979561806,0.004371269606054,0.098367139697075));
res += mul(Get(s2,dx,-dy), float4x4(0.177474886178970,-0.001744830864482,-0.059755142778158,-0.051186382770538,-0.089289136230946,-0.167430877685547,0.065513640642166,-0.031623296439648,-0.022196020931005,0.140370339155197,-0.090453393757343,-0.045436885207891,0.039715740829706,0.003512961091474,0.167570561170578,0.043086919933558));
res += mul(Get(s2,dx,0), float4x4(0.029625803232193,-0.042857669293880,-0.002474818145856,-0.133204713463783,0.138345077633858,0.176648646593094,-0.109665885567665,0.199219524860382,0.013327929191291,0.111177489161491,0.011408608406782,-0.055242542177439,-0.032651107758284,0.000899326172657,-0.228515729308128,0.065025873482227));
res += mul(Get(s2,dx,dy), float4x4(0.011507787741721,-0.237658187747002,-0.032952938228846,-0.037029534578323,0.107824325561523,0.016133634373546,-0.111314371228218,0.038387075066566,-0.066487245261669,-0.046438671648502,0.056208055466413,-0.126490846276283,0.041823849081993,-0.015102042816579,-0.036860596388578,-0.159569546580315));
res += mul(Get(s3,-dx,-dy), float4x4(0.104003310203552,-0.054175119847059,0.021800126880407,0.074367277324200,-0.226684242486954,0.251950651407242,0.018530154600739,-0.088712580502033,-0.027151811867952,-0.215676978230476,-0.078117102384567,-0.026249362155795,0.095124199986458,-0.098809480667114,-0.127530515193939,0.012700605206192));
res += mul(Get(s3,-dx,0), float4x4(0.206990510225296,0.087703518569469,-0.153871282935143,-0.231362268328667,0.028081081807613,0.240062668919563,-0.134753927588463,0.174260541796684,0.146745741367340,-0.112062878906727,-0.156530424952507,-0.018428331241012,-0.143089190125465,0.026536833494902,0.180175378918648,-0.021464725956321));
res += mul(Get(s3,-dx,dy), float4x4(-0.051157016307116,0.042114786803722,0.088288612663746,0.007473397534341,-0.129904076457024,0.052535865455866,-0.070944488048553,0.000823052425403,0.116336844861507,0.010770513676107,0.181634828448296,-0.055495638400316,0.045489381998777,-0.212676122784615,-0.121952511370182,0.020455874502659));
res += mul(Get(s3,0,-dy), float4x4(-0.075339123606682,0.132347762584686,0.007476109080017,-0.242817759513855,-0.073816880583763,-0.295959711074829,-0.098289899528027,-0.085362821817398,-0.177458971738815,-0.024145875126123,0.069360964000225,0.044381421059370,-0.213406711816788,0.014418158680201,-0.188710317015648,0.099390827119350));
res += mul(Get(s3,0,0), float4x4(-0.087837830185890,0.011274475604296,0.029405849054456,-0.057657755911350,0.219086945056915,-0.109784908592701,-0.201499745249748,0.123643539845943,-0.041250392794609,-0.177680045366287,0.089228458702564,0.046179018914700,-0.006608139257878,-0.041476186364889,0.188826367259026,-0.117314264178276));
res += mul(Get(s3,0,dy), float4x4(-0.048530351370573,-0.230140417814255,-0.143186300992966,-0.214452758431435,0.057064905762672,-0.192841470241547,-0.183691278100014,-0.170828714966774,0.074296198785305,-0.065325334668159,0.175651058554649,0.011627204716206,0.013794186525047,0.042500119656324,0.032880071550608,-0.148960426449776));
res += mul(Get(s3,dx,-dy), float4x4(-0.072439819574356,0.081899285316467,0.069821000099182,0.145155802369118,-0.014230254106224,-0.047523833811283,-0.003442412475124,-0.145471423864365,0.088416375219822,-0.226277932524681,-0.050724368542433,-0.044806487858295,0.225095808506012,0.147328153252602,-0.035431571304798,-0.042712576687336));
res += mul(Get(s3,dx,0), float4x4(-0.172088995575905,-0.064371697604656,-0.075881637632847,-0.116001598536968,0.236304208636284,-0.062176708132029,0.038445003330708,-0.065591193735600,0.097699277102947,0.121431335806847,-0.018500588834286,0.111002542078495,-0.028963422402740,0.160592794418335,-0.014834769070148,-0.058733712881804));
res += mul(Get(s3,dx,dy), float4x4(0.085484564304352,0.174203917384148,0.115456953644753,0.048122484236956,0.141199126839638,-0.047146543860435,0.159135669469833,0.020423259586096,-0.178064554929733,0.028052257373929,-0.081338278949261,0.090131573379040,-0.056668072938919,-0.002559068147093,-0.298165798187256,0.003721353132278));
return max(float4(0,0,0,0), res);
}
