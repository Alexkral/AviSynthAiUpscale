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
float4 res = float4(0.021698174998164,-0.058084066957235,-0.094621144235134,-0.091686442494392);
res += mul(Get(s0,-dx,-dy), float4x4(-0.100970804691315,0.010602151975036,0.015991749241948,0.019179303199053,0.068981163203716,0.064471110701561,0.044977258890867,-0.032384533435106,-0.001721429056488,0.022507738322020,-0.026106595993042,-0.017444400116801,-0.173822462558746,-0.061642631888390,0.047156300395727,0.052875220775604));
res += mul(Get(s0,-dx,0), float4x4(-0.061825897544622,-0.007034198381007,0.077895835042000,-0.050646979361773,-0.039087504148483,-0.024310171604156,0.082528784871101,-0.008260261267424,-0.088042713701725,0.010960709303617,-0.062981255352497,0.024631302803755,0.327839165925980,0.063029192388058,-0.000220920992433,0.140384078025818));
res += mul(Get(s0,-dx,dy), float4x4(-0.075994744896889,-0.015275863930583,0.038495942950249,0.033572744578123,-0.016465825960040,-0.043803233653307,0.014070799574256,-0.033940404653549,0.052769418805838,0.025107813999057,-0.028310844674706,-0.012562369927764,-0.113413944840431,0.051083367317915,0.004295287653804,0.117104977369308));
res += mul(Get(s0,0,-dy), float4x4(-0.093007370829582,0.016478875651956,-0.043482650071383,-0.150038853287697,0.189327090978622,-0.261799156665802,0.022016478702426,-0.028389941900969,-0.051160797476768,-0.173703089356422,-0.078933015465736,-0.117367461323738,-0.098482429981232,-0.024877680465579,0.140924975275993,-0.067462436854839));
res += mul(Get(s0,0,0), float4x4(-0.227880686521530,0.073780447244644,0.024443816393614,-0.125543087720871,-0.059602133929729,0.110840372741222,0.194425076246262,-0.059668719768524,-0.028738049790263,0.378620505332947,0.090148285031319,0.352390080690384,0.125303164124489,-0.030781676992774,0.286623060703278,-0.002272332785651));
res += mul(Get(s0,0,dy), float4x4(-0.122646570205688,0.089183919131756,-0.075532823801041,0.124533563852310,0.025903943926096,0.098810881376266,-0.060946699231863,0.070720024406910,0.093883313238621,-0.225343585014343,-0.049174644052982,-0.093175046145916,-0.046943884342909,-0.009244460612535,0.192285358905792,0.063794195652008));
res += mul(Get(s0,dx,-dy), float4x4(-0.149040728807449,-0.030587155371904,-0.045465786010027,-0.063742890954018,0.077154301106930,-0.014386482536793,0.088566996157169,0.056267656385899,-0.145606130361557,0.013107703067362,-0.060926299542189,-0.054269831627607,0.166191399097443,0.101395420730114,-0.041916660964489,-0.087364584207535));
res += mul(Get(s0,dx,0), float4x4(0.042047005146742,0.006707657594234,-0.067072555422783,-0.059410687536001,-0.036255005747080,-0.171154931187630,0.147182285785675,-0.115178473293781,0.109559543430805,0.073914818465710,-0.274304330348969,0.164756953716278,-0.217292249202728,-0.072256721556187,-0.072764851152897,0.021422846242785));
res += mul(Get(s0,dx,dy), float4x4(-0.077990680932999,0.023934772238135,-0.001198975369334,0.036416102200747,0.015424037352204,0.001778815407306,0.012564261443913,-0.011635714210570,0.063396453857422,-0.049563292413950,-0.029848780483007,-0.057147398591042,0.187157288193703,-0.067912973463535,-0.009022857993841,-0.107184648513794));
res += mul(Get(s1,-dx,-dy), float4x4(0.099258594214916,-0.003454733872786,-0.007738073822111,0.004117086995393,0.028126507997513,0.030493836849928,0.057031456381083,0.028627848252654,0.048529528081417,0.098618976771832,-0.003506708657369,0.014379427768290,-0.023200575262308,0.055384628474712,0.025022029876709,-0.010336276143789));
res += mul(Get(s1,-dx,0), float4x4(-0.012284581549466,0.031034732237458,-0.139316752552986,-0.129607483744621,0.005105592776090,0.016519136726856,-0.058572463691235,-0.089608818292618,-0.161835506558418,0.033774424344301,-0.130819663405418,-0.035486448556185,-0.060369938611984,-0.009687943384051,0.044867485761642,0.099616028368473));
res += mul(Get(s1,-dx,dy), float4x4(0.042484607547522,0.042350836098194,0.009181230328977,0.025591924786568,-0.018284115940332,-0.011118289083242,-0.009106628596783,-0.024549229070544,0.089713878929615,0.000696578936186,-0.070867069065571,0.061156775802374,0.130299046635628,-0.034502390772104,-0.021024679765105,-0.059351716190577));
res += mul(Get(s1,0,-dy), float4x4(0.018956614658237,0.074625238776207,-0.022687233984470,-0.093443416059017,-0.076583653688431,-0.158325225114822,0.063403405249119,-0.042219277471304,-0.068613439798355,-0.068281650543213,-0.050206534564495,-0.001840497599915,-0.006009887438267,-0.094618476927280,0.048197403550148,-0.026022534817457));
res += mul(Get(s1,0,0), float4x4(-0.139357224106789,0.031688172370195,0.032793372869492,0.089074894785881,0.046113204210997,-0.052992358803749,0.115412026643753,-0.200367823243141,0.068132959306240,-0.022188741713762,0.007999580353498,-0.079372026026249,-0.170753687620163,-0.213330239057541,-0.096860356628895,0.030828328803182));
res += mul(Get(s1,0,dy), float4x4(-0.059497036039829,-0.068140387535095,0.022643396630883,-0.113919146358967,-0.042350459843874,0.052746377885342,-0.013502147048712,-0.013304010033607,-0.172023534774780,-0.019884075969458,-0.115081593394279,0.047126147896051,-0.053584173321724,-0.030509898439050,0.073967315256596,-0.038904741406441));
res += mul(Get(s1,dx,-dy), float4x4(0.013857989571989,-0.054962493479252,0.039228409528732,-0.032907322049141,-0.057416278868914,-0.081816963851452,0.068709723651409,-0.131328195333481,-0.079591020941734,0.140750691294670,0.009307948872447,-0.010342921130359,-0.216717928647995,-0.008525349199772,-0.114762865006924,-0.057028084993362));
res += mul(Get(s1,dx,0), float4x4(-0.154010534286499,-0.130178943276405,0.208014681935310,-0.197272494435310,-0.083513349294662,-0.073204956948757,-0.143113374710083,-0.161850214004517,-0.112359516322613,0.073035545647144,-0.036124911159277,0.011125452816486,-0.081172049045563,0.021011715754867,0.010198500938714,-0.010621102526784));
res += mul(Get(s1,dx,dy), float4x4(0.016717497259378,-0.020899543538690,0.155587956309319,0.065147280693054,-0.061085473746061,0.004330398514867,-0.076757743954659,0.000511388876475,0.042129456996918,0.005563613492996,-0.112732522189617,-0.031187912449241,-0.170444458723068,0.067464314401150,0.025802437216043,0.010185766033828));
res += mul(Get(s2,-dx,-dy), float4x4(0.067290663719177,0.039926040917635,0.003294883295894,-0.082719147205353,0.063529975712299,0.014311265200377,-0.022099174559116,0.012799806892872,0.005003192462027,-0.036420349031687,-0.007087280508131,0.036927007138729,0.048299569636583,-0.020268261432648,-0.020969307050109,0.019067248329520));
res += mul(Get(s2,-dx,0), float4x4(-0.104521051049232,-0.052276786416769,0.049493473023176,0.042035125195980,-0.071728840470314,-0.064401328563690,0.070904433727264,-0.011946869082749,0.033573430031538,-0.040632978081703,-0.048789020627737,-0.022769579663873,-0.018275415524840,0.021380614489317,0.012036429718137,0.044615708291531));
res += mul(Get(s2,-dx,dy), float4x4(-0.001484613516368,-0.076528377830982,-0.005090292543173,-0.059327058494091,0.133621335029602,0.010464637540281,0.037070672959089,-0.013061320409179,0.032898910343647,-0.027885055169463,0.034301497042179,0.033021017909050,0.063584759831429,-0.001067798351869,0.066087916493416,0.007573749870062));
res += mul(Get(s2,0,-dy), float4x4(0.052404887974262,-0.010769097134471,0.040802609175444,0.110243208706379,0.042280975729227,0.208056122064590,-0.045568116009235,-0.064776472747326,-0.082334227859974,-0.152480542659760,-0.024194790050387,0.051578141748905,-0.058309987187386,-0.016305092722178,0.015774341300130,0.021671978756785));
res += mul(Get(s2,0,0), float4x4(-0.075503036379814,-0.052697908133268,-0.162431031465530,-0.044492300599813,-0.050356402993202,0.008280183188617,-0.226018846035004,-0.021675042808056,0.145063683390617,0.122757181525230,0.064197182655334,0.162783294916153,-0.062024362385273,-0.138080358505249,0.032794453203678,0.005464802496135));
res += mul(Get(s2,0,dy), float4x4(0.028834743425250,0.096630439162254,0.110145486891270,-0.033405173569918,-0.011081901378930,-0.106482684612274,-0.010064217261970,-0.075715437531471,0.002513024490327,0.116133227944374,0.016514306887984,0.114146247506142,0.095988653600216,-0.052111141383648,0.027263933792710,-0.015941776335239));
res += mul(Get(s2,dx,-dy), float4x4(-0.075363516807556,-0.078393578529358,-0.085167646408081,0.006443296093494,0.181286200881004,0.031873200088739,-0.022797729820013,-0.008110872469842,-0.041378401219845,0.027295963838696,0.011643867939711,-0.019307892769575,-0.111895546317101,0.043086469173431,0.033144235610962,0.084540694952011));
res += mul(Get(s2,dx,0), float4x4(-0.067518800497055,-0.031881872564554,0.023035047575831,0.063552454113960,-0.152120888233185,0.029694076627493,-0.012269234284759,0.048431307077408,0.028965469449759,0.001571301370859,0.024981517344713,0.103313073515892,-0.151342764496803,0.043858367949724,0.081449918448925,-0.016741137951612));
res += mul(Get(s2,dx,dy), float4x4(-0.184492364525795,0.035449467599392,-0.085763722658157,0.047044672071934,0.106714047491550,-0.052878685295582,-0.021686814725399,0.003288947278634,0.031064905226231,-0.016540409997106,0.098916962742805,0.061795350164175,0.021585009992123,-0.004325918387622,0.014406465925276,0.003495441749692));
res += mul(Get(s3,-dx,-dy), float4x4(-0.014398201368749,0.062084216624498,0.000357443874236,-0.003941467963159,-0.001340942457318,0.010531212203205,0.020125892013311,-0.021372843533754,0.110260553658009,-0.027468916028738,-0.073749937117100,0.060338407754898,-0.060315676033497,-0.010225993581116,0.059040121734142,0.028309036046267));
res += mul(Get(s3,-dx,0), float4x4(-0.092505916953087,0.058905415236950,-0.009631643071771,0.026532215997577,0.082477003335953,0.024714028462768,0.113507814705372,0.091524913907051,-0.112074941396713,-0.122679680585861,0.031221983954310,0.134900629520416,-0.006713286042213,-0.054310895502567,0.079582057893276,0.001070736674592));
res += mul(Get(s3,-dx,dy), float4x4(-0.012983499094844,0.042587403208017,0.028473395854235,0.038431573659182,0.130337998270988,0.005603902041912,-0.016121286898851,-0.010166561231017,0.081300497055054,-0.053215075284243,-0.037825889885426,-0.089849017560482,-0.043854009360075,-0.021412856876850,-0.008351675234735,-0.050245106220245));
res += mul(Get(s3,0,-dy), float4x4(0.075424402952194,0.255181074142456,0.086552836000919,0.196850165724754,0.219329312443733,0.154734760522842,0.031375661492348,-0.062721900641918,0.046746894717216,0.049906682223082,0.036969434469938,0.081461250782013,-0.073314376175404,-0.177985578775406,-0.070340275764465,0.043712295591831));
res += mul(Get(s3,0,0), float4x4(-0.122939534485340,0.007290151435882,0.024714820086956,0.246278867125511,-0.105526499450207,0.058981422334909,-0.010257910937071,0.092384621500969,0.090031862258911,-0.019298208877444,-0.046911399811506,-0.010793837718666,0.135207131505013,0.043220382183790,-0.166859671473503,-0.081858120858669));
res += mul(Get(s3,0,dy), float4x4(0.083092570304871,-0.109155930578709,-0.030025023967028,0.002251181285828,0.106005199253559,-0.047263890504837,0.059598665684462,-0.019249036908150,0.083616994321346,0.034307528287172,-0.077893882989883,-0.024816406890750,-0.073493175208569,-0.002504267264158,-0.043866913765669,-0.032367993146181));
res += mul(Get(s3,dx,-dy), float4x4(-0.030084462836385,-0.020728208124638,-0.069193057715893,0.045655384659767,0.079465188086033,-0.028017755597830,0.023131176829338,0.026297787204385,0.006096418946981,-0.021310942247510,-0.026819411665201,-0.002235203748569,-0.030185395851731,-0.051878288388252,-0.040769960731268,0.018880711868405));
res += mul(Get(s3,dx,0), float4x4(-0.105938419699669,-0.070320643484592,0.164577171206474,0.223985567688942,-0.225997164845467,0.041383024305105,0.000128810919705,-0.021534046158195,0.023228349164128,-0.019471181556582,-0.072686672210693,0.019294671714306,-0.053895149379969,-0.010315460152924,-0.020494822412729,-0.150162473320961));
res += mul(Get(s3,dx,dy), float4x4(-0.024072553962469,-0.002407009014860,-0.052878607064486,-0.136286839842796,0.127584159374237,0.035034149885178,0.032147001475096,0.035388585180044,0.013149716891348,0.010213701985776,0.075519256293774,0.048146933317184,-0.025673221796751,-0.001171875512227,0.037501771003008,0.069311805069447));
res += mul(Get(s4,-dx,-dy), float4x4(0.125215038657188,-0.049544297158718,-0.036990143358707,0.046295423060656,0.019464781507850,-0.002873205579817,-0.073421739041805,0.056337274610996,0.035788878798485,-0.055173069238663,-0.011492061428726,0.030544420704246,0.065395846962929,0.064199164509773,-0.087076626718044,-0.010208668187261));
res += mul(Get(s4,-dx,0), float4x4(0.087179049849510,-0.011773267760873,0.006012416444719,-0.085941135883331,-0.047546144574881,-0.072266750037670,0.005090283229947,0.026595367118716,0.147079810500145,-0.092642880976200,0.065932124853134,-0.063418425619602,0.050396896898746,0.001278694020584,-0.095646955072880,0.069704540073872));
res += mul(Get(s4,-dx,dy), float4x4(-0.056213438510895,0.001484122709371,0.011773479171097,0.002904146909714,0.009152124635875,-0.068176552653313,-0.067023470997810,-0.023882377892733,-0.060351703315973,-0.027024975046515,0.018232380971313,0.060069017112255,0.061182301491499,-0.030882766470313,0.028718180954456,-0.048770371824503));
res += mul(Get(s4,0,-dy), float4x4(-0.028131062164903,-0.149972125887871,0.023221515119076,0.203551292419434,-0.068718522787094,-0.031392831355333,-0.012237109243870,-0.022218765690923,-0.062533058226109,0.006863167043775,-0.043048068881035,-0.167051717638969,0.127298817038536,0.067280881106853,0.050431955605745,0.035635009407997));
res += mul(Get(s4,0,0), float4x4(0.126007094979286,0.068168394267559,-0.033227238804102,-0.257530510425568,0.059900593012571,0.001941658323631,-0.179125890135765,-0.093043781816959,0.068546094000340,0.091259904205799,-0.085613496601582,-0.170687481760979,0.061511188745499,0.111778400838375,-0.069718144834042,0.115514487028122));
res += mul(Get(s4,0,dy), float4x4(-0.056923989206553,0.104133166372776,-0.001793779199943,0.110147722065449,0.009094737470150,0.128592714667320,0.004560372792184,0.063095673918724,-0.157869130373001,-0.001712047960609,-0.039297327399254,0.052469346672297,-0.061560150235891,0.006734072696418,-0.112687543034554,0.065790072083473));
res += mul(Get(s4,dx,-dy), float4x4(0.006922015454620,-0.103073768317699,-0.099166750907898,0.043947793543339,0.030836373567581,-0.028313400223851,-0.029410559684038,-0.087239041924477,0.096863888204098,0.034579806029797,0.118620477616787,0.068362183868885,0.079463042318821,0.099777057766914,0.085456222295761,0.039537113159895));
res += mul(Get(s4,dx,0), float4x4(0.013650376349688,-0.008909901604056,-0.061190068721771,-0.206463083624840,0.141451478004456,-0.027100902050734,-0.158982008695602,0.130832105875015,-0.004812974948436,-0.006970432121307,-0.050747085362673,0.013011063449085,0.112267032265663,0.152377992868423,0.103778667747974,0.092101469635963));
res += mul(Get(s4,dx,dy), float4x4(-0.029552994295955,0.055570531636477,0.017700795084238,0.103464990854263,0.031008251011372,-0.020586274564266,-0.014871035702527,0.056225735694170,-0.064270861446857,-0.022263893857598,-0.026950003579259,-0.034567680209875,-0.021046195179224,0.007516023702919,-0.032870456576347,0.084828577935696));
res += mul(Get(s5,-dx,-dy), float4x4(0.076095640659332,0.025636490434408,0.042262069880962,0.039523854851723,-0.055922530591488,-0.033307131379843,-0.066593274474144,-0.079260244965553,-0.059361822903156,-0.059156343340874,0.041763965040445,0.046217028051615,-0.045456606894732,0.021684316918254,0.028938703238964,-0.011713142506778));
res += mul(Get(s5,-dx,0), float4x4(0.027399316430092,0.054580837488174,0.009361460804939,0.078884370625019,0.007992680184543,0.039844311773777,0.013445887714624,-0.029733724892139,0.003393382066861,-0.002674150979146,-0.243266016244888,-0.146345600485802,0.046382270753384,-0.000233439990552,-0.010828091762960,-0.038846600800753));
res += mul(Get(s5,-dx,dy), float4x4(-0.074292786419392,0.054109357297421,0.026961885392666,0.034987412393093,-0.035431675612926,0.067201815545559,0.030204299837351,0.036018356680870,-0.040898773819208,0.041008856147528,-0.092270173132420,0.006956263445318,-0.043740157037973,-0.014374616555870,-0.050462085753679,-0.037515010684729));
res += mul(Get(s5,0,-dy), float4x4(0.044816311448812,0.075748890638351,0.092749170958996,-0.071563415229321,-0.157557785511017,0.252824306488037,-0.030347486957908,-0.016174521297216,0.028489362448454,0.082090519368649,-0.029077591374516,-0.034873228520155,0.004670888185501,0.069520175457001,0.016785552725196,-0.022700389847159));
res += mul(Get(s5,0,0), float4x4(0.041101969778538,0.178357481956482,0.319863528013229,0.231438785791397,-0.060575410723686,-0.130971997976303,-0.162714168429375,0.118507727980614,-0.068280130624771,0.044977601617575,0.005765018984675,0.013887580484152,0.123330414295197,0.049593623727560,0.178392380475998,0.027657801285386));
res += mul(Get(s5,0,dy), float4x4(-0.180206939578056,-0.062988109886646,0.007677898276597,0.033115662634373,-0.073337569832802,-0.073596112430096,0.004784855991602,-0.087187945842743,0.162996545433998,-0.039888381958008,0.051181860268116,-0.059533558785915,-0.033232361078262,0.187277495861053,0.069400429725647,0.091358624398708));
res += mul(Get(s5,dx,-dy), float4x4(0.031042346730828,0.012137278914452,-0.011130176484585,-0.032324891537428,-0.125366881489754,0.077063851058483,0.004229045007378,0.004200193565339,0.081930562853813,-0.055727653205395,-0.007555622141808,0.115877203643322,0.089934483170509,0.053601991385221,-0.008176121860743,-0.035315830260515));
res += mul(Get(s5,dx,0), float4x4(-0.003551501082256,0.032927785068750,-0.103831432759762,0.096383996307850,-0.037124410271645,0.195959821343422,-0.059931132942438,0.008343563415110,-0.077746570110321,-0.092650167644024,0.150533407926559,-0.037658456712961,0.065132953226566,0.065966516733170,-0.000886653724592,-0.147906988859177));
res += mul(Get(s5,dx,dy), float4x4(-0.051210723817348,-0.005704357754439,0.059220220893621,-0.029598727822304,-0.033759590238333,-0.018500600010157,-0.032603465020657,-0.057826966047287,0.109698183834553,-0.055286444723606,0.093396469950676,0.003721846966073,-0.058429364115000,0.151127263903618,0.092833243310452,0.127056851983070));
res = max(float4(0, 0, 0, 0), res) + float4(0.010101626627147,0.980701684951782,0.377353072166443,-0.321518778800964) * min(float4(0, 0, 0, 0), res);
return res;
}