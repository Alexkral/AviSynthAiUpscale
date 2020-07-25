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
res += mul(Get(s0,-dx,-dy), float4x4(-0.018123436719179,-0.007402784656733,-0.020785119384527,0.023108763620257,-0.012755922041833,-0.010239705443382,0.072646871209145,0.059970989823341,0.003748855786398,0.018727790564299,-0.033016648143530,-0.007511317264289,-0.021427886560559,-0.024361925199628,0.050683043897152,0.026719519868493));
res += mul(Get(s0,-dx,0), float4x4(-0.007577154319733,-0.009246311150491,0.011104875244200,-0.002990266773850,0.003918699454516,0.014166672714055,-0.015449599362910,-0.002745660720393,0.023530790582299,-0.029769279062748,0.022666601464152,0.006377151701599,-0.008449112996459,0.008545713499188,0.034197308123112,-0.023085564374924));
res += mul(Get(s0,-dx,dy), float4x4(-0.014815347269177,-0.003710260381922,-0.024511916562915,-0.016563124954700,-0.013754316605628,-0.004790578503162,-0.033980019390583,-0.001657359884121,-0.009338811039925,0.009017768315971,0.057063031941652,0.022421630099416,0.002517003566027,0.008751600980759,0.025880966335535,0.009874754585326));
res += mul(Get(s0,0,-dy), float4x4(-0.008378731086850,0.024806365370750,0.011143257841468,-0.041480943560600,-0.022107340395451,-0.015153720043600,0.023955926299095,0.030281741172075,-0.012775948271155,0.022628748789430,-0.012832020409405,0.009159413166344,-0.057986825704575,-0.002103793900460,-0.018178092315793,-0.012391543947160));
res += mul(Get(s0,0,0), float4x4(0.006914237979800,-0.013062441721559,0.119096688926220,-0.008863105438650,0.021906733512878,-0.029147019609809,-0.000143029232277,0.047686446458101,-0.039932966232300,0.005613425746560,0.025076283141971,-0.003815308678895,-0.001341321039945,-0.005781623534858,-0.021958436816931,0.016461169347167));
res += mul(Get(s0,0,dy), float4x4(0.009782149456441,-0.016933340579271,-0.047257062047720,0.009327513165772,0.035954192280769,-0.012007887475193,0.063083514571190,0.033450182527304,0.010965643450618,0.024553855881095,-0.000522768939845,0.004375600721687,-0.008445084095001,-0.053607728332281,0.013780402950943,0.021826488897204));
res += mul(Get(s0,dx,-dy), float4x4(0.020744528621435,-0.013285078108311,0.030367761850357,0.020548660308123,0.026424350216985,-0.004071216564626,0.037329245358706,0.014450965449214,-0.003150209086016,0.033934239298105,0.009380260482430,-0.009731100872159,-0.003300620941445,0.020125277340412,0.003894655266777,0.028100917115808));
res += mul(Get(s0,dx,0), float4x4(-0.010153363458812,-0.010226921178401,0.060563940554857,0.007264121901244,0.002406871877611,-0.017687564715743,0.024847736582160,-0.016091501340270,-0.009793150238693,0.003507415065542,0.020063655450940,-0.010807003825903,0.013287547044456,-0.022764360532165,0.001360444002785,0.022597102448344));
res += mul(Get(s0,dx,dy), float4x4(0.007375004701316,-0.003400943009183,-0.084537565708160,-0.027476392686367,0.023850992321968,-0.004718462005258,0.062069594860077,-0.023235416039824,0.013493224047124,-0.022979078814387,0.033443085849285,-0.010681672021747,0.014968241564929,0.007260781247169,0.026977252215147,0.021763628348708));
res += mul(Get(s1,-dx,-dy), float4x4(0.010334326885641,0.014245991595089,-0.019593644887209,0.018151089549065,-0.017068773508072,0.024881642311811,0.071652404963970,-0.014433114789426,-0.027516759932041,-0.014895776286721,-0.004376565571874,-0.024516921490431,0.032718893140554,-0.035579007118940,0.011486927978694,0.005409028381109));
res += mul(Get(s1,-dx,0), float4x4(0.002543903188780,-0.007078852504492,0.065225444734097,0.013977312482893,-0.012604619376361,-0.017644455656409,-0.055579666048288,0.015038712881505,-0.019545223563910,-0.028297577053308,-0.019184645265341,-0.007913021370769,-0.000128632484120,0.010711424052715,0.055060703307390,0.017397237941623));
res += mul(Get(s1,-dx,dy), float4x4(-0.020813675597310,0.013499584980309,0.071917466819286,-0.039289083331823,-0.008617745712399,0.020268473774195,0.040169473737478,0.024325964972377,0.020936811342835,0.007970119826496,0.089418068528175,0.018505061045289,0.009158548898995,0.017011715099216,0.014724547043443,0.005383503157645));
res += mul(Get(s1,0,-dy), float4x4(0.007308687549084,0.017229052260518,0.016309699043632,-0.015018888749182,-0.008776674047112,-0.024031370878220,0.071745797991753,-0.041656449437141,-0.022622194141150,-0.043404098600149,0.002181479940191,-0.005149519070983,0.007272403687239,0.014765681698918,-0.033047296106815,-0.028180023655295));
res += mul(Get(s1,0,0), float4x4(-0.031912714242935,0.012570658698678,0.185205355286598,-0.016266155987978,0.026487449184060,0.015807725489140,-0.094045773148537,0.003165010595694,-0.029912715777755,-0.026948625221848,0.018943754956126,-0.025540687143803,0.007390618789941,0.000405286264140,0.030538598075509,-0.018208166584373));
res += mul(Get(s1,0,dy), float4x4(-0.005148544441909,0.004840768873692,-0.019080931320786,-0.015171794220805,0.024896727874875,0.046116914600134,0.118315890431404,0.014899434521794,-0.019588438794017,0.007829089649022,0.085884861648083,-0.028501741588116,-0.012478088028729,0.016643065959215,-0.028195390477777,-0.009861406870186));
res += mul(Get(s1,dx,-dy), float4x4(0.011252202093601,-0.041635736823082,0.056198414415121,0.024487132206559,-0.012408548034728,-0.002331962110475,0.017378512769938,-0.004849746823311,0.022387633100152,0.019941333681345,0.034622501581907,0.029471985995770,0.013107684440911,0.023161794990301,0.003716034116223,0.011324670165777));
res += mul(Get(s1,dx,0), float4x4(-0.008244383148849,-0.005915203131735,0.120790079236031,-0.010964457876980,0.012935525737703,0.001827535219491,0.022446760907769,0.008716803044081,0.015346781350672,-0.003351381514221,-0.004438647069037,0.020288739353418,-0.003472232958302,0.004682931583375,0.026752695441246,0.021268352866173));
res += mul(Get(s1,dx,dy), float4x4(-0.019417945295572,-0.013465708121657,-0.093603551387787,-0.008125975728035,-0.012695399112999,-0.028359333053231,0.082771152257919,0.009927611798048,-0.006702547427267,-0.013370258733630,-0.029847946017981,0.000976454059128,0.029341243207455,0.002477466128767,-0.008752690628171,0.007426984608173));
res += mul(Get(s2,-dx,-dy), float4x4(0.023600105196238,-0.034754585474730,-0.005908071063459,0.009857225231826,0.037445064634085,0.035236001014709,0.040215030312538,0.017867118120193,-0.022451283410192,0.000159071714734,0.008468728512526,0.013878107070923,-0.011407549493015,0.016550717875361,0.038318794220686,-0.018564535304904));
res += mul(Get(s2,-dx,0), float4x4(0.021244611591101,0.019639482721686,0.014896332286298,0.018866112455726,-0.013483816757798,0.025359848514199,0.033440217375755,-0.002733284141868,0.000537140993401,0.001999630825594,0.042602054774761,0.023528229445219,0.008818802423775,-0.000557464547455,0.059966441243887,0.006412062328309));
res += mul(Get(s2,-dx,dy), float4x4(0.000782111252192,-0.011992489919066,0.030431220307946,0.015781158581376,0.007545650005341,-0.018350612372160,-0.033095344901085,-0.010974497534335,0.029992349445820,-0.000863341498189,0.008405974134803,-0.009011508896947,0.005444851238281,-0.033779785037041,-0.014692632481456,0.023008402436972));
res += mul(Get(s2,0,-dy), float4x4(0.005146671086550,0.019522333517671,0.030672993510962,0.040146924555302,0.001397780608386,-0.028476610779762,-0.000158754381118,0.012807739898562,0.013358364813030,0.011405318044126,0.000679052609485,0.023694189265370,0.004885148722678,0.007675628177822,-0.006823993287981,-0.009374230168760));
res += mul(Get(s2,0,0), float4x4(-0.010136271826923,0.003425752744079,0.031054221093655,-0.000257412000792,0.029616514220834,0.001252339920029,0.055737316608429,0.027282306924462,-0.010821466334164,-0.015158514492214,0.063871055841446,0.017943562939763,-0.010782132856548,-0.003170593874529,0.070069991052151,0.041889686137438));
res += mul(Get(s2,0,dy), float4x4(-0.010952224023640,0.019890366122127,0.015565097332001,0.020219102501869,-0.021647823974490,0.016837332397699,-0.010710677132010,0.021492231637239,0.016479631885886,-0.010495712049305,0.020040689036250,-0.030051346868277,0.035514276474714,-0.007227314170450,-0.008841534145176,-0.016787031665444));
res += mul(Get(s2,dx,-dy), float4x4(-0.033037032932043,0.009184781461954,0.023575779050589,-0.009144225157797,0.009089712984860,-0.001735029392876,-0.006655213888735,-0.003634307533503,-0.003143549663946,-0.024635931476951,0.013323796913028,-0.015223942697048,0.017936972901225,-0.014108190312982,0.032640509307384,0.000343894294929));
res += mul(Get(s2,dx,0), float4x4(-0.043828353285789,0.005620935466141,0.021385142579675,-0.021377677097917,-0.000018091588572,-0.023818213492632,0.068319439888000,-0.022652111947536,0.011433445848525,0.010633287951350,0.027392385527492,-0.008408447727561,0.015513206832111,-0.011831413954496,0.027718061581254,0.000308892136673));
res += mul(Get(s2,dx,dy), float4x4(-0.016389809548855,0.012913961894810,0.017228990793228,0.023141937330365,-0.006701963488013,-0.007720847148448,0.022825114428997,-0.007242493797094,-0.009105146862566,0.015285179018974,0.011844598688185,0.014549829065800,0.020739583298564,-0.002887032926083,-0.014602100476623,0.004004171118140));
res += mul(Get(s3,-dx,-dy), float4x4(0.018899658694863,0.005135714542121,0.063168130815029,-0.014221302233636,0.001596122747287,0.006323033012450,0.040342401713133,-0.003454196266830,0.035668883472681,0.020769191905856,-0.002049769740552,-0.013805631548166,0.028689762577415,-0.002567313611507,0.002197033958510,-0.013499729335308));
res += mul(Get(s3,-dx,0), float4x4(-0.036191102117300,0.011098317801952,0.048139166086912,0.008996350690722,0.015789669007063,0.017768083140254,0.005711531266570,-0.015915956348181,0.024192534387112,0.009429496712983,0.080593168735504,-0.017505642026663,0.014384501613677,0.030875233933330,-0.010129341855645,-0.006025194190443));
res += mul(Get(s3,-dx,dy), float4x4(-0.028152905404568,-0.026243258267641,0.080571532249451,0.008852203376591,-0.013454998843372,-0.008640366606414,0.039849221706390,0.028670407831669,0.013818017207086,-0.022944876924157,0.031210934743285,0.012951871380210,0.030835015699267,0.006293695885688,-0.001941412338056,0.011169304139912));
res += mul(Get(s3,0,-dy), float4x4(-0.022534962743521,-0.029760047793388,0.072515100240707,0.001158268190920,-0.010055770166218,0.016537539660931,-0.016103304922581,-0.004940718878061,-0.016647657379508,-0.005683721508831,0.079785451292992,0.024841800332069,0.018401393666863,-0.038213059306145,-0.030480492860079,-0.011492559686303));
res += mul(Get(s3,0,0), float4x4(0.009844922460616,0.015130798332393,0.008496714755893,0.021570164710283,-0.013304682448506,0.015807017683983,0.022184070199728,-0.021404974162579,-0.000476565881399,-0.012765670195222,-0.006883287802339,-0.002819578163326,0.023681590333581,-0.027777701616287,-0.016912866383791,0.044713146984577));
res += mul(Get(s3,0,dy), float4x4(0.001682284986600,-0.016106799244881,0.026072056964040,-0.008628759533167,0.006106613203883,0.018775226548314,-0.007574803195894,-0.018410969525576,-0.000437699258327,-0.007032331079245,-0.027087418362498,0.012400881387293,0.009524456225336,0.002980837831274,-0.006242028437555,-0.042304631322622));
res += mul(Get(s3,dx,-dy), float4x4(-0.020331894978881,-0.001368747558445,0.050714559853077,0.010173343122005,0.020340174436569,-0.047257084399462,0.016793688759208,0.008073173463345,0.002654440701008,-0.023383883759379,0.059384807944298,0.015791049227118,-0.031996835023165,0.029499974101782,-0.003574764123186,0.023949258029461));
res += mul(Get(s3,dx,0), float4x4(-0.018313921988010,-0.003379684872925,-0.025252921506763,0.010879498906434,0.019062299281359,-0.038599237799644,-0.036822553724051,-0.001979891676456,0.000179610637133,0.007313078735024,0.006020849570632,-0.001255513867363,-0.009532510302961,-0.019680479541421,-0.028213182464242,0.002653842093423));
res += mul(Get(s3,dx,dy), float4x4(-0.011346074752510,-0.024844232946634,0.106932207942009,-0.003029307816178,0.004712197463959,0.021212931722403,0.001483343541622,0.016016039997339,0.003254375653341,-0.010362079367042,0.032722316682339,0.007275971118361,-0.009015249088407,0.006187820807099,0.022980218753219,-0.006733138579875));
return max(float4(0,0,0,0), res);
}
