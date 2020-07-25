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
res += mul(Get(s0,-dx,-dy), float4x4(-0.004931903444231,-0.077444300055504,0.063637033104897,0.086232028901577,-0.082592748105526,-0.159417733550072,-0.064141385257244,0.129198327660561,0.128244459629059,-0.015035131946206,-0.090502448379993,0.005727704148740,-0.025194205343723,0.040334865450859,-0.057115208357573,0.081174463033676));
res += mul(Get(s0,-dx,0), float4x4(-0.082936242222786,-0.015962544828653,-0.111682534217834,0.075118154287338,0.015666857361794,0.080668963491917,0.065837264060974,0.014093107543886,-0.006119705270976,-0.094834029674530,-0.048516009002924,0.002533008810133,0.149547338485718,-0.148058146238327,0.055867262184620,0.108963914215565));
res += mul(Get(s0,-dx,dy), float4x4(-0.076401412487030,0.094357199966908,0.017274549230933,-0.003655436681584,0.021664185449481,0.100289106369019,-0.154803693294525,0.212809532880783,-0.131790876388550,-0.077543735504150,0.049716621637344,-0.175047487020493,-0.141861468553543,0.250393092632294,0.132885038852692,-0.038255650550127));
res += mul(Get(s0,0,-dy), float4x4(0.088763587176800,-0.052407279610634,0.019929770380259,-0.009215722791851,-0.038907926529646,-0.090754568576813,-0.132225573062897,0.225244283676147,0.079104483127594,-0.130874902009964,0.224458858370781,-0.183558985590935,-0.069069944322109,0.063928909599781,-0.045720640569925,-0.155071035027504));
res += mul(Get(s0,0,0), float4x4(-0.031591556966305,-0.058566555380821,-0.183143183588982,0.033265877515078,-0.134800732135773,-0.089845158159733,0.177859157323837,0.277609169483185,0.028813427314162,-0.028839815407991,0.138253301382065,0.241903230547905,-0.059626676142216,0.059652775526047,-0.009778279811144,-0.177839607000351));
res += mul(Get(s0,0,dy), float4x4(0.053874012082815,0.117721714079380,-0.027779214084148,-0.053449660539627,0.065330564975739,-0.059901352971792,0.065681837499142,-0.018866907805204,0.065638929605484,0.221327558159828,0.040347091853619,0.040933337062597,-0.016051242128015,-0.033547393977642,-0.012331359088421,-0.134944289922714));
res += mul(Get(s0,dx,-dy), float4x4(0.071037665009499,-0.124565817415714,0.210923850536346,0.109940074384212,0.114331498742104,-0.245643347501755,-0.141799539327621,-0.042964037507772,-0.036893982440233,-0.032462973147631,0.123343989253044,0.055966172367334,0.130495265126228,-0.115523926913738,-0.013070806860924,0.019613847136497));
res += mul(Get(s0,dx,0), float4x4(0.073011644184589,0.045666348189116,0.025387197732925,-0.033445078879595,-0.211886212229729,0.083230949938297,0.026796052232385,-0.049005880951881,-0.005943825468421,0.018544668331742,0.216724485158920,0.147620975971222,-0.008561246097088,-0.047944203019142,0.141013890504837,-0.057754833251238));
res += mul(Get(s0,dx,dy), float4x4(0.072092801332474,0.148306787014008,-0.089203938841820,-0.001295743742958,0.030580934137106,-0.050203841179609,0.010234105400741,0.057847790420055,-0.165171161293983,0.139696642756462,-0.149764403700829,0.140556916594505,-0.042921584099531,0.044245604425669,0.009169036522508,-0.038464404642582));
res += mul(Get(s1,-dx,-dy), float4x4(0.077063575387001,0.091957271099091,-0.084505245089531,-0.114598236978054,-0.016740083694458,-0.016863837838173,0.106226637959480,-0.048073228448629,-0.172818452119827,-0.000684092286974,0.060876142233610,0.106330581009388,0.080311603844166,0.070393308997154,-0.006973767187446,-0.000956200645305));
res += mul(Get(s1,-dx,0), float4x4(0.152186110615730,-0.123854450881481,-0.178362384438515,-0.061178963631392,-0.019826693460345,0.099809356033802,0.000156805559527,0.154790371656418,0.005751330871135,0.011193455196917,-0.006741296965629,-0.012295233085752,0.009377134963870,0.001990622142330,-0.255905359983444,-0.049113757908344));
res += mul(Get(s1,-dx,dy), float4x4(-0.021387979388237,-0.154441401362419,0.119438022375107,0.151655778288841,-0.146730512380600,-0.037096161395311,-0.055074628442526,0.026102479547262,-0.026882415637374,-0.053986519575119,0.018159411847591,-0.079131022095680,0.033319611102343,0.074095979332924,-0.104150243103504,0.070786036550999));
res += mul(Get(s1,0,-dy), float4x4(0.017146473750472,-0.017802158370614,0.084028333425522,0.006939794402570,0.019473303109407,0.144105404615402,-0.010847523808479,-0.133747607469559,0.212938129901886,-0.015005401335657,-0.099708557128906,0.073773726820946,-0.093184292316437,0.163841426372528,0.104496613144875,-0.143404319882393));
res += mul(Get(s1,0,0), float4x4(-0.015340874902904,0.073171101510525,-0.177668571472168,0.031631402671337,0.023291682824492,-0.029656346887350,-0.170562386512756,0.152463927865028,0.009133144281805,0.070370748639107,0.039782851934433,-0.020075038075447,-0.200847625732422,-0.020939264446497,-0.037711821496487,0.311235070228577));
res += mul(Get(s1,0,dy), float4x4(-0.043098695576191,-0.103126183152199,0.025360465049744,-0.003933154512197,0.015018198639154,-0.002485122764483,-0.048866555094719,0.042131125926971,-0.011063822545111,-0.097719021141529,-0.031076228246093,-0.004040684085339,-0.071715869009495,0.072352066636086,-0.108481600880623,0.035651650279760));
res += mul(Get(s1,dx,-dy), float4x4(0.080422379076481,0.125356689095497,-0.066708236932755,-0.117223650217056,-0.085365943610668,0.185912519693375,0.064007192850113,-0.017081759870052,-0.088642351329327,-0.079419612884521,0.036741368472576,0.098086878657341,0.063444040715694,0.111093096435070,-0.008690692484379,-0.000326333480189));
res += mul(Get(s1,dx,0), float4x4(-0.051891878247261,0.040846131742001,-0.158385872840881,0.059513442218304,-0.075172193348408,-0.058249663561583,0.062636353075504,-0.047778043895960,0.042425122112036,-0.158589184284210,0.063471280038357,-0.052655294537544,-0.079441130161285,0.081951990723610,-0.164254575967789,-0.129338443279266));
res += mul(Get(s1,dx,dy), float4x4(-0.077053308486938,0.088272690773010,-0.009900053963065,-0.006276096217334,-0.003627745201811,0.091519527137280,-0.000090509376605,-0.076362676918507,0.009015413932502,-0.023458780720830,-0.009192381054163,0.013690601103008,0.049021951854229,-0.048100881278515,0.001746508060023,0.074535474181175));
res += mul(Get(s2,-dx,-dy), float4x4(-0.177408382296562,-0.005738528445363,0.025876425206661,-0.008571706712246,-0.101684197783470,-0.137076795101166,-0.034257460385561,-0.217025890946388,0.180565252900124,-0.161103740334511,0.004818222951144,-0.027398692443967,0.078632242977619,-0.016548376530409,0.029026629403234,0.120938628911972));
res += mul(Get(s2,-dx,0), float4x4(0.000441181677161,-0.006167664658278,0.039826050400734,-0.039807081222534,0.144789591431618,-0.066280297935009,0.062139071524143,0.002173498505726,-0.080047555267811,-0.243170455098152,-0.092117242515087,0.084010608494282,0.035317745059729,0.017770009115338,0.022302852943540,-0.124074906110764));
res += mul(Get(s2,-dx,dy), float4x4(0.067855142056942,0.056029703468084,0.185295924544334,0.022329082712531,-0.027793429791927,0.157551109790802,-0.133328348398209,-0.018004495650530,-0.072976909577847,-0.050433721393347,-0.114054940640926,-0.041700769215822,-0.206089556217194,0.114933371543884,-0.014369376003742,-0.111656405031681));
res += mul(Get(s2,0,-dy), float4x4(-0.002843340625986,-0.112800329923630,-0.293140053749084,0.074422679841518,-0.028255775570869,0.080431215465069,0.043493002653122,0.017371730878949,0.057542458176613,-0.055151801556349,-0.020266342908144,-0.035909574478865,-0.008901793509722,-0.070734634995461,-0.004659554455429,0.011189976707101));
res += mul(Get(s2,0,0), float4x4(0.118708156049252,-0.037356775254011,0.234664171934128,-0.036311425268650,-0.034352891147137,-0.057516660541296,0.031944897025824,-0.067294508218765,0.122137077152729,0.137788787484169,-0.159598544239998,0.025871247053146,0.006337966769934,-0.194729328155518,-0.133518800139427,0.080083921551704));
res += mul(Get(s2,0,dy), float4x4(-0.099311538040638,0.029298067092896,-0.061798892915249,0.068113051354885,-0.104210078716278,0.034888163208961,-0.045865748077631,0.092662841081619,0.093379378318787,0.113918803632259,0.005525261163712,0.109462589025497,-0.119490310549736,0.044269971549511,-0.127004235982895,-0.126225188374519));
res += mul(Get(s2,dx,-dy), float4x4(-0.015118499286473,-0.067697517573833,0.022500891238451,0.062122296541929,0.067259564995766,-0.006229051854461,0.102734349668026,0.047400832176208,-0.010253731161356,-0.143030196428299,-0.073247857391834,0.161766588687897,-0.053813327103853,-0.048518393188715,0.091321237385273,0.015788093209267));
res += mul(Get(s2,dx,0), float4x4(-0.007964948192239,0.124648414552212,-0.008637104183435,-0.099717296659946,0.157804518938065,-0.009458660148084,-0.110632240772247,-0.103397034108639,-0.049738429486752,-0.234774142503738,0.076301068067551,0.097777463495731,-0.027209630236030,-0.084554329514503,0.128270789980888,0.036352410912514));
res += mul(Get(s2,dx,dy), float4x4(0.096002012491226,0.016451228410006,-0.096304707229137,0.014209462329745,0.143915340304375,-0.006370606366545,-0.036925490945578,-0.062260970473289,-0.000969021522906,0.149376049637794,-0.145851910114288,-0.006198697723448,-0.005157163832337,0.024690607562661,-0.102963775396347,0.102035880088806));
res += mul(Get(s3,-dx,-dy), float4x4(-0.062725551426411,-0.171695142984390,0.034813739359379,0.010721288621426,-0.087140887975693,0.139055028557777,-0.156144961714745,0.077421717345715,0.004629366565496,0.054102730005980,-0.037500090897083,0.128044635057449,0.088499173521996,-0.014866176992655,-0.084311507642269,0.019842568784952));
res += mul(Get(s3,-dx,0), float4x4(-0.036625433713198,0.033095885068178,-0.015770368278027,-0.039648458361626,-0.044130153954029,-0.013722457922995,0.064862444996834,0.077559523284435,-0.086998723447323,-0.006835453677922,-0.059367712587118,-0.164118051528931,0.025300158187747,0.136071726679802,0.016819555312395,-0.075681194663048));
res += mul(Get(s3,-dx,dy), float4x4(0.088845707476139,-0.185119807720184,-0.098647229373455,0.066561095416546,-0.109760813415051,-0.068977423012257,0.090841196477413,0.079694248735905,0.040509253740311,0.097165130078793,0.146370545029640,-0.090962611138821,0.190863236784935,0.003021865151823,0.078812368214130,0.125434428453445));
res += mul(Get(s3,0,-dy), float4x4(-0.067879699170589,-0.119933567941189,-0.085514813661575,0.088641591370106,0.124842740595341,-0.039639364928007,-0.019139455631375,0.071873575448990,-0.045482099056244,-0.037275400012732,-0.043837334960699,0.118646688759327,0.173938691616058,0.231000527739525,-0.044283770024776,0.185330837965012));
res += mul(Get(s3,0,0), float4x4(-0.010335610248148,0.121951818466187,0.210317134857178,-0.032374612987041,-0.163091689348221,-0.060052782297134,0.056741021573544,0.186175137758255,-0.090059518814087,-0.160695344209671,0.007803170476109,0.111009389162064,0.138773828744888,-0.103837072849274,0.051406558603048,-0.023467894643545));
res += mul(Get(s3,0,dy), float4x4(-0.170445606112480,-0.095524810254574,0.069017052650452,0.084274835884571,0.124798566102982,0.081180632114410,0.080125756561756,0.058898698538542,-0.054953642189503,-0.028311105445027,0.109389945864677,0.284674853086472,-0.136578813195229,-0.038408577442169,0.137091964483261,-0.030206058174372));
res += mul(Get(s3,dx,-dy), float4x4(0.034098457545042,0.080094315111637,0.109650313854218,0.126016378402710,-0.009380551986396,-0.067640110850334,-0.226342827081680,0.030915765091777,0.088721357285976,0.143488600850105,0.031232209876180,-0.078349471092224,0.144639194011688,-0.109183780848980,-0.065913468599319,0.066317893564701));
res += mul(Get(s3,dx,0), float4x4(-0.075788497924805,0.104648381471634,-0.066362857818604,-0.098258808255196,0.068382658064365,0.089673474431038,-0.026046490296721,0.122410252690315,0.015325892716646,0.002327986992896,-0.022616740316153,0.027756646275520,-0.165598928928375,-0.143487751483917,0.074467375874519,-0.109875738620758));
res += mul(Get(s3,dx,dy), float4x4(0.005623151548207,-0.084598816931248,-0.148622497916222,-0.098067492246628,-0.013566791079938,-0.116819053888321,-0.084548145532608,-0.000994755653664,-0.079799383878708,0.048567947000265,-0.141010507941246,0.071053072810173,0.048263467848301,-0.094842463731766,0.252787947654724,0.064916856586933));
return max(float4(0,0,0,0), res);
}