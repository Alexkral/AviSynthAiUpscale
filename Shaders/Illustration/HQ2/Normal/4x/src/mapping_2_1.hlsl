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
res += mul(Get(s0,-dx,-dy), float4x4(0.069487549364567,-0.018524888902903,0.095610767602921,-0.032497648149729,-0.059513952583075,-0.003700029337779,0.061648830771446,0.044717375189066,0.083061628043652,-0.025285599753261,-0.010467512533069,0.051643807440996,0.026898922398686,-0.052827991545200,-0.056132081896067,0.026181548833847));
res += mul(Get(s0,-dx,0), float4x4(-0.144553229212761,-0.104570612311363,-0.023096686229110,0.119462952017784,-0.085313841700554,0.002540761372074,0.095310077071190,-0.017813423648477,0.091324470937252,-0.103648833930492,0.080173850059509,0.055160012096167,-0.015013879165053,-0.114529892802238,-0.162958934903145,0.025670373812318));
res += mul(Get(s0,-dx,dy), float4x4(-0.030860332772136,-0.017950959503651,-0.011497783474624,0.101348809897900,-0.026634940877557,0.033792834728956,-0.028590586036444,0.006666705943644,-0.005666029173881,-0.004676488693804,0.125054463744164,-0.042631972581148,0.047094821929932,0.059210531413555,-0.106607496738434,-0.075347065925598));
res += mul(Get(s0,0,-dy), float4x4(0.001670543802902,0.006755100097507,0.130263000726700,-0.041728857904673,0.064013592898846,0.026408351957798,0.069711759686470,-0.026848159730434,-0.031367469578981,-0.100990906357765,-0.004082160536200,0.013447253033519,-0.036681000143290,-0.032638289034367,-0.021908720955253,-0.058957703411579));
res += mul(Get(s0,0,0), float4x4(0.069419927895069,-0.026129238307476,0.003889417508617,0.001844352227636,0.005431765224785,-0.031281065195799,0.021913085132837,-0.017304040491581,-0.068256847560406,0.020947700366378,-0.024429740384221,0.061515368521214,0.093391761183739,0.162989467382431,-0.073249846696854,0.028743902221322));
res += mul(Get(s0,0,dy), float4x4(0.113635614514351,0.025334108620882,-0.089338034391403,-0.103827282786369,0.082350976765156,0.011431453749537,-0.056347537785769,-0.015749482437968,-0.022196123376489,-0.018861057236791,0.043921139091253,-0.012993613258004,0.199393391609192,-0.145816475152969,-0.007297922391444,-0.136193975806236));
res += mul(Get(s0,dx,-dy), float4x4(-0.106048740446568,0.026606677100062,0.058992974460125,-0.097032636404037,0.050036415457726,-0.084120489656925,-0.014761731028557,0.034291457384825,-0.041128940880299,-0.062342546880245,0.058047126978636,0.028599917888641,0.093748964369297,-0.031167529523373,-0.017387041822076,-0.154860764741898));
res += mul(Get(s0,dx,0), float4x4(0.104726746678352,0.119880966842175,0.079565376043320,-0.051944132894278,0.028117217123508,-0.070855498313904,-0.058744475245476,-0.002113268477842,-0.156838536262512,0.031183162704110,0.035262126475573,0.126649051904678,0.055681210011244,-0.044074852019548,-0.029742402955890,-0.158646553754807));
res += mul(Get(s0,dx,dy), float4x4(-0.035230278968811,-0.015699891373515,-0.026332831010222,-0.114684797823429,0.016674906015396,0.029216734692454,-0.045241020619869,0.024707522243261,-0.017494641244411,0.069179728627205,-0.006495701149106,0.085781142115593,-0.069672942161560,0.095251992344856,-0.068887174129486,-0.146966040134430));
res += mul(Get(s1,-dx,-dy), float4x4(-0.060829795897007,0.197062447667122,0.189933016896248,0.049509610980749,-0.075703941285610,0.140368536114693,0.247505128383636,-0.031162029132247,0.022336982190609,-0.027979625388980,-0.016812145709991,-0.045930813997984,0.005030865315348,0.011476336978376,-0.025218989700079,-0.003281375626102));
res += mul(Get(s1,-dx,0), float4x4(-0.031383838504553,0.075334712862968,0.008887508884072,0.197023555636406,0.065344423055649,-0.098488792777061,0.102041527628899,0.178894221782684,0.034424446523190,-0.016068162396550,-0.030275076627731,0.007735029794276,-0.052308943122625,-0.006215178407729,-0.037709809839725,0.009844247251749));
res += mul(Get(s1,-dx,dy), float4x4(0.012751406989992,0.036078393459320,0.102136075496674,0.060763429850340,0.067363373935223,-0.112372368574142,-0.062166571617126,0.073437087237835,-0.115917898714542,0.046576362103224,-0.043514128774405,-0.058694425970316,-0.015710450708866,0.019749008119106,0.043840009719133,0.026219198480248));
res += mul(Get(s1,0,-dy), float4x4(-0.227913320064545,-0.002453239867464,-0.043448004871607,0.011145216412842,-0.046337611973286,0.146817147731781,-0.084451198577881,-0.111881248652935,0.052980925887823,-0.081250526010990,-0.056715283542871,0.042908787727356,-0.004420419223607,-0.063001707196236,0.033908307552338,0.017295649275184));
res += mul(Get(s1,0,0), float4x4(-0.074039958417416,-0.157027319073677,-0.095703050494194,-0.075744345784187,-0.214187473058701,-0.040498387068510,-0.116801440715790,0.071405589580536,0.115200884640217,0.064736068248749,-0.089231409132481,0.051538135856390,0.007977720350027,-0.060748904943466,0.070856355130672,-0.004479493945837));
res += mul(Get(s1,0,dy), float4x4(0.050191093236208,-0.074180461466312,-0.072061859071255,-0.029506556689739,0.057295300066471,-0.034810770303011,-0.042690686881542,-0.108046188950539,0.085657842457294,0.080167710781097,-0.111990414559841,-0.070001341402531,0.039364304393530,-0.009192026220262,0.027265269309282,-0.014239331707358));
res += mul(Get(s1,dx,-dy), float4x4(-0.088394701480865,-0.077060282230377,-0.049934409558773,-0.074609823524952,0.129653915762901,0.000815774255898,-0.091594070196152,-0.084273017942905,-0.032747630029917,-0.060747031122446,0.072113260626793,-0.036539763212204,-0.055527087301016,0.026728594675660,-0.008039009757340,0.009384890086949));
res += mul(Get(s1,dx,0), float4x4(0.148708447813988,-0.070545673370361,0.023946071043611,-0.151177570223808,0.035532113164663,0.092314526438713,0.009547661058605,-0.046267714351416,-0.072895705699921,-0.047936450690031,0.048405501991510,0.159401088953018,0.042229320853949,-0.002094571013004,0.015412203967571,-0.018221132457256));
res += mul(Get(s1,dx,dy), float4x4(0.102559804916382,-0.082332365214825,0.062155276536942,-0.095450460910797,0.013408572413027,0.067329972982407,-0.015029855072498,-0.037363536655903,-0.024287125095725,0.021770620718598,-0.027874922379851,-0.006300038658082,-0.029534878209233,-0.073228962719440,0.025034928694367,0.017423283308744));
res += mul(Get(s2,-dx,-dy), float4x4(0.092409454286098,-0.022956058382988,-0.065625190734863,-0.046571057289839,-0.089572988450527,0.112204737961292,0.101701989769936,-0.043222427368164,-0.086921080946922,-0.163557440042496,-0.090579926967621,-0.114955112338066,0.084858790040016,0.054964363574982,0.026522446423769,-0.093480214476585));
res += mul(Get(s2,-dx,0), float4x4(-0.035273406654596,-0.018020505085588,-0.036007955670357,-0.124304540455341,0.023188548162580,0.113226711750031,0.032629381865263,0.059198342263699,-0.068565286695957,-0.103145860135555,-0.000305556430249,-0.022901052609086,0.079927526414394,-0.020412793383002,-0.037016902118921,-0.118005715310574));
res += mul(Get(s2,-dx,dy), float4x4(-0.070070549845695,-0.070147350430489,-0.077480912208557,-0.058814421296120,0.031503286212683,-0.003526798915118,-0.017861355096102,0.118221715092659,0.069995328783989,-0.026461694389582,-0.058534778654575,0.059765543788671,0.096538156270981,-0.111590020358562,0.024276666343212,0.012775634415448));
res += mul(Get(s2,0,-dy), float4x4(-0.001438300008886,-0.030283054336905,0.008521659299731,0.023556677624583,-0.045345246791840,-0.184331759810448,-0.090169273316860,0.067740239202976,0.023216852918267,-0.066030897200108,0.005860818084329,0.027349142357707,-0.008870881050825,-0.003913954831660,0.108265422284603,-0.044190119951963));
res += mul(Get(s2,0,0), float4x4(0.000430861458881,0.039560034871101,0.109054915606976,-0.022941630333662,-0.012467002496123,-0.112767137587070,0.000553679361474,0.018633473664522,0.003500245045871,0.057267449796200,0.028619933873415,0.010759568773210,-0.067660987377167,0.167584165930748,0.144810989499092,-0.091949850320816));
res += mul(Get(s2,0,dy), float4x4(0.032049518078566,0.038058370351791,0.069144874811172,0.050181966274977,-0.057834036648273,0.198208302259445,-0.050045076757669,-0.048349425196648,-0.065027371048927,0.091417238116264,0.027674231678247,0.042975448071957,-0.045666690915823,0.042474795132875,0.130120113492012,0.176449343562126));
res += mul(Get(s2,dx,-dy), float4x4(-0.035974137485027,0.032289039343596,-0.005971522536129,-0.020869540050626,-0.030071651563048,-0.051603134721518,0.033188644796610,0.017442544922233,-0.010673478245735,0.001902200514451,0.063327945768833,0.075882941484451,-0.088392741978168,-0.111130177974701,0.041734647005796,0.046008318662643));
res += mul(Get(s2,dx,0), float4x4(0.002284694928676,-0.008679173886776,0.055687144398689,-0.004922504536808,0.113504961133003,-0.031367067247629,-0.010012602433562,-0.041994087398052,0.008595912717283,-0.004981239326298,0.010477132163942,0.024005571380258,-0.023480670526624,0.072282321751118,-0.029040224850178,0.047127041965723));
res += mul(Get(s2,dx,dy), float4x4(-0.049011442810297,-0.120979331433773,0.017256675288081,-0.038459055125713,0.136704117059708,0.050175588577986,0.067677587270737,-0.061934269964695,-0.015769079327583,0.015714086592197,-0.003295565024018,-0.030560392886400,-0.114329949021339,0.074801504611969,-0.108346261084080,0.075890384614468));
res += mul(Get(s3,-dx,-dy), float4x4(0.016221407800913,0.022229136899114,-0.067552454769611,0.004699309356511,-0.018316488713026,-0.035754237323999,-0.190939962863922,0.056878030300140,-0.087318256497383,0.167733386158943,-0.047637522220612,-0.008292861282825,-0.015664188191295,0.012009446509182,-0.024225046858191,0.043489024043083));
res += mul(Get(s3,-dx,0), float4x4(0.055668130517006,-0.008759571239352,-0.049506764858961,-0.053022682666779,-0.034238915890455,-0.093374311923981,-0.016287805512547,0.091259039938450,-0.010910488665104,0.007903791032732,-0.054511982947588,-0.043719887733459,0.025285832583904,-0.039899781346321,-0.013898054137826,-0.028202263638377));
res += mul(Get(s3,-dx,dy), float4x4(0.106542699038982,-0.065708890557289,-0.076511085033417,-0.062207836657763,-0.016921231523156,0.078773207962513,0.048265680670738,0.028924588114023,0.014750832691789,-0.085730120539665,0.057916015386581,0.007077537011355,0.152273729443550,-0.000512970960699,0.043457973748446,0.051715575158596));
res += mul(Get(s3,0,-dy), float4x4(-0.112224221229553,0.160202369093895,0.021527212113142,-0.074297942221165,-0.074593327939510,0.159728378057480,-0.053404610604048,0.005482784006745,-0.077890127897263,0.255135506391525,-0.030100423842669,0.012518649920821,0.028040975332260,0.067311495542526,0.113791480660439,-0.041742306202650));
res += mul(Get(s3,0,0), float4x4(0.019921777769923,0.079232469201088,0.067621685564518,0.046600464731455,0.198995351791382,0.137518554925919,-0.007596480660141,0.036481913179159,-0.004207566380501,0.047746617347002,0.013652237132192,-0.042731229215860,0.073416404426098,-0.031258702278137,0.089998953044415,-0.076292164623737));
res += mul(Get(s3,0,dy), float4x4(0.055900048464537,-0.124062232673168,0.057720534503460,-0.032861828804016,0.026678686961532,-0.172760397195816,0.093504339456558,-0.001861223950982,-0.018579440191388,-0.038917575031519,0.042103338986635,-0.020489439368248,0.039104290306568,0.016030792146921,0.061882141977549,-0.124270819127560));
res += mul(Get(s3,dx,-dy), float4x4(-0.000763987307437,0.072324350476265,0.047725740820169,-0.069992788136005,-0.001396274659783,0.075291581451893,0.030731592327356,-0.057057686150074,-0.079892933368683,0.072437085211277,0.015586559660733,0.036057922989130,-0.045232884585857,0.064719393849373,-0.035910561680794,-0.038406390696764));
res += mul(Get(s3,dx,0), float4x4(-0.065109670162201,0.022671183571219,0.023083871230483,0.116243720054626,-0.076310344040394,0.064568020403385,-0.039470840245485,0.074081242084503,-0.078817337751389,-0.012384749017656,0.031459201127291,-0.086714692413807,-0.044442452490330,0.009403261356056,-0.029935035854578,0.070857331156731));
res += mul(Get(s3,dx,dy), float4x4(0.015383717603981,-0.039573486894369,-0.038872405886650,0.021492721512914,0.028795327991247,-0.177841573953629,0.059966202825308,-0.104628369212151,-0.036499612033367,-0.017828008159995,0.078013345599174,0.005393806379288,-0.124127723276615,0.029678540304303,-0.071862131357193,0.071828335523605));
return max(float4(0,0,0,0), res);
}