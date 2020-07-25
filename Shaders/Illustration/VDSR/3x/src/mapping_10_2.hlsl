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
res += mul(Get(s0,-dx,-dy), float4x4(0.004985818173736,0.071615353226662,0.079139918088913,0.291671186685562,-0.080251425504684,-0.131777375936508,-0.137333631515503,0.079599387943745,0.038560416549444,-0.151900380849838,-0.072580315172672,0.071173317730427,0.098045922815800,0.034943498671055,-0.223238423466682,0.059628080576658));
res += mul(Get(s0,-dx,0), float4x4(-0.165474086999893,0.003269973676652,0.199145957827568,0.158209860324860,0.067953340709209,-0.099665619432926,0.008673887699842,0.118785426020622,0.118771642446518,-0.027696711942554,-0.035376202315092,-0.019757876172662,0.052487924695015,-0.093479119241238,-0.015709660947323,0.004088140092790));
res += mul(Get(s0,-dx,dy), float4x4(-0.025930782780051,0.041563041508198,0.046367555856705,0.106723368167877,0.013134195469320,0.096352063119411,-0.185798823833466,-0.053863286972046,-0.169844850897789,-0.054237887263298,-0.106201715767384,0.017736999318004,0.035469796508551,-0.048286490142345,0.113979533314705,0.067330807447433));
res += mul(Get(s0,0,-dy), float4x4(0.016033308580518,0.120379552245140,0.049365203827620,-0.039247751235962,-0.120983861386776,-0.119725614786148,0.155892506241798,0.134433582425117,0.253386408090591,0.038464844226837,-0.120005041360855,0.162656217813492,-0.036442913115025,-0.021717423573136,0.024127531796694,0.006840925198048));
res += mul(Get(s0,0,0), float4x4(-0.017408067360520,0.090627238154411,0.143326640129089,0.208205774426460,0.033973194658756,0.129064485430717,0.116224586963654,0.037977699190378,-0.291619122028351,-0.117919176816940,0.056445639580488,0.013598609715700,0.076295830309391,0.083749167621136,-0.079917885363102,-0.014385449700058));
res += mul(Get(s0,0,dy), float4x4(0.116288967430592,0.207227095961571,0.077482879161835,0.058514334261417,0.000417031347752,0.056765090674162,-0.007978937588632,-0.012730754911900,-0.038355130702257,0.129249215126038,-0.019484302029014,-0.032807867974043,-0.032003715634346,-0.153836324810982,0.004317215643823,0.048203550279140));
res += mul(Get(s0,dx,-dy), float4x4(-0.067025035619736,-0.096871517598629,0.194769084453583,0.164964482188225,-0.186408609151840,-0.050827037543058,-0.100107692182064,-0.055133130401373,-0.016491577029228,0.062159892171621,0.143953144550323,0.002721436088905,-0.207345947623253,-0.078752584755421,-0.106564395129681,-0.112302817404270));
res += mul(Get(s0,dx,0), float4x4(0.086261965334415,0.010537260212004,0.000224168077693,-0.010708939284086,0.251843631267548,0.139388695359230,0.144360393285751,0.116547703742981,-0.204923629760742,0.104645743966103,0.052790943533182,0.171720787882805,0.020358469337225,0.031391806900501,-0.092147208750248,-0.164181351661682));
res += mul(Get(s0,dx,dy), float4x4(0.061255004256964,-0.114105969667435,0.021911459043622,-0.087990634143353,0.013893255032599,-0.029240369796753,-0.081778243184090,0.122211210429668,-0.094969131052494,0.073391683399677,-0.196065247058868,0.159603714942932,-0.151149451732635,-0.046693883836269,-0.008829162456095,0.157518491148949));
res += mul(Get(s1,-dx,-dy), float4x4(-0.070398509502411,-0.112489901483059,-0.106415554881096,0.155542984604836,-0.121191516518593,-0.261725455522537,-0.044218547642231,0.011725217103958,-0.022695958614349,0.065531238913536,0.044558476656675,-0.006634241435677,-0.061052121222019,-0.069759592413902,0.078629039227962,-0.092051200568676));
res += mul(Get(s1,-dx,0), float4x4(-0.200033396482468,-0.118366517126560,-0.090838156640530,-0.210501834750175,0.112897671759129,-0.227493748068810,-0.034241586923599,0.196408823132515,0.041246388107538,0.061527103185654,-0.087532669305801,-0.026599228382111,0.008537689223886,-0.023125519976020,0.040467645972967,0.037596773356199));
res += mul(Get(s1,-dx,dy), float4x4(-0.169932976365089,-0.234685480594635,-0.104175910353661,0.032418183982372,0.335706382989883,-0.140527009963989,0.217120066285133,-0.127699032425880,-0.054928258061409,0.024768073111773,-0.083801701664925,-0.020887164399028,0.190842613577843,-0.113380387425423,-0.011817137710750,0.056816481053829));
res += mul(Get(s1,0,-dy), float4x4(0.245963007211685,0.347676813602448,0.258484870195389,0.010248550213873,-0.014040684327483,0.154975563287735,0.040819130837917,-0.011567110195756,-0.055851072072983,0.251243412494659,-0.048209089785814,-0.071843370795250,0.074454084038734,-0.056963648647070,0.029348075389862,-0.222068578004837));
res += mul(Get(s1,0,0), float4x4(0.027197735384107,-0.095991343259811,0.015510499477386,-0.133175179362297,0.087419465184212,-0.054388280957937,-0.157386630773544,0.185803219676018,0.026389451697469,0.063272826373577,-0.204783186316490,0.004808553494513,-0.149213716387749,0.046385731548071,-0.084257341921329,-0.037514038383961));
res += mul(Get(s1,0,dy), float4x4(-0.172671005129814,0.053854078054428,0.120498485863209,-0.041726592928171,0.041279055178165,-0.017932327464223,-0.137776926159859,0.161999851465225,-0.196626186370850,-0.021070558577776,-0.012317198328674,-0.126618072390556,0.138233527541161,-0.065952956676483,0.164954274892807,0.080757029354572));
res += mul(Get(s1,dx,-dy), float4x4(-0.156823307275772,-0.084101513028145,0.146275952458382,-0.115744911134243,-0.208777144551277,0.112071111798286,-0.016875816509128,-0.000263052555965,0.158163189888000,-0.038697771728039,-0.114368811249733,-0.112152896821499,-0.121027849614620,-0.185028880834579,0.178295955061913,0.056060031056404));
res += mul(Get(s1,dx,0), float4x4(-0.087694995105267,0.017599223181605,0.211905896663666,-0.001882178359665,0.009331501089036,0.176322594285011,-0.121706180274487,-0.074309073388577,0.072789974510670,0.143925085663795,0.056028697639704,-0.072521775960922,-0.170267999172211,-0.162055999040604,0.112637534737587,-0.123229332268238));
res += mul(Get(s1,dx,dy), float4x4(0.017905704677105,-0.033381026238203,0.056305740028620,-0.022315187379718,0.043327178806067,0.107173092663288,-0.188740953803062,0.129026308655739,-0.036448508501053,0.090855844318867,0.025626761838794,0.081273630261421,-0.067963413894176,-0.001529143541120,0.008285869844258,0.022210333496332));
res += mul(Get(s2,-dx,-dy), float4x4(-0.027485748752952,-0.004132048226893,-0.113034658133984,0.061961792409420,-0.005628820974380,0.065500281751156,0.010200534947217,0.223299622535706,-0.002949086949229,-0.096375532448292,-0.232914760708809,-0.069893904030323,-0.011889384128153,-0.078508220613003,0.031852092593908,-0.103235729038715));
res += mul(Get(s2,-dx,0), float4x4(-0.027209144085646,-0.108420521020889,-0.052667245268822,0.205532297492027,-0.080855727195740,0.127421870827675,-0.023653423413634,0.239683672785759,0.035797066986561,0.049166567623615,0.139316007494926,0.150999695062637,0.015413803048432,0.069353684782982,0.287876516580582,-0.257536977529526));
res += mul(Get(s2,-dx,dy), float4x4(-0.099884763360023,0.091589756309986,0.042920604348183,0.092249043285847,0.156695485115051,0.146732151508331,-0.089563161134720,0.050817217677832,0.025645969435573,-0.081325232982635,0.056912060827017,0.209959149360657,-0.110739052295685,-0.119255639612675,0.027617981657386,-0.059708401560783));
res += mul(Get(s2,0,-dy), float4x4(-0.125936865806580,0.078510105609894,0.003682500682771,0.081129908561707,0.142500638961792,-0.042278189212084,-0.264510571956635,0.029779838398099,0.162019252777100,-0.087498903274536,-0.141466826200485,-0.082964159548283,-0.181008547544479,0.196405082941055,0.085023656487465,-0.034943327307701));
res += mul(Get(s2,0,0), float4x4(0.082476794719696,-0.129951670765877,0.037970352917910,0.045814067125320,0.244438454508781,-0.152893364429474,-0.079128786921501,0.248871058225632,0.092860192060471,0.028372926637530,0.091848574578762,0.295109629631042,0.066491484642029,0.030929107218981,-0.214606732130051,-0.152117773890495));
res += mul(Get(s2,0,dy), float4x4(0.040296174585819,-0.074094839394093,-0.061836823821068,-0.267880767583847,0.123297609388828,-0.075956650078297,-0.034424737095833,-0.028149731457233,0.004203872755170,-0.020150281488895,0.106252446770668,-0.048733942210674,-0.151462227106094,0.099241815507412,0.167865291237831,-0.026917219161987));
res += mul(Get(s2,dx,-dy), float4x4(-0.022838672623038,-0.121279619634151,0.020101578906178,-0.063471965491772,0.028499197214842,0.160329446196556,-0.067253768444061,-0.063667766749859,0.066214799880981,0.005587737541646,0.172424584627151,-0.192930415272713,-0.094673819839954,-0.126928448677063,0.055053122341633,-0.134674951434135));
res += mul(Get(s2,dx,0), float4x4(0.126396834850311,-0.321959793567657,-0.064355917274952,0.280301779508591,-0.140642464160919,0.128465011715889,0.050263840705156,-0.054906800389290,-0.097245477139950,-0.133169397711754,0.107808887958527,0.069376558065414,0.065757289528847,0.094530515372753,-0.044296350330114,-0.036612119525671));
res += mul(Get(s2,dx,dy), float4x4(0.280703812837601,0.035219140350819,-0.020017571747303,-0.013111228123307,0.172688335180283,-0.005675836931914,0.084641069173813,-0.073601886630058,-0.118793092668056,0.058275070041418,-0.018475621938705,0.098378352820873,0.055203709751368,-0.097728945314884,0.150077074766159,-0.056955263018608));
res += mul(Get(s3,-dx,-dy), float4x4(-0.053550332784653,0.108771696686745,0.039625834673643,0.009682404808700,0.024874405935407,0.043108917772770,-0.037480179220438,-0.043782148510218,-0.071281015872955,-0.054507430642843,-0.197293460369110,-0.162014216184616,0.175913393497467,-0.065530017018318,0.117393180727959,0.028895691037178));
res += mul(Get(s3,-dx,0), float4x4(-0.071548469364643,0.017802061513066,0.258616358041763,-0.232436329126358,-0.152620404958725,0.015847587957978,-0.047710612416267,0.057504799216986,0.221907138824463,-0.086792252957821,-0.174060657620430,-0.084820523858070,-0.074317723512650,-0.171568781137466,0.097731783986092,-0.028670718893409));
res += mul(Get(s3,-dx,dy), float4x4(-0.249140381813049,0.171603158116341,0.023243090137839,-0.001902928459458,-0.179093852639198,0.132965177297592,-0.168109834194183,0.002662977669388,-0.015373676083982,-0.053727027028799,-0.034968625754118,-0.013083650730550,-0.000787647906691,0.051205061376095,0.068918950855732,-0.023704160004854));
res += mul(Get(s3,0,-dy), float4x4(-0.144127413630486,0.131268471479416,0.043218430131674,-0.143858090043068,0.009455148130655,-0.111488670110703,-0.039812725037336,-0.006046578288078,-0.137939408421516,-0.196861177682877,-0.177433222532272,-0.196404203772545,-0.066579319536686,0.008949392475188,0.092032454907894,0.092617876827717));
res += mul(Get(s3,0,0), float4x4(-0.025491466745734,0.084498852491379,-0.142032057046890,0.006001194473356,0.124419748783112,-0.025226911529899,-0.109068721532822,0.072264671325684,0.160230651497841,-0.031353659927845,0.223571524024010,-0.125270321965218,0.013522562570870,0.216828837990761,0.117372334003448,-0.005230472423136));
res += mul(Get(s3,0,dy), float4x4(-0.021622078493237,-0.031989935785532,-0.105690367519855,0.035221513360739,0.008583223447204,0.154170706868172,-0.063029736280441,-0.022525396198034,-0.291373550891876,0.006182052195072,0.146320208907127,0.192931234836578,-0.212936654686928,0.268375635147095,-0.083250202238560,0.061928775161505));
res += mul(Get(s3,dx,-dy), float4x4(-0.054487776011229,0.083281613886356,0.099310599267483,-0.144281551241875,-0.060006722807884,-0.046697430312634,-0.198613256216049,0.112014673650265,0.127635017037392,-0.055701337754726,-0.072881139814854,0.089282535016537,0.142408654093742,0.134072765707970,-0.143437355756760,-0.086297057569027));
res += mul(Get(s3,dx,0), float4x4(-0.025665387511253,-0.049092799425125,-0.096451550722122,0.084967724978924,-0.017434529960155,0.064186401665211,0.037515643984079,0.209915682673454,0.054558310657740,-0.036231059581041,-0.086974777281284,0.097981482744217,0.252142697572708,-0.131349354982376,0.043386206030846,0.058543056249619));
res += mul(Get(s3,dx,dy), float4x4(-0.002396465046331,0.087633512914181,-0.058937624096870,0.137771591544151,0.083353295922279,0.112991891801357,0.112268745899200,0.000826580740977,-0.014191975817084,0.045333735644817,0.017547477036715,-0.119107455015182,0.130267068743706,0.053824789822102,-0.230494529008865,-0.126181542873383));
return max(float4(0,0,0,0), res);
}
