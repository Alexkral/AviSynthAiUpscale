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
res += mul(Get(s0,-dx,-dy), float4x4(0.057790413498878,-0.060539092868567,0.022350873798132,0.192011520266533,-0.022631322965026,-0.306288212537766,-0.148296266794205,0.004345006309450,-0.100709147751331,-0.097268983721733,-0.090946532785892,-0.107101641595364,-0.000631296832580,-0.011759640648961,0.086546793580055,0.038497388362885));
res += mul(Get(s0,-dx,0), float4x4(-0.043240632861853,0.031863208860159,-0.003827466163784,0.112705476582050,-0.041217945516109,0.107074894011021,-0.157511502504349,0.024548627436161,0.092814058065414,0.130928561091423,-0.016435094177723,-0.035928435623646,0.253440260887146,0.006190404295921,0.002818955574185,0.150271043181419));
res += mul(Get(s0,-dx,dy), float4x4(-0.056217506527901,0.020340776070952,-0.162446051836014,-0.058910995721817,-0.173280566930771,-0.073795899748802,-0.016985429450870,0.008742146193981,-0.132049709558487,-0.118425071239471,0.060239102691412,0.036144472658634,0.074269667267799,-0.055089376866817,0.029008954763412,0.039637941867113));
res += mul(Get(s0,0,-dy), float4x4(0.094143770635128,0.069941580295563,-0.239201173186302,-0.003440482309088,-0.044501785188913,0.069035045802593,-0.050473496317863,0.070153921842575,0.100595265626907,0.049788657575846,-0.143010139465332,0.091086864471436,-0.072962075471878,0.055007029324770,0.007456832099706,-0.075137488543987));
res += mul(Get(s0,0,0), float4x4(0.022960105910897,-0.129938766360283,0.023492341861129,0.003900708863512,-0.016281828284264,-0.118105523288250,0.187590584158897,-0.147372931241989,-0.002810584381223,-0.249126657843590,-0.055581439286470,0.152138501405716,0.003506470937282,0.065341852605343,0.063928417861462,-0.045109052211046));
res += mul(Get(s0,0,dy), float4x4(0.098660878837109,-0.170039400458336,-0.074224770069122,-0.031581677496433,-0.072311110794544,0.054931800812483,-0.145412936806679,0.019273640587926,-0.099623687565327,-0.232149809598923,0.018110979348421,0.012273333035409,-0.043022762984037,-0.104030594229698,0.181384593248367,-0.080904938280582));
res += mul(Get(s0,dx,-dy), float4x4(0.006015608087182,0.072589367628098,0.027506936341524,-0.118261195719242,-0.106157265603542,0.030586998909712,0.126438856124878,0.087765410542488,0.084211431443691,-0.084640681743622,-0.071685895323753,0.130348309874535,0.032404880970716,-0.095299921929836,-0.014113420620561,-0.282931566238403));
res += mul(Get(s0,dx,0), float4x4(0.041836153715849,0.073913455009460,-0.107889905571938,0.018136072903872,-0.066159598529339,-0.034554466605186,-0.077206343412399,-0.158993616700172,0.042510136961937,-0.180520564317703,0.128376051783562,-0.010948351584375,0.159557387232780,-0.140559136867523,0.237267374992371,-0.093729309737682));
res += mul(Get(s0,dx,dy), float4x4(0.083325661718845,0.230627045035362,0.149934604763985,0.142892360687256,0.046371076256037,0.056205671280622,-0.036745943129063,0.144973248243332,0.006984842475504,-0.021431071683764,-0.126137018203735,-0.257436603307724,-0.028686545789242,0.281334906816483,0.081101067364216,0.085433706641197));
res += mul(Get(s1,-dx,-dy), float4x4(-0.151032805442810,-0.033206537365913,0.083702988922596,0.038226261734962,-0.002883268985897,-0.010390086099505,0.039718870073557,-0.002567634219304,-0.145047932863235,-0.219141930341721,-0.105447083711624,-0.147085472941399,0.073405161499977,-0.172666028141975,0.033516135066748,-0.124305702745914));
res += mul(Get(s1,-dx,0), float4x4(-0.092026263475418,-0.043966315686703,-0.259981513023376,-0.199825778603554,-0.174155145883560,-0.023498103022575,-0.025413112714887,-0.080542013049126,0.021176274865866,0.140719354152679,-0.033587347716093,-0.001267682411708,0.020751841366291,-0.154261484742165,-0.028771471232176,0.223079621791840));
res += mul(Get(s1,-dx,dy), float4x4(-0.084272518754005,-0.124126203358173,-0.115218877792358,0.081507496535778,0.000808216747828,0.074000187218189,0.062828138470650,-0.055343475192785,-0.034860458225012,-0.035416472703218,0.112206734716892,0.171765267848969,0.111910916864872,0.017962606623769,-0.017369318753481,0.017757657915354));
res += mul(Get(s1,0,-dy), float4x4(-0.060712408274412,-0.020007362589240,-0.014252623543143,0.182869389653206,-0.088022015988827,-0.087179809808731,-0.003625591052696,0.074468009173870,0.011085623875260,0.034855723381042,-0.191634625196457,0.005586103070527,0.000435682537500,0.020954363048077,-0.028906637802720,-0.035139128565788));
res += mul(Get(s1,0,0), float4x4(-0.127278849482536,-0.025299591943622,0.009218852035701,0.370727390050888,0.010888610966504,-0.114727027714252,-0.079836189746857,0.179925441741943,-0.018858470022678,-0.128802686929703,-0.112699590623379,0.153705656528473,-0.083334796130657,-0.036602247506380,-0.172156766057014,-0.070289112627506));
res += mul(Get(s1,0,dy), float4x4(-0.027083342894912,-0.035542584955692,-0.040128186345100,0.173475682735443,-0.132060408592224,0.077292382717133,-0.006588753312826,-0.067105248570442,0.091215074062347,-0.230256900191307,-0.008648601360619,-0.015554585494101,-0.192867487668991,-0.085328429937363,-0.094648070633411,0.023290606215596));
res += mul(Get(s1,dx,-dy), float4x4(-0.221277505159378,-0.169334560632706,-0.104501657187939,-0.042680148035288,0.180664971470833,0.014075674116611,0.021691285073757,0.086081475019455,0.119397982954979,0.045594464987516,-0.179682105779648,0.071975916624069,0.007012671791017,-0.069785535335541,-0.001220908015966,-0.196934998035431));
res += mul(Get(s1,dx,0), float4x4(0.058225173503160,-0.101622045040131,0.000977915362455,0.093433856964111,0.042505450546741,-0.138440579175949,-0.084817133843899,-0.036066919565201,0.100901506841183,-0.080167472362518,0.103009693324566,0.066071920096874,0.015709884464741,-0.072895467281342,-0.140787139534950,0.216180324554443));
res += mul(Get(s1,dx,dy), float4x4(-0.064168885350227,-0.122686900198460,0.087997868657112,-0.085063487291336,-0.031480818986893,0.081139937043190,-0.065678797662258,0.116923578083515,-0.038536593317986,-0.107098191976547,-0.075036302208900,0.067464709281921,0.235335260629654,0.016476728022099,-0.145612314343452,0.065973564982414));
res += mul(Get(s2,-dx,-dy), float4x4(-0.047506064176559,0.114295013248920,-0.089527994394302,-0.010936619713902,0.140923857688904,0.025225367397070,0.149071678519249,-0.078364811837673,-0.098030000925064,0.045592747628689,-0.141739457845688,0.046497784554958,0.070543557405472,0.101020909845829,-0.066774174571037,-0.022305859252810));
res += mul(Get(s2,-dx,0), float4x4(0.050546456128359,-0.101861454546452,0.054133173078299,-0.151490375399590,0.186182454228401,0.081215701997280,0.074885196983814,0.008597438223660,0.028777157887816,-0.031436689198017,0.047229677438736,0.019786097109318,-0.085391022264957,0.004020886495709,-0.043016012758017,0.341287791728973));
res += mul(Get(s2,-dx,dy), float4x4(-0.138689070940018,0.171225041151047,0.050730109214783,0.061685875058174,0.164263412356377,-0.172749176621437,0.064164191484451,0.049683805555105,0.050811883062124,0.014098108746111,-0.036294128745794,-0.088347934186459,0.113092929124832,-0.034098297357559,-0.002421688521281,-0.018132982775569));
res += mul(Get(s2,0,-dy), float4x4(0.045344889163971,0.125616326928139,-0.071063362061977,-0.047886788845062,-0.102726802229881,-0.208802521228790,0.009978296235204,-0.079314105212688,0.047259315848351,-0.130230501294136,0.067554406821728,0.170055672526360,-0.029230413958430,0.205782949924469,0.036007378250360,-0.136611431837082));
res += mul(Get(s2,0,0), float4x4(0.101242713630199,-0.117735631763935,0.086396686732769,0.071196988224983,-0.098224632441998,-0.021334361284971,-0.091786928474903,-0.117291517555714,0.035479277372360,0.027139818295836,0.113568499684334,0.191134393215179,0.043492645025253,-0.065605059266090,0.011219508014619,0.158748775720596));
res += mul(Get(s2,0,dy), float4x4(-0.100172258913517,0.080755107104778,-0.041396465152502,0.163526087999344,0.005349196959287,-0.131097152829170,0.032842256128788,-0.113527223467827,-0.032394930720329,0.220246329903603,-0.053893361240625,0.177894070744514,0.044775154441595,0.235224679112434,0.013278749771416,0.011073180474341));
res += mul(Get(s2,dx,-dy), float4x4(0.296531647443771,-0.163721829652786,0.119971632957458,-0.071923352777958,-0.115645281970501,-0.032321140170097,-0.172053307294846,0.113045670092106,-0.204451292753220,0.208118826150894,0.038390576839447,-0.054882366210222,0.035091873258352,0.059479199349880,-0.112329639494419,-0.068128786981106));
res += mul(Get(s2,dx,0), float4x4(-0.073682382702827,-0.001422216068022,0.122924856841564,-0.124189943075180,-0.149248301982880,0.058514375239611,0.109088085591793,0.014119911938906,0.098191842436790,-0.089516624808311,-0.099278815090656,0.023449264466763,-0.081083200871944,0.098032288253307,0.024605525657535,-0.096462719142437));
res += mul(Get(s2,dx,dy), float4x4(0.202326774597168,0.063936568796635,0.046633802354336,-0.010483001358807,-0.127735108137131,0.058996383100748,0.064568012952805,0.033035296946764,-0.105183579027653,0.077328868210316,-0.013553717173636,-0.012889252975583,-0.025589188560843,0.178870856761932,-0.033086955547333,0.209422707557678));
res += mul(Get(s3,-dx,-dy), float4x4(0.104727134108543,-0.195070594549179,-0.073054365813732,0.107961162924767,0.136056229472160,0.100757002830505,0.168162360787392,0.131637454032898,-0.143235802650452,-0.000286224472802,0.204384833574295,-0.075235828757286,0.045607190579176,-0.172520488500595,-0.088858142495155,-0.157656669616699));
res += mul(Get(s3,-dx,0), float4x4(-0.018954241648316,0.064015232026577,-0.088092669844627,-0.118001595139503,0.048029426485300,0.075369082391262,-0.122767508029938,-0.107396937906742,0.113146819174290,-0.001346548204310,0.017360132187605,0.172092795372009,-0.117776803672314,0.155295148491859,-0.199757173657417,-0.050377141684294));
res += mul(Get(s3,-dx,dy), float4x4(-0.089441604912281,-0.002632921328768,0.064551055431366,0.111575029790401,0.087269216775894,0.129299104213715,-0.136093586683273,0.075937554240227,-0.039143472909927,0.004211526364088,0.123841412365437,0.126436218619347,0.033481422811747,-0.111012116074562,0.002046563196927,0.107612453401089));
res += mul(Get(s3,0,-dy), float4x4(-0.186514839529991,0.049388922750950,0.138350069522858,-0.264139920473099,-0.085700191557407,-0.110194884240627,0.100012525916100,0.021355574950576,0.190983757376671,0.068511508405209,0.035287693142891,-0.130245789885521,-0.071118153631687,-0.176493629813194,0.189347118139267,-0.042855463922024));
res += mul(Get(s3,0,0), float4x4(0.094761490821838,-0.059463255107403,0.002975218696520,-0.072873398661613,-0.086516067385674,-0.008522461168468,0.165855512022972,-0.125804111361504,-0.116239205002785,-0.013571926392615,0.107399314641953,0.046748578548431,0.186007350683212,0.087170578539371,-0.153498336672783,-0.020016552880406));
res += mul(Get(s3,0,dy), float4x4(0.069947555661201,-0.061498422175646,-0.015043376013637,0.056836538016796,-0.124671623110771,0.063980184495449,-0.157777026295662,0.110124051570892,0.004998170305043,0.035727802664042,0.073188722133636,-0.041484892368317,-0.027030900120735,-0.002460792427883,0.088897742331028,0.202742785215378));
res += mul(Get(s3,dx,-dy), float4x4(0.052978802472353,-0.102549701929092,0.044841691851616,0.150983303785324,0.132572203874588,0.015853526070714,-0.086113303899765,0.078262403607368,-0.085686013102531,-0.106132142245770,0.020584758371115,0.174391344189644,0.175914824008942,-0.038974851369858,-0.077345468103886,-0.027341723442078));
res += mul(Get(s3,dx,0), float4x4(0.083825081586838,-0.092546984553337,0.028942495584488,-0.132445558905602,0.040566172450781,-0.102762028574944,0.117134191095829,0.028844973072410,-0.093037366867065,-0.261224597692490,-0.112960860133171,0.048007372766733,0.115160368382931,-0.060291320085526,0.031868152320385,-0.010252414271235));
res += mul(Get(s3,dx,dy), float4x4(0.032216463238001,-0.031967326998711,0.053723402321339,-0.078650772571564,-0.034267108887434,0.052489835768938,-0.025821126997471,0.250113993883133,0.073989711701870,0.019889391958714,-0.004183125682175,-0.142414346337318,-0.002523183589801,0.081233225762844,0.059486806392670,0.089327514171600));
return max(float4(0,0,0,0), res);
}
