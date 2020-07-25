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
res += mul(Get(s0,-dx,-dy), float4x4(-0.018680125474930,0.178936570882797,-0.007237578742206,-0.155744388699532,0.051220133900642,0.020056255161762,0.009989782236516,-0.056202594190836,-0.081589847803116,-0.007141058798879,0.046120453625917,0.424873560667038,0.111219294369221,0.200276359915733,-0.019118018448353,0.228544786572456));
res += mul(Get(s0,-dx,0), float4x4(-0.004254159983248,-0.057034254074097,-0.268847137689590,-0.022409107536077,0.084868401288986,0.081603817641735,-0.218795463442802,0.032318659126759,-0.035868797451258,-0.206239625811577,0.055284664034843,0.014396413229406,0.068388812243938,0.066786892712116,0.207910656929016,-0.000774130574428));
res += mul(Get(s0,-dx,dy), float4x4(-0.071270965039730,-0.121913969516754,0.074378244578838,0.172802552580833,-0.070637963712215,0.000430185871664,0.220821931958199,-0.005336042493582,-0.021747983992100,-0.171906441450119,0.101377472281456,0.012165687978268,-0.184288188815117,0.151173159480095,0.028948089107871,0.081233009696007));
res += mul(Get(s0,0,-dy), float4x4(0.232933640480042,0.284829020500183,0.138394951820374,-0.160835251212120,-0.043878044933081,0.038510892540216,-0.119190514087677,0.033192448318005,0.025101430714130,0.067393839359283,0.061863534152508,0.153209060430527,-0.143441557884216,0.042826481163502,-0.068462319672108,0.052126288414001));
res += mul(Get(s0,0,0), float4x4(-0.166316121816635,0.149140596389771,-0.033123601227999,-0.294233202934265,0.081680186092854,0.103610455989838,-0.118099190294743,0.062709167599678,0.133218050003052,-0.016827760264277,0.109213992953300,0.048491090536118,0.082020200788975,-0.187860414385796,-0.160153210163116,0.015329783782363));
res += mul(Get(s0,0,dy), float4x4(-0.045044094324112,-0.137164384126663,-0.181622490286827,0.139328226447105,0.112554647028446,-0.036978602409363,-0.117751128971577,0.068173162639141,-0.110175244510174,0.063189253211021,-0.114574611186981,0.021989690139890,-0.017191754654050,0.152126759290695,-0.055425230413675,0.001897510839626));
res += mul(Get(s0,dx,-dy), float4x4(0.064720474183559,0.035529877990484,0.163376539945602,-0.024856019765139,0.239135250449181,0.031294390559196,0.057750813663006,0.009632009081542,0.041255094110966,0.201981693506241,0.020245183259249,0.026643984019756,0.095121569931507,0.135558202862740,0.026708193123341,0.010139980353415));
res += mul(Get(s0,dx,0), float4x4(0.005344063509256,0.086238197982311,0.043480392545462,-0.151315361261368,-0.107237748801708,-0.052946954965591,-0.015947075560689,0.077858433127403,-0.121347852051258,-0.163019895553589,-0.002825935138389,-0.108627565205097,0.018418708816171,0.063244797289371,-0.018955115228891,0.105709806084633));
res += mul(Get(s0,dx,dy), float4x4(-0.105196513235569,-0.005433805752546,0.119572609663010,0.020183086395264,0.074399881064892,-0.209905311465263,-0.068969666957855,0.026443250477314,0.101706065237522,-0.000950362533331,0.061746869236231,-0.097260266542435,0.160791382193565,-0.226107656955719,-0.110309548676014,0.318056970834732));
res += mul(Get(s1,-dx,-dy), float4x4(-0.129463955760002,-0.023927610367537,-0.248210102319717,-0.004897595848888,0.157702982425690,-0.081193201243877,-0.001170141738839,0.105274803936481,-0.092098467051983,0.138254895806313,-0.090006768703461,-0.141045182943344,0.131623089313507,0.099403537809849,-0.037121705710888,-0.080449670553207));
res += mul(Get(s1,-dx,0), float4x4(0.013777890242636,-0.137722387909889,-0.059178441762924,-0.054325170814991,0.013048881664872,-0.059693727642298,0.103610225021839,0.028762254863977,0.110230632126331,-0.102164760231972,-0.191735729575157,-0.088351421058178,-0.204854682087898,-0.194084003567696,-0.021629665046930,-0.042531669139862));
res += mul(Get(s1,-dx,dy), float4x4(-0.000831893761642,0.131034567952156,-0.022133721038699,-0.105529978871346,0.085414163768291,-0.183007106184959,-0.034278303384781,0.264327049255371,-0.158281773328781,-0.154149726033211,0.201473593711853,-0.026205407455564,-0.156107842922211,-0.021365275606513,0.066677659749985,-0.088958717882633));
res += mul(Get(s1,0,-dy), float4x4(0.098664514720440,-0.047433115541935,-0.169620588421822,-0.003145029302686,0.078817136585712,0.017895635217428,-0.111588872969151,-0.037106033414602,0.215522989630699,-0.035207029432058,-0.150686532258987,-0.202140197157860,0.319941520690918,-0.002591105876490,-0.032917387783527,-0.039011027663946));
res += mul(Get(s1,0,0), float4x4(-0.095825254917145,0.089947775006294,-0.115731000900269,-0.144696712493896,0.210244059562683,-0.047255083918571,0.265299886465073,0.075963892042637,-0.197883054614067,-0.000214623301872,-0.015133833512664,-0.151477873325348,-0.359280109405518,0.018468294292688,-0.072947569191456,0.042482364922762));
res += mul(Get(s1,0,dy), float4x4(0.207788810133934,0.063610449433327,0.011073937639594,-0.058124881237745,-0.197985261678696,-0.134716123342514,0.077619470655918,-0.200412318110466,0.089987002313137,-0.031763661652803,0.057550974190235,-0.032215699553490,0.075648069381714,0.002070695627481,-0.119444079697132,-0.177530750632286));
res += mul(Get(s1,dx,-dy), float4x4(0.162194609642029,0.053919382393360,-0.128995597362518,-0.210401564836502,-0.033150069415569,0.065279282629490,0.092749409377575,-0.018678328022361,-0.102116309106350,0.002154319547117,0.072415322065353,-0.027773501351476,0.029513923451304,-0.311977714300156,-0.065646171569824,-0.113219596445560));
res += mul(Get(s1,dx,0), float4x4(-0.030068932101130,-0.178577080368996,-0.030112605541945,-0.020342689007521,0.221356406807899,0.051050312817097,0.114379659295082,0.228778377175331,0.036178641021252,-0.186829105019569,-0.032051410526037,0.124392971396446,-0.058000858873129,0.118920221924782,0.028805809095502,-0.045680012553930));
res += mul(Get(s1,dx,dy), float4x4(-0.136000677943230,-0.086105249822140,-0.102303214371204,0.020409064367414,-0.086262032389641,-0.142548322677612,-0.058188609778881,0.074960418045521,0.008791043423116,-0.041578300297260,0.000634027586784,-0.248117893934250,-0.052361838519573,0.118812970817089,-0.055874992161989,-0.109899342060089));
res += mul(Get(s2,-dx,-dy), float4x4(-0.025681167840958,0.192141726613045,-0.054974842816591,-0.017779596149921,-0.099197313189507,0.036224406212568,-0.050027575343847,0.276795685291290,0.098024904727936,0.120153680443764,0.026112455874681,0.032947957515717,0.109228506684303,-0.113041736185551,-0.060827422887087,-0.063356332480907));
res += mul(Get(s2,-dx,0), float4x4(0.059677183628082,0.127358093857765,-0.191134139895439,0.134532704949379,-0.101217515766621,0.009104854427278,0.138273924589157,0.251237183809280,0.040934808552265,0.022101998329163,0.095657870173454,0.019426042214036,0.183993816375732,-0.250389039516449,-0.228086665272713,-0.265747398138046));
res += mul(Get(s2,-dx,dy), float4x4(-0.103006482124329,0.147842511534691,-0.002802297007293,0.047231607139111,-0.005477088969201,-0.045885644853115,0.126340717077255,-0.193570598959923,0.027414169162512,0.009895609691739,-0.157878816127777,0.048279117792845,-0.103475555777550,-0.144431337714195,-0.005659131333232,0.061244543641806));
res += mul(Get(s2,0,-dy), float4x4(0.014134635217488,0.063266173005104,-0.015927975997329,0.105077162384987,0.143717184662819,-0.142715498805046,0.040314696729183,-0.129346281290054,0.014356895349920,-0.129392549395561,0.016416715458035,-0.191993117332458,-0.172267124056816,-0.100302487611771,-0.005655580665916,-0.062700986862183));
res += mul(Get(s2,0,0), float4x4(-0.118760928511620,0.044077370315790,0.131895035505295,-0.087024405598640,0.014386844821274,0.105115227401257,-0.033009883016348,-0.096988484263420,0.065044119954109,0.150249570608139,0.039824817329645,0.060010094195604,0.164667531847954,-0.006109134759754,-0.061197165399790,0.072591237723827));
res += mul(Get(s2,0,dy), float4x4(-0.024870609864593,0.020881094038486,-0.080654010176659,-0.036285705864429,-0.046067163348198,-0.145587965846062,0.019496614113450,0.093361712992191,-0.005989944562316,0.140738904476166,-0.263340979814529,0.000432979635661,-0.096257582306862,0.088384814560413,0.112572200596333,-0.086245104670525));
res += mul(Get(s2,dx,-dy), float4x4(0.042738564312458,-0.071873456239700,0.099377423524857,0.045922331511974,-0.016907807439566,-0.049215093255043,0.304028421640396,-0.001384730101563,0.101697742938995,0.005564846098423,0.215907096862793,0.015988737344742,0.035587623715401,-0.062538012862206,0.025458943098783,-0.057793460786343));
res += mul(Get(s2,dx,0), float4x4(-0.007547224871814,-0.075416013598442,0.106412366032600,0.009205715730786,0.033662397414446,-0.099268913269043,-0.084221161901951,0.097566522657871,-0.046064145863056,0.167022734880447,0.017660761252046,0.149796456098557,0.023714939132333,0.005121364723891,0.073721744120121,0.095684684813023));
res += mul(Get(s2,dx,dy), float4x4(-0.149096861481667,0.027899945154786,-0.085908845067024,0.159163817763329,0.105421327054501,0.038685847073793,-0.030330840498209,-0.060052827000618,0.061213146895170,0.040962275117636,-0.048087831586599,0.027800934389234,0.037484150379896,0.023541817441583,0.049546971917152,-0.177288547158241));
res += mul(Get(s3,-dx,-dy), float4x4(-0.080628179013729,-0.073327213525772,-0.120648577809334,0.004534039180726,-0.289876639842987,0.005138541571796,0.024563701823354,-0.116312049329281,-0.012883490882814,-0.054143529385328,-0.174903199076653,-0.038644306361675,-0.093674339354038,-0.197320714592934,-0.059301331639290,0.118450969457626));
res += mul(Get(s3,-dx,0), float4x4(-0.143277511000633,-0.120803683996201,-0.074610702693462,-0.036633551120758,0.024626841768622,-0.046392664313316,-0.052514001727104,0.164529874920845,-0.259836435317993,-0.123024471104145,-0.074009262025356,-0.147988021373749,-0.118213020265102,0.239894807338715,-0.093961127102375,0.033959828317165));
res += mul(Get(s3,-dx,dy), float4x4(-0.254417359828949,0.044620614498854,0.073403231799603,0.243902415037155,-0.087443374097347,0.101461902260780,-0.005740202963352,0.011092003434896,-0.120227232575417,0.122728936374187,0.019038096070290,-0.192323938012123,-0.076327137649059,-0.098725058138371,0.300641775131226,-0.007441670168191));
res += mul(Get(s3,0,-dy), float4x4(0.024460881948471,-0.045609422028065,-0.236930593848228,0.153044551610947,0.028889890760183,-0.139612376689911,-0.037677355110645,0.263763159513474,-0.037130061537027,-0.143047913908958,-0.041869215667248,-0.166738599538803,0.172058001160622,0.041886009275913,-0.119132257997990,0.088971383869648));
res += mul(Get(s3,0,0), float4x4(0.108845263719559,-0.001936652581207,-0.005659347865731,-0.006860215682536,-0.068854376673698,0.159938171505928,-0.079827718436718,-0.001917575486004,-0.006550598423928,-0.101726979017258,-0.093441456556320,0.192421361804008,-0.025254303589463,-0.175620272755623,0.276078641414642,0.223447129130363));
res += mul(Get(s3,0,dy), float4x4(0.145562201738358,0.049591202288866,0.072047092020512,0.160283803939819,0.065045729279518,0.162503972649574,-0.056972332298756,-0.161126211285591,-0.108534842729568,-0.118319243192673,0.105582252144814,0.007374441251159,0.145425900816917,-0.006955019664019,-0.138347864151001,-0.124843128025532));
res += mul(Get(s3,dx,-dy), float4x4(-0.058953076601028,0.101782120764256,-0.017754487693310,-0.062238711863756,-0.165511935949326,0.310560733079910,0.134134650230408,-0.285351514816284,-0.060786753892899,-0.160334974527359,0.009675534442067,0.113516710698605,-0.174091145396233,-0.007086621131748,-0.014338606037199,-0.000721612654161));
res += mul(Get(s3,dx,0), float4x4(0.034570615738630,-0.055157124996185,0.077418431639671,-0.071265608072281,-0.271437972784042,-0.056639067828655,0.375225037336349,0.072867497801781,0.096124358475208,-0.195838287472725,0.097330793738365,-0.101964138448238,0.168408036231995,0.073241561651230,0.053072486072779,-0.061909787356853));
res += mul(Get(s3,dx,dy), float4x4(-0.141389042139053,-0.058619797229767,0.258323431015015,0.059767816215754,-0.041843630373478,-0.031994473189116,0.122694939374924,-0.107098549604416,-0.241535007953644,0.117177560925484,0.124462708830833,-0.124288968741894,0.059079293161631,0.120240546762943,-0.089842051267624,0.067988067865372));
return max(float4(0,0,0,0), res);
}
