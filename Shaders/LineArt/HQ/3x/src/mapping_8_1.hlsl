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
float4 res = float4(-0.064954161643982,-0.124730706214905,-0.008085164241493,0.055081918835640);
res += mul(Get(s0,-dx,-dy), float4x4(-0.009683392941952,0.047856941819191,-0.011004900559783,0.023269226774573,-0.025517422705889,-0.012756476178765,-0.022137589752674,-0.040445268154144,-0.006689856760204,0.039693687111139,0.026609668508172,0.030231535434723,-0.048075906932354,-0.069554425776005,-0.032482761889696,-0.061199605464935));
res += mul(Get(s0,-dx,0), float4x4(-0.089344918727875,-0.026624826714396,0.143709778785706,0.094363018870354,-0.301900744438171,0.021615702658892,0.085980840027332,0.049595329910517,0.065108068287373,0.055141307413578,0.046342223882675,-0.027133818715811,0.106262221932411,0.081208884716034,-0.004638075362891,-0.050968781113625));
res += mul(Get(s0,-dx,dy), float4x4(-0.057662717998028,0.088176399469376,0.015440593473613,0.075023092329502,0.039315283298492,0.005133185070008,-0.052980981767178,0.035128477960825,-0.069773815572262,0.016563195735216,0.068608462810516,0.061003006994724,-0.017740370705724,0.024021826684475,0.048887614160776,-0.029088605195284));
res += mul(Get(s0,0,-dy), float4x4(-0.047586042433977,0.069040015339851,0.243649140000343,-0.146641194820404,0.063697576522827,0.045709177851677,-0.061963409185410,-0.026990013197064,-0.046071074903011,-0.009678194299340,0.014249142259359,-0.011423455551267,0.059225015342236,0.102039828896523,0.095282994210720,0.082038827240467));
res += mul(Get(s0,0,0), float4x4(-0.006981738843024,0.217418715357780,0.096157744526863,-0.259272515773773,-0.073531456291676,0.002879498759285,-0.391412198543549,-0.455689191818237,-0.064163893461227,0.049415208399296,-0.271127343177795,0.019318236038089,-0.002658400451764,-0.441411226987839,0.005126152187586,0.171739265322685));
res += mul(Get(s0,0,dy), float4x4(0.017561201006174,0.007378016598523,-0.064898639917374,-0.052812229841948,-0.008904451504350,-0.121879033744335,0.075130835175514,-0.117476269602776,0.063656404614449,-0.227777078747749,0.034621890634298,0.041094042360783,0.023472227156162,0.138010203838348,0.111266300082207,0.062588073313236));
res += mul(Get(s0,dx,-dy), float4x4(0.058315318077803,0.128716766834259,-0.128692016005516,0.032375756651163,-0.028805231675506,-0.053743198513985,-0.022576767951250,0.014806353487074,0.021032337099314,0.056891050189734,0.004724405705929,-0.031972806900740,0.008219656534493,-0.055902369320393,0.120172835886478,0.019961038604379));
res += mul(Get(s0,dx,0), float4x4(-0.003036880632862,-0.180195048451424,-0.010488335043192,0.054461926221848,-0.030236911028624,0.002264677314088,-0.169036328792572,-0.448095619678497,0.013655601069331,-0.078958325088024,0.080074615776539,0.077379889786243,0.019249329343438,0.307046741247177,0.065330319106579,-0.178301766514778));
res += mul(Get(s0,dx,dy), float4x4(0.060720793902874,0.152985736727715,-0.003481597639620,0.010509635321796,0.015398965217173,-0.225827366113663,-0.025923354551196,-0.055473688989878,0.002178505994380,0.097006842494011,-0.007618095725775,0.082814671099186,-0.005734812002629,0.117519922554493,0.059930749237537,-0.100884914398193));
res += mul(Get(s1,-dx,-dy), float4x4(0.028691362589598,-0.022873293608427,0.013626384548843,-0.026879897341132,0.133745729923248,0.000884065986611,0.008543920703232,0.021336605772376,-0.104701973497868,-0.021479099988937,0.001365680363961,0.098842263221741,0.100881882011890,0.040918041020632,-0.046829760074615,-0.026497021317482));
res += mul(Get(s1,-dx,0), float4x4(0.101023063063622,0.073278889060020,-0.114462949335575,-0.081548660993576,-0.086815014481544,-0.036600895226002,0.070910684764385,0.081733599305153,-0.009901559911668,-0.028496909886599,0.020347164943814,0.097748696804047,-0.213965296745300,0.051093336194754,0.085676334798336,0.028801605105400));
res += mul(Get(s1,-dx,dy), float4x4(-0.015198516659439,0.002523865783587,0.000189803176909,-0.040989995002747,-0.078238368034363,0.013963591307402,0.027823450043797,0.037057314068079,-0.023242082446814,-0.030159899964929,-0.058497805148363,-0.003725082613528,-0.015186814591289,0.015152804553509,0.012457175180316,0.029840677976608));
res += mul(Get(s1,0,-dy), float4x4(0.005457045510411,0.030105488374829,-0.078319981694221,0.132504552602768,-0.216773927211761,0.134141206741333,-0.058041132986546,0.067420922219753,0.043555494397879,0.085246078670025,-0.049350835382938,-0.025936905294657,0.102710947394371,0.001124610658735,0.095769889652729,0.108874626457691));
res += mul(Get(s1,0,0), float4x4(-0.147711351513863,-0.184682294726372,0.265992283821106,0.219599008560181,0.166123986244202,0.011925087310374,-0.130871325731277,-0.206558957695961,-0.036458134651184,-0.184327527880669,-0.288812339305878,-0.202796638011932,0.074891224503517,-0.055366370826960,-0.029379302635789,-0.042610067874193));
res += mul(Get(s1,0,dy), float4x4(-0.049425967037678,0.036249376833439,-0.058251466602087,0.109537869691849,0.022356402128935,0.013688093982637,-0.016052743420005,0.057035278528929,0.066064067184925,0.108534134924412,0.064211599528790,0.058285336941481,-0.008496016263962,-0.090026922523975,0.046865265816450,0.025428757071495));
res += mul(Get(s1,dx,-dy), float4x4(0.026301013305783,0.005067061167210,-0.029743695631623,0.081524915993214,0.018653143197298,0.096336826682091,0.003322478616610,-0.071420229971409,-0.026740873232484,-0.040344987064600,-0.071348682045937,0.141082137823105,-0.067314930260181,-0.009184666909277,-0.076210431754589,-0.080204084515572));
res += mul(Get(s1,dx,0), float4x4(-0.111595593392849,0.040234755724669,0.083295553922653,0.288984209299088,-0.043497022241354,-0.017587339505553,-0.007283682469279,-0.059088882058859,-0.022912295535207,-0.016588598489761,0.116322308778763,0.148797184228897,-0.003653249470517,0.030512595549226,0.002745495410636,-0.061427049338818));
res += mul(Get(s1,dx,dy), float4x4(0.031312499195337,-0.133028298616409,0.024242825806141,0.186945363879204,0.001595585839823,-0.081308647990227,0.011418749578297,0.072349719703197,-0.013240648433566,-0.066514596343040,-0.052071552723646,0.114050097763538,0.009708047844470,0.009992225095630,-0.014978677034378,-0.015707854181528));
res += mul(Get(s2,-dx,-dy), float4x4(-0.178654059767723,-0.006802199874073,0.059080924838781,-0.001060038106516,-0.019273586571217,-0.034912396222353,-0.088678710162640,-0.039535377174616,-0.029739802703261,-0.023137575015426,0.044867496937513,-0.046576589345932,-0.166582822799683,-0.030813595280051,-0.018465438857675,0.090063214302063));
res += mul(Get(s2,-dx,0), float4x4(0.043394684791565,-0.031471155583858,0.047182004898787,-0.158918082714081,-0.159100830554962,-0.013199904933572,0.007891179993749,0.052011705935001,-0.048440009355545,0.078022591769695,-0.007518722210079,-0.040268953889608,0.036053493618965,-0.049718227237463,-0.034893300384283,-0.031749419867992));
res += mul(Get(s2,-dx,dy), float4x4(0.000603639928158,0.039984446018934,0.066793374717236,-0.083536788821220,0.060053255409002,0.024998189881444,-0.016336018219590,-0.024603573605418,0.062236838042736,-0.033678729087114,0.028403030708432,-0.063309624791145,-0.022278985008597,0.042775023728609,0.031471345573664,0.031043993309140));
res += mul(Get(s2,0,-dy), float4x4(-0.067766033113003,0.011371954344213,-0.023386152461171,-0.227562978863716,0.040636233985424,-0.079584829509258,0.164883345365524,0.179479137063026,-0.223270669579506,0.032967500388622,-0.007088181097060,-0.031698789447546,0.152770891785622,-0.007610544096678,0.099896550178528,-0.005181514658034));
res += mul(Get(s2,0,0), float4x4(-0.363767892122269,0.161538064479828,0.022552886977792,-0.289653301239014,-0.065122812986374,0.195644989609718,-0.078959047794342,-0.024452118203044,0.161311045289040,0.084707386791706,-0.315117269754410,-0.203337386250496,0.003846582025290,0.160251900553703,-0.108061596751213,-0.135608494281769));
res += mul(Get(s2,0,dy), float4x4(0.006043387111276,0.069684743881226,-0.081514164805412,-0.026815436780453,-0.024681076407433,-0.180631026625633,-0.061996407806873,-0.033265296369791,0.032571803778410,-0.169327691197395,0.085450381040573,-0.157455876469612,-0.127620384097099,-0.294287592172623,-0.108233094215393,-0.036509349942207));
res += mul(Get(s2,dx,-dy), float4x4(0.029082514345646,-0.011255613528192,0.028471291065216,-0.037228897213936,-0.010315719991922,-0.024022519588470,-0.057122830301523,-0.029210831969976,0.004156058188528,0.087553583085537,0.022803120315075,0.064846031367779,-0.067128941416740,-0.071830846369267,-0.091740384697914,0.060920961201191));
res += mul(Get(s2,dx,0), float4x4(-0.002523171715438,0.017809754237533,-0.226660758256912,-0.233427986502647,0.016544232144952,-0.221019983291626,-0.109969601035118,-0.194159045815468,0.026170061901212,-0.151947379112244,-0.045193981379271,0.015610002912581,0.037946332246065,-0.162662178277969,-0.030793027952313,-0.089438192546368));
res += mul(Get(s2,dx,dy), float4x4(-0.034801829606295,-0.146542951464653,0.061372056603432,0.013953931629658,-0.012257876805961,-0.038075875490904,0.045725986361504,0.022577829658985,0.014408172108233,0.079378515481949,-0.028630767017603,-0.053580589592457,0.086842216551304,0.025496762245893,-0.018545279279351,-0.026576099917293));
res += mul(Get(s3,-dx,-dy), float4x4(-0.116477504372597,0.036644440144300,-0.020575590431690,0.026466380804777,0.053774502128363,-0.035385537892580,-0.003473347285762,0.044329032301903,-0.001929202233441,0.035269510000944,0.028233820572495,0.102305330336094,-0.139607533812523,-0.013845524750650,-0.048819977790117,-0.042363177984953));
res += mul(Get(s3,-dx,0), float4x4(-0.072430014610291,0.040635712444782,-0.013398614712059,0.002705915365368,-0.042034149169922,0.007241657935083,-0.051332220435143,-0.060206804424524,0.037940774112940,0.032797947525978,0.018233397975564,-0.004098654258996,-0.213620662689209,-0.033069055527449,0.146256521344185,0.071712538599968));
res += mul(Get(s3,-dx,dy), float4x4(0.105289272964001,-0.020197169855237,0.006799993570894,0.031393270939589,-0.016696354374290,0.080781415104866,-0.012995274737477,-0.005613157059997,0.059093177318573,0.036606758832932,-0.014496506191790,-0.062852971255779,0.043011572211981,-0.003851816523820,0.007638558279723,0.027292780578136));
res += mul(Get(s3,0,-dy), float4x4(0.092392675578594,-0.083996593952179,0.133739978075027,-0.008166561834514,-0.126682311296463,0.078512787818909,-0.061319321393967,0.068775661289692,-0.014062626287341,0.053806103765965,-0.124787911772728,-0.213870108127594,0.183508127927780,-0.137279853224754,0.244027137756348,0.061949986964464));
res += mul(Get(s3,0,0), float4x4(-0.076412677764893,0.146922960877419,0.009300184436142,0.035845000296831,0.003554176539183,-0.055023845285177,0.187888428568840,0.295106977224350,-0.233876451849937,-0.037017434835434,-0.149860441684723,0.051096014678478,-0.044379107654095,0.233343407511711,-0.547548592090607,-0.154412060976028));
res += mul(Get(s3,0,dy), float4x4(-0.257477015256882,0.192350357770920,-0.093957580626011,-0.067693725228310,-0.003583247540519,0.137272223830223,-0.020721791312099,0.024877272546291,-0.038409311324358,-0.124480769038200,-0.159361526370049,0.092603631317616,-0.022555897012353,-0.193492159247398,-0.051423687487841,-0.048483911901712));
res += mul(Get(s3,dx,-dy), float4x4(-0.015561945736408,-0.082266598939896,-0.086767010390759,0.077442176640034,-0.019289636984468,0.097082704305649,0.085944786667824,-0.034450143575668,-0.028406687080860,0.049700286239386,-0.061212059110403,0.165200099349022,0.028915086761117,-0.028488582000136,0.000783266965300,0.105332024395466));
res += mul(Get(s3,dx,0), float4x4(-0.019892487674952,-0.127336055040359,0.015561133623123,-0.052719987928867,0.028534617275000,0.155385240912437,-0.109440699219704,-0.160901904106140,0.052321601659060,-0.210000097751617,-0.175058707594872,-0.188359022140503,0.023398255929351,0.150605633854866,0.033979289233685,0.082988895475864));
res += mul(Get(s3,dx,dy), float4x4(0.067322008311749,0.006371719297022,-0.010077519342303,0.084232307970524,-0.017006538808346,-0.141771480441093,-0.012426364235580,-0.075126446783543,-0.028722541406751,-0.434802770614624,0.096201404929161,-0.171201288700104,0.009478697553277,0.008123789913952,0.035984147340059,0.048394333571196));
res += mul(Get(s4,-dx,-dy), float4x4(-0.087055630981922,0.032316621392965,0.097886607050896,0.030960490927100,-0.047516521066427,0.018746772781014,0.016949009150267,-0.007163290865719,-0.078495025634766,0.108217015862465,-0.055700339376926,-0.054815713316202,-0.084960527718067,0.081778682768345,-0.157104715704918,0.051492046564817));
res += mul(Get(s4,-dx,0), float4x4(0.095624588429928,0.096059575676918,-0.099323034286499,-0.077734991908073,-0.033263240009546,0.040113952010870,-0.104993425309658,-0.094230890274048,-0.063145361840725,-0.039371836930513,0.072975590825081,0.102632686495781,-0.174662396311760,-0.088941626250744,0.061042942106724,0.033600647002459));
res += mul(Get(s4,-dx,dy), float4x4(-0.004362338222563,-0.005296461284161,0.046810369938612,-0.015548759140074,0.004058993421495,-0.070850588381290,0.034881912171841,-0.044425696134567,0.007486305665225,-0.013402160257101,0.007847760803998,-0.046831555664539,0.008662050589919,0.019120117649436,-0.047553006559610,0.082246623933315));
res += mul(Get(s4,0,-dy), float4x4(0.023915180936456,-0.060368362814188,-0.036501806229353,-0.382688373327255,0.030763035640121,0.097885936498642,0.092871032655239,0.163520187139511,-0.031850125640631,-0.011751529760659,0.103376030921936,-0.143045216798782,-0.086235843598843,0.008816977962852,-0.214207977056503,0.000392266490962));
res += mul(Get(s4,0,0), float4x4(-0.018063634634018,0.165708616375923,0.042417082935572,-0.252300232648849,-0.318995147943497,-0.133539393544197,-0.208546832203865,0.175192818045616,0.024404101073742,0.235429048538208,0.078143715858459,-0.179327085614204,0.047619041055441,0.017555391415954,0.246625810861588,-0.009053476154804));
res += mul(Get(s4,0,dy), float4x4(-0.001291588065214,0.018012635409832,-0.070968069136143,-0.048966031521559,0.001199570717290,0.069638773798943,-0.002686206018552,0.081978000700474,-0.038139592856169,-0.121638052165508,0.080489300191402,0.108848117291927,-0.000262554385699,-0.123684093356133,0.038891386240721,0.134966462850571));
res += mul(Get(s4,dx,-dy), float4x4(0.001250215689652,0.034049820154905,0.042097102850676,0.093524821102619,-0.020432196557522,0.093703620135784,-0.114642225205898,-0.217978179454803,-0.011383828707039,-0.043452039361000,0.003586496459320,-0.071489579975605,-0.023264866322279,-0.052432060241699,0.054893936961889,-0.030150774866343));
res += mul(Get(s4,dx,0), float4x4(-0.068702213466167,-0.045633055269718,-0.040561743080616,0.086000189185143,0.017049865797162,-0.178865954279900,0.020036824047565,-0.115562826395035,0.061540879309177,0.017425326630473,0.016205454245210,-0.174030870199203,-0.036303788423538,-0.036438096314669,-0.036840714514256,-0.027260854840279));
res += mul(Get(s4,dx,dy), float4x4(-0.013856422156096,-0.064832627773285,0.024342469871044,0.007229678332806,-0.019813859835267,-0.027703776955605,0.006572614889592,-0.004272341728210,-0.018836257979274,-0.024213878437877,0.026368852704763,-0.013312190771103,-0.010000025853515,0.030052769929171,-0.023320185020566,0.033963318914175));
res += mul(Get(s5,-dx,-dy), float4x4(-0.181330174207687,0.056770551949739,0.051250904798508,0.079778827726841,0.158064961433411,0.045458152890205,0.002876774175093,-0.049338590353727,-0.054323572665453,-0.059838525950909,0.067306086421013,-0.019319664686918,0.142878472805023,-0.082112811505795,-0.046774812042713,-0.120518036186695));
res += mul(Get(s5,-dx,0), float4x4(0.013022518716753,0.029907772317529,-0.088931910693645,0.001307047321461,0.152579650282860,-0.062142644077539,0.083952993154526,0.072096392512321,0.007276132237166,0.183657273650169,-0.068204537034035,-0.043141778558493,0.286952674388885,0.090946443378925,-0.084748409688473,-0.004318426363170));
res += mul(Get(s5,-dx,dy), float4x4(-0.003028715262190,-0.036127157509327,0.022372549399734,-0.006393253337592,0.074238225817680,0.010954596102238,-0.015065779909492,-0.012967385351658,-0.048399999737740,-0.084255456924438,0.077070564031601,0.017149671912193,0.020077619701624,-0.008657624945045,-0.008257554844022,-0.009114739485085));
res += mul(Get(s5,0,-dy), float4x4(-0.051152545958757,-0.043309096246958,-0.046248346567154,0.061855290085077,0.109339028596878,0.087339065968990,-0.000513893726747,-0.005373049061745,-0.087470069527626,0.086176559329033,-0.108170524239540,-0.111344672739506,0.075720936059952,-0.066903881728649,0.007438226602972,0.155577659606934));
res += mul(Get(s5,0,0), float4x4(-0.114721417427063,-0.153310999274254,-0.113947696983814,-0.065724290907383,0.181962192058563,-0.103247389197350,-0.142451763153076,-0.131542429327965,0.059523008763790,-0.018494041636586,-0.222611576318741,-0.146802216768265,-0.002881308319047,0.163852855563164,-0.104871265590191,0.382760047912598));
res += mul(Get(s5,0,dy), float4x4(0.008536552079022,-0.026134500280023,-0.039236918091774,0.018164433538914,0.093876682221889,-0.047474667429924,0.040498405694962,-0.294440597295761,0.043888814747334,-0.207258880138397,-0.038643293082714,0.032544136047363,0.031216375529766,-0.037969429045916,-0.072852827608585,0.069545380771160));
res += mul(Get(s5,dx,-dy), float4x4(0.043333925306797,-0.037522029131651,-0.016578488051891,-0.113904431462288,-0.019616318866611,-0.030424773693085,-0.000002036118531,-0.100174956023693,0.051887638866901,0.033282436430454,0.061831317842007,0.028702562674880,0.033623285591602,-0.005437006242573,0.039329830557108,0.010347601957619));
res += mul(Get(s5,dx,0), float4x4(0.031024113297462,-0.113820113241673,-0.101407989859581,-0.604171335697174,-0.020973213016987,-0.009579207748175,0.006279260851443,-0.240367293357849,-0.022839119657874,-0.043444268405437,0.027703288942575,0.007827528752387,0.005696684587747,-0.032759670168161,0.019561802968383,0.103234857320786));
res += mul(Get(s5,dx,dy), float4x4(0.005522293504328,-0.071262314915657,0.033385492861271,-0.124192133545876,0.020378036424518,-0.049019217491150,-0.007967865094543,-0.102570861577988,0.011248112656176,0.106820069253445,0.008020921610296,-0.014591193757951,-0.012240187264979,-0.079433396458626,-0.014949288219213,-0.012852905318141));
res = max(float4(0, 0, 0, 0), res) + float4(-0.084454700350761,0.026242023333907,-0.026835182681680,-0.014404033310711) * min(float4(0, 0, 0, 0), res);
return res;
}
