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
res += mul(Get(s0,-dx,-dy), float4x4(0.000939427874982,0.082257807254791,0.054718684405088,0.112882740795612,-0.046914774924517,0.145335853099823,-0.028778683394194,0.203837886452675,-0.104943536221981,-0.060533255338669,-0.055474087595940,0.096383705735207,0.058097027242184,-0.205992251634598,-0.022252094000578,0.030362099409103));
res += mul(Get(s0,-dx,0), float4x4(0.257675409317017,0.098808720707893,0.065947785973549,-0.029151510447264,0.055232953280210,0.025227222591639,-0.062074568122625,-0.108788095414639,0.064440593123436,0.009146040305495,0.076669134199619,-0.081839993596077,0.031004287302494,-0.063524313271046,0.103115603327751,-0.013526429422200));
res += mul(Get(s0,-dx,dy), float4x4(0.071392960846424,-0.006948065944016,-0.028462737798691,-0.035071764141321,-0.134235814213753,0.196577399969101,-0.123940221965313,-0.006399450358003,0.139620319008827,-0.098632432520390,0.146157011389732,0.036468908190727,-0.212828621268272,-0.001835248549469,0.139297500252724,0.217375606298447));
res += mul(Get(s0,0,-dy), float4x4(-0.087808437645435,-0.000713894900400,0.005415660329163,0.002468291437253,0.040072981268167,0.174445539712906,-0.012024149298668,-0.129345998167992,0.046508263796568,0.023820517584682,0.084938257932663,0.153637632727623,0.015286718495190,-0.056954987347126,0.019791293889284,0.030166503041983));
res += mul(Get(s0,0,0), float4x4(-0.175149500370026,-0.045938372612000,-0.010736674070358,0.051290806382895,-0.086086876690388,0.163931712508202,-0.095454774796963,-0.026357067748904,0.009219429455698,0.092119462788105,-0.042419612407684,-0.059837345033884,0.133657932281494,-0.011753216385841,0.044816527515650,0.075027555227280));
res += mul(Get(s0,0,dy), float4x4(0.106467857956886,0.006275658495724,0.017813056707382,0.032926715910435,0.113589271903038,0.082787431776524,-0.099702723324299,-0.111755207180977,0.235831841826439,0.019113853573799,0.301793903112411,-0.083950735628605,0.121145099401474,0.114194668829441,-0.104552358388901,-0.126313075423241));
res += mul(Get(s0,dx,-dy), float4x4(0.021251967176795,0.043057449162006,0.055723894387484,0.061453361064196,-0.028103491291404,0.059855110943317,0.054011922329664,0.036087352782488,-0.043676890432835,-0.030800100415945,0.056343484669924,0.026939628645778,0.216808229684830,-0.013571213930845,0.035778190940619,0.107079818844795));
res += mul(Get(s0,dx,0), float4x4(0.095426298677921,0.196488320827484,0.005515231285244,-0.060458865016699,-0.169791698455811,-0.195824012160301,-0.090562351047993,0.212040752172470,-0.156379967927933,0.066088281571865,-0.141109257936478,0.180382952094078,0.111214697360992,-0.006400021258742,-0.262199074029922,-0.080318525433540));
res += mul(Get(s0,dx,dy), float4x4(-0.055968541651964,0.073013037443161,-0.086277417838573,0.180715739727020,-0.093313746154308,-0.086797803640366,-0.165927797555923,0.048947971314192,-0.225570395588875,-0.047318186610937,-0.125416710972786,-0.053098708391190,0.026070281863213,-0.020193209871650,0.024683715775609,0.013995223678648));
res += mul(Get(s1,-dx,-dy), float4x4(0.088629215955734,-0.104317896068096,0.162408202886581,-0.179292336106300,-0.054772548377514,0.000115433482279,-0.170707568526268,-0.023667177185416,0.182404562830925,0.171219259500504,0.107284322381020,-0.057298373430967,-0.062257144600153,-0.170034170150757,0.066210523247719,0.123954236507416));
res += mul(Get(s1,-dx,0), float4x4(0.275378912687302,-0.125293865799904,-0.097192741930485,-0.064193531870842,0.069058574736118,-0.076778270304203,0.009584434330463,-0.055061798542738,0.054756190627813,-0.027892882004380,0.206599593162537,-0.245554819703102,-0.166575044393539,0.087273426353931,0.126617491245270,-0.197587981820107));
res += mul(Get(s1,-dx,dy), float4x4(0.064812026917934,-0.011425833217800,-0.039720758795738,0.066529348492622,0.145779356360435,-0.001687795738690,-0.044584222137928,-0.005834624636918,0.006401327904314,-0.031605415046215,-0.047027185559273,-0.080907627940178,-0.064033687114716,-0.024433543905616,0.090099729597569,-0.101322226226330));
res += mul(Get(s1,0,-dy), float4x4(-0.037444427609444,-0.055802434682846,-0.030940525233746,-0.144956052303314,0.088424041867256,0.038940057158470,-0.087601080536842,0.008578744716942,0.177498221397400,0.032536983489990,-0.043768413364887,0.307537347078323,-0.085754014551640,-0.110768482089043,0.088493250310421,0.005630964413285));
res += mul(Get(s1,0,0), float4x4(-0.172010749578476,-0.089796803891659,0.101223655045033,0.022642025724053,0.068231604993343,0.014927035197616,0.172296270728111,0.347592145204544,-0.091115549206734,0.067504577338696,0.121042475104332,0.037854287773371,-0.001300426665694,-0.004301273263991,0.010324178263545,-0.131015911698341));
res += mul(Get(s1,0,dy), float4x4(-0.083601742982864,-0.119156271219254,-0.040333248674870,0.019079964607954,-0.103801503777504,-0.077655166387558,-0.150281146168709,0.037820283323526,0.181970566511154,0.007634126581252,-0.016964986920357,-0.035901289433241,0.093704015016556,-0.036134131252766,0.220819607377052,-0.011741220951080));
res += mul(Get(s1,dx,-dy), float4x4(0.092636786401272,0.063103467226028,-0.004347068257630,0.115102753043175,0.158297032117844,0.026384308934212,-0.057589244097471,0.051765810698271,0.136066392064095,-0.041785806417465,0.027929889038205,0.128544285893440,0.187440574169159,-0.008000015281141,-0.098689727485180,0.147892028093338));
res += mul(Get(s1,dx,0), float4x4(-0.256576120853424,0.008972997777164,0.279272645711899,-0.076097331941128,0.089710399508476,0.022198207676411,-0.047307703644037,-0.034673035144806,-0.147160395979881,0.070881143212318,0.099087692797184,-0.067163743078709,0.090764895081520,-0.040939144790173,-0.003086864016950,0.077378980815411));
res += mul(Get(s1,dx,dy), float4x4(-0.183557033538818,-0.025535658001900,0.029765253886580,-0.198115751147270,0.006911755073816,-0.048566754907370,-0.218507409095764,0.125420257449150,0.124845176935196,0.038504309952259,-0.148178264498711,0.086486913263798,0.015494730323553,0.006267963908613,0.116727195680141,-0.229807138442993));
res += mul(Get(s2,-dx,-dy), float4x4(-0.070385858416557,0.150745585560799,0.055999796837568,-0.102999955415726,-0.085469856858253,0.122632190585136,-0.003484853776172,-0.007154120132327,-0.022287011146545,-0.007984285242856,-0.035089205950499,0.101653940975666,-0.188038781285286,0.086338698863983,0.002367581240833,0.179373458027840));
res += mul(Get(s2,-dx,0), float4x4(0.110717073082924,-0.059705603867769,0.052101623266935,-0.245309695601463,-0.124220438301563,0.133199498057365,0.006257945671678,0.014504079706967,-0.042666837573051,-0.087355844676495,0.031163170933723,0.122246131300926,0.107876673340797,-0.017526319250464,-0.165484637022018,0.077174559235573));
res += mul(Get(s2,-dx,dy), float4x4(-0.115846253931522,0.081612981855869,0.040198635309935,0.113129995763302,-0.134325638413429,-0.048911906778812,-0.117494776844978,-0.183446973562241,-0.034140877425671,0.002366432920098,-0.071442306041718,-0.031596355140209,0.111851878464222,-0.055646274238825,-0.175179094076157,0.030867233872414));
res += mul(Get(s2,0,-dy), float4x4(-0.114160940051079,-0.102588988840580,0.054365523159504,-0.003608965314925,0.116051979362965,0.075743123888969,-0.029432930052280,0.159675970673561,-0.126929283142090,0.048683378845453,0.061076965183020,-0.102996446192265,-0.047281432896852,-0.244380503892899,-0.125877469778061,0.061379309743643));
res += mul(Get(s2,0,0), float4x4(-0.084557674825191,0.150946840643883,0.152825057506561,-0.055559299886227,0.141269102692604,-0.008337199687958,0.087106786668301,-0.075046159327030,-0.022584846243262,-0.051675926893950,-0.099688276648521,0.276119738817215,0.047248721122742,0.009365121833980,-0.101892143487930,0.066098019480705));
res += mul(Get(s2,0,dy), float4x4(0.043031707406044,0.101478613913059,-0.058027632534504,-0.060758780688047,0.110636942088604,0.058029890060425,0.366660445928574,0.074891202151775,-0.007602632977068,0.055991690605879,-0.125879317522049,-0.016368471086025,0.105738312005997,0.007682461757213,-0.128633171319962,0.259247183799744));
res += mul(Get(s2,dx,-dy), float4x4(-0.033255800604820,-0.070164144039154,-0.051112007349730,0.110216237604618,-0.076208233833313,0.087651766836643,0.015881594270468,0.099102176725864,-0.080005317926407,-0.279205888509750,0.023892004042864,-0.115918777883053,0.003812348470092,0.083044439554214,-0.032574407756329,-0.027488859370351));
res += mul(Get(s2,dx,0), float4x4(-0.026261297985911,-0.014266443438828,-0.269490271806717,-0.039817780256271,0.042981315404177,0.216294348239899,0.036470301449299,0.012791767716408,0.152406290173531,-0.183925852179527,0.183671936392784,-0.047138333320618,-0.007483961060643,0.273944765329361,0.095930680632591,0.052705917507410));
res += mul(Get(s2,dx,dy), float4x4(-0.026763357222080,0.138466164469719,0.129987418651581,-0.121276900172234,-0.100967414677143,-0.002540034940466,0.048154432326555,0.026996342465281,-0.156612277030945,0.035473383963108,0.163633525371552,0.008531614206731,-0.019409896805882,0.119535259902477,0.040376953780651,0.194550439715385));
res += mul(Get(s3,-dx,-dy), float4x4(0.002209309721366,-0.194651186466217,0.055098950862885,0.042716629803181,-0.027511050924659,0.155808806419373,-0.056946568191051,-0.041905149817467,0.144969061017036,0.009269315749407,-0.082135491073132,-0.067875511944294,-0.217251837253571,-0.190164834260941,-0.123609602451324,-0.088581129908562));
res += mul(Get(s3,-dx,0), float4x4(-0.144928202033043,-0.239526733756065,-0.042506083846092,0.108217179775238,-0.148496925830841,-0.072615429759026,0.030467636883259,-0.044635705649853,0.167013600468636,0.139715313911438,0.108628012239933,0.048214767128229,0.062864087522030,-0.254166871309280,-0.069626145064831,0.204992771148682));
res += mul(Get(s3,-dx,dy), float4x4(-0.120052725076675,0.028139816597104,-0.159982874989510,0.105235792696476,0.091846957802773,0.064081586897373,0.025591434910893,-0.117901019752026,0.196774855256081,0.059003382921219,0.054915260523558,0.003444320987910,0.115724951028824,0.157926604151726,0.029783491045237,-0.011089380830526));
res += mul(Get(s3,0,-dy), float4x4(0.054358340799809,-0.073821939527988,-0.000888913113158,0.013507261872292,-0.115515962243080,0.124640516936779,0.154242902994156,0.017030157148838,0.147683724761009,-0.031772974878550,0.039361964911222,0.010909941978753,0.067843168973923,-0.021111970767379,-0.045055661350489,-0.047038093209267));
res += mul(Get(s3,0,0), float4x4(-0.035530798137188,-0.011674270965159,-0.016348410397768,-0.124848991632462,-0.015976108610630,0.094829268753529,0.012611493468285,0.050005096942186,-0.044260773807764,0.138909012079239,0.105324864387512,0.145832568407059,-0.007397543638945,-0.047955762594938,0.010889522731304,0.067422054708004));
res += mul(Get(s3,0,dy), float4x4(-0.032420434057713,0.035088013857603,-0.159347891807556,-0.195782721042633,-0.074585542082787,0.147298321127892,-0.051782459020615,0.007340222131461,-0.092947445809841,-0.125491589307785,0.029731381684542,0.196178466081619,-0.065639257431030,0.185560330748558,0.018444603309035,-0.017248991876841));
res += mul(Get(s3,dx,-dy), float4x4(0.250117480754852,0.056618276983500,0.059184048324823,-0.047738786786795,-0.153137236833572,-0.077397279441357,0.006417080294341,-0.116367094218731,0.251016974449158,-0.091114245355129,-0.252490520477295,0.117649778723717,-0.010298590175807,0.245079472661018,-0.007556491531432,0.067437410354614));
res += mul(Get(s3,dx,0), float4x4(0.087617747485638,0.094173625111580,0.169254943728447,0.117636501789093,-0.123930916190147,0.187362492084503,0.124580353498459,0.078263573348522,-0.078527681529522,-0.061178423464298,0.253335207700729,0.021025218069553,0.130133464932442,0.147671103477478,0.124738469719887,-0.072970815002918));
res += mul(Get(s3,dx,dy), float4x4(0.073951870203018,0.001651640282944,-0.067092619836330,-0.043385263532400,-0.024831138551235,0.046066671609879,-0.195639178156853,-0.112666599452496,-0.168909206986427,0.056399710476398,-0.070568114519119,0.061980564147234,0.229993149638176,0.084191069006920,0.016748065128922,0.136735320091248));
return max(float4(0,0,0,0), res);
}