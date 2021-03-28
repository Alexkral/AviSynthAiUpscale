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
float4 res = float4(-0.053378995507956,0.006597736850381,-0.031430736184120,-0.134054228663445);
res += mul(Get(s0,-dx,-dy), float4x4(-0.121972016990185,-0.123969294130802,0.222935587167740,0.060969650745392,0.028016487136483,-0.005664783995599,-0.006333989556879,0.117589786648750,0.162933513522148,-0.056725498288870,0.043020766228437,-0.072194501757622,-0.126912295818329,0.098622202873230,0.009387276135385,-0.029312765225768));
res += mul(Get(s0,-dx,0), float4x4(0.156496465206146,0.077847272157669,0.297478646039963,0.188003405928612,-0.149948686361313,-0.238584920763969,0.145742684602737,0.029964737594128,-0.017367199063301,-0.155583977699280,-0.017260221764445,-0.074722521007061,-0.068771734833717,-0.003237626980990,-0.106706611812115,-0.062910288572311));
res += mul(Get(s0,-dx,dy), float4x4(-0.010146748274565,-0.131145119667053,-0.076261915266514,-0.054107621312141,0.055986337363720,0.135766819119453,-0.155306652188301,-0.062052879482508,0.195377886295319,0.042084537446499,-0.067959703505039,0.038562316447496,0.046850796788931,0.094256035983562,-0.086905233561993,0.063302636146545));
res += mul(Get(s0,0,-dy), float4x4(-0.039641015231609,-0.089070565998554,0.154445871710777,0.213988468050957,0.155834004282951,0.060432326048613,-0.150553122162819,0.141771718859673,0.045678261667490,-0.004404660314322,0.065881013870239,0.092637524008751,-0.382973551750183,-0.067932203412056,-0.188076466321945,0.012479166500270));
res += mul(Get(s0,0,0), float4x4(0.412686020135880,0.231334000825882,-0.073864698410034,0.165055945515633,-0.067866973578930,0.050827424973249,0.159979894757271,-0.081097610294819,0.015309968963265,0.244461193680763,0.127386853098869,-0.023933328688145,-0.285916864871979,-0.055027727037668,0.062777690589428,-0.110141329467297));
res += mul(Get(s0,0,dy), float4x4(-0.232754945755005,0.100415565073490,0.069961972534657,-0.179531991481781,-0.067896954715252,-0.209263056516647,0.017525486648083,-0.099749609827995,0.165708765387535,-0.077293172478676,-0.136818900704384,0.062287624925375,0.060270104557276,-0.082264520227909,-0.340968251228333,-0.099636971950531));
res += mul(Get(s0,dx,-dy), float4x4(0.044907920062542,0.059948857873678,-0.102732688188553,-0.098746128380299,-0.024190071970224,0.116477824747562,0.145668536424637,0.062886185944080,0.130316227674484,0.003555914619938,0.051827087998390,0.038804993033409,-0.202561378479004,0.077202543616295,-0.065768271684647,-0.014970539137721));
res += mul(Get(s0,dx,0), float4x4(0.077881403267384,-0.061507884413004,0.082427941262722,-0.019777154549956,-0.035990722477436,0.010356768965721,-0.083526864647865,-0.097627319395542,0.110725745558739,-0.055293362587690,0.010646686889231,0.005591712892056,-0.063919819891453,-0.199013367295265,0.009111589752138,0.037505958229303));
res += mul(Get(s0,dx,dy), float4x4(-0.098207548260689,-0.075940713286400,0.165855109691620,-0.041512746363878,0.133479893207550,-0.032134890556335,-0.100053027272224,0.004833061713725,0.100219465792179,0.023337988182902,-0.038844894617796,-0.011647738516331,0.011371823959053,-0.017461087554693,-0.044828630983829,0.013121900148690));
res += mul(Get(s1,-dx,-dy), float4x4(0.120249398052692,-0.133649647235870,0.069028355181217,-0.001379839028232,0.060945522040129,0.019794367253780,-0.003284594509751,-0.009377731010318,0.087223187088966,0.066931255161762,-0.132326394319534,-0.135356843471527,-0.051716420799494,0.002843958092853,0.022221891209483,-0.063471540808678));
res += mul(Get(s1,-dx,0), float4x4(0.185415565967560,-0.167556911706924,-0.011852465569973,-0.030715525150299,0.095304034650326,-0.038098983466625,0.021437117829919,0.059498772025108,-0.133682265877724,-0.050495531409979,0.106815822422504,0.127011880278587,-0.061156585812569,-0.122212044894695,-0.110629327595234,0.036199580878019));
res += mul(Get(s1,-dx,dy), float4x4(-0.111579500138760,-0.062516704201698,0.079083181917667,-0.042914375662804,0.016170740127563,-0.001554899499752,-0.042877592146397,-0.077188819646835,0.041573047637939,-0.037291646003723,0.087382562458515,0.044207163155079,0.106650948524475,0.015488944947720,0.012160862796009,0.025756638497114));
res += mul(Get(s1,0,-dy), float4x4(0.063902139663696,0.149937063455582,-0.259408861398697,-0.032527014613152,0.136290758848190,-0.003737416351214,0.220132499933243,-0.058202333748341,0.142028778791428,0.195353984832764,-0.258045941591263,-0.394557625055313,-0.134623482823372,-0.017547875642776,0.029853299260139,0.106420710682869));
res += mul(Get(s1,0,0), float4x4(-0.156528130173683,-0.236549094319344,0.326385200023651,-0.007682392839342,-0.569586098194122,0.180660471320152,-0.638096213340759,-0.210101470351219,0.085179604589939,-0.294061601161957,0.054333485662937,0.282161980867386,0.192792803049088,0.212664246559143,0.023418709635735,-0.125528380274773));
res += mul(Get(s1,0,dy), float4x4(-0.001012783963233,-0.142283514142036,0.074999406933784,0.079275064170361,0.130938202142715,-0.349913090467453,0.082736827433109,-0.026358621194959,-0.118667572736740,0.077380128204823,0.069431662559509,0.006102765910327,-0.042924076318741,-0.081669531762600,-0.037945892661810,0.009012874215841));
res += mul(Get(s1,dx,-dy), float4x4(-0.051740359514952,-0.046984262764454,0.037535078823566,-0.002924802480265,-0.024016754701734,-0.053522884845734,-0.010107919573784,-0.014669405296445,-0.008909374475479,0.101604685187340,-0.009907749481499,-0.004888889379799,0.051892094314098,0.045287229120731,-0.063390947878361,0.018153542652726));
res += mul(Get(s1,dx,0), float4x4(-0.085632398724556,-0.088654361665249,0.150337517261505,0.092331230640411,0.052144538611174,-0.059690866619349,0.014393196441233,-0.081646479666233,0.126981839537621,-0.047316391021013,0.071882195770741,0.088715523481369,0.013785460032523,-0.027665073052049,0.047250460833311,0.065117314457893));
res += mul(Get(s1,dx,dy), float4x4(0.136896565556526,-0.117072075605392,0.053103927522898,0.067081712186337,-0.023446954786777,0.016297768801451,0.041700195521116,-0.017506374046206,-0.033319391310215,-0.019414093345404,-0.034338872879744,-0.006301845889539,-0.104280844330788,-0.125409826636314,0.097414642572403,0.093273110687733));
res += mul(Get(s2,-dx,-dy), float4x4(-0.095742717385292,-0.029442638158798,0.016822451725602,-0.025781506672502,-0.046174664050341,-0.046627737581730,-0.002614318160340,-0.019237449392676,0.105912372469902,0.042377837002277,-0.131045609712601,0.147408246994019,0.053713355213404,0.039170421659946,-0.079036861658096,-0.104286216199398));
res += mul(Get(s2,-dx,0), float4x4(0.145855918526649,0.091430149972439,-0.190880909562111,-0.071039870381355,0.066846609115601,0.115509748458862,0.024419661611319,0.160508528351784,-0.176460802555084,0.001571691944264,0.131390348076820,0.068502344191074,0.060441780835390,-0.039128527045250,0.184059947729111,0.171875134110451));
res += mul(Get(s2,-dx,dy), float4x4(-0.315844208002090,-0.020229317247868,-0.057477187365294,0.006326660513878,-0.019785266369581,-0.097223863005638,0.068358428776264,-0.019603818655014,0.137572556734085,0.268995970487595,-0.008954940363765,0.285952508449554,-0.171091914176941,0.006950519979000,0.017881512641907,-0.007141669280827));
res += mul(Get(s2,0,-dy), float4x4(0.182785391807556,0.072375550866127,-0.133928909897804,-0.092034675180912,0.005768266506493,-0.072015769779682,0.020068380981684,0.049371875822544,0.110645301640034,0.203910633921623,-0.091369420289993,-0.069549180567265,0.204098343849182,0.056705486029387,-0.120249725878239,-0.247344210743904));
res += mul(Get(s2,0,0), float4x4(-0.422192633152008,-0.069301277399063,0.180588498711586,0.022092141211033,0.161894455552101,0.141350463032722,-0.328792423009872,-0.080579228699207,0.047847896814346,-0.074544101953506,0.290182262659073,-0.025067234411836,-0.008763493038714,-0.228121861815453,0.059016626328230,0.415480315685272));
res += mul(Get(s2,0,dy), float4x4(-0.121229581534863,0.026321934536099,0.014968256466091,-0.027256606146693,-0.116023488342762,-0.063995674252510,0.242238581180573,0.027261633425951,0.021501762792468,0.028533732518554,-0.114610306918621,0.108124621212482,-0.304790854454041,0.069386437535286,0.291323661804199,-0.020498204976320));
res += mul(Get(s2,dx,-dy), float4x4(0.065426245331764,0.065420456230640,-0.008487599901855,-0.065163187682629,0.117263115942478,0.097326941788197,-0.135051310062408,-0.254735410213470,0.013824048452079,-0.060872320085764,0.098757125437260,0.092161774635315,0.049186382442713,0.062818303704262,-0.123035967350006,-0.080504007637501));
res += mul(Get(s2,dx,0), float4x4(-0.053740706294775,-0.079191640019417,-0.007617198862135,-0.059312917292118,-0.280884236097336,-0.178320243954659,0.036748923361301,0.029911229386926,0.247502759099007,0.143201991915703,-0.087335824966431,0.181031599640846,-0.086120858788490,-0.159146711230278,-0.015306843444705,0.053395472466946));
res += mul(Get(s2,dx,dy), float4x4(0.028294758871198,-0.125568345189095,-0.075396209955215,-0.058171499520540,0.125062927603722,0.123343311250210,-0.011329103261232,0.067119799554348,-0.091402895748615,0.072752356529236,0.091011159121990,-0.021234998479486,-0.089610248804092,-0.044286120682955,0.142073482275009,0.015639403834939));
res += mul(Get(s3,-dx,-dy), float4x4(-0.087245434522629,0.067251123487949,-0.011037196032703,0.034406546503305,-0.017823005095124,0.144522845745087,0.153006523847580,0.068679772317410,-0.202029719948769,-0.125597909092903,0.025204500183463,0.059747267514467,-0.069466151297092,-0.121578119695187,-0.132808387279510,-0.116980537772179));
res += mul(Get(s3,-dx,0), float4x4(-0.181778028607368,-0.103528894484043,0.105358280241489,0.058405954390764,-0.048400286585093,0.122991338372231,-0.132399976253510,0.105143226683140,-0.036294154822826,0.142103925347328,-0.072026081383228,-0.071851342916489,-0.118519581854343,-0.064147070050240,-0.117041200399399,-0.144571974873543));
res += mul(Get(s3,-dx,dy), float4x4(0.157268241047859,0.068616174161434,0.034399695694447,0.002944100182503,0.007968355901539,-0.092752054333687,0.067937515676022,0.062952175736427,0.010194271802902,0.001525564235635,-0.015149807557464,0.049354806542397,0.143227815628052,-0.291331768035889,0.176931560039520,0.094979472458363));
res += mul(Get(s3,0,-dy), float4x4(-0.088768765330315,0.032783277332783,-0.117823041975498,-0.033629655838013,-0.000365651067114,0.101568549871445,0.131806150078773,-0.046196542680264,0.003153009107336,-0.095619097352028,-0.094740845263004,-0.005764818750322,-0.080896206200123,-0.083735607564449,-0.043175157159567,-0.098189793527126));
res += mul(Get(s3,0,0), float4x4(-0.365134716033936,0.094119101762772,0.104568518698215,0.088377498090267,-0.070976354181767,-0.047816064208746,-0.119362764060497,0.244706824421883,-0.250414073467255,0.089270256459713,0.043450802564621,-0.177930518984795,-0.303390651941299,-0.049250606447458,-0.345129221677780,-0.233044490218163));
res += mul(Get(s3,0,dy), float4x4(0.027741530910134,-0.339366912841797,-0.229772463440895,0.029004795476794,0.093719393014908,-0.165128409862518,0.063747733831406,0.035346936434507,0.129766419529915,-0.038915630429983,-0.098629713058472,0.089238181710243,0.201596587896347,-0.452535629272461,0.218031018972397,0.210925474762917));
res += mul(Get(s3,dx,-dy), float4x4(-0.078480690717697,0.132068186998367,-0.115436352789402,0.085749670863152,0.137664034962654,0.070897705852985,0.172590360045433,0.064711987972260,0.310021877288818,0.162822127342224,-0.194357961416245,-0.140353888273239,0.027965402230620,-0.018078142777085,0.061782483011484,-0.089557960629463));
res += mul(Get(s3,dx,0), float4x4(0.000006530490282,-0.053729526698589,0.073317348957062,0.025267511606216,-0.014493782073259,-0.024466069415212,-0.155092701315880,-0.087570592761040,-0.195184111595154,0.081511192023754,0.060175903141499,-0.167279615998268,-0.131619274616241,-0.059836663305759,-0.226315006613731,-0.165199965238571));
res += mul(Get(s3,dx,dy), float4x4(0.043541368097067,-0.210405096411705,-0.087425418198109,-0.186388820409775,-0.098265685141087,0.072454690933228,0.037831816822290,-0.106243014335632,-0.021600827574730,-0.090319417417049,-0.153868719935417,-0.015881121158600,0.190791547298431,-0.009980743750930,-0.019063290208578,0.227026298642159));
res += mul(Get(s4,-dx,-dy), float4x4(-0.115483254194260,-0.020425774157047,0.034327287226915,0.136724472045898,-0.055977486073971,-0.063581533730030,0.163256436586380,-0.151684090495110,-0.013256688602269,-0.011425942182541,0.055930912494659,0.092260077595711,-0.014564581215382,0.075851827859879,-0.142228588461876,-0.186224311590195));
res += mul(Get(s4,-dx,0), float4x4(-0.083146102726460,0.087652005255222,0.011700125411153,-0.396572411060333,0.020183239132166,0.064598836004734,0.051218956708908,0.252512782812119,0.096678845584393,0.073103085160255,-0.035689987242222,-0.033803213387728,0.128499269485474,0.032152853906155,-0.045405678451061,-0.087349839508533));
res += mul(Get(s4,-dx,dy), float4x4(-0.052394419908524,0.011701242066920,-0.052806824445724,0.036232996731997,-0.012351757846773,-0.006513399071991,-0.074511557817459,-0.198779270052910,-0.201436057686806,-0.035039197653532,0.054304361343384,-0.000685008475557,-0.174897491931915,-0.021395072340965,-0.149098783731461,-0.090190574526787));
res += mul(Get(s4,0,-dy), float4x4(-0.146794304251671,0.012652308680117,-0.079955913126469,0.129032164812088,-0.064033366739750,-0.025882057845592,0.164765819907188,-0.385267108678818,-0.034413155168295,0.026424750685692,-0.025600701570511,0.061769325286150,-0.052681330591440,0.020277304574847,0.044340971857309,-0.110036097466946));
res += mul(Get(s4,0,0), float4x4(0.011162994429469,0.132583186030388,-0.010934883728623,-0.250670701265335,0.149407953023911,-0.183325007557869,0.017650045454502,0.193026199936867,0.022296745330095,-0.092681542038918,-0.180355191230774,-0.370949417352676,0.316716611385345,0.308744817972183,-0.106179945170879,0.298696726560593));
res += mul(Get(s4,0,dy), float4x4(0.031553130596876,-0.354336053133011,0.067551597952843,0.126530274748802,0.006497174967080,0.203893169760704,-0.047289684414864,-0.234102219343185,-0.045765675604343,-0.238722950220108,-0.121770009398460,0.164216801524162,-0.194450139999390,0.131599843502045,0.134294211864471,-0.102942809462547));
res += mul(Get(s4,dx,-dy), float4x4(0.045542120933533,-0.035458587110043,-0.038593489676714,0.018698791041970,-0.090560592710972,-0.051585827022791,0.051310136914253,-0.083875574171543,-0.047710113227367,-0.052752409130335,0.030268101021647,-0.019896388053894,-0.250435680150986,-0.052081286907196,0.155402705073357,-0.042352918535471));
res += mul(Get(s4,dx,0), float4x4(0.124474659562111,-0.033370457589626,0.126281231641769,0.103172853589058,0.061049412935972,0.054382331669331,0.018871970474720,0.192354649305344,0.115295544266701,-0.043184496462345,-0.084317520260811,0.042607288807631,-0.002083505271003,0.114818595349789,-0.104950033128262,0.016111621633172));
res += mul(Get(s4,dx,dy), float4x4(-0.022654155269265,-0.005643961485475,0.068521894514561,0.041205950081348,0.017929244786501,0.116158783435822,0.084474809467793,-0.045804772526026,-0.049334660172462,0.131558701395988,0.012552279047668,0.005990622565150,-0.048832137137651,0.177260115742683,0.020008167251945,-0.059290599077940));
res += mul(Get(s5,-dx,-dy), float4x4(-0.167160704731941,-0.010348534211516,0.129013717174530,-0.127339184284210,-0.134433150291443,0.038903258740902,0.035265970975161,-0.193747356534004,0.058392368257046,-0.018514525145292,0.064738981425762,0.007554491050541,-0.000554385420401,-0.024009907618165,0.050495337694883,-0.066676430404186));
res += mul(Get(s5,-dx,0), float4x4(-0.115786887705326,0.103557027876377,-0.200399160385132,-0.220807909965515,0.007543846499175,-0.120884433388710,-0.192628011107445,0.003749985480681,-0.087072990834713,0.087247498333454,-0.067487649619579,-0.065151132643223,-0.145475238561630,0.065973497927189,-0.068767137825489,0.073266953229904));
res += mul(Get(s5,-dx,dy), float4x4(0.153068527579308,0.136183291673660,-0.048860557377338,0.044094648212194,-0.043945346027613,0.003041285090148,0.080259814858437,-0.016849843785167,0.005484326742589,-0.187519654631615,0.010676455684006,0.081441462039948,0.108157716691494,-0.078955791890621,0.058950297534466,0.079305253922939));
res += mul(Get(s5,0,-dy), float4x4(-0.256593912839890,-0.133651331067085,0.286798983812332,-0.033102300018072,0.009907696396112,-0.118132777512074,0.029913393780589,-0.131126433610916,0.117685280740261,0.103104822337627,0.094136767089367,0.038479328155518,-0.088755816221237,-0.018480464816093,0.051217146217823,0.002178708789870));
res += mul(Get(s5,0,0), float4x4(0.059105180203915,0.190083906054497,-0.331861734390259,-0.304538547992706,0.067196540534496,-0.013989721424878,0.001111942343414,0.088168919086456,-0.124187201261520,0.027143100276589,-0.175020501017570,-0.260033369064331,-0.095106132328510,0.037785843014717,-0.287637948989868,-0.037678815424442));
res += mul(Get(s5,0,dy), float4x4(0.156156882643700,-0.196916684508324,-0.213713094592094,0.046505961567163,-0.002160393865779,0.076349936425686,0.177893996238708,0.095032490789890,-0.029770756140351,-0.084720440208912,0.069720029830933,0.264692842960358,0.010212146677077,-0.121537052094936,0.106694832444191,0.013300509192050));
res += mul(Get(s5,dx,-dy), float4x4(0.013102434575558,0.103774949908257,-0.067818731069565,0.001764835207723,0.273352712392807,0.103261515498161,-0.098598942160606,-0.083963856101036,0.001543248072267,0.030959332361817,0.096545770764351,0.017903625965118,-0.139799892902374,-0.020560989156365,0.004445939790457,-0.120491161942482));
res += mul(Get(s5,dx,0), float4x4(-0.127730324864388,-0.047848541289568,0.058576840907335,0.145549789071083,-0.010964461602271,-0.090832158923149,0.355674147605896,0.170980006456375,0.145713761448860,-0.099335782229900,-0.213069558143616,0.148993790149689,0.122741073369980,-0.096972540020943,-0.113569915294647,0.059042889624834));
res += mul(Get(s5,dx,dy), float4x4(-0.016762144863605,0.011893517337739,-0.127730697393417,0.030574817210436,0.117503620684147,0.366514742374420,-0.034921169281006,0.127090990543365,-0.004284248221666,0.043046753853559,0.214676558971405,0.058071143925190,0.053173717111349,-0.005085123237222,-0.028216017410159,0.026588506996632));
res = max(float4(0, 0, 0, 0), res) + float4(0.049303445965052,-0.080320470035076,0.079706065356731,-0.004433663096279) * min(float4(0, 0, 0, 0), res);
return res;
}
