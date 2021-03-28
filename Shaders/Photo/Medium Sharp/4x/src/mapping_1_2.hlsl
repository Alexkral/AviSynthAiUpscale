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
float4 res = float4(0.080267615616322,-0.129942700266838,0.024855665862560,-0.000014529590771);
res += mul(Get(s0,-dx,-dy), float4x4(0.133661851286888,-0.057106640189886,-0.036892332136631,-0.012740371748805,-0.039642181247473,-0.078132033348083,-0.118252590298653,-0.073492139577866,0.160685718059540,0.342187792062759,0.305116534233093,-0.003656296292320,-0.063844628632069,-0.058798011392355,-0.044941853731871,-0.064106263220310));
res += mul(Get(s0,-dx,0), float4x4(0.041365392506123,-0.030470151454210,0.024478362873197,0.054714787751436,0.093498386442661,-0.178711280226707,0.085927836596966,0.164682775735855,0.147652387619019,0.140498325228691,-0.082450516521931,-0.087835416197777,-0.124851301312447,-0.173709735274315,-0.033459555357695,0.225771918892860));
res += mul(Get(s0,-dx,dy), float4x4(-0.028389347717166,-0.075980231165886,-0.031319383531809,-0.068248920142651,0.165560707449913,-0.167110383510590,-0.136112585663795,-0.068251773715019,-0.110549397766590,-0.005717374850065,0.115051686763763,0.028700619935989,-0.052153870463371,-0.294528067111969,0.042797751724720,0.085823975503445));
res += mul(Get(s0,0,-dy), float4x4(-0.069576330482960,-0.030388744547963,-0.077154770493507,0.138555482029915,-0.041501723229885,0.122775666415691,0.150020271539688,-0.169458776712418,-0.106192953884602,0.066897287964821,0.014420467428863,0.011551754549146,0.017887018620968,0.033291682600975,-0.084934264421463,-0.174341782927513));
res += mul(Get(s0,0,0), float4x4(0.146374851465225,-0.060371506959200,-0.119802266359329,0.059920001775026,0.233455508947372,0.118472829461098,0.358712375164032,0.308994203805923,0.124298334121704,0.054689817130566,0.021930878981948,-0.221055299043655,0.052639085799456,0.105770207941532,0.112306095659733,0.503420650959015));
res += mul(Get(s0,0,dy), float4x4(0.059412054717541,-0.058789871633053,0.026953322812915,-0.036051355302334,-0.173788517713547,0.101255036890507,-0.139912322163582,-0.059895582497120,-0.045096095651388,-0.053846720606089,0.144129842519760,-0.046579822897911,0.126759186387062,0.027232561260462,0.128312826156616,-0.070464454591274));
res += mul(Get(s0,dx,-dy), float4x4(-0.035478934645653,-0.021208422258496,-0.155748978257179,-0.055919107049704,0.069634564220905,-0.015764750540257,-0.152604728937149,-0.171723037958145,-0.264172881841660,-0.172505557537079,0.064723059535027,0.093830943107605,-0.060734696686268,-0.042986359447241,-0.005691810045391,-0.013645690865815));
res += mul(Get(s0,dx,0), float4x4(-0.005285671912134,-0.099296547472477,-0.024468751624227,-0.143726766109467,-0.108428739011288,-0.057755295187235,-0.141274318099022,0.085521042346954,-0.028168078511953,0.062943033874035,-0.139625549316406,-0.040629960596561,-0.026439428329468,-0.002087293658406,0.066392786800861,0.133470758795738));
res += mul(Get(s0,dx,dy), float4x4(-0.094443731009960,-0.107354782521725,0.146964311599731,-0.108689211308956,-0.081794887781143,-0.016635440289974,0.062206462025642,-0.066777884960175,-0.071246340870857,-0.059217661619186,0.030669834464788,0.078401498496532,-0.000236955034779,0.093871034681797,0.097376957535744,-0.028449105098844));
res += mul(Get(s1,-dx,-dy), float4x4(-0.003874980611727,0.056163933128119,0.155664801597595,-0.246848434209824,-0.046501658856869,0.143776625394821,0.136051699519157,-0.052201576530933,0.221236199140549,-0.077310383319855,0.123327858746052,0.158102646470070,0.026712248101830,0.016579044982791,0.158389538526535,0.030046606436372));
res += mul(Get(s1,-dx,0), float4x4(0.037481747567654,0.073160819709301,0.145931959152222,-0.204035311937332,0.008968926034868,0.050931386649609,-0.305248826742172,0.145329430699348,-0.238333895802498,0.052198395133018,0.181279882788658,0.070551581680775,-0.026498097926378,0.072019942104816,0.008294398896396,0.043030291795731));
res += mul(Get(s1,-dx,dy), float4x4(0.117751404643059,-0.150182247161865,0.208515763282776,-0.075887732207775,-0.069505415856838,0.001278850249946,-0.114616453647614,0.093170404434204,-0.223471358418465,0.097289986908436,-0.106835968792439,0.127116620540619,-0.030918696895242,0.068843126296997,-0.063077680766582,0.057291142642498));
res += mul(Get(s1,0,-dy), float4x4(-0.147631555795670,0.033920004963875,-0.041177414357662,-0.018535193055868,0.050188370049000,0.069906510412693,0.025733105838299,0.001271895016544,0.260897666215897,-0.049133222550154,0.274672806262970,0.115243189036846,-0.107515938580036,-0.015424951910973,-0.026555698364973,-0.057231072336435));
res += mul(Get(s1,0,0), float4x4(-0.312779426574707,0.160917237401009,0.013578531332314,0.241782724857330,0.059424020349979,0.070503152906895,-0.091402590274811,-0.173490270972252,0.031656634062529,0.088734328746796,0.149786248803139,0.138967290520668,0.082624785602093,-0.091075472533703,0.085787534713745,0.056166805326939));
res += mul(Get(s1,0,dy), float4x4(-0.098706841468811,0.016587508842349,0.101043783128262,0.035398904234171,0.070998467504978,0.095018319785595,-0.003476192010567,0.118403613567352,-0.464009463787079,-0.015593628399074,-0.107149496674538,0.028012983500957,0.015743900090456,-0.022677160799503,-0.007608058396727,0.037447255104780));
res += mul(Get(s1,dx,-dy), float4x4(0.144351348280907,0.017332773655653,0.090265162289143,-0.042445976287127,-0.071223564445972,0.034241955727339,-0.012990730814636,-0.078046306967735,0.087693378329277,-0.037934165447950,0.108951590955257,0.122263148427010,0.082443341612816,-0.014952592551708,-0.049450889229774,-0.064812816679478));
res += mul(Get(s1,dx,0), float4x4(-0.073257811367512,0.090643584728241,-0.126214936375618,-0.265844732522964,0.069588370621204,-0.010872032493353,0.036013625562191,-0.061177581548691,-0.001337863039225,0.053036283701658,-0.122994922101498,0.109774500131607,-0.021013721823692,0.038880374282598,-0.007051910273731,-0.086336560547352));
res += mul(Get(s1,dx,dy), float4x4(0.021987808868289,-0.063484586775303,-0.077258884906769,-0.028969286009669,0.123758204281330,-0.043781295418739,-0.019429175183177,0.165613025426865,-0.183088466525078,-0.004041173029691,-0.020567780360579,-0.031644105911255,-0.096129506826401,0.069912828505039,0.154042422771454,0.057104837149382));
res += mul(Get(s2,-dx,-dy), float4x4(-0.055233437567949,0.254559963941574,-0.024489251896739,-0.073825582861900,-0.057883899658918,-0.153313949704170,0.154565244913101,-0.277586847543716,-0.160982683300972,-0.028480032458901,0.144497886300087,-0.062466759234667,-0.079254314303398,0.023654796183109,0.008729815483093,-0.112325213849545));
res += mul(Get(s2,-dx,0), float4x4(-0.074707284569740,0.368699669837952,-0.043839864432812,-0.104731351137161,-0.000026761650588,-0.231466755270958,-0.064821667969227,-0.056285575032234,-0.104893870651722,-0.087302736938000,0.012910744175315,0.065599948167801,0.016970669850707,-0.157182633876801,0.008193519897759,-0.206896871328354));
res += mul(Get(s2,-dx,dy), float4x4(-0.003169524017721,0.139476880431175,-0.004152138251811,-0.115479737520218,-0.052612360566854,-0.119871482253075,0.105370379984379,-0.084243185818195,0.119300059974194,0.092021740972996,-0.050988525152206,-0.204774796962738,-0.090999372303486,-0.136131137609482,-0.013556474819779,0.193232029676437));
res += mul(Get(s2,0,-dy), float4x4(-0.094705082476139,0.166354745626450,-0.150665119290352,-0.420634984970093,0.024769727140665,0.072330005466938,-0.079642675817013,-0.070424549281597,0.072506614029408,0.012471450492740,0.004794592037797,-0.126387596130371,0.046082753688097,-0.086512796580791,0.163497984409332,-0.067225150763988));
res += mul(Get(s2,0,0), float4x4(0.009762688539922,0.128120005130768,-0.086248964071274,0.021477937698364,-0.157962724566460,0.093948371708393,-0.137104064226151,-0.117831036448479,-0.025291375815868,0.040931351482868,0.081899359822273,0.135806366801262,0.072549082338810,0.053192831575871,-0.111627489328384,-0.018596289679408));
res += mul(Get(s2,0,dy), float4x4(0.128166168928146,0.138789251446724,0.055510342121124,0.111899837851524,0.116851635277271,0.066504321992397,0.052360016852617,-0.077273078262806,-0.123209230601788,0.106047987937927,-0.057398829609156,-0.047792386263609,-0.526237666606903,-0.011015001684427,-0.215816393494606,-0.018769826740026));
res += mul(Get(s2,dx,-dy), float4x4(0.017152339220047,-0.036114435642958,0.192897245287895,0.117866612970829,-0.117579877376556,0.032034199684858,-0.076734587550163,-0.159490928053856,-0.074479952454567,-0.069474495947361,-0.122029095888138,-0.111871659755707,-0.032921537756920,0.035300448536873,0.021810546517372,0.042235080152750));
res += mul(Get(s2,dx,0), float4x4(0.056361723691225,-0.134553998708725,0.241933107376099,0.351889610290527,0.115609258413315,-0.010172723792493,-0.056555416435003,-0.256611406803131,0.153739184141159,-0.032227769494057,0.006752196233720,-0.061250679194927,-0.016561612486839,-0.021792152896523,0.009995411150157,-0.267549246549606));
res += mul(Get(s2,dx,dy), float4x4(0.006010724697262,-0.040111400187016,-0.209011659026146,0.002510551363230,-0.049442235380411,0.047309506684542,0.022276923060417,-0.168611794710159,0.118787251412868,0.009400856681168,-0.036283899098635,0.094950146973133,0.122060202062130,-0.013673149049282,-0.119553826749325,-0.056757025420666));
res += mul(Get(s3,-dx,-dy), float4x4(0.078477695584297,0.202139094471931,0.002461540512741,0.001362237846479,0.094998873770237,0.092922285199165,0.035761162638664,0.026288673281670,-0.143010050058365,0.002967879874632,0.079431019723415,0.010087493807077,-0.057465817779303,-0.093068204820156,-0.075963944196701,-0.165426805615425));
res += mul(Get(s3,-dx,0), float4x4(-0.053046576678753,0.116972513496876,-0.159450754523277,0.128863200545311,0.183056086301804,0.259111613035202,0.050653055310249,-0.017961462959647,-0.117403224110603,0.067872703075409,-0.063142344355583,-0.128666326403618,0.087104558944702,-0.116737686097622,-0.041254598647356,-0.173072114586830));
res += mul(Get(s3,-dx,dy), float4x4(0.073992736637592,-0.011688413098454,0.114155501127243,0.016965150833130,-0.184428393840790,0.229112967848778,0.083189696073532,-0.025326948612928,0.151176705956459,0.111519001424313,0.071093276143074,-0.042799387127161,-0.153163388371468,0.139149621129036,-0.240912541747093,-0.129064694046974));
res += mul(Get(s3,0,-dy), float4x4(-0.059540551155806,-0.073905326426029,-0.008709764108062,-0.083878718316555,0.106492213904858,0.055239938199520,0.227152094244957,-0.031208874657750,-0.181506663560867,-0.022793764248490,0.013188879936934,0.029841037467122,0.050895828753710,0.070193387567997,0.108751706779003,-0.022614132612944));
res += mul(Get(s3,0,0), float4x4(-0.047273874282837,0.017405258491635,-0.232498884201050,0.266162991523743,-0.031145934015512,0.037871208041906,0.177469998598099,0.215933173894882,0.196484789252281,-0.018311671912670,0.053891465067863,-0.179183885455132,0.162826225161552,0.200334668159485,0.259494900703430,0.105749905109406));
res += mul(Get(s3,0,dy), float4x4(0.122958764433861,-0.001182655338198,0.160207018256187,0.025983007624745,-0.081649810075760,0.156484365463257,-0.027104448527098,-0.048513036221266,0.243981525301933,-0.061222977936268,0.128762409090996,-0.037537172436714,-0.280143946409225,0.046531245112419,-0.063808165490627,-0.023144591599703));
res += mul(Get(s3,dx,-dy), float4x4(0.032618504017591,0.016825838014483,0.101310960948467,0.077545769512653,0.214454054832458,0.030794838443398,0.292066246271133,0.279338598251343,0.005929911974818,0.025741048157215,0.131905660033226,-0.042837563902140,0.025868538767099,-0.042424492537975,-0.074925765395164,-0.162712052464485));
res += mul(Get(s3,dx,0), float4x4(-0.245561659336090,-0.011652535758913,-0.213976860046387,0.180147647857666,0.112805940210819,-0.026030596345663,0.349003106355667,0.332501113414764,-0.040407322347164,0.046617686748505,0.089112311601639,-0.219682335853577,-0.054305918514729,-0.036037549376488,-0.049505099654198,-0.213891148567200));
res += mul(Get(s3,dx,dy), float4x4(0.082081139087677,-0.007385795470327,0.058851059526205,0.011603463441133,-0.060037590563297,0.065792910754681,0.296133995056152,0.175357639789581,-0.031196329742670,0.066647790372372,0.110024504363537,-0.068271219730377,-0.118994623422623,0.058884453028440,-0.064085200428963,0.003560095792636));
res += mul(Get(s4,-dx,-dy), float4x4(0.005452584009618,-0.059401463717222,-0.177855283021927,-0.086146943271160,0.007328333333135,0.075886443257332,-0.083002217113972,0.095614746212959,0.078815318644047,-0.001617179717869,0.076360367238522,-0.105774290859699,-0.105758823454380,-0.035334046930075,0.063714042305946,0.094206228852272));
res += mul(Get(s4,-dx,0), float4x4(0.060896344482899,-0.041657716035843,0.027840610593557,-0.340958982706070,-0.012561435811222,-0.113848015666008,0.061822798103094,0.076558366417885,0.085414253175259,-0.015772713348269,0.012739222496748,-0.088634401559830,0.020431635901332,0.151955321431160,-0.080672346055508,-0.086941950023174));
res += mul(Get(s4,-dx,dy), float4x4(0.038415562361479,-0.042642164975405,-0.004713904578239,0.094762101769447,-0.037179686129093,-0.007801464758813,0.187125787138939,-0.199581980705261,0.075118310749531,-0.055687855929136,-0.045435979962349,-0.036685939878225,-0.036405004560947,-0.120225474238396,-0.040565479546785,-0.000472837418783));
res += mul(Get(s4,0,-dy), float4x4(0.003556873416528,-0.067530177533627,0.137527167797089,-0.158368781208992,-0.223908796906471,0.007825286127627,-0.174038201570511,-0.099379360675812,0.018574226647615,-0.053077705204487,0.031764425337315,0.056485161185265,0.019152574241161,-0.018256921321154,0.069337911903858,0.025870421901345));
res += mul(Get(s4,0,0), float4x4(0.210834950208664,0.088620424270630,0.284634143114090,0.391352117061615,0.039482932537794,-0.088129729032516,-0.051211170852184,0.030112683773041,-0.369324922561646,0.144637912511826,-0.075921662151814,0.143659040331841,0.019217710942030,0.190363571047783,-0.072271957993507,-0.038167182356119));
res += mul(Get(s4,0,dy), float4x4(-0.206739380955696,0.100999042391777,-0.223750829696655,-0.025476634502411,0.261786788702011,0.080315090715885,0.053944371640682,0.025705112144351,-0.176858186721802,-0.040059864521027,-0.163953632116318,-0.092441014945507,-0.013960791751742,-0.010446282103658,-0.046630043536425,-0.099613919854164));
res += mul(Get(s4,dx,-dy), float4x4(0.022206703200936,-0.027996739372611,0.029367703944445,0.074147284030914,0.001211202819832,0.067527256906033,0.163919746875763,0.031146600842476,-0.009258676320314,-0.089480876922607,-0.093993358314037,0.073817990720272,0.009807571768761,0.014315024018288,0.110751241445541,0.026221457868814));
res += mul(Get(s4,dx,0), float4x4(-0.248318016529083,-0.019620213657618,-0.097032383084297,-0.187674462795258,0.006898330990225,0.062406573444605,0.022214569151402,0.176596939563751,0.153884440660477,-0.014264388941228,0.165977433323860,-0.207989141345024,0.027722954750061,-0.079639218747616,-0.119757123291492,-0.011759788729250));
res += mul(Get(s4,dx,dy), float4x4(-0.031577698886395,-0.020073698833585,0.112123630940914,0.025329301133752,-0.016215438023210,0.111850358545780,-0.102603115141392,-0.171387568116188,0.052885867655277,0.002297954401001,0.021371267735958,0.117791168391705,0.002274853410199,-0.077795669436455,-0.017693649977446,0.017998211085796));
res += mul(Get(s5,-dx,-dy), float4x4(0.097479067742825,-0.107806093990803,0.051482222974300,0.001785291009583,-0.000873276614584,0.075337171554565,-0.155636772513390,0.059284638613462,-0.239003017544746,0.230625599622726,-0.000496153254062,0.115548096597195,-0.114683978259563,-0.204516857862473,-0.051976356655359,0.051450792700052));
res += mul(Get(s5,-dx,0), float4x4(0.040715344250202,-0.057576715946198,0.396863400936127,0.025871485471725,-0.155560687184334,0.266883432865143,0.144804492592812,0.045327659696341,0.110979013144970,0.429668575525284,0.389859974384308,0.346345484256744,0.128509938716888,0.265068948268890,0.012000549584627,0.193887829780579));
res += mul(Get(s5,-dx,dy), float4x4(-0.066611781716347,-0.065443262457848,0.139257237315178,0.214016720652580,0.239179626107216,0.019166138023138,0.117750421166420,0.184585154056549,0.165147989988327,0.258142173290253,-0.374487578868866,0.042052429169416,0.012337017804384,0.006359613034874,0.235384270548820,-0.216347903013229));
res += mul(Get(s5,0,-dy), float4x4(0.025084231048822,0.061066064983606,-0.180430859327316,0.122075945138931,-0.353599578142166,0.130305975675583,-0.204259440302849,0.076676331460476,-0.112720914185047,-0.025666479021311,-0.068029798567295,-0.241037264466286,0.143916606903076,-0.123207941651344,-0.033966202288866,-0.049295078963041));
res += mul(Get(s5,0,0), float4x4(-0.191789761185646,0.045485664159060,0.151163369417191,0.121748737990856,-0.237282454967499,-0.026396717876196,-0.204266905784607,-0.232119262218475,-0.121782921254635,-0.203022420406342,-0.095040075480938,-0.038443639874458,-0.284493029117584,0.085909783840179,-0.244637444615364,0.058419503271580));
res += mul(Get(s5,0,dy), float4x4(-0.081853285431862,0.116105251014233,0.183972120285034,0.137267336249352,0.303930491209030,-0.008368783630431,-0.027343310415745,-0.004533258266747,0.233077839016914,-0.153482824563980,-0.020051838830113,0.061204969882965,0.393295019865036,0.021189466118813,0.223680809140205,0.202033042907715));
res += mul(Get(s5,dx,-dy), float4x4(0.187281817197800,0.041551224887371,0.059215009212494,-0.037418030202389,-0.037522304803133,-0.089354775846004,0.152607247233391,-0.200147032737732,0.035578325390816,-0.007470899727196,-0.049583982676268,-0.027936942875385,-0.030269224196672,-0.001693974831142,0.102664589881897,-0.133869722485542));
res += mul(Get(s5,dx,0), float4x4(0.075648717582226,0.021794000640512,-0.032153293490410,-0.017163582146168,-0.149706855416298,0.001918742083944,0.151194363832474,0.127310335636139,-0.026593187823892,0.039376232773066,0.054590083658695,-0.207508310675621,-0.214831858873367,-0.055325645953417,-0.092347644269466,-0.034351386129856));
res += mul(Get(s5,dx,dy), float4x4(-0.130454495549202,0.060880579054356,0.126547202467918,0.184042125940323,0.127276852726936,-0.030333044007421,0.006559789646417,-0.114837214350700,-0.059672635048628,-0.052147563546896,-0.064925566315651,-0.081381529569626,-0.062204681336880,-0.131119862198830,0.108285449445248,-0.009172366000712));
res = max(float4(0, 0, 0, 0), res) + float4(0.470699965953827,0.021302422508597,0.169785365462303,0.011313764378428) * min(float4(0, 0, 0, 0), res);
return res;
}