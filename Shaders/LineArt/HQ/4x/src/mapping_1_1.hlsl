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
float4 res = float4(-0.782296121120453,-0.114383213222027,-0.545792758464813,-1.058560252189636);
res += mul(Get(s0,-dx,-dy), float4x4(0.108449220657349,-0.122063107788563,-0.074527427554131,0.060505617409945,-0.046729091554880,0.053083367645741,-0.094951368868351,0.037208765745163,0.003888003993779,-0.016627753153443,0.033411335200071,0.007378447800875,-0.009497933089733,-0.066122092306614,-0.066429972648621,-0.093568652868271));
res += mul(Get(s0,-dx,0), float4x4(-0.098817713558674,0.071680516004562,-0.043019887059927,0.104618199169636,0.100076027214527,-0.059104666113853,0.041956078261137,-0.075856842100620,0.166089564561844,-0.004596857354045,-0.095197789371014,0.074985876679420,-0.004296550992876,0.074677981436253,0.006488220300525,-0.041968062520027));
res += mul(Get(s0,-dx,dy), float4x4(-0.032801058143377,-0.006395148113370,0.026146266609430,-0.043276198208332,0.001859937794507,0.115045860409737,0.071581207215786,0.023496575653553,0.236502513289452,-0.129911705851555,0.042601380497217,-0.092928014695644,0.080625034868717,-0.111386880278587,-0.009899060241878,-0.088890425860882));
res += mul(Get(s0,0,-dy), float4x4(0.088563643395901,-0.030936205759645,0.103570155799389,-0.128127083182335,0.071398541331291,0.011773475445807,-0.034998659044504,0.095820330083370,-0.037546094506979,0.076744496822357,-0.188084319233894,-0.034883476793766,-0.026160331442952,-0.027116106823087,0.031074207276106,-0.063349939882755));
res += mul(Get(s0,0,0), float4x4(-0.018765546381474,0.026267457753420,-0.054243270307779,-0.007373803295195,-0.182992517948151,0.016352707520127,-0.044031832367182,0.075365714728832,-0.101472198963165,0.024049097672105,-0.029590342193842,0.030473720282316,-0.001357596949674,0.060213804244995,-0.076136089861393,0.041499543935061));
res += mul(Get(s0,0,dy), float4x4(-0.039586953818798,0.073378495872021,-0.007095224224031,0.002391119720414,-0.121698841452599,0.170717820525169,-0.148562997579575,-0.101387120783329,-0.138489022850990,-0.085680946707726,-0.006150137167424,-0.127435952425003,0.050899978727102,0.145487532019615,0.062557466328144,-0.072371877729893));
res += mul(Get(s0,dx,-dy), float4x4(-0.013161357492208,0.024633504450321,-0.007066376972944,0.014812325127423,-0.061430823057890,-0.060519345104694,0.033223636448383,-0.120435312390327,-0.056598473340273,-0.019019685685635,0.151220783591270,0.133198559284210,-0.072701714932919,0.190630346536636,-0.034976936876774,0.052198242396116));
res += mul(Get(s0,dx,0), float4x4(-0.001186721259728,-0.075252339243889,0.028178529813886,-0.029969505965710,-0.005173071753234,-0.132061004638672,-0.131088837981224,-0.004564095288515,-0.049113720655441,-0.035078592598438,0.005648958962411,-0.041300754994154,0.010486505925655,-0.084052003920078,0.060467157512903,0.064253710210323));
res += mul(Get(s0,dx,dy), float4x4(-0.011733747087419,-0.051908168941736,0.027288373559713,0.010635088197887,-0.096456140279770,0.110530145466328,0.024800030514598,-0.109917327761650,-0.026346424594522,0.215855583548546,0.102606035768986,0.021072549745440,-0.038633894175291,-0.015388502739370,-0.006205631885678,-0.070950187742710));
res += mul(Get(s1,-dx,-dy), float4x4(0.030217798426747,0.016221305355430,-0.150331705808640,0.002144102007151,-0.065990760922432,-0.036501560360193,0.011100765317678,-0.003280110890046,-0.054878570139408,0.053344216197729,-0.041426330804825,0.032440211623907,-0.056165572255850,-0.091138869524002,-0.010730483569205,-0.006661753635854));
res += mul(Get(s1,-dx,0), float4x4(0.334073632955551,-0.093664966523647,0.141523674130440,0.101162128150463,-0.093535237014294,0.009760004468262,-0.060243371874094,-0.015373492613435,-0.032577797770500,-0.046127244830132,-0.108108066022396,0.092755980789661,-0.043560933321714,-0.023303726688027,-0.013969896361232,-0.160390540957451));
res += mul(Get(s1,-dx,dy), float4x4(-0.130462303757668,0.051729269325733,0.062423609197140,-0.014463547617197,-0.015908323228359,-0.037086725234985,-0.121110849082470,-0.007522764615715,-0.184762910008430,0.142247140407562,0.015607917681336,0.145012617111206,-0.055028378963470,0.113841019570827,0.143872573971748,0.005668061785400));
res += mul(Get(s1,0,-dy), float4x4(-0.026725664734840,0.158177927136421,0.078575506806374,0.213529005646706,0.035359054803848,-0.057163357734680,0.031354475766420,0.066990964114666,0.007721211761236,0.038229987025261,0.328383833169937,0.072147972881794,0.094473727047443,-0.015329830348492,-0.109095104038715,0.042499020695686));
res += mul(Get(s1,0,0), float4x4(-0.077821053564548,0.005525781773031,0.141485378146172,-0.347764998674393,0.064858064055443,0.013388654217124,-0.063843756914139,-0.028074132278562,0.110575199127197,-0.021726226434112,0.107098206877708,-0.389266163110733,-0.087737962603569,0.030113656073809,0.111482128500938,0.022458875551820));
res += mul(Get(s1,0,dy), float4x4(0.018438450992107,-0.130549103021622,-0.018208160996437,-0.006508167833090,-0.023623229935765,0.043651159852743,0.028365889564157,0.079479426145554,0.284820497035980,0.127956345677376,-0.012904442846775,-0.047991283237934,0.150319501757622,-0.069109141826630,0.004798610694706,0.011417467147112));
res += mul(Get(s1,dx,-dy), float4x4(-0.051486242562532,-0.033102083951235,-0.171398311853409,0.120760291814804,0.105198182165623,-0.077722288668156,0.098715439438820,-0.113494828343391,-0.025301080197096,0.042050361633301,-0.137205287814140,0.000135928421514,-0.047917742282152,-0.110015869140625,-0.061620049178600,-0.117445610463619));
res += mul(Get(s1,dx,0), float4x4(-0.011836448684335,0.223954111337662,0.003841593163088,0.065323151648045,-0.004158099181950,-0.042178802192211,0.105407789349556,0.036626029759645,0.026949578896165,-0.002580370055512,-0.074184879660606,0.185720130801201,0.038191605359316,0.115715779364109,-0.070834659039974,0.000270632503089));
res += mul(Get(s1,dx,dy), float4x4(-0.046776082366705,0.053949899971485,-0.089453682303429,-0.034192930907011,0.081287533044815,-0.043382138013840,-0.012009121477604,0.087022855877876,0.077334433794022,0.011758849956095,0.062189187854528,-0.069347068667412,-0.011196241714060,0.124113522469997,0.049944061785936,-0.017626034095883));
res += mul(Get(s2,-dx,-dy), float4x4(0.015055842697620,0.005498011596501,0.008778706192970,-0.095744535326958,0.052205216139555,-0.095994479954243,-0.086417384445667,-0.052641294896603,-0.098231248557568,0.034526694566011,-0.024188838899136,0.110431022942066,0.111498899757862,-0.065723650157452,-0.055131021887064,-0.003537740325555));
res += mul(Get(s2,-dx,0), float4x4(-0.032458733767271,-0.041922979056835,-0.026900265365839,-0.033775281161070,-0.078653052449226,0.014963983558118,0.080222152173519,-0.131800979375839,-0.038352876901627,0.016043756157160,0.038816776126623,-0.129416346549988,0.149826630949974,0.023390538990498,-0.073486529290676,-0.012668737210333));
res += mul(Get(s2,-dx,dy), float4x4(0.059105876833200,-0.049849972128868,0.000331720395479,-0.036182437092066,-0.229796960949898,0.059649467468262,0.019577329978347,-0.124450236558914,0.118466384708881,0.116316877305508,-0.024983242154121,-0.023009134456515,0.317323952913284,-0.017045801505446,-0.143568530678749,-0.030680187046528));
res += mul(Get(s2,0,-dy), float4x4(-0.081080481410027,-0.051002062857151,-0.043519459664822,-0.011154563166201,0.084052830934525,0.038427989929914,-0.143637150526047,-0.125992074608803,0.177637070417404,0.045268028974533,0.101819284260273,-0.041989423334599,-0.035858832299709,-0.089052177965641,0.144194126129150,-0.057538691908121));
res += mul(Get(s2,0,0), float4x4(-0.020040478557348,0.045608896762133,0.071104414761066,-0.033522196114063,0.115346260368824,0.069078639149666,0.080367021262646,-0.138025924563408,-0.004722937941551,-0.047855768352747,-0.160555645823479,0.125605776906013,-0.003917881287634,0.012086131609976,0.075045123696327,0.246233537793159));
res += mul(Get(s2,0,dy), float4x4(0.012088203802705,-0.016630627214909,0.071810401976109,-0.003865346545354,0.098620742559433,-0.144131332635880,0.074093185365200,-0.130710169672966,-0.063694164156914,0.118485517799854,-0.047878876328468,0.045747082680464,-0.096703514456749,0.080643296241760,-0.021424526348710,0.073733299970627));
res += mul(Get(s2,dx,-dy), float4x4(0.052544753998518,0.024583723396063,-0.028325913473964,-0.033201850950718,0.035879008471966,-0.074582904577255,-0.270479708909988,-0.136589586734772,0.042776461690664,-0.052672944962978,0.003727213479578,0.023421831429005,-0.146902889013290,0.013102577067912,0.178486779332161,-0.077084824442863));
res += mul(Get(s2,dx,0), float4x4(0.002001840388402,0.076611682772636,-0.001187576213852,0.136793985962868,-0.061024073511362,0.145635113120079,-0.231777980923653,-0.024852430447936,-0.037539191544056,-0.118687860667706,0.034015201032162,0.032319638878107,-0.014774023555219,-0.058253612369299,0.037793476134539,-0.054822698235512));
res += mul(Get(s2,dx,dy), float4x4(0.026084326207638,-0.049842957407236,-0.045029837638140,-0.042873211205006,0.016221316531301,-0.020086944103241,-0.041566580533981,-0.044703528285027,-0.058686438947916,0.026948815211654,-0.098236970603466,-0.020605545490980,-0.097965039312840,0.069728501141071,-0.073419749736786,0.007128790486604));
res += mul(Get(s3,-dx,-dy), float4x4(0.272415906190872,-0.044156637042761,0.072598926723003,0.009735018014908,0.146447584033012,-0.045714247971773,0.272476971149445,0.190971121191978,-0.094317711889744,-0.004382242914289,-0.179278492927551,-0.082209028303623,-0.132550418376923,-0.002813823986799,-0.065707094967365,-0.048110108822584));
res += mul(Get(s3,-dx,0), float4x4(0.149977132678032,-0.014899902045727,-0.088699325919151,0.244467437267303,0.218071252107620,-0.123683899641037,0.042430747300386,-0.104020588099957,0.162747442722321,-0.018236277624965,-0.071447879076004,0.213137581944466,0.010139311663806,0.068853884935379,-0.013638661243021,-0.028567988425493));
res += mul(Get(s3,-dx,dy), float4x4(0.660099267959595,0.060230709612370,-0.050815545022488,-0.030611274763942,-0.272249102592468,0.029532246291637,-0.070154942572117,-0.025666078552604,0.492715060710907,0.029286947101355,-0.031288210302591,0.041493013501167,-0.089434899389744,-0.032808177173138,-0.000326778303133,0.036077339202166));
res += mul(Get(s3,0,-dy), float4x4(-0.039087429642677,0.046881977468729,0.282312303781509,0.113028399646282,-0.106392063200474,0.312886655330658,-0.315502375364304,0.122349202632904,-0.156335905194283,0.058208175003529,0.338131099939346,0.060711234807968,0.026210531592369,-0.018335325643420,0.048696350306273,-0.066387936472893));
res += mul(Get(s3,0,0), float4x4(0.163266345858574,-0.085252881050110,-0.151851207017899,0.584254980087280,0.206604167819023,0.060422677546740,0.178372934460640,-0.277851909399033,0.168505191802979,-0.160989791154861,-0.248334601521492,0.609675407409668,0.046865597367287,0.031176373362541,0.036525502800941,0.017987355589867));
res += mul(Get(s3,0,dy), float4x4(0.426667183637619,0.180446162819862,0.049530383199453,0.221614718437195,-0.272042930126190,-0.254078477621078,0.037179250270128,0.015501677058637,-0.312603503465652,0.132631689310074,-0.025457633659244,0.147801518440247,0.114247292280197,-0.097689427435398,0.007669310551137,0.084693528711796));
res += mul(Get(s3,dx,-dy), float4x4(0.053097151219845,0.007410463411361,0.410439610481262,0.325308531522751,-0.066565476357937,0.141947269439697,-0.401067823171616,0.255868554115295,-0.034909207373857,0.102359876036644,0.511093258857727,0.178275287151337,-0.031415689736605,0.047323342412710,0.086887501180172,-0.060163062065840));
res += mul(Get(s3,dx,0), float4x4(-0.018408332020044,-0.134152173995972,-0.063042916357517,0.486408948898315,-0.070795580744743,0.166850283741951,0.050415616482496,-0.345759183168411,-0.079026050865650,-0.210698917508125,0.118433669209480,-0.094095587730408,0.050151720643044,0.070703484117985,0.007046635728329,0.009229524992406));
res += mul(Get(s3,dx,dy), float4x4(-0.002539843088016,0.250817894935608,0.197923153638840,0.058579836040735,-0.001269372529350,-0.007716993801296,-0.108011111617088,0.041222721338272,0.004445615224540,-0.077136784791946,-0.046004347503185,-0.109268642961979,-0.106212183833122,-0.034304905682802,0.071854233741760,0.037753272801638));
res += mul(Get(s4,-dx,-dy), float4x4(-0.037709914147854,0.042907103896141,-0.039221923798323,0.018742974847555,-0.094563335180283,-0.001708279130980,-0.033550065010786,0.075110062956810,0.045125212520361,-0.095444753766060,-0.080898836255074,-0.000841460539959,0.048321440815926,-0.119652099907398,-0.029246505349874,0.069295980036259));
res += mul(Get(s4,-dx,0), float4x4(0.129028439521790,0.014217725023627,-0.064616084098816,0.052285552024841,-0.050764746963978,0.037605404853821,0.066695183515549,-0.050301861017942,-0.039013147354126,0.131629824638367,0.015913086012006,0.097173571586609,0.066829323768616,-0.141181439161301,-0.064101994037628,0.050386883318424));
res += mul(Get(s4,-dx,dy), float4x4(0.049093555659056,0.006475255824625,0.116140447556973,-0.000438429124188,0.020949821919203,0.038730662316084,-0.114373691380024,0.084094852209091,-0.107791140675545,-0.023471478372812,-0.075234979391098,-0.002270470838994,-0.304704457521439,0.013931625522673,0.027217555791140,0.116303563117981));
res += mul(Get(s4,0,-dy), float4x4(-0.032425668090582,0.091527082026005,-0.007095428649336,-0.033580526709557,-0.007908818311989,-0.152268469333649,0.068289831280708,-0.031677775084972,-0.005734147969633,0.072605624794960,0.187578588724136,0.003640166018158,0.068381041288376,0.051274072378874,0.204615473747253,0.032100271433592));
res += mul(Get(s4,0,0), float4x4(-0.092205703258514,-0.016698360443115,0.006882801651955,-0.029606154188514,0.035162847489119,0.000519066234119,-0.110413067042828,0.133181318640709,-0.021724825724959,-0.071887001395226,-0.226853400468826,-0.226079642772675,0.018841624259949,-0.003060552058741,0.084036052227020,-0.366117596626282));
res += mul(Get(s4,0,dy), float4x4(-0.084370844066143,-0.003920607268810,-0.003545410698280,-0.142271190881729,-0.117090605199337,0.098548188805580,0.049840435385704,-0.125717222690582,0.014629918150604,0.053422596305609,0.185501500964165,0.078821308910847,0.023010754957795,-0.152491718530655,-0.114809431135654,0.021573705598712));
res += mul(Get(s4,dx,-dy), float4x4(-0.049141578376293,-0.034205596894026,-0.080216258764267,0.184003785252571,0.102362640202045,-0.012772017158568,0.143007755279541,0.039420459419489,0.046855520457029,-0.050985425710678,-0.170878425240517,-0.012152782641351,0.109991937875748,0.175188049674034,-0.113016255199909,0.105583548545837));
res += mul(Get(s4,dx,0), float4x4(-0.019275875762105,-0.011831240728498,0.070016920566559,-0.087545305490494,0.011696431785822,-0.056760419160128,-0.140848830342293,-0.201086848974228,0.031360179185867,0.112729512155056,0.202948927879333,-0.014647540636361,-0.075871847569942,0.121796108782291,0.001836911775172,-0.067805595695972));
res += mul(Get(s4,dx,dy), float4x4(0.112611971795559,-0.113310679793358,0.028066495433450,0.085778877139091,0.028076725080609,-0.029626766219735,0.116626948118210,0.102771736681461,-0.019436111673713,-0.189889132976532,-0.111901775002480,0.091326586902142,-0.003380366601050,-0.114866130053997,0.029594754800200,0.081732675433159));
res += mul(Get(s5,-dx,-dy), float4x4(-0.141360744833946,0.007375428453088,0.024782313033938,0.049637809395790,-0.065320529043674,-0.123107805848122,-0.112165309488773,-0.032134965062141,0.084322147071362,-0.024579860270023,0.079383380711079,0.006691450253129,-0.103328801691532,0.029984589666128,0.037243980914354,-0.009875331073999));
res += mul(Get(s5,-dx,0), float4x4(0.069943770766258,0.031764019280672,-0.104893818497658,0.009332633577287,0.052633967250586,0.070882119238377,0.031619761139154,0.003097656881437,0.116845712065697,0.042297225445509,-0.016565464437008,0.035474210977554,0.004657832439989,0.051907889544964,-0.065252959728241,-0.100013464689255));
res += mul(Get(s5,-dx,dy), float4x4(0.023272875696421,-0.012551127001643,-0.024984439834952,-0.022477740421891,0.155014961957932,0.023859953507781,-0.011935221962631,-0.003499109530821,0.249216169118881,-0.027587737888098,-0.058275450021029,0.007707517128438,0.112809166312218,-0.019723540171981,0.001682510948740,-0.043180044740438));
res += mul(Get(s5,0,-dy), float4x4(0.025812219828367,-0.001239351113327,-0.060817811638117,0.034121502190828,-0.025543440133333,-0.107614018023014,-0.037075538188219,0.003650450380519,0.090280160307884,-0.103284150362015,0.080205485224724,-0.183530583977699,0.059251811355352,-0.016902996227145,-0.070018343627453,-0.022172085940838));
res += mul(Get(s5,0,0), float4x4(0.044960729777813,0.009479617699981,-0.060355588793755,0.019407100975513,0.056942127645016,-0.035008009523153,-0.029247038066387,0.164303347468376,-0.087456092238426,-0.119284868240356,-0.087879680097103,0.322674304246902,-0.084641270339489,0.092428356409073,-0.044407207518816,0.127921730279922));
res += mul(Get(s5,0,dy), float4x4(-0.012221657671034,-0.097852349281311,0.053667549043894,-0.004196776542813,-0.051137071102858,0.027751926332712,0.013055183924735,-0.090036168694496,-0.255421251058578,0.224097236990929,-0.086183965206146,0.142446994781494,0.099504932761192,-0.018492333590984,0.024685997515917,0.056148048490286));
res += mul(Get(s5,dx,-dy), float4x4(-0.048499949276447,0.040530104190111,0.059779040515423,-0.026244414970279,-0.022046225145459,0.064107790589333,-0.070467196404934,0.047200541943312,-0.034286145120859,-0.090534850955009,0.472894310951233,-0.146540671586990,-0.034586865454912,-0.020717522129416,0.067660212516785,0.008712304756045));
res += mul(Get(s5,dx,0), float4x4(-0.034374646842480,0.008553272113204,0.016802845522761,-0.030675990507007,-0.014029426500201,0.022302594035864,-0.025624360889196,-0.026617961004376,-0.004893859848380,-0.153145328164101,-0.019298987463117,-0.073324494063854,0.111997373402119,-0.089668765664101,0.056799747049809,-0.129427209496498));
res += mul(Get(s5,dx,dy), float4x4(-0.034507308155298,0.085596360266209,0.009452581405640,0.103661291301250,-0.045869026333094,0.044672582298517,0.097266145050526,-0.048557456582785,-0.132888674736023,-0.078691445291042,0.029278300702572,-0.116438545286655,-0.031424418091774,0.135680675506592,-0.081557363271713,0.052504066377878));
res = max(float4(0, 0, 0, 0), res) + float4(0.000350229820469,-0.105971977114677,-0.001393930520862,-0.022649411112070) * min(float4(0, 0, 0, 0), res);
return res;
}
