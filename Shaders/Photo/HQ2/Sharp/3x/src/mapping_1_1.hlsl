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
res += mul(Get(s0,-dx,-dy), float4x4(-0.070276834070683,0.002209022874013,0.084267646074295,-0.010045774281025,0.041049692779779,0.072388194501400,-0.140217751264572,0.015113799832761,-0.036149837076664,-0.030612614005804,-0.054686743766069,-0.008724352344871,-0.113463141024113,-0.145289242267609,0.055186841636896,-0.069385960698128));
res += mul(Get(s0,-dx,0), float4x4(0.099833279848099,-0.035287726670504,-0.060777150094509,0.008487482555211,-0.026450881734490,0.038006853312254,0.091542139649391,0.020350866019726,-0.004665547050536,-0.024189068004489,0.041325040161610,0.149261966347694,-0.026038087904453,-0.057059362530708,0.053006801754236,-0.040884964168072));
res += mul(Get(s0,-dx,dy), float4x4(0.000694860529620,0.022061338648200,-0.130503147840500,0.077110134065151,0.015988372266293,-0.016576556488872,-0.067339584231377,0.053295988589525,-0.083587475121021,0.053270976990461,-0.063505835831165,-0.032793145626783,-0.104053795337677,-0.062580153346062,0.041706647723913,0.099983647465706));
res += mul(Get(s0,0,-dy), float4x4(-0.024732260033488,-0.119484454393387,-0.079147920012474,0.241017639636993,0.049891572445631,0.030142148956656,0.050301577895880,0.071291826665401,-0.041732724756002,0.002182734897360,-0.122103378176689,0.034208100289106,-0.040130045264959,-0.077282465994358,-0.094788454473019,-0.086875371634960));
res += mul(Get(s0,0,0), float4x4(-0.092109747231007,0.064819492399693,0.100952893495560,-0.047446418553591,-0.101530238986015,0.075643278658390,-0.181511372327805,0.065715901553631,-0.084761202335358,0.017711218446493,0.006692337337881,0.035354964435101,-0.008491942659020,0.080729186534882,0.006104987114668,-0.047182369977236));
res += mul(Get(s0,0,dy), float4x4(-0.115664310753345,0.144816383719444,0.004066855646670,-0.020444614812732,0.023158302530646,0.053732547909021,-0.023206530138850,-0.000685802719090,0.019164506345987,0.029919616878033,0.057790871709585,-0.119540065526962,-0.095094099640846,0.116616398096085,0.165072426199913,-0.051165588200092));
res += mul(Get(s0,dx,-dy), float4x4(0.063416063785553,-0.021091695874929,0.034529481083155,0.070890448987484,0.006869625765830,-0.085964098572731,-0.065387293696404,-0.014621891081333,-0.095577813684940,0.146210104227066,0.003484924556687,-0.062881350517273,0.093464463949203,0.116644315421581,-0.108161263167858,-0.004851804580539));
res += mul(Get(s0,dx,0), float4x4(-0.008040109649301,0.010129804722965,0.066217035055161,-0.085348650813103,0.006345975212753,-0.035771962255239,-0.010199630632997,-0.002330533461645,-0.062683202326298,-0.031549815088511,0.029374277219176,0.019544571638107,-0.068050578236580,-0.173232853412628,-0.093856252729893,-0.123209625482559));
res += mul(Get(s0,dx,dy), float4x4(0.032069277018309,0.063945300877094,0.097397387027740,0.005745420232415,0.141796946525574,-0.028810383751988,-0.032055389136076,0.099278092384338,-0.096132248640060,-0.118340298533440,0.046206351369619,-0.138059496879578,-0.012657117098570,0.092440418899059,0.075752355158329,0.060663238167763));
res += mul(Get(s1,-dx,-dy), float4x4(-0.029879122972488,-0.028803193941712,-0.068080745637417,-0.073287971317768,-0.008057032711804,-0.095633566379547,-0.153004616498947,0.032929364591837,-0.057244550436735,-0.005354415625334,-0.005086579825729,0.109375543892384,-0.094274438917637,-0.082694984972477,0.030811369419098,0.014073522761464));
res += mul(Get(s1,-dx,0), float4x4(-0.080832317471504,0.028831442818046,-0.115090422332287,-0.004364442080259,-0.008947501890361,-0.056004676967859,-0.012153559364378,0.172785937786102,0.087626628577709,0.046331923455000,0.020377274602652,0.045593235641718,-0.139376699924469,-0.038045469671488,0.035676527768373,-0.027838205918670));
res += mul(Get(s1,-dx,dy), float4x4(0.046395320445299,0.029212998226285,-0.018984358757734,-0.014555558562279,-0.072399169206619,0.044717866927385,0.004951306618750,-0.007241316139698,0.093205884099007,0.134271740913391,0.008403823710978,0.073363237082958,0.063496917486191,0.054010700434446,-0.120161250233650,-0.092755764722824));
res += mul(Get(s1,0,-dy), float4x4(-0.043728780001402,0.116676218807697,0.011535145342350,-0.121597357094288,0.043606463819742,0.109054252505302,0.038517236709595,-0.074939809739590,-0.163168236613274,-0.044517669826746,-0.049518350511789,0.059973221272230,-0.028026636689901,0.078591577708721,-0.133244499564171,0.144803807139397));
res += mul(Get(s1,0,0), float4x4(-0.140020117163658,-0.068375103175640,0.010841168463230,0.005882089957595,-0.111024506390095,0.003848936874419,0.027558423578739,-0.044614795595407,0.114682570099831,0.192849352955818,-0.007729872129858,-0.049958981573582,0.003396179992706,-0.091547124087811,0.132148057222366,0.232131272554398));
res += mul(Get(s1,0,dy), float4x4(-0.048954106867313,-0.016156718134880,-0.120280966162682,0.092880740761757,0.081731468439102,-0.021719753742218,-0.033476144075394,-0.110184274613857,0.143988311290741,-0.171537503600121,-0.055524718016386,-0.108819469809532,-0.069052785634995,0.141662880778313,-0.105173341929913,-0.011211311444640));
res += mul(Get(s1,dx,-dy), float4x4(0.060006443411112,0.166102230548859,0.119834393262863,-0.023455522954464,0.034949589520693,0.170785978436470,-0.005576425697654,0.079933300614357,0.074520766735077,0.017351819202304,-0.023014239966869,-0.155791550874710,-0.035009324550629,0.197998329997063,-0.102937899529934,-0.128988683223724));
res += mul(Get(s1,dx,0), float4x4(0.007195459213108,-0.014935015700758,0.114810749888420,-0.002239075023681,0.117531433701515,0.083544425666332,0.113501943647861,0.046891618520021,0.121218167245388,0.103420145809650,-0.054004192352295,0.052585043013096,0.000145006255480,-0.068316027522087,0.024695554748178,0.038469556719065));
res += mul(Get(s1,dx,dy), float4x4(-0.005881525110453,-0.035654257982969,0.170701622962952,-0.058366421610117,-0.023589672520757,0.013379495590925,0.058123584836721,-0.051634985953569,-0.074098646640778,-0.075159825384617,0.060363646596670,-0.065837480127811,0.024922421202064,0.115663118660450,0.034778278321028,-0.011693041771650));
res += mul(Get(s2,-dx,-dy), float4x4(0.038994520902634,-0.053440310060978,-0.002712253946811,-0.053910814225674,-0.110161572694778,-0.008265012875199,0.013569923117757,0.070484571158886,-0.122266501188278,-0.057151954621077,-0.075439482927322,0.032770611345768,-0.073730386793613,-0.041606988757849,-0.119911573827267,-0.078613877296448));
res += mul(Get(s2,-dx,0), float4x4(-0.032936539500952,0.050073713064194,0.037323024123907,0.164609476923943,-0.122780427336693,-0.094737805426121,-0.013732323423028,0.135681509971619,0.064509920775890,-0.007093065418303,-0.071204580366611,0.049044821411371,0.114737913012505,0.019546942785382,-0.046971268951893,0.109604224562645));
res += mul(Get(s2,-dx,dy), float4x4(0.000256078434177,-0.011085289530456,0.047577694058418,0.030539019033313,0.022148353978992,-0.012700721621513,-0.076982699334621,-0.180078923702240,0.026235645636916,-0.112740784883499,0.034750249236822,0.090392574667931,-0.029624948278069,0.070732548832893,0.102296136319637,-0.035810142755508));
res += mul(Get(s2,0,-dy), float4x4(0.016593314707279,-0.047341804951429,-0.054501116275787,0.105235375463963,0.061162821948528,0.137788310647011,0.045168578624725,0.009181515313685,0.025882372632623,0.013317011296749,0.040462803095579,-0.004318555817008,-0.070831187069416,-0.013143857009709,0.016419921070337,-0.076415598392487));
res += mul(Get(s2,0,0), float4x4(-0.045525986701250,-0.151164218783379,-0.054674960672855,0.129559308290482,0.040040541440248,0.099164485931396,-0.010626900941133,-0.133701562881470,-0.025597140192986,-0.052917726337910,0.034462325274944,0.010382426902652,-0.032373126596212,0.042275909334421,0.033638466149569,0.086937524378300));
res += mul(Get(s2,0,dy), float4x4(0.017242522910237,0.113245867192745,0.033210407942533,-0.050529129803181,-0.036343362182379,-0.004749507177621,0.026725471019745,0.229617446660995,-0.053837750107050,0.022376704961061,0.046732779592276,0.039227362722158,-0.037379566580057,0.008361519314349,-0.056743249297142,0.036157455295324));
res += mul(Get(s2,dx,-dy), float4x4(0.062838315963745,-0.116555422544479,0.006965314038098,-0.126967027783394,0.006304260808975,-0.026373168453574,0.028976092115045,0.118139714002609,-0.122738353908062,0.036619741469622,0.185075595974922,0.013701967895031,-0.067030295729637,-0.057038310915232,-0.012837389484048,-0.009247154928744));
res += mul(Get(s2,dx,0), float4x4(-0.029458492994308,-0.005308693274856,-0.018308103084564,-0.105589374899864,-0.064202003180981,0.301024138927460,-0.002265622839332,0.061287250369787,-0.206026807427406,-0.123088896274567,0.001284982543439,0.116991408169270,0.064941197633743,-0.158610299229622,0.114808179438114,0.024566804990172));
res += mul(Get(s2,dx,dy), float4x4(-0.082586899399757,-0.024639911949635,-0.016626643016934,-0.063327603042126,-0.127568721771240,-0.118635952472687,0.004047041758895,0.049876343458891,-0.038964305073023,-0.043452791869640,-0.024097610265017,-0.009966650046408,0.059831734746695,-0.089361995458603,-0.012104506604373,0.074264608323574));
res += mul(Get(s3,-dx,-dy), float4x4(0.037104807794094,0.219950333237648,-0.025955514982343,0.014859495684505,0.072936460375786,-0.016224713996053,0.019241375848651,0.182414174079895,0.010468780063093,0.132778614759445,-0.008993184193969,0.164678215980530,-0.111201211810112,-0.024589300155640,0.119904942810535,-0.033072240650654));
res += mul(Get(s3,-dx,0), float4x4(0.128108292818069,-0.017323711887002,-0.004197485279292,-0.089645810425282,0.055080085992813,-0.003887487109751,-0.028433389961720,-0.002169678453356,-0.026451079174876,0.060378920286894,0.070319153368473,0.058600950986147,-0.042354647070169,0.066983819007874,-0.023617099970579,0.065906316041946));
res += mul(Get(s3,-dx,dy), float4x4(0.090364910662174,-0.023354636505246,-0.053274068981409,-0.026109445840120,0.068118833005428,-0.029420958831906,-0.011281572282314,-0.094216115772724,0.030344665050507,0.105339817702770,0.047090601176023,-0.070398494601250,-0.007460777647793,0.161594629287720,0.110257595777512,-0.082394510507584));
res += mul(Get(s3,0,-dy), float4x4(0.009418576955795,-0.111620292067528,0.071758762001991,0.158482000231743,0.138764470815659,-0.030392875894904,0.010607586242259,0.186963275074959,0.064770124852657,0.039622440934181,-0.030343014746904,-0.068609572947025,-0.106935366988182,0.037344940006733,-0.003502340056002,0.015701217576861));
res += mul(Get(s3,0,0), float4x4(-0.008891366422176,0.106830820441246,0.053438093513250,-0.042815409600735,0.077801324427128,0.006987531669438,-0.105106331408024,0.016815518960357,-0.015439024195075,-0.132220581173897,-0.065021552145481,-0.036878593266010,0.111440867185593,-0.025632180273533,0.088204592466354,0.084530085325241));
res += mul(Get(s3,0,dy), float4x4(-0.038169056177139,0.033533118665218,-0.049269661307335,-0.047009129077196,0.009110341779888,-0.036354649811983,-0.011594963259995,-0.096518076956272,0.042027134448290,0.061003033071756,0.063443049788475,-0.042573411017656,0.023609770461917,0.090952195227146,-0.041049432009459,-0.002707663225010));
res += mul(Get(s3,dx,-dy), float4x4(-0.035144668072462,-0.214251473546028,0.081834539771080,-0.024077231064439,0.106247849762440,0.054991722106934,-0.097810983657837,-0.145230501890182,0.001154101104476,-0.110592737793922,-0.029482726007700,0.000074295545346,-0.023368008434772,-0.017559019848704,-0.025401946157217,0.039269547909498));
res += mul(Get(s3,dx,0), float4x4(-0.075389198958874,0.083255596458912,0.081204511225224,0.001117805368267,0.007093414664268,-0.043806739151478,0.068350128829479,0.103642143309116,-0.108212761580944,0.031012475490570,-0.028478793799877,-0.067304521799088,0.009280129335821,-0.178496047854424,-0.006465439219028,0.098865851759911));
res += mul(Get(s3,dx,dy), float4x4(-0.090086072683334,0.130692273378372,0.289313733577728,0.125785291194916,0.004437698982656,-0.010692495852709,0.117071792483330,-0.047562308609486,0.011185597628355,-0.027028724551201,-0.051166560500860,0.045196514576674,0.124530382454395,0.019861426204443,-0.106601670384407,-0.016957979649305));
res = max(float4(0,0,0,0), res);
return res;
}