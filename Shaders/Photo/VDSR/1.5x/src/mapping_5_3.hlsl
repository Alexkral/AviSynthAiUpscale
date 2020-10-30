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
res += mul(Get(s0,-dx,-dy), float4x4(-0.050280671566725,0.024216258898377,0.093499988317490,-0.094703748822212,0.080453865230083,0.026829734444618,-0.009161047637463,-0.056863497942686,-0.080624163150787,-0.008276567794383,-0.037449203431606,-0.027190644294024,0.008184536360204,-0.055960889905691,-0.042939048260450,0.024706849828362));
res += mul(Get(s0,-dx,0), float4x4(0.130379274487495,0.091260187327862,-0.075253821909428,-0.065933600068092,-0.003373887855560,-0.161288753151894,0.136443480849266,-0.047398440539837,0.065134763717651,-0.039310630410910,0.026066977530718,-0.074283294379711,0.048272978514433,0.063049271702766,0.019673436880112,0.102131754159927));
res += mul(Get(s0,-dx,dy), float4x4(0.024513475596905,0.064998015761375,-0.087461203336716,-0.023723799735308,-0.098977565765381,-0.038784410804510,0.051414873450994,0.064903475344181,0.051376339048147,0.094999633729458,0.064661175012589,-0.031523618847132,-0.046612244099379,-0.009947557002306,0.016123645007610,0.066880613565445));
res += mul(Get(s0,0,-dy), float4x4(-0.103912375867367,0.046229477971792,0.118138395249844,-0.003634207183495,-0.021022990345955,-0.018348675221205,-0.056748159229755,0.023540392518044,-0.037019215524197,-0.010629743337631,-0.170775964856148,-0.019287565723062,0.000734956061933,0.075234755873680,-0.068128392100334,-0.006332546006888));
res += mul(Get(s0,0,0), float4x4(0.263147503137589,0.105505496263504,0.060175694525242,-0.032632775604725,-0.140963137149811,-0.223801910877228,0.069211475551128,-0.009061180055141,-0.135545760393143,-0.005285080522299,-0.015451051294804,0.007250432390720,0.036355745047331,-0.058223992586136,0.039608433842659,-0.037344861775637));
res += mul(Get(s0,0,dy), float4x4(0.109189912676811,-0.005932418163866,0.038989026099443,-0.054604776203632,-0.163408473134041,0.203815743327141,-0.017957508563995,0.017879463732243,-0.075758121907711,0.087745547294617,0.069256834685802,-0.046179249882698,0.109983749687672,-0.061825085431337,0.059225771576166,-0.056812163442373));
res += mul(Get(s0,dx,-dy), float4x4(0.045786324888468,-0.080345585942268,0.074832126498222,-0.108987577259541,-0.071690559387207,-0.045110326260328,0.018763892352581,-0.051665291190147,-0.079408802092075,0.002401277655736,-0.091502889990807,-0.068401694297791,0.023247534409165,-0.016481839120388,-0.030754189938307,-0.021999979391694));
res += mul(Get(s0,dx,0), float4x4(-0.043500721454620,0.008822476491332,0.069128818809986,-0.050535820424557,-0.059475526213646,0.068595305085182,0.008746882900596,0.019085144624114,-0.022780748084188,-0.030516309663653,-0.008047659881413,-0.082624666392803,-0.030047088861465,-0.013990344479680,-0.090616934001446,-0.012446095235646));
res += mul(Get(s0,dx,dy), float4x4(-0.131090819835663,0.026925742626190,0.009311839006841,-0.064393982291222,-0.113240003585815,0.085288733243942,0.016588285565376,0.016406564041972,0.018349543213844,0.015240094624460,-0.105811402201653,-0.110456734895706,0.039302490651608,0.004018716979772,0.016622409224510,-0.028464687988162));
res += mul(Get(s1,-dx,-dy), float4x4(-0.023117404431105,0.151484861969948,-0.053145144134760,0.026512963697314,-0.035609491169453,0.033799797296524,0.090267457067966,-0.002745041390881,-0.109838724136353,0.029834346845746,0.091339685022831,-0.012101617641747,-0.031845927238464,-0.019327692687511,0.019522095099092,-0.007430934812874));
res += mul(Get(s1,-dx,0), float4x4(0.048385057598352,-0.022993175312877,-0.072779051959515,-0.006698953453451,0.068423099815845,0.083260416984558,0.052846204489470,-0.112775802612305,-0.129226565361023,-0.096287965774536,0.006404457148165,0.017831062898040,0.054807722568512,0.092625044286251,-0.012191486544907,-0.056561924517155));
res += mul(Get(s1,-dx,dy), float4x4(0.052551589906216,-0.072447888553143,0.038552869111300,0.066454559564590,0.142825111746788,0.010858753696084,0.021448137238622,-0.065586730837822,-0.086297065019608,0.037104297429323,-0.038809232413769,0.059488356113434,-0.027999840676785,-0.009091588668525,0.069895468652248,0.047518890351057));
res += mul(Get(s1,0,-dy), float4x4(0.041649971157312,0.059453472495079,-0.075473599135876,-0.027331046760082,-0.048410024493933,0.058101989328861,0.037251017987728,0.079303398728371,-0.023073831573129,0.026998698711395,0.031153161078691,0.173364669084549,-0.034025743603706,-0.010838666930795,0.040711354464293,-0.052898317575455));
res += mul(Get(s1,0,0), float4x4(0.002760917879641,0.068786360323429,-0.067726045846939,-0.011969727464020,0.036623265594244,0.013499123975635,0.033663228154182,-0.120297476649284,-0.032061755657196,0.131173685193062,0.060666620731354,0.161749392747879,-0.025014664977789,0.033022973686457,-0.049992449581623,0.009043627418578));
res += mul(Get(s1,0,dy), float4x4(-0.005474564153701,0.056143343448639,-0.017338104546070,0.046996664255857,0.065070196986198,0.036943424493074,0.140245124697685,-0.153314456343651,-0.072518110275269,0.006230810657144,0.095878608524799,-0.014952939003706,0.048540476709604,-0.064624696969986,-0.061877392232418,-0.079443611204624));
res += mul(Get(s1,dx,-dy), float4x4(0.032174810767174,0.061210978776217,-0.032355513423681,0.019500030204654,-0.068313539028168,0.092675253748894,0.008007597178221,0.033455483615398,0.015888052061200,0.042032789438963,-0.010763180442154,-0.001406949129887,0.031445398926735,0.022459667176008,-0.015054177492857,-0.007784023415297));
res += mul(Get(s1,dx,0), float4x4(0.043265409767628,-0.032089684158564,-0.044508062303066,0.014044171199203,0.016710428521037,0.029451163485646,-0.021815214306116,-0.051616430282593,0.000981754972599,0.077104277908802,-0.050159800797701,0.116589799523354,-0.009177600033581,0.005304886493832,0.020090205594897,-0.040908064693213));
res += mul(Get(s1,dx,dy), float4x4(0.010500169359148,-0.135701626539230,-0.053791750222445,0.010342871770263,0.015145135112107,0.050011269748211,0.063031695783138,-0.098280981183052,0.100904688239098,-0.039029616862535,-0.014018857851624,0.068597324192524,0.011966259218752,0.090472571551800,0.052901141345501,0.015048881992698));
res += mul(Get(s2,-dx,-dy), float4x4(-0.072726398706436,0.120413698256016,0.013397211208940,0.024724846705794,-0.155419662594795,0.009426637552679,-0.066219180822372,0.048726402223110,0.006086204666644,0.019905507564545,0.038435664027929,-0.084393002092838,-0.075892306864262,-0.049338579177856,0.020203709602356,-0.055452913045883));
res += mul(Get(s2,-dx,0), float4x4(0.159731447696686,-0.027137437835336,-0.252658545970917,-0.061438642442226,-0.049182329326868,-0.095746397972107,-0.071567386388779,-0.017836326733232,0.029459031298757,-0.085233576595783,0.025721924379468,-0.031331110745668,0.014207959175110,-0.074566014111042,0.030523760244250,-0.034064322710037));
res += mul(Get(s2,-dx,dy), float4x4(0.058974076062441,0.032019015401602,-0.032405626028776,-0.052232239395380,-0.057448022067547,-0.011179198510945,0.054841138422489,0.012008836492896,-0.030342577025294,-0.055070023983717,-0.023280484601855,-0.019914291799068,-0.007023778744042,-0.036050595343113,0.002048760186881,0.057498682290316));
res += mul(Get(s2,0,-dy), float4x4(0.060186412185431,-0.086945176124573,0.074958786368370,-0.028334286063910,-0.110474683344364,0.048631697893143,0.038141254335642,0.034904330968857,0.004690342117101,0.057254198938608,-0.002451892709360,0.010227713733912,-0.036268364638090,-0.051825936883688,-0.090788625180721,-0.054368779063225));
res += mul(Get(s2,0,0), float4x4(0.056038040667772,-0.095735393464565,0.034042846411467,0.024515539407730,-0.057388950139284,0.123098343610764,-0.094358652830124,0.059486292302608,0.103578947484493,-0.021471623331308,0.048020642250776,-0.076060630381107,-0.084671795368195,-0.008466444909573,0.079391218721867,0.030028445646167));
res += mul(Get(s2,0,dy), float4x4(0.010384405031800,0.052416484802961,0.003170543815941,-0.007377028930932,-0.175983294844627,-0.013856953009963,0.031573601067066,0.016898807138205,0.129614129662514,-0.048026781529188,0.137429177761078,0.060839708894491,-0.106738224625587,0.048741005361080,0.009857222437859,0.060669824481010));
res += mul(Get(s2,dx,-dy), float4x4(0.025319907814264,0.050219643861055,-0.062668405473232,0.008161775767803,0.060234513133764,-0.011763873510063,-0.019723292440176,-0.040326721966267,0.011209293268621,-0.028447438031435,0.117941714823246,-0.014995860867202,-0.002083445200697,-0.036840289831161,0.014738288708031,-0.059929024428129));
res += mul(Get(s2,dx,0), float4x4(0.028006479144096,0.098810471594334,-0.027942495420575,0.024599557742476,0.067594520747662,-0.038312733173370,-0.028756935149431,0.024905160069466,0.080050289630890,-0.063048139214516,0.035600516945124,0.000869162089657,-0.175362139940262,0.306354731321335,0.100637100636959,0.170794248580933));
res += mul(Get(s2,dx,dy), float4x4(0.010268975049257,0.038672078400850,0.008654341101646,-0.028497984632850,0.031682938337326,0.016425624489784,-0.067703425884247,-0.018382240086794,-0.022455547004938,0.007040620315820,0.015753543004394,0.054283298552036,-0.190409630537033,0.049392584711313,-0.064702630043030,0.096730910241604));
res += mul(Get(s3,-dx,-dy), float4x4(-0.011846759356558,-0.016938295215368,0.018853956833482,0.008185137063265,0.026606108993292,0.040859960019588,0.092588089406490,0.086557559669018,-0.024145215749741,0.081979051232338,-0.044938351958990,0.010512105189264,-0.083840772509575,0.031005524098873,-0.007623231038451,-0.045834120362997));
res += mul(Get(s3,-dx,0), float4x4(-0.067632339894772,0.207273632287979,-0.001695754472166,0.128452271223068,0.053276732563972,0.112190432846546,-0.018730748444796,0.076387703418732,0.061846695840359,0.130992338061333,-0.118447035551071,0.009592541493475,-0.030092716217041,-0.041922379285097,0.034353122115135,-0.024919334799051));
res += mul(Get(s3,-dx,dy), float4x4(-0.010634613223374,-0.049372658133507,0.019869882613420,-0.027849173173308,0.076893977820873,0.022248409688473,0.053030539304018,0.046069949865341,0.054746393114328,-0.020541200414300,0.105924285948277,0.031603585928679,-0.092272385954857,-0.050940752029419,-0.093711666762829,-0.034637141972780));
res += mul(Get(s3,0,-dy), float4x4(0.044568534940481,-0.035346537828445,0.088263325393200,0.076628141105175,0.003048578510061,0.042121868580580,0.110827937722206,0.061147965490818,0.060276713222265,0.081731572747231,0.006958601996303,0.002604526700452,-0.013284947723150,0.002621871884912,0.022798508405685,-0.020782982930541));
res += mul(Get(s3,0,0), float4x4(0.202123641967773,0.002900814870372,0.072807393968105,0.238530501723289,0.056552235037088,0.032348651438951,-0.009956005029380,0.066467225551605,0.008567973040044,-0.014655946753919,-0.106653630733490,-0.034177251160145,0.003218483179808,0.086553826928139,0.035424463450909,0.013065952807665));
res += mul(Get(s3,0,dy), float4x4(0.198343679308891,-0.115584783256054,0.015537557192147,-0.064818710088730,-0.074316263198853,0.011616811156273,0.059271477162838,0.048297822475433,0.027734007686377,0.062803730368614,0.037682689726353,-0.007427455857396,0.040165729820728,0.012261606752872,-0.065218463540077,-0.034219093620777));
res += mul(Get(s3,dx,-dy), float4x4(0.111499197781086,0.017952824011445,0.041410662233829,-0.019224202260375,0.031405389308929,-0.029169933870435,0.071036674082279,0.073457852005959,-0.026786906644702,-0.043321188539267,-0.007550986949354,0.034448500722647,0.043817978352308,-0.044542320072651,-0.065733060240746,-0.021648583933711));
res += mul(Get(s3,dx,0), float4x4(0.139693394303322,-0.072772063314915,0.042116194963455,-0.075114801526070,0.041548639535904,-0.089123688638210,0.065515033900738,0.092658519744873,-0.041631381958723,-0.043778285384178,-0.037629682570696,-0.064978152513504,0.001892130007036,-0.043143037706614,-0.017816489562392,0.023029215633869));
res += mul(Get(s3,dx,dy), float4x4(-0.000937513599638,0.100506477057934,0.069294422864914,-0.124975800514221,-0.117775484919548,0.015746861696243,0.237797960639000,0.059516716748476,0.037934675812721,-0.049227785319090,-0.027079204097390,-0.134579166769981,0.040029242634773,-0.050728302448988,-0.056174244731665,-0.015822021290660));
return max(float4(0,0,0,0), res);
}
