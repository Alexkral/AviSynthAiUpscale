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
float4 res = float4(-0.134692057967186,-0.203216716647148,-0.198118373751640,-0.147525474429131);
res += mul(Get(s0,-dx,-dy), float4x4(0.032598748803139,-0.231201663613319,0.118725411593914,-0.333190828561783,-0.089965648949146,0.084040857851505,-0.221298605203629,0.071212001144886,0.017235007137060,-0.095148362219334,-0.008468206040561,0.075948648154736,0.012817432172596,0.363960891962051,-0.045106612145901,0.286788046360016));
res += mul(Get(s0,-dx,0), float4x4(-0.168959990143776,0.053159113973379,-0.073686778545380,0.318080723285675,0.045392956584692,-0.148023232817650,0.150662794709206,-0.015665898099542,-0.071271806955338,-0.086799696087837,0.015395500697196,0.132146552205086,0.071542598307133,-0.194144055247307,0.116095393896103,-0.091661922633648));
res += mul(Get(s0,-dx,dy), float4x4(-0.004306782968342,0.034142989665270,-0.045712672173977,0.081383764743805,-0.012427718378603,-0.068811058998108,0.008246344514191,-0.054017629474401,0.018844498321414,-0.127498149871826,0.017565708607435,0.029974477365613,0.079877346754074,0.141883522272110,-0.027521956712008,-0.201223596930504));
res += mul(Get(s0,0,-dy), float4x4(-0.241366028785706,-0.140805795788765,-0.235318988561630,0.143852487206459,0.262771904468536,-0.136672139167786,0.305482029914856,-0.023907264694571,0.053641356527805,-0.066116206347942,0.205940574407578,-0.100211717188358,0.375115066766739,0.023208245635033,0.347727894783020,-0.044517055153847));
res += mul(Get(s0,0,0), float4x4(0.404520034790039,0.354757100343704,0.245350584387779,-0.273099571466446,0.051779683679342,0.076797828078270,0.103752456605434,0.168565735220909,-0.178655281662941,-0.056820884346962,-0.162752568721771,0.053423006087542,-0.217506751418114,-0.429535239934921,-0.351404875516891,0.240461140871048));
res += mul(Get(s0,0,dy), float4x4(0.023764716461301,-0.058831710368395,-0.330581545829773,0.226234227418900,0.049091774970293,-0.071107707917690,0.255023002624512,0.038196392357349,0.008374836295843,-0.037289444357157,0.055464267730713,-0.085574306547642,-0.122690096497536,0.112387061119080,0.095689885318279,-0.015748215839267));
res += mul(Get(s0,dx,-dy), float4x4(0.195358827710152,0.219799295067787,0.089886568486691,0.130793839693069,-0.088916383683681,0.042692180722952,0.000511647434905,-0.073957607150078,-0.134429186582565,-0.128521025180817,0.195826351642609,-0.044869832694530,-0.154698893427849,-0.070754095911980,0.032341979444027,-0.187349632382393));
res += mul(Get(s0,dx,0), float4x4(-0.006940764375031,-0.237281680107117,-0.109743386507034,0.039306532591581,-0.144268617033958,0.198447570204735,0.248175010085106,0.030549053102732,-0.213447630405426,0.000324022868881,0.270347505807877,-0.004408027045429,-0.012658650986850,0.194010838866234,0.190576910972595,-0.141251936554909));
res += mul(Get(s0,dx,dy), float4x4(-0.179267078638077,-0.084269925951958,0.123908460140228,-0.231968149542809,-0.089681513607502,-0.198747411370277,-0.002897780854255,0.083291739225388,0.009584954939783,-0.048178579658270,-0.043949913233519,0.024123022332788,-0.005451686680317,0.130156472325325,0.070039309561253,0.233318597078323));
res += mul(Get(s1,-dx,-dy), float4x4(-0.092776201665401,0.056423373520374,-0.198922216892242,0.106653027236462,0.026871131733060,0.056131053715944,0.138771370053291,0.044628269970417,0.158499717712402,0.008304863236845,-0.020978335291147,-0.011757467873394,0.036870323121548,-0.081659629940987,-0.138514474034309,-0.055575102567673));
res += mul(Get(s1,-dx,0), float4x4(0.176773861050606,-0.009741039015353,0.121106289327145,-0.090030692517757,-0.013103969395161,-0.065768629312515,0.072047136723995,-0.158452972769737,-0.072612963616848,0.002335503231734,-0.150505378842354,0.016699096187949,0.031049391254783,0.069597594439983,-0.066271424293518,-0.081863597035408));
res += mul(Get(s1,-dx,dy), float4x4(0.069468654692173,0.027907218784094,-0.061442479491234,-0.289467453956604,0.030538810417056,-0.089181631803513,0.041068978607655,0.018265210092068,-0.081495359539986,-0.057746250182390,0.015482021495700,0.045493867248297,-0.169861331582069,-0.113845743238926,-0.073219142854214,-0.080841079354286));
res += mul(Get(s1,0,-dy), float4x4(0.265575528144836,0.037878997623920,0.007735000923276,-0.049346629530191,0.043499302119017,0.223460584878922,-0.114124014973640,0.101268820464611,-0.214116200804710,-0.004156823735684,0.009719097986817,-0.010410637594759,0.045796245336533,-0.105690270662308,0.151011094450951,0.076450571417809));
res += mul(Get(s1,0,0), float4x4(-0.443740993738174,-0.151059135794640,-0.310293883085251,0.177408039569855,-0.205714747309685,-0.149552360177040,-0.051787886768579,0.109468832612038,0.046882223337889,0.098644480109215,0.171351447701454,-0.070973679423332,0.024488501250744,0.081205196678638,0.123794123530388,0.068826928734779));
res += mul(Get(s1,0,dy), float4x4(-0.036105602979660,0.315218240022659,0.317272365093231,-0.079585358500481,0.028295652940869,0.179056227207184,-0.002045327564701,-0.066241040825844,0.015146640129387,-0.146027684211731,-0.153709739446640,-0.019911734387279,-0.057312164455652,-0.220879420638084,-0.164899408817291,0.097615361213684));
res += mul(Get(s1,dx,-dy), float4x4(-0.019079959020019,0.294281631708145,-0.036437664180994,-0.020924448966980,-0.077627569437027,-0.077223271131516,0.103789523243904,-0.002970885951072,0.055647816509008,0.146888986229897,-0.033383458852768,0.016472693532705,-0.094864346086979,0.309943526983261,-0.050279766321182,0.009601731784642));
res += mul(Get(s1,dx,0), float4x4(-0.056040383875370,-0.126104056835175,0.122653357684612,0.009428148157895,0.186770871281624,-0.058065690100193,0.062723517417908,0.127697661519051,-0.194065302610397,-0.066068418323994,-0.182471513748169,-0.008398555219173,0.139002487063408,0.027661936357617,0.061300124973059,-0.016051288694143));
res += mul(Get(s1,dx,dy), float4x4(0.104684524238110,-0.231319367885590,-0.070372827351093,0.204036116600037,0.076307564973831,-0.002306819194928,-0.065890766680241,-0.115986451506615,0.011452103033662,-0.082676298916340,-0.052403878420591,-0.004074052441865,-0.004138599149883,-0.006631748750806,-0.066831447184086,-0.005169829353690));
res += mul(Get(s2,-dx,-dy), float4x4(0.233487740159035,-0.008284744806588,0.078277043998241,-0.046840328723192,0.058973334729671,0.025759030133486,-0.158539280295372,0.059930812567472,-0.024342168122530,0.039173703640699,0.132550150156021,-0.035671893507242,0.026054112240672,0.076960809528828,0.267156749963760,-0.026582565158606));
res += mul(Get(s2,-dx,0), float4x4(-0.104047372937202,-0.229798763990402,-0.138445630669594,-0.070408232510090,-0.014659925363958,-0.094978094100952,-0.137583777308464,-0.128913313150406,-0.088040970265865,-0.016321659088135,-0.149735704064369,0.008746224455535,0.092203818261623,0.032594162970781,-0.195010647177696,-0.137025311589241));
res += mul(Get(s2,-dx,dy), float4x4(-0.034944064915180,0.089410342276096,0.073089420795441,0.136126622557640,-0.206265091896057,0.137702897191048,-0.036359161138535,0.085947282612324,0.206084266304970,0.165005996823311,0.157312586903572,0.118051148951054,-0.130503892898560,-0.145321831107140,0.031048513948917,0.178232982754707));
res += mul(Get(s2,0,-dy), float4x4(-0.187420472502708,0.064030572772026,-0.014669211581349,0.015352162532508,0.077412120997906,-0.164099588990211,0.102621495723724,0.060017928481102,-0.115693755447865,0.031131936237216,-0.160019651055336,0.090896688401699,-0.171227693557739,-0.100060023367405,0.039585050195456,0.130938321352005));
res += mul(Get(s2,0,0), float4x4(0.097267523407936,0.137634426355362,0.034814544022083,-0.064397491514683,-0.069463893771172,-0.132065847516060,0.041555479168892,0.092317521572113,-0.034949939697981,0.049832686781883,-0.043273091316223,-0.167683541774750,0.135893583297729,0.134046256542206,0.369176924228668,-0.245074272155762));
res += mul(Get(s2,0,dy), float4x4(-0.022340750321746,0.033490400761366,-0.085993133485317,0.035291653126478,-0.054630111902952,0.030890686437488,-0.034250412136316,0.025968208909035,0.060518305748701,0.027358302846551,-0.110922090709209,-0.043498244136572,0.069282896816730,-0.214366495609283,-0.124721772968769,0.115982301533222));
res += mul(Get(s2,dx,-dy), float4x4(-0.005890307947993,-0.055603563785553,0.123633116483688,0.048030149191618,-0.189871847629547,0.269505649805069,0.108569972217083,-0.144594997167587,0.000695177062880,-0.181660681962967,0.097777791321278,-0.066792026162148,0.038888059556484,0.096707195043564,0.185466662049294,0.045443121343851));
res += mul(Get(s2,dx,0), float4x4(0.143276959657669,0.171401098370552,0.005112166050822,-0.057038605213165,0.137944132089615,-0.168711453676224,-0.132598847150803,0.028204524889588,0.035104628652334,0.177669316530228,0.007053759414703,0.075882419943810,-0.067161552608013,-0.145972922444344,-0.158692166209221,0.129753470420837));
res += mul(Get(s2,dx,dy), float4x4(0.023783983662724,-0.212779968976974,-0.210405379533768,0.028049740940332,0.076540403068066,0.317659914493561,0.149515435099602,0.046868890523911,-0.033804163336754,-0.232518926262856,-0.008452733978629,0.044237241148949,-0.098751641809940,0.096104294061661,-0.012298693880439,-0.155677393078804));
res += mul(Get(s3,-dx,-dy), float4x4(-0.117203041911125,-0.325360894203186,-0.013049400411546,0.015148810110986,0.030325233936310,0.112368069589138,0.077982634305954,-0.005743948742747,-0.023869942873716,0.001140034990385,-0.068916007876396,0.025684745982289,0.123423390090466,-0.022921495139599,-0.039349552243948,-0.073568314313889));
res += mul(Get(s3,-dx,0), float4x4(0.034910537302494,-0.049184083938599,0.001725757843815,0.207098737359047,-0.138457134366035,-0.172203272581100,0.039548806846142,-0.117163345217705,-0.097515232861042,-0.049202829599380,-0.032962899655104,-0.000473459745990,0.017638238146901,-0.127269387245178,0.033693503588438,-0.035414874553680));
res += mul(Get(s3,-dx,dy), float4x4(-0.061305958777666,-0.344800442457199,0.000565575552173,-0.011376464739442,-0.083309337496758,-0.081574298441410,-0.125475659966469,-0.028243858367205,0.072654947638512,0.157515615224838,0.083751447498798,0.018729809671640,-0.110097587108612,-0.098497837781906,-0.049424067139626,0.017660107463598));
res += mul(Get(s3,0,-dy), float4x4(-0.081240475177765,0.151062130928040,-0.170861199498177,0.089257426559925,0.023045923560858,0.111451081931591,-0.082099750638008,0.093460142612457,-0.088453218340874,0.025334870442748,0.008965777233243,-0.006106446962804,-0.072359122335911,-0.028891064226627,-0.140405982732773,-0.060516927391291));
res += mul(Get(s3,0,0), float4x4(0.144160062074661,0.087461143732071,-0.012947921641171,-0.308007240295410,-0.012543844059110,-0.102322325110435,-0.011030137538910,0.182927936315536,0.015270843170583,-0.124057687819004,-0.060062985867262,-0.119407594203949,0.025637248530984,0.138021156191826,-0.023073231801391,-0.038343071937561));
res += mul(Get(s3,0,dy), float4x4(0.080245770514011,0.322264254093170,0.059827826917171,-0.015845151618123,0.088126473128796,0.200323387980461,0.066190205514431,0.009167262353003,0.131816729903221,-0.125790610909462,0.045127928256989,-0.078089639544487,0.069356307387352,0.167205497622490,0.077769689261913,-0.011096036992967));
res += mul(Get(s3,dx,-dy), float4x4(-0.134954556822777,0.171561494469643,-0.023292548954487,0.120245620608330,-0.017091237008572,0.163974374532700,0.063113614916801,0.047076605260372,0.081982411444187,-0.160236597061157,-0.110562287271023,0.000322931737173,-0.033271029591560,-0.236303240060806,-0.218461379408836,-0.030000800266862));
res += mul(Get(s3,dx,0), float4x4(0.096251577138901,-0.376616299152374,0.076106272637844,-0.043302550911903,-0.064839042723179,-0.062244601547718,-0.186706587672234,-0.050744306296110,-0.208320066332817,0.163963943719864,0.058875925838947,-0.100759111344814,-0.128598511219025,0.018669582903385,-0.129126027226448,-0.005384739488363));
res += mul(Get(s3,dx,dy), float4x4(0.099604867398739,0.359399020671844,-0.010412415489554,-0.068324752151966,-0.058436669409275,0.102063402533531,-0.048938777297735,-0.044867325574160,0.019066872075200,0.130879715085030,0.101487770676613,0.061067089438438,0.077885307371616,0.195702582597733,-0.119870021939278,-0.018581815063953));
res += mul(Get(s4,-dx,-dy), float4x4(-0.080778039991856,-0.058353532105684,-0.053975891321898,0.057844538241625,-0.052461579442024,-0.193904340267181,0.004834360908717,-0.017171178013086,-0.002984105376527,-0.102381587028503,0.011645987629890,0.103097140789032,0.046632613986731,-0.078229710459709,0.095088861882687,-0.183035343885422));
res += mul(Get(s4,-dx,0), float4x4(0.056191090494394,0.091919265687466,0.080346308648586,0.141873374581337,-0.079669117927551,0.010927367024124,-0.251086533069611,0.151111021637917,-0.016720019280910,-0.079641863703728,0.035277605056763,-0.150390803813934,-0.114210091531277,-0.236713156104088,-0.215664625167847,-0.040051572024822));
res += mul(Get(s4,-dx,dy), float4x4(-0.112680539488792,-0.038397707045078,-0.105982571840286,-0.028393100947142,-0.081443503499031,0.093271002173424,-0.030524477362633,0.140554934740067,0.021666923537850,-0.026964552700520,-0.015575250610709,-0.200210496783257,-0.027108928188682,0.261849015951157,0.001267693587579,0.091059483587742));
res += mul(Get(s4,0,-dy), float4x4(0.025463003665209,0.055429309606552,0.055085435509682,-0.095024518668652,-0.118412159383297,-0.107055462896824,-0.039601869881153,-0.134277746081352,-0.021810207515955,0.102973900735378,0.038141924887896,0.022599318996072,-0.174238801002502,-0.013661790639162,-0.096725180745125,0.101944498717785));
res += mul(Get(s4,0,0), float4x4(0.088116444647312,0.072518989443779,-0.221431314945221,-0.122308805584908,0.336418539285660,0.300625920295715,0.199102401733398,-0.159906014800072,-0.089966058731079,-0.073370300233364,-0.078462585806847,-0.022821946069598,0.090369813144207,0.089995019137859,0.189255699515343,0.016641490161419));
res += mul(Get(s4,0,dy), float4x4(0.180516168475151,-0.073737561702728,0.022904822602868,0.092609062790871,0.278201967477798,-0.188473477959633,-0.081487447023392,0.094271965324879,0.018624117597938,0.121859274804592,0.036799035966396,0.070026941597462,0.019127609208226,0.018033849075437,-0.100950397551060,0.098171018064022));
res += mul(Get(s4,dx,-dy), float4x4(0.050758294761181,-0.106115989387035,-0.000356594275218,0.036275599151850,0.098521485924721,-0.058332841843367,-0.032249979674816,0.008886837400496,0.093846209347248,0.302109330892563,0.123499847948551,0.167913138866425,-0.057654719799757,-0.003833206137642,-0.017326023429632,-0.048736564815044));
res += mul(Get(s4,dx,0), float4x4(-0.222997456789017,0.023931466042995,0.020423721522093,-0.063808232545853,-0.047605443745852,-0.172648295760155,-0.154745087027550,-0.061482191085815,0.000275508471532,-0.127662166953087,-0.005040247924626,-0.081401586532593,0.047102503478527,0.076045371592045,-0.073560424149036,0.003929186612368));
res += mul(Get(s4,dx,dy), float4x4(-0.067474603652954,0.032446421682835,-0.100049540400505,0.211721614003181,-0.068151079118252,0.208556607365608,0.033098623156548,-0.030996531248093,0.033076412975788,-0.043797980993986,-0.137464150786400,0.110305339097977,-0.058104682713747,-0.157161414623260,0.078263007104397,-0.070310473442078));
res += mul(Get(s5,-dx,-dy), float4x4(-0.024348702281713,0.039697919040918,-0.109732769429684,-0.061780922114849,0.127536818385124,-0.203341692686081,-0.158417165279388,-0.006212859880179,-0.200763344764709,0.084224849939346,-0.184397250413895,0.028207048773766,0.042902920395136,0.156268909573555,-0.004026637412608,-0.012589668855071));
res += mul(Get(s5,-dx,0), float4x4(0.095564991235733,-0.081658974289894,0.086253337562084,-0.107015095651150,0.083281584084034,0.104161582887173,-0.054988611489534,-0.097695834934711,0.038933731615543,0.141681656241417,-0.029729897156358,0.096393853425980,0.019205251708627,-0.259966313838959,-0.129825308918953,-0.058042194694281));
res += mul(Get(s5,-dx,dy), float4x4(-0.128110945224762,-0.163702741265297,0.024638939648867,-0.050348840653896,-0.068398416042328,-0.063975483179092,-0.026623178273439,-0.056506607681513,0.074438147246838,0.082874983549118,0.040026899427176,-0.031970810145140,0.097669944167137,0.152865409851074,-0.044444352388382,-0.024804452434182));
res += mul(Get(s5,0,-dy), float4x4(0.017851376906037,-0.125978365540504,-0.133568063378334,0.058245625346899,-0.075669571757317,0.092489548027515,0.028367646038532,0.054467260837555,0.109056726098061,-0.154682591557503,0.142070382833481,0.056324847042561,0.069264635443687,0.084813192486763,-0.022666113451123,-0.007050988264382));
res += mul(Get(s5,0,0), float4x4(-0.058666147291660,-0.065098732709885,0.062026724219322,0.046651020646095,-0.176278814673424,-0.081589013338089,-0.068635568022728,-0.007606137543917,0.159470155835152,-0.067486800253391,-0.007505064830184,-0.091592513024807,-0.216278493404388,-0.072762578725815,-0.037571113556623,0.348727136850357));
res += mul(Get(s5,0,dy), float4x4(-0.098935693502426,-0.062343835830688,0.128180414438248,0.002475176472217,-0.002281262306497,0.239049077033997,0.139940425753593,-0.067764751613140,-0.070642188191414,-0.253079682588577,-0.182496264576912,-0.034441497176886,-0.056430760771036,0.248963281512260,0.219768583774567,-0.216188967227936));
res += mul(Get(s5,dx,-dy), float4x4(0.009392545558512,0.242055729031563,0.077269829809666,-0.044502705335617,-0.021488638594747,0.000292979704682,0.040180746465921,0.098416633903980,0.025890955701470,0.323697626590729,-0.069788649678230,0.079105854034424,-0.024131881073117,-0.031495504081249,0.110631234943867,-0.037589099258184));
res += mul(Get(s5,dx,0), float4x4(-0.141022175550461,-0.043976329267025,0.030602809041739,0.001245846855454,0.097189716994762,-0.062371246516705,-0.113677613437176,0.112684659659863,-0.089463584125042,-0.035855751484632,-0.070425041019917,-0.125532209873199,0.030439373105764,0.062728852033615,-0.127303227782249,0.028605440631509));
res += mul(Get(s5,dx,dy), float4x4(0.047330118715763,0.111692599952221,0.156946256756783,0.079830996692181,0.038549546152353,-0.068301118910313,0.109638869762421,-0.129068985581398,-0.114380806684494,0.145108297467232,0.037229388952255,0.123617954552174,0.177446708083153,-0.260518312454224,-0.021845459938049,0.121282666921616));
res = max(float4(0, 0, 0, 0), res) + float4(0.027118481695652,0.005753840785474,0.965796947479248,-0.064778067171574) * min(float4(0, 0, 0, 0), res);
return res;
}
