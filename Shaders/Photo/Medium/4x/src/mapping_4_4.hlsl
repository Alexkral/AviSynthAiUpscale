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
float4 res = float4(-0.176917955279350,-0.288013964891434,-0.157678425312042,-0.025435503572226);
res += mul(Get(s0,-dx,-dy), float4x4(0.117728836834431,-0.058006513863802,0.025628803297877,-0.002800248097628,-0.011847480200231,0.008347168564796,0.105503268539906,-0.006184027064592,0.038565147668123,0.020528810098767,-0.045088775455952,0.055245611816645,-0.152025654911995,0.057833231985569,-0.220973625779152,-0.027476735413074));
res += mul(Get(s0,-dx,0), float4x4(-0.181537881493568,-0.095778100192547,0.041091233491898,-0.004006708506495,-0.022061392664909,0.054818131029606,-0.204823911190033,-0.008870560675859,-0.136145785450935,0.109935097396374,-0.166620746254921,-0.191238045692444,0.026030490174890,-0.077600978314877,0.075680583715439,-0.144511938095093));
res += mul(Get(s0,-dx,dy), float4x4(0.046051166951656,-0.073986865580082,-0.023047277703881,0.054957695305347,-0.122760005295277,-0.025171913206577,-0.070082217454910,0.098704248666763,-0.051224187016487,-0.090895257890224,0.064698845148087,0.025898694992065,0.170934289693832,-0.018139339983463,0.048378977924585,-0.044495318084955));
res += mul(Get(s0,0,-dy), float4x4(0.137048810720444,-0.011694234795868,0.361381560564041,-0.097139120101929,-0.121721222996712,0.016775803640485,-0.029119214043021,0.279271811246872,0.060763228684664,-0.044636603444815,0.052197616547346,-0.110273234546185,0.046927131712437,-0.054975725710392,0.029143700376153,-0.039193887263536));
res += mul(Get(s0,0,0), float4x4(-0.147462531924248,-0.124291606247425,0.221723392605782,0.030546050518751,0.035035386681557,-0.022430798038840,-0.009951307438314,-0.112575590610504,-0.092379570007324,0.173540949821472,0.096383757889271,0.139940753579140,-0.028290830552578,-0.021717324852943,0.125731423497200,-0.235972717404366));
res += mul(Get(s0,0,dy), float4x4(-0.094298608601093,-0.064901910722256,0.222939476370811,0.089404016733170,-0.223187685012817,-0.031105265021324,-0.057710047811270,0.686252593994141,-0.214558020234108,0.095165394246578,0.085008919239044,-0.076828382909298,0.338207364082336,0.019442798569798,0.038271185010672,0.150934815406799));
res += mul(Get(s0,dx,-dy), float4x4(0.093914911150932,0.058179736137390,0.004342739935964,-0.015225131064653,-0.056821357458830,0.079810589551926,-0.046707410365343,0.000105471168354,-0.030541637912393,-0.074109494686127,0.083394423127174,0.045673705637455,-0.108453907072544,-0.168611437082291,0.090350210666656,0.024757914245129));
res += mul(Get(s0,dx,0), float4x4(-0.072684824466705,0.104703977704048,-0.006736976094544,-0.098170757293701,-0.014706724323332,0.057125952094793,-0.068556189537048,0.079386301338673,0.081879459321499,-0.186887130141258,0.015066901221871,-0.084327906370163,-0.018443528562784,-0.062673985958099,-0.025270767509937,-0.113067969679832));
res += mul(Get(s0,dx,dy), float4x4(-0.027339491993189,0.014292155392468,0.185583725571632,0.004355735145509,-0.021960787475109,-0.006573146209121,-0.129758387804031,0.136303097009659,-0.063943244516850,-0.131693735718727,0.047370146960020,0.056075930595398,0.099062010645866,-0.006606988143176,0.204384744167328,-0.012634610757232));
res += mul(Get(s1,-dx,-dy), float4x4(-0.160981789231300,-0.026770833879709,-0.064437478780746,0.122608318924904,-0.105726905167103,0.005258023738861,-0.036134146153927,-0.037312272936106,0.055615827441216,-0.028660487383604,-0.159293666481972,-0.087801098823547,-0.029257467016578,0.022957909852266,-0.181033834815025,-0.095193430781364));
res += mul(Get(s1,-dx,0), float4x4(-0.028340000659227,-0.084863126277924,0.153387635946274,-0.150671631097794,0.042784452438354,-0.003710622200742,0.246883675456047,0.006911236327142,-0.088432163000107,-0.045314941555262,-0.114354588091373,0.069733619689941,-0.008484144695103,-0.041601534932852,-0.064568035304546,0.115674793720245));
res += mul(Get(s1,-dx,dy), float4x4(-0.012953307479620,-0.091136768460274,-0.019753197208047,-0.151809036731720,0.140690848231316,0.022276250645518,-0.026202112436295,0.056843586266041,-0.114599943161011,0.003342074807733,-0.039255820214748,-0.097277395427227,-0.119019530713558,0.009896952658892,0.000707098166458,-0.097628831863403));
res += mul(Get(s1,0,-dy), float4x4(-0.230028048157692,-0.141983196139336,0.018462400883436,0.168186664581299,-0.012501630932093,0.048249863088131,-0.200077876448631,0.111036434769630,0.044048476964235,0.002868235809729,0.114156529307365,-0.182513952255249,0.099718362092972,-0.081514835357666,0.047318123281002,-0.168946519494057));
res += mul(Get(s1,0,0), float4x4(-0.167377546429634,-0.054557789117098,-0.331591665744781,-0.097372002899647,0.076258219778538,0.104464814066887,-0.097498580813408,-0.151710823178291,-0.256587892770767,0.008763577789068,0.134543776512146,0.271397322416306,0.193117648363113,-0.385872274637222,-0.336334913969040,0.257626026868820));
res += mul(Get(s1,0,dy), float4x4(-0.140103101730347,0.049175940454006,0.001090169069357,-0.254596352577209,0.248564362525940,-0.097814917564392,-0.062861531972885,0.300505578517914,-0.029377590864897,0.005668315570801,0.066071659326553,-0.043337062001228,-0.543266832828522,-0.162775993347168,-0.028265316039324,-0.063393816351891));
res += mul(Get(s1,dx,-dy), float4x4(-0.033519465476274,0.031019970774651,-0.027254877611995,0.024391796439886,-0.032965824007988,-0.050232999026775,-0.016870271414518,-0.074886932969093,-0.165086403489113,-0.163132652640343,-0.088127903640270,-0.001400626846589,0.022920131683350,0.066347517073154,0.012665040791035,-0.101384952664375));
res += mul(Get(s1,dx,0), float4x4(0.019386796280742,-0.030280314385891,0.081251226365566,0.000383977283491,-0.092078052461147,-0.176554501056671,0.094091847538948,0.016620246693492,-0.045811172574759,0.028390098363161,-0.057984370738268,0.018017645925283,0.113431967794895,0.204775914549828,-0.022314542904496,0.026754647493362));
res += mul(Get(s1,dx,dy), float4x4(-0.017079969868064,0.012976130470634,-0.093455575406551,0.010496325790882,0.083387374877930,-0.035967435687780,-0.081757575273514,0.018529113382101,0.101140707731247,-0.008736091665924,-0.076754748821259,-0.172526732087135,0.064371220767498,0.106848597526550,0.035713732242584,0.052353594452143));
res += mul(Get(s2,-dx,-dy), float4x4(0.160196572542191,-0.052729591727257,0.154633924365044,-0.095176555216312,0.104907929897308,-0.106496721506119,0.210153907537460,-0.143819183111191,0.168752372264862,-0.061095301061869,-0.094520874321461,-0.113150566816330,0.029134387150407,-0.083656556904316,0.121702097356319,0.058011651039124));
res += mul(Get(s2,-dx,0), float4x4(-0.332163572311401,0.118296176195145,-0.136640071868896,0.095272995531559,-0.054374378174543,-0.160319209098816,0.200127154588699,0.062790885567665,-0.164455905556679,-0.112051732838154,-0.161049082875252,0.160616829991341,0.105201862752438,0.081807978451252,0.429757058620453,-0.100529156625271));
res += mul(Get(s2,-dx,dy), float4x4(-0.013768683187664,0.212099209427834,-0.346234798431396,-0.116260007023811,0.126743927598000,0.044735636562109,0.099242545664310,-0.027786906808615,0.200167402625084,-0.012362219393253,-0.078179404139519,-0.079638168215752,-0.209867432713509,-0.047007840126753,0.233960285782814,0.048819452524185));
res += mul(Get(s2,0,-dy), float4x4(0.125811666250229,-0.002822114853188,-0.279562920331955,-0.080335117876530,0.116624422371387,0.180421784520149,-0.241172000765800,-0.139867126941681,-0.051601681858301,-0.234556794166565,-0.129029691219330,0.067660190165043,0.058780871331692,0.122871555387974,-0.022839277982712,-0.164981529116631));
res += mul(Get(s2,0,0), float4x4(-0.081964999437332,-0.195971593260765,0.082105576992035,0.043141379952431,-0.167078956961632,0.205526173114777,-0.142629146575928,-0.020343363285065,0.088348321616650,0.023241996765137,0.246291518211365,-0.149565204977989,-0.075853236019611,0.435991942882538,-0.164111316204071,0.059092819690704));
res += mul(Get(s2,0,dy), float4x4(-0.188363060355186,-0.269733399152756,0.228556618094444,-0.234029471874237,-0.125517502427101,0.020171288400888,-0.275520503520966,-0.142108917236328,0.089172013103962,-0.041887860745192,0.009314182214439,0.188911378383636,-0.119631566107273,0.000262913759798,-0.123202711343765,-0.029674192890525));
res += mul(Get(s2,dx,-dy), float4x4(0.044751044362783,-0.129369825124741,0.201504781842232,0.139467611908913,-0.048379253596067,-0.208105370402336,0.027516698464751,0.049928244203329,-0.086967349052429,0.124402523040771,-0.226016789674759,0.048348054289818,0.020249802619219,-0.059452224522829,-0.081414259970188,-0.111018590629101));
res += mul(Get(s2,dx,0), float4x4(0.008580686524510,0.051036514341831,-0.196943014860153,-0.180188834667206,-0.260702937841415,-0.213865041732788,-0.078121915459633,-0.080366201698780,0.101787261664867,0.195095747709274,-0.197942778468132,-0.024139918386936,-0.047105617821217,0.026221146807075,-0.103423163294792,-0.051420189440250));
res += mul(Get(s2,dx,dy), float4x4(-0.223632693290710,0.125661149621010,-0.151793971657753,0.026132728904486,-0.061236731708050,-0.074180208146572,-0.147529616951942,-0.062647759914398,-0.078175544738770,0.095099106431007,0.037085726857185,0.050803191959858,-0.237924486398697,-0.136789277195930,-0.075616247951984,-0.083653897047043));
res += mul(Get(s3,-dx,-dy), float4x4(0.185699194669724,0.071461811661720,-0.181741163134575,0.091281145811081,0.072603665292263,0.007875040173531,-0.003633298445493,-0.021311014890671,-0.002237059641629,-0.004100075922906,-0.043852087110281,-0.000792588281911,-0.061777137219906,0.063346192240715,0.059350419789553,-0.100464485585690));
res += mul(Get(s3,-dx,0), float4x4(-0.046356704086065,0.017632370814681,-0.007531434297562,-0.076707512140274,-0.034174203872681,0.017012262716889,-0.151376783847809,-0.021672410890460,0.020468242466450,-0.087518565356731,0.030575023964047,-0.007654128596187,0.079793147742748,0.041934546083212,-0.116577804088593,0.021199451759458));
res += mul(Get(s3,-dx,dy), float4x4(-0.022952880710363,0.066490687429905,-0.021233988925815,-0.035573732107878,0.037171825766563,-0.014799873344600,-0.045058041810989,0.096220403909683,0.033046018332243,0.002427426865324,0.024185251444578,-0.031125145033002,-0.001463140943088,0.003052690532058,-0.025566358119249,0.103969037532806));
res += mul(Get(s3,0,-dy), float4x4(0.199507057666779,-0.038689475506544,0.364245504140854,-0.019765008240938,0.070074312388897,-0.284232646226883,-0.261030822992325,0.041869349777699,-0.051730182021856,0.052128244191408,0.113243386149406,0.117842122912407,-0.112222582101822,-0.088879980146885,-0.150065705180168,0.185371279716492));
res += mul(Get(s3,0,0), float4x4(-0.140776202082634,0.108723923563957,-0.057579774409533,0.118612200021744,-0.025971753522754,-0.394426167011261,-0.497587472200394,0.006366948131472,0.015665031969547,-0.241358816623688,0.236732691526413,0.054358858615160,0.342144459486008,-0.003135497216135,0.117575198411942,-0.263850629329681));
res += mul(Get(s3,0,dy), float4x4(-0.430814564228058,0.132195994257927,0.005597398616374,-0.106217183172703,-0.375092357397079,0.025318846106529,-0.150862425565720,0.024075023829937,0.144967094063759,-0.229771882295609,0.104566149413586,-0.133476272225380,0.320477753877640,0.000354585325113,-0.042305000126362,0.143466860055923));
res += mul(Get(s3,dx,-dy), float4x4(0.223358020186424,0.150919124484062,-0.040575321763754,-0.043393541127443,0.013892593793571,-0.036367122083902,0.090633109211922,0.003379958681762,0.116316854953766,0.097130499780178,0.100583925843239,-0.056454222649336,-0.121528021991253,-0.046490747481585,-0.032380610704422,0.068316154181957));
res += mul(Get(s3,dx,0), float4x4(-0.087110601365566,-0.200695052742958,-0.112837478518486,-0.032710332423449,-0.057150468230247,-0.327468723058701,0.030311428010464,-0.008999001234770,0.010202358476818,0.034980483353138,-0.034607134759426,-0.021843193098903,0.171359539031982,-0.037882998585701,-0.048151981085539,0.080930545926094));
res += mul(Get(s3,dx,dy), float4x4(-0.164335817098618,-0.065580479800701,-0.161013126373291,-0.080888107419014,0.040611054748297,-0.031542517244816,-0.052372299134731,0.120905824005604,-0.314680129289627,-0.081158697605133,0.022760037332773,0.029915293678641,-0.013709397986531,-0.163185149431229,0.051276233047247,-0.064369477331638));
res += mul(Get(s4,-dx,-dy), float4x4(-0.018371585756540,-0.044039864093065,0.011062310077250,-0.005843392107636,0.014091434888542,0.000389364140574,0.024758370593190,0.094993367791176,-0.065381400287151,0.028752328827977,0.046762887388468,0.097876720130444,0.040187437087297,0.007676861248910,0.025664905086160,-0.039406221359968));
res += mul(Get(s4,-dx,0), float4x4(-0.057729009538889,-0.034492455422878,0.094512075185776,-0.131645292043686,-0.005294858943671,0.132310703396797,0.260490655899048,-0.092481128871441,0.006978891789913,0.038310024887323,0.016167227178812,-0.055710669606924,0.228662505745888,0.006981748156250,0.003517484292388,0.038326229900122));
res += mul(Get(s4,-dx,dy), float4x4(0.062420230358839,-0.027151912450790,0.002665716921911,-0.018672477453947,-0.099782139062881,0.015593890100718,0.087509855628014,-0.020892137661576,-0.014472099952400,-0.001910512917675,0.045493148267269,-0.088468536734581,0.141907438635826,-0.068807780742645,-0.159479662775993,0.177494049072266));
res += mul(Get(s4,0,-dy), float4x4(0.022209409624338,0.311147123575211,0.126316592097282,-0.088814586400986,0.015309733338654,-0.006846811156720,-0.184225633740425,-0.163330510258675,-0.254265218973160,-0.018823776394129,0.151692956686020,0.287546545267105,0.007130266167223,-0.015571971423924,0.137572303414345,-0.038259692490101));
res += mul(Get(s4,0,0), float4x4(-0.106986664235592,0.580685913562775,0.064753383398056,0.186922997236252,-0.170297041535378,0.189371198415756,0.010520957410336,0.062284767627716,0.029596971347928,-0.044889044016600,-0.048127088695765,-0.124765098094940,0.213203713297844,-0.121101930737495,0.187624841928482,0.117291226983070));
res += mul(Get(s4,0,dy), float4x4(0.226271152496338,0.257158219814301,-0.137481063604355,0.038390252739191,-0.224829405546188,0.054860673844814,0.090262129902840,-0.061495486646891,0.081849306821823,0.057131469249725,0.053185913711786,-0.138670340180397,0.351627737283707,-0.074397668242455,-0.120635293424129,0.043037012219429));
res += mul(Get(s4,dx,-dy), float4x4(0.021740568801761,0.010902839712799,-0.126718223094940,-0.019634811207652,-0.074399240314960,0.048116203397512,0.092287443578243,0.016118153929710,-0.020966507494450,-0.038092061877251,0.027940079569817,0.107857242226601,0.144907012581825,0.150123849511147,-0.098755024373531,-0.101830877363682));
res += mul(Get(s4,dx,0), float4x4(0.063009805977345,0.125787958502769,0.035356100648642,0.102702125906944,0.035650443285704,0.504603624343872,-0.064307406544685,-0.042908400297165,-0.030222034081817,0.049362443387508,0.010577809996903,-0.020200176164508,0.097666166722775,0.304758548736572,-0.290142327547073,0.094398401677608));
res += mul(Get(s4,dx,dy), float4x4(0.153697922825813,0.050827793776989,0.038499295711517,0.062757506966591,-0.138173922896385,0.190720587968826,-0.045599617063999,-0.179842352867126,-0.099251039326191,0.023076795041561,0.007523952517658,-0.026269959285855,0.174738228321075,0.128835141658783,-0.119486473500729,0.098993033170700));
res += mul(Get(s5,-dx,-dy), float4x4(0.121959581971169,0.024740036576986,0.033866144716740,0.024509130045772,0.107460841536522,0.063285030424595,0.108466766774654,0.086377233266830,0.104131862521172,-0.010121931321919,-0.089220039546490,0.177915886044502,0.063421793282032,0.049984447658062,0.063611567020416,0.051990512758493));
res += mul(Get(s5,-dx,0), float4x4(-0.113125160336494,-0.076390899717808,0.092360846698284,-0.048323456197977,-0.079257994890213,0.040691107511520,-0.029000286012888,-0.161823064088821,0.027615392580628,0.050887573510408,-0.064086548984051,-0.017603181302547,0.064834602177143,0.121255330741405,-0.265341132879257,0.017168143764138));
res += mul(Get(s5,-dx,dy), float4x4(0.071148537099361,-0.061636839061975,0.088651567697525,0.054627444595098,-0.439165413379669,0.003697550389916,-0.022790350019932,-0.029373714700341,0.120735973119736,0.021700678393245,0.076004877686501,0.052771359682083,0.091094858944416,0.118440456688404,-0.057835958898067,-0.035550821572542));
res += mul(Get(s5,0,-dy), float4x4(0.188064098358154,0.095446027815342,0.087551154196262,-0.239927873015404,0.209717929363251,-0.023414760828018,-0.035250920802355,-0.110784873366356,0.161116272211075,0.129980713129044,-0.022191181778908,-0.130595922470093,0.033122878521681,-0.110525414347649,0.107878185808659,0.072591654956341));
res += mul(Get(s5,0,0), float4x4(-0.413280159235001,-0.222427338361740,-0.093887664377689,0.350767761468887,-0.308748602867126,-0.067004524171352,0.197946473956108,0.025575624778867,-0.300627976655960,0.219002828001976,0.115823544561863,0.202836275100708,0.012232836335897,-0.654455065727234,0.083799615502357,0.025332072749734));
res += mul(Get(s5,0,dy), float4x4(-0.062181800603867,-0.086079277098179,-0.054797291755676,-0.094942897558212,-0.108361810445786,-0.148720771074295,0.338504761457443,0.004132320173085,-0.087183848023415,0.137198328971863,0.038729980587959,-0.141044571995735,-0.088521279394627,-0.197175562381744,-0.027424592524767,0.098160140216351));
res += mul(Get(s5,dx,-dy), float4x4(0.054209057241678,0.050439130514860,-0.027404827997088,-0.113648824393749,0.137405291199684,-0.005920626688749,0.153142690658569,0.051488328725100,0.071342498064041,-0.134482309222221,0.029398346319795,-0.084478229284286,0.027103032916784,-0.005326707381755,-0.030136037617922,0.042438197880983));
res += mul(Get(s5,dx,0), float4x4(-0.090200774371624,0.035728208720684,-0.010923353955150,0.146993413567543,0.002487087622285,0.131216123700142,-0.007279387209564,-0.055215660482645,-0.160900086164474,-0.106670826673508,0.020113015547395,-0.034621268510818,0.017227945849299,-0.027386268600821,-0.031174199655652,-0.042494293302298));
res += mul(Get(s5,dx,dy), float4x4(0.107749603688717,0.013870864175260,0.063887096941471,-0.024072160944343,0.031643189489841,0.207168936729431,-0.025157202035189,-0.008132863789797,-0.132610395550728,0.030356714501977,-0.139151126146317,-0.004906485322863,-0.125153169035912,0.018627349287271,-0.034456472843885,-0.013030815869570));
res = max(float4(0, 0, 0, 0), res) + float4(0.015748301520944,0.004308714531362,-0.006956140045077,0.228644907474518) * min(float4(0, 0, 0, 0), res);
return res;
}
