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
float4 res = float4(-0.004735375754535,-0.015744721516967,-0.205317020416260,0.136318936944008);
res += mul(Get(s0,-dx,-dy), float4x4(0.029199501499534,0.177610203623772,0.156371206045151,-0.092910736799240,0.263348549604416,-0.194501504302025,0.063846655189991,0.035814821720123,0.104860149323940,-0.097020961344242,0.008786489255726,0.054230842739344,0.159577175974846,0.097679875791073,0.096715427935123,0.164160758256912));
res += mul(Get(s0,-dx,0), float4x4(-0.096247650682926,-0.058967739343643,-0.056408423930407,0.093649141490459,0.412455737590790,-0.066999785602093,0.083597630262375,0.284476757049561,0.217561349272728,-0.330348491668701,0.220522239804268,0.153598055243492,0.001618721988052,0.078503377735615,0.378251224756241,0.182421520352364));
res += mul(Get(s0,-dx,dy), float4x4(0.038098376244307,0.082740724086761,0.060721967369318,0.048969194293022,0.287714511156082,0.390694767236710,-0.068425342440605,0.105115599930286,-0.141660094261169,0.111413903534412,-0.057266920804977,0.033225085586309,0.140194669365883,0.102363899350166,-0.168113768100739,0.038202002644539));
res += mul(Get(s0,0,-dy), float4x4(-0.250450998544693,0.075546264648438,0.056125801056623,-0.670194923877716,0.052681941539049,-0.043512083590031,-0.098498530685902,-0.135226517915726,-0.131522804498672,-0.071555592119694,-0.115755163133144,0.032437581568956,0.066827207803726,-0.298802435398102,-0.234038740396500,0.236306115984917));
res += mul(Get(s0,0,0), float4x4(-0.275809705257416,-0.293962836265564,-0.631066679954529,0.107510410249233,0.032643605023623,-0.265301704406738,0.165065184235573,-0.014901874586940,-0.072025395929813,-0.001458227285184,-0.665144264698029,-0.090014971792698,0.521297156810760,-0.414812535047531,0.394527614116669,0.446605801582336));
res += mul(Get(s0,0,dy), float4x4(-0.030303684994578,0.095177948474884,-0.213565364480019,0.111523427069187,-0.010946282185614,0.128412559628487,-0.194229826331139,-0.080153718590736,0.030155923217535,0.199214339256287,-0.082139581441879,0.099699012935162,0.243224903941154,0.315729737281799,-0.101776234805584,0.212879210710526));
res += mul(Get(s0,dx,-dy), float4x4(0.074009120464325,0.071820944547653,0.070211566984653,0.058078534901142,-0.080222308635712,0.184429705142975,-0.145798742771149,0.084823198616505,-0.054703108966351,-0.018536750227213,-0.104764558374882,0.080159246921539,-0.107462689280510,0.027371715754271,-0.119157463312149,-0.089209064841270));
res += mul(Get(s0,dx,0), float4x4(0.043590325862169,0.163130432367325,0.308988749980927,-0.026851840317249,0.056806929409504,0.137898445129395,-0.076714187860489,0.224829047918320,0.090357482433319,0.200148507952690,0.143888205289841,0.135972812771797,0.016759919002652,0.027576651424170,-0.141614556312561,0.076850526034832));
res += mul(Get(s0,dx,dy), float4x4(0.053156986832619,0.104708142578602,0.210960462689400,0.039499700069427,0.125350460410118,0.175603210926056,-0.209638789296150,0.049698591232300,0.066744118928909,0.067675814032555,-0.054328843951225,0.077672407031059,-0.052000198513269,0.307427376508713,-0.041564345359802,-0.217115551233292));
res += mul(Get(s1,-dx,-dy), float4x4(-0.045756962150335,-0.015363320708275,0.067572213709354,-0.104183234274387,-0.012944085523486,-0.055301036685705,0.027148544788361,-0.099189214408398,-0.168944746255875,-0.273758262395859,-0.606544256210327,0.031987920403481,-0.120944507420063,-0.056589443236589,-0.001885382225737,-0.185700148344040));
res += mul(Get(s1,-dx,0), float4x4(-0.880230128765106,0.201868504285812,-0.141575604677200,0.064002901315689,0.178488269448280,0.056690964847803,-0.063542805612087,-0.012518412433565,-0.036287736147642,0.114518433809280,-0.049876403063536,0.078622765839100,0.032222136855125,-0.278753370046616,-0.169066235423088,-0.291473686695099));
res += mul(Get(s1,-dx,dy), float4x4(-0.442822843790054,0.158536836504936,-0.053447049111128,-0.177659779787064,0.030099948868155,-0.043008103966713,0.052713368088007,-0.015995780006051,0.018661733716726,-0.054370574653149,-0.035833790898323,0.125292688608170,-0.043305747210979,-0.145073398947716,0.049904689192772,0.026711111888289));
res += mul(Get(s1,0,-dy), float4x4(0.138189733028412,-0.048426713794470,-0.118792496621609,-0.188536867499352,-0.291627794504166,-0.035855472087860,0.071805134415627,0.111291766166687,-1.057606697082520,0.052376281470060,-0.650776624679565,-0.068849489092827,0.129595518112183,-0.279142498970032,-0.080906704068184,-0.064735904335976));
res += mul(Get(s1,0,0), float4x4(-0.037108778953552,-0.095836073160172,-0.113881304860115,0.065053045749664,0.175185695290565,-0.315105438232422,0.405617535114288,0.154695495963097,-0.053748704493046,0.109953232109547,-0.146942049264908,-0.146095946431160,-0.187990561127663,0.353684335947037,-0.120219975709915,0.230395168066025));
res += mul(Get(s1,0,dy), float4x4(0.049514535814524,-0.112112507224083,-0.143717125058174,-0.028685610741377,0.102739214897156,0.072236955165863,0.231979310512543,0.116406202316284,-0.196901053190231,-0.005410900805146,-0.169721305370331,0.029971672222018,-0.006453282665461,-0.229360252618790,-0.048778254538774,-0.028912987560034));
res += mul(Get(s1,dx,-dy), float4x4(0.102440327405930,0.084311820566654,-0.085069909691811,0.085690684616566,-0.060552682727575,-0.013962605968118,0.133303955197334,0.023559467867017,-0.163136422634125,-0.220385164022446,-0.287179142236710,-0.193057164549828,-0.118935994803905,0.092018157243729,-0.058767180889845,-0.015550645999610));
res += mul(Get(s1,dx,0), float4x4(0.116439670324326,0.042310141026974,0.141917169094086,0.006162163335830,0.095008619129658,0.149847581982613,0.104480624198914,0.028695160523057,-0.216463327407837,-0.082597516477108,-0.141827598214149,-0.071093358099461,-0.046010956168175,0.312012374401093,-0.182726189494133,0.011138734407723));
res += mul(Get(s1,dx,dy), float4x4(0.010542985051870,0.064614169299603,0.125546485185623,0.037570860236883,0.016400363296270,-0.072284430265427,0.172568231821060,-0.084337845444679,-0.035032562911510,-0.119804523885250,-0.215867713093758,0.062353800982237,-0.087426066398621,-0.100511707365513,0.029454600065947,-0.096926510334015));
res += mul(Get(s2,-dx,-dy), float4x4(-0.001866610720754,-0.047134429216385,0.160281345248222,0.006083097774535,-0.020071908831596,0.014701633714139,-0.108850196003914,0.053113054484129,0.008105437271297,0.097624205052853,0.014539599418640,-0.094541572034359,0.046725772321224,0.148509740829468,-0.097232051193714,-0.006399502977729));
res += mul(Get(s2,-dx,0), float4x4(0.134688332676888,-0.128316730260849,0.416054874658585,0.234249114990234,0.007869802415371,-0.050513610243797,-0.281275540590286,0.111935049295425,0.023033170029521,0.083988852798939,0.122903749346733,-0.091275058686733,-0.071033798158169,0.021720314398408,0.028168123215437,0.004282530862838));
res += mul(Get(s2,-dx,dy), float4x4(0.080301985144615,-0.025676829740405,0.036983396857977,0.029091557487845,-0.070186711847782,0.158160582184792,0.015089572407305,0.146386012434959,-0.028153425082564,0.062595598399639,0.053406957536936,-0.110420137643814,-0.059138186275959,-0.000494101608638,-0.303339153528214,-0.181511595845222));
res += mul(Get(s2,0,-dy), float4x4(0.082469850778580,-0.292819768190384,-0.106782458722591,0.194331526756287,-0.040736488997936,0.231424883008003,-0.038229461759329,0.199756205081940,0.078949086368084,0.024788821116090,0.028760446235538,-0.076945543289185,-0.103535316884518,-0.040153153240681,-0.124473154544830,-0.270196646451950));
res += mul(Get(s2,0,0), float4x4(0.499669194221497,-0.150332883000374,0.305044114589691,0.113942928612232,0.094420075416565,-0.282567471265793,0.301064759492874,-0.039043907076120,-0.036147739738226,-0.005528047680855,-0.127664595842361,-0.423306167125702,-0.087738141417503,-0.078881643712521,-0.000446077610832,0.069347076117992));
res += mul(Get(s2,0,dy), float4x4(-0.128166019916534,0.336430430412292,-0.209351599216461,0.045976933091879,-0.071894161403179,0.123144499957561,-0.091763898730278,0.173160731792450,0.005442577879876,-0.257572233676910,0.056646924465895,-0.070463709533215,-1.981601715087891,-0.077931441366673,-0.476137667894363,-0.141820207238197));
res += mul(Get(s2,dx,-dy), float4x4(-0.071023665368557,0.111564897000790,-0.032227851450443,0.020783348008990,-0.171742454171181,-0.203670203685760,-0.036805912852287,0.025436783209443,-0.122804157435894,0.075005844235420,0.037700347602367,-0.084080927073956,0.056604433804750,0.148289665579796,0.017564792186022,0.065327458083630));
res += mul(Get(s2,dx,0), float4x4(-0.064389020204544,-0.125983878970146,-0.174548000097275,0.031192004680634,-0.034937959164381,0.051068309694529,-0.100634768605232,0.117649331688881,-0.031049294397235,-0.044116716831923,-0.146596834063530,0.038040950894356,-0.056167624890804,0.220194384455681,0.172944292426109,0.077436886727810));
res += mul(Get(s2,dx,dy), float4x4(0.024961138144135,0.016871403902769,-0.139461055397987,-0.033683020621538,0.021218175068498,0.212809845805168,-0.053389903157949,0.107618138194084,-0.021886238828301,-0.001100106397644,-0.082005470991135,-0.013186596333981,-0.085772939026356,-0.077496938407421,0.072055846452713,-0.151001542806625));
res += mul(Get(s3,-dx,-dy), float4x4(0.343143463134766,-0.087394453585148,0.508678257465363,0.115171961486340,-0.142284765839577,0.116189800202847,-0.030487421900034,0.162421584129333,0.002290802309290,-0.342868030071259,-0.044137950986624,-0.128815397620201,0.165099442005157,-0.288828372955322,0.197358146309853,-0.000411498273024));
res += mul(Get(s3,-dx,0), float4x4(0.385346323251724,-0.188475489616394,0.387515753507614,0.233725547790527,-0.157412946224213,-0.247693568468094,-0.019911488518119,-0.334141790866852,-0.064886830747128,0.024049628525972,0.024156123399734,-0.114341236650944,0.113541156053543,0.020217681303620,0.018380315974355,0.087147414684296));
res += mul(Get(s3,-dx,dy), float4x4(0.279608249664307,0.101738341152668,0.408055990934372,0.040114458650351,-0.067330166697502,-0.324726194143295,-0.139422714710236,-0.173357367515564,0.222098797559738,-0.017405072227120,0.102966256439686,0.046821545809507,0.054621625691652,0.051225706934929,0.027122804895043,0.128829121589661));
res += mul(Get(s3,0,-dy), float4x4(0.340107440948486,-0.332063019275665,0.503769993782043,0.210192412137985,-0.152944058179855,-0.123562358319759,0.166593655943871,-0.401435166597366,0.175182893872261,0.273099660873413,0.225671768188477,-0.000595085904934,0.239420250058174,-0.174047768115997,0.349325984716415,-0.285240441560745));
res += mul(Get(s3,0,0), float4x4(0.371560215950012,-0.710474848747253,0.307280808687210,0.311984866857529,-0.364005416631699,0.331144720315933,0.397549480199814,-0.288453370332718,0.112162835896015,-0.392457991838455,0.355321943759918,0.116009913384914,0.142481580376625,-0.110079526901245,-0.127556160092354,-0.210652068257332));
res += mul(Get(s3,0,dy), float4x4(0.518188059329987,0.470613002777100,0.431257426738739,0.137741237878799,-0.105944097042084,0.004227844998240,0.286908775568008,0.187032118439674,0.395143389701843,-0.043608799576759,0.073746286332607,0.211115986108780,-0.095296710729599,-0.029847219586372,0.097098305821419,-0.094685055315495));
res += mul(Get(s3,dx,-dy), float4x4(0.080122686922550,-0.270671337842941,0.185182988643646,-0.151693031191826,0.057805128395557,-0.032136641442776,0.037961564958096,-0.263592392206192,-0.085226714611053,0.201437398791313,-0.012912913225591,0.113696724176407,0.014414325356483,0.114422731101513,0.168082624673843,0.093903012573719));
res += mul(Get(s3,dx,0), float4x4(0.038990277796984,0.025024496018887,0.077365435659885,-0.084097228944302,0.039748944342136,-0.112923040986061,-0.026299297809601,-0.020774831995368,0.176126763224602,0.068801507353783,0.253920793533325,0.037364732474089,0.113939911127090,0.044578317552805,0.431848227977753,-0.024571446701884));
res += mul(Get(s3,dx,dy), float4x4(0.281709194183350,0.155249610543251,0.217546403408051,-0.075246483087540,0.043225768953562,0.108350902795792,-0.038438092917204,-0.042902860790491,0.283315569162369,0.376170337200165,0.188601970672607,-0.032665636390448,-0.022264260798693,-0.123006239533424,0.022748949006200,0.075115352869034));
res += mul(Get(s4,-dx,-dy), float4x4(-0.163259536027908,-0.039819676429033,-0.134120523929596,-0.029496142640710,-0.188247397542000,0.182820111513138,-0.157389000058174,0.045466735959053,-0.239536046981812,-0.039989884942770,-0.039328083395958,-0.272269159555435,-0.043701272457838,0.047734092921019,-0.155732750892639,0.121967434883118));
res += mul(Get(s4,-dx,0), float4x4(-0.025951152667403,0.003289079060778,-0.211078345775604,-0.190980985760689,0.004067552741617,0.143455594778061,-0.151351779699326,0.106902010738850,-0.169635117053986,-0.420080512762070,-0.236535519361496,-0.295571327209473,0.195293366909027,-0.039075508713722,0.118085704743862,-0.020082063972950));
res += mul(Get(s4,-dx,dy), float4x4(0.006703836377710,-0.046443965286016,0.096320174634457,-0.019149137660861,-0.109963372349739,0.213499501347542,-0.225665271282196,-0.023782154545188,-0.182138681411743,0.096145339310169,-0.030053829774261,-0.053723167628050,-0.071196742355824,0.019224410876632,0.185688644647598,0.096702963113785));
res += mul(Get(s4,0,-dy), float4x4(0.015018787235022,0.194546863436699,0.192339420318604,0.094299837946892,-0.122856512665749,-0.187159240245819,-0.335802286863327,-0.077556341886520,0.028229303658009,0.098716713488102,0.100224599242210,-0.250610351562500,-0.166694596409798,-0.075433775782585,-0.208314210176468,-0.000251997786108));
res += mul(Get(s4,0,0), float4x4(-0.279747337102890,0.226834550499916,0.019264960661530,-0.243351474404335,-0.085767917335033,-0.032907828688622,-0.268092602491379,0.115033879876137,-0.141880184412003,0.239671006798744,-0.027171874418855,-0.138785421848297,-0.217417344450951,0.015934010967612,0.119821794331074,-0.158103808760643));
res += mul(Get(s4,0,dy), float4x4(-0.201741829514503,-0.161920264363289,-0.121391199529171,-0.024602711200714,-0.115442730486393,-0.034091513603926,-0.349571377038956,0.064233742654324,-0.476045250892639,0.324436575174332,0.038858190178871,0.066265299916267,0.123153962194920,-0.102365188300610,-0.002063184510916,0.001490471884608));
res += mul(Get(s4,dx,-dy), float4x4(-0.048742856830359,-0.127820774912834,-0.021316774189472,-0.086694240570068,0.139114856719971,-0.283773779869080,-0.063087992370129,0.177310645580292,0.013593528419733,-0.091980762779713,-0.119175881147385,-0.162476658821106,-0.025780634954572,-0.076032005250454,-0.081468053162098,0.141856670379639));
res += mul(Get(s4,dx,0), float4x4(0.033122982829809,0.119150131940842,0.014408969320357,-0.021160051226616,0.197369962930679,0.173131689429283,-0.137871623039246,0.336931526660919,0.028367958962917,-0.363600879907608,-0.188153743743896,-0.076198153197765,-0.174934804439545,-0.001700705266558,0.020014980807900,0.031171515583992));
res += mul(Get(s4,dx,dy), float4x4(-0.030282726511359,-0.114012196660042,0.085185468196869,-0.062704168260098,0.154643207788467,0.112623535096645,-0.100399456918240,-0.010168706998229,-0.070222474634647,0.028714295476675,-0.057606022804976,-0.042351923882961,-0.078996755182743,0.042727962136269,0.036029733717442,0.057021588087082));
res += mul(Get(s5,-dx,-dy), float4x4(0.256560623645782,-0.120585091412067,0.086488969624043,0.432243198156357,-0.006012814585119,0.034107767045498,0.125470548868179,0.137245014309883,-0.017570003867149,0.037524804472923,-0.075775548815727,-0.081290647387505,-0.051569443196058,0.154049262404442,-0.120033107697964,0.023487878963351));
res += mul(Get(s5,-dx,0), float4x4(-0.238714128732681,0.032701626420021,0.029445581138134,0.125486537814140,-0.055864494293928,0.096879959106445,0.233063861727715,-0.005589831154794,-0.049186244606972,0.163398325443268,-0.057304482907057,0.016449408605695,-0.043655078858137,0.305362731218338,-0.103745855391026,0.164830371737480));
res += mul(Get(s5,-dx,dy), float4x4(-0.035498637706041,0.008769309148192,-0.012404279783368,-0.035638328641653,0.263633817434311,-0.065645396709442,-0.184604227542877,-0.137915492057800,0.042013842612505,-0.028876809403300,-0.036179281771183,-0.133709922432899,-0.230149075388908,0.217857137322426,-0.145023614168167,-0.077560156583786));
res += mul(Get(s5,0,-dy), float4x4(-0.225432932376862,-0.250424355268478,-0.298459827899933,0.112779498100281,0.046879060566425,-0.535106420516968,-0.185726508498192,-0.188653022050858,-0.075174547731876,-0.074192754924297,-0.012570234015584,-0.205353617668152,0.075063630938530,0.228554695844650,-0.195957720279694,-0.110343486070633));
res += mul(Get(s5,0,0), float4x4(0.087290875613689,-0.172130659222603,0.072851538658142,0.141219601035118,0.040638856589794,-0.017907012254000,-0.451283633708954,-0.083931788802147,0.103860430419445,-0.090446189045906,-0.255367606878281,-0.006969178095460,-0.226092115044594,0.148310825228691,-0.424780517816544,-0.181149393320084));
res += mul(Get(s5,0,dy), float4x4(-0.038356024771929,-0.028394088149071,0.088725894689560,-0.063927181065083,0.072125062346458,0.368902295827866,0.156979560852051,-0.156191736459732,-0.237329870462418,0.155243530869484,-0.173287689685822,0.075325176119804,-0.194572210311890,-0.158609732985497,-0.141512200236320,-0.241589218378067));
res += mul(Get(s5,dx,-dy), float4x4(0.055613476783037,-0.177638605237007,0.064354211091995,0.083679348230362,0.022196395322680,0.353372454643250,0.198092281818390,0.041672199964523,-0.082665391266346,0.046074416488409,-0.137647911906242,0.155833557248116,0.096053153276443,0.058322947472334,-0.103929243981838,0.095224946737289));
res += mul(Get(s5,dx,0), float4x4(-0.118234641849995,-0.048430129885674,-0.040087670087814,0.024269334971905,0.026162708178163,-0.164067789912224,0.098595902323723,-0.192083701491356,0.115521073341370,-0.055655375123024,0.129174962639809,-0.072231881320477,0.280501455068588,0.196595340967178,0.012900105677545,0.196656480431557));
res += mul(Get(s5,dx,dy), float4x4(-0.025473231449723,-0.014533924870193,-0.134790748357773,0.105312362313271,-0.128325551748276,0.136722579598427,-0.284530580043793,-0.010662984102964,-0.048739857971668,0.038927245885134,0.058890745043755,-0.007418086752295,0.082435898482800,0.161743462085724,-0.068014957010746,0.046796631067991));
res = max(float4(0, 0, 0, 0), res) + float4(-0.038268342614174,-0.223704233765602,-0.054603863507509,0.230943128466606) * min(float4(0, 0, 0, 0), res);
return res;
}
