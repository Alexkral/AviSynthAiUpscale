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
res += mul(Get(s0,-dx,-dy), float4x4(-0.089284621179104,-0.103466108441353,0.131139650940895,-0.004525544587523,-0.039197165518999,-0.015672337263823,-0.000441005395260,-0.053007420152426,-0.009363759309053,-0.012489764951169,0.092259123921394,0.022130165249109,-0.100725926458836,-0.085904471576214,-0.005067272111773,-0.101260900497437));
res += mul(Get(s0,-dx,0), float4x4(-0.034266240894794,-0.166012197732925,-0.017000542953610,0.033672597259283,0.117747910320759,-0.216531395912170,0.015041256323457,0.069851629436016,0.129818335175514,0.095539309084415,-0.029378872364759,-0.015987459570169,0.412953108549118,0.045542076230049,-0.112893372774124,-0.025744626298547));
res += mul(Get(s0,-dx,dy), float4x4(0.027942240238190,-0.051394358277321,-0.009523661807179,0.085664838552475,0.133399084210396,-0.088291309773922,-0.031696502119303,0.017414066940546,0.011224049143493,0.071332186460495,-0.003284224774688,-0.023958243429661,0.144908934831619,0.077633179724216,-0.044557653367519,-0.052589818835258));
res += mul(Get(s0,0,-dy), float4x4(-0.023516219109297,0.223113670945168,-0.061070427298546,0.059297367930412,0.080146834254265,0.090903662145138,-0.008216245099902,-0.141933083534241,-0.025520727038383,-0.099055171012878,-0.063663743436337,-0.045829020440578,-0.085111126303673,-0.057498745620251,-0.022891791537404,-0.125174000859261));
res += mul(Get(s0,0,0), float4x4(0.067879065871239,-0.222439423203468,0.081227906048298,-0.021027680486441,0.017160234972835,0.310845702886581,-0.012967540882528,0.016217630356550,-0.039816994220018,0.047416396439075,-0.010189773514867,0.008875624276698,-0.083095423877239,-0.008214125409722,-0.039447195827961,0.020789723843336));
res += mul(Get(s0,0,dy), float4x4(0.012900776229799,0.116243995726109,0.035029325634241,0.070537336170673,-0.015000163577497,0.090886577963829,-0.204450443387032,0.078352659940720,0.018786594271660,0.266986936330795,-0.007479295600206,0.033044800162315,-0.044720876961946,0.016413707286119,-0.149333491921425,0.021859399974346));
res += mul(Get(s0,dx,-dy), float4x4(0.020913161337376,-0.074975073337555,0.094632126390934,0.068450249731541,0.024332517758012,-0.049660686403513,0.029998522251844,-0.164024367928505,-0.035702344030142,-0.188373908400536,-0.059174258261919,-0.014086167328060,-0.011284470558167,-0.189981490373611,-0.034029435366392,-0.029149776324630));
res += mul(Get(s0,dx,0), float4x4(0.032595913857222,0.039446037262678,0.043117251247168,-0.065280884504318,-0.000913233263418,-0.094333484768867,0.051432572305202,-0.123350553214550,-0.068251304328442,-0.267457425594330,-0.029975306242704,-0.063590466976166,-0.068561308085918,-0.132885843515396,0.042178750038147,-0.116731815040112));
res += mul(Get(s0,dx,dy), float4x4(-0.064640380442142,0.045059349387884,-0.020180653780699,0.048255179077387,-0.037763137370348,0.011770203709602,-0.063351199030876,0.001177080092020,-0.028525592759252,-0.197180777788162,-0.043631225824356,0.104185678064823,0.033317118883133,0.027643404901028,-0.119085848331451,-0.044139001518488));
res += mul(Get(s1,-dx,-dy), float4x4(0.007227537687868,0.037611950188875,-0.006558091379702,0.051056347787380,0.082986444234848,-0.069398485124111,-0.063849203288555,0.029345808550715,0.040149420499802,0.034623399376869,0.009859847836196,0.010041933506727,0.102583527565002,0.039055507630110,-0.005130735225976,0.040302716195583));
res += mul(Get(s1,-dx,0), float4x4(-0.031024258583784,-0.202664643526077,-0.040955584496260,0.076391786336899,-0.053641926497221,0.009671366773546,-0.108165338635445,-0.030747329816222,-0.004563205409795,-0.019178455695510,-0.019929161295295,0.070097856223583,0.049913130700588,-0.083554275333881,-0.135139435529709,0.083295963704586));
res += mul(Get(s1,-dx,dy), float4x4(0.051448866724968,0.019233148545027,-0.027696177363396,-0.047790050506592,-0.147125408053398,0.267913848161697,-0.007931806147099,0.120612435042858,0.050751525908709,-0.033937390893698,-0.012056757695973,-0.078474156558514,0.269489228725433,-0.065413281321526,-0.266265302896500,0.217479363083839));
res += mul(Get(s1,0,-dy), float4x4(-0.068594872951508,-0.189087092876434,0.006543429102749,0.005973665043712,-0.147489011287689,-0.073822222650051,-0.057108394801617,-0.043321870267391,0.019257457926869,-0.128921508789063,-0.069848403334618,0.051875833421946,0.024249337613583,0.066121235489845,-0.015287322923541,0.012756151147187));
res += mul(Get(s1,0,0), float4x4(-0.139171361923218,-0.017595564946532,0.284523963928223,-0.074890732765198,0.198551192879677,-0.166583016514778,0.104453802108765,-0.101143471896648,0.059398200362921,-0.041343200951815,-0.093730442225933,-0.006912819575518,-0.000200325128390,0.269577324390411,0.166202098131180,-0.098333828151226));
res += mul(Get(s1,0,dy), float4x4(-0.107525333762169,-0.064994595944881,-0.106220468878746,-0.218701705336571,-0.243613973259926,-0.064853303134441,0.013182159513235,0.004330569412559,0.082234695553780,0.056054789572954,0.080379404127598,0.018466126173735,-0.072413727641106,-0.000000980749292,-0.029621005058289,0.161902993917465));
res += mul(Get(s1,dx,-dy), float4x4(0.031805902719498,-0.161758065223694,-0.101854011416435,-0.112079873681068,0.038179274648428,0.150951877236366,-0.015297854319215,-0.107648544013500,-0.030645400285721,0.017006358131766,0.047391835600138,0.139381781220436,-0.088688969612122,-0.064780220389366,-0.058493990451097,0.085118114948273));
res += mul(Get(s1,dx,0), float4x4(-0.040393602102995,0.010654431767762,0.045155804604292,0.064506635069847,0.077415019273758,0.030598219484091,-0.024250583723187,-0.196208953857422,0.000420786498580,-0.065340220928192,0.051921389997005,-0.023444531485438,-0.089771889150143,-0.191024005413055,0.039121780544519,-0.020116532221437));
res += mul(Get(s1,dx,dy), float4x4(0.079422451555729,-0.067201830446720,-0.140582948923111,0.030967567116022,-0.172252222895622,0.104141019284725,-0.006501267198473,0.132694453001022,-0.048299733549356,0.137729763984680,-0.082379251718521,0.120679937303066,-0.062655583024025,-0.340265005826950,-0.165465593338013,0.144208624958992));
res += mul(Get(s2,-dx,-dy), float4x4(-0.094809591770172,0.000947862805333,-0.008570370264351,0.121400035917759,0.023906307294965,-0.059754185378551,0.000065266787715,-0.079735644161701,0.004124480765313,0.000172026208020,0.014974029734731,-0.143535107374191,-0.047953277826309,0.058628454804420,-0.145680904388428,0.074929431080818));
res += mul(Get(s2,-dx,0), float4x4(-0.126423522830009,0.077379532158375,-0.052278265357018,-0.001633549924009,-0.008201359771192,-0.074215650558472,-0.004959526937455,0.100081756711006,0.030513606965542,-0.044170718640089,0.074693024158478,-0.002414673101157,-0.005253296811134,0.044961612671614,-0.050965599715710,0.029736433178186));
res += mul(Get(s2,-dx,dy), float4x4(0.023295020684600,-0.056378014385700,0.030038010329008,-0.264905363321304,-0.080808736383915,0.075924664735794,-0.143924891948700,-0.012661995366216,0.070376031100750,-0.069911479949951,0.037610918283463,0.053742151707411,0.134534299373627,0.001206142245792,0.013720307499170,0.086332447826862));
res += mul(Get(s2,0,-dy), float4x4(-0.096012763679028,0.064802378416061,-0.022106733173132,-0.199022144079208,0.032216668128967,0.163175418972969,0.056222744286060,-0.051103655248880,0.092066705226898,0.008862990885973,-0.009608364664018,0.036845304071903,-0.048361677676439,-0.031409505754709,0.070484578609467,0.053001299500465));
res += mul(Get(s2,0,0), float4x4(-0.050249338150024,-0.004052770789713,0.142269447445869,0.080794155597687,0.047761503607035,-0.152040794491768,-0.044393837451935,-0.081295348703861,0.132974341511726,-0.078575186431408,-0.063925944268703,-0.034969624131918,0.091867364943027,0.023477915674448,-0.022054927423596,-0.077620692551136));
res += mul(Get(s2,0,dy), float4x4(-0.001619057264179,-0.121930480003357,0.089216500520706,-0.287301570177078,0.026245215907693,0.022275807335973,0.080342411994934,-0.084369406104088,-0.046413674950600,0.053912393748760,-0.019893335178494,0.062260754406452,-0.085367858409882,0.019893683493137,-0.045532241463661,-0.047321848571301));
res += mul(Get(s2,dx,-dy), float4x4(-0.077106334269047,0.023430006578565,0.111952662467957,-0.130969107151031,-0.042372539639473,-0.050512634217739,-0.004755986388773,-0.039873596280813,-0.048483539372683,0.003816766431555,-0.040605649352074,0.009863171726465,-0.061414893716574,-0.116700403392315,-0.052686862647533,0.113473050296307));
res += mul(Get(s2,dx,0), float4x4(-0.105771489441395,-0.103676974773407,0.025216076523066,-0.130379930138588,0.035200163722038,-0.109470985829830,0.041224516928196,-0.160885959863663,-0.076291061937809,-0.098551325500011,-0.035215146839619,-0.032032489776611,0.003763403510675,-0.069018907845020,0.071758627891541,-0.041457265615463));
res += mul(Get(s2,dx,dy), float4x4(0.017482016235590,-0.152488768100739,0.123858891427517,-0.040509834885597,0.015139705501497,0.018205028027296,0.058959994465113,-0.170094206929207,-0.072346687316895,0.013520759530365,0.039048098027706,-0.003351853694767,-0.001554180751555,-0.215391591191292,0.072914272546768,-0.104113452136517));
res += mul(Get(s3,-dx,-dy), float4x4(0.028714453801513,-0.033001173287630,-0.218225598335266,-0.134875878691673,-0.016746055334806,-0.045526891946793,-0.063065238296986,-0.004469413775951,0.001170408795588,-0.013372659683228,-0.056965060532093,0.221246406435966,-0.058452617377043,-0.133381143212318,0.096084624528885,0.177791208028793));
res += mul(Get(s3,-dx,0), float4x4(-0.105696387588978,0.056925438344479,-0.164896026253700,0.004656261298805,-0.099798411130905,0.012714666314423,-0.057753879576921,-0.027174109593034,-0.016260569915175,-0.076531358063221,0.024959314614534,-0.017273921519518,0.021913042291999,-0.171058505773544,-0.057742320001125,0.303780347108841));
res += mul(Get(s3,-dx,dy), float4x4(-0.085901938378811,-0.137882158160210,-0.058933883905411,0.001559722353704,-0.027738705277443,-0.063966043293476,-0.357006430625916,0.170287564396858,0.006290926132351,-0.098647899925709,-0.031827323138714,0.153412416577339,0.045130949467421,0.049342699348927,-0.061741210520267,0.058279335498810));
res += mul(Get(s3,0,-dy), float4x4(-0.000485377153382,0.033930618315935,-0.063787654042244,-0.135553881525993,-0.036054000258446,-0.048391986638308,-0.002880770713091,-0.126770511269569,-0.056520584970713,0.054384186863899,-0.010146304033697,0.041249848902225,-0.079391844570637,0.028251100331545,-0.005008523352444,-0.092775262892246));
res += mul(Get(s3,0,0), float4x4(-0.105303384363651,-0.092851117253304,0.142839625477791,0.078268766403198,-0.078317657113075,-0.142162159085274,-0.071889676153660,-0.154567822813988,-0.043705362826586,0.083564467728138,-0.038096945732832,0.021492846310139,-0.166537046432495,0.022594265639782,-0.029450891539454,-0.076940014958382));
res += mul(Get(s3,0,dy), float4x4(0.122121959924698,-0.025235995650291,-0.040548205375671,-0.040100615471601,0.029401471838355,0.319257766008377,-0.082355991005898,0.047771371901035,-0.086531601846218,0.021243287250400,0.038228798657656,0.074374027550220,-0.032357450574636,0.223777100443840,-0.161644041538239,-0.048834472894669));
res += mul(Get(s3,dx,-dy), float4x4(-0.046188056468964,-0.064692698419094,0.099746428430080,-0.130487233400345,-0.029330696910620,0.115204282104969,0.040019623935223,-0.023997543379664,0.049041669815779,0.006631648633629,0.020140107721090,0.009712250903249,-0.140066787600517,-0.175905585289001,0.200836017727852,0.000837536877953));
res += mul(Get(s3,dx,0), float4x4(-0.166603043675423,-0.088275216519833,-0.027179775759578,-0.117115080356598,-0.045235231518745,-0.037230733782053,0.038184519857168,-0.044622968882322,0.032711345702410,-0.102729588747025,-0.090064793825150,-0.077332623302937,-0.101939827203751,-0.263901650905609,0.009265415370464,-0.062590003013611));
res += mul(Get(s3,dx,dy), float4x4(-0.006096253171563,-0.046047925949097,0.305857717990875,0.179200902581215,0.029615625739098,0.049983814358711,-0.015235721133649,0.027707757428288,0.064271882176399,0.030856141820550,-0.020828967913985,0.049884673207998,-0.066872283816338,-0.035285025835037,0.229236096143723,-0.121669739484787));
return max(float4(0,0,0,0), res);
}
