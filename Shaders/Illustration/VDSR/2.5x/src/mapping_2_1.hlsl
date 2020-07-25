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
res += mul(Get(s0,-dx,-dy), float4x4(-0.201701730489731,-0.036075845360756,0.216094300150871,-0.096736170351505,0.097794406116009,-0.025601897388697,-0.007822211831808,-0.013731686398387,-0.156223371624947,0.038562346249819,-0.169401749968529,0.091541014611721,0.150163084268570,-0.242601424455643,-0.091219261288643,0.114272892475128));
res += mul(Get(s0,-dx,0), float4x4(-0.056931197643280,-0.054883815348148,0.108026325702667,-0.043810851871967,0.298290878534317,-0.064057208597660,-0.173359543085098,0.173876464366913,-0.063488587737083,-0.086501568555832,-0.071450345218182,-0.082253687083721,-0.125231638550758,0.182705476880074,-0.107047170400620,0.014541694894433));
res += mul(Get(s0,-dx,dy), float4x4(0.031136218458414,-0.049464166164398,-0.125854983925819,0.163725510239601,-0.006277099717408,-0.143421158194542,0.214545696973801,-0.150060817599297,-0.037429884076118,-0.038254033774137,0.116636380553246,-0.212628573179245,-0.201344758272171,0.074718408286572,0.041897434741259,-0.062732413411140));
res += mul(Get(s0,0,-dy), float4x4(-0.122388094663620,-0.019517671316862,0.008444101549685,0.080956980586052,-0.007359542418271,0.042827773839235,0.087061010301113,0.026043821126223,0.182323187589645,0.108323000371456,0.046211540699005,-0.153653189539909,-0.101416654884815,0.069461971521378,0.093740791082382,-0.216081291437149));
res += mul(Get(s0,0,0), float4x4(0.017494617030025,0.015498468652368,-0.119714178144932,0.085531063377857,-0.036128807812929,0.085003517568111,-0.096043385565281,-0.090231537818909,0.057828489691019,0.023087538778782,0.109068833291531,-0.186932757496834,0.090647079050541,0.072753474116325,0.015587720088661,-0.118568062782288));
res += mul(Get(s0,0,dy), float4x4(0.006315796170384,0.157922193408012,-0.173030883073807,0.029813271015882,0.167012557387352,-0.144435092806816,0.302873939275742,0.048493467271328,0.151733398437500,-0.052474215626717,-0.069373890757561,0.099513992667198,-0.012648715637624,0.158492162823677,-0.132691353559494,0.093896947801113));
res += mul(Get(s0,dx,-dy), float4x4(0.079112812876701,0.035794790834188,0.128376707434654,0.015232509933412,-0.134654402732849,0.016268346458673,-0.242006316781044,-0.088187523186207,-0.043720539659262,-0.103609025478363,-0.110310807824135,0.043376076966524,0.104092404246330,-0.210753753781319,-0.101899199187756,0.085183590650558));
res += mul(Get(s0,dx,0), float4x4(-0.012332173995674,-0.059703186154366,-0.003013425040990,-0.083016581833363,0.063974983990192,-0.106416620314121,-0.051981400698423,0.132011577486992,-0.050133168697357,-0.070352934300900,0.035062734037638,-0.156374886631966,-0.044728845357895,-0.169186934828758,0.090874508023262,-0.154161900281906));
res += mul(Get(s0,dx,dy), float4x4(0.013911810703576,-0.080958634614944,-0.075495034456253,-0.086852975189686,-0.031286396086216,0.114495277404785,0.074379637837410,0.170064166188240,0.279957413673401,-0.058572307229042,0.018423261120915,0.041992835700512,-0.076065897941589,-0.046427853405476,0.063845865428448,-0.196127876639366));
res += mul(Get(s1,-dx,-dy), float4x4(-0.086703047156334,0.081355623900890,-0.004357364960015,0.090117223560810,-0.054777830839157,-0.130064785480499,-0.042231678962708,0.014223542995751,-0.041795659810305,0.227594137191772,-0.072244592010975,0.136372461915016,-0.141265347599983,-0.062197193503380,-0.103872276842594,0.086938530206680));
res += mul(Get(s1,-dx,0), float4x4(0.008212205022573,-0.172780066728592,-0.098703287541866,-0.015562200918794,0.007327231112868,-0.082374356687069,-0.045753534883261,0.049229428172112,0.175263687968254,-0.071098044514656,-0.013535602018237,-0.006226664409041,-0.026212394237518,-0.008395660668612,-0.036134090274572,-0.019298618659377));
res += mul(Get(s1,-dx,dy), float4x4(0.038789935410023,-0.069915205240250,0.010596934705973,-0.090091772377491,0.017660947516561,-0.048408485949039,-0.001666224910878,0.069137908518314,-0.089468635618687,-0.021022472530603,-0.094405636191368,0.100740402936935,-0.164136618375778,0.076062299311161,0.098088629543781,-0.127062380313873));
res += mul(Get(s1,0,-dy), float4x4(-0.074308946728706,-0.091450460255146,-0.011233903467655,-0.250230044126511,0.013911046087742,0.021806914359331,0.037278577685356,-0.153358191251755,0.062483441084623,0.160882562398911,-0.125679716467857,-0.110632084310055,-0.059835530817509,-0.087059251964092,0.059049073606730,0.095930650830269));
res += mul(Get(s1,0,0), float4x4(-0.051284261047840,0.052404601126909,0.122046910226345,-0.126167103648186,-0.378392696380615,0.135331511497498,-0.100377202033997,-0.056541215628386,-0.027352839708328,-0.167346954345703,0.147247821092606,-0.062133781611919,0.085726909339428,0.019944569095969,0.026104528456926,-0.043890047818422));
res += mul(Get(s1,0,dy), float4x4(-0.029787199571729,0.095527909696102,0.034878928214312,0.134774699807167,-0.136866167187691,-0.163185656070709,0.156414479017258,0.064077056944370,-0.041812259703875,0.017213981598616,0.019324444234371,-0.152906268835068,0.018042588606477,-0.172683015465736,0.230863571166992,-0.151201382279396));
res += mul(Get(s1,dx,-dy), float4x4(-0.162068799138069,-0.224994719028473,-0.112148888409138,-0.219933480024338,-0.020444344729185,0.028437016531825,0.055691856890917,0.103814214468002,-0.160009637475014,0.053764864802361,0.026533896103501,-0.155801966786385,-0.182464972138405,-0.153255850076675,0.016914865002036,0.161578640341759));
res += mul(Get(s1,dx,0), float4x4(0.110527701675892,-0.089161530137062,-0.071916259825230,-0.188368991017342,-0.090464793145657,-0.118752449750900,-0.048210699111223,0.087077915668488,0.054507877677679,-0.088944390416145,0.142287269234657,0.109701037406921,0.048358097672462,0.015560709871352,-0.026433713734150,-0.038171928375959));
res += mul(Get(s1,dx,dy), float4x4(-0.089845202863216,-0.103435933589935,0.034612823277712,0.057158280164003,0.040584474802017,-0.137112557888031,-0.075115926563740,0.105584956705570,-0.136716008186340,0.030812950804830,0.153321668505669,0.081827238202095,-0.019256148487329,0.122554883360863,-0.004600915126503,0.072888866066933));
res += mul(Get(s2,-dx,-dy), float4x4(-0.040054742246866,-0.151571333408356,0.053644765168428,-0.029915101826191,-0.159825831651688,-0.065653987228870,0.118882127106190,0.010782275348902,0.106042705476284,0.205119296908379,-0.201143965125084,-0.072511486709118,-0.120226189494133,-0.211697921156883,0.043962784111500,-0.020627556368709));
res += mul(Get(s2,-dx,0), float4x4(-0.119789294898510,0.089556612074375,0.081870838999748,-0.246379211544991,-0.003295224392787,-0.027403572574258,-0.044113304466009,-0.104528799653053,-0.044000361114740,0.082771494984627,0.002281738677993,-0.085207313299179,0.065450511872768,0.125024557113647,-0.215743675827980,0.146217241883278));
res += mul(Get(s2,-dx,dy), float4x4(-0.097339525818825,0.037004984915257,0.174067780375481,-0.079768575727940,-0.064404889941216,0.127402439713478,-0.057001058012247,-0.006332156248391,-0.048165336251259,-0.194427177309990,-0.006402494851500,0.137221992015839,-0.147045537829399,-0.042342126369476,-0.286275744438171,-0.103079967200756));
res += mul(Get(s2,0,-dy), float4x4(0.190876737236977,0.069777846336365,-0.250048756599426,0.068924538791180,0.070961356163025,0.026633044704795,-0.098400585353374,-0.094860076904297,-0.155140712857246,-0.100496910512447,-0.068603321909904,-0.102478899061680,-0.237352252006531,0.199261531233788,-0.067968480288982,-0.269010066986084));
res += mul(Get(s2,0,0), float4x4(-0.046341251581907,-0.057118318974972,0.126713246107101,0.162990421056747,0.018560832366347,0.137639150023460,0.087517082691193,0.088299661874771,0.005182819906622,-0.213305741548538,-0.084027096629143,-0.072458818554878,-0.282184273004532,-0.155650317668915,0.128699302673340,-0.212441936135292));
res += mul(Get(s2,0,dy), float4x4(-0.300534397363663,0.112407982349396,0.116119310259819,0.160427674651146,0.052751179784536,0.037473596632481,-0.107201784849167,-0.043582007288933,-0.064481012523174,-0.065490305423737,0.080417580902576,0.008492035791278,0.058446705341339,0.054932486265898,0.005954209249467,-0.012023593299091));
res += mul(Get(s2,dx,-dy), float4x4(0.112774245440960,-0.091263942420483,0.102005347609520,-0.100592300295830,-0.049232047051191,-0.027262451127172,0.148610383272171,0.106951475143433,0.114620789885521,-0.003839568234980,0.053643446415663,0.123893402516842,0.040418062359095,0.064919821918011,0.009417263790965,0.043569803237915));
res += mul(Get(s2,dx,0), float4x4(-0.128199473023415,-0.144050851464272,-0.219201087951660,0.061981834471226,0.033076614141464,-0.038434710353613,-0.002187590114772,0.132776498794556,0.042303059250116,0.006780029274523,-0.061850499361753,-0.024363303557038,-0.056763503700495,0.153448998928070,0.001768284710124,-0.020366838201880));
res += mul(Get(s2,dx,dy), float4x4(-0.083304040133953,-0.161690250039101,-0.088717058300972,-0.063253961503506,-0.151203230023384,-0.006667638197541,0.051890544593334,0.132722064852715,0.092751167714596,0.018202858045697,0.025246800854802,-0.009113323874772,0.046804975718260,-0.009362355805933,-0.060192391276360,-0.152061656117439));
res += mul(Get(s3,-dx,-dy), float4x4(-0.046406012028456,-0.073586486279964,-0.082258127629757,0.073031604290009,-0.053484234958887,-0.043781295418739,-0.047516658902168,-0.101625934243202,0.163214638829231,0.040416959673166,-0.066756367683411,-0.016826091334224,0.083594247698784,-0.166638955473900,-0.012870553880930,0.055150859057903));
res += mul(Get(s3,-dx,0), float4x4(-0.124388523399830,0.100078970193863,-0.190696582198143,-0.083224691450596,-0.040599960833788,0.031249476596713,0.111708387732506,-0.033760782331228,0.026591168716550,-0.076078310608864,-0.060959126800299,0.102524474263191,0.001588899525814,-0.038275904953480,0.167791292071342,-0.214227661490440));
res += mul(Get(s3,-dx,dy), float4x4(-0.037957098335028,0.070356078445911,0.020108105614781,0.062234330922365,-0.106726787984371,-0.019376797601581,-0.103616878390312,-0.079095058143139,0.147714331746101,-0.055557984858751,0.039751656353474,0.169916972517967,-0.058273267000914,-0.032943602651358,-0.266266644001007,0.040374282747507));
res += mul(Get(s3,0,-dy), float4x4(0.121181584894657,0.027544436976314,-0.033705804497004,0.166240230202675,0.029220208525658,-0.070234440267086,0.123248927295208,-0.014679498039186,0.044857844710350,0.097558587789536,0.134826153516769,-0.081634968519211,-0.014499404467642,-0.110299758613110,-0.017503535374999,0.102399162948132));
res += mul(Get(s3,0,0), float4x4(0.164324924349785,-0.042158812284470,-0.050823718309402,-0.045423150062561,0.033903788775206,0.087260574102402,0.042483109980822,-0.005160021129996,-0.024283703416586,0.006544942501932,-0.178147867321968,-0.070093251764774,0.020774126052856,-0.085778616368771,0.179424107074738,-0.093220502138138));
res += mul(Get(s3,0,dy), float4x4(0.137302994728088,-0.015492227859795,-0.095496065914631,-0.044915940612555,0.054896570742130,0.010942003689706,0.214231699705124,-0.019073130562901,0.113562583923340,-0.067470163106918,0.044338718056679,0.002629591384903,-0.098902270197868,0.042749896645546,-0.227793350815773,-0.111055627465248));
res += mul(Get(s3,dx,-dy), float4x4(0.028393121436238,0.029434358701110,-0.232329577207565,-0.244011059403419,0.057393420487642,0.158045127987862,0.124693565070629,-0.088676214218140,-0.109322965145111,0.029668956995010,0.044434200972319,0.067246370017529,0.104115754365921,-0.216398835182190,-0.232606574892998,-0.049935773015022));
res += mul(Get(s3,dx,0), float4x4(-0.067496769130230,-0.135414868593216,-0.097537212073803,-0.045789677649736,0.073903463780880,0.167685464024544,-0.004375892691314,0.103338018059731,0.139375507831573,0.041198477149010,-0.076329171657562,0.085354633629322,-0.144972711801529,-0.036545880138874,0.143145248293877,0.066758222877979));
res += mul(Get(s3,dx,dy), float4x4(-0.039180390536785,-0.167476058006287,0.186284273862839,0.113721400499344,-0.289907395839691,0.013944721780717,0.008275986649096,-0.095704205334187,0.066717304289341,0.025006275624037,-0.032814867794514,0.001882261363789,-0.079178676009178,0.138636931777000,-0.168027207255363,-0.148874610662460));
return max(float4(0,0,0,0), res);
}
