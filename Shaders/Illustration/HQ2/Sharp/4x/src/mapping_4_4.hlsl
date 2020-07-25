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
res += mul(Get(s0,-dx,-dy), float4x4(-0.108603365719318,-0.243264436721802,0.039351116865873,-0.228589355945587,-0.005901659373194,-0.120984412729740,0.173759371042252,-0.007455471903086,-0.102321326732635,0.011567466892302,0.114955313503742,-0.249008208513260,-0.085667334496975,-0.266075491905212,-0.179242476820946,-0.136091560125351));
res += mul(Get(s0,-dx,0), float4x4(-0.146582171320915,0.011867993511260,0.070513203740120,0.036224160343409,-0.112848781049252,-0.149351641535759,-0.116145879030228,-0.260818600654602,0.188618630170822,0.090217545628548,-0.022320684045553,0.116208419203758,-0.007605369202793,0.006480926182121,0.023452039808035,0.022897770628333));
res += mul(Get(s0,-dx,dy), float4x4(0.179385006427765,0.069429807364941,-0.091617733240128,-0.068410955369473,-0.127764448523521,-0.057657070457935,-0.110417835414410,0.151823699474335,0.106173649430275,0.136772602796555,0.076049953699112,-0.089318364858627,-0.012888821773231,0.113967739045620,0.016661096364260,0.067093536257744));
res += mul(Get(s0,0,-dy), float4x4(0.022762592881918,-0.021155817434192,0.119127839803696,-0.115963578224182,0.019976302981377,-0.040589544922113,-0.206950858235359,-0.060322269797325,-0.139013156294823,-0.055175915360451,-0.125779494643211,-0.207541868090630,0.028794607147574,0.055821046233177,-0.158577561378479,0.108030073344707));
res += mul(Get(s0,0,0), float4x4(0.172493681311607,-0.005494168493897,-0.080765783786774,0.040052499622107,-0.011113764718175,-0.049582436680794,-0.032319057732821,0.233176708221436,-0.074724525213242,-0.057942103594542,0.038867551833391,-0.105070494115353,-0.044595547020435,0.024617910385132,0.036867003887892,0.080663502216339));
res += mul(Get(s0,0,dy), float4x4(-0.024824483320117,-0.056001603603363,-0.083430506289005,0.085364513099194,-0.126071780920029,0.115089416503906,-0.003148700576276,-0.226590812206268,0.092016220092773,-0.174622461199760,0.024062968790531,0.200384274125099,-0.117938064038754,-0.097328938543797,0.119969591498375,-0.059314209967852));
res += mul(Get(s0,dx,-dy), float4x4(-0.081820994615555,0.170598655939102,-0.141044989228249,0.024382434785366,-0.126901432871819,0.053797278553247,-0.033870819956064,0.005609593354166,-0.019247924908996,-0.249224022030830,-0.044558349996805,-0.151772290468216,-0.164820745587349,-0.073312707245350,-0.114862218499184,0.063845127820969));
res += mul(Get(s0,dx,0), float4x4(0.088942959904671,-0.038549356162548,-0.098021760582924,-0.037894450128078,-0.180879697203636,0.058487012982368,-0.083757407963276,0.006703040096909,0.091664567589760,0.048211745917797,0.186136052012444,-0.009512532502413,-0.008483061566949,-0.002867739181966,-0.184916630387306,0.075685799121857));
res += mul(Get(s0,dx,dy), float4x4(0.035269591957331,-0.212953239679337,0.270088821649551,-0.019464431330562,0.012068955227733,-0.079699248075485,-0.031530279666185,0.090291671454906,0.201012492179871,0.013453153893352,-0.002824315568432,0.070665277540684,-0.001643972005695,-0.090342365205288,-0.013224940747023,0.123353317379951));
res += mul(Get(s1,-dx,-dy), float4x4(-0.062625840306282,-0.075639568269253,-0.165054127573967,-0.129309073090553,-0.065787807106972,-0.171124935150146,-0.096751309931278,0.166116684675217,0.196525320410728,-0.127573207020760,0.044518876820803,0.266658216714859,-0.139691635966301,-0.103493221104145,-0.201362088322639,0.022789226844907));
res += mul(Get(s1,-dx,0), float4x4(-0.016184888780117,-0.068438827991486,-0.035325057804585,-0.024956878274679,-0.083041220903397,-0.107432439923286,-0.044805988669395,-0.001047788071446,-0.101405709981918,0.202027231454849,0.075969733297825,-0.091560944914818,-0.147010564804077,0.084527276456356,-0.084878042340279,0.220233798027039));
res += mul(Get(s1,-dx,dy), float4x4(0.123364277184010,-0.137756079435349,-0.006346181035042,0.119778014719486,0.056828450411558,-0.189543172717094,-0.008433738723397,0.041446432471275,-0.044968444854021,-0.109696544706821,-0.154792040586472,0.000354102550773,0.114816069602966,-0.002690139925107,-0.084416083991528,0.048980545252562));
res += mul(Get(s1,0,-dy), float4x4(-0.231970354914665,-0.238490670919418,0.039595957845449,-0.041143335402012,-0.074944086372852,-0.060577880591154,0.018894338980317,0.024608192965388,-0.092035502195358,-0.128010183572769,-0.003433546284214,-0.205752819776535,0.159160017967224,-0.112471349537373,-0.126777291297913,-0.012609850615263));
res += mul(Get(s1,0,0), float4x4(0.064148746430874,-0.171069785952568,0.018007723614573,0.133245676755905,-0.221888571977615,0.128311619162560,-0.027808230370283,-0.100202463567257,-0.035569880157709,0.009362087585032,-0.087500825524330,-0.091910816729069,0.098984055221081,-0.156124621629715,0.021837173029780,-0.111135482788086));
res += mul(Get(s1,0,dy), float4x4(-0.052990909665823,-0.058130860328674,-0.096729993820190,-0.069161377847195,-0.026621658354998,0.008022745139897,0.070443592965603,-0.053888440132141,-0.063227884471416,0.042259212583303,0.160329535603523,-0.105000361800194,0.042776525020599,-0.045980241149664,0.099655233323574,0.110765695571899));
res += mul(Get(s1,dx,-dy), float4x4(0.086516283452511,0.030112531036139,0.086614035069942,-0.101685374975204,0.197280883789063,0.127589836716652,0.115191057324409,0.093765161931515,0.122255563735962,-0.306633770465851,0.019187668338418,0.173514813184738,-0.055507507175207,-0.038388304412365,-0.051941882818937,-0.072433523833752));
res += mul(Get(s1,dx,0), float4x4(-0.120637416839600,0.121769584715366,0.093718536198139,-0.104885317385197,-0.129997059702873,-0.118860259652138,0.189091607928276,-0.097946166992188,0.028448376804590,0.135493636131287,-0.111129246652126,0.092067234218121,-0.052610140293837,-0.070377089083195,-0.086243577301502,-0.049916103482246));
res += mul(Get(s1,dx,dy), float4x4(-0.121392674744129,0.031752564013004,0.051613289862871,0.037252958863974,-0.047878555953503,-0.049477316439152,-0.100915729999542,0.129519283771515,0.074695326387882,0.207484573125839,-0.062091138213873,0.144552260637283,0.034603875130415,0.042452469468117,-0.072672836482525,-0.338307052850723));
res += mul(Get(s2,-dx,-dy), float4x4(-0.170777723193169,0.109428122639656,0.074936643242836,0.115845255553722,0.061055690050125,0.016269661486149,0.133043378591537,-0.132915377616882,0.007603238802403,-0.134550467133522,-0.040689732879400,0.143518224358559,-0.080847620964050,-0.148093417286873,-0.053123384714127,0.187589690089226));
res += mul(Get(s2,-dx,0), float4x4(-0.247682377696037,-0.158062785863876,-0.206375285983086,-0.008933920413256,-0.101134054362774,0.183327168226242,-0.085433170199394,-0.104935742914677,0.032070782035589,-0.145872235298157,0.115423507988453,-0.206371799111366,-0.166606381535530,-0.041816163808107,0.075984932482243,0.346216350793839));
res += mul(Get(s2,-dx,dy), float4x4(0.115737892687321,-0.006960203871131,-0.024804070591927,0.227788656949997,0.065802060067654,-0.083501525223255,0.008920829743147,-0.043125655502081,0.001032949076034,-0.051472313702106,0.071279659867287,-0.210940763354301,0.017741337418556,-0.028599172830582,0.057351030409336,-0.072743058204651));
res += mul(Get(s2,0,-dy), float4x4(0.027071351185441,-0.270680785179138,-0.026177879422903,-0.010470720939338,-0.039613988250494,-0.051297474652529,-0.095712892711163,0.075453840196133,0.007257931865752,0.128234386444092,-0.080792061984539,-0.032420255243778,0.030673079192638,-0.085730306804180,-0.040013734251261,-0.093243286013603));
res += mul(Get(s2,0,0), float4x4(-0.207696035504341,-0.140929698944092,0.059543106704950,-0.056273542344570,-0.038317453116179,0.099805504083633,-0.003635630011559,0.158640056848526,0.175455570220947,0.271436929702759,0.060856383293867,0.152785792946815,0.049351755529642,-0.146624371409416,-0.078388281166553,-0.055800680071115));
res += mul(Get(s2,0,dy), float4x4(-0.172301411628723,0.156659409403801,0.063964709639549,0.200414076447487,-0.165665134787560,0.079169988632202,0.102769456803799,-0.002868570853025,-0.173968255519867,0.056951418519020,0.102981939911842,-0.140964478254318,-0.096891224384308,-0.094883605837822,-0.013105515390635,0.050982967019081));
res += mul(Get(s2,dx,-dy), float4x4(0.116442166268826,0.093214258551598,-0.028963485732675,-0.023681344464421,-0.114534750580788,-0.052723154425621,-0.129102244973183,0.070234440267086,0.085821323096752,0.066799379885197,0.066490858793259,-0.062608800828457,0.163157284259796,-0.089400455355644,0.049594350159168,-0.081486463546753));
res += mul(Get(s2,dx,0), float4x4(0.013668764382601,-0.035628773272038,0.087197288870811,0.058803282678127,0.107178166508675,-0.011951360851526,-0.224400550127029,0.202736034989357,0.102514825761318,-0.088967137038708,-0.064267352223396,-0.254592180252075,0.024610467255116,-0.119662597775459,-0.047513514757156,0.091574713587761));
res += mul(Get(s2,dx,dy), float4x4(-0.023108635097742,-0.135499387979507,0.235889241099358,-0.323382496833801,-0.038135807961226,-0.038095869123936,-0.006860305555165,-0.023034188896418,0.011617335490882,-0.066198281943798,0.368317455053329,0.044403027743101,-0.028088584542274,0.019390286877751,0.066717617213726,-0.026009501889348));
res += mul(Get(s3,-dx,-dy), float4x4(0.179640397429466,-0.073914587497711,-0.034800149500370,0.023236108943820,0.147584095597267,0.021894536912441,-0.178446993231773,0.147750049829483,-0.130623832345009,0.009014432318509,-0.025973740965128,0.036498036235571,0.187242522835732,0.013332293368876,0.098279908299446,-0.125037923455238));
res += mul(Get(s3,-dx,0), float4x4(-0.210153684020042,0.240386128425598,0.045176751911640,0.162701293826103,0.214930519461632,-0.029694151133299,0.059582807123661,-0.072848156094551,0.090394802391529,-0.090166501700878,-0.054642401635647,-0.064599730074406,-0.077793836593628,-0.054690632969141,-0.032090157270432,-0.069584414362907));
res += mul(Get(s3,-dx,dy), float4x4(0.024796070531011,0.011278353631496,0.058239594101906,0.024197347462177,0.197364419698715,0.168505012989044,-0.082113824784756,0.002100698882714,0.148987680673599,0.142894163727760,-0.034984774887562,0.033288761973381,-0.156350255012512,-0.049935497343540,-0.064619272947311,-0.017839014530182));
res += mul(Get(s3,0,-dy), float4x4(-0.050165202468634,0.128763779997826,0.067872174084187,-0.025829067453742,-0.014941236004233,0.045568779110909,-0.057562030851841,0.147577747702599,0.020569367334247,0.009331232868135,-0.074064433574677,-0.045730154961348,0.056185074150562,0.068242661654949,0.015952575951815,-0.260831475257874));
res += mul(Get(s3,0,0), float4x4(-0.063597142696381,0.087232254445553,0.110678374767303,-0.054015818983316,-0.105407260358334,0.045774701982737,-0.004922628402710,0.141734361648560,0.135250344872475,-0.072401337325573,-0.096946470439434,0.079595349729061,0.138893246650696,-0.048094678670168,0.089739039540291,-0.245109423995018));
res += mul(Get(s3,0,dy), float4x4(-0.296592235565186,-0.071519814431667,0.021000366657972,0.021280867978930,0.048027317970991,-0.093236401677132,-0.152122184634209,-0.043142803013325,-0.200840935111046,0.168863743543625,0.009215238504112,-0.050115805119276,0.131748437881470,0.029050728306174,0.031568996608257,-0.050244405865669));
res += mul(Get(s3,dx,-dy), float4x4(0.013179853558540,-0.134516224265099,-0.022278644144535,-0.027025276795030,0.190955415368080,-0.005273006390780,-0.015325583517551,0.129659920930862,-0.124430470168591,0.063999369740486,0.056162972003222,0.093891531229019,-0.093073122203350,-0.020318266004324,-0.171693593263626,0.097087763249874));
res += mul(Get(s3,dx,0), float4x4(-0.042032588273287,0.042955618351698,0.138917610049248,-0.007764112669975,-0.022025961428881,-0.122914470732212,-0.010867613367736,-0.215598687529564,-0.104073211550713,-0.099069647490978,-0.008315275423229,-0.023477861657739,-0.159839406609535,-0.017439696937799,0.003819779260084,-0.111205883324146));
res += mul(Get(s3,dx,dy), float4x4(0.108233019709587,-0.033074893057346,-0.051490560173988,0.082075320184231,0.042275078594685,-0.054920673370361,0.170721709728241,-0.001579908072017,0.092897914350033,-0.094033531844616,-0.031687874346972,-0.034574531018734,0.009901608340442,-0.081361733376980,-0.125111222267151,-0.083936311304569));
return max(float4(0,0,0,0), res);
}
