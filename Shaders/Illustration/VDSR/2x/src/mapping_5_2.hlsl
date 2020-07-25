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
res += mul(Get(s0,-dx,-dy), float4x4(0.066814444959164,0.164319857954979,-0.148667022585869,-0.060299657285213,-0.031721785664558,0.140853002667427,0.089306756854057,-0.019561063498259,0.119239851832390,0.022296177223325,-0.127923950552940,0.013699886389077,-0.021106932312250,-0.159261673688889,-0.101958252489567,-0.043115012347698));
res += mul(Get(s0,-dx,0), float4x4(-0.185299977660179,-0.087061181664467,-0.136360839009285,0.016858274117112,0.011623769998550,-0.005302708595991,0.224898084998131,0.107361711561680,-0.162290513515472,0.100525729358196,0.145805522799492,-0.095889471471310,-0.000387004576623,-0.248180389404297,0.024114271625876,0.112314291298389));
res += mul(Get(s0,-dx,dy), float4x4(-0.058223363012075,-0.008100192993879,-0.182187408208847,0.012160751968622,0.035621006041765,-0.193733185529709,0.003917802125216,0.002403458580375,0.026011686772108,-0.110457010567188,0.036440763622522,-0.112207807600498,0.048327345401049,-0.130739107728004,0.002225776901469,-0.154077559709549));
res += mul(Get(s0,0,-dy), float4x4(0.079920567572117,0.135614857077599,-0.013057115487754,-0.200851440429688,-0.006713555194438,-0.083725996315479,0.018248897045851,0.185490548610687,0.058972176164389,0.066706635057926,-0.050693653523922,-0.247310489416122,-0.168073862791061,-0.146445840597153,0.009061037562788,0.092690087854862));
res += mul(Get(s0,0,0), float4x4(0.088281117379665,0.046808339655399,0.058341212570667,0.156417176127434,0.084197387099266,-0.063092313706875,-0.005053780041635,0.116376377642155,-0.127648755908012,0.152147158980370,-0.030223447829485,0.181306317448616,0.025174651294947,-0.153261736035347,-0.061181478202343,0.005662328563631));
res += mul(Get(s0,0,dy), float4x4(0.013307559303939,-0.000794960244093,0.032855477184057,0.099950820207596,-0.113096795976162,-0.016746623441577,0.040471117943525,0.011522065848112,0.044640429317951,-0.096408106386662,-0.071935020387173,-0.165130242705345,0.046401090919971,-0.021968789398670,0.018295411020517,-0.031677778810263));
res += mul(Get(s0,dx,-dy), float4x4(-0.132053256034851,0.213539525866508,-0.006910305470228,-0.053733497858047,-0.043421037495136,0.084757477045059,0.042368132621050,0.008535222150385,0.050605941563845,0.082497507333755,-0.072770968079567,0.137372091412544,-0.010301919654012,-0.008162275888026,0.073528192937374,0.105232499539852));
res += mul(Get(s0,dx,0), float4x4(-0.002829677425325,0.107730284333229,-0.234660938382149,-0.013749540783465,0.150697007775307,0.071715816855431,-0.120191767811775,0.095906838774681,0.124196268618107,0.076813772320747,0.013529921881855,0.075241722166538,-0.036438092589378,-0.026517229154706,0.063198171555996,0.063369959592819));
res += mul(Get(s0,dx,dy), float4x4(-0.144635632634163,0.044551011174917,0.089334279298782,-0.141419708728790,-0.189815133810043,0.266058534383774,-0.107689328491688,-0.063425317406654,0.015440901741385,-0.104048594832420,-0.157026827335358,-0.192739114165306,-0.071738161146641,0.061502192169428,0.040769394487143,0.183049574494362));
res += mul(Get(s1,-dx,-dy), float4x4(-0.157596692442894,0.186199277639389,0.118397563695908,0.057981792837381,-0.064856566488743,-0.061289541423321,0.074656657874584,0.103800714015961,-0.021577961742878,0.103996485471725,-0.022755954414606,-0.032516550272703,-0.067632429301739,-0.013434237800539,-0.051272481679916,0.006229355465621));
res += mul(Get(s1,-dx,0), float4x4(0.216210156679153,-0.100258395075798,-0.095069721341133,-0.017512254416943,0.147862792015076,-0.063480384647846,0.060622978955507,0.124005414545536,0.078271530568600,0.040373861789703,0.010560980997980,-0.084171086549759,-0.199622020125389,-0.205282285809517,0.064390733838081,0.105034142732620));
res += mul(Get(s1,-dx,dy), float4x4(-0.044233392924070,-0.071331895887852,0.148989111185074,0.034830860793591,-0.142356589436531,-0.008840003050864,0.035636793822050,0.003564584534615,0.131107762455940,-0.008654045872390,0.080704100430012,-0.170356422662735,-0.093662239611149,0.045946538448334,0.024002870544791,0.081523224711418));
res += mul(Get(s1,0,-dy), float4x4(0.037579670548439,-0.017878830432892,-0.017703013494611,-0.080357141792774,-0.005278553813696,-0.018265740945935,0.032102003693581,0.019084151834249,-0.013247326016426,-0.040529854595661,-0.115935385227203,0.008531553670764,0.035061269998550,0.075337879359722,0.046283256262541,-0.089194193482399));
res += mul(Get(s1,0,0), float4x4(0.107751652598381,0.099458143115044,-0.086853466928005,0.099573552608490,-0.142011448740959,0.056336209177971,0.078712187707424,0.076145075261593,-0.093623407185078,0.025336291640997,-0.084000773727894,0.049507267773151,0.109327614307404,-0.005704573355615,0.041453313082457,-0.170089736580849));
res += mul(Get(s1,0,dy), float4x4(-0.030774166807532,0.186220318078995,0.054525207728148,-0.198173984885216,-0.121714398264885,-0.064108237624168,0.092513710260391,-0.029970623552799,-0.009463682770729,0.105973206460476,-0.033605471253395,0.006786755286157,0.102701187133789,-0.171096920967102,0.185344651341438,-0.059160683304071));
res += mul(Get(s1,dx,-dy), float4x4(-0.071822844445705,-0.105695627629757,-0.102437764406204,-0.070016324520111,0.176341876387596,0.136532709002495,0.307165890932083,0.103654287755489,-0.109620518982410,0.045967482030392,-0.214133605360985,0.067261211574078,-0.169306457042694,-0.218358159065247,-0.016361832618713,0.097710199654102));
res += mul(Get(s1,dx,0), float4x4(0.028230343014002,-0.125512376427650,-0.284268617630005,-0.243059486150742,0.032435599714518,-0.098657861351967,-0.184262752532959,-0.076900184154510,0.070862062275410,0.103107519447803,-0.129746913909912,-0.019260037690401,-0.072376228868961,0.157933250069618,0.256468266248703,-0.004731717985123));
res += mul(Get(s1,dx,dy), float4x4(-0.038571402430534,-0.024085307493806,-0.135736733675003,0.080184422433376,-0.152340561151505,-0.017915261909366,-0.115672819316387,-0.046421062201262,-0.111272856593132,-0.126283869147301,-0.029553551226854,-0.015411860309541,-0.019161958247423,-0.117587693035603,0.168599277734756,-0.026180058717728));
res += mul(Get(s2,-dx,-dy), float4x4(0.010106173343956,0.095221772789955,0.113659694790840,-0.025742186233401,-0.038273908197880,-0.012199881486595,-0.180067643523216,-0.090177446603775,0.095181152224541,0.018703440204263,0.147083908319473,-0.105834059417248,0.071125634014606,0.007418257649988,-0.046166732907295,0.059637352824211));
res += mul(Get(s2,-dx,0), float4x4(0.045780889689922,0.104402370750904,-0.230516016483307,-0.017266951501369,-0.109046220779419,0.046644430607557,-0.071767874062061,0.014507153071463,0.145192414522171,0.168890401721001,0.031095756217837,-0.057106297463179,0.228584781289101,0.210138574242592,-0.018476068973541,-0.016515778377652));
res += mul(Get(s2,-dx,dy), float4x4(0.020932167768478,0.006629300303757,-0.020139543339610,0.114414356648922,0.066527962684631,0.054698560386896,-0.010961975902319,-0.019885655492544,0.123742096126080,-0.081636652350426,0.146137967705727,-0.082135334610939,0.102383390069008,0.120469197630882,0.010962408967316,0.165859773755074));
res += mul(Get(s2,0,-dy), float4x4(-0.093654461205006,-0.138395950198174,-0.150269061326981,0.074208088219166,-0.108831457793713,-0.247706532478333,0.062476541846991,-0.102810502052307,0.158831998705864,-0.097124554216862,0.007915813475847,-0.057615611702204,-0.043338689953089,0.106050141155720,0.208267346024513,-0.008955680765212));
res += mul(Get(s2,0,0), float4x4(-0.051836039870977,0.113680779933929,-0.142685607075691,0.027788680046797,-0.159305989742279,-0.060071233659983,0.013373714871705,0.047256305813789,-0.103896550834179,0.042479272931814,0.089296802878380,0.166692912578583,0.038436587899923,0.264914870262146,-0.019349345937371,-0.332587987184525));
res += mul(Get(s2,0,dy), float4x4(-0.009369184263051,0.060839563608170,-0.005543357692659,-0.042335044592619,-0.127906456589699,-0.000703544588760,-0.015745149925351,0.025838911533356,0.089607000350952,0.085755467414856,-0.100867621600628,0.063241288065910,-0.083214215934277,0.062130406498909,0.190125495195389,0.184038192033768));
res += mul(Get(s2,dx,-dy), float4x4(-0.092580497264862,-0.278425604104996,-0.043782271444798,0.136531293392181,0.055504973977804,0.057145189493895,0.020689582452178,0.188404172658920,-0.075650580227375,0.068852961063385,0.091934323310852,0.066655740141869,-0.133279979228973,0.094122394919395,-0.028396366164088,-0.019049199298024));
res += mul(Get(s2,dx,0), float4x4(0.063603222370148,-0.058871511369944,0.037832386791706,0.010794200934470,0.208150789141655,0.082024499773979,-0.109211422502995,0.049872592091560,-0.245487540960312,0.018807683140039,0.080914013087749,0.003026471240446,0.031402010470629,-0.068865500390530,-0.039926908910275,0.018036164343357));
res += mul(Get(s2,dx,dy), float4x4(-0.088916853070259,-0.060001879930496,-0.102322503924370,0.002833514474332,-0.062365133315325,0.054197844117880,0.038101013749838,0.051476363092661,-0.105594240128994,0.083091601729393,-0.049166869372129,-0.001131345750764,-0.016183247789741,0.011770125478506,0.120239071547985,-0.092557914555073));
res += mul(Get(s3,-dx,-dy), float4x4(0.096731908619404,0.077797055244446,0.209932252764702,0.008826077915728,-0.028228422626853,0.049638882279396,-0.062103860080242,0.299480855464935,0.013217568397522,0.067255504429340,0.028353003785014,0.073433190584183,0.019402695819736,0.036150559782982,0.067157819867134,0.123010739684105));
res += mul(Get(s3,-dx,0), float4x4(-0.022172678261995,0.045064896345139,-0.082549251616001,0.081104293465614,0.065703310072422,0.103194423019886,0.246757000684738,-0.061981447041035,-0.023720299825072,-0.142595991492271,-0.094356268644333,-0.013577687554061,0.156258597970009,0.095550335943699,0.155196458101273,0.036152556538582));
res += mul(Get(s3,-dx,dy), float4x4(-0.152402400970459,0.141704425215721,0.112783566117287,0.004070574883372,0.036995034664869,0.015762118622661,0.112514436244965,-0.022286288440228,0.099762596189976,-0.022658083587885,0.115729279816151,-0.034401021897793,0.119823507964611,0.009517333470285,0.078957505524158,-0.013934670947492));
res += mul(Get(s3,0,-dy), float4x4(-0.028978753834963,-0.000691660097800,0.010627573356032,-0.015718737617135,0.013196576386690,-0.036548875272274,0.024141868576407,-0.119914986193180,0.043843585997820,0.222442701458931,-0.021107845008373,-0.056749094277620,-0.150467962026596,-0.107303440570831,0.122334927320480,0.070223584771156));
res += mul(Get(s3,0,0), float4x4(-0.109080560505390,0.116442516446114,-0.103726468980312,-0.017265994101763,0.161737427115440,0.095568403601646,0.098650418221951,-0.036978125572205,0.052520290017128,-0.038736525923014,0.095191285014153,-0.070970490574837,0.064526453614235,0.220364451408386,0.059744998812675,-0.026489458978176));
res += mul(Get(s3,0,dy), float4x4(-0.097344793379307,0.194995164871216,-0.010473439469934,0.001885661738925,-0.085483632981777,0.081126421689987,-0.055366050451994,0.063184931874275,0.025343103334308,-0.163723692297935,0.028156468644738,0.014220389537513,-0.078962169587612,0.027458971366286,0.212641924619675,0.017922734841704));
res += mul(Get(s3,dx,-dy), float4x4(0.075341634452343,-0.045084837824106,-0.006751711014658,0.066642835736275,0.257541120052338,-0.010309929028153,0.133736044168472,-0.016170101240277,0.039464488625526,0.188546702265739,-0.015171125531197,-0.140014186501503,0.052021164447069,0.032086335122585,0.114651106297970,0.089842453598976));
res += mul(Get(s3,dx,0), float4x4(0.105475157499313,-0.050770994275808,-0.017613880336285,0.006074827164412,-0.020519547164440,0.015461637638509,0.080068953335285,-0.012400969862938,0.132588073611259,0.098743185400963,-0.049493748694658,-0.099022127687931,0.217445105314255,0.099426612257957,0.086154662072659,-0.035036921501160));
res += mul(Get(s3,dx,dy), float4x4(-0.114066749811172,0.158616989850998,-0.016942959278822,0.162194818258286,0.013951216824353,0.010814807377756,-0.042827654629946,-0.107687257230282,0.047903127968311,-0.013478301465511,0.006144039798528,0.082480214536190,0.148314043879509,0.076788894832134,-0.036588266491890,-0.201455116271973));
return max(float4(0,0,0,0), res);
}