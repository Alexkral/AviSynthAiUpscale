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
float4 res = float4(-0.157201468944550,-0.231931731104851,-0.289357483386993,-0.201453164219856);
res += mul(Get(s0,-dx,-dy), float4x4(-0.036705028265715,0.005047430284321,-0.109875030815601,0.126017510890961,-0.014338562265038,0.053562395274639,0.022832380607724,0.008095656521618,-0.020445453003049,0.050564132630825,0.014165787026286,0.003479695180431,-0.002694126684219,0.003496847813949,-0.055683735758066,-0.066384024918079));
res += mul(Get(s0,-dx,0), float4x4(-0.044123627245426,0.024293374270201,-0.053293287754059,0.070801138877869,-0.118814699351788,-0.123339593410492,0.027609743177891,0.008671286515892,0.122043281793594,-0.101100184023380,0.004637429025024,0.146862924098969,0.018716165795922,0.110951252281666,-0.074108265340328,-0.178113758563995));
res += mul(Get(s0,-dx,dy), float4x4(0.078722767531872,-0.020578494295478,-0.032519541680813,0.022199550643563,0.023400995880365,-0.144132331013680,-0.029147196561098,-0.056682828813791,-0.083721883594990,-0.009756741113961,-0.018208580091596,-0.010187979787588,-0.073102705180645,-0.040306098759174,-0.073620252311230,0.075684912502766));
res += mul(Get(s0,0,-dy), float4x4(0.088539838790894,0.243216589093208,0.044203832745552,-0.507164418697357,-0.056479286402464,0.054040420800447,-0.074718818068504,-0.078789316117764,-0.019935535266995,0.066570580005646,-0.013188065961003,-0.013668022118509,-0.060065180063248,0.061464197933674,0.035811506211758,0.024603975936770));
res += mul(Get(s0,0,0), float4x4(-0.277621090412140,-0.087058261036873,0.066860236227512,-0.155494064092636,-0.130475565791130,-0.021871557459235,0.105806939303875,0.140991479158401,0.116950228810310,-0.243336454033852,0.066448345780373,-0.094669736921787,0.009263216517866,-0.231758132576942,-0.066825248301029,0.089491374790668));
res += mul(Get(s0,0,dy), float4x4(0.105960398912430,-0.030290693044662,-0.002075219526887,-0.019647775217891,-0.015411051921546,-0.010852117091417,0.083454355597496,-0.002102829050273,-0.210659846663475,0.312300354242325,0.108735255897045,0.073641613125801,-0.070174679160118,0.081821538507938,0.000478037109133,0.093857489526272));
res += mul(Get(s0,dx,-dy), float4x4(-0.037723224610090,-0.008300674147904,-0.350558757781982,0.045625083148479,0.019692536443472,-0.038023244589567,-0.030296353623271,-0.131541505455971,-0.021851653233171,-0.016441369429231,-0.033666316419840,0.068853750824928,-0.025579206645489,0.055733073502779,0.088857255876064,0.063914619386196));
res += mul(Get(s0,dx,0), float4x4(0.014873519539833,-0.076800011098385,-0.498198509216309,0.073069885373116,-0.056037168949842,0.060960482805967,0.211192354559898,-0.226567298173904,0.029908683151007,-0.016682475805283,-0.051274936646223,0.054111763834953,0.021951211616397,-0.019415782764554,-0.047121018171310,0.153671383857727));
res += mul(Get(s0,dx,dy), float4x4(0.012934461236000,0.020965496078134,-0.000351409747964,-0.028009092435241,0.021858617663383,-0.061498779803514,0.099380381405354,-0.122997619211674,-0.004671146627516,0.031560111790895,0.044496942311525,0.015601964667439,0.064228482544422,0.047572169452906,0.045068815350533,-0.040255989879370));
res += mul(Get(s1,-dx,-dy), float4x4(-0.068045280873775,0.002831207588315,-0.025928089395165,-0.135440692305565,0.082475550472736,-0.093313828110695,-0.002155618509278,0.047306932508945,-0.012150864116848,0.012495640665293,-0.020805638283491,0.064151167869568,0.037011556327343,-0.054255187511444,0.018715523183346,0.033666275441647));
res += mul(Get(s1,-dx,0), float4x4(0.066851429641247,0.105943650007248,-0.038370057940483,0.039936199784279,-0.101135566830635,0.310624152421951,0.111321792006493,0.156762793660164,-0.090396784245968,-0.002131515182555,0.004111967980862,0.109940141439438,-0.052313860505819,-0.031320046633482,-0.024381460621953,0.066746257245541));
res += mul(Get(s1,-dx,dy), float4x4(0.089483566582203,-0.049709152430296,0.037327520549297,-0.050629768520594,-0.005319763906300,0.173000499606133,0.109595149755478,-0.021710556000471,0.071749329566956,0.005626273807138,-0.006127537228167,-0.056872159242630,-0.050118755549192,-0.012723402120173,0.018398320302367,0.059314556419849));
res += mul(Get(s1,0,-dy), float4x4(0.047732882201672,0.076006852090359,-0.070568613708019,0.102317333221436,0.019244013354182,0.049365252256393,0.180986359715462,-0.072917237877846,-0.100654713809490,0.121753975749016,0.086092576384544,0.071536011993885,0.116059601306915,-0.073480330407619,0.116661332547665,-0.059280794113874));
res += mul(Get(s1,0,0), float4x4(0.114065185189247,0.039278075098991,0.020182494074106,0.067137107253075,-0.105382777750492,0.131935313344002,0.286502838134766,-0.158154085278511,0.166458487510681,-0.165642514824867,0.161289781332016,0.033788979053497,0.009217965416610,-0.062472637742758,0.092273384332657,0.130204692482948));
res += mul(Get(s1,0,dy), float4x4(-0.036210987716913,-0.210321366786957,-0.147346422076225,-0.008211767300963,0.199997603893280,0.043539635837078,0.067121073603630,-0.064062379300594,0.025910664349794,0.047473117709160,-0.006672049872577,0.081333145499229,0.076852232217789,-0.119260095059872,0.050056494772434,-0.047489676624537));
res += mul(Get(s1,dx,-dy), float4x4(0.033922638744116,-0.027492584660649,0.087783545255661,0.058659460395575,0.002157241106033,0.013120301067829,0.014209760352969,-0.031255207955837,0.134033590555191,-0.061446446925402,0.071407251060009,0.119506239891052,0.125473544001579,-0.077461957931519,-0.097331576049328,-0.022959446534514));
res += mul(Get(s1,dx,0), float4x4(-0.076818756759167,-0.053563643246889,0.351586312055588,-0.123283781111240,-0.034006547182798,0.064764402806759,-0.015948282554746,-0.058002423495054,-0.170842185616493,0.044523715972900,-0.144259467720985,-0.054700400680304,-0.101346962153912,0.042729265987873,0.059722006320953,-0.188953995704651));
res += mul(Get(s1,dx,dy), float4x4(-0.058701913803816,0.059299349784851,0.029104065150023,0.003231635550037,0.082588233053684,0.103605672717094,-0.040631040930748,-0.067390501499176,0.075685746967793,0.014293598011136,0.089474707841873,0.125296846032143,-0.048373211175203,-0.101402044296265,0.197573810815811,0.060994714498520));
res += mul(Get(s2,-dx,-dy), float4x4(0.027059722691774,-0.105394363403320,0.003327341284603,0.029589906334877,0.000956489879172,0.057464625686407,-0.018159292638302,0.024117728695273,0.110435903072357,-0.009631663560867,0.058809649199247,0.030168633908033,-0.051336094737053,0.145462289452553,0.025758519768715,-0.001168964197859));
res += mul(Get(s2,-dx,0), float4x4(-0.084976404905319,0.131658211350441,0.033714596182108,-0.039293531328440,-0.104500360786915,-0.082491703331470,-0.024542668834329,0.066257238388062,0.290118068456650,-0.071391455829144,0.002860338194296,0.102300450205803,0.004650860559195,0.014581120572984,0.043868888169527,0.033215533941984));
res += mul(Get(s2,-dx,dy), float4x4(-0.228405877947807,0.124233193695545,-0.023937914520502,0.044198997318745,0.175740733742714,0.046312361955643,-0.000371121510398,0.107517369091511,0.125035867094994,0.012029670178890,0.024818576872349,0.033704709261656,-0.120532751083374,-0.000997506780550,-0.007689354475588,0.092221401631832));
res += mul(Get(s2,0,-dy), float4x4(0.036807585507631,0.092900745570660,0.024318171665072,-0.041483215987682,0.101686887443066,0.108086787164211,0.059439845383167,-0.011528248898685,0.076312318444252,-0.259138315916061,0.078391633927822,0.081817321479321,-0.248082280158997,0.198556423187256,0.037621952593327,-0.029676215723157));
res += mul(Get(s2,0,0), float4x4(0.031759411096573,0.327616691589355,-0.125717505812645,-0.121773377060890,-0.326630085706711,-0.214889928698540,0.035125318914652,0.009085728786886,0.332504451274872,-0.297934353351593,-0.027870725840330,0.103608101606369,-0.033666253089905,0.217421501874924,0.022379232570529,-0.016789957880974));
res += mul(Get(s2,0,dy), float4x4(-0.212783202528954,0.123362198472023,-0.050455927848816,-0.006474148482084,0.007121578324586,0.032981660217047,0.038981165736914,0.086882449686527,0.109156437218189,-0.054961651563644,-0.051747981458902,0.033103838562965,-0.071960493922234,0.000066121108830,-0.005159911233932,0.046613648533821));
res += mul(Get(s2,dx,-dy), float4x4(0.030011350288987,-0.066470496356487,-0.024472907185555,0.122549906373024,0.004544497001916,-0.017691791057587,0.053311076015234,-0.146113008260727,-0.007498324383050,-0.031862944364548,-0.000349423644366,-0.004973725881428,0.068558380007744,0.108968257904053,-0.067042656242847,0.061586424708366));
res += mul(Get(s2,dx,0), float4x4(0.076120756566525,0.143849179148674,-0.086951144039631,0.092124335467815,0.021537117660046,0.060955833643675,0.114971891045570,-0.076376132667065,-0.006734395399690,0.061984471976757,0.244010373950005,-0.010379849001765,0.079472050070763,-0.144909128546715,0.073775336146355,0.087204582989216));
res += mul(Get(s2,dx,dy), float4x4(0.078756928443909,-0.028336470946670,0.014146464876831,0.041220337152481,0.186095312237740,-0.024789368733764,0.098754227161407,0.029007483273745,-0.094668947160244,0.074364028871059,0.135583549737930,0.003661042777821,-0.054192915558815,-0.015692271292210,0.102752074599266,0.009521578438580));
res += mul(Get(s3,-dx,-dy), float4x4(0.066497422754765,-0.056612871587276,-0.020814901217818,-0.053476974368095,0.102108635008335,-0.037467785179615,0.039737686514854,-0.023330453783274,-0.005720421671867,-0.013465687632561,0.026408579200506,-0.001828013453633,0.000156267342390,0.053139869123697,0.033591911196709,-0.072181232273579));
res += mul(Get(s3,-dx,0), float4x4(-0.152542650699615,-0.133148401975632,0.010708975605667,-0.065838269889355,-0.074294641613960,-0.091587409377098,-0.085688240826130,-0.088358879089355,-0.176845341920853,0.026046378538013,-0.048578683286905,-0.069682754576206,-0.054988898336887,-0.050562094897032,0.017429437488317,-0.074051380157471));
res += mul(Get(s3,-dx,dy), float4x4(-0.122947819530964,0.026393404230475,0.075443089008331,-0.043769750744104,-0.112952813506126,0.005791359115392,-0.005819413345307,0.000511414720677,-0.003909794613719,-0.091843485832214,-0.018362691625953,0.029894003644586,0.105798773467541,-0.102566532790661,0.013467541895807,-0.033954333513975));
res += mul(Get(s3,0,-dy), float4x4(-0.116249553859234,0.003368685953319,-0.143071696162224,-0.060803692787886,0.167067214846611,-0.215780064463615,0.018790578469634,-0.030726579949260,0.063481137156487,-0.037357632070780,-0.007518045604229,-0.118996664881706,0.079989336431026,0.040376797318459,-0.082560241222382,0.043125130236149));
res += mul(Get(s3,0,0), float4x4(0.008042265661061,-0.127304285764694,-0.286817938089371,-0.004455219022930,-0.349545627832413,-0.225531175732613,0.165685862302780,0.069921538233757,-0.313134968280792,-0.019728798419237,-0.061928328126669,0.089177057147026,-0.121728599071503,0.158618763089180,-0.257451355457306,0.163858026266098));
res += mul(Get(s3,0,dy), float4x4(-0.094366438686848,0.042581759393215,-0.037758495658636,-0.054003644734621,-0.203645005822182,-0.011392105370760,0.010454316623509,0.073653362691402,0.005697623360902,0.332412093877792,0.039873268455267,-0.000866799498908,0.177604749798775,-0.187715142965317,-0.070825539529324,0.171194314956665));
res += mul(Get(s3,dx,-dy), float4x4(-0.014928330667317,0.043413322418928,0.083154670894146,0.051584944128990,0.054823737591505,-0.056583367288113,0.030934734269977,-0.079381398856640,0.004058646038175,0.005212807562202,-0.046288967132568,-0.009925436228514,0.014934182167053,0.087029889225960,-0.050128597766161,-0.020205611363053));
res += mul(Get(s3,dx,0), float4x4(0.027753220871091,-0.090664021670818,-0.108464717864990,-0.011300500482321,-0.123226158320904,-0.133149772882462,-0.095604501664639,-0.028839102014899,-0.049216493964195,-0.006102854851633,-0.270680099725723,-0.106061778962612,-0.038595907390118,0.078585773706436,-0.034447122365236,-0.042325001209974));
res += mul(Get(s3,dx,dy), float4x4(-0.028716729953885,-0.057856746017933,-0.328702569007874,-0.093529209494591,-0.108914829790592,-0.099468179047108,0.084470018744469,0.063250966370106,0.167111441493034,0.029451929032803,-0.031901534646749,-0.070915974676609,0.087909765541553,-0.064830139279366,0.012057010084391,-0.043367221951485));
res += mul(Get(s4,-dx,-dy), float4x4(0.058945622295141,0.107599854469299,-0.023245187476277,-0.024517459794879,0.017220472916961,0.014330183155835,0.028223324567080,-0.109877280890942,0.074336983263493,-0.020154841244221,0.039728298783302,-0.075881816446781,0.022679574787617,0.117696568369865,0.158751308917999,0.244766831398010));
res += mul(Get(s4,-dx,0), float4x4(0.184861153364182,0.085172519087791,-0.027242181822658,-0.054982390254736,0.044450577348471,0.077658116817474,0.099224075675011,-0.024514099583030,-0.025674872100353,0.126596704125404,0.089445948600769,-0.110224962234497,0.020318826660514,0.008579815737903,0.201967671513557,0.320715636014938));
res += mul(Get(s4,-dx,dy), float4x4(0.029115468263626,-0.053191244602203,-0.001454305252992,0.085450634360313,0.051113154739141,0.096692949533463,0.059895455837250,-0.057238519191742,0.047689747065306,0.014631841331720,0.049985665827990,-0.039399184286594,0.071847125887871,-0.045690890401602,0.096391208469868,0.028272496536374));
res += mul(Get(s4,0,-dy), float4x4(0.096578553318977,0.024677960202098,0.028270462527871,0.011527709662914,-0.152324557304382,0.177029371261597,-0.047119632363319,0.074839442968369,0.046743277460337,0.072943061590195,-0.087134011089802,0.228461533784866,0.098972477018833,0.068214915692806,0.061686459928751,-0.042963720858097));
res += mul(Get(s4,0,0), float4x4(0.261834025382996,-0.024841949343681,-0.088587440550327,-0.206624805927277,0.222055286169052,-0.145063996315002,-0.149492621421814,0.158664137125015,0.078619733452797,-0.008216360583901,-0.056100472807884,0.369266748428345,-0.059307459741831,0.048184856772423,0.342575192451477,-0.135165169835091));
res += mul(Get(s4,0,dy), float4x4(0.137001603841782,-0.091066151857376,0.065418772399426,-0.074960686266422,0.030965829268098,0.061831165105104,-0.016245042905211,0.032746862620115,0.056264251470566,0.034906007349491,-0.052480857819319,0.008536717854440,-0.012591211125255,-0.048466544598341,-0.033878978341818,0.003916109912097));
res += mul(Get(s4,dx,-dy), float4x4(-0.086849309504032,-0.018471648916602,-0.052183598279953,-0.071939088404179,-0.029457604512572,0.022507840767503,-0.101093396544456,0.009004087187350,0.066436439752579,0.011496706865728,0.064859949052334,0.162343487143517,-0.015179260633886,0.029322575777769,-0.021984603255987,0.034488067030907));
res += mul(Get(s4,dx,0), float4x4(0.121344521641731,-0.020067311823368,-0.006971725262702,0.067448571324348,-0.104292251169682,-0.104818604886532,0.039298284798861,-0.004588366020471,0.082468375563622,0.010946927592158,0.261346340179443,0.183685958385468,0.057582259178162,-0.052607458084822,-0.025350974872708,0.027642061933875));
res += mul(Get(s4,dx,dy), float4x4(-0.029459711164236,0.074071660637856,-0.178137093782425,0.010943352244794,-0.078208453953266,-0.118919119238853,0.046041596680880,0.117613762617111,-0.078318864107132,-0.001289620879106,0.073192521929741,0.101470902562141,0.000493699917570,0.034042160958052,-0.112267591059208,0.033295404165983));
res += mul(Get(s5,-dx,-dy), float4x4(0.178030475974083,-0.175422355532646,0.052118569612503,0.036794181913137,-0.002872209995985,-0.060288306325674,0.024606710299850,-0.091329760849476,-0.039556127041578,0.003292715642601,-0.082548208534718,-0.058234862983227,0.006534079555422,-0.073124065995216,0.010294683277607,0.008543494157493));
res += mul(Get(s5,-dx,0), float4x4(-0.086993597447872,-0.054389789700508,0.155201897025108,0.210570052266121,-0.051384031772614,-0.104457274079323,0.031864829361439,-0.133545413613319,0.057340435683727,0.140658229589462,-0.018166400492191,-0.046911567449570,-0.224340260028839,-0.033389359712601,-0.098458059132099,0.032259758561850));
res += mul(Get(s5,-dx,dy), float4x4(-0.078433282673359,0.035577010363340,-0.066218517720699,-0.024474531412125,-0.022040603682399,0.057621885091066,-0.079524926841259,-0.044454682618380,0.069297797977924,-0.011350140906870,-0.032439529895782,0.011889514513314,-0.033695716410875,-0.127816706895828,0.006179742980748,-0.023262023925781));
res += mul(Get(s5,0,-dy), float4x4(-0.000333235133439,-0.072036430239677,0.001161183463410,-0.374065637588501,-0.044045343995094,-0.064438216388226,-0.052501000463963,-0.050470788031816,-0.214848488569260,0.158604666590691,0.016967289149761,0.116994082927704,0.058105345815420,-0.126928597688675,-0.036171652376652,0.047204852104187));
res += mul(Get(s5,0,0), float4x4(0.026385618373752,-0.169700309634209,0.168562084436417,-0.018781939521432,-0.158438906073570,0.062456529587507,-0.269698500633240,0.214913934469223,0.163859009742737,0.100164420902729,-0.111719787120819,-0.076862640678883,0.083976991474628,-0.013337503187358,-0.110970117151737,0.039570625871420));
res += mul(Get(s5,0,dy), float4x4(0.075504407286644,-0.022060498595238,0.064896672964096,-0.033555686473846,-0.027344342321157,-0.090245962142944,-0.169065356254578,-0.070490673184395,0.068977698683739,0.047480061650276,-0.021058056503534,0.083607159554958,-0.157273396849632,0.076863601803780,-0.121562965214252,0.031526383012533));
res += mul(Get(s5,dx,-dy), float4x4(-0.019722521305084,0.020774500444531,-0.166136130690575,0.026709798723459,-0.036475237458944,-0.003895391710103,-0.030400183051825,-0.031008385121822,-0.063034497201443,-0.107303380966187,0.182726606726646,0.013722154311836,-0.078889198601246,0.092290282249451,-0.064298152923584,-0.047099746763706));
res += mul(Get(s5,dx,0), float4x4(-0.066315114498138,-0.031931843608618,-0.098073154687881,0.026856411248446,-0.035137541592121,-0.193067282438278,-0.037310782819986,0.105596691370010,-0.028459163382649,0.049601342529058,0.139237508177757,0.031607732176781,0.137324765324593,-0.057109870016575,0.144304901361465,0.085537470877171));
res += mul(Get(s5,dx,dy), float4x4(-0.000004220419214,-0.037156932055950,0.033012740314007,0.014553214423358,-0.056911531835794,0.001554582850076,0.137870460748672,0.065153889358044,0.025436671450734,-0.053562272340059,0.135913118720055,-0.006199800409377,-0.093381926417351,0.169952780008316,-0.051577694714069,0.000985232181847));
res = max(float4(0, 0, 0, 0), res) + float4(0.011991089209914,0.014683177694678,0.003239165525883,0.003313704626635) * min(float4(0, 0, 0, 0), res);
return res;
}
