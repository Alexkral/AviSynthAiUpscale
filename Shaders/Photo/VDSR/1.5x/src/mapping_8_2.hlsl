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
res += mul(Get(s0,-dx,-dy), float4x4(0.000609455048107,-0.033222276717424,-0.012539053335786,-0.068467609584332,0.024699592962861,-0.034633569419384,-0.056436765938997,0.032822664827108,0.010897371917963,0.086586549878120,-0.069507524371147,-0.087401181459427,0.016532212495804,0.006608555559069,-0.060797281563282,-0.081123158335686));
res += mul(Get(s0,-dx,0), float4x4(0.027352407574654,-0.006021263543516,0.042194686830044,0.126650482416153,0.095290966331959,-0.025539098307490,0.000914668722544,0.064860537648201,0.042883906513453,-0.001916963490658,-0.034132823348045,-0.016452204436064,-0.030645629391074,0.097544938325882,0.128935009241104,-0.101919002830982));
res += mul(Get(s0,-dx,dy), float4x4(-0.024327486753464,-0.039699710905552,0.032537564635277,-0.026501946151257,-0.028791842982173,0.046166725456715,0.023707861080766,0.080969870090485,0.097832262516022,-0.037783414125443,0.058820437639952,0.063788883388042,0.012767570093274,0.129419714212418,0.028548594564199,0.007768687326461));
res += mul(Get(s0,0,-dy), float4x4(0.003702731104568,-0.063566036522388,0.044489555060863,0.071762561798096,-0.065296515822411,0.040056671947241,0.004089322872460,0.090895362198353,0.202092796564102,0.011366942897439,-0.082597158849239,-0.096489265561104,0.019297791644931,-0.110541589558125,0.012411642819643,-0.030929228290915));
res += mul(Get(s0,0,0), float4x4(-0.111112423241138,-0.000304878369207,-0.034624654799700,0.078294903039932,0.035680878907442,0.027563981711864,-0.026635741814971,0.136023536324501,0.114450737833977,0.065722160041332,0.116790547966957,0.100956700742245,-0.041513673961163,-0.082083344459534,0.219569250941277,-0.054081860929728));
res += mul(Get(s0,0,dy), float4x4(-0.041706450283527,0.040464948862791,-0.039910640567541,0.038142580538988,0.056441448628902,0.048378173261881,0.000027445790693,0.051569517701864,-0.017526812851429,0.000417996168835,0.179563090205193,0.015807600691915,-0.030257547274232,-0.027457721531391,0.005389853380620,0.038334678858519));
res += mul(Get(s0,dx,-dy), float4x4(0.052153598517179,-0.029108313843608,-0.029177384451032,-0.007773161865771,0.058210484683514,0.009412045590580,-0.039279587566853,0.012340984307230,-0.069961354136467,-0.142627060413361,-0.059974055737257,-0.132577463984489,0.056821517646313,0.007894676178694,0.086775712668896,-0.007150350138545));
res += mul(Get(s0,dx,0), float4x4(-0.046713221818209,0.001104577444494,-0.006886761169881,-0.034799125045538,0.230024591088295,0.074442319571972,-0.030541421845555,-0.003870537737384,-0.048925328999758,-0.124469913542271,-0.111688569188118,0.067400589585304,-0.116907477378845,-0.005359866656363,0.094619922339916,-0.095706596970558));
res += mul(Get(s0,dx,dy), float4x4(-0.006491682957858,-0.048428397625685,-0.004457845818251,-0.000241254019784,0.018668610602617,0.170065641403198,-0.045847766101360,0.030694613233209,0.147063374519348,-0.066842928528786,0.020476123318076,-0.016406213864684,-0.100175231695175,-0.029715087264776,0.000484413816594,0.027543276548386));
res += mul(Get(s1,-dx,-dy), float4x4(-0.060119837522507,0.038933973759413,-0.082888215780258,-0.000093608061434,0.051377017050982,0.036090735346079,0.085484802722931,-0.084412544965744,-0.172709450125694,0.021065639331937,0.186251580715179,-0.149477213621140,-0.004011740908027,-0.019196692854166,-0.011006048880517,0.051169641315937));
res += mul(Get(s1,-dx,0), float4x4(0.031801722943783,0.003243853105232,-0.131173446774483,0.105566188693047,0.077744595706463,0.027670467272401,0.122044332325459,0.024727290496230,0.003480852581561,0.045660942792892,0.026473624631763,-0.037311047315598,-0.011559599079192,0.006407889071852,-0.086102716624737,-0.032180212438107));
res += mul(Get(s1,-dx,dy), float4x4(-0.018448255956173,-0.050960902124643,-0.109888851642609,-0.052359119057655,0.090564973652363,0.071999236941338,-0.015460955910385,0.040318332612514,-0.041687868535519,0.025082886219025,-0.050658058375120,0.053006410598755,-0.056662701070309,-0.046634666621685,-0.007463471032679,0.077485643327236));
res += mul(Get(s1,0,-dy), float4x4(-0.043506156653166,0.107201039791107,0.052287552505732,0.085937984287739,-0.127239242196083,-0.038622539490461,-0.015987034887075,-0.107058987021446,-0.031218558549881,-0.053951304405928,0.011801293119788,-0.010580008849502,-0.025830933824182,0.055736884474754,-0.000288166222163,-0.100296035408974));
res += mul(Get(s1,0,0), float4x4(-0.217497244477272,0.049653049558401,0.207192078232765,-0.045225389301777,0.002613175893202,-0.065884090960026,0.267977982759476,0.142266795039177,-0.009683305397630,0.039368104189634,0.069336414337158,0.133425459265709,0.267659455537796,0.143576100468636,-0.091085910797119,0.017124162986875));
res += mul(Get(s1,0,dy), float4x4(0.034326672554016,0.063412144780159,-0.065623007714748,-0.063892126083374,-0.036296505481005,-0.004339405801147,-0.069910071790218,-0.029381569474936,0.007708395831287,0.052541814744473,0.016841765493155,-0.013353017158806,0.005443574860692,-0.056553438305855,0.049207992851734,-0.068617969751358));
res += mul(Get(s1,dx,-dy), float4x4(-0.048784207552671,-0.064873918890953,0.017728883773088,0.100017942488194,-0.021311933174729,-0.085935287177563,-0.045536112040281,-0.202899515628815,-0.127694770693779,0.009111940860748,0.030082844197750,-0.056784518063068,0.049072146415710,-0.003835284616798,-0.043227665126324,-0.004807568155229));
res += mul(Get(s1,dx,0), float4x4(0.017447415739298,-0.011773979291320,-0.090988509356976,-0.064744666218758,0.289725154638290,-0.088902719318867,-0.080709837377071,0.046860616654158,-0.016450984403491,-0.054868448525667,0.026730172336102,0.089597791433334,-0.113869622349739,0.060509338974953,-0.052068658173084,-0.035609506070614));
res += mul(Get(s1,dx,dy), float4x4(0.044904079288244,-0.062013126909733,-0.037625841796398,-0.012289581820369,0.003337867558002,-0.115431047976017,-0.029242407530546,-0.015458871610463,0.053363945335150,-0.030597792938352,-0.043981168419123,0.033809825778008,0.024737291038036,-0.061481386423111,0.029710257425904,0.002106368541718));
res += mul(Get(s2,-dx,-dy), float4x4(0.022168146446347,-0.001686297357082,-0.060110587626696,-0.037215717136860,-0.071660637855530,0.048234328627586,0.073133796453476,-0.026010954752564,0.052088607102633,-0.024639297276735,-0.024721261113882,0.023487048223615,-0.005707717034966,-0.117625579237938,0.080802708864212,0.080743215978146));
res += mul(Get(s2,-dx,0), float4x4(0.006057697813958,0.007103140000254,0.059409372508526,-0.074572242796421,-0.051885128021240,0.071651771664619,-0.023938613012433,0.014376117847860,0.137876272201538,0.034971594810486,-0.007082521915436,0.045390818268061,-0.110529139637947,-0.016860119998455,-0.067397437989712,0.035172928124666));
res += mul(Get(s2,-dx,dy), float4x4(-0.070492789149284,-0.001129864132963,-0.074141077697277,-0.006872434634715,-0.045080862939358,0.001419016043656,0.042964275926352,0.077130980789661,0.053272403776646,0.020120704546571,0.038646120578051,0.095381960272789,-0.042681440711021,0.038265444338322,-0.108689591288567,-0.045768037438393));
res += mul(Get(s2,0,-dy), float4x4(-0.043294336646795,0.091157242655754,0.060004543513060,-0.174077808856964,-0.050823040306568,-0.045233372598886,-0.000848274910823,-0.033653989434242,0.021541440859437,0.010127210989594,0.011158576235175,0.112124532461166,-0.029714237898588,-0.165930986404419,0.061672374606133,0.100703977048397));
res += mul(Get(s2,0,0), float4x4(-0.068452440202236,0.029785664752126,-0.009463565424085,0.042602308094501,0.035218656063080,0.047095529735088,0.042433295398951,0.028915194794536,0.128658771514893,0.047244105488062,0.085747145116329,0.139665007591248,0.011019668541849,-0.026379914954305,-0.071761481463909,0.046017769724131));
res += mul(Get(s2,0,dy), float4x4(-0.024235989898443,0.018530623987317,0.119162462651730,0.110209971666336,0.049377877265215,0.033510178327560,-0.040519371628761,0.120085246860981,0.067764058709145,0.021672140806913,0.030599361285567,0.165700584650040,0.093588739633560,0.047755729407072,-0.040496915578842,0.008839637041092));
res += mul(Get(s2,dx,-dy), float4x4(0.092402562499046,-0.080421946942806,-0.030026257038116,-0.102461203932762,-0.091121129691601,0.021080181002617,0.006429376080632,-0.021748697385192,-0.031541485339403,-0.009218579158187,-0.029443459585309,0.022555787116289,0.068042434751987,-0.148269176483154,0.010097533464432,0.062292393296957));
res += mul(Get(s2,dx,0), float4x4(-0.001288150786422,-0.042150750756264,0.048106431961060,0.116085425019264,-0.149205550551414,0.023003457114100,-0.068290375173092,-0.014405638910830,0.051782045513391,0.025880990549922,0.102367229759693,0.084810808300972,0.068902663886547,-0.193039670586586,0.071285456418991,0.002591467928141));
res += mul(Get(s2,dx,dy), float4x4(-0.074391886591911,-0.056900598108768,-0.021809872239828,-0.009803033433855,-0.094069272279739,0.024306317791343,-0.008010980673134,0.037970755249262,0.009731670841575,0.048063509166241,0.023741669952869,0.030667277052999,0.007562208455056,-0.137319222092628,0.066869422793388,0.017863659188151));
res += mul(Get(s3,-dx,-dy), float4x4(0.041729226708412,0.053511302918196,-0.018036596477032,0.053815327584743,0.129322484135628,-0.043709568679333,0.043102607131004,-0.056844007223845,-0.049416229128838,-0.016975942999125,0.014915238134563,-0.047588191926479,0.158853366971016,-0.016189772635698,0.060408003628254,-0.073210708796978));
res += mul(Get(s3,-dx,0), float4x4(0.060455925762653,0.089826993644238,-0.055846087634563,0.062178272753954,0.010140740312636,-0.019230309873819,0.022643653675914,-0.021509982645512,-0.036744333803654,-0.006155584007502,0.020140195265412,0.091155953705311,0.061498001217842,-0.027995511889458,0.024792747572064,-0.069508202373981));
res += mul(Get(s3,-dx,dy), float4x4(0.001383736496791,0.162516042590141,-0.013423465192318,0.046418018639088,0.005352899897844,0.062564440071583,0.026413861662149,0.002643964951858,0.002648029942065,-0.019883446395397,0.001215313095599,-0.003765377681702,-0.121756136417389,0.074253045022488,0.004315530881286,-0.043208066374063));
res += mul(Get(s3,0,-dy), float4x4(0.117871440947056,0.033623773604631,-0.090102717280388,0.047590497881174,-0.057890780270100,0.109327927231789,-0.019830701872706,0.124529212713242,-0.004286327399313,0.009843075647950,-0.028485925868154,-0.060944519937038,0.124474100768566,0.013646792620420,-0.055382158607244,-0.145771935582161));
res += mul(Get(s3,0,0), float4x4(0.036253444850445,0.058478701859713,0.142547771334648,0.052658975124359,0.025892881676555,0.158794060349464,0.028095440939069,0.077101670205593,-0.023628268390894,0.019916610792279,-0.034958925098181,0.128631040453911,0.060490321367979,0.017900655046105,0.086974553763866,-0.077482193708420));
res += mul(Get(s3,0,dy), float4x4(-0.101256862282753,0.130377545952797,0.117083944380283,0.022586911916733,-0.066503770649433,0.068090498447418,-0.011299841105938,-0.046282403171062,-0.016213823109865,-0.061809085309505,-0.021068761125207,-0.043544013053179,-0.003265357110649,-0.023428736254573,-0.015361282043159,0.029239775612950));
res += mul(Get(s3,dx,-dy), float4x4(-0.000866950605996,-0.157835051417351,0.056846261024475,-0.046923279762268,-0.085884235799313,0.010061427019536,-0.046559061855078,-0.067488498985767,0.088678449392319,0.023434663191438,-0.037774011492729,0.009017411619425,-0.082766026258469,-0.117275170981884,-0.065174780786037,-0.107078924775124));
res += mul(Get(s3,dx,0), float4x4(-0.030322788283229,-0.281472235918045,0.031565167009830,0.073879875242710,0.082331471145153,0.062942758202553,-0.055000200867653,-0.009338350966573,0.117021344602108,0.069320522248745,0.020637610927224,0.105781078338623,0.003209383692592,-0.077410288155079,0.049030955880880,-0.064861677587032));
res += mul(Get(s3,dx,dy), float4x4(0.021556107327342,0.054432258009911,-0.023955261334777,-0.014834638684988,0.053625937551260,0.052956122905016,-0.042165022343397,0.009074359200895,-0.052640683948994,-0.003470998024568,-0.025573454797268,-0.034624204039574,-0.152882173657417,-0.068635061383247,-0.077409811317921,0.003091273829341));
return max(float4(0,0,0,0), res);
}
