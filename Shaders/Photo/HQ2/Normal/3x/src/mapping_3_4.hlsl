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
res += mul(Get(s0,-dx,-dy), float4x4(-0.018887389451265,0.003200499573722,-0.203982606530190,0.010148183442652,0.009941741824150,0.038716431707144,-0.111606657505035,-0.024404088035226,-0.007671940140426,-0.029452577233315,-0.008833163417876,-0.019769206643105,-0.018198417499661,-0.004695898853242,-0.017567964270711,0.021267272531986));
res += mul(Get(s0,-dx,0), float4x4(-0.031307041645050,0.058409463614225,-0.141575634479523,-0.001485159271397,-0.009884264320135,0.045263592153788,-0.020805930718780,-0.033333349972963,-0.006098133977503,0.015244106762111,0.019731715321541,0.009713945910335,0.005659637041390,0.008131500333548,-0.010197711177170,0.001086615608074));
res += mul(Get(s0,-dx,dy), float4x4(0.005052815191448,-0.061525762081146,-0.064191557466984,-0.058634459972382,-0.034919690340757,-0.003736454062164,0.046060144901276,-0.041118547320366,-0.017289433628321,-0.010859734378755,0.037432149052620,-0.007253034040332,0.045950330793858,0.046943496912718,0.009334081783891,-0.018221976235509));
res += mul(Get(s0,0,-dy), float4x4(-0.058634225279093,-0.003626998513937,-0.044447761029005,-0.024986211210489,-0.050796121358871,0.072574436664581,-0.164824277162552,0.090939253568649,-0.023784630000591,-0.004736188333482,-0.006584406830370,-0.028991429135203,-0.017648763954639,0.094862207770348,0.081285364925861,0.010659199208021));
res += mul(Get(s0,0,0), float4x4(-0.049684092402458,0.047499455511570,0.133950218558311,-0.035639248788357,-0.012517448514700,0.105589911341667,0.069864846765995,0.076205752789974,-0.005611769389361,-0.010515196248889,0.044156532734632,0.009088266640902,-0.013882946223021,0.031966254115105,0.061183929443359,0.007899005897343));
res += mul(Get(s0,0,dy), float4x4(0.008983142673969,0.057305552065372,0.077309638261795,-0.080269001424313,0.064879454672337,0.057919096201658,0.110260233283043,0.012919388711452,-0.019581964239478,0.021255630999804,0.044308792799711,-0.030092297121882,0.037969615310431,-0.001488047302701,0.016659846529365,-0.001298509654589));
res += mul(Get(s0,dx,-dy), float4x4(0.000980927608907,-0.044716831296682,0.064687483012676,0.044197145849466,-0.039809275418520,-0.122996374964714,0.008148822933435,0.156794130802155,-0.020841762423515,0.005896373651922,-0.000154843975906,-0.008959951810539,0.031135078519583,0.025589415803552,0.003670198377222,0.037616468966007));
res += mul(Get(s0,dx,0), float4x4(-0.045307908207178,-0.116111606359482,0.119029201567173,-0.029789304360747,-0.038374919444323,-0.110674001276493,0.119242101907730,0.123670414090157,-0.001180797931738,-0.028405616059899,0.024423340335488,-0.012272426858544,0.034741368144751,0.085544496774673,-0.017715133726597,0.023417277261615));
res += mul(Get(s0,dx,dy), float4x4(0.054217301309109,0.039398714900017,-0.003055402543396,-0.083681747317314,0.007393188308924,-0.081465199589729,-0.012479925528169,0.043308194726706,-0.002420774195343,0.071418046951294,0.006360807456076,-0.044666334986687,0.026298219338059,0.064378112554550,-0.011733300983906,0.027337295934558));
res += mul(Get(s1,-dx,-dy), float4x4(0.080051094293594,0.049306187778711,-0.081717856228352,-0.064928904175758,-0.007702716626227,-0.049454551190138,-0.004034108016640,0.020531637594104,0.033994097262621,-0.014841182157397,-0.015480503439903,0.029756622388959,-0.086901456117630,-0.030162498354912,-0.048619292676449,-0.004209831822664));
res += mul(Get(s1,-dx,0), float4x4(0.021577600389719,0.017348693683743,-0.083342224359512,-0.045424845069647,0.005456844344735,-0.062698930501938,-0.004775399807841,0.063823297619820,0.136680364608765,-0.018710056319833,-0.008098196238279,0.029983166605234,0.037838231772184,0.076855368912220,-0.062446754425764,-0.019657364115119));
res += mul(Get(s1,-dx,dy), float4x4(-0.041546162217855,-0.020502243191004,-0.085631184279919,-0.082830332219601,-0.031952109187841,-0.039607007056475,-0.013547284528613,-0.036838691681623,0.074586801230907,-0.016940174624324,-0.042143959552050,-0.026150677353144,-0.056675877422094,0.022601654753089,-0.006238705944270,-0.054746851325035));
res += mul(Get(s1,0,-dy), float4x4(-0.036201398819685,0.015849718824029,-0.095079697668552,-0.044387243688107,-0.066488541662693,0.007618947885931,0.014140481129289,0.019380874931812,0.156922146677971,-0.018911976367235,-0.010138569399714,0.047457356005907,-0.107211969792843,-0.024555178359151,-0.053855799138546,-0.148956090211868));
res += mul(Get(s1,0,0), float4x4(0.169138029217720,0.091920278966427,-0.019467638805509,-0.044865179806948,-0.052769619971514,-0.024004166945815,0.008792880922556,0.033568266779184,0.227580502629280,-0.054896064102650,0.012516866438091,0.065772652626038,0.131578475236893,0.063023515045643,-0.034696307033300,-0.078161373734474));
res += mul(Get(s1,0,dy), float4x4(0.065626546740532,0.099796645343304,-0.017849331721663,-0.119561970233917,-0.057372726500034,-0.033492192625999,0.017379602417350,-0.015373279340565,0.063150763511658,-0.099358893930912,-0.016667636111379,-0.026469616219401,0.009496749378741,-0.015319387428463,0.001849899301305,-0.129316076636314));
res += mul(Get(s1,dx,-dy), float4x4(-0.116667605936527,-0.077341251075268,-0.068197481334209,0.043734878301620,-0.020175015553832,0.019546773284674,0.006656150333583,0.000138739123940,0.082497008144855,0.015808898955584,0.019015280529857,0.063438981771469,-0.013415129855275,0.027428371831775,0.021505085751414,-0.016284646466374));
res += mul(Get(s1,dx,0), float4x4(0.027403449639678,-0.073933169245720,-0.002040577586740,-0.015200318768620,-0.024905281141400,-0.018866671249270,-0.011802983470261,-0.013437825255096,0.098457932472229,0.020603092387319,0.010689068585634,0.042232256382704,0.056156650185585,-0.009785834699869,0.082746453583241,0.024980487301946));
res += mul(Get(s1,dx,dy), float4x4(-0.015952009707689,-0.038411077111959,-0.043185379356146,-0.078498937189579,-0.037206958979368,-0.022375205531716,-0.001128264819272,-0.019874576479197,0.001854506670497,0.004724619444460,-0.056691851466894,0.009431863203645,-0.035329937934875,-0.075676515698433,0.074474640190601,-0.040902439504862));
res += mul(Get(s2,-dx,-dy), float4x4(-0.131205782294273,0.069634780287743,-0.001104777562432,0.064036287367344,0.053646594285965,-0.055553968995810,-0.003073078580201,0.010015631094575,-0.048541616648436,-0.046056997030973,-0.031054884195328,-0.048479627817869,-0.003873834386468,-0.005866094492376,-0.000011296914636,-0.045062273740768));
res += mul(Get(s2,-dx,0), float4x4(-0.070728421211243,0.040716737508774,-0.034028679132462,0.029309365898371,0.002940627047792,-0.023005563765764,-0.007628167048097,-0.014717222191393,-0.054686829447746,-0.014648669399321,-0.082318924367428,-0.088759653270245,0.104909501969814,0.073908001184464,0.001492737676017,-0.018195550888777));
res += mul(Get(s2,-dx,dy), float4x4(-0.042335681617260,0.016814570873976,0.007791214622557,0.012482094578445,-0.033917538821697,0.006735501810908,0.066064573824406,0.023582302033901,0.020247392356396,-0.060527488589287,-0.033026989549398,0.022934103384614,-0.007122592534870,0.000520660134498,0.019482873380184,-0.011469700373709));
res += mul(Get(s2,0,-dy), float4x4(-0.076286882162094,0.053463190793991,-0.076487772166729,0.013309909030795,0.021279828622937,0.025149188935757,-0.017917629331350,-0.029249981045723,-0.007467739749700,-0.035702150315046,-0.169140711426735,-0.006085321307182,0.015569694340229,0.076718077063560,-0.006282430142164,-0.054541144520044));
res += mul(Get(s2,0,0), float4x4(0.027399033308029,0.144629880785942,-0.063498705625534,-0.011553603224456,-0.036291651427746,0.032796368002892,-0.000055369022448,-0.008651714771986,0.072136066854000,0.067175924777985,0.033805061131716,-0.012674340978265,0.118610367178917,0.046652000397444,0.031985443085432,0.012656372971833));
res += mul(Get(s2,0,dy), float4x4(0.010450969450176,0.032856237143278,0.009841747581959,-0.031665071845055,-0.009364572353661,0.050006270408630,0.143065854907036,0.019445812329650,-0.034926526248455,-0.016485596075654,0.123162716627121,0.028096446767449,-0.009761451743543,-0.001410313765518,0.041097097098827,-0.005341219250113));
res += mul(Get(s2,dx,-dy), float4x4(0.011882927268744,-0.030801674351096,-0.075584173202515,0.107431158423424,-0.036344673484564,0.015333763323724,0.062113244086504,0.002892156830058,-0.106171369552612,-0.029028302058578,-0.012881733477116,0.079318329691887,0.065200731158257,0.072712451219559,0.018859438598156,0.002105143154040));
res += mul(Get(s2,dx,0), float4x4(0.123414285480976,0.123943716287613,0.013387839309871,0.164320379495621,-0.030596418306231,-0.007050051819533,0.142179653048515,0.022247992455959,-0.052438065409660,-0.140727505087852,0.096473038196564,0.070259422063828,0.062652722001076,0.003426758572459,0.071931704878807,0.021012607961893));
res += mul(Get(s2,dx,dy), float4x4(0.000637266377453,0.060331184417009,0.097738288342953,0.053790483623743,0.017060281708837,0.016346333548427,0.127511665225029,0.006548158358783,-0.019892105832696,-0.047690372914076,-0.005144830793142,-0.012188985943794,-0.008346461690962,-0.003526962129399,0.040312603116035,-0.015296139754355));
res += mul(Get(s3,-dx,-dy), float4x4(0.069320715963840,-0.030755637213588,0.000730727158953,0.030998382717371,-0.011725216172636,-0.034659877419472,0.005127803888172,0.000629618880339,0.036208577454090,-0.021936940029263,-0.010225851088762,-0.001940873451531,-0.052375301718712,0.087170213460922,-0.093527436256409,0.023592211306095));
res += mul(Get(s3,-dx,0), float4x4(0.015355255454779,-0.042435098439455,-0.002808182965964,0.001915605622344,-0.023239225149155,-0.024949150159955,-0.014390058815479,-0.026828393340111,0.057142086327076,-0.041440114378929,-0.001477925572544,0.010183196514845,-0.012997128069401,0.178209707140923,-0.040237057954073,-0.020273152738810));
res += mul(Get(s3,-dx,dy), float4x4(0.002637959783897,0.010126574896276,0.007509260904044,0.001994740916416,-0.014500004239380,-0.020179595798254,-0.009093966335058,-0.011624343693256,0.015222877264023,-0.073001474142075,0.002586910035461,-0.001535299699754,0.005201587919146,0.079774841666222,0.098540633916855,-0.053128272294998));
res += mul(Get(s3,0,-dy), float4x4(0.059209667146206,-0.001445680391043,-0.003740121144801,0.018186949193478,-0.007730671204627,0.011695279739797,0.026773123070598,-0.026950594037771,0.036484368145466,0.014655383303761,0.011560047976673,0.027758751064539,0.132835641503334,-0.010034467093647,-0.082434907555580,0.121880449354649));
res += mul(Get(s3,0,0), float4x4(0.014559121802449,-0.017614208161831,-0.008024259470403,-0.001248589251190,-0.033838152885437,-0.038053333759308,-0.018772045150399,-0.058317851275206,0.036384712904692,-0.000106348961708,0.031317904591560,0.017008438706398,0.041114974766970,-0.005594550166279,0.004575865343213,-0.004089704714715));
res += mul(Get(s3,0,dy), float4x4(-0.014360471628606,-0.017231643199921,-0.003219095757231,-0.022235751152039,0.005543597508222,-0.025233358144760,-0.018186949193478,-0.027322694659233,-0.017742065712810,-0.016401870176196,-0.007687678094953,-0.010897314175963,0.031300526112318,0.034091740846634,0.083234496414661,-0.048233095556498));
res += mul(Get(s3,dx,-dy), float4x4(0.004250921774656,0.006005069240928,-0.002926189219579,-0.012350022792816,0.028650676831603,0.067669443786144,-0.007968826219440,-0.005519255995750,-0.001737881335430,0.009038267657161,0.036999352276325,0.039213072508574,0.077765151858330,0.022466661408544,-0.021402083337307,0.082754939794540));
res += mul(Get(s3,dx,0), float4x4(-0.010877300053835,0.026353163644671,-0.021192997694016,-0.020459804683924,-0.013894241303205,0.020601104944944,0.003413604572415,-0.026405682787299,-0.003254610579461,-0.003520219353959,0.036563873291016,0.008441080339253,-0.045235566794872,-0.032326869666576,-0.016939697787166,-0.003086102893576));
res += mul(Get(s3,dx,dy), float4x4(-0.028946015983820,0.000187222394743,-0.016629332676530,-0.028216334059834,-0.008504536934197,-0.010021960362792,0.020979560911655,-0.009954744949937,0.011524178087711,0.004803691990674,0.008362788707018,-0.003073443192989,0.047558058053255,0.025051590055227,0.014156876131892,-0.010441457852721));
return max(float4(0,0,0,0), res);
}