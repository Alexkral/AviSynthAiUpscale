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
res += mul(Get(s0,-dx,-dy), float4x4(0.006281076930463,-0.013507382012904,0.238464593887329,-0.011637648567557,-0.006643780041486,0.020939171314240,0.069714546203613,-0.015692688524723,0.003419788088650,0.133171692490578,0.095455706119537,0.001228116103448,-0.007984585128725,-0.021405141800642,-0.017046650871634,-0.004254133440554));
res += mul(Get(s0,-dx,0), float4x4(-0.016528869047761,-0.118565328419209,0.384906500577927,0.030839966610074,0.002286306815222,-0.046998277306557,0.061075259000063,-0.017568394541740,0.000343206687830,-0.052405931055546,0.053587622940540,-0.003681529546157,0.005279272794724,0.014448706060648,-0.004462268203497,-0.004518100991845));
res += mul(Get(s0,-dx,dy), float4x4(-0.005873024463654,0.089136861264706,0.231419250369072,-0.001778367557563,-0.010455272160470,0.042026381939650,0.145973294973373,-0.007685528136790,-0.004871359094977,0.029805187135935,0.047919671982527,-0.003198762424290,0.002345118438825,0.026775414124131,-0.016422800719738,0.013465020805597));
res += mul(Get(s0,0,-dy), float4x4(-0.015692621469498,-0.174106404185295,-0.051225591450930,-0.036702316254377,0.012462916783988,0.038985449820757,-0.031772539019585,0.003971660509706,0.008882421068847,0.169960424304008,0.007891268469393,-0.003525326726958,0.008840738795698,-0.040060520172119,0.012886397540569,0.006767306476831));
res += mul(Get(s0,0,0), float4x4(-0.008769136853516,0.555151879787445,-0.081222288310528,0.026788966730237,-0.011150275357068,-0.133711829781532,-0.068088658154011,0.007134472951293,-0.008884928189218,-0.176588565111160,0.057813424617052,-0.008273605257273,0.006768235936761,-0.016209207475185,-0.004365801811218,-0.001174923731014));
res += mul(Get(s0,0,dy), float4x4(0.017379984259605,-0.054027721285820,-0.119083665311337,0.008814166299999,-0.014534432440996,-0.044520378112793,-0.031996145844460,-0.016512354835868,0.000035634529922,-0.018693653866649,0.030939986929297,-0.015852041542530,0.004379712510854,-0.038378655910492,-0.006636889185756,0.001889482140541));
res += mul(Get(s0,dx,-dy), float4x4(0.010337415151298,0.086815699934959,-0.116928063333035,-0.004157754126936,0.010775320231915,0.076561383903027,-0.032808054238558,-0.001638995949179,0.003072751685977,0.003857156261802,-0.137773185968399,-0.008245429955423,0.006544911302626,0.014545750804245,0.000840300112031,0.004726407118142));
res += mul(Get(s0,dx,0), float4x4(-0.004720440600067,-0.010101373307407,-0.211534410715103,-0.031909119337797,-0.008676673285663,-0.004339196719229,-0.067870296537876,-0.002404435072094,-0.005612748675048,0.031149910762906,-0.063346095383167,0.000188988837181,-0.009221008047462,0.036728601902723,-0.016779324039817,0.008238159120083));
res += mul(Get(s0,dx,dy), float4x4(0.003858595620841,-0.025854671373963,-0.102295801043510,-0.002909582108259,-0.005780515260994,-0.006025251001120,-0.083971239626408,-0.018990926444530,0.011334102600813,0.089038088917732,-0.089183703064919,-0.011440044268966,0.008925293572247,0.003401719499379,-0.030974224209785,-0.013409221544862));
res += mul(Get(s1,-dx,-dy), float4x4(-0.005606983322650,0.000403680081945,-0.002962531987578,0.002917316742241,0.005783466156572,0.049659542739391,0.111387431621552,-0.009734597057104,-0.014524023979902,0.000315596902510,-0.011641319841146,0.016809197142720,0.004918089136481,0.009219948202372,-0.000109331827844,0.011222702451050));
res += mul(Get(s1,-dx,0), float4x4(0.015738949179649,0.004978564567864,0.006396842654794,0.002371682086959,-0.006129881367087,0.103106454014778,0.192424684762955,0.031726606190205,-0.004640947096050,-0.025591732934117,-0.011289567686617,-0.009231085889041,-0.004828302189708,0.001592741697095,0.009935855865479,-0.001166822738014));
res += mul(Get(s1,-dx,dy), float4x4(-0.013360104523599,-0.002838379936293,0.004563276655972,-0.025491097941995,-0.001730198506266,-0.046992469578981,0.189411401748657,-0.002986547071487,-0.001985879614949,0.011711355298758,-0.001959451939911,-0.006191605702043,-0.004205237608403,-0.011549496091902,-0.007664107251912,0.024403814226389));
res += mul(Get(s1,0,-dy), float4x4(0.003133779857308,-0.004221664741635,0.005104435607791,-0.006380530539900,-0.007322928868234,-0.196977809071541,0.022479027509689,-0.005431118886918,0.019693613052368,0.016824956983328,-0.008772551082075,-0.011351404711604,0.001659957109950,-0.010842078365386,-0.005475387442857,0.009458403103054));
res += mul(Get(s1,0,0), float4x4(0.007620133925229,0.005839036311954,-0.002438621595502,-0.004412071779370,-0.009241065010428,0.109739832580090,-0.002926193410531,-0.006232491694391,0.001409221556969,-0.019860995933414,-0.002292094752192,-0.004046742338687,0.001453464035876,0.007758125662804,0.001925396616571,0.004515272565186));
res += mul(Get(s1,0,dy), float4x4(-0.005707221571356,0.001694925129414,0.002366326749325,-0.005821205209941,-0.001432271208614,0.034414064139128,0.029289184138179,-0.009280611760914,0.003615567693487,-0.006336631719023,0.007727329619229,-0.001671206206083,-0.010876719839871,-0.003476964076981,0.001590020139702,0.008532896637917));
res += mul(Get(s1,dx,-dy), float4x4(0.008204281330109,0.002702588913962,0.009790473617613,0.004081369377673,-0.014109771698713,0.087151072919369,-0.118049666285515,-0.000644769112114,0.008934075012803,-0.002681895624846,-0.028247192502022,-0.005221929866821,0.006367242895067,0.001025114557706,-0.006900152657181,0.005085782613605));
res += mul(Get(s1,dx,0), float4x4(-0.002087950473651,0.008576760068536,0.007093000225723,0.006792619824409,0.004963098559529,0.034230999648571,-0.227276578545570,-0.021478725597262,0.001055554021150,-0.004468874074519,0.000777249224484,-0.001739933970384,-0.011598734185100,-0.010200198739767,-0.013253056444228,-0.007718779612333));
res += mul(Get(s1,dx,dy), float4x4(-0.006575299426913,0.003708859439939,0.003336232854053,-0.007437232881784,-0.003973154816777,-0.036130219697952,-0.070403106510639,-0.008138785138726,-0.001605952507816,0.026512937620282,0.005076685920358,0.003887024940923,0.003010585671291,-0.003728004638106,-0.000132413115352,-0.003643735777587));
res += mul(Get(s2,-dx,-dy), float4x4(-0.010760916396976,-0.001944057061337,0.011479739099741,0.008852100931108,0.014917906373739,0.017204746603966,0.006247228477150,-0.000560266606044,-0.013220725581050,0.025593072175980,0.087332308292389,-0.000625037646387,0.002852711360902,-0.002628864021972,0.011966129764915,-0.013512438163161));
res += mul(Get(s2,-dx,0), float4x4(-0.005061097443104,0.001225905143656,0.006737746763974,0.011763637885451,0.000587728631217,0.020709956064820,0.008541733026505,-0.010417971760035,-0.000681112927850,-0.073363184928894,0.169053971767426,0.017125204205513,-0.002404452068731,-0.016503626480699,0.006881449371576,0.006750398781151));
res += mul(Get(s2,-dx,dy), float4x4(-0.007014720700681,0.000293794553727,-0.009249920025468,-0.006559767760336,0.004507141187787,0.023313440382481,-0.004553897771984,-0.006509031169116,-0.011102084070444,0.031203340739012,0.083655111491680,0.005003598053008,-0.002859857166186,0.017370494082570,0.003476009471342,-0.004275870509446));
res += mul(Get(s2,0,-dy), float4x4(0.010560560971498,0.005408085417002,-0.000242680893280,-0.005768532399088,0.001933137536980,0.006171549670398,-0.003026889637113,0.013806933537126,-0.001138678519055,-0.019980233162642,0.093040816485882,-0.007054477930069,0.002767379395664,-0.003962483722717,0.003058178117499,-0.001365351839922));
res += mul(Get(s2,0,0), float4x4(0.001572808949277,-0.014372264966369,0.001563006662764,-0.004978653974831,-0.007124693132937,-0.011835650540888,-0.024775780737400,0.001825277227908,-0.020639386028051,-0.007567762397230,0.154973208904266,0.016947276890278,0.003048715414479,-0.002716089133173,0.001951137441210,-0.009170291945338));
res += mul(Get(s2,0,dy), float4x4(-0.005816317163408,0.016849536448717,0.010360165499151,-0.009486683644354,0.007201110012829,-0.006079393438995,0.011550886556506,0.004507217556238,-0.005001496057957,-0.083079978823662,0.057497687637806,-0.016532018780708,0.010438669472933,-0.016598328948021,0.010625794529915,0.008325523696840));
res += mul(Get(s2,dx,-dy), float4x4(0.002736354712397,0.012173804454505,0.000972449197434,0.006519060116261,0.001852815272287,-0.005031053908169,-0.005315167829394,-0.011749697849154,-0.009760386310518,-0.034210842102766,-0.170504182577133,-0.004114813171327,-0.015686223283410,0.005417206324637,-0.002183552598581,-0.005019393749535));
res += mul(Get(s2,dx,0), float4x4(0.011638440191746,-0.003441301640123,-0.003388525918126,0.005193930119276,0.013870520517230,-0.020209746435285,-0.004184891935438,-0.007440985180438,0.002687868662179,0.143181726336479,-0.173628330230713,-0.015820123255253,-0.003864834317937,0.011301902122796,0.003026529215276,0.005267682019621));
res += mul(Get(s2,dx,dy), float4x4(0.008217385038733,0.006807556841522,-0.002493100473657,0.003929301630706,0.011148514226079,-0.002617249498144,-0.000871946220286,0.013341318815947,0.009919840842485,-0.021613903343678,-0.144919633865356,-0.017700798809528,-0.001528297667392,0.011108042672276,-0.000130075903144,-0.005152086727321));
res += mul(Get(s3,-dx,-dy), float4x4(0.001336043584161,0.060992404818535,0.124944433569908,0.000288122071652,0.002941327635199,-0.001334978966042,0.013630407862365,0.001346036326140,0.005647539626807,0.003702515503392,0.041292760521173,0.012813889421523,-0.010653213597834,0.074288018047810,0.097669422626495,-0.013300290331244));
res += mul(Get(s3,-dx,0), float4x4(0.008390803821385,-0.051807824522257,0.115604005753994,0.012408589012921,0.009861103259027,-0.029600379988551,0.004961681086570,-0.003085246076807,-0.001946493750438,-0.051956918090582,0.031518135219812,-0.001437874510884,-0.008327892981470,-0.020525481551886,0.193043470382690,0.001506784115918));
res += mul(Get(s3,-dx,dy), float4x4(-0.003722292836756,0.009705755859613,0.030220748856664,0.001677561434917,0.000751702871639,-0.009105461649597,0.000114035174192,0.004108265507966,-0.001424268237315,0.019333295524120,0.003326192963868,0.000946561223827,0.002647509332746,-0.036914099007845,0.201232954859734,-0.013896440155804));
res += mul(Get(s3,0,-dy), float4x4(-0.002067288383842,0.189519524574280,-0.043250307440758,-0.008416805416346,-0.005229133181274,0.010516108013690,0.015381312929094,0.003432665951550,-0.004026718437672,-0.022250557318330,0.010857637971640,-0.017017664387822,-0.010295506566763,-0.064380645751953,-0.077700994908810,0.003027829807252));
res += mul(Get(s3,0,0), float4x4(-0.004809990990907,-0.005413463804871,-0.049496054649353,0.012057124637067,-0.006659147329628,-0.017621187493205,0.018582785502076,0.002489687874913,0.007898624055088,-0.033130779862404,-0.004015413578600,0.021413512527943,-0.024431634694338,0.152049288153648,-0.043853897601366,-0.003324650460854));
res += mul(Get(s3,0,dy), float4x4(0.005890759639442,0.038830362260342,-0.065221518278122,0.021589292213321,0.019564073532820,0.012443726882339,-0.002907428890467,-0.009221082553267,0.013591740280390,-0.023765232414007,-0.026472106575966,0.010963571257889,-0.003118023276329,0.085963904857635,-0.009874355047941,0.016388105228543));
res += mul(Get(s3,dx,-dy), float4x4(0.015291163697839,0.079035259783268,-0.078455150127411,-0.009994615800679,-0.015326660126448,0.012730880640447,-0.007865307852626,0.019770076498389,0.001854309113696,0.008569187484682,0.059275574982166,0.005961948540062,-0.004302369430661,-0.012978701852262,-0.118452109396458,-0.010983400046825));
res += mul(Get(s3,dx,0), float4x4(0.001966361654922,-0.063521645963192,-0.033989466726780,-0.008919559419155,0.011176149360836,-0.031289611011744,-0.008473263122141,-0.004194700624794,0.007962122559547,0.007362990640104,0.040974408388138,0.001718441955745,-0.018906082957983,-0.005399268120527,-0.126156195998192,-0.013999541290104));
res += mul(Get(s3,dx,dy), float4x4(0.010555055923760,-0.018090281635523,-0.040542561560869,-0.013165393844247,0.001538936165161,-0.002924618078396,-0.003247407730669,0.014555917121470,-0.003670069156215,0.004543227609247,0.022783715277910,-0.008943167515099,-0.007041659671813,0.007872350513935,-0.066297896206379,-0.015117343515158));
res = max(float4(0,0,0,0), res);
return res;
}
