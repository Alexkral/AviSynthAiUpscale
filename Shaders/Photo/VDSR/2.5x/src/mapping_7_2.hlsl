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
res += mul(Get(s0,-dx,-dy), float4x4(0.109888300299644,-0.093580372631550,0.151560083031654,0.126933515071869,-0.151598513126373,0.016506614163518,0.022636292502284,0.042326860129833,0.046579718589783,0.188294634222984,0.024718744680285,0.127840012311935,0.134641081094742,0.037983465939760,-0.022514605894685,-0.066423401236534));
res += mul(Get(s0,-dx,0), float4x4(-0.205761417746544,0.013144255615771,-0.153184071183205,0.285112202167511,0.023551736027002,-0.064317077398300,0.182974472641945,0.089483030140400,0.197609812021255,0.148899748921394,0.000622120394837,-0.188644006848335,0.066898800432682,0.025384452193975,-0.231640815734863,-0.290756285190582));
res += mul(Get(s0,-dx,dy), float4x4(-0.151602044701576,0.019311919808388,0.001792723545805,0.127213329076767,0.080748833715916,0.223411202430725,0.038235940039158,-0.048851121217012,0.011777903884649,0.076867312192917,0.011676927097142,-0.019092667847872,0.008106727153063,-0.036034997552633,-0.269167393445969,0.093428663909435));
res += mul(Get(s0,0,-dy), float4x4(0.193882837891579,-0.020660154521465,-0.001315271947533,0.030079776421189,-0.130601525306702,-0.071065254509449,0.089141435921192,-0.136959940195084,0.022602034732699,-0.134772464632988,-0.070622064173222,-0.053738739341497,0.044980689883232,0.053052328526974,0.261288762092590,0.013429810293019));
res += mul(Get(s0,0,0), float4x4(0.092885762453079,-0.146898284554482,0.193414479494095,-0.114343576133251,0.096022576093674,-0.016881177201867,-0.016884267330170,-0.161440894007683,-0.037574525922537,0.050658967345953,-0.001091185607947,0.092887960374355,0.131603494286537,0.003508496331051,0.098196849226952,-0.085313729941845));
res += mul(Get(s0,0,dy), float4x4(-0.030939904972911,0.025794779881835,0.094820208847523,0.125965774059296,0.172329470515251,0.061644405126572,0.128660738468170,0.005497186444700,-0.115626789629459,-0.035194650292397,0.069481752812862,0.049834791570902,-0.110601119697094,-0.160722330212593,0.197337433695793,0.168202176690102));
res += mul(Get(s0,dx,-dy), float4x4(-0.054407294839621,0.008321815170348,0.133083671331406,0.104518994688988,-0.017097694799304,-0.186429798603058,0.003693191101775,-0.097683884203434,-0.070029765367508,-0.064645349979401,0.089657045900822,0.370739281177521,-0.106300070881844,-0.129379466176033,-0.003883905708790,-0.263419389724731));
res += mul(Get(s0,dx,0), float4x4(0.340498447418213,0.038336027413607,0.193804770708084,0.053252991288900,-0.167131036520004,-0.009925998747349,0.030303608626127,0.096895836293697,-0.175477042794228,-0.177044570446014,0.037329014390707,0.196203246712685,0.112601108849049,0.125434502959251,-0.073694303631783,-0.094013027846813));
res += mul(Get(s0,dx,dy), float4x4(-0.157243654131889,0.159696355462074,-0.162247821688652,0.100693821907043,0.119018144905567,-0.056453727185726,-0.086393810808659,-0.044243749231100,0.131709367036819,-0.215055346488953,0.145332500338554,0.149031132459641,0.177220016717911,0.032741535454988,-0.022371238097548,-0.243178084492683));
res += mul(Get(s1,-dx,-dy), float4x4(-0.023710712790489,-0.032007087022066,-0.088680930435658,-0.132645532488823,0.022584477439523,0.182647377252579,-0.191183969378471,0.140682443976402,0.109435506165028,0.047061495482922,0.075875751674175,-0.167799293994904,0.085320211946964,-0.070111200213432,0.023728884756565,0.068683817982674));
res += mul(Get(s1,-dx,0), float4x4(-0.099575288593769,-0.110661990940571,-0.222028896212578,0.052920255810022,0.028520196676254,0.100681647658348,-0.030273668467999,0.264610946178436,-0.019716581329703,-0.084433376789093,-0.049860443919897,0.133024603128433,0.136335387825966,0.080258697271347,-0.120831161737442,-0.033461689949036));
res += mul(Get(s1,-dx,dy), float4x4(0.003952470142394,0.011310083791614,0.040121335536242,0.124780647456646,0.082855261862278,-0.075443655252457,0.022677380591631,0.087314382195473,-0.147279739379883,0.139217272400856,0.068344138562679,0.058021564036608,0.104810908436775,-0.076677471399307,-0.059126522392035,-0.148259818553925));
res += mul(Get(s1,0,-dy), float4x4(-0.082491807639599,0.028358107432723,-0.012771075591445,-0.027282349765301,0.121974281966686,-0.017528768628836,-0.069810763001442,0.065349288284779,-0.002810018369928,-0.139624372124672,-0.199598953127861,-0.020678550004959,0.052685517817736,-0.038706362247467,0.104927144944668,0.095975816249847));
res += mul(Get(s1,0,0), float4x4(-0.101722165942192,-0.185878187417984,0.095227025449276,-0.078464671969414,0.094628088176250,-0.058602236211300,0.025663541629910,0.018701435998082,0.240598127245903,0.030153522267938,-0.004902062471956,0.100061215460300,-0.095997102558613,-0.027746649459004,-0.094348512589931,0.053740527480841));
res += mul(Get(s1,0,dy), float4x4(0.071382932364941,0.084928803145885,0.049465470016003,0.182907462120056,-0.145447239279747,0.047151647508144,0.144718185067177,0.042545523494482,0.127261847257614,-0.102617308497429,0.021109761670232,-0.028402488678694,-0.010414589196444,0.055912181735039,0.074926942586899,0.133105650544167));
res += mul(Get(s1,dx,-dy), float4x4(-0.045603100210428,0.016273804008961,-0.062001511454582,0.054614800959826,0.162593796849251,0.086466908454895,0.050722483545542,-0.005762379150838,0.012819604016840,0.030360139906406,-0.032175470143557,-0.119871467351913,0.102538451552391,0.146040901541710,-0.100930072367191,0.038365218788385));
res += mul(Get(s1,dx,0), float4x4(0.015020121820271,0.041556965559721,0.149971425533295,0.101255722343922,-0.146797075867653,0.041644237935543,0.128275811672211,0.001814933959395,-0.079694226384163,-0.049624618142843,0.009986119344831,0.117459677159786,0.123049907386303,-0.010801540687680,0.171258926391602,-0.048709038645029));
res += mul(Get(s1,dx,dy), float4x4(-0.042925704270601,-0.115929864346981,0.073890753090382,0.089545115828514,-0.166419565677643,0.053152967244387,0.213850438594818,0.030831634998322,-0.080652266740799,0.011034491471946,-0.269747883081436,0.194694116711617,0.038201447576284,-0.006968227680773,0.085126094520092,0.032576296478510));
res += mul(Get(s2,-dx,-dy), float4x4(-0.088398486375809,0.007013623137027,-0.139552623033524,-0.031170554459095,0.166795805096626,-0.066363230347633,0.003042588941753,-0.044370688498020,-0.034607678651810,0.051448617130518,0.024554772302508,-0.157812520861626,-0.045850079506636,0.050382319837809,-0.100033253431320,-0.035118393599987));
res += mul(Get(s2,-dx,0), float4x4(0.029077727347612,-0.067044124007225,0.127558916807175,-0.163083344697952,-0.029118718579412,0.033478021621704,0.038606513291597,-0.045680597424507,0.014875366352499,0.212312310934067,0.115551479160786,0.092502273619175,0.233756616711617,-0.074359819293022,-0.092584565281868,-0.017045956104994));
res += mul(Get(s2,-dx,dy), float4x4(-0.140137672424316,0.136076658964157,0.291235446929932,-0.045617975294590,0.074432194232941,-0.070099949836731,-0.110192030668259,0.190760537981987,-0.060181114822626,0.008550860919058,0.089923627674580,-0.126042172312737,0.070899561047554,-0.092145122587681,-0.020040260627866,0.043608579784632));
res += mul(Get(s2,0,-dy), float4x4(-0.023814784362912,0.115339934825897,-0.310408771038055,-0.091303423047066,-0.201325207948685,0.019969103857875,-0.098162293434143,0.143762603402138,-0.157037854194641,0.131003588438034,-0.073458068072796,0.002311560092494,-0.105660855770111,0.090102516114712,-0.257495343685150,-0.176044732332230));
res += mul(Get(s2,0,0), float4x4(0.063420690596104,0.114896185696125,-0.045918747782707,-0.022997060790658,0.104612216353416,-0.019175121560693,0.086679860949516,-0.113853774964809,0.057269107550383,-0.018369903787971,0.132730692625046,0.034604318439960,-0.106107264757156,0.076471909880638,-0.058364216238260,0.053851272910833));
res += mul(Get(s2,0,dy), float4x4(0.050509545952082,-0.050853073596954,-0.101965621113777,0.025330381467938,-0.035312488675117,0.040575318038464,-0.043993946164846,0.057178009301424,0.055593833327293,0.119695834815502,0.358324110507965,-0.103938072919846,-0.038728669285774,0.046943485736847,-0.071622654795647,-0.130492120981216));
res += mul(Get(s2,dx,-dy), float4x4(-0.111904345452785,-0.154415950179100,-0.070925846695900,-0.069537609815598,0.070263750851154,-0.169369652867317,0.156746372580528,-0.056515775620937,0.022593846544623,0.046220093965530,-0.003919287584722,0.116551198065281,-0.032277494668961,-0.061460372060537,0.096928529441357,-0.058303892612457));
res += mul(Get(s2,dx,0), float4x4(0.064570039510727,-0.080149002373219,0.066723093390465,0.043883781880140,-0.040721740573645,0.141711667180061,0.103433333337307,-0.044162046164274,-0.065431609749794,0.007108376361430,0.064059816300869,0.044689964503050,0.214345127344131,-0.020981386303902,0.018976125866175,0.120102293789387));
res += mul(Get(s2,dx,dy), float4x4(-0.117650061845779,0.023943644016981,0.004337304737419,-0.002371846931055,0.073358222842216,-0.014512283727527,-0.095310695469379,-0.087052717804909,-0.193209156394005,-0.021390343084931,0.181113272905350,0.012573388405144,0.035561945289373,-0.181440502405167,-0.064820498228073,0.147664010524750));
res += mul(Get(s3,-dx,-dy), float4x4(-0.082193993031979,-0.162570044398308,-0.119732022285461,-0.003634790657088,-0.010413665324450,0.027728732675314,-0.137194767594337,0.190232709050179,-0.185296371579170,0.110995262861252,-0.240197390317917,0.036104753613472,-0.112903505563736,0.036750864237547,-0.122022219002247,-0.046570818871260));
res += mul(Get(s3,-dx,0), float4x4(-0.045942775905132,0.011560481972992,-0.095345802605152,0.096819341182709,-0.116727970540524,-0.119247980415821,0.025544682517648,0.068861857056618,0.077339552342892,0.046874172985554,0.136403813958168,-0.069707944989204,-0.004428563639522,-0.009633313864470,0.052551485598087,-0.008218873292208));
res += mul(Get(s3,-dx,dy), float4x4(-0.021790502592921,-0.137265875935555,0.132683843374252,-0.079440698027611,-0.038888018578291,-0.124562121927738,-0.021378226578236,0.094414904713631,-0.106558360159397,-0.124145634472370,0.162654012441635,0.075436480343342,0.129475682973862,0.030370529741049,0.003361522685736,0.104882255196571));
res += mul(Get(s3,0,-dy), float4x4(0.076868668198586,0.033178821206093,-0.140243411064148,0.036135133355856,-0.084642894566059,-0.131226226687431,-0.005869839340448,0.031531371176243,-0.129837632179260,0.178318738937378,-0.019170830026269,0.086293727159500,0.067042738199234,-0.022457195445895,0.154389679431915,-0.012408925220370));
res += mul(Get(s3,0,0), float4x4(0.210392430424690,-0.126070588827133,-0.022223619744182,0.167671933770180,-0.040342096239328,0.110521681606770,-0.052783276885748,0.005728528369218,-0.152347430586815,-0.178564906120300,0.276111125946045,0.073671676218510,-0.043579038232565,0.062724821269512,-0.116717867553234,-0.000822037749458));
res += mul(Get(s3,0,dy), float4x4(0.167681366205215,-0.032350756227970,0.066300548613071,-0.132582873106003,-0.077893055975437,0.057301837950945,0.026691120117903,0.130415976047516,-0.032290149480104,0.041444830596447,0.243958100676537,0.115403108298779,0.035348176956177,-0.042039725929499,0.025797778740525,-0.144016802310944));
res += mul(Get(s3,dx,-dy), float4x4(-0.109472148120403,-0.109920896589756,-0.064518131315708,0.185675725340843,-0.042580943554640,0.018822280690074,-0.003089818637818,-0.113054595887661,0.068349361419678,0.078729957342148,-0.169197663664818,-0.032775897532701,0.114299163222313,-0.125096693634987,0.024914260953665,-0.094800099730492));
res += mul(Get(s3,dx,0), float4x4(0.244387343525887,0.056140977889299,0.187463104724884,0.078378416597843,-0.171313345432281,-0.083571933209896,-0.022389199584723,-0.165724277496338,0.200092449784279,0.023732867091894,-0.162463784217834,-0.079640425741673,-0.019352665171027,0.109085060656071,-0.043045099824667,0.203688830137253));
res += mul(Get(s3,dx,dy), float4x4(0.006528480909765,-0.026690898463130,-0.070487529039383,-0.039990436285734,0.069117821753025,-0.115784391760826,-0.041875116527081,-0.012375751510262,0.022493381053209,-0.090728290379047,-0.025279419496655,-0.033310916274786,-0.075460173189640,0.108434841036797,-0.142070308327675,-0.037864066660404));
return max(float4(0,0,0,0), res);
}
