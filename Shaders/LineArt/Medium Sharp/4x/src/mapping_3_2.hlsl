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
float4 res = float4(-0.050405945628881,0.021504955366254,0.076783865690231,0.290054678916931);
res += mul(Get(s0,-dx,-dy), float4x4(-0.214283630251884,-0.038997277617455,-0.058782301843166,0.056129891425371,0.122843630611897,-0.074392445385456,-0.131364092230797,-0.194479107856750,0.227654740214348,-0.018116131424904,0.180895626544952,0.025435762479901,0.032831292599440,-0.002257733140141,0.244981124997139,-0.129586637020111));
res += mul(Get(s0,-dx,0), float4x4(0.466784060001373,0.301741570234299,0.222852483391762,0.186417967081070,0.091226495802402,-0.193508461117744,0.121249563992023,-0.202735781669617,0.326616019010544,-0.143517524003983,-0.192584082484245,0.119043588638306,-0.008858722634614,-0.124758325517178,-0.259570986032486,-0.038301464170218));
res += mul(Get(s0,-dx,dy), float4x4(-0.284922838211060,0.123842112720013,0.177085041999817,0.285154312849045,-0.107320904731750,0.054744407534599,-0.043337326496840,-0.066556967794895,0.091543458402157,-0.177726760506630,-0.206094011664391,0.095890372991562,-0.085275873541832,-0.147825405001640,0.022863296791911,0.110563479363918));
res += mul(Get(s0,0,-dy), float4x4(0.028311302885413,-0.060988295823336,0.001510223490186,0.098409801721573,0.012211023829877,-0.199418604373932,-0.240160912275314,0.173463389277458,0.216570302844048,0.144393771886826,0.033781785517931,-0.247341975569725,-0.225520104169846,0.193670928478241,-0.036540970206261,-0.103515125811100));
res += mul(Get(s0,0,0), float4x4(0.024558903649449,0.009529558941722,-0.116068862378597,0.032036721706390,-0.109446384012699,0.003707656636834,0.244138255715370,0.047298301011324,0.388848483562469,0.100513845682144,-0.110718838870525,0.055299360305071,0.043758235871792,0.343796223402023,-0.029054243117571,0.034087989479303));
res += mul(Get(s0,0,dy), float4x4(-0.354356050491333,-0.173321142792702,0.146000564098358,-0.188317507505417,0.138040944933891,0.021526016294956,-0.142644435167313,-0.129131197929382,-0.083589181303978,0.022509537637234,-0.029620595276356,0.271984159946442,-0.194217324256897,0.185598641633987,-0.139134347438812,-0.212174907326698));
res += mul(Get(s0,dx,-dy), float4x4(0.080208927392960,-0.354903310537338,0.167545750737190,0.239332184195518,-0.161011159420013,0.128981918096542,-0.111169584095478,-0.189064279198647,0.036599908024073,-0.033700250089169,-0.106340408325195,0.072849869728088,-0.184741780161858,-0.056204754859209,-0.015296529047191,-0.044469565153122));
res += mul(Get(s0,dx,0), float4x4(-0.070637740194798,-0.177350312471390,-0.209219247102737,0.078424334526062,-0.013458371162415,-0.007269641850144,-0.027966096997261,-0.072481222450733,0.053140774369240,0.220257699489594,0.130079492926598,-0.037790294736624,0.107396572828293,0.016199750825763,-0.076319329440594,0.130162224173546));
res += mul(Get(s0,dx,dy), float4x4(0.475604385137558,-0.163951963186264,-0.013667710125446,-0.080479420721531,0.009766863659024,-0.048263777047396,0.044814538210630,-0.105214804410934,0.127246826887131,0.045895922929049,-0.286592155694962,0.101050794124603,0.024599453434348,-0.095291264355183,0.109770849347115,0.177964344620705));
res += mul(Get(s1,-dx,-dy), float4x4(-0.167154803872108,0.122742868959904,0.094452098011971,0.033794835209846,-0.181733578443527,-0.050329033285379,-0.170483604073524,0.029022840783000,-0.179205700755119,0.073522441089153,0.202503442764282,-0.018607879057527,-0.163014426827431,-0.035331249237061,-0.024697398766875,0.092733256518841));
res += mul(Get(s1,-dx,0), float4x4(0.093315444886684,0.036873344331980,0.088089086115360,0.299393683671951,0.290943115949631,0.147171914577484,0.080513015389442,0.043213330209255,-0.001834574970417,-0.125293582677841,-0.061614830046892,-0.016860770061612,0.261090397834778,0.514774560928345,0.257814079523087,0.054533734917641));
res += mul(Get(s1,-dx,dy), float4x4(-0.030567459762096,0.111523956060410,0.005395016632974,-0.069243371486664,0.080936767160892,-0.002046177862212,0.170116692781448,-0.182666376233101,0.000920764461625,0.120324932038784,-0.192983210086823,0.034966580569744,-0.082175746560097,0.163742735981941,-0.054197464138269,0.167945086956024));
res += mul(Get(s1,0,-dy), float4x4(-0.124546669423580,-0.174080684781075,0.013291633687913,0.351625561714172,0.063618548214436,0.079786300659180,0.029988320544362,-0.213211849331856,-0.176190093159676,0.218588307499886,-0.238423869013786,-0.000496981374454,0.177489697933197,-0.046586155891418,-0.026830492541194,-0.111189529299736));
res += mul(Get(s1,0,0), float4x4(0.012798167765141,0.095584236085415,-0.395449131727219,-0.125209361314774,-0.230606794357300,-0.100962981581688,-0.126854449510574,0.269456177949905,-0.192399635910988,0.205069795250893,0.063005410134792,0.119660526514053,-0.265893518924713,0.042184665799141,-0.316496759653091,-0.319798380136490));
res += mul(Get(s1,0,dy), float4x4(-0.445712029933929,-0.290141522884369,-0.099764972925186,-0.112411454319954,-0.567926287651062,0.038273118436337,0.059020735323429,-0.169893682003021,0.343423932790756,0.152663022279739,-0.103630088269711,0.092193283140659,-0.209092557430267,-0.053654927760363,0.170477554202080,-0.309310227632523));
res += mul(Get(s1,dx,-dy), float4x4(0.093809813261032,-0.015751207247376,0.192348971962929,-0.068887151777744,-0.010111627168953,0.020115569233894,0.041032582521439,-0.134985774755478,0.137081801891327,-0.079016096889973,-0.198767080903053,-0.060957744717598,-0.129004269838333,0.119241893291473,-0.117533281445503,-0.136733651161194));
res += mul(Get(s1,dx,0), float4x4(-0.052419386804104,0.037654764950275,-0.166760459542274,0.128697618842125,-0.340692549943924,0.060917392373085,-0.248824357986450,-0.380948960781097,-0.245764970779419,-0.031568661332130,0.227257445454597,-0.063200227916241,0.215126737952232,0.070649348199368,-0.082271933555603,0.112384766340256));
res += mul(Get(s1,dx,dy), float4x4(0.254260063171387,0.036269973963499,-0.092033199965954,0.001422662171535,0.160154551267624,0.108466841280460,-0.084587991237640,-0.129309192299843,-0.012817790731788,-0.108044438064098,-0.176802188158035,-0.039429701864719,0.054788488894701,0.185279846191406,-0.042298041284084,0.057193890213966));
res += mul(Get(s2,-dx,-dy), float4x4(0.025476731359959,-0.163471162319183,0.060736533254385,-0.128189221024513,-0.229399070143700,-0.026254152879119,-0.162453502416611,-0.029356801882386,0.052092064172029,-0.363891273736954,-0.146821826696396,-0.102066025137901,0.240673214197159,0.112216562032700,-0.000189073805814,0.098212152719498));
res += mul(Get(s2,-dx,0), float4x4(-0.028698865324259,-0.121134757995605,0.028382524847984,0.033749770373106,0.008297625929117,0.012905399315059,-0.038130756467581,-0.054402660578489,0.165847003459930,-0.365171253681183,0.180334880948067,-0.013202677480876,0.087186679244041,0.017773482948542,-0.045406144112349,0.167943999171257));
res += mul(Get(s2,-dx,dy), float4x4(-0.190295606851578,-0.101313687860966,0.010025737807155,-0.014655861072242,0.166990414261818,-0.062036331743002,-0.245269715785980,-0.004258860833943,-0.109946638345718,-0.409349620342255,0.289871692657471,0.092330910265446,0.060585480183363,-0.100016243755817,-0.046201523393393,-0.075504615902901));
res += mul(Get(s2,0,-dy), float4x4(0.011382497847080,-0.218346998095512,0.061508890241385,-0.330835551023483,-0.304674148559570,-0.178586661815643,-0.257485836744308,0.163610950112343,-0.070344448089600,-0.245381221175194,0.115922771394253,0.028356630355120,0.068285919725895,-0.086878925561905,-0.015654459595680,0.119556449353695));
res += mul(Get(s2,0,0), float4x4(0.235729575157166,0.145874723792076,0.486422508955002,-0.101759761571884,-0.036819458007813,-0.002419655909762,0.072533823549747,0.056407574564219,0.006231707055122,-0.167212367057800,0.017433825880289,-0.144264549016953,-0.382947355508804,-0.021908229216933,-0.047035794705153,0.099679969251156));
res += mul(Get(s2,0,dy), float4x4(-0.143467113375664,-0.094656191766262,0.375146567821503,-0.149950176477432,0.645938396453857,0.312308460474014,-0.322935104370117,-0.134559407830238,-0.224045008420944,-0.587382376194000,-0.118748307228088,-0.080731362104416,0.281810522079468,0.198663473129272,-0.036124691367149,0.137746945023537));
res += mul(Get(s2,dx,-dy), float4x4(-0.245996370911598,0.214547917246819,0.062391750514507,-0.124434329569340,0.042473591864109,-0.024944899603724,0.161420047283173,0.022360660135746,-0.249888688325882,-0.004042800981551,-0.132911920547485,-0.073305800557137,0.052687440067530,-0.286254584789276,-0.104057252407074,-0.008252795785666));
res += mul(Get(s2,dx,0), float4x4(0.066891498863697,0.196386963129044,0.098327033221722,0.004444254096597,0.172491908073425,0.038829416036606,-0.141875848174095,-0.076162226498127,-0.351883381605148,-0.585081160068512,0.045301299542189,-0.201851025223732,0.504245758056641,-0.216592058539391,0.141186624765396,0.102286666631699));
res += mul(Get(s2,dx,dy), float4x4(0.264428287744522,0.241670161485672,0.014446039684117,-0.004272463731468,-0.065203912556171,-0.037018064409494,0.049720574170351,-0.013083182275295,0.183365210890770,-0.459299862384796,0.211817547678947,0.098539382219315,-0.144268676638603,0.061828810721636,-0.064049996435642,-0.196668311953545));
res += mul(Get(s3,-dx,-dy), float4x4(0.035447813570499,-0.108842976391315,0.138060122728348,-0.022095769643784,-0.200705274939537,0.014684031717479,0.017539676278830,0.046006146818399,-0.013866424560547,0.026712477207184,0.147193044424057,0.111355997622013,0.243876814842224,-0.018663171678782,-0.026499353349209,0.004841025453061));
res += mul(Get(s3,-dx,0), float4x4(-0.306620031595230,-0.238422453403473,0.035446148365736,-0.061216820031404,-0.196170404553413,-0.033761389553547,0.245654836297035,-0.082317277789116,-0.208160936832428,-0.207373619079590,0.039605207741261,0.116200722754002,0.008009433746338,-0.079459212720394,-0.010072345845401,0.160707235336304));
res += mul(Get(s3,-dx,dy), float4x4(-0.224274620413780,-0.110581092536449,0.018646769225597,-0.141594886779785,0.040308918803930,0.020249316468835,0.066472858190536,-0.008705893531442,0.058843158185482,-0.006195453926921,-0.070439048111439,0.156802281737328,-0.077849574387074,-0.141759499907494,0.070104159414768,0.168044701218605));
res += mul(Get(s3,0,-dy), float4x4(-0.083630606532097,-0.011944279074669,0.227688297629356,-0.083425290882587,-0.032455991953611,-0.276069700717926,0.079650729894638,0.229625061154366,-0.202455610036850,-0.018833383917809,0.098225928843021,0.048350315541029,-0.127642914652824,-0.012442925944924,-0.387987494468689,0.037597272545099));
res += mul(Get(s3,0,0), float4x4(-0.252416849136353,0.186664462089539,0.342380553483963,-0.329486697912216,-0.290583074092865,-0.264740914106369,0.020227730274200,0.074766434729099,-0.099192544817924,0.177877470850945,0.487760990858078,-0.040873099118471,0.159606277942657,-0.051247376948595,0.109422720968723,-0.118506871163845));
res += mul(Get(s3,0,dy), float4x4(-0.029394345358014,0.184964582324028,0.086081221699715,0.107670232653618,0.296760082244873,0.034997273236513,-0.578775703907013,0.044515792280436,-0.015597490593791,-0.157144457101822,-0.382566660642624,0.130386531352997,-0.114160165190697,-0.100290611386299,0.234035283327103,-0.065568350255489));
res += mul(Get(s3,dx,-dy), float4x4(-0.272595047950745,0.161483198404312,-0.128668636083603,-0.091585107147694,0.106521040201187,0.397893369197845,0.096538148820400,-0.034956216812134,-0.091410964727402,0.048836980015039,0.049309313297272,-0.042729411274195,0.058151815086603,0.036823511123657,-0.142426833510399,-0.042746577411890));
res += mul(Get(s3,dx,0), float4x4(-0.016131795942783,-0.065495200455189,0.027100356295705,-0.001380216563120,0.007099567912519,0.196610048413277,-0.054185260087252,0.032795462757349,-0.013603697530925,-0.000602317391895,0.061723563820124,0.076301567256451,-0.088981322944164,0.001460817758925,0.162899702787399,0.093887835741043));
res += mul(Get(s3,dx,dy), float4x4(-0.367262035608292,-0.143025815486908,0.045912630856037,-0.116138495504856,0.085082523524761,0.115172080695629,-0.130260929465294,-0.053739432245493,-0.011295523494482,-0.117761678993702,0.170084685087204,0.061975885182619,-0.191952168941498,0.008654382079840,0.204484984278679,0.062134884297848));
res += mul(Get(s4,-dx,-dy), float4x4(-0.028831060975790,-0.083613105118275,0.012141870334744,-0.269572973251343,-0.113239496946335,0.044738188385963,-0.032207001000643,0.115160278975964,-0.244655475020409,0.158812344074249,-0.072812572121620,0.174081280827522,-0.029395230114460,0.192820191383362,-0.060201544314623,-0.266685366630554));
res += mul(Get(s4,-dx,0), float4x4(-0.003010575892404,0.050264976918697,-0.110849156975746,-0.145983263850212,0.103616364300251,-0.039560385048389,-0.024892888963223,0.169040828943253,0.033145956695080,0.099497310817242,-0.095983669161797,-0.564065754413605,0.000313466880471,0.209345161914825,0.194729223847389,-0.556904852390289));
res += mul(Get(s4,-dx,dy), float4x4(-0.210140869021416,-0.005070997402072,-0.081729732453823,-0.046568244695663,0.092516198754311,0.053881660103798,-0.024075027555227,-0.082760207355022,0.151693865656853,-0.022448623552918,-0.257199764251709,0.236970722675323,-0.049958642572165,0.157652795314789,-0.245632067322731,-0.221426114439964));
res += mul(Get(s4,0,-dy), float4x4(-0.190921351313591,-0.017016272991896,-0.017239401116967,-0.108395703136921,-0.004759592935443,0.001679895562120,0.169933617115021,-0.091228932142258,0.030227441340685,-0.062318291515112,0.276281088590622,0.365772247314453,-0.088030874729156,0.297672986984253,-0.116628110408783,-0.131705969572067));
res += mul(Get(s4,0,0), float4x4(-0.258659929037094,0.047270830720663,0.042573235929012,0.327884852886200,-0.065003991127014,-0.140558615326881,0.061926379799843,0.132644593715668,-0.081909678876400,-0.265578180551529,0.006163796409965,-0.126539260149002,-0.100944407284260,0.352050751447678,0.104031652212143,-0.200252503156662));
res += mul(Get(s4,0,dy), float4x4(0.198933139443398,0.092875830829144,0.029692454263568,-0.309330046176910,0.088696531951427,0.040184147655964,-0.306408047676086,-0.154966905713081,0.195698112249374,-0.150495335459709,-0.213157176971436,0.101939097046852,0.194577857851982,0.428700089454651,-0.025475967675447,-0.021640559658408));
res += mul(Get(s4,dx,-dy), float4x4(-0.009105542674661,0.023857757449150,0.001687176525593,-0.071592584252357,0.040649708360434,-0.061857629567385,-0.008344356901944,-0.002995966933668,0.028372064232826,-0.029902881011367,0.052627455443144,-0.110874913632870,0.020039243623614,-0.245110407471657,0.012953391298652,0.059534560889006));
res += mul(Get(s4,dx,0), float4x4(-0.230263099074364,0.378607898950577,-0.074893869459629,-0.376501679420471,-0.031147185713053,0.033623207360506,0.145905956625938,0.056238632649183,0.257415503263474,0.094856582581997,0.232955530285835,-0.169284239411354,0.165242344141006,-0.272440135478973,0.024215446785092,0.206057831645012));
res += mul(Get(s4,dx,dy), float4x4(0.042291969060898,0.131935745477676,-0.158620044589043,0.050871755927801,0.072825051844120,-0.062620639801025,-0.071565583348274,0.059302970767021,-0.021949879825115,0.006494928151369,-0.078363545238972,-0.069246128201485,-0.070601575076580,0.036894917488098,0.044651068747044,-0.012810165062547));
res += mul(Get(s5,-dx,-dy), float4x4(0.137825474143028,-0.024278817698359,-0.023579990491271,0.059700157493353,0.297927975654602,-0.116125680506229,0.189909398555756,0.282217502593994,-0.159571066498756,0.058412067592144,0.148952811956406,0.045744866132736,-0.020852999761701,-0.106280192732811,-0.079416334629059,0.349194258451462));
res += mul(Get(s5,-dx,0), float4x4(-0.044289000332355,0.284780144691467,-0.036198455840349,0.293637990951538,-0.385478615760803,-0.201988056302071,-0.171513378620148,0.612219154834747,0.039596199989319,0.168374285101891,0.017389651387930,-0.064439520239830,0.289762735366821,0.294922441244125,0.101075284183025,-0.135760799050331));
res += mul(Get(s5,-dx,dy), float4x4(0.212502300739288,0.021173592656851,-0.052308425307274,0.133949324488640,0.142474830150604,-0.112928844988346,-0.465186834335327,0.068228542804718,0.064415954053402,-0.240326210856438,0.013669497333467,0.085016861557961,0.304849982261658,0.003900578944013,-0.277321934700012,-0.059467453509569));
res += mul(Get(s5,0,-dy), float4x4(-0.173286333680153,-0.209653317928314,-0.072605103254318,0.054207738488913,-0.593373358249664,-0.083611041307449,0.118640795350075,0.228255480527878,0.119596004486084,-0.241884648799896,0.048102449625731,-0.151375681161880,0.214313164353371,-0.013519683852792,0.185776308178902,-0.288359731435776));
res += mul(Get(s5,0,0), float4x4(-0.342503786087036,-0.293809115886688,0.103867590427399,0.768849313259125,-0.373905241489410,-0.050366632640362,0.093782745301723,0.053528230637312,-0.324948787689209,-0.570248782634735,-0.382179945707321,0.458686709403992,0.136632367968559,-0.133503764867783,-0.203320369124413,-0.298827201128006));
res += mul(Get(s5,0,dy), float4x4(0.299508929252625,-0.046308439224958,-0.110091820359230,0.140999555587769,0.275063037872314,0.101141393184662,-0.490460813045502,0.127683579921722,0.210315182805061,-0.121094152331352,0.335166364908218,0.172366410493851,0.251647174358368,-0.041962195187807,-0.118876390159130,0.173857688903809));
res += mul(Get(s5,dx,-dy), float4x4(-0.083584561944008,0.075045593082905,-0.185659989714622,-0.043231330811977,-0.488607853651047,-0.323104709386826,0.131934881210327,0.044096957892179,0.005504238884896,-0.042920209467411,-0.140972033143044,0.019979715347290,0.348492294549942,-0.110350877046585,-0.075732693076134,0.246431604027748));
res += mul(Get(s5,dx,0), float4x4(0.300133138895035,-0.037241894751787,0.222307533025742,-0.051786620169878,-0.352346867322922,-0.520439445972443,-0.327344149351120,0.277464210987091,0.057149123400450,0.265389174222946,0.015248253010213,-0.104294545948505,0.284642428159714,-0.113286189734936,0.065780870616436,0.380233675241470));
res += mul(Get(s5,dx,dy), float4x4(-0.033883683383465,0.088564850389957,0.076713092625141,-0.095256596803665,0.274864226579666,-0.273404210805893,-0.399740010499954,0.001003888202831,-0.140005573630333,-0.002728041959926,0.054339945316315,-0.005405305419117,-0.136117920279503,0.186052978038788,0.132797077298164,0.036568347364664));
res = max(float4(0, 0, 0, 0), res) + float4(0.106105506420135,0.025994136929512,-0.115921244025230,0.215638428926468) * min(float4(0, 0, 0, 0), res);
return res;
}