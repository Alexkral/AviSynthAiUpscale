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
res += mul(Get(s0,-dx,-dy), float4x4(-0.181888252496719,0.161639913916588,-0.124961309134960,0.078015029430389,0.273526489734650,-0.053548533469439,-0.030366012826562,-0.150720462203026,0.138752862811089,-0.089322440326214,-0.170561805367470,-0.183317005634308,-0.148288905620575,0.145172387361526,0.043894100934267,-0.131205156445503));
res += mul(Get(s0,-dx,0), float4x4(-0.076803371310234,-0.208539858460426,0.196078583598137,0.053841564804316,-0.077059507369995,0.133202806115150,-0.199897810816765,-0.098588407039642,0.113942600786686,-0.038290843367577,-0.034126099199057,-0.196159645915031,0.034587297588587,0.342779070138931,-0.121122032403946,0.056844260543585));
res += mul(Get(s0,-dx,dy), float4x4(-0.062213379889727,-0.046615932136774,0.134715080261230,0.086526498198509,-0.164830848574638,0.142653539776802,0.184328809380531,-0.179973825812340,-0.160092234611511,-0.076656386256218,-0.119292579591274,0.101560324430466,0.039255835115910,0.338975727558136,-0.011182303540409,-0.012961326166987));
res += mul(Get(s0,0,-dy), float4x4(-0.050556063652039,0.063824899494648,-0.073307566344738,-0.122921101748943,0.091397546231747,0.032146036624908,-0.010078457184136,0.036727704107761,-0.125998541712761,-0.007324313279241,-0.117946550250053,-0.061104401946068,-0.138370126485825,-0.055849369615316,0.022719357162714,-0.051052115857601));
res += mul(Get(s0,0,0), float4x4(-0.063417352735996,0.004323316272348,0.098902873694897,-0.160232096910477,0.024612246081233,0.169798299670219,-0.017361553385854,0.170700490474701,-0.181373551487923,-0.045310325920582,0.078488133847713,0.039223983883858,-0.018392167985439,0.038527917116880,-0.184390425682068,0.032075576484203));
res += mul(Get(s0,0,dy), float4x4(-0.066720277070999,-0.113683938980103,0.155372887849808,-0.084952779114246,-0.001463005319238,0.109404571354389,0.229093536734581,0.116645514965057,-0.321421325206757,-0.025001278147101,-0.025104159489274,0.223512098193169,-0.147700473666191,-0.034898888319731,-0.025587197393179,0.213148146867752));
res += mul(Get(s0,dx,-dy), float4x4(0.015279700048268,-0.248412549495697,0.008329535834491,0.090707056224346,-0.054935596883297,-0.092787921428680,-0.167155921459198,-0.051918905228376,-0.005023925099522,-0.202096790075302,-0.135518655180931,-0.119008131325245,-0.154726892709732,-0.198372170329094,0.407752782106400,-0.046479579061270));
res += mul(Get(s0,dx,0), float4x4(0.086364760994911,-0.246376782655716,0.058464813977480,0.248342603445053,0.015731524676085,0.101027190685272,-0.033503659069538,0.122289031744003,-0.146884918212891,-0.226934343576431,0.164557322859764,-0.121137119829655,0.169921547174454,-0.021851409226656,-0.093046918511391,0.008531351573765));
res += mul(Get(s0,dx,dy), float4x4(-0.074645169079304,-0.162732720375061,0.078864641487598,0.178726136684418,0.009857231751084,0.000815752311610,0.068080142140388,0.051377099007368,-0.230018556118011,-0.144855678081512,-0.149047732353210,-0.016410320997238,-0.105541907250881,0.226544588804245,-0.155922621488571,-0.068734690546989));
res += mul(Get(s1,-dx,-dy), float4x4(0.084147974848747,0.090235814452171,-0.186528593301773,-0.123101592063904,-0.048369996249676,0.128658741712570,-0.072880268096924,-0.158157274127007,-0.041111763566732,0.004815545398742,-0.178448706865311,0.046409454196692,-0.236614421010017,-0.137893870472908,-0.255164682865143,-0.219498351216316));
res += mul(Get(s1,-dx,0), float4x4(-0.122762635350227,0.000517457607202,-0.154342442750931,-0.000521034176927,-0.068539567291737,0.165402188897133,0.148883014917374,0.156604260206223,-0.045809939503670,0.196953877806664,-0.090096518397331,0.012392587028444,-0.120577894151211,-0.153187125921249,-0.090174198150635,-0.123290523886681));
res += mul(Get(s1,-dx,dy), float4x4(0.220449805259705,-0.029459493234754,-0.151783674955368,-0.148793950676918,0.065567165613174,0.074705809354782,-0.040406923741102,0.006228037178516,-0.071859031915665,0.096668705344200,-0.172882825136185,0.077773019671440,-0.300121515989304,-0.067681550979614,-0.146102219820023,-0.150950893759727));
res += mul(Get(s1,0,-dy), float4x4(0.072276450693607,-0.033288042992353,-0.202273637056351,0.024328086525202,-0.103182449936867,-0.065038532018661,-0.199304521083832,-0.123309440910816,-0.125664159655571,-0.027053130790591,-0.326031088829041,-0.161821976304054,0.019570274278522,-0.002470728941262,-0.062304344028234,-0.260330855846405));
res += mul(Get(s1,0,0), float4x4(-0.053506802767515,-0.016653988510370,-0.073183760046959,0.066115073859692,0.160873562097549,-0.007452367339283,-0.098537676036358,-0.024458413943648,-0.129809752106667,0.025980183854699,-0.110462367534637,-0.028839934617281,0.173447728157043,0.008781461976469,-0.111971862614155,-0.133016660809517));
res += mul(Get(s1,0,dy), float4x4(0.064061440527439,0.059101581573486,-0.025163194164634,-0.016370166093111,0.106749370694160,-0.197997316718102,-0.227589502930641,-0.052346643060446,-0.039909385144711,0.120864100754261,-0.076164223253727,0.042893070727587,-0.170079544186592,0.229917228221893,-0.178071200847626,-0.075224429368973));
res += mul(Get(s1,dx,-dy), float4x4(0.001603389740922,-0.266365230083466,-0.242100864648819,-0.104237444698811,0.125600829720497,-0.080325484275818,-0.244381010532379,-0.072696536779404,-0.023474574089050,-0.202798858284950,-0.203797489404678,-0.069965459406376,-0.043296042829752,-0.237460300326347,0.118262819945812,-0.159662663936615));
res += mul(Get(s1,dx,0), float4x4(-0.042135622352362,-0.064435258507729,0.044864766299725,-0.087712317705154,0.149026185274124,-0.051857508718967,-0.070099808275700,0.017425268888474,0.086677826941013,-0.134643241763115,-0.036839116364717,-0.036070313304663,0.201022103428841,0.195210739970207,-0.102199576795101,-0.033619485795498));
res += mul(Get(s1,dx,dy), float4x4(0.135575249791145,0.024596547707915,-0.126559764146805,-0.109156891703606,0.021066395565867,-0.186833456158638,-0.235365822911263,-0.113862514495850,-0.071729362010956,0.336639076471329,0.006124518346041,-0.036354191601276,-0.062298242002726,0.194816783070564,-0.110681220889091,-0.161714255809784));
res += mul(Get(s2,-dx,-dy), float4x4(-0.045609816908836,0.021627033129334,0.044232450425625,-0.244295477867126,0.023491362109780,-0.160236895084381,0.144974902272224,-0.158179953694344,0.151998370885849,0.041639212518930,0.039206873625517,-0.028513986617327,0.033516865223646,-0.052439086139202,0.159565910696983,-0.102741032838821));
res += mul(Get(s2,-dx,0), float4x4(-0.006442482117563,0.120550699532032,-0.176496207714081,-0.179333627223969,0.194681629538536,-0.176294550299644,-0.027248755097389,0.077321544289589,0.043052446097136,0.093533992767334,-0.069430649280548,0.056795131415129,-0.166381940245628,0.060239784419537,0.117824025452137,0.132091790437698));
res += mul(Get(s2,-dx,dy), float4x4(-0.030563624575734,-0.029934544116259,-0.219357207417488,-0.140597090125084,-0.026204580441117,0.097930125892162,0.130243405699730,-0.113289438188076,-0.014464373700321,-0.048443511128426,-0.336283266544342,-0.172370538115501,-0.204626858234406,0.290665775537491,0.117945477366447,0.160082802176476));
res += mul(Get(s2,0,-dy), float4x4(0.071568675339222,-0.000704043894075,0.057063844054937,-0.031624533236027,-0.217379942536354,-0.115448430180550,0.004192586056888,-0.378361165523529,-0.055880010128021,-0.086661316454411,0.116766177117825,0.289519637823105,0.018509207293391,0.092384263873100,0.092484854161739,0.218744665384293));
res += mul(Get(s2,0,0), float4x4(0.086570419371128,0.267387002706528,-0.039756808429956,-0.005875253584236,0.063863597810268,-0.119082823395729,0.184504583477974,0.275998294353485,0.028514938428998,0.123859524726868,-0.024953588843346,-0.059927225112915,-0.052672166377306,0.016229145228863,-0.001731048105285,0.332398146390915));
res += mul(Get(s2,0,dy), float4x4(0.104887388646603,0.184526875615120,-0.107998237013817,0.044219881296158,0.110320903360844,0.216666832566261,0.074886463582516,-0.260912984609604,-0.041760928928852,-0.049555990844965,-0.131981253623962,-0.104069314897060,-0.149890542030334,-0.004430397879332,-0.067699752748013,0.184007257223129));
res += mul(Get(s2,dx,-dy), float4x4(0.048945862799883,-0.038441535085440,0.248589769005775,-0.097175419330597,-0.112552784383297,-0.126583561301231,-0.124879449605942,-0.120901018381119,0.226595282554626,0.105875834822655,0.040472425520420,-0.017834920436144,-0.013729983009398,0.083303615450859,-0.046827681362629,-0.127248615026474));
res += mul(Get(s2,dx,0), float4x4(-0.031569153070450,-0.038506492972374,0.182202547788620,-0.100042119622231,-0.225141540169716,-0.195387139916420,0.015802280977368,0.192135572433472,0.359301507472992,0.144133150577545,0.101789563894272,0.015868606045842,-0.111156120896339,0.006927537266165,0.163424387574196,-0.077514745295048));
res += mul(Get(s2,dx,dy), float4x4(-0.001615439890884,-0.049567628651857,0.013783916831017,-0.090793602168560,-0.079338252544403,-0.045941945165396,-0.066384263336658,0.085441082715988,-0.084367252886295,0.125832498073578,-0.140561804175377,-0.019394690170884,-0.092328391969204,-0.142641812562943,0.179434821009636,-0.077741675078869));
res += mul(Get(s3,-dx,-dy), float4x4(0.254862040281296,-0.003336997702718,0.149066746234894,0.099364332854748,0.010648711584508,-0.052642859518528,0.038696415722370,-0.029971791431308,0.044824134558439,-0.030926387757063,-0.062370784580708,-0.145385935902596,-0.111797414720058,0.063924998044968,-0.005017865914851,-0.059786308556795));
res += mul(Get(s3,-dx,0), float4x4(-0.026712575927377,-0.084602341055870,-0.091484807431698,-0.067667722702026,-0.153167366981506,-0.029224205762148,0.027049381285906,-0.004654172342271,-0.088982433080673,0.146555528044701,-0.097656860947609,-0.081142708659172,0.019561903551221,0.106259800493717,-0.097332827746868,0.026483317837119));
res += mul(Get(s3,-dx,dy), float4x4(-0.036402069032192,-0.039330132305622,0.026010891422629,0.112200014293194,-0.245339468121529,-0.238237246870995,0.064246915280819,0.055563021451235,0.125241488218307,0.113111801445484,-0.042265988886356,-0.132179170846939,0.428779840469360,0.150826901197433,-0.249187573790550,0.066544555127621));
res += mul(Get(s3,0,-dy), float4x4(0.098538935184479,0.068254128098488,0.224981561303139,0.048303239047527,0.080024518072605,-0.004549228586257,-0.023875897750258,0.051299519836903,0.062995545566082,-0.145676165819168,-0.058550771325827,-0.070692785084248,-0.192207157611847,0.066369466483593,-0.029852597042918,-0.071677669882774));
res += mul(Get(s3,0,0), float4x4(-0.086115159094334,-0.081181012094021,0.077328480780125,0.054069705307484,-0.077260471880436,-0.034234337508678,-0.054431252181530,0.099350273609161,0.011871301569045,0.095958344638348,-0.047820411622524,-0.030104804784060,-0.140542492270470,-0.041042830795050,-0.032712917774916,-0.012534250505269));
res += mul(Get(s3,0,dy), float4x4(-0.022897729650140,0.092975378036499,0.003218982601538,0.331778824329376,-0.027176231145859,-0.251273393630981,0.282566457986832,0.218342348933220,-0.089867092669010,0.088601224124432,-0.145271822810173,-0.035080425441265,0.272994041442871,0.011565872468054,-0.055374674499035,-0.070856139063835));
res += mul(Get(s3,dx,-dy), float4x4(0.068097874522209,0.096030622720718,-0.174570113420486,0.088777385652065,-0.031268477439880,-0.052556082606316,0.093984350562096,-0.070796310901642,0.131127282977104,-0.327688187360764,-0.240196764469147,0.017033359035850,-0.195127114653587,-0.222583264112473,0.007214519660920,-0.113616041839123));
res += mul(Get(s3,dx,0), float4x4(-0.114018447697163,-0.015169251710176,-0.296331703662872,-0.009891178458929,-0.161033198237419,0.025007145479321,-0.001578420633450,-0.006100965663791,0.040654104202986,0.155155867338181,-0.087933227419853,-0.134352773427963,-0.020534701645374,-0.244438022375107,-0.002517525805160,-0.061085164546967));
res += mul(Get(s3,dx,dy), float4x4(-0.251007646322250,-0.029281714931130,-0.085872702300549,0.238098323345184,-0.167846277356148,-0.136352092027664,0.048912052065134,0.002126221079379,0.118473760783672,-0.037741836160421,-0.183683082461357,-0.186905771493912,-0.117781803011894,-0.037874657660723,-0.009895232506096,-0.187213107943535));
return max(float4(0,0,0,0), res);
}
