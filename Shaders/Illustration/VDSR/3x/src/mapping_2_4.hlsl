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
res += mul(Get(s0,-dx,-dy), float4x4(0.032189048826694,0.014953839592636,-0.101827397942543,-0.018913887441158,-0.115110769867897,-0.042651776224375,-0.054998833686113,0.002121746540070,0.080067172646523,0.032082207500935,-0.139766648411751,-0.012162609025836,-0.192523330450058,-0.052801571786404,-0.163149967789650,-0.306068807840347));
res += mul(Get(s0,-dx,0), float4x4(0.002689646324143,0.010895006358624,-0.018072960898280,-0.009555855765939,-0.150668621063232,0.373835116624832,-0.275064975023270,0.253439515829086,-0.139155387878418,-0.017147244885564,-0.041651267558336,-0.018801286816597,-0.134098067879677,-0.165097251534462,0.045688137412071,-0.123837724328041));
res += mul(Get(s0,-dx,dy), float4x4(0.015021210536361,0.014287427999079,0.058197595179081,0.017031004652381,0.018627151846886,-0.219003558158875,0.456913560628891,0.190999075770378,-0.070072099566460,0.037721775472164,0.013986017554998,0.007389035075903,-0.165617540478706,0.011244302615523,-0.084954664111137,-0.133224412798882));
res += mul(Get(s0,0,-dy), float4x4(0.005254942923784,-0.034514315426350,-0.118268720805645,-0.014396243728697,0.076544933021069,-0.114730305969715,-0.061561431735754,-0.062039647251368,0.100132383406162,-0.107442714273930,-0.073674552142620,-0.094886988401413,-0.165549382567406,-0.046763706952333,0.144572377204895,-0.258640229701996));
res += mul(Get(s0,0,0), float4x4(-0.021764047443867,-0.020358856767416,-0.003236105199903,-0.012539327144623,-0.355638682842255,0.013892220333219,0.096488408744335,-0.256296485662460,-0.080333709716797,-0.033356085419655,-0.078753359615803,-0.159619912505150,0.168624162673950,-0.044301267713308,-0.028446355834603,-0.185026064515114));
res += mul(Get(s0,0,dy), float4x4(-0.012098323553801,0.005242460872978,-0.011786354705691,-0.004154992289841,-0.143700942397118,-0.074902310967445,0.081527292728424,0.146676033735275,-0.044042285531759,0.030121304094791,-0.060461342334747,-0.082776010036469,0.013654768466949,-0.010146621614695,-0.214152038097382,-0.084774479269981));
res += mul(Get(s0,dx,-dy), float4x4(-0.039562705904245,0.004601556807756,-0.017927410081029,-0.007179997861385,0.170025512576103,-0.015200275927782,0.177448123693466,0.118578344583511,0.196661099791527,-0.206015363335609,0.062756493687630,-0.090375810861588,-0.055219590663910,0.010011759586632,-0.141059234738350,0.178601294755936));
res += mul(Get(s0,dx,0), float4x4(-0.048656553030014,-0.004373502451926,0.053084641695023,-0.006862069480121,-0.162598341703415,0.047064621001482,0.114298380911350,-0.025002319365740,0.066369205713272,-0.039696607738733,-0.086599618196487,-0.147714659571648,0.153450042009354,0.038436420261860,-0.071096479892731,0.000069931804319));
res += mul(Get(s0,dx,dy), float4x4(-0.021052416414022,0.012380102649331,0.027449056506157,0.008121275343001,-0.188666358590126,-0.112819805741310,-0.351301312446594,0.102480843663216,0.092663653194904,0.048696398735046,-0.064705684781075,-0.042795900255442,-0.026221105828881,-0.006382741034031,-0.091500192880630,0.050380621105433));
res += mul(Get(s1,-dx,-dy), float4x4(-0.101017199456692,-0.015914518386126,-0.087678365409374,-0.142625227570534,-0.044588871300220,-0.063154742121696,0.016259839758277,-0.018974978476763,-0.067816041409969,0.147787272930145,-0.189720913767815,-0.190959051251411,0.044357795268297,-0.097836367785931,-0.110802695155144,-0.126861408352852));
res += mul(Get(s1,-dx,0), float4x4(-0.183070123195648,-0.005614656489342,0.095622316002846,-0.151831135153770,-0.058962117880583,-0.003830951405689,0.008933272212744,0.144164532423019,-0.388126730918884,0.159218162298203,-0.097779400646687,-0.278839975595474,-0.040757294744253,-0.085082471370697,0.021082766354084,-0.028405698016286));
res += mul(Get(s1,-dx,dy), float4x4(-0.149018689990044,-0.083724729716778,0.410055458545685,-0.108535766601563,-0.040829133242369,0.116835303604603,-0.059126012027264,0.233384996652603,-0.265722751617432,-0.063947625458241,-0.335603863000870,-0.264573752880096,-0.017255458980799,-0.133120536804199,0.004475845023990,0.106300152838230));
res += mul(Get(s1,0,-dy), float4x4(-0.095713131129742,-0.192020520567894,0.014162822626531,-0.251220703125000,-0.046963177621365,-0.011041457764804,0.036554064601660,-0.086425162851810,0.255528599023819,0.020622523501515,-0.017134830355644,0.307460129261017,0.187461778521538,-0.325755298137665,-0.150948107242584,-0.163025408983231));
res += mul(Get(s1,0,0), float4x4(-0.227867990732193,-0.212438762187958,0.086794167757034,-0.204130530357361,-0.077302969992161,-0.005821536760777,-0.043672259896994,0.000869973853696,0.131747856736183,-0.033557910472155,-0.080412991344929,-0.143586143851280,-0.078591555356979,-0.401583075523376,0.167143985629082,-0.036426249891520));
res += mul(Get(s1,0,dy), float4x4(-0.014217837713659,-0.198902562260628,-0.168766200542450,-0.052959445863962,-0.045071218162775,0.049284987151623,-0.070701412856579,0.082904696464539,-0.123660080134869,-0.028342682868242,-0.038435962051153,-0.203888729214668,-0.000355871743523,-0.271987617015839,-0.114947155117989,-0.005231836345047));
res += mul(Get(s1,dx,-dy), float4x4(0.157836169004440,0.043141756206751,0.011400443501770,0.220507606863976,0.022540235891938,0.000682981743012,-0.066897243261337,-0.012579816393554,0.074022434651852,-0.185152366757393,-0.220359131693840,-0.061220094561577,0.027898160740733,0.094040133059025,0.107944771647453,0.111398115754128));
res += mul(Get(s1,dx,0), float4x4(-0.002449064515531,0.008334171026945,0.208215251564980,0.052445847541094,-0.049528978765011,-0.030426681041718,-0.061052102595568,-0.079967781901360,0.134475246071815,-0.096610754728317,-0.018564214929938,-0.133695960044861,-0.102845035493374,-0.004789920058101,-0.062194775789976,0.133095741271973));
res += mul(Get(s1,dx,dy), float4x4(0.036148872226477,0.081338547170162,-0.031071998178959,0.100971974432468,-0.027891043573618,-0.019027387723327,-0.020747855305672,-0.102606110274792,-0.000149155908730,0.093484230339527,0.003489608410746,-0.079234488308430,-0.196251228451729,-0.018615357577801,0.070730850100517,-0.110882133245468));
res += mul(Get(s2,-dx,-dy), float4x4(0.135597646236420,-0.075819022953510,-0.240337923169136,-0.144870728254318,-0.228642433881760,0.129883140325546,-0.013437712565064,0.042141228914261,-0.014515007846057,0.087400592863560,-0.146295979619026,0.167288735508919,-0.109564080834389,-0.086284354329109,-0.060813516378403,-0.181052207946777));
res += mul(Get(s2,-dx,0), float4x4(0.133243665099144,0.011392617598176,-0.200589299201965,-0.066091381013393,-0.011334396898746,0.286896079778671,-0.169092282652855,0.206794470548630,-0.214780464768410,0.020652467384934,0.467748552560806,0.075132153928280,-0.263118445873260,0.021275743842125,-0.063081398606300,-0.050975229591131));
res += mul(Get(s2,-dx,dy), float4x4(0.055649619549513,-0.012587914243340,-0.030445137992501,0.091501004993916,0.341124922037125,-0.138780444860458,-0.117170818150043,-0.072710543870926,0.044770970940590,-0.048413116484880,0.268840789794922,0.221324175596237,-0.380407392978668,0.023372240364552,-0.222184330224991,-0.148247569799423));
res += mul(Get(s2,0,-dy), float4x4(0.047379150986671,0.029614269733429,-0.126581758260727,-0.194502130150795,-0.097738392651081,0.173466086387634,-0.018567267805338,0.115857429802418,-0.059372950345278,-0.077510334551334,0.310025811195374,-0.199513718485832,0.148317471146584,-0.129890933632851,-0.116161480545998,-0.391245990991592));
res += mul(Get(s2,0,0), float4x4(-0.060021329671144,0.126168295741081,-0.063776791095734,-0.117631576955318,-0.118623860180378,0.448217153549194,0.015854990109801,0.200034067034721,-0.184193894267082,-0.051633909344673,0.009565349668264,-0.085947655141354,0.498356878757477,0.054008062928915,-0.066365964710712,-0.154920279979706));
res += mul(Get(s2,0,dy), float4x4(-0.246078833937645,0.078685417771339,-0.090529404580593,-0.084488704800606,0.023295879364014,-0.288355112075806,0.043902412056923,-0.158865436911583,0.028236536309123,-0.062419634312391,0.018304036930203,-0.017416002228856,0.174951866269112,0.002005332149565,-0.043821513652802,-0.141089379787445));
res += mul(Get(s2,dx,-dy), float4x4(0.141620278358459,-0.038576129823923,-0.048692971467972,0.020891381427646,0.112008392810822,-0.425839453935623,-0.101629398763180,-0.172590389847755,-0.071633517742157,-0.111956834793091,0.084466613829136,-0.042525298893452,-0.097222723066807,-0.184059277176857,-0.110025055706501,-0.282877236604691));
res += mul(Get(s2,dx,0), float4x4(0.054117787629366,0.033458143472672,-0.079912841320038,0.112211756408215,-0.109680376946926,-0.210796102881432,-0.004603602457792,-0.134649902582169,-0.159573316574097,-0.033753089606762,-0.409795314073563,0.086813926696777,0.235224649310112,0.032033458352089,-0.073416516184807,-0.133597865700722));
res += mul(Get(s2,dx,dy), float4x4(-0.105390548706055,-0.054909292608500,0.009087286889553,0.099973484873772,0.246874868869781,-0.581189572811127,0.091326862573624,0.012367861345410,-0.081324569880962,-0.032122533768415,-0.181428670883179,0.156966909766197,0.148332834243774,0.024076344445348,-0.026123620569706,-0.095188438892365));
res += mul(Get(s3,-dx,-dy), float4x4(0.051573250442743,-0.023013714700937,0.005459332372993,0.049711577594280,0.020503723993897,0.016871064901352,-0.057310581207275,-0.099187016487122,0.132867410778999,-0.124850824475288,0.217123180627823,0.065702348947525,-0.049162019044161,0.015616956166923,-0.027999471873045,-0.151398003101349));
res += mul(Get(s3,-dx,0), float4x4(-0.080214269459248,-0.067276544868946,0.037270754575729,0.011685916222632,0.016410809010267,0.007846010848880,-0.085107512772083,-0.166301339864731,0.051847647875547,0.249242007732391,-0.167068317532539,0.163964241743088,-0.024011859670281,0.017089916393161,0.029427360743284,-0.032819814980030));
res += mul(Get(s3,-dx,dy), float4x4(-0.019169956445694,0.073189042508602,0.054093983024359,-0.004233357962221,-0.014057400636375,0.036236897110939,0.063945613801479,-0.189095705747604,-0.145652994513512,-0.240490719676018,-0.064415536820889,-0.012130971997976,-0.079508945345879,0.031310625374317,0.118184842169285,-0.004210975021124));
res += mul(Get(s3,0,-dy), float4x4(0.020221471786499,-0.013032069429755,0.074854366481304,0.040389489382505,0.011168223805726,-0.045285068452358,-0.005000365898013,-0.001485906308517,-0.014501858502626,-0.231791511178017,-0.266895532608032,-0.150442525744438,-0.156914904713631,-0.066336028277874,-0.059368699789047,-0.100823521614075));
res += mul(Get(s3,0,0), float4x4(-0.075858458876610,-0.040456183254719,0.098704025149345,0.009364386089146,-0.031121267005801,-0.109423354268074,0.116090036928654,-0.064517579972744,-0.211049988865852,0.497002273797989,-0.150875180959702,0.300609916448593,-0.049229662865400,-0.074134029448032,-0.015742933377624,-0.030189419165254));
res += mul(Get(s3,0,dy), float4x4(-0.016903262585402,0.039364289492369,0.009040649048984,0.002834447426721,-0.016530299559236,-0.031793434172869,0.112124249339104,-0.067765623331070,-0.320793509483337,-0.070982627570629,-0.189844340085983,0.158884242177010,0.119180142879486,-0.104215890169144,0.074919581413269,-0.008929362520576));
res += mul(Get(s3,dx,-dy), float4x4(0.009164175018668,0.019168794155121,0.119568295776844,0.129142403602600,-0.113667912781239,0.076458066701889,0.177607581019402,0.087227746844292,-0.019682535901666,-0.053075835108757,-0.206540882587433,0.006661342456937,-0.091999009251595,-0.084970027208328,-0.017971463501453,0.041379038244486));
res += mul(Get(s3,dx,0), float4x4(-0.064045496284962,-0.009588701650500,0.059657033532858,0.082688897848129,-0.081427156925201,-0.016132265329361,0.078173816204071,0.047267895191908,-0.120685048401356,0.031879592686892,-0.129134312272072,-0.139780744910240,-0.027048351243138,-0.065727695822716,0.055647198110819,0.017919350415468));
res += mul(Get(s3,dx,dy), float4x4(-0.016834506765008,0.014378726482391,-0.013566542416811,0.048926133662462,-0.042731758207083,0.015586384572089,-0.103992372751236,0.054226357489824,0.042386107146740,-0.130339622497559,-0.040038015693426,-0.345938473939896,0.165648445487022,-0.009567236527801,0.034679703414440,-0.035910084843636));
return max(float4(0,0,0,0), res);
}
