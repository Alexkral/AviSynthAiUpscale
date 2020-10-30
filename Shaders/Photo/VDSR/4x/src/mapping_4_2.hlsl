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
res += mul(Get(s0,-dx,-dy), float4x4(-0.187494859099388,-0.120302572846413,0.050196390599012,0.051435802131891,0.062075685709715,0.062104750424623,0.069644920527935,0.004761776886880,0.057413563132286,-0.086289569735527,0.000252781144809,-0.082749359309673,0.031711231917143,0.079888068139553,0.014715033583343,-0.087400667369366));
res += mul(Get(s0,-dx,0), float4x4(0.035373359918594,0.035311713814735,-0.047462623566389,0.365443378686905,-0.031702090054750,0.056471511721611,0.162585407495499,-0.009696862660348,-0.083772398531437,-0.006394512020051,-0.083454839885235,-0.117740027606487,0.019125208258629,-0.014158426783979,-0.108085431158543,0.006142195314169));
res += mul(Get(s0,-dx,dy), float4x4(-0.310679078102112,0.138153001666069,-0.213542655110359,0.256469219923019,-0.048674639314413,0.055717922747135,-0.032892264425755,-0.042442824691534,0.036941934376955,-0.015301228500903,-0.058064017444849,-0.117040619254112,0.046437475830317,-0.056098423898220,-0.068971708416939,-0.042326457798481));
res += mul(Get(s0,0,-dy), float4x4(-0.122616671025753,-0.114420332014561,0.018154628574848,-0.252024054527283,0.047454610466957,0.083199597895145,0.130599617958069,-0.088179416954517,-0.011122887954116,-0.037824697792530,0.001939219655469,0.001078330911696,-0.065500319004059,-0.019340468570590,0.143864840269089,0.121394552290440));
res += mul(Get(s0,0,0), float4x4(0.239039748907089,0.225348606705666,-0.136080846190453,-0.072031974792480,-0.022171726450324,0.026186332106590,0.047270331531763,-0.041176550090313,0.002205453114584,-0.124232083559036,-0.024017311632633,-0.031668823212385,-0.095593042671680,-0.047298118472099,-0.004736413247883,0.088025704026222));
res += mul(Get(s0,0,dy), float4x4(-0.334722638130188,0.146798208355904,-0.238619670271873,-0.029628377407789,-0.005498389713466,0.037914548069239,-0.089912578463554,-0.045041844248772,0.222198024392128,0.000827985699289,-0.039021860808134,0.026969557628036,-0.075604960322380,-0.173967823386192,0.042683910578489,-0.007450202014297));
res += mul(Get(s0,dx,-dy), float4x4(-0.146503210067749,0.060395024716854,0.010148253291845,-0.166529119014740,0.014253611676395,0.019619973376393,0.092151567339897,-0.047359373420477,-0.155852064490318,-0.110150650143623,0.017032613977790,0.033339820802212,-0.013586599379778,-0.103250518441200,0.051362529397011,0.075520701706409));
res += mul(Get(s0,dx,0), float4x4(0.135562270879745,0.190793633460999,-0.237151652574539,-0.082967855036259,0.039991356432438,0.025347230955958,0.051117241382599,-0.030172415077686,-0.059027962386608,-0.118142992258072,-0.002086015883833,0.042516857385635,0.038561154156923,-0.038458500057459,-0.002765461103991,0.073915019631386));
res += mul(Get(s0,dx,dy), float4x4(-0.332029581069946,-0.232084274291992,-0.297821044921875,0.101561039686203,0.087079182267189,0.059746664017439,0.050621274858713,-0.017554981634021,0.128648921847343,0.137709543108940,-0.219022631645203,0.198827028274536,0.107193112373352,-0.004127674736083,0.022409422323108,-0.103811867535114));
res += mul(Get(s1,-dx,-dy), float4x4(-0.021853946149349,-0.205196112394333,0.064726047217846,0.009404001757503,0.114489443600178,0.035415507853031,-0.024482937529683,0.095374949276447,0.070797324180603,-0.014579616487026,0.184014216065407,-0.007438636850566,0.029721593484282,-0.233318179845810,0.223226621747017,0.014645222574472));
res += mul(Get(s1,-dx,0), float4x4(0.051507350057364,-0.153815284371376,0.065463617444038,0.152597561478615,-0.064422771334648,0.002390331588686,-0.045536391437054,0.041591551154852,-0.036001000553370,-0.013923629187047,-0.005341174080968,-0.014361656270921,0.026885963976383,-0.143746495246887,0.012570534832776,0.057830926030874));
res += mul(Get(s1,-dx,dy), float4x4(0.002888244809583,-0.276213735342026,-0.104497484862804,0.161089837551117,0.011216468177736,0.083405047655106,-0.117734447121620,-0.015736043453217,-0.011071493849158,-0.020108196884394,0.067784614861012,-0.015897870063782,-0.043865561485291,-0.071082413196564,-0.162597328424454,-0.007756846025586));
res += mul(Get(s1,0,-dy), float4x4(0.096812397241592,-0.085374847054482,0.090157903730869,-0.153122395277023,0.064209818840027,-0.093113094568253,0.027605652809143,0.078713223338127,0.011494464240968,0.000394030270400,0.083979845046997,-0.007655458524823,-0.073307223618031,-0.057844009250402,0.023178510367870,-0.084864914417267));
res += mul(Get(s1,0,0), float4x4(0.116368561983109,-0.057217128574848,-0.046699825674295,-0.072634950280190,-0.077278792858124,0.002059583785012,-0.004145527724177,0.013880670070648,-0.054030150175095,-0.003190434072167,-0.150685086846352,0.026440149173141,-0.097273379564285,0.039471499621868,-0.024405933916569,-0.028333548456430));
res += mul(Get(s1,0,dy), float4x4(0.087537690997124,-0.100028000771999,-0.145050451159477,-0.011519833467901,-0.038634717464447,0.040424875915051,-0.062167726457119,-0.039047878235579,-0.053065996617079,-0.043640639632940,0.042227119207382,0.032811328768730,-0.093612320721149,0.053173139691353,-0.124970957636833,0.024423103779554));
res += mul(Get(s1,dx,-dy), float4x4(0.045884035527706,-0.118186160922050,0.063074760138988,-0.105129554867744,-0.050974294543266,0.148006454110146,-0.149025574326515,0.093086257576942,0.033930748701096,-0.138014033436775,-0.033686835318804,-0.074799016118050,-0.135245770215988,-0.092250101268291,-0.073456734418869,-0.105976983904839));
res += mul(Get(s1,dx,0), float4x4(-0.012323644943535,-0.075801983475685,0.042070154100657,-0.093135789036751,-0.109827570617199,0.190273091197014,-0.097338847815990,0.066634245216846,0.038847018033266,-0.067323528230190,-0.161382541060448,-0.114527381956577,-0.058251064270735,-0.051222380250692,-0.042475610971451,0.148220047354698));
res += mul(Get(s1,dx,dy), float4x4(0.022632908076048,-0.053655099123716,-0.070117920637131,-0.022090658545494,-0.093190141022205,0.058293715119362,-0.105506315827370,-0.040421821177006,0.196985498070717,0.153071448206902,0.032004162669182,-0.203179493546486,0.013043409213424,0.079444304108620,-0.057302623987198,0.220303431153297));
res += mul(Get(s2,-dx,-dy), float4x4(0.016205048188567,0.013749394565821,-0.055376593023539,-0.133915051817894,-0.052402380853891,-0.137407973408699,-0.045980747789145,0.013336801901460,-0.013442540541291,0.166219696402550,-0.136359021067619,-0.086326293647289,-0.021401543170214,0.185503020882607,-0.109608642756939,-0.113735832273960));
res += mul(Get(s2,-dx,0), float4x4(0.072475142776966,-0.065961316227913,-0.085801452398300,0.070606894791126,0.022021008655429,-0.031668633222580,-0.073801726102829,0.001384743489325,0.050290182232857,-0.073975794017315,-0.038525514304638,-0.066429845988750,0.066926874220371,-0.006982733961195,0.005373121704906,-0.004443820100278));
res += mul(Get(s2,-dx,dy), float4x4(-0.056284151971340,-0.001143350615166,-0.040780153125525,-0.034377358853817,0.191667556762695,0.008895368315279,-0.131059616804123,-0.181474268436432,-0.054968319833279,-0.061466049402952,0.197764188051224,-0.020796429365873,0.095393292605877,-0.157399982213974,0.115191459655762,-0.043135907500982));
res += mul(Get(s2,0,-dy), float4x4(-0.056039404124022,0.052447162568569,-0.032240502536297,-0.034601598978043,-0.164578810334206,-0.027894616127014,-0.013139307498932,-0.017197053879499,0.114657066762447,0.066690273582935,0.006787387188524,-0.130596637725830,0.105714179575443,0.062195900827646,-0.016180971637368,0.038810592144728));
res += mul(Get(s2,0,0), float4x4(0.031116666272283,0.073675066232681,-0.042006194591522,0.183094769716263,-0.047988127917051,0.229092910885811,-0.023924501612782,-0.050207052379847,0.045957986265421,-0.118327260017395,0.151096463203430,-0.059474095702171,0.033147446811199,-0.034203637391329,-0.044015832245350,-0.069047778844833));
res += mul(Get(s2,0,dy), float4x4(0.001634497428313,0.079650558531284,0.232682794332504,0.072645343840122,0.019505247473717,0.017631174996495,-0.049156576395035,0.018266841769218,-0.128533095121384,-0.067857749760151,0.006477491464466,-0.051917780190706,0.041913017630577,-0.080721363425255,-0.020866457372904,-0.133969381451607));
res += mul(Get(s2,dx,-dy), float4x4(-0.178547695279121,-0.136789113283157,-0.116578467190266,0.055494911968708,0.089213453233242,0.218851715326309,-0.089543923735619,0.112864285707474,0.100389175117016,0.015756212174892,0.179645970463753,-0.121006369590759,0.012224201112986,-0.105041347444057,0.051271051168442,0.120371729135513));
res += mul(Get(s2,dx,0), float4x4(-0.047079052776098,-0.043808382004499,-0.052868936210871,0.124012053012848,0.075854755938053,0.154505580663681,-0.116358183324337,-0.049305643886328,-0.124219566583633,-0.085861809551716,0.121655493974686,-0.007351281121373,-0.054977342486382,-0.139512866735458,-0.032794713973999,-0.086526922881603));
res += mul(Get(s2,dx,dy), float4x4(0.100156575441360,0.151045024394989,0.337111651897430,0.005827165208757,0.131170198321342,-0.105352796614170,-0.121192216873169,0.067314915359020,-0.131518542766571,-0.048885948956013,-0.113917484879494,-0.022755300626159,-0.059136405587196,-0.063671432435513,-0.067663133144379,-0.180169478058815));
res += mul(Get(s3,-dx,-dy), float4x4(-0.028414763510227,0.072917506098747,0.043032158166170,0.056534569710493,-0.048938330262899,0.159803643822670,-0.121986940503120,0.038858480751514,-0.085863739252090,-0.119643583893776,0.012368336319923,0.052008576691151,0.135328948497772,-0.079731374979019,0.016031129285693,-0.016960425302386));
res += mul(Get(s3,-dx,0), float4x4(-0.060495559126139,-0.001655794796534,0.044409923255444,-0.014933595433831,-0.049976520240307,0.024706305935979,-0.032262742519379,0.011034152470529,0.011914036236703,-0.024045601487160,-0.006350816227496,0.225773498415947,0.186149656772614,-0.092590436339378,-0.068017013370991,-0.099604807794094));
res += mul(Get(s3,-dx,dy), float4x4(-0.044677816331387,-0.016600657254457,0.020584903657436,-0.020926799625158,0.007155960891396,0.052935436367989,0.151030912995338,0.073470585048199,-0.066496364772320,-0.119194023311138,0.267600983381271,0.148857772350311,0.208544269204140,-0.014381771907210,0.194365009665489,-0.012580140493810));
res += mul(Get(s3,0,-dy), float4x4(-0.008834890089929,0.004987179767340,0.041809249669313,0.054744888097048,0.015380334109068,0.060029130429029,0.033302351832390,-0.107227049767971,0.016961460933089,-0.000773375446443,0.092107526957989,-0.209719061851501,-0.052854795008898,-0.021769927814603,-0.036760929971933,0.145259380340576));
res += mul(Get(s3,0,0), float4x4(-0.031595464795828,-0.013830399140716,0.007510015740991,0.001014138688333,0.068558059632778,-0.138049528002739,0.012861050665379,-0.131183594465256,0.197147578001022,-0.167792677879333,-0.146340385079384,-0.222540110349655,0.106214515864849,-0.057023793458939,-0.084113068878651,0.046558842062950));
res += mul(Get(s3,0,dy), float4x4(-0.018719857558608,-0.023178491741419,-0.074957869946957,-0.011240403167903,0.144563615322113,-0.101837255060673,0.004407371859998,-0.098530769348145,0.029901076108217,-0.185935705900192,-0.075022146105766,-0.176894679665565,0.123188473284245,-0.042391724884510,0.121782056987286,0.077803887426853));
res += mul(Get(s3,dx,-dy), float4x4(0.030716512352228,-0.094963498413563,-0.055571045726538,0.106102280318737,-0.127177044749260,0.164929807186127,0.121914714574814,0.148454412817955,0.028970668092370,0.066032133996487,0.269513100385666,-0.177894547581673,0.106384754180908,-0.008163822814822,0.015897989273071,0.006687690038234));
res += mul(Get(s3,dx,0), float4x4(0.046490728855133,-0.082391664385796,-0.035689797252417,0.027906188741326,-0.051277462393045,0.111795820295811,0.006496657617390,0.132028982043266,0.032266497612000,-0.109535373747349,-0.003888911567628,-0.238575398921967,0.092621974647045,0.067665621638298,-0.065745182335377,-0.064692042768002));
res += mul(Get(s3,dx,dy), float4x4(-0.013650021515787,-0.043579634279013,-0.068470731377602,-0.068652041256428,0.124955721199512,0.139020204544067,-0.028913300484419,0.076745435595512,-0.153852641582489,-0.144170835614204,-0.110068239271641,-0.106136262416840,0.006588508374989,0.082926362752914,-0.017594343051314,-0.030687363818288));
return max(float4(0,0,0,0), res);
}
