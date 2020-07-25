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
res += mul(Get(s0,-dx,-dy), float4x4(-0.020938772708178,0.006969444453716,-0.015667738392949,-0.102124065160751,0.064789950847626,0.116152741014957,0.000990568660200,-0.118012674152851,-0.081553749740124,0.069839820265770,0.096137672662735,-0.006369028706104,0.059171143919230,0.009114903397858,-0.029995663091540,-0.059129763394594));
res += mul(Get(s0,-dx,0), float4x4(0.071051143109798,-0.012289526872337,-0.028752965852618,-0.083277113735676,0.041011672466993,0.121292501688004,-0.045807994902134,-0.097593151032925,-0.053664997220039,0.108101360499859,-0.029022378847003,-0.079984970390797,-0.058221001178026,0.042904950678349,-0.040930204093456,-0.017222603783011));
res += mul(Get(s0,-dx,dy), float4x4(0.012222765944898,0.078667499125004,0.116665489971638,0.006366447545588,-0.015395162627101,0.058849699795246,-0.111564114689827,0.023824101313949,-0.036250606179237,0.066098630428314,0.013381766155362,0.010878190398216,-0.065549291670322,0.022668972611427,-0.017147980630398,0.134031072258949));
res += mul(Get(s0,0,-dy), float4x4(-0.099749371409416,0.090413488447666,-0.059132948517799,-0.104028776288033,-0.059427358210087,0.104837149381638,-0.014704312197864,-0.049188926815987,-0.091879054903984,0.192193984985352,0.013839856721461,-0.055712770670652,0.044523660093546,-0.005446746945381,-0.012188431806862,-0.060293115675449));
res += mul(Get(s0,0,0), float4x4(0.098796948790550,0.019848478958011,0.088526926934719,-0.125747531652451,-0.031959645450115,0.017755340784788,0.019718578085303,0.023749712854624,-0.033827763050795,0.179084047675133,-0.092068038880825,-0.050289914011955,0.128562554717064,-0.024632977321744,-0.009004399180412,-0.109954878687859));
res += mul(Get(s0,0,dy), float4x4(-0.016102712601423,0.128235757350922,0.209256276488304,0.002142530633137,-0.067880176007748,0.007093633525074,-0.033866956830025,-0.073297515511513,-0.048447307199240,0.042090117931366,-0.099612608551979,-0.019616104662418,0.007666851393878,0.051428794860840,0.012027356773615,0.013470346108079));
res += mul(Get(s0,dx,-dy), float4x4(-0.226289838552475,0.146450936794281,-0.105001732707024,0.049709353595972,-0.042913068085909,0.064531289041042,-0.037848137319088,0.006051337812096,0.003970482852310,0.125632569193840,0.075322486460209,-0.086147978901863,-0.039456017315388,-0.026622420176864,-0.064857423305511,0.051696218550205));
res += mul(Get(s0,dx,0), float4x4(-0.098811864852905,-0.002715321723372,0.015700925141573,0.140211284160614,-0.017772952094674,0.034108955413103,-0.001465427223593,-0.045351400971413,-0.033322080969810,0.118145912885666,-0.022051280364394,-0.065043255686760,0.042978495359421,-0.009494617581367,-0.023961285129189,0.004818507004529));
res += mul(Get(s0,dx,dy), float4x4(-0.175549551844597,0.050484180450439,0.038696154952049,0.060038842260838,-0.066037900745869,0.004981447011232,-0.050079647451639,-0.051829844713211,-0.026074806228280,0.066404409706593,-0.137029871344566,-0.067466400563717,-0.014479523524642,0.015728935599327,-0.065100334584713,-0.011560048907995));
res += mul(Get(s1,-dx,-dy), float4x4(0.023152576759458,0.023604385554790,0.015811415389180,0.050797611474991,-0.052905287593603,-0.040944363921881,-0.019701324403286,-0.026375927031040,0.024724476039410,-0.066257216036320,-0.077224187552929,-0.005387402605265,-0.124971270561218,-0.064647272229195,0.020009864121675,-0.042555332183838));
res += mul(Get(s1,-dx,0), float4x4(0.047879561781883,0.000584272085689,-0.027918288484216,0.047508146613836,-0.040072623640299,-0.010521868243814,-0.044522009789944,0.002926971763372,0.067726083099842,0.037406783550978,0.051845341920853,0.000148098450154,-0.133022457361221,-0.058273073285818,0.048356350511312,0.149219736456871));
res += mul(Get(s1,-dx,dy), float4x4(0.103049471974373,-0.041482109576464,-0.043738439679146,-0.048521246761084,-0.083967708051205,-0.050954282283783,-0.053508918732405,-0.068072840571404,0.076581649482250,0.086594276130199,0.009135883301497,-0.006384113803506,-0.108150772750378,-0.051764301955700,0.056571017950773,0.171927660703659));
res += mul(Get(s1,0,-dy), float4x4(0.066158711910248,0.006085111293942,0.122390046715736,-0.052107077091932,-0.055277608335018,-0.027204910293221,-0.002097361255437,-0.049538444727659,-0.017955757677555,-0.018045783042908,-0.088765673339367,0.039564196020365,-0.008391708135605,-0.146793127059937,0.048255439847708,-0.021613879129291));
res += mul(Get(s1,0,0), float4x4(0.041110746562481,0.018330750986934,0.016189409419894,0.026319427415729,-0.014127979055047,-0.022740773856640,0.078230246901512,0.009549747221172,0.105434395372868,-0.012577129527926,0.115379914641380,0.017565779387951,-0.122173205018044,0.154517292976379,-0.096473142504692,-0.112880110740662));
res += mul(Get(s1,0,dy), float4x4(0.056791704148054,-0.013947331346571,-0.059551380574703,-0.012169740162790,-0.002594622783363,-0.067485108971596,-0.008595891296864,-0.034471854567528,0.039674002677202,0.061846774071455,0.043490700423717,-0.023675980046391,-0.071942441165447,-0.025659848004580,0.026080522686243,-0.016902346163988));
res += mul(Get(s1,dx,-dy), float4x4(0.023437341675162,-0.017071623355150,0.098321102559566,-0.023524008691311,-0.049720555543900,-0.026994315907359,-0.073389761149883,-0.095957614481449,0.041900902986526,-0.015578943304718,-0.042566101998091,0.005902669392526,0.088904000818729,-0.116310730576515,-0.010060979053378,-0.112244047224522));
res += mul(Get(s1,dx,0), float4x4(0.042066127061844,0.034744646400213,0.071019001305103,0.000744907709304,0.054300494492054,0.000075437084888,0.035184722393751,-0.085265636444092,0.094683192670345,-0.050752535462379,0.085372135043144,-0.005072684958577,-0.006010821554810,-0.049719970673323,-0.033919189125299,-0.071253985166550));
res += mul(Get(s1,dx,dy), float4x4(0.022441860288382,0.049108091741800,-0.023095617070794,-0.014259989373386,0.070056825876236,-0.060100700706244,-0.003744246903807,-0.055277094244957,0.033154740929604,0.045528944581747,0.000046460096200,-0.065755732357502,-0.083434544503689,-0.116143055260181,-0.056210137903690,0.017919518053532));
res += mul(Get(s2,-dx,-dy), float4x4(-0.004190714098513,-0.070318110287189,0.010893367230892,-0.010718695819378,-0.054580383002758,0.047053985297680,0.004098197910935,0.000489587255288,-0.064033381640911,-0.053230971097946,-0.064034789800644,0.069120131433010,0.023545788601041,-0.092633791267872,0.042857646942139,0.008479653857648));
res += mul(Get(s2,-dx,0), float4x4(-0.008948670700192,0.016758337616920,0.053513340651989,-0.084294348955154,-0.004487195517868,0.081287562847137,-0.025788461789489,0.017607701942325,0.082438848912716,-0.055867481976748,-0.005140919238329,0.092395693063736,0.032415229827166,-0.104032739996910,0.030662382021546,-0.034608975052834));
res += mul(Get(s2,-dx,dy), float4x4(0.060553316026926,0.048036474734545,0.053231559693813,-0.085891418159008,-0.031539455056190,-0.027609411627054,-0.053362697362900,0.001221688231453,0.054234217852354,0.033690348267555,0.015092669986188,0.043627277016640,0.033525567501783,-0.048540268093348,-0.036991171538830,-0.050339642912149));
res += mul(Get(s2,0,-dy), float4x4(-0.016364166513085,-0.062535919249058,-0.004060693085194,0.025297166779637,0.093304865062237,-0.029079293832183,-0.003836514893919,-0.073346987366676,0.020089650526643,-0.060703072696924,0.021180631592870,0.032419409602880,-0.053506202995777,-0.142776280641556,0.138517960906029,0.149275183677673));
res += mul(Get(s2,0,0), float4x4(0.039212375879288,-0.061562720686197,0.146092906594276,-0.011514176614583,0.079723127186298,0.033859983086586,-0.029183192178607,-0.067886680364609,0.082743726670742,-0.049444481730461,0.038857780396938,0.093460232019424,-0.057128615677357,-0.039517983794212,0.013294301927090,0.044308196753263));
res += mul(Get(s2,0,dy), float4x4(0.099724203348160,0.009003460407257,0.033313557505608,-0.049476947635412,0.035621259361506,0.056593339890242,-0.052165191620588,-0.066238678991795,0.039118234068155,-0.006317908875644,0.013546324335039,0.112189322710037,-0.032562430948019,-0.042266409844160,0.015939773991704,0.014030026271939));
res += mul(Get(s2,dx,-dy), float4x4(-0.114381782710552,-0.064125671982765,-0.032702546566725,-0.069341748952866,0.120728120207787,-0.024529801681638,0.101839244365692,-0.083439938724041,-0.059998072683811,0.022804809734225,-0.096714675426483,0.008750283159316,0.026429541409016,-0.036813370883465,0.069232650101185,-0.004072886426002));
res += mul(Get(s2,dx,0), float4x4(-0.022046968340874,-0.036533478647470,0.060137197375298,-0.021229220554233,0.257221102714539,-0.051124922931194,0.065013557672501,-0.095297597348690,-0.001014692941681,-0.017108827829361,0.029290989041328,0.118930287659168,-0.046659797430038,0.045121107250452,-0.011201412416995,0.016683751717210));
res += mul(Get(s2,dx,dy), float4x4(0.163688898086548,0.016795057803392,0.037947993725538,0.031406119465828,0.190595716238022,0.003605307545513,-0.074913322925568,-0.075771890580654,-0.052706111222506,-0.038913786411285,0.007201909553260,0.076859347522259,-0.063209451735020,0.043083880096674,0.052671350538731,0.003765950910747));
res += mul(Get(s3,-dx,-dy), float4x4(0.116578258574009,0.049685839563608,-0.014030097052455,-0.022131269797683,0.085981763899326,0.024114623665810,0.030169690027833,-0.000441315467469,-0.059889420866966,-0.017558839172125,0.059120416641235,0.060540396720171,-0.120497509837151,-0.031127411872149,-0.013307856395841,-0.041131846606731));
res += mul(Get(s3,-dx,0), float4x4(0.074493497610092,0.034984800964594,0.002463561249897,-0.047590825706720,0.007399333640933,-0.066533595323563,0.034749325364828,0.067833036184311,0.052465271204710,0.006139276083559,0.094901189208031,0.077823229134083,0.028057549148798,-0.072318084537983,-0.015242610126734,0.155390977859497));
res += mul(Get(s3,-dx,dy), float4x4(0.046410150825977,0.044484853744507,0.034678999334574,-0.037826914340258,-0.109043538570404,-0.022434478625655,0.086290240287781,-0.018832709640265,0.065781474113464,0.046787258237600,0.016279486939311,-0.000374714727513,0.132579475641251,-0.095581464469433,-0.125850528478622,0.024262590333819));
res += mul(Get(s3,0,-dy), float4x4(0.067200832068920,-0.029066456481814,0.071189500391483,-0.009604058228433,-0.019721938297153,-0.019971732050180,0.039584521204233,0.040212482213974,-0.026045003905892,-0.054477535188198,0.058455083519220,0.041297800838947,-0.009459123946726,-0.105545379221439,0.152825996279716,0.160672098398209));
res += mul(Get(s3,0,0), float4x4(0.121554851531982,-0.055441521108150,0.171516880393028,-0.008697398006916,-0.005790214985609,-0.041401263326406,0.017007112503052,0.042521484196186,0.060902051627636,-0.007608499843627,0.063773222267628,0.143575668334961,0.003200548002496,-0.042260162532330,0.047018274664879,0.099967747926712));
res += mul(Get(s3,0,dy), float4x4(0.059988267719746,-0.001230541500263,0.056636828929186,0.085230059921741,-0.049559518694878,-0.004669662099332,0.034378260374069,-0.078625395894051,0.067362383008003,0.011956932954490,0.089720688760281,0.062006432563066,0.027691818773746,-0.028278529644012,-0.032498106360435,-0.019724084064364));
res += mul(Get(s3,dx,-dy), float4x4(0.046437647193670,0.038420822471380,-0.005841598846018,0.015488826669753,0.008127107284963,0.045678582042456,0.051929667592049,0.025546906515956,-0.015179301612079,-0.001869297819212,-0.042917352169752,-0.040927782654762,-0.025903912261128,-0.052468046545982,0.088013954460621,0.104897111654282));
res += mul(Get(s3,dx,0), float4x4(-0.050373695790768,0.002938597928733,0.029254384338856,0.076445631682873,0.003177155740559,-0.002804936841130,-0.013214358128607,0.011490346863866,0.007041265722364,0.020282885059714,0.001301162759773,0.099505439400673,-0.026951216161251,-0.021629398688674,-0.013109785504639,0.079740196466446));
res += mul(Get(s3,dx,dy), float4x4(-0.091279111802578,0.086572751402855,-0.011136139743030,0.083524927496910,-0.014489390887320,0.009773707017303,-0.021806756034493,-0.090654455125332,0.007454368751496,0.027663240209222,0.055136706680059,0.005687681958079,-0.032035607844591,-0.087946884334087,0.048676643520594,0.029501518234611));
return max(float4(0,0,0,0), res);
}