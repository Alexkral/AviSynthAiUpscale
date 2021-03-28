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
float4 res = float4(-0.010599360801280,0.100810915231705,0.004068054258823,-0.309449642896652);
res += mul(Get(s0,-dx,-dy), float4x4(-0.102571293711662,-0.097603790462017,-0.074772156774998,0.151729375123978,-0.023182334378362,-0.172391206026077,0.288328230381012,-0.111907310783863,-0.138604968786240,-0.015890765935183,-0.220451533794403,-0.162798106670380,0.186618834733963,-0.065986759960651,0.018045792356133,-0.367159277200699));
res += mul(Get(s0,-dx,0), float4x4(0.038201741874218,0.016367921605706,0.002402702346444,-0.358848005533218,-0.007971213199198,-0.215741977095604,0.204654827713966,0.148543506860733,-0.226970165967941,0.017313802614808,0.279814034700394,0.092790737748146,0.110187433660030,-0.082203298807144,-0.226135075092316,0.036811824887991));
res += mul(Get(s0,-dx,dy), float4x4(0.102772377431393,0.020654164254665,-0.233760267496109,0.094193913042545,0.082482561469078,-0.205672293901443,-0.242609769105911,0.236335083842278,-0.120900563895702,-0.029321607202291,-0.285468876361847,0.025693263858557,0.002243488095701,0.074915647506714,-0.070487551391125,-0.179473787546158));
res += mul(Get(s0,0,-dy), float4x4(-0.364625573158264,0.000567491049878,-0.034089811146259,0.359110444784164,-0.037718083709478,-0.190888792276382,-0.255517691373825,0.046126112341881,-0.099480368196964,-0.091386504471302,0.018023919314146,0.080890908837318,0.104327753186226,0.003338199574500,0.135887831449509,-0.212645009160042));
res += mul(Get(s0,0,0), float4x4(0.019581088796258,-0.135079473257065,-0.165169537067413,-0.293178468942642,0.065122984349728,0.164629399776459,0.324634462594986,-0.487104833126068,-0.020433545112610,0.164284512400627,-0.315756827592850,0.120748989284039,-0.134190022945404,-0.244018673896790,0.382788628339767,0.439243257045746));
res += mul(Get(s0,0,dy), float4x4(0.209545359015465,-0.067675106227398,-0.171951472759247,-0.114041261374950,0.139005705714226,-0.132837504148483,-0.095620796084404,-0.107736386358738,0.046529028564692,0.049371093511581,-0.282399982213974,0.048382099717855,0.027216410264373,-0.216884315013885,-0.203056231141090,0.398105978965759));
res += mul(Get(s0,dx,-dy), float4x4(-0.174167051911354,-0.021714262664318,-0.197154670953751,-0.012449666857719,-0.008294552564621,0.088126726448536,-0.070180542767048,-0.189728349447250,0.042893454432487,-0.050316214561462,0.007441660854965,-0.164182081818581,-0.024171015247703,0.165366366505623,-0.079566635191441,-0.184216991066933));
res += mul(Get(s0,dx,0), float4x4(-0.071704290807247,-0.300802499055862,0.123629011213779,-0.001594792236574,-0.000730452709831,-0.160508140921593,-0.139287680387497,-0.278864055871964,-0.006136814132333,-0.169564396142960,-0.037842430174351,-0.176280379295349,-0.112116411328316,-0.206227466464043,-0.370682567358017,0.006481137592345));
res += mul(Get(s0,dx,dy), float4x4(-0.013193506747484,-0.015218588523567,0.079886890947819,0.042275834828615,0.048080857843161,-0.002041006693617,-0.022808605805039,-0.002225115895271,0.024889996275306,-0.046639267355204,0.047837283462286,0.020451975986362,0.001016875263304,-0.241404294967651,-0.115880064666271,0.102711088955402));
res += mul(Get(s1,-dx,-dy), float4x4(0.040395718067884,-0.057566255331039,-0.014341763220727,0.079544268548489,-0.018581667914987,-0.094872541725636,-0.040044490247965,0.077164642512798,-0.018924597650766,0.099840134382248,-0.143354773521423,-0.073854811489582,0.017534546554089,0.043287508189678,0.182106733322144,0.122026152908802));
res += mul(Get(s1,-dx,0), float4x4(0.241381525993347,-0.063531152904034,-0.001942857983522,-0.390608340501785,0.067337274551392,-0.066455148160458,0.135904312133789,-0.032918963581324,-0.054663158953190,-0.077874451875687,-0.133790478110313,0.036344252526760,-0.073889471590519,0.507144510746002,0.273519158363342,0.298655122518539));
res += mul(Get(s1,-dx,dy), float4x4(0.103672631084919,0.075309403240681,-0.116960920393467,-0.297034949064255,0.042575661092997,-0.050245288759470,0.001575606642291,0.048301126807928,-0.041421145200729,-0.196539565920830,-0.030674884095788,-0.043386738747358,-0.014667779207230,-0.159536570310593,0.227161139249802,0.012525292113423));
res += mul(Get(s1,0,-dy), float4x4(-0.003183800727129,-0.033395070582628,-0.070204824209213,0.077309936285019,0.000915188633371,0.089260451495647,-0.145323991775513,0.082755915820599,0.218012347817421,0.053250677883625,0.024370765313506,-0.552479624748230,0.017670126631856,0.035865500569344,-0.065012782812119,-0.069215655326843));
res += mul(Get(s1,0,0), float4x4(-0.059074096381664,0.242470428347588,0.164626106619835,0.104580849409103,-0.138908520340919,-0.284757226705551,0.143115967512131,0.087910644710064,0.082854501903057,-0.181754752993584,-0.294361919164658,-0.228961154818535,0.002827508840710,-0.382847756147385,-0.266138076782227,-0.134258940815926));
res += mul(Get(s1,0,dy), float4x4(0.039126124233007,-0.291522800922394,0.197087675333023,0.080983415246010,0.005376792047173,0.135118812322617,0.023439625278115,0.278376936912537,-0.013082368299365,-0.244968995451927,0.021439863368869,-0.062250647693872,-0.112350381910801,0.332783281803131,0.281690269708633,-0.106952324509621));
res += mul(Get(s1,dx,-dy), float4x4(-0.057847909629345,0.004345077089965,-0.128178328275681,-0.038758855313063,-0.018112301826477,-0.084879733622074,0.192062303423882,0.121228158473969,0.187701940536499,-0.105788350105286,0.044380575418472,-0.197865784168243,0.074181757867336,0.023331113159657,-0.253622710704803,-0.055185385048389));
res += mul(Get(s1,dx,0), float4x4(-0.124764740467072,0.027793174609542,-0.089208170771599,0.037373118102551,0.042035546153784,-0.159951969981194,-0.526104867458344,0.073488853871822,0.096425168216228,0.028309194371104,0.090852849185467,-0.135878026485443,-0.003546945750713,-0.443151921033859,-0.258888334035873,-0.057858176529408));
res += mul(Get(s1,dx,dy), float4x4(-0.085490286350250,-0.187833085656166,0.206434100866318,0.085082031786442,-0.005561798345298,-0.037851937115192,0.074974074959755,-0.006737818475813,-0.067366898059845,0.043164961040020,0.047286532819271,-0.147416919469833,-0.090401425957680,0.030031519010663,0.051505673676729,-0.098604537546635));
res += mul(Get(s2,-dx,-dy), float4x4(0.102669611573219,0.069724567234516,-0.119986735284328,0.014510476961732,0.011707496829331,0.063342697918415,-0.066753558814526,-0.080439470708370,-0.011716298758984,0.147746592760086,0.059698417782784,0.005818070378155,-0.026814498007298,-0.055018033832312,-0.045406196266413,-0.082089751958847));
res += mul(Get(s2,-dx,0), float4x4(0.112078994512558,-0.096847079694271,-0.142784625291824,-0.079310327768326,0.111442461609840,0.186505168676376,0.132024452090263,-0.269863367080688,0.101499050855637,-0.136556014418602,0.110019035637379,0.097099296748638,0.007540061604232,-0.024106934666634,0.084262385964394,0.035333666950464));
res += mul(Get(s2,-dx,dy), float4x4(-0.101720862090588,0.148933589458466,0.073066473007202,0.055652484297752,0.032546192407608,-0.124560095369816,-0.233420610427856,-0.013694856315851,0.056004121899605,-0.212037831544876,-0.045564778149128,0.000116942712339,0.092603132128716,-0.016976900398731,0.096432067453861,0.012194891460240));
res += mul(Get(s2,0,-dy), float4x4(0.107432305812836,0.080894336104393,0.082245819270611,-0.093597225844860,0.097501926124096,0.135450005531311,0.038826890289783,0.010018811561167,-0.050687044858932,-0.050823304802179,0.002826701151207,0.147181347012520,-0.110185153782368,-0.103907644748688,0.201967686414719,-0.022129584103823));
res += mul(Get(s2,0,0), float4x4(-0.495725274085999,-0.339682251214981,0.023314829915762,0.551481664180756,-0.667770922183990,0.179750636219978,0.391900807619095,-0.101125754415989,-0.223378524184227,-0.278564423322678,0.018678132444620,0.326683461666107,-0.065330676734447,0.185210019350052,0.231306180357933,-0.016118045896292));
res += mul(Get(s2,0,dy), float4x4(0.292701661586761,-0.040086187422276,-0.232266440987587,-0.129488855600357,0.165462777018547,0.023358812555671,-0.129759073257446,0.084950968623161,-0.058630671352148,0.008819358423352,0.102571263909340,0.111601509153843,0.123084366321564,0.213618531823158,0.048756416887045,-0.082077495753765));
res += mul(Get(s2,dx,-dy), float4x4(0.060610633343458,0.014687895774841,0.124240040779114,0.001827308442444,0.019369425252080,-0.101600304245949,0.128329381346703,-0.061044421046972,0.040772959589958,0.052253011614084,0.138302281498909,0.045085269957781,-0.068716123700142,0.122082136571407,-0.127090007066727,-0.160555019974709));
res += mul(Get(s2,dx,0), float4x4(0.124158702790737,0.092473879456520,0.048482373356819,-0.146096661686897,0.139240592718124,-0.042972709983587,-0.029418284073472,0.077674716711044,0.260858595371246,0.146048933267593,-0.011991848237813,-0.327194571495056,-0.064414598047733,0.031630691140890,-0.164282500743866,0.180787399411201));
res += mul(Get(s2,dx,dy), float4x4(0.066917024552822,0.319613814353943,0.044767118990421,-0.005878442898393,0.091822728514671,0.039992056787014,-0.110293410718441,-0.021836666390300,0.117330148816109,-0.059480313211679,-0.056385517120361,-0.176311329007149,0.046268653124571,-0.096256285905838,0.106149330735207,-0.167763233184814));
res += mul(Get(s3,-dx,-dy), float4x4(0.027261869981885,-0.124828860163689,-0.090238466858864,0.285675495862961,0.085225500166416,-0.004951299633831,-0.046102374792099,-0.170338079333305,-0.164170637726784,-0.015682764351368,0.181894361972809,0.204641133546829,-0.180774793028831,-0.102788470685482,0.169332966208458,0.181774854660034));
res += mul(Get(s3,-dx,0), float4x4(0.031593628227711,-0.426773756742477,0.152435153722763,0.374837696552277,-0.012264737859368,0.212036758661270,0.371473461389542,0.345155119895935,-0.146574571728706,0.178481459617615,0.201222747564316,0.080810040235519,-0.121529318392277,0.107393249869347,-0.148347198963165,-0.019852943718433));
res += mul(Get(s3,-dx,dy), float4x4(-0.009573629125953,0.236105069518089,-0.260193586349487,0.334804892539978,-0.073953241109848,-0.033513549715281,0.264750659465790,0.370156317949295,0.018056426197290,-0.015152032487094,0.220665410161018,-0.008202029392123,-0.058451399207115,-0.083661183714867,0.076455876231194,-0.016528282314539));
res += mul(Get(s3,0,-dy), float4x4(0.016135336831212,-0.162047475576401,-0.058842483907938,0.224401608109474,0.011638712137938,-0.531709313392639,0.105917595326900,0.037866793572903,-0.162391334772110,-0.019453717395663,-0.077816188335419,0.063088990747929,-0.280741006135941,-0.157120078802109,-0.148132994771004,0.334800481796265));
res += mul(Get(s3,0,0), float4x4(0.181033968925476,0.187323898077011,0.292928308248520,-0.127556487917900,0.108934029936790,-0.015258046798408,-0.090969286859035,-0.071609430015087,-0.213231235742569,-0.167019680142403,0.049627818167210,0.173277273774147,-0.173780232667923,-0.056013789027929,0.147045731544495,-0.011151724494994));
res += mul(Get(s3,0,dy), float4x4(0.185084685683250,-0.377151489257813,-0.242763042449951,0.524383962154388,0.063381798565388,-0.057026725262403,0.065890349447727,0.171826869249344,-0.062551684677601,0.190358772873878,-0.159516066312790,0.210684731602669,-0.042755022644997,-0.302436649799347,-0.086056366562843,-0.226813167333603));
res += mul(Get(s3,dx,-dy), float4x4(-0.014155411161482,-0.078265763819218,0.077261589467525,0.303987652063370,-0.039415784180164,-0.250645756721497,0.165240168571472,0.160533025860786,-0.017825340852141,0.077745355665684,0.025118362158537,-0.012312235310674,-0.109615467488766,0.054467890411615,-0.406290322542191,0.156495898962021));
res += mul(Get(s3,dx,0), float4x4(0.078555762767792,0.033662278205156,-0.639722526073456,0.318774580955505,0.050952859222889,-0.040097527205944,0.078301377594471,0.108592122793198,-0.067802481353283,0.110123798251152,-0.002445402089506,-0.009467585012317,-0.072179265320301,-0.180882915854454,0.154332235455513,0.163844212889671));
res += mul(Get(s3,dx,dy), float4x4(0.145819708704948,-0.062129374593496,-0.019119920209050,0.308449506759644,-0.005110625177622,0.154643222689629,0.104199737310410,0.183657065033913,-0.106497935950756,-0.149255901575089,0.087207287549973,0.048255808651447,-0.030639827251434,-0.031842634081841,0.078040830790997,0.193814635276794));
res += mul(Get(s4,-dx,-dy), float4x4(0.006754149682820,0.370401710271835,0.169285058975220,0.049069397151470,0.027007527649403,-0.108777418732643,-0.136277288198471,-0.191722765564919,-0.115018591284752,-0.068519607186317,0.060193013399839,0.151793897151947,0.055801484733820,0.051525909453630,0.013009270653129,-0.134568825364113));
res += mul(Get(s4,-dx,0), float4x4(0.094042710959911,0.165497928857803,-0.111213162541389,0.050457041710615,0.066633701324463,-0.215389132499695,-0.148933291435242,-0.245211094617844,-0.009169322438538,0.150530442595482,-0.087701834738255,0.003773169359192,0.033233448863029,-0.250005930662155,-0.153972432017326,0.056965455412865));
res += mul(Get(s4,-dx,dy), float4x4(-0.014533483423293,-0.300582408905029,-0.070820726454258,0.174193650484085,0.055833529680967,0.111701011657715,-0.189504042267799,-0.183655068278313,0.071349315345287,-0.106973923742771,-0.153895840048790,0.019819306209683,-0.107609294354916,0.151873722672462,0.153693363070488,-0.105598539113998));
res += mul(Get(s4,0,-dy), float4x4(0.020842308178544,0.048380669206381,0.069677710533142,0.035636428743601,-0.011679291725159,0.117666229605675,0.193128749728203,0.040708139538765,-0.165367245674133,0.018027944490314,0.280335962772369,-0.006006516981870,0.006133485585451,0.096984557807446,0.245980277657509,-0.095735356211662));
res += mul(Get(s4,0,0), float4x4(0.012585899792612,-0.239866688847542,0.145811915397644,0.306661128997803,0.047996040433645,0.301814764738083,0.309581786394119,-0.304319173097610,0.086421549320221,0.365075170993805,0.176223680377007,-0.278619349002838,-0.209057241678238,-0.146756142377853,0.052979961037636,0.216140881180763));
res += mul(Get(s4,0,dy), float4x4(-0.012582298368216,0.044552415609360,0.052796315401793,-0.049114853143692,0.045716449618340,0.238119781017303,0.157988160848618,-0.252635180950165,0.194558471441269,-0.261801093816757,-0.117261588573456,-0.070762947201729,-0.299155205488205,0.167402192950249,0.210411846637726,0.125810816884041));
res += mul(Get(s4,dx,-dy), float4x4(-0.000364300416550,-0.091860830783844,0.233302876353264,0.033288143575191,-0.055451706051826,-0.018161268904805,-0.010565151460469,-0.157066524028778,-0.064343698322773,0.130994468927383,0.221198320388794,0.090147569775581,-0.077612794935703,0.098413996398449,0.033369157463312,-0.071264341473579));
res += mul(Get(s4,dx,0), float4x4(-0.007918407209218,-0.018595298752189,0.071047350764275,-0.008389943279326,-0.118264392018318,-0.188996955752373,-0.202551215887070,-0.336094707250595,0.049700468778610,0.138663619756699,-0.027956193313003,0.056562706828117,0.000345771288266,-0.094442941248417,0.039848156273365,0.247426122426987));
res += mul(Get(s4,dx,dy), float4x4(-0.061490021646023,-0.062238637357950,-0.139273062348366,-0.062755331397057,-0.006298131775111,0.190388917922974,-0.009264466352761,-0.134377703070641,0.105434708297253,0.095752663910389,0.001209183246829,0.219547510147095,-0.057611074298620,0.054207820445299,-0.035961765795946,0.113367021083832));
res += mul(Get(s5,-dx,-dy), float4x4(0.075082726776600,-0.023465162143111,-0.322159260511398,-0.185955315828323,0.191225856542587,-0.181474715471268,0.035098951309919,-0.285821408033371,-0.066726297140121,-0.131600499153137,-0.348917394876480,-0.052853915840387,0.090301737189293,-0.056774031370878,-0.120263360440731,-0.074124909937382));
res += mul(Get(s5,-dx,0), float4x4(0.042207218706608,-0.141143873333931,-0.274548530578613,-0.124082244932652,0.041378460824490,-0.193543851375580,-0.230509176850319,0.011007562279701,-0.032375831156969,-0.100546471774578,-0.010191490873694,-0.243501350283623,0.177548408508301,-0.199260994791985,-0.067119054496288,-0.144478201866150));
res += mul(Get(s5,-dx,dy), float4x4(-0.167594119906425,0.238417297601700,0.010412083938718,-0.015406622551382,-0.194352284073830,0.042356349527836,0.199540793895721,-0.008385439403355,0.011789637617767,0.025305917486548,0.017715848982334,0.031120788305998,0.118873499333858,-0.165621533989906,-0.411548316478729,-0.097734585404396));
res += mul(Get(s5,0,-dy), float4x4(0.048100952059031,-0.029815917834640,-0.129121869802475,-0.294289737939835,-0.125721171498299,-0.071161791682243,0.367005914449692,0.282118171453476,-0.094270139932632,-0.008572665974498,-0.029922710731626,0.140196174383163,0.100907221436501,0.016946658492088,0.037796027958393,-0.111395418643951));
res += mul(Get(s5,0,0), float4x4(-0.053139336407185,-0.070602677762508,0.055507116019726,0.183091998100281,0.136554658412933,-0.455838590860367,-0.017268287017941,-0.098151095211506,-0.184865266084671,0.443803191184998,0.328948348760605,-0.151633277535439,0.369063407182693,0.318059593439102,0.001799408812076,-0.134052649140358));
res += mul(Get(s5,0,dy), float4x4(-0.094170533120632,0.224835753440857,0.021505828946829,-0.241831034421921,0.079385310411453,-0.180045515298843,-0.134855598211288,0.025983970612288,0.017887612804770,-0.067336715757847,-0.134140878915787,-0.066392324864864,0.059188194572926,0.125553175806999,0.009718333370984,-0.146644756197929));
res += mul(Get(s5,dx,-dy), float4x4(0.007032705936581,-0.079193614423275,-0.195776894688606,0.020575873553753,-0.124425403773785,-0.235926076769829,-0.404880136251450,0.071615889668465,-0.012354331091046,0.074567213654518,-0.315855056047440,-0.201951265335083,0.005027415696532,0.128069698810577,0.034382227808237,-0.117328502237797));
res += mul(Get(s5,dx,0), float4x4(-0.133808165788651,0.075047180056572,-0.517504990100861,-0.116153940558434,-0.045168340206146,-0.154619723558426,0.279922872781754,-0.209275260567665,-0.080214269459248,-0.066061556339264,0.262447237968445,-0.262013435363770,0.022116795182228,0.169744536280632,-0.030403666198254,-0.160569891333580));
res += mul(Get(s5,dx,dy), float4x4(0.074734218418598,0.027293533086777,-0.483496874570847,0.079969711601734,0.177015304565430,-0.273709207773209,-0.127457275986671,0.055737651884556,0.010932612232864,-0.130607873201370,-0.108443439006805,-0.034809753298759,0.020061584189534,-0.036673258990049,-0.050335504114628,-0.023164426907897));
res = max(float4(0, 0, 0, 0), res) + float4(0.801655769348145,0.241608068346977,-0.098286613821983,-0.063389718532562) * min(float4(0, 0, 0, 0), res);
return res;
}
